+++ dirname ./check.sh
++ cd .
++ pwd
+ SCRIPT_DIR=/Users/jryans/Research/Papers/debug-info-consistency/data/git/program-no-inline
+ '[' /Users/jryans/Research/Papers/debug-info-consistency/data/git/program-no-inline '!=' /Users/jryans/Research/Papers/debug-info-consistency/data/git/program-no-inline ']'
+ TARGET_NAME=git
+ source /Users/jryans/Research/Papers/debug-info-consistency/data/git/program-no-inline/../../vars.sh
++ set -eux
++ CC_SYSROOT_OPTS='--sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++ CC_COMMON_OPTS='--sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g'
++ CC_CLANG_OPTS='-fno-discard-value-names -Xclang -disable-O0-optnone'
++ CC_GCC_OPTS=-gdwarf-4
++ CC_O0_OPTS=
++ CC_O1_OPTS=-O1
++ CC_O2_OPTS=-O2
++ CC_O3_OPTS=-O3
++ CC_Og_OPTS=-Og
++ CC_LV_OPTS='-Og -gvariable-location-views'
+++ klee release check-debug-info
+++ local build=release
+++ local program=check-debug-info
+++ local program=check-debug-info
+++ '[' -z check-debug-info ']'
+++ echo /Users/jryans/Projects/klee/build-release/bin/check-debug-info
++ CHECK=/Users/jryans/Projects/klee/build-release/bin/check-debug-info
++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --max-functions=10 --max-forks=4 --tsv'
+ level=O0-mem2reg
+ version=13
+ echo '## Checking debug consistency of `git` (Clang 13, O0-mem2reg)'
## Checking debug consistency of `git` (Clang 13, O0-mem2reg)
+ /Users/jryans/Projects/klee/build-release/bin/check-debug-info clang/13/O0/git.bc clang/13/O0-mem2reg/git.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --max-functions=10 --max-forks=4 --tsv
Checking clang/13/O0/git.bc and clang/13/O0-mem2reg/git.bc for debug info consistency…

## Functions

✅ 12085 before defined functions(s), 12085 after defined functions(s)
🔔 Limited to first 10 functions (`--max-functions`)

## Function `setup_auto_pager`

✅ Before and after function names match

### Variables

Before variable `cmd` (decl src ln 125)
Store to declared address of `cmd` (decl src ln 125), asm ln 25442
  arg 0
  Added assignment asm ln 25442, prod ln 125.0, live ln 127, enc None
Before variable `def` (decl src ln 125)
Store to declared address of `def` (decl src ln 125), asm ln 25444
  arg 1
  Added assignment asm ln 25444, prod ln 125.0, live ln 127, enc None

After variable `cmd` (decl src ln 125)
Value produced for `cmd` (decl src ln 125), asm ln 25440
  arg 0
  Added assignment asm ln 25440, prod ln 125.0, live ln 127, enc None
After variable `def` (decl src ln 125)
Value produced for `def` (decl src ln 125), asm ln 25441
  arg 1
  Added assignment asm ln 25441, prod ln 125.0, live ln 127, enc None

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0m[0;35mKLEE: WARNING: Unable to load source file `git.c`
[0mCollected value for `cmd`
  Concrete pointer resolves to cmd.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) cmd.deref)
  Replaced concrete pointer with hash (w64 0x1213E0C6625D2556)
  i8* %cmd
  (w64 0x1213E0C6625D2556)
Collected value for `def`
  i32 %def
  (ReadLSB w32 (w32 0x0) def)

#### After values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `cmd`
  Concrete pointer resolves to cmd.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) cmd.deref)
  Replaced concrete pointer with hash (w64 0x1213E0C6625D2556)
  i8* %cmd
  (w64 0x1213E0C6625D2556)
Collected value for `def`
  i32 %def
  (ReadLSB w32 (w32 0x0) def)

### Assignments

Collating encountered before assignments: `cmd` (decl src ln 125)
  asm ln 25442, prod ln 125.0, live ln 127, enc 0
Collating encountered before assignments: `def` (decl src ln 125)
  asm ln 25444, prod ln 125.0, live ln 127, enc 0

Collating encountered after assignments: `cmd` (decl src ln 125)
  asm ln 25440, prod ln 125.0, live ln 127, enc 0
Collating encountered after assignments: `def` (decl src ln 125)
  asm ln 25441, prod ln 125.0, live ln 127, enc 0


#### Check before using after as reference

Checking equivalence of `cmd` (decl src ln 125) from
  assn asm ln 25442, prod ln 125.0, live ln 127, enc 0
  i8* %cmd
  (w64 0x1213E0C6625D2556)
and
  assn asm ln 25440, prod ln 125.0, live ln 127, enc 0
  i8* %cmd
  (w64 0x1213E0C6625D2556)
✅ After `cmd` (decl src ln 125) assn asm ln 25440, prod ln 125.0, live ln 127, enc 0 symbolic value matches before assn asm ln 25442, prod ln 125.0, live ln 127, enc 0

✅ Before `cmd` assns checked using after as reference
Variable:            cmd
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `def` (decl src ln 125) from
  assn asm ln 25444, prod ln 125.0, live ln 127, enc 0
  i32 %def
  (ReadLSB w32 (w32 0x0) def)
and
  assn asm ln 25441, prod ln 125.0, live ln 127, enc 0
  i32 %def
  (ReadLSB w32 (w32 0x0) def)
Query to parse
array def[4] : w32 -> w8 = symbolic
array def[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) def)
     (ReadLSB w32 (w32 0x0) def)))
:1:6: error: expected identifier token.
array def[4] : w32 -> w8 = symbolic
      ~~~
:1:6: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
      ~~~
:1:9: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
         ^
:1:10: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
          ^
:1:11: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
           ^
:1:13: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
             ^
:1:15: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
               ~~~
:1:19: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
                   ~~
:1:22: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
                      ~~
:1:25: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
                         ^
:1:27: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
                           ~~~~~~~~
:2:6: error: expected identifier token.
array def[4] : w32 -> w8 = symbolic
      ~~~
:2:6: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
      ~~~
:2:9: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
         ^
:2:10: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
          ^
:2:11: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
           ^
:2:13: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
             ^
:2:15: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
               ~~~
:2:19: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
                   ~~
:2:22: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
                      ~~
:2:25: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
                         ^
:2:27: error: expected 'array' or '(' token.
array def[4] : w32 -> w8 = symbolic
                           ~~~~~~~~
:3:37: error: unexpected argument in read expression.
(query [] (Eq (ReadLSB w32 (w32 0x0) def)
                                     ~~~
:4:28: error: unexpected argument in read expression.
     (ReadLSB w32 (w32 0x0) def)))
                            ~~~
Assertion failed: (isa<ArrayDecl>(decl) && "Array lost during the roundtrip journey"), function checkEquivalence, file main.cpp, line 572.
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /Users/jryans/Projects/klee/build-release/bin/check-debug-info clang/13/O0/git.bc clang/13/O0-mem2reg/git.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --max-functions=10 --max-forks=4 --tsv
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x00000001088ff647 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 39
1  check-debug-info         0x00000001088fe488 llvm::sys::RunSignalHandlers() + 248
2  check-debug-info         0x00000001088ffc90 SignalHandler(int) + 288
3  libsystem_platform.dylib 0x00007ff81364c5ed _sigtramp + 29
4  libsystem_malloc.dylib   0x00007ff81346c0f0 find_zone_and_free + 122
5  libsystem_c.dylib        0x00007ff813545b45 abort + 123
6  libsystem_c.dylib        0x00007ff813544e5e err + 0
7  check-debug-info         0x00000001089198d3 checkEquivalence(Variable const&, Assignment&, Assignment&) (.cold.7) + 35
8  check-debug-info         0x0000000107067174 checkEquivalence(Variable const&, Assignment&, Assignment&) + 3652
9  check-debug-info         0x000000010706bbc9 checkAssignments(llvm::StringRef, std::__1::map<Variable, llvm::SmallVector<Assignment, 1u>, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, llvm::SmallVector<Assignment, 1u> > > > const&, bool, bool, llvm::StringRef, std::__1::map<Variable, std::__1::map<unsigned int, Assignment*, std::__1::less<unsigned int>, std::__1::allocator<std::__1::pair<unsigned int const, Assignment*> > >, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, std::__1::map<unsigned int, Assignment*, std::__1::less<unsigned int>, std::__1::allocator<std::__1::pair<unsigned int const, Assignment*> > > > > > const&, bool, bool, llvm::StringRef, llvm::Optional<std::__1::unique_ptr<llvm::raw_fd_ostream, std::__1::default_delete<llvm::raw_fd_ostream> > >&) + 6857
10 check-debug-info         0x000000010706f554 checkFunction(llvm::LLVMContext&, llvm::StringRef, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&) + 6868
11 check-debug-info         0x00000001070702fe main + 2014
12 dyld                     0x00007ff8132c541f start + 1903
./check.sh: line 23: 77701 Abort trap: 6           ${CHECK} clang/${version}/O0/${TARGET_NAME}.bc clang/${version}/${level}/${TARGET_NAME}.bc ${CHECK_OPTS} "$@"
