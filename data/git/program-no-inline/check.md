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
+++ klee release-debug check-debug-info
+++ local build=release-debug
+++ local program=check-debug-info
+++ local program=check-debug-info
+++ '[' -z check-debug-info ']'
+++ echo /Users/jryans/Projects/klee/build-release-debug/bin/check-debug-info
++ CHECK=/Users/jryans/Projects/klee/build-release-debug/bin/check-debug-info
++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-functions=10 --max-forks=4 --search=random-path --tsv'
+ level=O0-mem2reg
+ version=13
+ echo '## Checking debug consistency of `git` (Clang 13, O0-mem2reg)'
## Checking debug consistency of `git` (Clang 13, O0-mem2reg)
+ /Users/jryans/Projects/klee/build-release-debug/bin/check-debug-info clang/13/O0/git.bc clang/13/O0-mem2reg/git.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-functions=10 --max-forks=4 --search=random-path --tsv
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
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) def)
     N0)
✅ After `def` (decl src ln 125) assn asm ln 25441, prod ln 125.0, live ln 127, enc 0 symbolic value matches before assn asm ln 25444, prod ln 125.0, live ln 127, enc 0

✅ Before `def` assns checked using after as reference
Variable:            def
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

#### Check after using before as reference

Checking equivalence of `cmd` (decl src ln 125) from
  assn asm ln 25440, prod ln 125.0, live ln 127, enc 0
  i8* %cmd
  (w64 0x1213E0C6625D2556)
and
  assn asm ln 25442, prod ln 125.0, live ln 127, enc 0
  i8* %cmd
  (w64 0x1213E0C6625D2556)
✅ Before `cmd` (decl src ln 125) assn asm ln 25442, prod ln 125.0, live ln 127, enc 0 symbolic value matches after assn asm ln 25440, prod ln 125.0, live ln 127, enc 0

✅ After `cmd` assns checked using before as reference
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
  assn asm ln 25441, prod ln 125.0, live ln 127, enc 0
  i32 %def
  (ReadLSB w32 (w32 0x0) def)
and
  assn asm ln 25444, prod ln 125.0, live ln 127, enc 0
  i32 %def
  (ReadLSB w32 (w32 0x0) def)
Query to parse
array def[4] : w32 -> w8 = symbolic
array def[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) def)
     (ReadLSB w32 (w32 0x0) def)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) def)
     N0)
✅ Before `def` (decl src ln 125) assn asm ln 25444, prod ln 125.0, live ln 127, enc 0 symbolic value matches after assn asm ln 25441, prod ln 125.0, live ln 127, enc 0

✅ After `def` assns checked using before as reference
Variable:            def
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

## Function `commit_pager_choice`

✅ Before and after function names match

### Variables

✅ 0 before variables found, 0 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0m
🔔 Unable to execute all before instructions

#### After values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0m
🔔 Unable to execute all after instructions

### Assignments



#### Check before using after as reference

#### Check after using before as reference

## Function `is_builtin`

✅ Before and after function names match

### Variables

Before variable `s` (decl src ln 646)
Store to declared address of `s` (decl src ln 646), asm ln 25506
  arg 0
  Added assignment asm ln 25506, prod ln 646.0, live ln 648, enc None

After variable `s` (decl src ln 646)
Value produced for `s` (decl src ln 646), asm ln 25494
  arg 0
  Added assignment asm ln 25494, prod ln 646.0, live ln 648, enc None

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `s`
  Concrete pointer resolves to s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) s.deref)
  Replaced concrete pointer with hash (w64 0x100699262794627A)
  i8* %s
  (w64 0x100699262794627A)

#### After values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `s`
  Concrete pointer resolves to s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) s.deref)
  Replaced concrete pointer with hash (w64 0x100699262794627A)
  i8* %s
  (w64 0x100699262794627A)

### Assignments

Collating encountered before assignments: `s` (decl src ln 646)
  asm ln 25506, prod ln 646.0, live ln 648, enc 0

Collating encountered after assignments: `s` (decl src ln 646)
  asm ln 25494, prod ln 646.0, live ln 648, enc 0

#### Check before using after as reference

Checking equivalence of `s` (decl src ln 646) from
  assn asm ln 25506, prod ln 646.0, live ln 648, enc 0
  i8* %s
  (w64 0x100699262794627A)
and
  assn asm ln 25494, prod ln 646.0, live ln 648, enc 0
  i8* %s
  (w64 0x100699262794627A)
✅ After `s` (decl src ln 646) assn asm ln 25494, prod ln 646.0, live ln 648, enc 0 symbolic value matches before assn asm ln 25506, prod ln 646.0, live ln 648, enc 0

✅ Before `s` assns checked using after as reference
Variable:            s
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

#### Check after using before as reference

Checking equivalence of `s` (decl src ln 646) from
  assn asm ln 25494, prod ln 646.0, live ln 648, enc 0
  i8* %s
  (w64 0x100699262794627A)
and
  assn asm ln 25506, prod ln 646.0, live ln 648, enc 0
  i8* %s
  (w64 0x100699262794627A)
✅ Before `s` (decl src ln 646) assn asm ln 25506, prod ln 646.0, live ln 648, enc 0 symbolic value matches after assn asm ln 25494, prod ln 646.0, live ln 648, enc 0

✅ After `s` assns checked using before as reference
Variable:            s
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

## Function `get_builtin`

✅ Before and after function names match

### Variables

Before variable `s` (decl src ln 635)
Store to declared address of `s` (decl src ln 635), asm ln 25524
  arg 0
  Added assignment asm ln 25524, prod ln 635.0, live ln 638, enc None
Before variable `i` (decl src ln 637)
Store to declared address of `i` (decl src ln 637), asm ln 25558
  %inc = add nsw i32 %6, 1, l638 c41, asm ln 25557
🔔 Store to declared address of `i` (decl src ln 637): live ln too early, using produced ln + 1
  Added assignment asm ln 25558, prod ln 638.41, live ln 639, enc None
Store to declared address of `i` (decl src ln 637), asm ln 25527
  const i32 0
🔔 Store to declared address of `i` (decl src ln 637): live ln too early, using produced ln + 1
  Added assignment asm ln 25527, prod ln 638.9, live ln 639, enc None
Before variable `p` (decl src ln 639)
Store to declared address of `p` (decl src ln 639), asm ln 25541
  %add.ptr = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* getelementptr inbounds ([141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 0), i64 %idx.ext, l639 c35, asm ln 25540
  Added assignment asm ln 25541, prod ln 639.35, live ln 640, enc None

After variable `s` (decl src ln 635)
Value produced for `s` (decl src ln 635), asm ln 25506
  arg 0
  Added assignment asm ln 25506, prod ln 635.0, live ln 638, enc None
After variable `i` (decl src ln 637)
Value produced for `i` (decl src ln 637), asm ln 25507
  const i32 0
  Added assignment asm ln 25507, prod ln 637.0, live ln 638, enc None
After variable `p` (decl src ln 639)
Value produced for `p` (decl src ln 639), asm ln 25520
  %add.ptr = getelementptr inbounds %struct.cmd_struct.0, %struct.cmd_struct.0* getelementptr inbounds ([141 x %struct.cmd_struct.0], [141 x %struct.cmd_struct.0]* @commands, i64 0, i64 0), i64 %idx.ext, l639 c35, asm ln 25519
  Added assignment asm ln 25520, prod ln 639.35, live ln 640, enc None
After variable `i` (decl src ln 637)
Value produced for `i` (decl src ln 637), asm ln 25529
  %inc = add nsw i32 %i.0, 1, l638 c41, asm ln 25528
🔔 Value produced for `i` (decl src ln 637): live ln too early, using produced ln + 1
  Added assignment asm ln 25529, prod ln 638.41, live ln 639, enc None
After variable `i` (decl src ln 637)
Value produced for `i` (decl src ln 637), asm ln 25512
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], asm ln 25511
🔔 Value produced for `i` (decl src ln 637): live ln too early, using produced ln + 1
  Added assignment asm ln 25512, prod ln 638.41, live ln 639, enc None

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `s`
  Concrete pointer resolves to s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) s.deref)
  Replaced concrete pointer with hash (w64 0x100699262794627A)
  i8* %s
  (w64 0x100699262794627A)
Collected value for `i`
  i32 0
  (w32 0x0)
Collected value for `p`
  Concrete pointer resolves to commands, offset (w64 0x0)
  Created deref expr (w64 0x13D5A69D0)
  Replaced concrete pointer with hash (w64 0xBB8485E41BDF13D5)
  %add.ptr = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* getelementptr inbounds ([141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 0), i64 %idx.ext, l639 c35
  (w64 0xBB8485E41BDF13D5)
Collected value for `i`
  %inc = add nsw i32 %6, 1, l638 c41
  (w32 0x1)
[0;1;35mKLEE: WARNING ONCE: skipping fork (max-forks reached)
[0m
🔔 Unable to execute all before program states

🔔 Unable to execute all before instructions

#### After values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `s`
  Concrete pointer resolves to s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) s.deref)
  Replaced concrete pointer with hash (w64 0x100699262794627A)
  i8* %s
  (w64 0x100699262794627A)
Collected value for `i`
  i32 0
  (w32 0x0)
Collected value for `i`
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  Block: 0
  (w32 0x0)
Collected value for `p`
  Concrete pointer resolves to commands, offset (w64 0x0)
  Created deref expr (w64 0x13D2E29C0)
  Replaced concrete pointer with hash (w64 0xBB8485E41BDF13D5)
  %add.ptr = getelementptr inbounds %struct.cmd_struct.0, %struct.cmd_struct.0* getelementptr inbounds ([141 x %struct.cmd_struct.0], [141 x %struct.cmd_struct.0]* @commands, i64 0, i64 0), i64 %idx.ext, l639 c35
  (w64 0xBB8485E41BDF13D5)
Collected value for `i`
  %inc = add nsw i32 %i.0, 1, l638 c41
  (w32 0x1)

🔔 Unable to execute all after program states

### Assignments

Filtering redundant before assignments: `i` (decl src ln 637)

Checking equivalence of `i` (decl src ln 637) from
  assn asm ln 25558, prod ln 638.41, live ln 639, enc 1
  %inc = add nsw i32 %6, 1, l638 c41
  (w32 0x1)
and
  assn asm ln 25527, prod ln 638.9, live ln 639, enc 0
  i32 0
  (w32 0x0)

Filtering redundant after assignments: `i` (decl src ln 637)

Checking equivalence of `i` (decl src ln 637) from
  assn asm ln 25512, prod ln 638.41, live ln 639, enc 1
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  (w32 0x0)
and
  assn asm ln 25507, prod ln 637.0, live ln 638, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 25512, prod ln 638.41, live ln 639, enc 1

Checking equivalence of `i` (decl src ln 637) from
  assn asm ln 25529, prod ln 638.41, live ln 639, enc 2
  %inc = add nsw i32 %i.0, 1, l638 c41
  (w32 0x1)
and
  assn asm ln 25507, prod ln 637.0, live ln 638, enc 0
  i32 0
  (w32 0x0)

Collating encountered before assignments: `s` (decl src ln 635)
  asm ln 25524, prod ln 635.0, live ln 638, enc 0
Collating encountered before assignments: `i` (decl src ln 637)
  asm ln 25527, prod ln 638.9, live ln 639, enc 0
  asm ln 25558, prod ln 638.41, live ln 639, enc 1
Collating encountered before assignments: `p` (decl src ln 639)
  asm ln 25541, prod ln 639.35, live ln 640, enc 0

Collating encountered after assignments: `s` (decl src ln 635)
  asm ln 25506, prod ln 635.0, live ln 638, enc 0
Collating encountered after assignments: `i` (decl src ln 637)
  asm ln 25507, prod ln 637.0, live ln 638, enc 0
  asm ln 25529, prod ln 638.41, live ln 639, enc 1
Collating encountered after assignments: `p` (decl src ln 639)
  asm ln 25520, prod ln 639.35, live ln 640, enc 0

#### Check before using after as reference

❌ After `i` (decl src ln 637) assn asm ln 25507, prod ln 637.0, live ln 638, enc 0 coordinates don't match before assn asm ln 25527, prod ln 638.9, live ln 639, enc 0
Checking equivalence of `i` (decl src ln 637) from
  assn asm ln 25527, prod ln 638.9, live ln 639, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 25507, prod ln 637.0, live ln 638, enc 0
  i32 0
  (w32 0x0)
✅ After `i` (decl src ln 637) assn asm ln 25507, prod ln 637.0, live ln 638, enc 0 symbolic value matches before assn asm ln 25527, prod ln 638.9, live ln 639, enc 0

Checking equivalence of `i` (decl src ln 637) from
  assn asm ln 25558, prod ln 638.41, live ln 639, enc 1
  %inc = add nsw i32 %6, 1, l638 c41
  (w32 0x1)
and
  assn asm ln 25529, prod ln 638.41, live ln 639, enc 1
  %inc = add nsw i32 %i.0, 1, l638 c41
  (w32 0x1)
✅ After `i` (decl src ln 637) assn asm ln 25529, prod ln 638.41, live ln 639, enc 1 symbolic value matches before assn asm ln 25558, prod ln 638.41, live ln 639, enc 1

❌ Before `i` assns checked using after as reference
Variable:            i
  Assignments:       2
  Matching Coords:   1
  Matching Value:    2
Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `p` (decl src ln 639) from
  assn asm ln 25541, prod ln 639.35, live ln 640, enc 0
  %add.ptr = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* getelementptr inbounds ([141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 0), i64 %idx.ext, l639 c35
  (w64 0xBB8485E41BDF13D5)
and
  assn asm ln 25520, prod ln 639.35, live ln 640, enc 0
  %add.ptr = getelementptr inbounds %struct.cmd_struct.0, %struct.cmd_struct.0* getelementptr inbounds ([141 x %struct.cmd_struct.0], [141 x %struct.cmd_struct.0]* @commands, i64 0, i64 0), i64 %idx.ext, l639 c35
  (w64 0xBB8485E41BDF13D5)
✅ After `p` (decl src ln 639) assn asm ln 25520, prod ln 639.35, live ln 640, enc 0 symbolic value matches before assn asm ln 25541, prod ln 639.35, live ln 640, enc 0

✅ Before `p` assns checked using after as reference
Variable:            p
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

Checking equivalence of `s` (decl src ln 635) from
  assn asm ln 25524, prod ln 635.0, live ln 638, enc 0
  i8* %s
  (w64 0x100699262794627A)
and
  assn asm ln 25506, prod ln 635.0, live ln 638, enc 0
  i8* %s
  (w64 0x100699262794627A)
✅ After `s` (decl src ln 635) assn asm ln 25506, prod ln 635.0, live ln 638, enc 0 symbolic value matches before assn asm ln 25524, prod ln 635.0, live ln 638, enc 0

✅ Before `s` assns checked using after as reference
Variable:            s
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

#### Check after using before as reference

❌ Before `i` (decl src ln 637) assn asm ln 25527, prod ln 638.9, live ln 639, enc 0 coordinates don't match after assn asm ln 25507, prod ln 637.0, live ln 638, enc 0
Checking equivalence of `i` (decl src ln 637) from
  assn asm ln 25507, prod ln 637.0, live ln 638, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 25527, prod ln 638.9, live ln 639, enc 0
  i32 0
  (w32 0x0)
✅ Before `i` (decl src ln 637) assn asm ln 25527, prod ln 638.9, live ln 639, enc 0 symbolic value matches after assn asm ln 25507, prod ln 637.0, live ln 638, enc 0

Checking equivalence of `i` (decl src ln 637) from
  assn asm ln 25529, prod ln 638.41, live ln 639, enc 1
  %inc = add nsw i32 %i.0, 1, l638 c41
  (w32 0x1)
and
  assn asm ln 25558, prod ln 638.41, live ln 639, enc 1
  %inc = add nsw i32 %6, 1, l638 c41
  (w32 0x1)
✅ Before `i` (decl src ln 637) assn asm ln 25558, prod ln 638.41, live ln 639, enc 1 symbolic value matches after assn asm ln 25529, prod ln 638.41, live ln 639, enc 1

❌ After `i` assns checked using before as reference
Variable:            i
  Assignments:       2
  Matching Coords:   1
  Matching Value:    2
Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `p` (decl src ln 639) from
  assn asm ln 25520, prod ln 639.35, live ln 640, enc 0
  %add.ptr = getelementptr inbounds %struct.cmd_struct.0, %struct.cmd_struct.0* getelementptr inbounds ([141 x %struct.cmd_struct.0], [141 x %struct.cmd_struct.0]* @commands, i64 0, i64 0), i64 %idx.ext, l639 c35
  (w64 0xBB8485E41BDF13D5)
and
  assn asm ln 25541, prod ln 639.35, live ln 640, enc 0
  %add.ptr = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* getelementptr inbounds ([141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 0), i64 %idx.ext, l639 c35
  (w64 0xBB8485E41BDF13D5)
✅ Before `p` (decl src ln 639) assn asm ln 25541, prod ln 639.35, live ln 640, enc 0 symbolic value matches after assn asm ln 25520, prod ln 639.35, live ln 640, enc 0

✅ After `p` assns checked using before as reference
Variable:            p
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

Checking equivalence of `s` (decl src ln 635) from
  assn asm ln 25506, prod ln 635.0, live ln 638, enc 0
  i8* %s
  (w64 0x100699262794627A)
and
  assn asm ln 25524, prod ln 635.0, live ln 638, enc 0
  i8* %s
  (w64 0x100699262794627A)
✅ Before `s` (decl src ln 635) assn asm ln 25524, prod ln 635.0, live ln 638, enc 0 symbolic value matches after assn asm ln 25506, prod ln 635.0, live ln 638, enc 0

✅ After `s` assns checked using before as reference
Variable:            s
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

## Function `load_builtin_commands`

✅ Before and after function names match

### Variables

Before variable `prefix` (decl src ln 662)
Store to declared address of `prefix` (decl src ln 662), asm ln 25579
  arg 0
  Added assignment asm ln 25579, prod ln 662.0, live ln 673, enc None
Before variable `cmds` (decl src ln 662)
Store to declared address of `cmds` (decl src ln 662), asm ln 25581
  arg 1
  Added assignment asm ln 25581, prod ln 662.0, live ln 673, enc None
Before variable `name` (decl src ln 664)
Before variable `i` (decl src ln 665)
Store to declared address of `i` (decl src ln 665), asm ln 25628
  %inc = add nsw i32 %9, 1, l676 c41, asm ln 25627
🔔 Store to declared address of `i` (decl src ln 665): live ln too early, using produced ln + 1
  Added assignment asm ln 25628, prod ln 676.41, live ln 677, enc None
Store to declared address of `i` (decl src ln 665), asm ln 25596
  const i32 0
🔔 Store to declared address of `i` (decl src ln 665): live ln too early, using produced ln + 1
  Added assignment asm ln 25596, prod ln 676.9, live ln 677, enc None

After variable `prefix` (decl src ln 662)
Store to declared address of `prefix` (decl src ln 662), asm ln 25544
  arg 0
  Added assignment asm ln 25544, prod ln 662.0, live ln 673, enc None
After variable `cmds` (decl src ln 662)
Value produced for `cmds` (decl src ln 662), asm ln 25546
  arg 1
  Added assignment asm ln 25546, prod ln 662.0, live ln 673, enc None
After variable `name` (decl src ln 664)
After variable `i` (decl src ln 665)
Value produced for `i` (decl src ln 665), asm ln 25585
  %inc = add nsw i32 %i.0, 1, l676 c41, asm ln 25584
🔔 Value produced for `i` (decl src ln 665): live ln too early, using produced ln + 1
  Added assignment asm ln 25585, prod ln 676.41, live ln 677, enc None
After variable `i` (decl src ln 665)
Value produced for `i` (decl src ln 665), asm ln 25560
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %entry ], asm ln 25559
🔔 Value produced for `i` (decl src ln 665): live ln too early, using produced ln + 1
  Added assignment asm ln 25560, prod ln 676.41, live ln 677, enc None

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `prefix`
  Concrete pointer resolves to prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) prefix.deref)
  Replaced concrete pointer with hash (w64 0x3E8C4480EDC2A01A)
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
Collected value for `cmds`
  Concrete pointer resolves to cmds.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) cmds.deref)
  Replaced concrete pointer with hash (w64 0xEDF10C495303ABE5)
  %struct.cmdnames* %cmds
  (w64 0xEDF10C495303ABE5)
Collected value for `i`
  i32 0
  (w32 0x0)
Assertion failed: (!f->isVarArg() && "Function to skip has variable number of arguments"), function executeCall, file Executor.cpp, line 1813.
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /Users/jryans/Projects/klee/build-release-debug/bin/check-debug-info clang/13/O0/git.bc clang/13/O0-mem2reg/git.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-functions=10 --max-forks=4 --search=random-path --tsv
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x0000000108dbdd07 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 39
1  check-debug-info         0x0000000108dbcb48 llvm::sys::RunSignalHandlers() + 248
2  check-debug-info         0x0000000108dbe350 SignalHandler(int) + 288
3  libsystem_platform.dylib 0x00007ff80904b5ed _sigtramp + 29
4  libsystem_platform.dylib 0x000000013dfe6a98 _sigtramp + 18446603375764681928
5  libsystem_c.dylib        0x00007ff808f44b45 abort + 123
6  libsystem_c.dylib        0x00007ff808f43e5e err + 0
7  check-debug-info         0x0000000108ddd523 klee::Executor::executeCall(klee::ExecutionState&, klee::KInstruction*, llvm::Function*, std::__1::vector<klee::ref<klee::Expr>, std::__1::allocator<klee::ref<klee::Expr> > >&) (.cold.25) + 35
8  check-debug-info         0x000000010756dc0c klee::Executor::executeCall(klee::ExecutionState&, klee::KInstruction*, llvm::Function*, std::__1::vector<klee::ref<klee::Expr>, std::__1::allocator<klee::ref<klee::Expr> > >&) + 11788
9  check-debug-info         0x0000000107574a8a klee::Executor::executeInstruction(klee::ExecutionState&, klee::KInstruction*) + 14778
10 check-debug-info         0x000000010757b21e klee::Executor::run(klee::ExecutionState&) + 2142
11 check-debug-info         0x000000010757fa48 klee::Executor::runFunction(llvm::Function*) + 376
12 check-debug-info         0x0000000107550900 ValuesCollector::collect(llvm::StringRef, llvm::StringRef, llvm::SmallVector<std::__1::pair<Variable, Assignment*>, 1u>*) + 224
13 check-debug-info         0x0000000107544040 checkFunction(llvm::SmallVector<ValuesCollector, 2u>&, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&) + 3216
14 check-debug-info         0x00000001075459bb main + 2811
15 dyld                     0x00007ff808cc441f start + 1903
./check.sh: line 23: 12536 Abort trap: 6           ${CHECK} clang/${version}/O0/${TARGET_NAME}.bc clang/${version}/${level}/${TARGET_NAME}.bc ${CHECK_OPTS} "$@"
