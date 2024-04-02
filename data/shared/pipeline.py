# Copied from LLVM's llvm/utils/pipeline.py
"""Utility functions for creating and manipulating LLVM 'opt' NPM pipeline objects."""


def fromStr(pipeStr):
    """Create pipeline object from string representation."""
    stack = []
    curr = []
    tok = ""
    kind = ""
    for c in pipeStr:
        if c == ",":
            if tok != "":
                curr.append([None, tok])
            tok = ""
        elif c == "(":
            stack.append([kind, curr])
            kind = tok
            curr = []
            tok = ""
        elif c == ")":
            if tok != "":
                curr.append([None, tok])
            tok = ""
            oldKind = kind
            oldCurr = curr
            [kind, curr] = stack.pop()
            curr.append([oldKind, oldCurr])
        else:
            tok += c
    if tok != "":
        curr.append([None, tok])
    return curr


def toStr(pipeObj):
    """Create string representation of pipeline object."""
    res = ""
    lastIdx = len(pipeObj) - 1
    for i, c in enumerate(pipeObj):
        if c[0]:
            res += c[0] + "("
            res += toStr(c[1])
            res += ")"
        else:
            res += c[1]
        if i != lastIdx:
            res += ","
    return res


def count(pipeObj):
    """Count number of passes (pass-managers excluded) in pipeline object."""
    cnt = 0
    for c in pipeObj:
        if c[0]:
            cnt += count(c[1])
        else:
            cnt += 1
    return cnt


def split(pipeObj, splitIndex):
    """Create two new pipeline objects by splitting pipeObj in two directly after pass with index splitIndex."""

    def splitInt(src, splitIndex, dstA, dstB, idx):
        for s in src:
            if s[0]:
                dstA2 = []
                dstB2 = []
                idx = splitInt(s[1], splitIndex, dstA2, dstB2, idx)
                dstA.append([s[0], dstA2])
                dstB.append([s[0], dstB2])
            else:
                if idx <= splitIndex:
                    dstA.append([None, s[1]])
                else:
                    dstB.append([None, s[1]])
                idx += 1
        return idx

    listA = []
    listB = []
    splitInt(pipeObj, splitIndex, listA, listB, 0)
    return [listA, listB]


def remove(pipeObj, removeIndex):
    """Create new pipeline object by removing pass with index removeIndex from pipeObj."""

    def removeInt(src, removeIndex, dst, idx):
        for s in src:
            if s[0]:
                dst2 = []
                idx = removeInt(s[1], removeIndex, dst2, idx)
                dst.append([s[0], dst2])
            else:
                if idx != removeIndex:
                    dst.append([None, s[1]])
                idx += 1
        return idx

    dst = []
    removeInt(pipeObj, removeIndex, dst, 0)
    return dst


def copy(srcPipeObj):
    """Create copy of pipeline object srcPipeObj."""

    def copyInt(dst, src):
        for s in src:
            if s[0]:
                dst2 = []
                copyInt(dst2, s[1])
                dst.append([s[0], dst2])
            else:
                dst.append([None, s[1]])

    dstPipeObj = []
    copyInt(dstPipeObj, srcPipeObj)
    return dstPipeObj


def prune(srcPipeObj):
    """Create new pipeline object by removing empty pass-managers (those with count = 0) from srcPipeObj."""

    def pruneInt(dst, src):
        for s in src:
            if s[0]:
                if count(s[1]):
                    dst2 = []
                    pruneInt(dst2, s[1])
                    dst.append([s[0], dst2])
            else:
                dst.append([None, s[1]])

    dstPipeObj = []
    pruneInt(dstPipeObj, srcPipeObj)
    return dstPipeObj


def tweak(srcPipeObj):
    """Remove various bits of pipeline syntax that is not supported by LLVM 13"""

    def tweakInt(dst, src):
        for p in src:
            if p[0]:
                children = []
                tweakInt(children, p[1])
                if p[0].startswith("function<"):
                    # Remove args like `eager-inv` from `function` pass manager
                    dst.append(["function", children])
                else:
                    dst.append(p[0], children)
            elif "no-switch-range-to-icmp;" in p[1]:
                # Remove `switch-range-to-icmp` arg from `simplifycfg` pass
                dst.append([None, p[1].replace("no-switch-range-to-icmp;", "")])
            elif p[1].startswith("early-cse<"):
                # Remove args from `early-cse` pass
                dst.append([None, "early-cse"])
            else:
                dst.append(p)

    dstPipeObj = []
    tweakInt(dstPipeObj, srcPipeObj)
    return dstPipeObj


def test():
    import unittest

    class Test(unittest.TestCase):
        def test_0(self):
            pipeStr = "a,b,A(c,B(d,e),f),g"
            pipeObj = fromStr(pipeStr)

            self.assertEqual(7, count(pipeObj))

            self.assertEqual(pipeObj, pipeObj)
            self.assertEqual(pipeObj, prune(pipeObj))
            self.assertEqual(pipeObj, copy(pipeObj))

            self.assertEqual(pipeStr, toStr(pipeObj))
            self.assertEqual(pipeStr, toStr(prune(pipeObj)))
            self.assertEqual(pipeStr, toStr(copy(pipeObj)))

            [pipeObjA, pipeObjB] = split(pipeObj, 3)
            self.assertEqual("a,b,A(c,B(d))", toStr(pipeObjA))
            self.assertEqual("A(B(e),f),g", toStr(pipeObjB))

            self.assertEqual("b,A(c,B(d,e),f),g", toStr(remove(pipeObj, 0)))
            self.assertEqual("a,b,A(c,B(d,e),f)", toStr(remove(pipeObj, 6)))

            pipeObjC = remove(pipeObj, 4)
            self.assertEqual("a,b,A(c,B(d),f),g", toStr(pipeObjC))
            pipeObjC = remove(pipeObjC, 3)
            self.assertEqual("a,b,A(c,B(),f),g", toStr(pipeObjC))
            pipeObjC = prune(pipeObjC)
            self.assertEqual("a,b,A(c,f),g", toStr(pipeObjC))

    unittest.main()
    exit(0)


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument("pipeline")
    parser.add_argument("--test", action="store_true")
    parser.add_argument("--count", action="store_true")
    parser.add_argument("--split", type=int)
    parser.add_argument("--last", type=int)

    args = parser.parse_args()

    if args.test:
        import sys
        sys.argv = sys.argv[:1]
        test()

    pipeline = fromStr(args.pipeline)
    if args.count:
        print(count(pipeline))
    elif args.split is not None:
        print(toStr(tweak(prune(split(pipeline, args.split)[0]))))
    elif args.last is not None:
        after_split = tweak(prune(split(pipeline, args.last)[0]))
        count = count(after_split)
        print(toStr(split(after_split, count - 2)[1]))
    else:
        print("Unknown action")
        exit(1)
