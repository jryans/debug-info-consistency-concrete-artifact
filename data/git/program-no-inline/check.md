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
++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-functions=10 --max-forks=4 --max-time=10s --search=random-path --tsv'
+ level=O0-mem2reg
+ version=13
+ echo '## Checking debug consistency of `git` (Clang 13, O0-mem2reg)'
## Checking debug consistency of `git` (Clang 13, O0-mem2reg)
+ /Users/jryans/Projects/klee/build-release-debug/bin/check-debug-info clang/13/O0/git.bc clang/13/O0-mem2reg/git.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-functions=10 --max-forks=4 --max-time=10s --search=random-path --tsv
Checking clang/13/O0/git.bc and clang/13/O0-mem2reg/git.bc for debug info consistency…

## Functions

✅ 12085 before defined functions(s), 12085 after defined functions(s)
🔔 Limited to first 10 functions (`--max-functions`)

## Function `setup_auto_pager`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `cmd` (decl src ln 125), asm ln 25456
  %1 = load i8*, i8** %cmd.addr, l129 c33, asm ln 25456
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25456, prod ln 129.33, live ln 130, enc None
Store to declared address of `cmd` (decl src ln 125), asm ln 25442
  arg 0
  Added assignment asm ln 25442, prod ln 125.0, live ln 127, enc None
Load from declared address of `def` (decl src ln 125), asm ln 25464
  %3 = load i32, i32* %def.addr, l131 c15, asm ln 25464
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25464, prod ln 131.15, live ln 132, enc None
Store to declared address of `def` (decl src ln 125), asm ln 25444
  arg 1
  Added assignment asm ln 25444, prod ln 125.0, live ln 127, enc None

#### After variables

Value produced for `cmd` (decl src ln 125), asm ln 25440
  arg 0
  Added assignment asm ln 25440, prod ln 125.0, live ln 127, enc None
Value produced for `def` (decl src ln 125), asm ln 25441
  arg 1
  Added assignment asm ln 25441, prod ln 125.0, live ln 127, enc None

#### Summary

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0m[0;35mKLEE: WARNING: Unable to load source file `git.c`
[0mCollected value for `cmd`
  Assignment asm ln 25442, prod ln 125.0, live ln 127, enc 0
  Concrete pointer resolves to cmd.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) cmd.deref)
  Replaced concrete pointer with hash (w64 0x1213E0C6625D2556)
  i8* %cmd
  (w64 0x1213E0C6625D2556)
Collected value for `def`
  Assignment asm ln 25444, prod ln 125.0, live ln 127, enc 0
  i32 %def
  (ReadLSB w32 (w32 0x0) def)
Collected value for `cmd`
  Assignment asm ln 25456, prod ln 129.33, live ln 130, enc 1
  Concrete pointer resolves to cmd.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) cmd.deref)
  Replaced concrete pointer with hash (w64 0x1213E0C6625D2556)
  %1 = load i8*, i8** %cmd.addr, l129 c33
  (w64 0x1213E0C6625D2556)
Collected value for `def`
  Assignment asm ln 25464, prod ln 131.15, live ln 132, enc 1
  %3 = load i32, i32* %def.addr, l131 c15
  (ReadLSB w32 (w32 0x0) def)

#### After values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `cmd`
  Assignment asm ln 25440, prod ln 125.0, live ln 127, enc 0
  Concrete pointer resolves to cmd.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) cmd.deref)
  Replaced concrete pointer with hash (w64 0x1213E0C6625D2556)
  i8* %cmd
  (w64 0x1213E0C6625D2556)
Collected value for `def`
  Assignment asm ln 25441, prod ln 125.0, live ln 127, enc 0
  i32 %def
  (ReadLSB w32 (w32 0x0) def)

### Assignments

#### Collation

Filtering redundant before assignments: `cmd` (decl src ln 125)

Checking equivalence of `cmd` (decl src ln 125) from
  assn asm ln 25456, prod ln 129.33, live ln 130, enc 1
  %1 = load i8*, i8** %cmd.addr, l129 c33
  (w64 0x1213E0C6625D2556)
and
  assn asm ln 25442, prod ln 125.0, live ln 127, enc 0
  i8* %cmd
  (w64 0x1213E0C6625D2556)
🔔 Removing: asm ln 25456, prod ln 129.33, live ln 130, enc 1

Filtering redundant before assignments: `def` (decl src ln 125)

Checking equivalence of `def` (decl src ln 125) from
  assn asm ln 25464, prod ln 131.15, live ln 132, enc 1
  %3 = load i32, i32* %def.addr, l131 c15
  (ReadLSB w32 (w32 0x0) def)
and
  assn asm ln 25444, prod ln 125.0, live ln 127, enc 0
  i32 %def
  (ReadLSB w32 (w32 0x0) def)
Query to parse
array def[4] : w32 -> w8 = symbolic
array def[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) def)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) def)
     N0)
🔔 Removing: asm ln 25464, prod ln 131.15, live ln 132, enc 1

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

### Variable events

#### Before variables

#### After variables

#### Summary

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

#### Collation



#### Check before using after as reference

#### Check after using before as reference

## Function `is_builtin`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `s` (decl src ln 646), asm ln 25508
  %0 = load i8*, i8** %s.addr, l648 c23, asm ln 25508
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25508, prod ln 648.23, live ln 649, enc None
Store to declared address of `s` (decl src ln 646), asm ln 25506
  arg 0
  Added assignment asm ln 25506, prod ln 646.0, live ln 648, enc None

#### After variables

Value produced for `s` (decl src ln 646), asm ln 25494
  arg 0
  Added assignment asm ln 25494, prod ln 646.0, live ln 648, enc None

#### Summary

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `s`
  Assignment asm ln 25506, prod ln 646.0, live ln 648, enc 0
  Concrete pointer resolves to s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) s.deref)
  Replaced concrete pointer with hash (w64 0x100699262794627A)
  i8* %s
  (w64 0x100699262794627A)
Collected value for `s`
  Assignment asm ln 25508, prod ln 648.23, live ln 649, enc 1
  Concrete pointer resolves to s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) s.deref)
  Replaced concrete pointer with hash (w64 0x100699262794627A)
  %0 = load i8*, i8** %s.addr, l648 c23
  (w64 0x100699262794627A)

#### After values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `s`
  Assignment asm ln 25494, prod ln 646.0, live ln 648, enc 0
  Concrete pointer resolves to s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) s.deref)
  Replaced concrete pointer with hash (w64 0x100699262794627A)
  i8* %s
  (w64 0x100699262794627A)

### Assignments

#### Collation

Filtering redundant before assignments: `s` (decl src ln 646)

Checking equivalence of `s` (decl src ln 646) from
  assn asm ln 25508, prod ln 648.23, live ln 649, enc 1
  %0 = load i8*, i8** %s.addr, l648 c23
  (w64 0x100699262794627A)
and
  assn asm ln 25506, prod ln 646.0, live ln 648, enc 0
  i8* %s
  (w64 0x100699262794627A)
🔔 Removing: asm ln 25508, prod ln 648.23, live ln 649, enc 1

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

### Variable events

#### Before variables

Load from declared address of `s` (decl src ln 635), asm ln 25542
  %2 = load i8*, i8** %s.addr, l640 c15, asm ln 25542
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25542, prod ln 640.15, live ln 641, enc None
Store to declared address of `s` (decl src ln 635), asm ln 25524
  arg 0
  Added assignment asm ln 25524, prod ln 635.0, live ln 638, enc None
Store to declared address of `i` (decl src ln 637), asm ln 25558
  %inc = add nsw i32 %6, 1, l638 c41, asm ln 25557
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25558, prod ln 638.41, live ln 639, enc None
Load from declared address of `i` (decl src ln 637), asm ln 25556
  %6 = load i32, i32* %i, l638 c41, asm ln 25556
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25556, prod ln 638.41, live ln 639, enc None
Load from declared address of `i` (decl src ln 637), asm ln 25538
  %1 = load i32, i32* %i, l639 c37, asm ln 25538
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25538, prod ln 639.37, live ln 640, enc None
Load from declared address of `i` (decl src ln 637), asm ln 25531
  %0 = load i32, i32* %i, l638 c14, asm ln 25531
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25531, prod ln 638.14, live ln 639, enc None
Store to declared address of `i` (decl src ln 637), asm ln 25527
  const i32 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25527, prod ln 638.9, live ln 639, enc None
Load from declared address of `p` (decl src ln 639), asm ln 25551
  %5 = load %struct.cmd_struct*, %struct.cmd_struct** %p, l641 c11, asm ln 25551
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25551, prod ln 641.11, live ln 642, enc None
Load from declared address of `p` (decl src ln 639), asm ln 25543
  %3 = load %struct.cmd_struct*, %struct.cmd_struct** %p, l640 c18, asm ln 25543
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25543, prod ln 640.18, live ln 641, enc None
Store to declared address of `p` (decl src ln 639), asm ln 25541
  %add.ptr = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* getelementptr inbounds ([141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 0), i64 %idx.ext, l639 c35, asm ln 25540
  Added assignment asm ln 25541, prod ln 639.35, live ln 640, enc None

#### After variables

Value produced for `s` (decl src ln 635), asm ln 25506
  arg 0
  Added assignment asm ln 25506, prod ln 635.0, live ln 638, enc None
Value produced for `i` (decl src ln 637), asm ln 25507
  const i32 0
  Added assignment asm ln 25507, prod ln 637.0, live ln 638, enc None
Value produced for `p` (decl src ln 639), asm ln 25520
  %add.ptr = getelementptr inbounds %struct.cmd_struct.0, %struct.cmd_struct.0* getelementptr inbounds ([141 x %struct.cmd_struct.0], [141 x %struct.cmd_struct.0]* @commands, i64 0, i64 0), i64 %idx.ext, l639 c35, asm ln 25519
  Added assignment asm ln 25520, prod ln 639.35, live ln 640, enc None
Value produced for `i` (decl src ln 637), asm ln 25529
  %inc = add nsw i32 %i.0, 1, l638 c41, asm ln 25528
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25529, prod ln 638.41, live ln 639, enc None
Value produced for `i` (decl src ln 637), asm ln 25512
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], asm ln 25511
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25512, prod ln 638.41, live ln 639, enc None

#### Summary

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `s`
  Assignment asm ln 25524, prod ln 635.0, live ln 638, enc 0
  Concrete pointer resolves to s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) s.deref)
  Replaced concrete pointer with hash (w64 0x100699262794627A)
  i8* %s
  (w64 0x100699262794627A)
Collected value for `i`
  Assignment asm ln 25527, prod ln 638.9, live ln 639, enc 0
  i32 0
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 25531, prod ln 638.14, live ln 639, enc 1
  %0 = load i32, i32* %i, l638 c14
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 25538, prod ln 639.37, live ln 640, enc 2
  %1 = load i32, i32* %i, l639 c37
  (w32 0x0)
Collected value for `p`
  Assignment asm ln 25541, prod ln 639.35, live ln 640, enc 0
  Concrete pointer resolves to commands, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xBB8485E41BDF13D5)
  %add.ptr = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* getelementptr inbounds ([141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 0), i64 %idx.ext, l639 c35
  (w64 0xBB8485E41BDF13D5)
Collected value for `s`
  Assignment asm ln 25542, prod ln 640.15, live ln 641, enc 1
  Concrete pointer resolves to s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) s.deref)
  Replaced concrete pointer with hash (w64 0x100699262794627A)
  %2 = load i8*, i8** %s.addr, l640 c15
  (w64 0x100699262794627A)
Collected value for `p`
  Assignment asm ln 25543, prod ln 640.18, live ln 641, enc 1
  Concrete pointer resolves to commands, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xBB8485E41BDF13D5)
  %3 = load %struct.cmd_struct*, %struct.cmd_struct** %p, l640 c18
  (w64 0xBB8485E41BDF13D5)
Collected value for `p`
  Assignment asm ln 25551, prod ln 641.11, live ln 642, enc 2
  Concrete pointer resolves to commands, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xBB8485E41BDF13D5)
  %5 = load %struct.cmd_struct*, %struct.cmd_struct** %p, l641 c11
  (w64 0xBB8485E41BDF13D5)
Collected value for `i`
  Assignment asm ln 25556, prod ln 638.41, live ln 639, enc 3
  %6 = load i32, i32* %i, l638 c41
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 25558, prod ln 638.41, live ln 639, enc 4
  %inc = add nsw i32 %6, 1, l638 c41
  (w32 0x1)
[0;1;35mKLEE: WARNING ONCE: skipping fork (max-forks reached)
[0m
🔔 Unable to execute all before program states

🔔 Unable to execute all before instructions

#### After values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `s`
  Assignment asm ln 25506, prod ln 635.0, live ln 638, enc 0
  Concrete pointer resolves to s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) s.deref)
  Replaced concrete pointer with hash (w64 0x100699262794627A)
  i8* %s
  (w64 0x100699262794627A)
Collected value for `i`
  Assignment asm ln 25507, prod ln 637.0, live ln 638, enc 0
  i32 0
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 25512, prod ln 638.41, live ln 639, enc 1
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  Block: 0
  (w32 0x0)
Collected value for `p`
  Assignment asm ln 25520, prod ln 639.35, live ln 640, enc 0
  Concrete pointer resolves to commands, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xBB8485E41BDF13D5)
  %add.ptr = getelementptr inbounds %struct.cmd_struct.0, %struct.cmd_struct.0* getelementptr inbounds ([141 x %struct.cmd_struct.0], [141 x %struct.cmd_struct.0]* @commands, i64 0, i64 0), i64 %idx.ext, l639 c35
  (w64 0xBB8485E41BDF13D5)
Collected value for `i`
  Assignment asm ln 25529, prod ln 638.41, live ln 639, enc 2
  %inc = add nsw i32 %i.0, 1, l638 c41
  (w32 0x1)

🔔 Unable to execute all after program states

### Assignments

#### Collation

Filtering redundant before assignments: `s` (decl src ln 635)

Checking equivalence of `s` (decl src ln 635) from
  assn asm ln 25542, prod ln 640.15, live ln 641, enc 1
  %2 = load i8*, i8** %s.addr, l640 c15
  (w64 0x100699262794627A)
and
  assn asm ln 25524, prod ln 635.0, live ln 638, enc 0
  i8* %s
  (w64 0x100699262794627A)
🔔 Removing: asm ln 25542, prod ln 640.15, live ln 641, enc 1

Filtering redundant before assignments: `i` (decl src ln 637)

Checking equivalence of `i` (decl src ln 637) from
  assn asm ln 25531, prod ln 638.14, live ln 639, enc 1
  %0 = load i32, i32* %i, l638 c14
  (w32 0x0)
and
  assn asm ln 25527, prod ln 638.9, live ln 639, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 25531, prod ln 638.14, live ln 639, enc 1

Checking equivalence of `i` (decl src ln 637) from
  assn asm ln 25538, prod ln 639.37, live ln 640, enc 2
  %1 = load i32, i32* %i, l639 c37
  (w32 0x0)
and
  assn asm ln 25527, prod ln 638.9, live ln 639, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 25538, prod ln 639.37, live ln 640, enc 2

Checking equivalence of `i` (decl src ln 637) from
  assn asm ln 25556, prod ln 638.41, live ln 639, enc 3
  %6 = load i32, i32* %i, l638 c41
  (w32 0x0)
and
  assn asm ln 25527, prod ln 638.9, live ln 639, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 25556, prod ln 638.41, live ln 639, enc 3

Checking equivalence of `i` (decl src ln 637) from
  assn asm ln 25558, prod ln 638.41, live ln 639, enc 4
  %inc = add nsw i32 %6, 1, l638 c41
  (w32 0x1)
and
  assn asm ln 25527, prod ln 638.9, live ln 639, enc 0
  i32 0
  (w32 0x0)

Filtering redundant before assignments: `p` (decl src ln 639)

Checking equivalence of `p` (decl src ln 639) from
  assn asm ln 25543, prod ln 640.18, live ln 641, enc 1
  %3 = load %struct.cmd_struct*, %struct.cmd_struct** %p, l640 c18
  (w64 0xBB8485E41BDF13D5)
and
  assn asm ln 25541, prod ln 639.35, live ln 640, enc 0
  %add.ptr = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* getelementptr inbounds ([141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 0), i64 %idx.ext, l639 c35
  (w64 0xBB8485E41BDF13D5)
🔔 Removing: asm ln 25543, prod ln 640.18, live ln 641, enc 1

Checking equivalence of `p` (decl src ln 639) from
  assn asm ln 25551, prod ln 641.11, live ln 642, enc 2
  %5 = load %struct.cmd_struct*, %struct.cmd_struct** %p, l641 c11
  (w64 0xBB8485E41BDF13D5)
and
  assn asm ln 25541, prod ln 639.35, live ln 640, enc 0
  %add.ptr = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* getelementptr inbounds ([141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 0), i64 %idx.ext, l639 c35
  (w64 0xBB8485E41BDF13D5)
🔔 Removing: asm ln 25551, prod ln 641.11, live ln 642, enc 2

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

### Variable events

#### Before variables

Load from declared address of `prefix` (decl src ln 662), asm ln 25611
  %5 = load i8*, i8** %prefix.addr, l677 c36, asm ln 25611
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25611, prod ln 677.36, live ln 678, enc None
Load from declared address of `prefix` (decl src ln 662), asm ln 25591
  %1 = load i8*, i8** %prefix.addr, l674 c3, asm ln 25591
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25591, prod ln 674.3, live ln 675, enc None
Load from declared address of `prefix` (decl src ln 662), asm ln 25585
  %0 = load i8*, i8** %prefix.addr, l673 c19, asm ln 25585
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25585, prod ln 673.19, live ln 674, enc None
Store to declared address of `prefix` (decl src ln 662), asm ln 25579
  arg 0
  Added assignment asm ln 25579, prod ln 662.0, live ln 673, enc None
Load from declared address of `cmds` (decl src ln 662), asm ln 25617
  %6 = load %struct.cmdnames*, %struct.cmdnames** %cmds.addr, l678 c16, asm ln 25617
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25617, prod ln 678.16, live ln 679, enc None
Store to declared address of `cmds` (decl src ln 662), asm ln 25581
  arg 1
  Added assignment asm ln 25581, prod ln 662.0, live ln 673, enc None
Load from declared address of `name` (decl src ln 664), asm ln 25619
  %8 = load i8*, i8** %name, l678 c35, asm ln 25619
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25619, prod ln 678.35, live ln 679, enc None
Load from declared address of `name` (decl src ln 664), asm ln 25618
  %7 = load i8*, i8** %name, l678 c22, asm ln 25618
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25618, prod ln 678.22, live ln 679, enc None
Store to declared address of `i` (decl src ln 665), asm ln 25628
  %inc = add nsw i32 %9, 1, l676 c41, asm ln 25627
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25628, prod ln 676.41, live ln 677, enc None
Load from declared address of `i` (decl src ln 665), asm ln 25626
  %9 = load i32, i32* %i, l676 c41, asm ln 25626
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25626, prod ln 676.41, live ln 677, enc None
Load from declared address of `i` (decl src ln 665), asm ln 25606
  %3 = load i32, i32* %i, l677 c28, asm ln 25606
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25606, prod ln 677.28, live ln 678, enc None
Load from declared address of `i` (decl src ln 665), asm ln 25600
  %2 = load i32, i32* %i, l676 c14, asm ln 25600
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25600, prod ln 676.14, live ln 677, enc None
Store to declared address of `i` (decl src ln 665), asm ln 25596
  const i32 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25596, prod ln 676.9, live ln 677, enc None

#### After variables

Load from declared address of `prefix` (decl src ln 662), asm ln 25570
  %3 = load i8*, i8** %prefix.addr, l677 c36, asm ln 25570
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25570, prod ln 677.36, live ln 678, enc None
Load from declared address of `prefix` (decl src ln 662), asm ln 25554
  %1 = load i8*, i8** %prefix.addr, l674 c3, asm ln 25554
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25554, prod ln 674.3, live ln 675, enc None
Load from declared address of `prefix` (decl src ln 662), asm ln 25548
  %0 = load i8*, i8** %prefix.addr, l673 c19, asm ln 25548
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25548, prod ln 673.19, live ln 674, enc None
Store to declared address of `prefix` (decl src ln 662), asm ln 25544
  arg 0
  Added assignment asm ln 25544, prod ln 662.0, live ln 673, enc None
Value produced for `cmds` (decl src ln 662), asm ln 25546
  arg 1
  Added assignment asm ln 25546, prod ln 662.0, live ln 673, enc None
Load from declared address of `name` (decl src ln 664), asm ln 25577
  %5 = load i8*, i8** %name, l678 c35, asm ln 25577
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25577, prod ln 678.35, live ln 679, enc None
Load from declared address of `name` (decl src ln 664), asm ln 25576
  %4 = load i8*, i8** %name, l678 c22, asm ln 25576
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25576, prod ln 678.22, live ln 679, enc None
Value produced for `i` (decl src ln 665), asm ln 25585
  %inc = add nsw i32 %i.0, 1, l676 c41, asm ln 25584
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25585, prod ln 676.41, live ln 677, enc None
Value produced for `i` (decl src ln 665), asm ln 25560
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %entry ], asm ln 25559
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25560, prod ln 676.41, live ln 677, enc None

#### Summary

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `prefix`
  Assignment asm ln 25579, prod ln 662.0, live ln 673, enc 0
  Concrete pointer resolves to prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) prefix.deref)
  Replaced concrete pointer with hash (w64 0x3E8C4480EDC2A01A)
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
Collected value for `cmds`
  Assignment asm ln 25581, prod ln 662.0, live ln 673, enc 0
  Concrete pointer resolves to cmds.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) cmds.deref)
  Replaced concrete pointer with hash (w64 0xEDF10C495303ABE5)
  %struct.cmdnames* %cmds
  (w64 0xEDF10C495303ABE5)
Collected value for `prefix`
  Assignment asm ln 25585, prod ln 673.19, live ln 674, enc 1
  Concrete pointer resolves to prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) prefix.deref)
  Replaced concrete pointer with hash (w64 0x3E8C4480EDC2A01A)
  %0 = load i8*, i8** %prefix.addr, l673 c19
  (w64 0x3E8C4480EDC2A01A)
Collected value for `prefix`
  Assignment asm ln 25591, prod ln 674.3, live ln 675, enc 2
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %1 = load i8*, i8** %prefix.addr, l674 c3
  (w64 0x8467E337196AF796)
Collected value for `i`
  Assignment asm ln 25596, prod ln 676.9, live ln 677, enc 0
  i32 0
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 25600, prod ln 676.14, live ln 677, enc 1
  %2 = load i32, i32* %i, l676 c14
  (w32 0x0)
[0;1;31mKLEE: ERROR: git.c:674: reached "unreachable" instruction
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `i`
  Assignment asm ln 25606, prod ln 677.28, live ln 678, enc 2
  %3 = load i32, i32* %i, l677 c28
  (w32 0x0)
Collected value for `prefix`
  Assignment asm ln 25611, prod ln 677.36, live ln 678, enc 3
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %5 = load i8*, i8** %prefix.addr, l677 c36
  (w64 0x8467E337196AF796)
Collected value for `i`
  Assignment asm ln 25626, prod ln 676.41, live ln 677, enc 3
  %9 = load i32, i32* %i, l676 c41
  (w32 0x0)
Collected value for `cmds`
  Assignment asm ln 25617, prod ln 678.16, live ln 679, enc 1
  Concrete pointer resolves to cmds.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) cmds.deref)
  Replaced concrete pointer with hash (w64 0xEDF10C495303ABE5)
  %6 = load %struct.cmdnames*, %struct.cmdnames** %cmds.addr, l678 c16
  (w64 0xEDF10C495303ABE5)
Collected value for `i`
  Assignment asm ln 25628, prod ln 676.41, live ln 677, enc 4
  %inc = add nsw i32 %9, 1, l676 c41
  (w32 0x1)
Collected value for `name`
  Assignment asm ln 25618, prod ln 678.22, live ln 679, enc 0
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref_1)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %7 = load i8*, i8** %name, l678 c22
  (w64 0x8467E337196AF796)
Collected value for `name`
  Assignment asm ln 25619, prod ln 678.35, live ln 679, enc 1
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref_1)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %8 = load i8*, i8** %name, l678 c35
  (w64 0x8467E337196AF796)
KLEE: HaltTimer invoked
[0mKLEE: halting execution, dumping remaining states
[0m
🔔 Unable to execute all before program states

🔔 Unable to execute all before instructions

#### After values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `prefix`
  Assignment asm ln 25544, prod ln 662.0, live ln 673, enc 0
  Concrete pointer resolves to prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) prefix.deref)
  Replaced concrete pointer with hash (w64 0x3E8C4480EDC2A01A)
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
Collected value for `cmds`
  Assignment asm ln 25546, prod ln 662.0, live ln 673, enc 0
  Concrete pointer resolves to cmds.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) cmds.deref)
  Replaced concrete pointer with hash (w64 0xEDF10C495303ABE5)
  %struct.cmdnames.214* %cmds
  (w64 0xEDF10C495303ABE5)
Collected value for `prefix`
  Assignment asm ln 25548, prod ln 673.19, live ln 674, enc 1
  Concrete pointer resolves to prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) prefix.deref)
  Replaced concrete pointer with hash (w64 0x3E8C4480EDC2A01A)
  %0 = load i8*, i8** %prefix.addr, l673 c19
  (w64 0x3E8C4480EDC2A01A)
Collected value for `prefix`
  Assignment asm ln 25554, prod ln 674.3, live ln 675, enc 2
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %1 = load i8*, i8** %prefix.addr, l674 c3
  (w64 0x8467E337196AF796)
[0;1;31mKLEE: ERROR: git.c:674: reached "unreachable" instruction
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `i`
  Assignment asm ln 25560, prod ln 676.41, live ln 677, enc 0
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  Block: 1
  (w32 0x0)
Collected value for `prefix`
  Assignment asm ln 25570, prod ln 677.36, live ln 678, enc 3
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %3 = load i8*, i8** %prefix.addr, l677 c36
  (w64 0x8467E337196AF796)
Collected value for `name`
  Assignment asm ln 25576, prod ln 678.22, live ln 679, enc 0
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref_1)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %4 = load i8*, i8** %name, l678 c22
  (w64 0x8467E337196AF796)
Collected value for `i`
  Assignment asm ln 25585, prod ln 676.41, live ln 677, enc 1
  %inc = add nsw i32 %i.0, 1, l676 c41
  (w32 0x1)
Collected value for `name`
  Assignment asm ln 25577, prod ln 678.35, live ln 679, enc 1
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref_1)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %5 = load i8*, i8** %name, l678 c35
  (w64 0x8467E337196AF796)
KLEE: HaltTimer invoked
[0mKLEE: halting execution, dumping remaining states
[0m
🔔 Unable to execute all after program states

🔔 Unable to execute all after instructions

### Assignments

#### Collation

Filtering redundant before assignments: `prefix` (decl src ln 662)

Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 25585, prod ln 673.19, live ln 674, enc 1
  %0 = load i8*, i8** %prefix.addr, l673 c19
  (w64 0x3E8C4480EDC2A01A)
and
  assn asm ln 25579, prod ln 662.0, live ln 673, enc 0
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
🔔 Removing: asm ln 25585, prod ln 673.19, live ln 674, enc 1

Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 25591, prod ln 674.3, live ln 675, enc 2
  %1 = load i8*, i8** %prefix.addr, l674 c3
  (w64 0x8467E337196AF796)
and
  assn asm ln 25579, prod ln 662.0, live ln 673, enc 0
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)

Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 25611, prod ln 677.36, live ln 678, enc 3
  %5 = load i8*, i8** %prefix.addr, l677 c36
  (w64 0x8467E337196AF796)
and
  assn asm ln 25591, prod ln 674.3, live ln 675, enc 2
  %1 = load i8*, i8** %prefix.addr, l674 c3
  (w64 0x8467E337196AF796)
🔔 Removing: asm ln 25611, prod ln 677.36, live ln 678, enc 3

Filtering redundant before assignments: `cmds` (decl src ln 662)

Checking equivalence of `cmds` (decl src ln 662) from
  assn asm ln 25617, prod ln 678.16, live ln 679, enc 1
  %6 = load %struct.cmdnames*, %struct.cmdnames** %cmds.addr, l678 c16
  (w64 0xEDF10C495303ABE5)
and
  assn asm ln 25581, prod ln 662.0, live ln 673, enc 0
  %struct.cmdnames* %cmds
  (w64 0xEDF10C495303ABE5)
🔔 Removing: asm ln 25617, prod ln 678.16, live ln 679, enc 1

Filtering redundant before assignments: `name` (decl src ln 664)

Checking equivalence of `name` (decl src ln 664) from
  assn asm ln 25619, prod ln 678.35, live ln 679, enc 1
  %8 = load i8*, i8** %name, l678 c35
  (w64 0x8467E337196AF796)
and
  assn asm ln 25618, prod ln 678.22, live ln 679, enc 0
  %7 = load i8*, i8** %name, l678 c22
  (w64 0x8467E337196AF796)
🔔 Removing: asm ln 25619, prod ln 678.35, live ln 679, enc 1

Filtering redundant before assignments: `i` (decl src ln 665)

Checking equivalence of `i` (decl src ln 665) from
  assn asm ln 25600, prod ln 676.14, live ln 677, enc 1
  %2 = load i32, i32* %i, l676 c14
  (w32 0x0)
and
  assn asm ln 25596, prod ln 676.9, live ln 677, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 25600, prod ln 676.14, live ln 677, enc 1

Checking equivalence of `i` (decl src ln 665) from
  assn asm ln 25606, prod ln 677.28, live ln 678, enc 2
  %3 = load i32, i32* %i, l677 c28
  (w32 0x0)
and
  assn asm ln 25596, prod ln 676.9, live ln 677, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 25606, prod ln 677.28, live ln 678, enc 2

Checking equivalence of `i` (decl src ln 665) from
  assn asm ln 25626, prod ln 676.41, live ln 677, enc 3
  %9 = load i32, i32* %i, l676 c41
  (w32 0x0)
and
  assn asm ln 25596, prod ln 676.9, live ln 677, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 25626, prod ln 676.41, live ln 677, enc 3

Checking equivalence of `i` (decl src ln 665) from
  assn asm ln 25628, prod ln 676.41, live ln 677, enc 4
  %inc = add nsw i32 %9, 1, l676 c41
  (w32 0x1)
and
  assn asm ln 25596, prod ln 676.9, live ln 677, enc 0
  i32 0
  (w32 0x0)

Filtering redundant after assignments: `prefix` (decl src ln 662)

Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 25548, prod ln 673.19, live ln 674, enc 1
  %0 = load i8*, i8** %prefix.addr, l673 c19
  (w64 0x3E8C4480EDC2A01A)
and
  assn asm ln 25544, prod ln 662.0, live ln 673, enc 0
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
🔔 Removing: asm ln 25548, prod ln 673.19, live ln 674, enc 1

Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 25554, prod ln 674.3, live ln 675, enc 2
  %1 = load i8*, i8** %prefix.addr, l674 c3
  (w64 0x8467E337196AF796)
and
  assn asm ln 25544, prod ln 662.0, live ln 673, enc 0
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)

Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 25570, prod ln 677.36, live ln 678, enc 3
  %3 = load i8*, i8** %prefix.addr, l677 c36
  (w64 0x8467E337196AF796)
and
  assn asm ln 25554, prod ln 674.3, live ln 675, enc 2
  %1 = load i8*, i8** %prefix.addr, l674 c3
  (w64 0x8467E337196AF796)
🔔 Removing: asm ln 25570, prod ln 677.36, live ln 678, enc 3

Filtering redundant after assignments: `name` (decl src ln 664)

Checking equivalence of `name` (decl src ln 664) from
  assn asm ln 25577, prod ln 678.35, live ln 679, enc 1
  %5 = load i8*, i8** %name, l678 c35
  (w64 0x8467E337196AF796)
and
  assn asm ln 25576, prod ln 678.22, live ln 679, enc 0
  %4 = load i8*, i8** %name, l678 c22
  (w64 0x8467E337196AF796)
🔔 Removing: asm ln 25577, prod ln 678.35, live ln 679, enc 1

Filtering redundant after assignments: `i` (decl src ln 665)

Checking equivalence of `i` (decl src ln 665) from
  assn asm ln 25585, prod ln 676.41, live ln 677, enc 1
  %inc = add nsw i32 %i.0, 1, l676 c41
  (w32 0x1)
and
  assn asm ln 25560, prod ln 676.41, live ln 677, enc 0
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  (w32 0x0)

Collating encountered before assignments: `prefix` (decl src ln 662)
  asm ln 25579, prod ln 662.0, live ln 673, enc 0
  asm ln 25591, prod ln 674.3, live ln 675, enc 1
Collating encountered before assignments: `cmds` (decl src ln 662)
  asm ln 25581, prod ln 662.0, live ln 673, enc 0
Collating encountered before assignments: `name` (decl src ln 664)
  asm ln 25618, prod ln 678.22, live ln 679, enc 0
Collating encountered before assignments: `i` (decl src ln 665)
  asm ln 25596, prod ln 676.9, live ln 677, enc 0
  asm ln 25628, prod ln 676.41, live ln 677, enc 1

Collating encountered after assignments: `prefix` (decl src ln 662)
  asm ln 25544, prod ln 662.0, live ln 673, enc 0
  asm ln 25554, prod ln 674.3, live ln 675, enc 1
Collating encountered after assignments: `cmds` (decl src ln 662)
  asm ln 25546, prod ln 662.0, live ln 673, enc 0
Collating encountered after assignments: `name` (decl src ln 664)
  asm ln 25576, prod ln 678.22, live ln 679, enc 0
Collating encountered after assignments: `i` (decl src ln 665)
  asm ln 25560, prod ln 676.41, live ln 677, enc 0
  asm ln 25585, prod ln 676.41, live ln 677, enc 1

#### Check before using after as reference

Checking equivalence of `cmds` (decl src ln 662) from
  assn asm ln 25581, prod ln 662.0, live ln 673, enc 0
  %struct.cmdnames* %cmds
  (w64 0xEDF10C495303ABE5)
and
  assn asm ln 25546, prod ln 662.0, live ln 673, enc 0
  %struct.cmdnames.214* %cmds
  (w64 0xEDF10C495303ABE5)
✅ After `cmds` (decl src ln 662) assn asm ln 25546, prod ln 662.0, live ln 673, enc 0 symbolic value matches before assn asm ln 25581, prod ln 662.0, live ln 673, enc 0

✅ Before `cmds` assns checked using after as reference
Variable:            cmds
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

Checking equivalence of `i` (decl src ln 665) from
  assn asm ln 25596, prod ln 676.9, live ln 677, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 25560, prod ln 676.41, live ln 677, enc 0
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  (w32 0x0)
✅ After `i` (decl src ln 665) assn asm ln 25560, prod ln 676.41, live ln 677, enc 0 symbolic value matches before assn asm ln 25596, prod ln 676.9, live ln 677, enc 0

Checking equivalence of `i` (decl src ln 665) from
  assn asm ln 25628, prod ln 676.41, live ln 677, enc 1
  %inc = add nsw i32 %9, 1, l676 c41
  (w32 0x1)
and
  assn asm ln 25585, prod ln 676.41, live ln 677, enc 1
  %inc = add nsw i32 %i.0, 1, l676 c41
  (w32 0x1)
✅ After `i` (decl src ln 665) assn asm ln 25585, prod ln 676.41, live ln 677, enc 1 symbolic value matches before assn asm ln 25628, prod ln 676.41, live ln 677, enc 1

✅ Before `i` assns checked using after as reference
Variable:            i
  Assignments:       2
  Matching Coords:   2
  Matching Value:    2
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `name` (decl src ln 664) from
  assn asm ln 25618, prod ln 678.22, live ln 679, enc 0
  %7 = load i8*, i8** %name, l678 c22
  (w64 0x8467E337196AF796)
and
  assn asm ln 25576, prod ln 678.22, live ln 679, enc 0
  %4 = load i8*, i8** %name, l678 c22
  (w64 0x8467E337196AF796)
✅ After `name` (decl src ln 664) assn asm ln 25576, prod ln 678.22, live ln 679, enc 0 symbolic value matches before assn asm ln 25618, prod ln 678.22, live ln 679, enc 0

✅ Before `name` assns checked using after as reference
Variable:            name
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

Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 25579, prod ln 662.0, live ln 673, enc 0
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
and
  assn asm ln 25544, prod ln 662.0, live ln 673, enc 0
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
✅ After `prefix` (decl src ln 662) assn asm ln 25544, prod ln 662.0, live ln 673, enc 0 symbolic value matches before assn asm ln 25579, prod ln 662.0, live ln 673, enc 0

Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 25591, prod ln 674.3, live ln 675, enc 1
  %1 = load i8*, i8** %prefix.addr, l674 c3
  (w64 0x8467E337196AF796)
and
  assn asm ln 25554, prod ln 674.3, live ln 675, enc 1
  %1 = load i8*, i8** %prefix.addr, l674 c3
  (w64 0x8467E337196AF796)
✅ After `prefix` (decl src ln 662) assn asm ln 25554, prod ln 674.3, live ln 675, enc 1 symbolic value matches before assn asm ln 25591, prod ln 674.3, live ln 675, enc 1

✅ Before `prefix` assns checked using after as reference
Variable:            prefix
  Assignments:       2
  Matching Coords:   2
  Matching Value:    2
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

Checking equivalence of `cmds` (decl src ln 662) from
  assn asm ln 25546, prod ln 662.0, live ln 673, enc 0
  %struct.cmdnames.214* %cmds
  (w64 0xEDF10C495303ABE5)
and
  assn asm ln 25581, prod ln 662.0, live ln 673, enc 0
  %struct.cmdnames* %cmds
  (w64 0xEDF10C495303ABE5)
✅ Before `cmds` (decl src ln 662) assn asm ln 25581, prod ln 662.0, live ln 673, enc 0 symbolic value matches after assn asm ln 25546, prod ln 662.0, live ln 673, enc 0

✅ After `cmds` assns checked using before as reference
Variable:            cmds
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

Checking equivalence of `i` (decl src ln 665) from
  assn asm ln 25560, prod ln 676.41, live ln 677, enc 0
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  (w32 0x0)
and
  assn asm ln 25596, prod ln 676.9, live ln 677, enc 0
  i32 0
  (w32 0x0)
✅ Before `i` (decl src ln 665) assn asm ln 25596, prod ln 676.9, live ln 677, enc 0 symbolic value matches after assn asm ln 25560, prod ln 676.41, live ln 677, enc 0

Checking equivalence of `i` (decl src ln 665) from
  assn asm ln 25585, prod ln 676.41, live ln 677, enc 1
  %inc = add nsw i32 %i.0, 1, l676 c41
  (w32 0x1)
and
  assn asm ln 25628, prod ln 676.41, live ln 677, enc 1
  %inc = add nsw i32 %9, 1, l676 c41
  (w32 0x1)
✅ Before `i` (decl src ln 665) assn asm ln 25628, prod ln 676.41, live ln 677, enc 1 symbolic value matches after assn asm ln 25585, prod ln 676.41, live ln 677, enc 1

✅ After `i` assns checked using before as reference
Variable:            i
  Assignments:       2
  Matching Coords:   2
  Matching Value:    2
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `name` (decl src ln 664) from
  assn asm ln 25576, prod ln 678.22, live ln 679, enc 0
  %4 = load i8*, i8** %name, l678 c22
  (w64 0x8467E337196AF796)
and
  assn asm ln 25618, prod ln 678.22, live ln 679, enc 0
  %7 = load i8*, i8** %name, l678 c22
  (w64 0x8467E337196AF796)
✅ Before `name` (decl src ln 664) assn asm ln 25618, prod ln 678.22, live ln 679, enc 0 symbolic value matches after assn asm ln 25576, prod ln 678.22, live ln 679, enc 0

✅ After `name` assns checked using before as reference
Variable:            name
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

Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 25544, prod ln 662.0, live ln 673, enc 0
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
and
  assn asm ln 25579, prod ln 662.0, live ln 673, enc 0
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
✅ Before `prefix` (decl src ln 662) assn asm ln 25579, prod ln 662.0, live ln 673, enc 0 symbolic value matches after assn asm ln 25544, prod ln 662.0, live ln 673, enc 0

Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 25554, prod ln 674.3, live ln 675, enc 1
  %1 = load i8*, i8** %prefix.addr, l674 c3
  (w64 0x8467E337196AF796)
and
  assn asm ln 25591, prod ln 674.3, live ln 675, enc 1
  %1 = load i8*, i8** %prefix.addr, l674 c3
  (w64 0x8467E337196AF796)
✅ Before `prefix` (decl src ln 662) assn asm ln 25591, prod ln 674.3, live ln 675, enc 1 symbolic value matches after assn asm ln 25554, prod ln 674.3, live ln 675, enc 1

✅ After `prefix` assns checked using before as reference
Variable:            prefix
  Assignments:       2
  Matching Coords:   2
  Matching Value:    2
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

## Function `skip_prefix`

✅ Before and after function names match

### Variable events

#### Before variables

Store to declared address of `str` (decl src ln 674), asm ln 25666
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1, l682 c15, asm ln 25665
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25666, prod ln 682.15, live ln 683, enc None
Load from declared address of `str` (decl src ln 674), asm ln 25664
  %4 = load i8*, i8** %str.addr, l682 c15, asm ln 25664
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25664, prod ln 682.15, live ln 683, enc None
Load from declared address of `str` (decl src ln 674), asm ln 25657
  %2 = load i8*, i8** %str.addr, l679 c11, asm ln 25657
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25657, prod ln 679.11, live ln 680, enc None
Store to declared address of `str` (decl src ln 674), asm ln 25642
  arg 0
  Added assignment asm ln 25642, prod ln 674.0, live ln 677, enc None
Store to declared address of `prefix` (decl src ln 674), asm ln 25671
  %incdec.ptr1 = getelementptr inbounds i8, i8* %6, i32 1, l682 c28, asm ln 25670
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25671, prod ln 682.28, live ln 683, enc None
Load from declared address of `prefix` (decl src ln 674), asm ln 25669
  %6 = load i8*, i8** %prefix.addr, l682 c28, asm ln 25669
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25669, prod ln 682.28, live ln 683, enc None
Load from declared address of `prefix` (decl src ln 674), asm ln 25651
  %0 = load i8*, i8** %prefix.addr, l678 c9, asm ln 25651
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25651, prod ln 678.9, live ln 679, enc None
Store to declared address of `prefix` (decl src ln 674), asm ln 25644
  arg 1
  Added assignment asm ln 25644, prod ln 674.0, live ln 677, enc None
Load from declared address of `out` (decl src ln 675), asm ln 25658
  %3 = load i8**, i8*** %out.addr, l679 c5, asm ln 25658
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25658, prod ln 679.5, live ln 680, enc None
Store to declared address of `out` (decl src ln 675), asm ln 25646
  arg 2
  Added assignment asm ln 25646, prod ln 675.0, live ln 677, enc None

#### After variables

Value produced for `str` (decl src ln 674), asm ln 25595
  arg 0
  Added assignment asm ln 25595, prod ln 674.0, live ln 677, enc None
Value produced for `prefix` (decl src ln 674), asm ln 25596
  arg 1
  Added assignment asm ln 25596, prod ln 674.0, live ln 677, enc None
Value produced for `out` (decl src ln 675), asm ln 25597
  arg 2
  Added assignment asm ln 25597, prod ln 675.0, live ln 677, enc None
Value produced for `str` (decl src ln 674), asm ln 25615
  %incdec.ptr = getelementptr inbounds i8, i8* %str.addr.0, i32 1, l682 c15, asm ln 25614
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25615, prod ln 682.15, live ln 683, enc None
Value produced for `prefix` (decl src ln 674), asm ln 25619
  %incdec.ptr1 = getelementptr inbounds i8, i8* %prefix.addr.0, i32 1, l682 c28, asm ln 25618
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25619, prod ln 682.28, live ln 683, enc None
Value produced for `str` (decl src ln 674), asm ln 25603
  %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %do.cond ], asm ln 25602
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25603, prod ln 682.15, live ln 683, enc None
Value produced for `prefix` (decl src ln 674), asm ln 25604
  %prefix.addr.0 = phi i8* [ %prefix, %entry ], [ %incdec.ptr1, %do.cond ], asm ln 25601
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25604, prod ln 682.28, live ln 683, enc None

#### Summary

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mKLEE: halting execution, dumping remaining states
[0m
🔔 Unable to execute all before program states

🔔 Unable to execute all before instructions

#### After values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mKLEE: halting execution, dumping remaining states
[0m
🔔 Unable to execute all after program states

🔔 Unable to execute all after instructions

### Assignments

#### Collation

Filtering redundant before assignments: `str` (decl src ln 674)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `str` (decl src ln 674) assn asm ln 25664, prod ln 682.15, live ln 683, enc None has no symbolic value from %4 = load i8*, i8** %str.addr, l682 c15

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `str` (decl src ln 674) assn asm ln 25657, prod ln 679.11, live ln 680, enc None has no symbolic value from %2 = load i8*, i8** %str.addr, l679 c11

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `str` (decl src ln 674) assn asm ln 25642, prod ln 674.0, live ln 677, enc None has no symbolic value from i8* %str

Filtering redundant before assignments: `prefix` (decl src ln 674)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `prefix` (decl src ln 674) assn asm ln 25669, prod ln 682.28, live ln 683, enc None has no symbolic value from %6 = load i8*, i8** %prefix.addr, l682 c28

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `prefix` (decl src ln 674) assn asm ln 25651, prod ln 678.9, live ln 679, enc None has no symbolic value from %0 = load i8*, i8** %prefix.addr, l678 c9

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `prefix` (decl src ln 674) assn asm ln 25644, prod ln 674.0, live ln 677, enc None has no symbolic value from i8* %prefix

Filtering redundant before assignments: `out` (decl src ln 675)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `out` (decl src ln 675) assn asm ln 25646, prod ln 675.0, live ln 677, enc None has no symbolic value from i8** %out

Filtering redundant after assignments: `str` (decl src ln 674)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `str` (decl src ln 674) assn asm ln 25615, prod ln 682.15, live ln 683, enc None has no symbolic value from %incdec.ptr = getelementptr inbounds i8, i8* %str.addr.0, i32 1, l682 c15

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `str` (decl src ln 674) assn asm ln 25603, prod ln 682.15, live ln 683, enc None has no symbolic value from %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %do.cond ]

Filtering redundant after assignments: `prefix` (decl src ln 674)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `prefix` (decl src ln 674) assn asm ln 25619, prod ln 682.28, live ln 683, enc None has no symbolic value from %incdec.ptr1 = getelementptr inbounds i8, i8* %prefix.addr.0, i32 1, l682 c28

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `prefix` (decl src ln 674) assn asm ln 25604, prod ln 682.28, live ln 683, enc None has no symbolic value from %prefix.addr.0 = phi i8* [ %prefix, %entry ], [ %incdec.ptr1, %do.cond ]

Collating encountered before assignments: `str` (decl src ln 674)
❌ Assignment asm ln 25666, prod ln 682.15, live ln 683, enc None for `str` (decl src ln 674) was not encountered during execution
❌ Assignment asm ln 25664, prod ln 682.15, live ln 683, enc None for `str` (decl src ln 674) was not encountered during execution
❌ Assignment asm ln 25657, prod ln 679.11, live ln 680, enc None for `str` (decl src ln 674) was not encountered during execution
❌ Assignment asm ln 25642, prod ln 674.0, live ln 677, enc None for `str` (decl src ln 674) was not encountered during execution
Collating encountered before assignments: `prefix` (decl src ln 674)
❌ Assignment asm ln 25671, prod ln 682.28, live ln 683, enc None for `prefix` (decl src ln 674) was not encountered during execution
❌ Assignment asm ln 25669, prod ln 682.28, live ln 683, enc None for `prefix` (decl src ln 674) was not encountered during execution
❌ Assignment asm ln 25651, prod ln 678.9, live ln 679, enc None for `prefix` (decl src ln 674) was not encountered during execution
❌ Assignment asm ln 25644, prod ln 674.0, live ln 677, enc None for `prefix` (decl src ln 674) was not encountered during execution
Collating encountered before assignments: `out` (decl src ln 675)
❌ Assignment asm ln 25658, prod ln 679.5, live ln 680, enc None for `out` (decl src ln 675) was not encountered during execution
❌ Assignment asm ln 25646, prod ln 675.0, live ln 677, enc None for `out` (decl src ln 675) was not encountered during execution

Collating encountered after assignments: `str` (decl src ln 674)
❌ Assignment asm ln 25595, prod ln 674.0, live ln 677, enc None for `str` (decl src ln 674) was not encountered during execution
❌ Assignment asm ln 25615, prod ln 682.15, live ln 683, enc None for `str` (decl src ln 674) was not encountered during execution
❌ Assignment asm ln 25603, prod ln 682.15, live ln 683, enc None for `str` (decl src ln 674) was not encountered during execution
Collating encountered after assignments: `prefix` (decl src ln 674)
❌ Assignment asm ln 25596, prod ln 674.0, live ln 677, enc None for `prefix` (decl src ln 674) was not encountered during execution
❌ Assignment asm ln 25619, prod ln 682.28, live ln 683, enc None for `prefix` (decl src ln 674) was not encountered during execution
❌ Assignment asm ln 25604, prod ln 682.28, live ln 683, enc None for `prefix` (decl src ln 674) was not encountered during execution
Collating encountered after assignments: `out` (decl src ln 675)
❌ Assignment asm ln 25597, prod ln 675.0, live ln 677, enc None for `out` (decl src ln 675) was not encountered during execution

#### Check before using after as reference

❌ Before assn asm ln 25658, prod ln 679.5, live ln 680, enc None for `out` (decl src ln 675) was not encountered during execution

❌ Before assn asm ln 25646, prod ln 675.0, live ln 677, enc None for `out` (decl src ln 675) was not encountered during execution

❌ Before `out` assns checked using after as reference
Variable:            out
  Assignments:       2
  Matching Coords:   0
  Matching Value:    0
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   2
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

❌ Before assn asm ln 25671, prod ln 682.28, live ln 683, enc None for `prefix` (decl src ln 674) was not encountered during execution

❌ Before assn asm ln 25669, prod ln 682.28, live ln 683, enc None for `prefix` (decl src ln 674) was not encountered during execution

❌ Before assn asm ln 25651, prod ln 678.9, live ln 679, enc None for `prefix` (decl src ln 674) was not encountered during execution

❌ Before assn asm ln 25644, prod ln 674.0, live ln 677, enc None for `prefix` (decl src ln 674) was not encountered during execution

❌ Before `prefix` assns checked using after as reference
Variable:            prefix
  Assignments:       4
  Matching Coords:   0
  Matching Value:    0
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   4
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

❌ Before assn asm ln 25666, prod ln 682.15, live ln 683, enc None for `str` (decl src ln 674) was not encountered during execution

❌ Before assn asm ln 25664, prod ln 682.15, live ln 683, enc None for `str` (decl src ln 674) was not encountered during execution

❌ Before assn asm ln 25657, prod ln 679.11, live ln 680, enc None for `str` (decl src ln 674) was not encountered during execution

❌ Before assn asm ln 25642, prod ln 674.0, live ln 677, enc None for `str` (decl src ln 674) was not encountered during execution

❌ Before `str` assns checked using after as reference
Variable:            str
  Assignments:       4
  Matching Coords:   0
  Matching Value:    0
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   4
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

#### Check after using before as reference

❌ After assn asm ln 25597, prod ln 675.0, live ln 677, enc None for `out` (decl src ln 675) was not encountered during execution

❌ After `out` assns checked using before as reference
Variable:            out
  Assignments:       1
  Matching Coords:   0
  Matching Value:    0
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   1
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

❌ After assn asm ln 25596, prod ln 674.0, live ln 677, enc None for `prefix` (decl src ln 674) was not encountered during execution

❌ After assn asm ln 25619, prod ln 682.28, live ln 683, enc None for `prefix` (decl src ln 674) was not encountered during execution

❌ After assn asm ln 25604, prod ln 682.28, live ln 683, enc None for `prefix` (decl src ln 674) was not encountered during execution

❌ After `prefix` assns checked using before as reference
Variable:            prefix
  Assignments:       3
  Matching Coords:   0
  Matching Value:    0
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   3
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

❌ After assn asm ln 25595, prod ln 674.0, live ln 677, enc None for `str` (decl src ln 674) was not encountered during execution

❌ After assn asm ln 25615, prod ln 682.15, live ln 683, enc None for `str` (decl src ln 674) was not encountered during execution

❌ After assn asm ln 25603, prod ln 682.15, live ln 683, enc None for `str` (decl src ln 674) was not encountered during execution

❌ After `str` assns checked using before as reference
Variable:            str
  Assignments:       3
  Matching Coords:   0
  Matching Value:    0
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   3
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

## Function `cmd_main`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `argc` (decl src ln 864), asm ln 25760
  %15 = load i32, i32* %argc.addr, l901 c7, asm ln 25760
  🔔 Live ln too early, using produced ln + 1
Unexpected address user
UNREACHABLE executed at /Users/jryans/Projects/klee/tools/check-debug-info/main.cpp:153!
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /Users/jryans/Projects/klee/build-release-debug/bin/check-debug-info clang/13/O0/git.bc clang/13/O0-mem2reg/git.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-functions=10 --max-forks=4 --max-time=10s --search=random-path --tsv
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x000000010f1a0947 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 39
1  check-debug-info         0x000000010f19f788 llvm::sys::RunSignalHandlers() + 248
2  check-debug-info         0x000000010f1a0f90 SignalHandler(int) + 288
3  libsystem_platform.dylib 0x00007ff80904b5ed _sigtramp + 29
4  libsystem_platform.dylib 000000000000000000 _sigtramp + 18446603370429631024
5  libsystem_c.dylib        0x00007ff808f44b45 abort + 123
6  check-debug-info         0x000000010f0e87f3 llvm::llvm_unreachable_internal(char const*, char const*, unsigned int) + 467
7  check-debug-info         0x000000010d91d9ac checkStaticRemovability(Assignment const&) + 1164
8  check-debug-info         0x000000010d91e760 addAssignment(llvm::StringRef, klee::InstructionInfoTable const&, llvm::DbgVariableIntrinsic const*, Variable const&, llvm::Twine const&, llvm::Instruction const*, llvm::SmallVector<llvm::Value const*, 2u> const&&, std::__1::map<Variable, llvm::SmallVector<Assignment, 1u>, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, llvm::SmallVector<Assignment, 1u> > > >&) + 3392
9  check-debug-info         0x000000010d91f4ee gatherMemoryAssignments(llvm::StringRef, klee::InstructionInfoTable const&, llvm::DbgVariableIntrinsic const*, Variable const&, llvm::StringRef, llvm::Value const*, std::__1::map<Variable, llvm::SmallVector<Assignment, 1u>, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, llvm::SmallVector<Assignment, 1u> > > >&) + 558
10 check-debug-info         0x000000010d91f8ec gatherAssignments(llvm::StringRef, llvm::Instruction const&, klee::InstructionInfoTable const&, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&, llvm::SmallSet<Variable, 8u, std::__1::less<Variable> >&, std::__1::map<Variable, llvm::SmallVector<Assignment, 1u>, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, llvm::SmallVector<Assignment, 1u> > > >&) + 844
11 check-debug-info         0x000000010d9201c0 gatherAssignments(llvm::StringRef, llvm::Function const&, klee::InstructionInfoTable const&, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&, llvm::SmallSet<Variable, 8u, std::__1::less<Variable> >&, std::__1::map<Variable, llvm::SmallVector<Assignment, 1u>, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, llvm::SmallVector<Assignment, 1u> > > >&) + 528
12 check-debug-info         0x000000010d9261b4 checkFunction(llvm::SmallVector<ValuesCollector, 2u>&, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&) + 1444
13 check-debug-info         0x000000010d92831b main + 2811
14 dyld                     0x00007ff808cc441f start + 1903
./check.sh: line 23: 30634 Abort trap: 6           ${CHECK} clang/${version}/O0/${TARGET_NAME}.bc clang/${version}/${level}/${TARGET_NAME}.bc ${CHECK_OPTS} "$@"
