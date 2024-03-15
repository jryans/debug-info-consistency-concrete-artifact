+++ dirname ./check.sh
++ cd .
++ pwd
+ SCRIPT_DIR=/Users/jryans/Research/Papers/debug-info-consistency/data/git/program-no-inline/clang/13/O1
+ '[' /Users/jryans/Research/Papers/debug-info-consistency/data/git/program-no-inline/clang/13/O1 '!=' /Users/jryans/Research/Papers/debug-info-consistency/data/git/program-no-inline/clang/13/O1 ']'
+ TARGET_NAME=git
+ source /Users/jryans/Research/Papers/debug-info-consistency/data/git/program-no-inline/clang/13/O1/../../../../../vars.sh
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
++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --disable-verify --max-functions=10 --max-forks=4 --max-time=10s --search=random-path --tsv'
+ level=O1
+ version=13
+ echo '## Checking debug consistency of `git` (Clang 13, O1)'
## Checking debug consistency of `git` (Clang 13, O1)
+ /Users/jryans/Projects/klee/build-release-debug/bin/check-debug-info ../O0/git.bc git.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --disable-verify --max-functions=10 --max-forks=4 --max-time=10s --search=random-path --tsv
Checking ../O0/git.bc and git.bc for debug info consistency…

## Functions

❌ 12085 before defined functions(s), 11799 after defined functions(s)
🔔 Limited to first 10 functions (`--max-functions`)

[0;1;35mKLEE: WARNING ONCE: unsupported intrinsic llvm.load.relative.i64
[0m## Function `setup_auto_pager`

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

Value produced for `cmd` (decl src ln 125), asm ln 24001
  arg 0
  Added assignment asm ln 24001, prod ln 125.0, live ln 127, enc None
Value produced for `def` (decl src ln 125), asm ln 24002
  arg 1
  Added assignment asm ln 24002, prod ln 125.0, live ln 127, enc None

#### Summary

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0m[0;35mKLEE: WARNING: Unable to load source file `git.c`
[0mCollected value for `cmd`
  Assignment asm ln 25442, prod ln 125.0, live ln 127, enc 0
  Concrete pointer resolves to setup_auto_pager.cmd.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) setup_auto_pager.cmd.deref)
  Replaced concrete pointer with hash (w64 0xB3AA84C06569E655)
  i8* %cmd
  (w64 0xB3AA84C06569E655)
Collected value for `def`
  Assignment asm ln 25444, prod ln 125.0, live ln 127, enc 0
  i32 %def
  (ReadLSB w32 (w32 0x0) setup_auto_pager.def)
Collected value for `cmd`
  Assignment asm ln 25456, prod ln 129.33, live ln 130, enc 1
  Concrete pointer resolves to setup_auto_pager.cmd.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) setup_auto_pager.cmd.deref)
  Replaced concrete pointer with hash (w64 0xB3AA84C06569E655)
  %1 = load i8*, i8** %cmd.addr, l129 c33
  (w64 0xB3AA84C06569E655)
Collected value for `def`
  Assignment asm ln 25464, prod ln 131.15, live ln 132, enc 1
  %3 = load i32, i32* %def.addr, l131 c15
  (ReadLSB w32 (w32 0x0) setup_auto_pager.def)

#### After values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `cmd`
  Assignment asm ln 24001, prod ln 125.0, live ln 127, enc 0
  Concrete pointer resolves to setup_auto_pager.cmd.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) setup_auto_pager.cmd.deref)
  Replaced concrete pointer with hash (w64 0xB3AA84C06569E655)
  i8* %cmd
  (w64 0xB3AA84C06569E655)
Collected value for `def`
  Assignment asm ln 24002, prod ln 125.0, live ln 127, enc 0
  i32 %def
  (ReadLSB w32 (w32 0x0) setup_auto_pager.def)

### Assignments

#### Collation

Filtering redundant before assignments: `cmd` (decl src ln 125)

Checking equivalence of `cmd` (decl src ln 125) from
  assn asm ln 25456, prod ln 129.33, live ln 130, enc 1
  %1 = load i8*, i8** %cmd.addr, l129 c33
  (w64 0xB3AA84C06569E655)
and
  assn asm ln 25442, prod ln 125.0, live ln 127, enc 0
  i8* %cmd
  (w64 0xB3AA84C06569E655)
🔔 Removing: asm ln 25456, prod ln 129.33, live ln 130, enc 1

Filtering redundant before assignments: `def` (decl src ln 125)

Checking equivalence of `def` (decl src ln 125) from
  assn asm ln 25464, prod ln 131.15, live ln 132, enc 1
  %3 = load i32, i32* %def.addr, l131 c15
  (ReadLSB w32 (w32 0x0) setup_auto_pager.def)
and
  assn asm ln 25444, prod ln 125.0, live ln 127, enc 0
  i32 %def
  (ReadLSB w32 (w32 0x0) setup_auto_pager.def)
Query to parse
array setup_auto_pager.def[4] : w32 -> w8 = symbolic
array setup_auto_pager.def[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) setup_auto_pager.def)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) setup_auto_pager.def)
     N0)
🔔 Removing: asm ln 25464, prod ln 131.15, live ln 132, enc 1

Collating encountered before assignments: `cmd` (decl src ln 125)
  asm ln 25442, prod ln 125.0, live ln 127, enc 0
Collating encountered before assignments: `def` (decl src ln 125)
  asm ln 25444, prod ln 125.0, live ln 127, enc 0

Collating encountered after assignments: `cmd` (decl src ln 125)
  asm ln 24001, prod ln 125.0, live ln 127, enc 0
Collating encountered after assignments: `def` (decl src ln 125)
  asm ln 24002, prod ln 125.0, live ln 127, enc 0

#### Check after using before as reference

Checking equivalence of `cmd` (decl src ln 125) from
  assn asm ln 24001, prod ln 125.0, live ln 127, enc 0
  i8* %cmd
  (w64 0xB3AA84C06569E655)
and
  assn asm ln 25442, prod ln 125.0, live ln 127, enc 0
  i8* %cmd
  (w64 0xB3AA84C06569E655)
✅ Before `cmd` (decl src ln 125) assn asm ln 25442, prod ln 125.0, live ln 127, enc 0 symbolic value matches after assn asm ln 24001, prod ln 125.0, live ln 127, enc 0

✅ After `cmd` assns checked using before as reference
Assignments:         cmd
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `def` (decl src ln 125) from
  assn asm ln 24002, prod ln 125.0, live ln 127, enc 0
  i32 %def
  (ReadLSB w32 (w32 0x0) setup_auto_pager.def)
and
  assn asm ln 25444, prod ln 125.0, live ln 127, enc 0
  i32 %def
  (ReadLSB w32 (w32 0x0) setup_auto_pager.def)
Query to parse
array setup_auto_pager.def[4] : w32 -> w8 = symbolic
array setup_auto_pager.def[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) setup_auto_pager.def)
     (ReadLSB w32 (w32 0x0) setup_auto_pager.def)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) setup_auto_pager.def)
     N0)
✅ Before `def` (decl src ln 125) assn asm ln 25444, prod ln 125.0, live ln 127, enc 0 symbolic value matches after assn asm ln 24002, prod ln 125.0, live ln 127, enc 0

✅ After `def` assns checked using before as reference
Assignments:         def
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

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

Value produced for `s` (decl src ln 646), asm ln 24053
  arg 0
  Added assignment asm ln 24053, prod ln 646.0, live ln 648, enc None

#### Summary

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `s`
  Assignment asm ln 25506, prod ln 646.0, live ln 648, enc 0
  Concrete pointer resolves to is_builtin.s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) is_builtin.s.deref)
  Replaced concrete pointer with hash (w64 0xFFDAF8D5FE34C353)
  i8* %s
  (w64 0xFFDAF8D5FE34C353)
Collected value for `s`
  Assignment asm ln 25508, prod ln 648.23, live ln 649, enc 1
  Concrete pointer resolves to is_builtin.s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) is_builtin.s.deref)
  Replaced concrete pointer with hash (w64 0xFFDAF8D5FE34C353)
  %0 = load i8*, i8** %s.addr, l648 c23
  (w64 0xFFDAF8D5FE34C353)

#### After values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `s`
  Assignment asm ln 24053, prod ln 646.0, live ln 648, enc 0
  Concrete pointer resolves to is_builtin.s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) is_builtin.s.deref)
  Replaced concrete pointer with hash (w64 0xFFDAF8D5FE34C353)
  i8* %s
  (w64 0xFFDAF8D5FE34C353)

### Assignments

#### Collation

Filtering redundant before assignments: `s` (decl src ln 646)

Checking equivalence of `s` (decl src ln 646) from
  assn asm ln 25508, prod ln 648.23, live ln 649, enc 1
  %0 = load i8*, i8** %s.addr, l648 c23
  (w64 0xFFDAF8D5FE34C353)
and
  assn asm ln 25506, prod ln 646.0, live ln 648, enc 0
  i8* %s
  (w64 0xFFDAF8D5FE34C353)
🔔 Removing: asm ln 25508, prod ln 648.23, live ln 649, enc 1

Collating encountered before assignments: `s` (decl src ln 646)
  asm ln 25506, prod ln 646.0, live ln 648, enc 0

Collating encountered after assignments: `s` (decl src ln 646)
  asm ln 24053, prod ln 646.0, live ln 648, enc 0

#### Check after using before as reference

Checking equivalence of `s` (decl src ln 646) from
  assn asm ln 24053, prod ln 646.0, live ln 648, enc 0
  i8* %s
  (w64 0xFFDAF8D5FE34C353)
and
  assn asm ln 25506, prod ln 646.0, live ln 648, enc 0
  i8* %s
  (w64 0xFFDAF8D5FE34C353)
✅ Before `s` (decl src ln 646) assn asm ln 25506, prod ln 646.0, live ln 648, enc 0 symbolic value matches after assn asm ln 24053, prod ln 646.0, live ln 648, enc 0

✅ After `s` assns checked using before as reference
Assignments:         s
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

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

Value produced for `s` (decl src ln 635), asm ln 24063
  arg 0
  Added assignment asm ln 24063, prod ln 635.0, live ln 638, enc None
Value produced for `i` (decl src ln 637), asm ln 24064
  const i32 0
  Added assignment asm ln 24064, prod ln 637.0, live ln 638, enc None
Value produced for `i` (decl src ln 637), asm ln 24069
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, l638 c41, asm ln 24068
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24069, prod ln 638.41, live ln 639, enc None
Value produced for `p` (decl src ln 639), asm ln 24079
  %add.ptr = getelementptr inbounds [141 x %struct.cmd_struct.0], [141 x %struct.cmd_struct.0]* @commands, i64 0, i64 %indvars.iv, l639 c35, asm ln 24078
  Added assignment asm ln 24079, prod ln 639.35, live ln 640, enc None
Value produced for `i` (decl src ln 637), asm ln 24070
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ], asm ln 24075
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24070, prod ln 638.41, live ln 639, enc None
Value produced for `i` (decl src ln 637), asm ln 24077
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ], asm ln 24075
  Added assignment asm ln 24077, prod ln 638.41, live ln 639, enc None
Value produced for `i` (decl src ln 637), asm ln 24085
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ], asm ln 24075
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 24085, prod ln 638.41, live ln 639, enc None

#### Summary

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `s`
  Assignment asm ln 25524, prod ln 635.0, live ln 638, enc 0
  Concrete pointer resolves to get_builtin.s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) get_builtin.s.deref)
  Replaced concrete pointer with hash (w64 0xD2D562B4D56B1761)
  i8* %s
  (w64 0xD2D562B4D56B1761)
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
  Concrete pointer resolves to get_builtin.s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) get_builtin.s.deref)
  Replaced concrete pointer with hash (w64 0xD2D562B4D56B1761)
  %2 = load i8*, i8** %s.addr, l640 c15
  (w64 0xD2D562B4D56B1761)
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
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m
🔔 Unable to execute all before instructions

🔔 Unable to execute all before program states

#### After values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `s`
  Assignment asm ln 24063, prod ln 635.0, live ln 638, enc 0
  Concrete pointer resolves to get_builtin.s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) get_builtin.s.deref)
  Replaced concrete pointer with hash (w64 0xD2D562B4D56B1761)
  i8* %s
  (w64 0xD2D562B4D56B1761)
Collected value for `i`
  Assignment asm ln 24064, prod ln 637.0, live ln 638, enc 0
  i32 0
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 24077, prod ln 638.41, live ln 639, enc 1
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  Block: 0
  (w64 0x0)
Collected value for `p`
  Assignment asm ln 24079, prod ln 639.35, live ln 640, enc 0
  Concrete pointer resolves to commands, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xBB8485E41BDF13D5)
  %add.ptr = getelementptr inbounds [141 x %struct.cmd_struct.0], [141 x %struct.cmd_struct.0]* @commands, i64 0, i64 %indvars.iv, l639 c35
  (w64 0xBB8485E41BDF13D5)
Collected value for `i`
  Assignment asm ln 24085, prod ln 638.41, live ln 639, enc 2
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  Block: 0
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 24069, prod ln 638.41, live ln 639, enc 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, l638 c41
  (w64 0x1)
Collected value for `i`
  Assignment asm ln 24070, prod ln 638.41, live ln 639, enc 4
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  Block: 0
  (w64 0x0)
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m
🔔 Unable to execute all after program states

### Assignments

#### Collation

Filtering redundant before assignments: `s` (decl src ln 635)

Checking equivalence of `s` (decl src ln 635) from
  assn asm ln 25542, prod ln 640.15, live ln 641, enc 1
  %2 = load i8*, i8** %s.addr, l640 c15
  (w64 0xD2D562B4D56B1761)
and
  assn asm ln 25524, prod ln 635.0, live ln 638, enc 0
  i8* %s
  (w64 0xD2D562B4D56B1761)
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
  assn asm ln 24077, prod ln 638.41, live ln 639, enc 1
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  (w32 0x0)
and
  assn asm ln 24064, prod ln 637.0, live ln 638, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 24077, prod ln 638.41, live ln 639, enc 1

Pushed initial value onto stack: (w64 0x0)
plus_uconst: (Add w64 (w64 0x0) (w64 0x1))
Result: (Extract w32 0 (Add w64 (w64 0x0) (w64 0x1)))
Checking equivalence of `i` (decl src ln 637) from
  assn asm ln 24085, prod ln 638.41, live ln 639, enc 2
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  (Extract w32 0 (Add w64 (w64 0x0) (w64 0x1)))
and
  assn asm ln 24064, prod ln 637.0, live ln 638, enc 0
  i32 0
  (w32 0x0)
Query to parse
(query [] (Eq (Extract w32 0 (Add w64 (w64 0x0) (w64 0x1)))
     (w32 0x0)))
Parsed query
(Eq (Extract w32 0 (Add w64 (w64 0x0) (w64 0x1)))
     (w32 0x0))

Checking equivalence of `i` (decl src ln 637) from
  assn asm ln 24069, prod ln 638.41, live ln 639, enc 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, l638 c41
  (w32 0x1)
and
  assn asm ln 24085, prod ln 638.41, live ln 639, enc 2
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  (Extract w32 0 (Add w64 (w64 0x0) (w64 0x1)))
Query to parse
(query [] (Eq (w32 0x1)
     (Extract w32 0 (Add w64 (w64 0x0) (w64 0x1)))))
Parsed query
(Eq (w32 0x1)
     (Extract w32 0 (Add w64 (w64 0x0) (w64 0x1))))
🔔 Removing: asm ln 24069, prod ln 638.41, live ln 639, enc 3

Pushed initial value onto stack: (w64 0x0)
plus_uconst: (Add w64 (w64 0x0) (w64 0x1))
Result: (Extract w32 0 (Add w64 (w64 0x0) (w64 0x1)))
Checking equivalence of `i` (decl src ln 637) from
  assn asm ln 24070, prod ln 638.41, live ln 639, enc 4
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  (Extract w32 0 (Add w64 (w64 0x0) (w64 0x1)))
and
  assn asm ln 24085, prod ln 638.41, live ln 639, enc 2
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  (Extract w32 0 (Add w64 (w64 0x0) (w64 0x1)))
Query to parse
(query [] (Eq N0:(Extract w32 0 (Add w64 (w64 0x0) (w64 0x1)))
     N0))
Parsed query
(Eq N0:(Extract w32 0 (Add w64 (w64 0x0) (w64 0x1)))
     N0)
🔔 Removing: asm ln 24070, prod ln 638.41, live ln 639, enc 4

Collating encountered before assignments: `s` (decl src ln 635)
  asm ln 25524, prod ln 635.0, live ln 638, enc 0
Collating encountered before assignments: `i` (decl src ln 637)
  asm ln 25527, prod ln 638.9, live ln 639, enc 0
  asm ln 25558, prod ln 638.41, live ln 639, enc 1
Collating encountered before assignments: `p` (decl src ln 639)
  asm ln 25541, prod ln 639.35, live ln 640, enc 0

Collating encountered after assignments: `s` (decl src ln 635)
  asm ln 24063, prod ln 635.0, live ln 638, enc 0
Collating encountered after assignments: `i` (decl src ln 637)
  asm ln 24064, prod ln 637.0, live ln 638, enc 0
  asm ln 24085, prod ln 638.41, live ln 639, enc 1
Collating encountered after assignments: `p` (decl src ln 639)
  asm ln 24079, prod ln 639.35, live ln 640, enc 0

#### Check after using before as reference

❌ Before `i` (decl src ln 637) assn asm ln 25527, prod ln 638.9, live ln 639, enc 0 coordinates don't match after assn asm ln 24064, prod ln 637.0, live ln 638, enc 0
Checking equivalence of `i` (decl src ln 637) from
  assn asm ln 24064, prod ln 637.0, live ln 638, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 25527, prod ln 638.9, live ln 639, enc 0
  i32 0
  (w32 0x0)
✅ Before `i` (decl src ln 637) assn asm ln 25527, prod ln 638.9, live ln 639, enc 0 symbolic value matches after assn asm ln 24064, prod ln 637.0, live ln 638, enc 0

Checking equivalence of `i` (decl src ln 637) from
  assn asm ln 24085, prod ln 638.41, live ln 639, enc 1
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  (Extract w32 0 (Add w64 (w64 0x0) (w64 0x1)))
and
  assn asm ln 25558, prod ln 638.41, live ln 639, enc 1
  %inc = add nsw i32 %6, 1, l638 c41
  (w32 0x1)
Query to parse
(query [] (Eq (Extract w32 0 (Add w64 (w64 0x0) (w64 0x1)))
     (w32 0x1)))
Parsed query
(Eq (Extract w32 0 (Add w64 (w64 0x0) (w64 0x1)))
     (w32 0x1))
✅ Before `i` (decl src ln 637) assn asm ln 25558, prod ln 638.41, live ln 639, enc 1 symbolic value matches after assn asm ln 24085, prod ln 638.41, live ln 639, enc 1

❌ After `i` assns checked using before as reference
Assignments:         i
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    2
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

Checking equivalence of `p` (decl src ln 639) from
  assn asm ln 24079, prod ln 639.35, live ln 640, enc 0
  %add.ptr = getelementptr inbounds [141 x %struct.cmd_struct.0], [141 x %struct.cmd_struct.0]* @commands, i64 0, i64 %indvars.iv, l639 c35
  (w64 0xBB8485E41BDF13D5)
and
  assn asm ln 25541, prod ln 639.35, live ln 640, enc 0
  %add.ptr = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* getelementptr inbounds ([141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 0), i64 %idx.ext, l639 c35
  (w64 0xBB8485E41BDF13D5)
✅ Before `p` (decl src ln 639) assn asm ln 25541, prod ln 639.35, live ln 640, enc 0 symbolic value matches after assn asm ln 24079, prod ln 639.35, live ln 640, enc 0

✅ After `p` assns checked using before as reference
Assignments:         p
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

Checking equivalence of `s` (decl src ln 635) from
  assn asm ln 24063, prod ln 635.0, live ln 638, enc 0
  i8* %s
  (w64 0xD2D562B4D56B1761)
and
  assn asm ln 25524, prod ln 635.0, live ln 638, enc 0
  i8* %s
  (w64 0xD2D562B4D56B1761)
✅ Before `s` (decl src ln 635) assn asm ln 25524, prod ln 635.0, live ln 638, enc 0 symbolic value matches after assn asm ln 24063, prod ln 635.0, live ln 638, enc 0

✅ After `s` assns checked using before as reference
Assignments:         s
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

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

Value produced for `prefix` (decl src ln 662), asm ln 24101
  arg 0
  Added assignment asm ln 24101, prod ln 662.0, live ln 664, enc None
Value produced for `cmds` (decl src ln 662), asm ln 24103
  arg 1
  Added assignment asm ln 24103, prod ln 662.0, live ln 664, enc None
Load from deref'd address of `prefix` (decl src ln 662), asm ln 24108
  %1 = load i8*, i8** %prefix.addr, !tbaa !97223, asm ln 24108
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 24108, prod ln 662.0, live ln 673, enc None
Store to deref'd address of `prefix` (decl src ln 662), asm ln 24102
  arg 0
  Added assignment asm ln 24102, prod ln 662.0, live ln 664, enc None
Value produced for `prefix` (decl src ln 662), asm ln 24112
  %1 = load i8*, i8** %prefix.addr, !tbaa !97223, asm ln 24108
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 24112, prod ln 662.0, live ln 674, enc None
Value produced for `prefix` (decl src ln 662), asm ln 24121
  %1 = load i8*, i8** %prefix.addr, !tbaa !97223, asm ln 24108
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 24121, prod ln 662.0, live ln 677, enc None
Load from deref'd address of `name` (decl src ln 664), asm ln 24128
  %3 = load i8*, i8** %name, !tbaa !97223, l678 c22, asm ln 24128
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24128, prod ln 678.22, live ln 679, enc None
Value produced for `name` (decl src ln 664), asm ln 24129
  %3 = load i8*, i8** %name, !tbaa !97223, l678 c22, asm ln 24128
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24129, prod ln 678.22, live ln 679, enc None
Value produced for `i` (decl src ln 665), asm ln 24137
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, l676 c41, asm ln 24136
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24137, prod ln 676.41, live ln 677, enc None
Value produced for `i` (decl src ln 665), asm ln 24118
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], asm ln 24117
  Added assignment asm ln 24118, prod ln 676.41, live ln 677, enc None

#### Summary

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `prefix`
  Assignment asm ln 25579, prod ln 662.0, live ln 673, enc 0
  Concrete pointer resolves to load_builtin_commands.prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) load_builtin_commands.prefix.deref)
  Replaced concrete pointer with hash (w64 0x7FBC047FA43A1FCB)
  i8* %prefix
  (w64 0x7FBC047FA43A1FCB)
Collected value for `cmds`
  Assignment asm ln 25581, prod ln 662.0, live ln 673, enc 0
  Concrete pointer resolves to load_builtin_commands.cmds.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) load_builtin_commands.cmds.deref)
  Replaced concrete pointer with hash (w64 0xDA2600503A55CB0B)
  %struct.cmdnames* %cmds
  (w64 0xDA2600503A55CB0B)
Collected value for `prefix`
  Assignment asm ln 25585, prod ln 673.19, live ln 674, enc 1
  Concrete pointer resolves to load_builtin_commands.prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) load_builtin_commands.prefix.deref)
  Replaced concrete pointer with hash (w64 0x7FBC047FA43A1FCB)
  %0 = load i8*, i8** %prefix.addr, l673 c19
  (w64 0x7FBC047FA43A1FCB)
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
[0;1;31mKLEE: ERROR: git.c:674: reached "unreachable" instruction
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `i`
  Assignment asm ln 25600, prod ln 676.14, live ln 677, enc 1
  %2 = load i32, i32* %i, l676 c14
  (w32 0x0)
Collected value for `i`
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
Collected value for `cmds`
  Assignment asm ln 25617, prod ln 678.16, live ln 679, enc 1
  Concrete pointer resolves to load_builtin_commands.cmds.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) load_builtin_commands.cmds.deref)
  Replaced concrete pointer with hash (w64 0xDA2600503A55CB0B)
  %6 = load %struct.cmdnames*, %struct.cmdnames** %cmds.addr, l678 c16
  (w64 0xDA2600503A55CB0B)
Collected value for `i`
  Assignment asm ln 25626, prod ln 676.41, live ln 677, enc 3
  %9 = load i32, i32* %i, l676 c41
  (w32 0x0)
Collected value for `name`
  Assignment asm ln 25618, prod ln 678.22, live ln 679, enc 0
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref_1)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %7 = load i8*, i8** %name, l678 c22
  (w64 0x8467E337196AF796)
Collected value for `i`
  Assignment asm ln 25628, prod ln 676.41, live ln 677, enc 4
  %inc = add nsw i32 %9, 1, l676 c41
  (w32 0x1)
Collected value for `name`
  Assignment asm ln 25619, prod ln 678.35, live ln 679, enc 1
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref_1)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %8 = load i8*, i8** %name, l678 c35
  (w64 0x8467E337196AF796)
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0mKLEE: HaltTimer invoked
[0mKLEE: halting execution, dumping remaining states
[0m
🔔 Unable to execute all before instructions

🔔 Unable to execute all before program states

#### After values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `prefix`
  Assignment asm ln 24101, prod ln 662.0, live ln 664, enc 0
  Concrete pointer resolves to load_builtin_commands.prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) load_builtin_commands.prefix.deref)
  Replaced concrete pointer with hash (w64 0x7FBC047FA43A1FCB)
  i8* %prefix
  (w64 0x7FBC047FA43A1FCB)
Collected value for `prefix`
  Assignment asm ln 24102, prod ln 662.0, live ln 664, enc 1
  Concrete pointer resolves to load_builtin_commands.prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) load_builtin_commands.prefix.deref)
  Replaced concrete pointer with hash (w64 0x7FBC047FA43A1FCB)
  i8* %prefix
  (w64 0x7FBC047FA43A1FCB)
Collected value for `cmds`
  Assignment asm ln 24103, prod ln 662.0, live ln 664, enc 0
  Concrete pointer resolves to load_builtin_commands.cmds.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) load_builtin_commands.cmds.deref)
  Replaced concrete pointer with hash (w64 0xDA2600503A55CB0B)
  %struct.cmdnames.209* %cmds
  (w64 0xDA2600503A55CB0B)
Collected value for `prefix`
  Assignment asm ln 24108, prod ln 662.0, live ln 673, enc 2
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %1 = load i8*, i8** %prefix.addr, !tbaa !97223
  (w64 0x8467E337196AF796)
Collected value for `prefix`
  Assignment asm ln 24112, prod ln 662.0, live ln 674, enc 3
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %1 = load i8*, i8** %prefix.addr, !tbaa !97223
  (w64 0x8467E337196AF796)
Collected value for `i`
  Assignment asm ln 24118, prod ln 676.41, live ln 677, enc 0
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  Block: 1
  (w64 0x0)
Collected value for `prefix`
  Assignment asm ln 24121, prod ln 662.0, live ln 677, enc 4
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %1 = load i8*, i8** %prefix.addr, !tbaa !97223
  (w64 0x8467E337196AF796)
[0;1;31mKLEE: ERROR: git.c:674: reached "unreachable" instruction
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `name`
  Assignment asm ln 24128, prod ln 678.22, live ln 679, enc 0
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref_1)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %3 = load i8*, i8** %name, !tbaa !97223, l678 c22
  (w64 0x8467E337196AF796)
Collected value for `i`
  Assignment asm ln 24137, prod ln 676.41, live ln 677, enc 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, l676 c41
  (w64 0x1)
Collected value for `name`
  Assignment asm ln 24129, prod ln 678.22, live ln 679, enc 1
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref_1)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %3 = load i8*, i8** %name, !tbaa !97223, l678 c22
  (w64 0x8467E337196AF796)
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0mKLEE: HaltTimer invoked
[0mKLEE: halting execution, dumping remaining states
[0m
🔔 Unable to execute all after instructions

🔔 Unable to execute all after program states

### Assignments

#### Collation

Filtering redundant before assignments: `prefix` (decl src ln 662)

Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 25585, prod ln 673.19, live ln 674, enc 1
  %0 = load i8*, i8** %prefix.addr, l673 c19
  (w64 0x7FBC047FA43A1FCB)
and
  assn asm ln 25579, prod ln 662.0, live ln 673, enc 0
  i8* %prefix
  (w64 0x7FBC047FA43A1FCB)
🔔 Removing: asm ln 25585, prod ln 673.19, live ln 674, enc 1

Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 25591, prod ln 674.3, live ln 675, enc 2
  %1 = load i8*, i8** %prefix.addr, l674 c3
  (w64 0x8467E337196AF796)
and
  assn asm ln 25579, prod ln 662.0, live ln 673, enc 0
  i8* %prefix
  (w64 0x7FBC047FA43A1FCB)

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
  (w64 0xDA2600503A55CB0B)
and
  assn asm ln 25581, prod ln 662.0, live ln 673, enc 0
  %struct.cmdnames* %cmds
  (w64 0xDA2600503A55CB0B)
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
  assn asm ln 24102, prod ln 662.0, live ln 664, enc 1
  i8* %prefix
  (w64 0x7FBC047FA43A1FCB)
and
  assn asm ln 24101, prod ln 662.0, live ln 664, enc 0
  i8* %prefix
  (w64 0x7FBC047FA43A1FCB)
🔔 Removing: asm ln 24102, prod ln 662.0, live ln 664, enc 1

Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 24108, prod ln 662.0, live ln 673, enc 2
  %1 = load i8*, i8** %prefix.addr, !tbaa !97223
  (w64 0x8467E337196AF796)
and
  assn asm ln 24101, prod ln 662.0, live ln 664, enc 0
  i8* %prefix
  (w64 0x7FBC047FA43A1FCB)

Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 24112, prod ln 662.0, live ln 674, enc 3
  %1 = load i8*, i8** %prefix.addr, !tbaa !97223
  (w64 0x8467E337196AF796)
and
  assn asm ln 24108, prod ln 662.0, live ln 673, enc 2
  %1 = load i8*, i8** %prefix.addr, !tbaa !97223
  (w64 0x8467E337196AF796)
🔔 Removing: asm ln 24112, prod ln 662.0, live ln 674, enc 3

Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 24121, prod ln 662.0, live ln 677, enc 4
  %1 = load i8*, i8** %prefix.addr, !tbaa !97223
  (w64 0x8467E337196AF796)
and
  assn asm ln 24108, prod ln 662.0, live ln 673, enc 2
  %1 = load i8*, i8** %prefix.addr, !tbaa !97223
  (w64 0x8467E337196AF796)
🔔 Removing: asm ln 24121, prod ln 662.0, live ln 677, enc 4

Filtering redundant after assignments: `name` (decl src ln 664)

Checking equivalence of `name` (decl src ln 664) from
  assn asm ln 24129, prod ln 678.22, live ln 679, enc 1
  %3 = load i8*, i8** %name, !tbaa !97223, l678 c22
  (w64 0x8467E337196AF796)
and
  assn asm ln 24128, prod ln 678.22, live ln 679, enc 0
  %3 = load i8*, i8** %name, !tbaa !97223, l678 c22
  (w64 0x8467E337196AF796)
🔔 Removing: asm ln 24129, prod ln 678.22, live ln 679, enc 1

Filtering redundant after assignments: `i` (decl src ln 665)

Checking equivalence of `i` (decl src ln 665) from
  assn asm ln 24137, prod ln 676.41, live ln 677, enc 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, l676 c41
  (w32 0x1)
and
  assn asm ln 24118, prod ln 676.41, live ln 677, enc 0
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
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
  asm ln 24101, prod ln 662.0, live ln 664, enc 0
  asm ln 24108, prod ln 662.0, live ln 673, enc 1
Collating encountered after assignments: `cmds` (decl src ln 662)
  asm ln 24103, prod ln 662.0, live ln 664, enc 0
Collating encountered after assignments: `name` (decl src ln 664)
  asm ln 24128, prod ln 678.22, live ln 679, enc 0
Collating encountered after assignments: `i` (decl src ln 665)
  asm ln 24118, prod ln 676.41, live ln 677, enc 0
  asm ln 24137, prod ln 676.41, live ln 677, enc 1

#### Check after using before as reference

❌ Before `cmds` (decl src ln 662) assn asm ln 25581, prod ln 662.0, live ln 673, enc 0 coordinates don't match after assn asm ln 24103, prod ln 662.0, live ln 664, enc 0
Checking equivalence of `cmds` (decl src ln 662) from
  assn asm ln 24103, prod ln 662.0, live ln 664, enc 0
  %struct.cmdnames.209* %cmds
  (w64 0xDA2600503A55CB0B)
and
  assn asm ln 25581, prod ln 662.0, live ln 673, enc 0
  %struct.cmdnames* %cmds
  (w64 0xDA2600503A55CB0B)
✅ Before `cmds` (decl src ln 662) assn asm ln 25581, prod ln 662.0, live ln 673, enc 0 symbolic value matches after assn asm ln 24103, prod ln 662.0, live ln 664, enc 0

❌ After `cmds` assns checked using before as reference
Assignments:         cmds
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: false
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: false

Checking equivalence of `i` (decl src ln 665) from
  assn asm ln 24118, prod ln 676.41, live ln 677, enc 0
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  (w32 0x0)
and
  assn asm ln 25596, prod ln 676.9, live ln 677, enc 0
  i32 0
  (w32 0x0)
✅ Before `i` (decl src ln 665) assn asm ln 25596, prod ln 676.9, live ln 677, enc 0 symbolic value matches after assn asm ln 24118, prod ln 676.41, live ln 677, enc 0

Checking equivalence of `i` (decl src ln 665) from
  assn asm ln 24137, prod ln 676.41, live ln 677, enc 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, l676 c41
  (w32 0x1)
and
  assn asm ln 25628, prod ln 676.41, live ln 677, enc 1
  %inc = add nsw i32 %9, 1, l676 c41
  (w32 0x1)
✅ Before `i` (decl src ln 665) assn asm ln 25628, prod ln 676.41, live ln 677, enc 1 symbolic value matches after assn asm ln 24137, prod ln 676.41, live ln 677, enc 1

✅ After `i` assns checked using before as reference
Assignments:         i
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   2
  Matching Value:    2
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: false
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: false

Checking equivalence of `name` (decl src ln 664) from
  assn asm ln 24128, prod ln 678.22, live ln 679, enc 0
  %3 = load i8*, i8** %name, !tbaa !97223, l678 c22
  (w64 0x8467E337196AF796)
and
  assn asm ln 25618, prod ln 678.22, live ln 679, enc 0
  %7 = load i8*, i8** %name, l678 c22
  (w64 0x8467E337196AF796)
✅ Before `name` (decl src ln 664) assn asm ln 25618, prod ln 678.22, live ln 679, enc 0 symbolic value matches after assn asm ln 24128, prod ln 678.22, live ln 679, enc 0

✅ After `name` assns checked using before as reference
Assignments:         name
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: false
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: false

❌ Before `prefix` (decl src ln 662) assn asm ln 25579, prod ln 662.0, live ln 673, enc 0 coordinates don't match after assn asm ln 24101, prod ln 662.0, live ln 664, enc 0
Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 24101, prod ln 662.0, live ln 664, enc 0
  i8* %prefix
  (w64 0x7FBC047FA43A1FCB)
and
  assn asm ln 25579, prod ln 662.0, live ln 673, enc 0
  i8* %prefix
  (w64 0x7FBC047FA43A1FCB)
✅ Before `prefix` (decl src ln 662) assn asm ln 25579, prod ln 662.0, live ln 673, enc 0 symbolic value matches after assn asm ln 24101, prod ln 662.0, live ln 664, enc 0

❌ Before `prefix` (decl src ln 662) assn asm ln 25591, prod ln 674.3, live ln 675, enc 1 coordinates don't match after assn asm ln 24108, prod ln 662.0, live ln 673, enc 1
Checking equivalence of `prefix` (decl src ln 662) from
  assn asm ln 24108, prod ln 662.0, live ln 673, enc 1
  %1 = load i8*, i8** %prefix.addr, !tbaa !97223
  (w64 0x8467E337196AF796)
and
  assn asm ln 25591, prod ln 674.3, live ln 675, enc 1
  %1 = load i8*, i8** %prefix.addr, l674 c3
  (w64 0x8467E337196AF796)
✅ Before `prefix` (decl src ln 662) assn asm ln 25591, prod ln 674.3, live ln 675, enc 1 symbolic value matches after assn asm ln 24108, prod ln 662.0, live ln 673, enc 1

❌ After `prefix` assns checked using before as reference
Assignments:         prefix
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   0
  Matching Value:    2
Consistency Errors:
  Mismatched Coords: 2
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: false
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: false

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

Value produced for `str` (decl src ln 674), asm ln 24151
  arg 0
  Added assignment asm ln 24151, prod ln 674.0, live ln 677, enc None
Value produced for `prefix` (decl src ln 674), asm ln 24152
  arg 1
  Added assignment asm ln 24152, prod ln 674.0, live ln 677, enc None
Value produced for `out` (decl src ln 675), asm ln 24153
  arg 2
  Added assignment asm ln 24153, prod ln 675.0, live ln 677, enc None
Value produced for `str` (decl src ln 674), asm ln 24171
  %incdec.ptr = getelementptr inbounds i8, i8* %str.addr.0, i64 1, l682 c15, asm ln 24170
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24171, prod ln 682.15, live ln 683, enc None
Value produced for `prefix` (decl src ln 674), asm ln 24174
  %incdec.ptr1 = getelementptr inbounds i8, i8* %prefix.addr.0, i64 1, l682 c28, asm ln 24173
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24174, prod ln 682.28, live ln 683, enc None
Value produced for `prefix` (decl src ln 674), asm ln 24159
  %prefix.addr.0 = phi i8* [ %prefix, %entry ], [ %incdec.ptr1, %do.cond ], asm ln 24158
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24159, prod ln 682.28, live ln 683, enc None
Value produced for `str` (decl src ln 674), asm ln 24160
  %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %do.cond ], asm ln 24157
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24160, prod ln 682.15, live ln 683, enc None

#### Summary

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0m[0;35mKLEE: WARNING: Unable to load source file `./git-compat-util.h`
[0mCollected value for `str`
  Assignment asm ln 25642, prod ln 674.0, live ln 677, enc 0
  Concrete pointer resolves to skip_prefix.str.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.str.deref)
  Replaced concrete pointer with hash (w64 0x5DBAEE36D03296F3)
  i8* %str
  (w64 0x5DBAEE36D03296F3)
Collected value for `prefix`
  Assignment asm ln 25644, prod ln 674.0, live ln 677, enc 0
  Concrete pointer resolves to skip_prefix.prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.prefix.deref)
  Replaced concrete pointer with hash (w64 0xDD0EB4614F5DC424)
  i8* %prefix
  (w64 0xDD0EB4614F5DC424)
Collected value for `out`
  Assignment asm ln 25646, prod ln 675.0, live ln 677, enc 0
  Concrete pointer resolves to skip_prefix.out.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x749E34C835454676)
  i8** %out
  (w64 0x749E34C835454676)
Collected value for `prefix`
  Assignment asm ln 25651, prod ln 678.9, live ln 679, enc 1
  Concrete pointer resolves to skip_prefix.prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.prefix.deref)
  Replaced concrete pointer with hash (w64 0xDD0EB4614F5DC424)
  %0 = load i8*, i8** %prefix.addr, l678 c9
  (w64 0xDD0EB4614F5DC424)
Collected value for `str`
  Assignment asm ln 25657, prod ln 679.11, live ln 680, enc 1
  Concrete pointer resolves to skip_prefix.str.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.str.deref)
  Replaced concrete pointer with hash (w64 0x5DBAEE36D03296F3)
  %2 = load i8*, i8** %str.addr, l679 c11
  (w64 0x5DBAEE36D03296F3)
Collected value for `str`
  Assignment asm ln 25664, prod ln 682.15, live ln 683, enc 2
  Concrete pointer resolves to skip_prefix.str.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.str.deref)
  Replaced concrete pointer with hash (w64 0x5DBAEE36D03296F3)
  %4 = load i8*, i8** %str.addr, l682 c15
  (w64 0x5DBAEE36D03296F3)
Collected value for `out`
  Assignment asm ln 25658, prod ln 679.5, live ln 680, enc 1
  Concrete pointer resolves to skip_prefix.out.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x749E34C835454676)
  %3 = load i8**, i8*** %out.addr, l679 c5
  (w64 0x749E34C835454676)
Collected value for `str`
  Assignment asm ln 25666, prod ln 682.15, live ln 683, enc 3
  Concrete pointer resolves to skip_prefix.str.deref, offset (w64 0x1)
  Created deref expr (ReadLSB w64 (w32 0x1) skip_prefix.str.deref)
  Replaced concrete pointer with hash (w64 0x414BF67886FA203)
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1, l682 c15
  (w64 0x414BF67886FA203)
Collected value for `prefix`
  Assignment asm ln 25669, prod ln 682.28, live ln 683, enc 2
  Concrete pointer resolves to skip_prefix.prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.prefix.deref)
  Replaced concrete pointer with hash (w64 0xDD0EB4614F5DC424)
  %6 = load i8*, i8** %prefix.addr, l682 c28
  (w64 0xDD0EB4614F5DC424)
Collected value for `prefix`
  Assignment asm ln 25671, prod ln 682.28, live ln 683, enc 3
  Concrete pointer resolves to skip_prefix.prefix.deref, offset (w64 0x1)
  Created deref expr (ReadLSB w64 (w32 0x1) skip_prefix.prefix.deref)
  Replaced concrete pointer with hash (w64 0xD547FB517EBA830D)
  %incdec.ptr1 = getelementptr inbounds i8, i8* %6, i32 1, l682 c28
  (w64 0xD547FB517EBA830D)
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m
🔔 Unable to execute all before program states

#### After values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `str`
  Assignment asm ln 24151, prod ln 674.0, live ln 677, enc 0
  Concrete pointer resolves to skip_prefix.str.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.str.deref)
  Replaced concrete pointer with hash (w64 0x5DBAEE36D03296F3)
  i8* %str
  (w64 0x5DBAEE36D03296F3)
Collected value for `prefix`
  Assignment asm ln 24152, prod ln 674.0, live ln 677, enc 0
  Concrete pointer resolves to skip_prefix.prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.prefix.deref)
  Replaced concrete pointer with hash (w64 0xDD0EB4614F5DC424)
  i8* %prefix
  (w64 0xDD0EB4614F5DC424)
Collected value for `out`
  Assignment asm ln 24153, prod ln 675.0, live ln 677, enc 0
  Concrete pointer resolves to skip_prefix.out.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x749E34C835454676)
  i8** %out
  (w64 0x749E34C835454676)
Collected value for `prefix`
  Assignment asm ln 24159, prod ln 682.28, live ln 683, enc 1
  Concrete pointer resolves to skip_prefix.prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.prefix.deref)
  Replaced concrete pointer with hash (w64 0xDD0EB4614F5DC424)
  %prefix.addr.0 = phi i8* [ %prefix, %entry ], [ %incdec.ptr1, %do.cond ]
  Block: 0
  (w64 0xDD0EB4614F5DC424)
Collected value for `str`
  Assignment asm ln 24160, prod ln 682.15, live ln 683, enc 1
  Concrete pointer resolves to skip_prefix.str.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.str.deref)
  Replaced concrete pointer with hash (w64 0x5DBAEE36D03296F3)
  %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %do.cond ]
  Block: 0
  (w64 0x5DBAEE36D03296F3)
Collected value for `str`
  Assignment asm ln 24171, prod ln 682.15, live ln 683, enc 2
  Concrete pointer resolves to skip_prefix.str.deref, offset (w64 0x1)
  Created deref expr (ReadLSB w64 (w32 0x1) skip_prefix.str.deref)
  Replaced concrete pointer with hash (w64 0x414BF67886FA203)
  %incdec.ptr = getelementptr inbounds i8, i8* %str.addr.0, i64 1, l682 c15
  (w64 0x414BF67886FA203)
Collected value for `prefix`
  Assignment asm ln 24174, prod ln 682.28, live ln 683, enc 2
  Concrete pointer resolves to skip_prefix.prefix.deref, offset (w64 0x1)
  Created deref expr (ReadLSB w64 (w32 0x1) skip_prefix.prefix.deref)
  Replaced concrete pointer with hash (w64 0xD547FB517EBA830D)
  %incdec.ptr1 = getelementptr inbounds i8, i8* %prefix.addr.0, i64 1, l682 c28
  (w64 0xD547FB517EBA830D)
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m
🔔 Unable to execute all after program states

### Assignments

#### Collation

Filtering redundant before assignments: `str` (decl src ln 674)

Checking equivalence of `str` (decl src ln 674) from
  assn asm ln 25657, prod ln 679.11, live ln 680, enc 1
  %2 = load i8*, i8** %str.addr, l679 c11
  (w64 0x5DBAEE36D03296F3)
and
  assn asm ln 25642, prod ln 674.0, live ln 677, enc 0
  i8* %str
  (w64 0x5DBAEE36D03296F3)
🔔 Removing: asm ln 25657, prod ln 679.11, live ln 680, enc 1

Checking equivalence of `str` (decl src ln 674) from
  assn asm ln 25664, prod ln 682.15, live ln 683, enc 2
  %4 = load i8*, i8** %str.addr, l682 c15
  (w64 0x5DBAEE36D03296F3)
and
  assn asm ln 25642, prod ln 674.0, live ln 677, enc 0
  i8* %str
  (w64 0x5DBAEE36D03296F3)
🔔 Removing: asm ln 25664, prod ln 682.15, live ln 683, enc 2

Checking equivalence of `str` (decl src ln 674) from
  assn asm ln 25666, prod ln 682.15, live ln 683, enc 3
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1, l682 c15
  (w64 0x414BF67886FA203)
and
  assn asm ln 25642, prod ln 674.0, live ln 677, enc 0
  i8* %str
  (w64 0x5DBAEE36D03296F3)

Filtering redundant before assignments: `prefix` (decl src ln 674)

Checking equivalence of `prefix` (decl src ln 674) from
  assn asm ln 25651, prod ln 678.9, live ln 679, enc 1
  %0 = load i8*, i8** %prefix.addr, l678 c9
  (w64 0xDD0EB4614F5DC424)
and
  assn asm ln 25644, prod ln 674.0, live ln 677, enc 0
  i8* %prefix
  (w64 0xDD0EB4614F5DC424)
🔔 Removing: asm ln 25651, prod ln 678.9, live ln 679, enc 1

Checking equivalence of `prefix` (decl src ln 674) from
  assn asm ln 25669, prod ln 682.28, live ln 683, enc 2
  %6 = load i8*, i8** %prefix.addr, l682 c28
  (w64 0xDD0EB4614F5DC424)
and
  assn asm ln 25644, prod ln 674.0, live ln 677, enc 0
  i8* %prefix
  (w64 0xDD0EB4614F5DC424)
🔔 Removing: asm ln 25669, prod ln 682.28, live ln 683, enc 2

Checking equivalence of `prefix` (decl src ln 674) from
  assn asm ln 25671, prod ln 682.28, live ln 683, enc 3
  %incdec.ptr1 = getelementptr inbounds i8, i8* %6, i32 1, l682 c28
  (w64 0xD547FB517EBA830D)
and
  assn asm ln 25644, prod ln 674.0, live ln 677, enc 0
  i8* %prefix
  (w64 0xDD0EB4614F5DC424)

Filtering redundant before assignments: `out` (decl src ln 675)

Checking equivalence of `out` (decl src ln 675) from
  assn asm ln 25658, prod ln 679.5, live ln 680, enc 1
  %3 = load i8**, i8*** %out.addr, l679 c5
  (w64 0x749E34C835454676)
and
  assn asm ln 25646, prod ln 675.0, live ln 677, enc 0
  i8** %out
  (w64 0x749E34C835454676)
🔔 Removing: asm ln 25658, prod ln 679.5, live ln 680, enc 1

Filtering redundant after assignments: `str` (decl src ln 674)

Checking equivalence of `str` (decl src ln 674) from
  assn asm ln 24160, prod ln 682.15, live ln 683, enc 1
  %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %do.cond ]
  (w64 0x5DBAEE36D03296F3)
and
  assn asm ln 24151, prod ln 674.0, live ln 677, enc 0
  i8* %str
  (w64 0x5DBAEE36D03296F3)
🔔 Removing: asm ln 24160, prod ln 682.15, live ln 683, enc 1

Checking equivalence of `str` (decl src ln 674) from
  assn asm ln 24171, prod ln 682.15, live ln 683, enc 2
  %incdec.ptr = getelementptr inbounds i8, i8* %str.addr.0, i64 1, l682 c15
  (w64 0x414BF67886FA203)
and
  assn asm ln 24151, prod ln 674.0, live ln 677, enc 0
  i8* %str
  (w64 0x5DBAEE36D03296F3)

Filtering redundant after assignments: `prefix` (decl src ln 674)

Checking equivalence of `prefix` (decl src ln 674) from
  assn asm ln 24159, prod ln 682.28, live ln 683, enc 1
  %prefix.addr.0 = phi i8* [ %prefix, %entry ], [ %incdec.ptr1, %do.cond ]
  (w64 0xDD0EB4614F5DC424)
and
  assn asm ln 24152, prod ln 674.0, live ln 677, enc 0
  i8* %prefix
  (w64 0xDD0EB4614F5DC424)
🔔 Removing: asm ln 24159, prod ln 682.28, live ln 683, enc 1

Checking equivalence of `prefix` (decl src ln 674) from
  assn asm ln 24174, prod ln 682.28, live ln 683, enc 2
  %incdec.ptr1 = getelementptr inbounds i8, i8* %prefix.addr.0, i64 1, l682 c28
  (w64 0xD547FB517EBA830D)
and
  assn asm ln 24152, prod ln 674.0, live ln 677, enc 0
  i8* %prefix
  (w64 0xDD0EB4614F5DC424)

Collating encountered before assignments: `str` (decl src ln 674)
  asm ln 25642, prod ln 674.0, live ln 677, enc 0
  asm ln 25666, prod ln 682.15, live ln 683, enc 1
Collating encountered before assignments: `prefix` (decl src ln 674)
  asm ln 25644, prod ln 674.0, live ln 677, enc 0
  asm ln 25671, prod ln 682.28, live ln 683, enc 1
Collating encountered before assignments: `out` (decl src ln 675)
  asm ln 25646, prod ln 675.0, live ln 677, enc 0

Collating encountered after assignments: `str` (decl src ln 674)
  asm ln 24151, prod ln 674.0, live ln 677, enc 0
  asm ln 24171, prod ln 682.15, live ln 683, enc 1
Collating encountered after assignments: `prefix` (decl src ln 674)
  asm ln 24152, prod ln 674.0, live ln 677, enc 0
  asm ln 24174, prod ln 682.28, live ln 683, enc 1
Collating encountered after assignments: `out` (decl src ln 675)
  asm ln 24153, prod ln 675.0, live ln 677, enc 0

#### Check after using before as reference

Checking equivalence of `out` (decl src ln 675) from
  assn asm ln 24153, prod ln 675.0, live ln 677, enc 0
  i8** %out
  (w64 0x749E34C835454676)
and
  assn asm ln 25646, prod ln 675.0, live ln 677, enc 0
  i8** %out
  (w64 0x749E34C835454676)
✅ Before `out` (decl src ln 675) assn asm ln 25646, prod ln 675.0, live ln 677, enc 0 symbolic value matches after assn asm ln 24153, prod ln 675.0, live ln 677, enc 0

✅ After `out` assns checked using before as reference
Assignments:         out
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

Checking equivalence of `prefix` (decl src ln 674) from
  assn asm ln 24152, prod ln 674.0, live ln 677, enc 0
  i8* %prefix
  (w64 0xDD0EB4614F5DC424)
and
  assn asm ln 25644, prod ln 674.0, live ln 677, enc 0
  i8* %prefix
  (w64 0xDD0EB4614F5DC424)
✅ Before `prefix` (decl src ln 674) assn asm ln 25644, prod ln 674.0, live ln 677, enc 0 symbolic value matches after assn asm ln 24152, prod ln 674.0, live ln 677, enc 0

Checking equivalence of `prefix` (decl src ln 674) from
  assn asm ln 24174, prod ln 682.28, live ln 683, enc 1
  %incdec.ptr1 = getelementptr inbounds i8, i8* %prefix.addr.0, i64 1, l682 c28
  (w64 0xD547FB517EBA830D)
and
  assn asm ln 25671, prod ln 682.28, live ln 683, enc 1
  %incdec.ptr1 = getelementptr inbounds i8, i8* %6, i32 1, l682 c28
  (w64 0xD547FB517EBA830D)
✅ Before `prefix` (decl src ln 674) assn asm ln 25671, prod ln 682.28, live ln 683, enc 1 symbolic value matches after assn asm ln 24174, prod ln 682.28, live ln 683, enc 1

✅ After `prefix` assns checked using before as reference
Assignments:         prefix
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   2
  Matching Value:    2
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

Checking equivalence of `str` (decl src ln 674) from
  assn asm ln 24151, prod ln 674.0, live ln 677, enc 0
  i8* %str
  (w64 0x5DBAEE36D03296F3)
and
  assn asm ln 25642, prod ln 674.0, live ln 677, enc 0
  i8* %str
  (w64 0x5DBAEE36D03296F3)
✅ Before `str` (decl src ln 674) assn asm ln 25642, prod ln 674.0, live ln 677, enc 0 symbolic value matches after assn asm ln 24151, prod ln 674.0, live ln 677, enc 0

Checking equivalence of `str` (decl src ln 674) from
  assn asm ln 24171, prod ln 682.15, live ln 683, enc 1
  %incdec.ptr = getelementptr inbounds i8, i8* %str.addr.0, i64 1, l682 c15
  (w64 0x414BF67886FA203)
and
  assn asm ln 25666, prod ln 682.15, live ln 683, enc 1
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1, l682 c15
  (w64 0x414BF67886FA203)
✅ Before `str` (decl src ln 674) assn asm ln 25666, prod ln 682.15, live ln 683, enc 1 symbolic value matches after assn asm ln 24171, prod ln 682.15, live ln 683, enc 1

✅ After `str` assns checked using before as reference
Assignments:         str
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   2
  Matching Value:    2
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

## Function `cmd_main`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `argc` (decl src ln 864), asm ln 25760
  %15 = load i32, i32* %argc.addr, l901 c7, asm ln 25760
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25760, prod ln 901.7, live ln 902, enc None
Store to declared address of `argc` (decl src ln 864), asm ln 25758
  %dec = add nsw i32 %14, -1, l898 c6, asm ln 25757
  Added assignment asm ln 25758, prod ln 898.6, live ln 899, enc None
Load from declared address of `argc` (decl src ln 864), asm ln 25756
  %14 = load i32, i32* %argc.addr, l898 c6, asm ln 25756
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25756, prod ln 898.6, live ln 899, enc None
Load from declared address of `argc` (decl src ln 864), asm ln 25744
  %10 = load i32, i32* %argc.addr, l892 c18, asm ln 25744
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25744, prod ln 892.18, live ln 893, enc None
Store to declared address of `argc` (decl src ln 864), asm ln 25697
  arg 0
  Added assignment asm ln 25697, prod ln 864.0, live ln 867, enc None
Load from declared address of `argv` (decl src ln 864), asm ln 25861
  %36 = load i8**, i8*** %argv.addr, l936 c10, asm ln 25861
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25861, prod ln 936.10, live ln 937, enc None
Load from declared address of `argv` (decl src ln 864), asm ln 25845
  %32 = load i8**, i8*** %argv.addr, l932 c10, asm ln 25845
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25845, prod ln 932.10, live ln 933, enc None
Load from declared address of `argv` (decl src ln 864), asm ln 25820
  %26 = load i8**, i8*** %argv.addr, l915 c8, asm ln 25820
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25820, prod ln 915.8, live ln 916, enc None
Load from declared address of `argv` (decl src ln 864), asm ln 25814
  %25 = load i8**, i8*** %argv.addr, l913 c3, asm ln 25814
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25814, prod ln 913.3, live ln 914, enc None
Load from declared address of `argv` (decl src ln 864), asm ln 25806
  %23 = load i8**, i8*** %argv.addr, l912 c55, asm ln 25806
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25806, prod ln 912.55, live ln 913, enc None
Load from declared address of `argv` (decl src ln 864), asm ln 25798
  %21 = load i8**, i8*** %argv.addr, l912 c29, asm ln 25798
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25798, prod ln 912.29, live ln 913, enc None
Load from declared address of `argv` (decl src ln 864), asm ln 25792
  %20 = load i8**, i8*** %argv.addr, l911 c3, asm ln 25792
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25792, prod ln 911.3, live ln 912, enc None
Load from declared address of `argv` (decl src ln 864), asm ln 25784
  %18 = load i8**, i8*** %argv.addr, l910 c53, asm ln 25784
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25784, prod ln 910.53, live ln 911, enc None
Load from declared address of `argv` (decl src ln 864), asm ln 25776
  %16 = load i8**, i8*** %argv.addr, l910 c27, asm ln 25776
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25776, prod ln 910.27, live ln 911, enc None
Store to declared address of `argv` (decl src ln 864), asm ln 25755
  %incdec.ptr = getelementptr inbounds i8*, i8** %13, i32 1, l897 c6, asm ln 25754
  Added assignment asm ln 25755, prod ln 897.6, live ln 898, enc None
Load from declared address of `argv` (decl src ln 864), asm ln 25753
  %13 = load i8**, i8*** %argv.addr, l897 c6, asm ln 25753
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25753, prod ln 897.6, live ln 898, enc None
Load from declared address of `argv` (decl src ln 864), asm ln 25745
  %11 = load i8**, i8*** %argv.addr, l892 c24, asm ln 25745
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25745, prod ln 892.24, live ln 893, enc None
Load from declared address of `argv` (decl src ln 864), asm ln 25741
  %9 = load i8**, i8*** %argv.addr, l891 c3, asm ln 25741
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25741, prod ln 891.3, live ln 892, enc None
Load from declared address of `argv` (decl src ln 864), asm ln 25732
  %6 = load i8**, i8*** %argv.addr, l878 c28, asm ln 25732
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25732, prod ln 878.28, live ln 879, enc None
Load from declared address of `argv` (decl src ln 864), asm ln 25704
  %0 = load i8**, i8*** %argv.addr, l869 c8, asm ln 25704
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25704, prod ln 869.8, live ln 870, enc None
Store to declared address of `argv` (decl src ln 864), asm ln 25699
  arg 1
  Added assignment asm ln 25699, prod ln 864.0, live ln 867, enc None
Load from declared address of `cmd` (decl src ln 866), asm ln 25871
  %38 = load i8*, i8** %cmd, l943 c3, asm ln 25871
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25871, prod ln 943.3, live ln 944, enc None
Store to declared address of `cmd` (decl src ln 866), asm ln 25864
  %call53 = call i8* @help_unknown_cmd(i8* %35), l936 c20, asm ln 25860
  Added assignment asm ln 25864, prod ln 936.20, live ln 937, enc None
Load from declared address of `cmd` (decl src ln 866), asm ln 25859
  %35 = load i8*, i8** %cmd, l936 c37, asm ln 25859
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25859, prod ln 936.37, live ln 937, enc None
Load from declared address of `cmd` (decl src ln 866), asm ln 25844
  %31 = load i8*, i8** %cmd, l932 c5, asm ln 25844
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25844, prod ln 932.5, live ln 933, enc None
Store to declared address of `cmd` (decl src ln 866), asm ln 25823
  %27 = load i8*, i8** %arrayidx39, l915 c8, asm ln 25822
  Added assignment asm ln 25823, prod ln 915.8, live ln 923, enc None
Load from declared address of `cmd` (decl src ln 866), asm ln 25748
  %12 = load i8*, i8** %cmd, l893 c43, asm ln 25748
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25748, prod ln 893.43, live ln 894, enc None
Load from declared address of `cmd` (decl src ln 866), asm ln 25740
  %8 = load i8*, i8** %cmd, l891 c13, asm ln 25740
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25740, prod ln 891.13, live ln 892, enc None
Load from declared address of `cmd` (decl src ln 866), asm ln 25734
  %7 = load i8*, i8** %cmd, l890 c18, asm ln 25734
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25734, prod ln 890.18, live ln 891, enc None
Store to declared address of `cmd` (decl src ln 866), asm ln 25728
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1, l875 c16, asm ln 25727
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25728, prod ln 875.16, live ln 876, enc None
Load from declared address of `cmd` (decl src ln 866), asm ln 25718
  %3 = load i8*, i8** %cmd, l873 c41, asm ln 25718
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25718, prod ln 873.41, live ln 874, enc None
Store to declared address of `cmd` (decl src ln 866), asm ln 25713
  const i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25713, prod ln 871.7, live ln 872, enc None
Load from declared address of `cmd` (decl src ln 866), asm ln 25708
  %2 = load i8*, i8** %cmd, l870 c7, asm ln 25708
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25708, prod ln 870.7, live ln 871, enc None
Store to declared address of `cmd` (decl src ln 866), asm ln 25707
  %1 = load i8*, i8** %arrayidx, l869 c8, asm ln 25706
  Added assignment asm ln 25707, prod ln 869.8, live ln 870, enc None
Store to declared address of `done_help` (decl src ln 867), asm ln 25865
  const i32 1
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25865, prod ln 937.14, live ln 938, enc None
Load from declared address of `done_help` (decl src ln 867), asm ln 25854
  %34 = load i32, i32* %done_help, l935 c8, asm ln 25854
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25854, prod ln 935.8, live ln 936, enc None
Store to declared address of `done_help` (decl src ln 867), asm ln 25703
  const i32 0
  Added assignment asm ln 25703, prod ln 867.6, live ln 869, enc None
Load from declared address of `slash` (decl src ln 873), asm ln 25726
  %5 = load i8*, i8** %slash, l875 c10, asm ln 25726
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25726, prod ln 875.10, live ln 876, enc None
Load from declared address of `slash` (decl src ln 873), asm ln 25721
  %4 = load i8*, i8** %slash, l874 c7, asm ln 25721
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25721, prod ln 874.7, live ln 875, enc None
Store to declared address of `slash` (decl src ln 873), asm ln 25720
  %call = call i8* @git_find_last_dir_sep(i8* %3), l873 c23, asm ln 25719
  Added assignment asm ln 25720, prod ln 873.23, live ln 874, enc None
Load from declared address of `was_alias` (decl src ln 926), asm ln 25837
  %29 = load i32, i32* %was_alias, l929 c7, asm ln 25837
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25837, prod ln 929.7, live ln 930, enc None
Store to declared address of `was_alias` (decl src ln 926), asm ln 25830
  %call40 = call i32 @run_argv(i32* %argc.addr, i8*** %argv.addr), l926 c19, asm ln 25829
  Added assignment asm ln 25830, prod ln 926.19, live ln 927, enc None

#### After variables

Value produced for `argc` (decl src ln 864), asm ln 24195
  arg 0
  Added assignment asm ln 24195, prod ln 864.0, live ln 866, enc None
Value produced for `argv` (decl src ln 864), asm ln 24197
  arg 1
  Added assignment asm ln 24197, prod ln 864.0, live ln 866, enc None
Value produced for `done_help` (decl src ln 867), asm ln 24200
  const i32 0
  Added assignment asm ln 24200, prod ln 867.0, live ln 869, enc None
Value produced for `argv` (decl src ln 864), asm ln 24201
  arg 1
  Added assignment asm ln 24201, prod ln 864.0, live ln 869, enc None
Value produced for `cmd` (decl src ln 866), asm ln 24203
  %1 = load i8*, i8** %argv, !tbaa !97220, l869 c8, asm ln 24202
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24203, prod ln 869.8, live ln 870, enc None
Value produced for `cmd` (decl src ln 866), asm ln 24209
  const i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 24209, prod ln 866.0, live ln 871, enc None
Value produced for `slash` (decl src ln 873), asm ln 24215
  %call = call fastcc i8* @git_find_last_dir_sep(i8* nonnull %1), l873 c23, asm ln 24214
  Added assignment asm ln 24215, prod ln 873.23, live ln 874, enc None
Value produced for `cmd` (decl src ln 866), asm ln 24221
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1, l875 c16, asm ln 24220
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24221, prod ln 875.16, live ln 876, enc None
Value produced for `argv` (decl src ln 864), asm ln 24226
  arg 1
  Added assignment asm ln 24226, prod ln 864.0, live ln 878, enc None
Store to deref'd address of `cmd` (decl src ln 866), asm ln 24369
  %call5368 = phi i8* [ %call53, %if.then52 ], [ %call5369, %while.cond ], [ %call5369, %if.end50 ], asm ln 24362
  Added assignment asm ln 24369, prod ln 936.20, live ln 942, enc None
Store to deref'd address of `cmd` (decl src ln 866), asm ln 24335
  %call5369 = phi i8* [ %13, %if.end38 ], [ %call5368, %cleanup ], asm ln 24318
  Added assignment asm ln 24335, prod ln 915.8, live ln 930, enc None
Store to deref'd address of `cmd` (decl src ln 866), asm ln 24313
  %13 = load i8*, i8** %12, !tbaa !97220, l915 c8, asm ln 24311
  Added assignment asm ln 24313, prod ln 915.8, live ln 923, enc None
Load from deref'd address of `cmd` (decl src ln 866), asm ln 24235
  %3 = load i8*, i8** %cmd, !tbaa !97220, l891 c13, asm ln 24235
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24235, prod ln 891.13, live ln 892, enc None
Load from deref'd address of `cmd` (decl src ln 866), asm ln 24228
  %2 = load i8*, i8** %cmd, !tbaa !97220, l890 c18, asm ln 24228
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24228, prod ln 890.18, live ln 891, enc None
Store to deref'd address of `cmd` (decl src ln 866), asm ln 24222
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1, l875 c16, asm ln 24220
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24222, prod ln 875.16, live ln 876, enc None
Store to deref'd address of `cmd` (decl src ln 866), asm ln 24210
  const i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24210, prod ln 871.7, live ln 872, enc None
Store to deref'd address of `cmd` (decl src ln 866), asm ln 24204
  %1 = load i8*, i8** %argv, !tbaa !97220, l869 c8, asm ln 24202
  Added assignment asm ln 24204, prod ln 869.8, live ln 870, enc None
Value produced for `cmd` (decl src ln 866), asm ln 24236
  %3 = load i8*, i8** %cmd, !tbaa !97220, l891 c13, asm ln 24235
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24236, prod ln 891.13, live ln 892, enc None
Value produced for `argv` (decl src ln 864), asm ln 24238
  %4 = load i8**, i8*** %argv.addr, !tbaa !97220, l891 c3, asm ln 24237
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24238, prod ln 891.3, live ln 892, enc None
Value produced for `argc` (decl src ln 864), asm ln 24241
  %5 = load i32, i32* %argc.addr, !tbaa !97216, l892 c18, asm ln 24240
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24241, prod ln 892.18, live ln 893, enc None
Value produced for `argv` (decl src ln 864), asm ln 24243
  %6 = load i8**, i8*** %argv.addr, !tbaa !97220, l892 c24, asm ln 24242
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24243, prod ln 892.24, live ln 893, enc None
Value produced for `cmd` (decl src ln 866), asm ln 24246
  %3 = load i8*, i8** %cmd, !tbaa !97220, l891 c13, asm ln 24235
  Added assignment asm ln 24246, prod ln 891.13, live ln 893, enc None
Value produced for `argv` (decl src ln 864), asm ln 24252
  %7 = load i8**, i8*** %argv.addr, !tbaa !97220, l897 c6, asm ln 24251
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24252, prod ln 897.6, live ln 898, enc None
Value produced for `argv` (decl src ln 864), asm ln 24254
  %incdec.ptr = getelementptr inbounds i8*, i8** %7, i64 1, l897 c6, asm ln 24253
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24254, prod ln 897.6, live ln 898, enc None
Value produced for `argc` (decl src ln 864), asm ln 24257
  %8 = load i32, i32* %argc.addr, !tbaa !97216, l898 c6, asm ln 24256
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24257, prod ln 898.6, live ln 899, enc None
Value produced for `argc` (decl src ln 864), asm ln 24259
  %dec = add nsw i32 %8, -1, l898 c6, asm ln 24258
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24259, prod ln 898.6, live ln 899, enc None
Load from deref'd address of `argc` (decl src ln 864), asm ln 24264
  %9 = load i32, i32* %argc.addr, !tbaa !97216, l901 c7, asm ln 24264
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24264, prod ln 901.7, live ln 902, enc None
Store to deref'd address of `argc` (decl src ln 864), asm ln 24260
  %dec = add nsw i32 %8, -1, l898 c6, asm ln 24258
  Added assignment asm ln 24260, prod ln 898.6, live ln 899, enc None
Load from deref'd address of `argc` (decl src ln 864), asm ln 24256
  %8 = load i32, i32* %argc.addr, !tbaa !97216, l898 c6, asm ln 24256
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24256, prod ln 898.6, live ln 899, enc None
Load from deref'd address of `argc` (decl src ln 864), asm ln 24240
  %5 = load i32, i32* %argc.addr, !tbaa !97216, l892 c18, asm ln 24240
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24240, prod ln 892.18, live ln 893, enc None
Store to deref'd address of `argc` (decl src ln 864), asm ln 24196
  arg 0
  Added assignment asm ln 24196, prod ln 864.0, live ln 866, enc None
Load from deref'd address of `argv` (decl src ln 864), asm ln 24354
  %18 = load i8**, i8*** %argv.addr, !tbaa !97220, l936 c10, asm ln 24354
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24354, prod ln 936.10, live ln 937, enc None
Load from deref'd address of `argv` (decl src ln 864), asm ln 24339
  %16 = load i8**, i8*** %argv.addr, !tbaa !97220, l932 c10, asm ln 24339
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24339, prod ln 932.10, live ln 933, enc None
Load from deref'd address of `argv` (decl src ln 864), asm ln 24309
  %12 = load i8**, i8*** %argv.addr, !tbaa !97220, l915 c8, asm ln 24309
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24309, prod ln 915.8, live ln 916, enc None
Load from deref'd address of `argv` (decl src ln 864), asm ln 24281
  %10 = load i8**, i8*** %argv.addr, !tbaa !97220, l910 c27, asm ln 24281
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24281, prod ln 910.27, live ln 911, enc None
Store to deref'd address of `argv` (decl src ln 864), asm ln 24255
  %incdec.ptr = getelementptr inbounds i8*, i8** %7, i64 1, l897 c6, asm ln 24253
  Added assignment asm ln 24255, prod ln 897.6, live ln 898, enc None
Load from deref'd address of `argv` (decl src ln 864), asm ln 24251
  %7 = load i8**, i8*** %argv.addr, !tbaa !97220, l897 c6, asm ln 24251
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24251, prod ln 897.6, live ln 898, enc None
Load from deref'd address of `argv` (decl src ln 864), asm ln 24242
  %6 = load i8**, i8*** %argv.addr, !tbaa !97220, l892 c24, asm ln 24242
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24242, prod ln 892.24, live ln 893, enc None
Load from deref'd address of `argv` (decl src ln 864), asm ln 24237
  %4 = load i8**, i8*** %argv.addr, !tbaa !97220, l891 c3, asm ln 24237
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24237, prod ln 891.3, live ln 892, enc None
Store to deref'd address of `argv` (decl src ln 864), asm ln 24198
  arg 1
  Added assignment asm ln 24198, prod ln 864.0, live ln 866, enc None
Value produced for `argc` (decl src ln 864), asm ln 24265
  %9 = load i32, i32* %argc.addr, !tbaa !97216, l901 c7, asm ln 24264
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24265, prod ln 901.7, live ln 902, enc None
Value produced for `argv` (decl src ln 864), asm ln 24282
  %10 = load i8**, i8*** %argv.addr, !tbaa !97220, l910 c27, asm ln 24281
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24282, prod ln 910.27, live ln 911, enc None
Value produced for `argv` (decl src ln 864), asm ln 24310
  %12 = load i8**, i8*** %argv.addr, !tbaa !97220, l915 c8, asm ln 24309
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24310, prod ln 915.8, live ln 916, enc None
Value produced for `cmd` (decl src ln 866), asm ln 24312
  %13 = load i8*, i8** %12, !tbaa !97220, l915 c8, asm ln 24311
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24312, prod ln 915.8, live ln 916, enc None
Load from deref'd address of `argc` (decl src ln 864), asm ln 24264
  %9 = load i32, i32* %argc.addr, !tbaa !97216, l901 c7, asm ln 24264
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24264, prod ln 901.7, live ln 902, enc None
Store to deref'd address of `argc` (decl src ln 864), asm ln 24260
  %dec = add nsw i32 %8, -1, l898 c6, asm ln 24258
  Added assignment asm ln 24260, prod ln 898.6, live ln 899, enc None
Load from deref'd address of `argc` (decl src ln 864), asm ln 24256
  %8 = load i32, i32* %argc.addr, !tbaa !97216, l898 c6, asm ln 24256
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24256, prod ln 898.6, live ln 899, enc None
Load from deref'd address of `argc` (decl src ln 864), asm ln 24240
  %5 = load i32, i32* %argc.addr, !tbaa !97216, l892 c18, asm ln 24240
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24240, prod ln 892.18, live ln 893, enc None
Store to deref'd address of `argc` (decl src ln 864), asm ln 24196
  arg 0
  Added assignment asm ln 24196, prod ln 864.0, live ln 866, enc None
Load from deref'd address of `argv` (decl src ln 864), asm ln 24354
  %18 = load i8**, i8*** %argv.addr, !tbaa !97220, l936 c10, asm ln 24354
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24354, prod ln 936.10, live ln 937, enc None
Load from deref'd address of `argv` (decl src ln 864), asm ln 24339
  %16 = load i8**, i8*** %argv.addr, !tbaa !97220, l932 c10, asm ln 24339
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24339, prod ln 932.10, live ln 933, enc None
Load from deref'd address of `argv` (decl src ln 864), asm ln 24309
  %12 = load i8**, i8*** %argv.addr, !tbaa !97220, l915 c8, asm ln 24309
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24309, prod ln 915.8, live ln 916, enc None
Load from deref'd address of `argv` (decl src ln 864), asm ln 24281
  %10 = load i8**, i8*** %argv.addr, !tbaa !97220, l910 c27, asm ln 24281
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24281, prod ln 910.27, live ln 911, enc None
Store to deref'd address of `argv` (decl src ln 864), asm ln 24255
  %incdec.ptr = getelementptr inbounds i8*, i8** %7, i64 1, l897 c6, asm ln 24253
  Added assignment asm ln 24255, prod ln 897.6, live ln 898, enc None
Load from deref'd address of `argv` (decl src ln 864), asm ln 24251
  %7 = load i8**, i8*** %argv.addr, !tbaa !97220, l897 c6, asm ln 24251
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24251, prod ln 897.6, live ln 898, enc None
Load from deref'd address of `argv` (decl src ln 864), asm ln 24242
  %6 = load i8**, i8*** %argv.addr, !tbaa !97220, l892 c24, asm ln 24242
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24242, prod ln 892.24, live ln 893, enc None
Load from deref'd address of `argv` (decl src ln 864), asm ln 24237
  %4 = load i8**, i8*** %argv.addr, !tbaa !97220, l891 c3, asm ln 24237
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24237, prod ln 891.3, live ln 892, enc None
Store to deref'd address of `argv` (decl src ln 864), asm ln 24198
  arg 1
  Added assignment asm ln 24198, prod ln 864.0, live ln 866, enc None
Value produced for `was_alias` (decl src ln 926), asm ln 24324
  %call40 = call fastcc i32 @run_argv(i32* nonnull %argc.addr, i8*** nonnull %argv.addr), l926 c19, asm ln 24323
  Added assignment asm ln 24324, prod ln 926.19, live ln 927, enc None
Value produced for `argv` (decl src ln 864), asm ln 24340
  %16 = load i8**, i8*** %argv.addr, !tbaa !97220, l932 c10, asm ln 24339
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24340, prod ln 932.10, live ln 933, enc None
Value produced for `argv` (decl src ln 864), asm ln 24355
  %18 = load i8**, i8*** %argv.addr, !tbaa !97220, l936 c10, asm ln 24354
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24355, prod ln 936.10, live ln 937, enc None
Value produced for `cmd` (decl src ln 866), asm ln 24357
  %call53 = call i8* @help_unknown_cmd(i8* %call5369) #46, l936 c20, asm ln 24353
  Added assignment asm ln 24357, prod ln 936.20, live ln 940, enc None
Value produced for `done_help` (decl src ln 867), asm ln 24358
  const i32 1
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 24358, prod ln 867.0, live ln 940, enc None
Value produced for `done_help` (decl src ln 867), asm ln 24320
  %done_help.0 = phi i32 [ 0, %if.end38 ], [ %done_help.1, %cleanup ], l867 c6, asm ln 24319
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 24320, prod ln 867.0, live ln 926, enc None
Value produced for `cmd` (decl src ln 866), asm ln 24338
  %call5369 = phi i8* [ %13, %if.end38 ], [ %call5368, %cleanup ], asm ln 24318
  Added assignment asm ln 24338, prod ln 915.8, live ln 932, enc None
Value produced for `cmd` (decl src ln 866), asm ln 24352
  %call5369 = phi i8* [ %13, %if.end38 ], [ %call5368, %cleanup ], asm ln 24318
  Added assignment asm ln 24352, prod ln 915.8, live ln 936, enc None
Value produced for `done_help` (decl src ln 867), asm ln 24365
  %done_help.1 = phi i32 [ 1, %if.then52 ], [ %done_help.0, %while.cond ], [ 1, %if.end50 ], asm ln 24363
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 24365, prod ln 867.6, live ln 868, enc None
Value produced for `cmd` (decl src ln 866), asm ln 24372
  %call5368 = phi i8* [ %call53, %if.then52 ], [ %call5369, %while.cond ], [ %call5369, %if.end50 ], asm ln 24362
  Added assignment asm ln 24372, prod ln 936.20, live ln 943, enc None

#### Summary

✅ 6 before variables found, 6 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0m[0;35mKLEE: WARNING: Unable to load source file `git.c`
[0mCollected value for `argc`
  Assignment asm ln 25697, prod ln 864.0, live ln 867, enc 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
Collected value for `argv`
  Assignment asm ln 25699, prod ln 864.0, live ln 867, enc 0
  Concrete pointer resolves to cmd_main.argv.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x92BA4A64DEC532FD)
  i8** %argv
  (w64 0x92BA4A64DEC532FD)
Collected value for `done_help`
  Assignment asm ln 25703, prod ln 867.6, live ln 869, enc 0
  i32 0
  (w32 0x0)
Collected value for `argv`
  Assignment asm ln 25704, prod ln 869.8, live ln 870, enc 1
  Concrete pointer resolves to cmd_main.argv.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x92BA4A64DEC532FD)
  %0 = load i8**, i8*** %argv.addr, l869 c8
  (w64 0x92BA4A64DEC532FD)
Collected value for `cmd`
  Assignment asm ln 25707, prod ln 869.8, live ln 870, enc 0
  Concrete pointer resolves to cmd_main.argv.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) cmd_main.argv.deref.deref)
  Replaced concrete pointer with hash (w64 0xD1B2B1C57EF5C232)
  %1 = load i8*, i8** %arrayidx, l869 c8
  (w64 0xD1B2B1C57EF5C232)
Collected value for `cmd`
  Assignment asm ln 25708, prod ln 870.7, live ln 871, enc 1
  Concrete pointer resolves to cmd_main.argv.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) cmd_main.argv.deref.deref)
  Replaced concrete pointer with hash (w64 0xD1B2B1C57EF5C232)
  %2 = load i8*, i8** %cmd, l870 c7
  (w64 0xD1B2B1C57EF5C232)
Collected value for `cmd`
  Assignment asm ln 25718, prod ln 873.41, live ln 874, enc 2
  Concrete pointer resolves to cmd_main.argv.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) cmd_main.argv.deref.deref)
  Replaced concrete pointer with hash (w64 0xD1B2B1C57EF5C232)
  %3 = load i8*, i8** %cmd, l873 c41
  (w64 0xD1B2B1C57EF5C232)
Collected value for `slash`
  Assignment asm ln 25720, prod ln 873.23, live ln 874, enc 0
  Concrete pointer resolves to git_find_last_dir_sep.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) git_find_last_dir_sep.return.deref)
  Replaced concrete pointer with hash (w64 0xCBA2640A075FC758)
  %call = call i8* @git_find_last_dir_sep(i8* %3), l873 c23
  (w64 0xCBA2640A075FC758)
Collected value for `slash`
  Assignment asm ln 25721, prod ln 874.7, live ln 875, enc 1
  Concrete pointer resolves to git_find_last_dir_sep.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) git_find_last_dir_sep.return.deref)
  Replaced concrete pointer with hash (w64 0xCBA2640A075FC758)
  %4 = load i8*, i8** %slash, l874 c7
  (w64 0xCBA2640A075FC758)
Collected value for `slash`
  Assignment asm ln 25726, prod ln 875.10, live ln 876, enc 2
  Concrete pointer resolves to git_find_last_dir_sep.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) git_find_last_dir_sep.return.deref)
  Replaced concrete pointer with hash (w64 0xCBA2640A075FC758)
  %5 = load i8*, i8** %slash, l875 c10
  (w64 0xCBA2640A075FC758)
Collected value for `cmd`
  Assignment asm ln 25728, prod ln 875.16, live ln 876, enc 3
  Concrete pointer resolves to git_find_last_dir_sep.return.deref, offset (w64 0x1)
  Created deref expr (ReadLSB w64 (w32 0x1) git_find_last_dir_sep.return.deref)
  Replaced concrete pointer with hash (w64 0x3EFC1907150DE6ED)
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1, l875 c16
  (w64 0x3EFC1907150DE6ED)
Collected value for `argv`
  Assignment asm ln 25732, prod ln 878.28, live ln 879, enc 2
  Concrete pointer resolves to cmd_main.argv.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x92BA4A64DEC532FD)
  %6 = load i8**, i8*** %argv.addr, l878 c28
  (w64 0x92BA4A64DEC532FD)
Collected value for `cmd`
  Assignment asm ln 25734, prod ln 890.18, live ln 891, enc 4
  Concrete pointer resolves to git_find_last_dir_sep.return.deref, offset (w64 0x1)
  Created deref expr (ReadLSB w64 (w32 0x1) git_find_last_dir_sep.return.deref)
  Replaced concrete pointer with hash (w64 0x3EFC1907150DE6ED)
  %7 = load i8*, i8** %cmd, l890 c18
  (w64 0x3EFC1907150DE6ED)
Collected value for `argv`
  Assignment asm ln 25753, prod ln 897.6, live ln 898, enc 3
  Concrete pointer resolves to cmd_main.argv.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x92BA4A64DEC532FD)
  %13 = load i8**, i8*** %argv.addr, l897 c6
  (w64 0x92BA4A64DEC532FD)
Collected value for `cmd`
  Assignment asm ln 25740, prod ln 891.13, live ln 892, enc 5
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %8 = load i8*, i8** %cmd, l891 c13
  (w64 0x8467E337196AF796)
Collected value for `argv`
  Assignment asm ln 25755, prod ln 897.6, live ln 898, enc 4
  Concrete pointer resolves to cmd_main.argv.deref, offset (w64 0x8)
  Created deref expr (ReadLSB w64 (w32 0x8) cmd_main.argv.deref)
  Replaced concrete pointer with hash (w64 0x14B219BE57D389F1)
  %incdec.ptr = getelementptr inbounds i8*, i8** %13, i32 1, l897 c6
  (w64 0x14B219BE57D389F1)
Collected value for `argv`
  Assignment asm ln 25741, prod ln 891.3, live ln 892, enc 5
  Concrete pointer resolves to cmd_main.argv.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x92BA4A64DEC532FD)
  %9 = load i8**, i8*** %argv.addr, l891 c3
  (w64 0x92BA4A64DEC532FD)
Collected value for `argc`
  Assignment asm ln 25756, prod ln 898.6, live ln 899, enc 1
  %14 = load i32, i32* %argc.addr, l898 c6
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
Collected value for `argc`
  Assignment asm ln 25758, prod ln 898.6, live ln 899, enc 2
  %dec = add nsw i32 %14, -1, l898 c6
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) cmd_main.argc))
Collected value for `argc`
  Assignment asm ln 25744, prod ln 892.18, live ln 893, enc 3
  %10 = load i32, i32* %argc.addr, l892 c18
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
Collected value for `argv`
  Assignment asm ln 25745, prod ln 892.24, live ln 893, enc 6
  Concrete pointer resolves to cmd_main.argv.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x92BA4A64DEC532FD)
  %11 = load i8**, i8*** %argv.addr, l892 c24
  (w64 0x92BA4A64DEC532FD)
Collected value for `argc`
  Assignment asm ln 25760, prod ln 901.7, live ln 902, enc 4
  %15 = load i32, i32* %argc.addr, l901 c7
  (ReadLSB w32 (w32 0x0) handle_options.argc.deref)
Collected value for `argv`
  Assignment asm ln 25776, prod ln 910.27, live ln 911, enc 7
  Concrete pointer resolves to handle_options.argv.deref.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x2CBE786E7EDBF201)
  %16 = load i8**, i8*** %argv.addr, l910 c27
  (w64 0x2CBE786E7EDBF201)
Collected value for `cmd`
  Assignment asm ln 25748, prod ln 893.43, live ln 894, enc 6
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %12 = load i8*, i8** %cmd, l893 c43
  (w64 0x8467E337196AF796)
[0;1;31mKLEE: ERROR: git.c:893: reached "unreachable" instruction
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: git.c:907: reached "unreachable" instruction
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `argv`
  Assignment asm ln 25792, prod ln 911.3, live ln 912, enc 8
  Concrete pointer resolves to handle_options.argv.deref.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x2CBE786E7EDBF201)
  %20 = load i8**, i8*** %argv.addr, l911 c3
  (w64 0x2CBE786E7EDBF201)
Collected value for `argv`
  Assignment asm ln 25820, prod ln 915.8, live ln 916, enc 9
  Concrete pointer resolves to handle_options.argv.deref.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x2CBE786E7EDBF201)
  %26 = load i8**, i8*** %argv.addr, l915 c8
  (w64 0x2CBE786E7EDBF201)
Collected value for `argv`
  Assignment asm ln 25784, prod ln 910.53, live ln 911, enc 10
  Concrete pointer resolves to handle_options.argv.deref.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x2CBE786E7EDBF201)
  %18 = load i8**, i8*** %argv.addr, l910 c53
  (w64 0x2CBE786E7EDBF201)
Collected value for `cmd`
  Assignment asm ln 25823, prod ln 915.8, live ln 923, enc 7
  Concrete pointer resolves to .str.9, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xB003E4C9E55B68A4)
  %27 = load i8*, i8** %arrayidx39, l915 c8
  (w64 0xB003E4C9E55B68A4)
Collected value for `was_alias`
  Assignment asm ln 25830, prod ln 926.19, live ln 927, enc 0
  %call40 = call i32 @run_argv(i32* %argc.addr, i8*** %argv.addr), l926 c19
  (ReadLSB w32 (w32 0x0) run_argv.return)
Collected value for `argv`
  Assignment asm ln 25798, prod ln 912.29, live ln 913, enc 11
  Concrete pointer resolves to handle_options.argv.deref.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x2CBE786E7EDBF201)
  %21 = load i8**, i8*** %argv.addr, l912 c29
  (w64 0x2CBE786E7EDBF201)
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0mCollected value for `cmd`
  Assignment asm ln 25871, prod ln 943.3, live ln 944, enc 8
  Concrete pointer resolves to .str.9, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xB003E4C9E55B68A4)
  %38 = load i8*, i8** %cmd, l943 c3
  (w64 0xB003E4C9E55B68A4)
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0mCollected value for `argv`
  Assignment asm ln 25806, prod ln 912.55, live ln 913, enc 12
  Concrete pointer resolves to handle_options.argv.deref.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x2CBE786E7EDBF201)
  %23 = load i8**, i8*** %argv.addr, l912 c55
  (w64 0x2CBE786E7EDBF201)
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0mCollected value for `was_alias`
  Assignment asm ln 25837, prod ln 929.7, live ln 930, enc 1
  %29 = load i32, i32* %was_alias, l929 c7
  (ReadLSB w32 (w32 0x0) run_argv.return)
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0mCollected value for `done_help`
  Assignment asm ln 25854, prod ln 935.8, live ln 936, enc 1
  %34 = load i32, i32* %done_help, l935 c8
  (w32 0x0)
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0mCollected value for `cmd`
  Assignment asm ln 25859, prod ln 936.37, live ln 937, enc 9
  Concrete pointer resolves to .str.9, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xB003E4C9E55B68A4)
  %35 = load i8*, i8** %cmd, l936 c37
  (w64 0xB003E4C9E55B68A4)
Collected value for `argv`
  Assignment asm ln 25861, prod ln 936.10, live ln 937, enc 13
  Concrete pointer resolves to run_argv.argv.deref.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xAACFA374FFB4242E)
  %36 = load i8**, i8*** %argv.addr, l936 c10
  (w64 0xAACFA374FFB4242E)
Collected value for `cmd`
  Assignment asm ln 25864, prod ln 936.20, live ln 937, enc 10
  Concrete pointer resolves to help_unknown_cmd.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) help_unknown_cmd.return.deref)
  Replaced concrete pointer with hash (w64 0xBBAED580D38F1CDC)
  %call53 = call i8* @help_unknown_cmd(i8* %35), l936 c20
  (w64 0xBBAED580D38F1CDC)
Collected value for `done_help`
  Assignment asm ln 25865, prod ln 937.14, live ln 938, enc 2
  i32 1
  (w32 0x1)
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m
🔔 Unable to execute all before instructions

🔔 Unable to execute all before program states

#### After values

[0;35mKLEE: WARNING: Unable to load symbol(kCFRunLoopDefaultMode) while initializing globals
[0mCollected value for `argc`
  Assignment asm ln 24195, prod ln 864.0, live ln 866, enc 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
Collected value for `argc`
  Assignment asm ln 24196, prod ln 864.0, live ln 866, enc 1
  i32 %argc
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
Collected value for `argc`
  Assignment asm ln 24196, prod ln 864.0, live ln 866, enc 2
  i32 %argc
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
Assertion failed: (matchCount <= 1 && "Multiple matching assignments found"), function recordValue, file ValuesCollector.cpp, line 159.
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /Users/jryans/Projects/klee/build-release-debug/bin/check-debug-info ../O0/git.bc git.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --disable-verify --max-functions=10 --max-forks=4 --max-time=10s --search=random-path --tsv
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x00000001098cbd17 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 39
1  check-debug-info         0x00000001098cab58 llvm::sys::RunSignalHandlers() + 248
2  check-debug-info         0x00000001098cc360 SignalHandler(int) + 288
3  libsystem_platform.dylib 0x00007ff800bb3fdd _sigtramp + 29
4  libsystem_platform.dylib 000000000000000000 _sigtramp + 18446603370568663104
5  libsystem_c.dylib        0x00007ff800aaaa39 abort + 126
6  libsystem_c.dylib        0x00007ff800aa9d1c err + 0
7  check-debug-info         0x00000001098e7bc3 VCHandler::recordValue(klee::ExecutionState&, klee::ExecutionEvent&, llvm::Instruction const*, llvm::Value const*, klee::ref<klee::Expr>) (.cold.5) + 35
8  check-debug-info         0x000000010805d7e7 VCHandler::recordValue(klee::ExecutionState&, klee::ExecutionEvent&, llvm::Instruction const*, llvm::Value const*, klee::ref<klee::Expr>) + 2039
9  check-debug-info         0x000000010805cfaa VCHandler::visitBeforeExecution(klee::ExecutionState&, klee::ExecutionEvent&, klee::KInstruction*) + 410
10 check-debug-info         0x00000001080890e0 klee::Executor::run(klee::ExecutionState&) + 2128
11 check-debug-info         0x000000010808db88 klee::Executor::runFunction(llvm::Function*) + 376
12 check-debug-info         0x000000010805eb3f ValuesCollector::collect(llvm::StringRef, llvm::StringRef, llvm::SmallVector<std::__1::pair<Variable, Assignment*>, 1u>*) + 255
13 check-debug-info         0x00000001080503f6 checkFunction(llvm::SmallVector<ValuesCollector, 2u>&, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&, AssignmentStats&) + 3894
14 check-debug-info         0x0000000108051a31 main + 2929
15 dyld                     0x00007ff8007f9366 start + 1942
./check.sh: line 23: 78855 Abort trap: 6           ${CHECK} ../O0/${TARGET_NAME}.bc ${TARGET_NAME}.bc ${CHECK_OPTS} "$@"
