+++ dirname ./check.sh
++ cd .
++ pwd
+ SCRIPT_DIR=/Users/jryans/Research/Papers/debug-info-consistency/data/spec-cpu-2017/505.mcf_r/clang/13/O0-mem2reg
+ '[' /Users/jryans/Research/Papers/debug-info-consistency/data/spec-cpu-2017/505.mcf_r/clang/13/O0-mem2reg '!=' /Users/jryans/Research/Papers/debug-info-consistency/data/spec-cpu-2017/505.mcf_r/clang/13/O0-mem2reg ']'
+ TARGET_NAME=mcf_r
+ source /Users/jryans/Research/Papers/debug-info-consistency/data/spec-cpu-2017/505.mcf_r/clang/13/O0-mem2reg/../../../../../vars.sh
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
++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --disable-verify --max-forks=32 --max-time=5s --search=random-path --tsv'
+ level=O0-mem2reg
+ version=13
+ echo '## Checking debug consistency of `mcf_r` (Clang 13, O0-mem2reg)'
## Checking debug consistency of `mcf_r` (Clang 13, O0-mem2reg)
+ /Users/jryans/Projects/klee/build-release-debug/bin/check-debug-info ../O0/mcf_r.bc mcf_r.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --disable-verify --max-forks=32 --max-time=5s --search=random-path --tsv
Checking ../O0/mcf_r.bc and mcf_r.bc for debug info consistency…

## Functions

✅ 39 before defined functions(s), 39 after defined functions(s)

## Function `global_opt`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `new_arcs` (decl src ln 42), asm ln 132
  %10 = load i64, i64* %new_arcs, l97 c9, asm ln 132
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 132, prod ln 97.9, live ln 98, enc None
Load from declared address of `new_arcs` (decl src ln 42), asm ln 127
  %9 = load i64, i64* %new_arcs, l94 c61, asm ln 127
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 127, prod ln 94.61, live ln 95, enc None
Load from declared address of `new_arcs` (decl src ln 42), asm ln 122
  %8 = load i64, i64* %new_arcs, l93 c9, asm ln 122
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 122, prod ln 93.9, live ln 94, enc None
Store to declared address of `new_arcs` (decl src ln 42), asm ln 121
  %call15 = call i64 @price_out_impl(%struct.network* @net), l90 c16, asm ln 120
  Added assignment asm ln 121, prod ln 90.16, live ln 93, enc None
Load from declared address of `new_arcs` (decl src ln 42), asm ln 110
  %6 = load i64, i64* %new_arcs, l81 c63, asm ln 110
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 110, prod ln 81.63, live ln 82, enc None
Load from declared address of `new_arcs` (decl src ln 42), asm ln 105
  %5 = load i64, i64* %new_arcs, l80 c11, asm ln 105
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 105, prod ln 80.11, live ln 81, enc None
Load from declared address of `new_arcs` (decl src ln 42), asm ln 95
  %4 = load i64, i64* %new_arcs, l71 c12, asm ln 95
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 95, prod ln 71.12, live ln 72, enc None
Store to declared address of `new_arcs` (decl src ln 42), asm ln 94
  %call6 = call i64 @suspend_impl(%struct.network* @net, i64 -1, i64 0), l69 c18, asm ln 93
  Added assignment asm ln 94, prod ln 69.18, live ln 71, enc None
Load from declared address of `new_arcs` (decl src ln 42), asm ln 76
  %0 = load i64, i64* %new_arcs, l48 c10, asm ln 76
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 76, prod ln 48.10, live ln 49, enc None
Store to declared address of `new_arcs` (decl src ln 42), asm ln 72
  const i64 -1
  Added assignment asm ln 72, prod ln 46.12, live ln 48, enc None
Store to declared address of `residual_nb_it` (decl src ln 43), asm ln 144
  %inc = add nsw i64 %11, 1, l110 c19, asm ln 143
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 144, prod ln 110.19, live ln 111, enc None
Load from declared address of `residual_nb_it` (decl src ln 43), asm ln 142
  %11 = load i64, i64* %residual_nb_it, l110 c19, asm ln 142
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 142, prod ln 110.19, live ln 111, enc None
Store to declared address of `residual_nb_it` (decl src ln 43), asm ln 71
  const i64 1
  Added assignment asm ln 71, prod ln 43.8, live ln 46, enc None

#### After variables

Value produced for `residual_nb_it` (decl src ln 43), asm ln 67
  const i64 1
  Added assignment asm ln 67, prod ln 43.0, live ln 48, enc None
Value produced for `new_arcs` (decl src ln 42), asm ln 68
  const i64 -1
  Added assignment asm ln 68, prod ln 42.0, live ln 48, enc None
Value produced for `new_arcs` (decl src ln 42), asm ln 93
  %call6 = call i64 @suspend_impl(%struct.network.2* @net, i64 -1, i64 0), l69 c18, asm ln 92
  Added assignment asm ln 93, prod ln 69.18, live ln 71, enc None
Value produced for `new_arcs` (decl src ln 42), asm ln 117
  %call15 = call i64 @price_out_impl(%struct.network.2* @net), l90 c16, asm ln 116
  Added assignment asm ln 117, prod ln 90.16, live ln 93, enc None
Value produced for `residual_nb_it` (decl src ln 43), asm ln 136
  %inc = add nsw i64 %residual_nb_it.0, 1, l110 c19, asm ln 135
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 136, prod ln 110.19, live ln 111, enc None
Value produced for `new_arcs` (decl src ln 42), asm ln 74
  %new_arcs.0 = phi i64 [ -1, %entry ], [ %call15, %if.end23 ], asm ln 73
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 74, prod ln 90.16, live ln 91, enc None
Value produced for `residual_nb_it` (decl src ln 43), asm ln 75
  %residual_nb_it.0 = phi i64 [ 1, %entry ], [ %inc, %if.end23 ], asm ln 72
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 75, prod ln 110.19, live ln 111, enc None

#### Summary

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `mcf.c`
[0mCollected value for `residual_nb_it`
  Assignment asm ln 71, prod ln 43.8, live ln 46, enc 0
  i64 1
  (w64 0x1)
Collected value for `new_arcs`
  Assignment asm ln 72, prod ln 46.12, live ln 48, enc 0
  i64 -1
  (w64 0xFFFFFFFFFFFFFFFF)
Collected value for `new_arcs`
  Assignment asm ln 76, prod ln 48.10, live ln 49, enc 1
  %0 = load i64, i64* %new_arcs, l48 c10
  (w64 0xFFFFFFFFFFFFFFFF)
Collected value for `new_arcs`
  Assignment asm ln 94, prod ln 69.18, live ln 71, enc 2
  %call6 = call i64 @suspend_impl(%struct.network* @net, i64 -1, i64 0), l69 c18
  (ReadLSB w64 (w32 0x0) suspend_impl.return)
Collected value for `new_arcs`
  Assignment asm ln 121, prod ln 90.16, live ln 93, enc 3
  %call15 = call i64 @price_out_impl(%struct.network* @net), l90 c16
  (ReadLSB w64 (w32 0x0) price_out_impl.return)
Collected value for `new_arcs`
  Assignment asm ln 95, prod ln 71.12, live ln 72, enc 4
  %4 = load i64, i64* %new_arcs, l71 c12
  (ReadLSB w64 (w32 0x0) suspend_impl.return)
Collected value for `new_arcs`
  Assignment asm ln 122, prod ln 93.9, live ln 94, enc 5
  %8 = load i64, i64* %new_arcs, l93 c9
  (ReadLSB w64 (w32 0x0) price_out_impl.return)
Collected value for `new_arcs`
  Assignment asm ln 105, prod ln 80.11, live ln 81, enc 6
  %5 = load i64, i64* %new_arcs, l80 c11
  (ReadLSB w64 (w32 0x0) suspend_impl.return)
Collected value for `new_arcs`
  Assignment asm ln 132, prod ln 97.9, live ln 98, enc 7
  %10 = load i64, i64* %new_arcs, l97 c9
  (ReadLSB w64 (w32 0x0) price_out_impl.return)
Collected value for `residual_nb_it`
  Assignment asm ln 142, prod ln 110.19, live ln 111, enc 1
  %11 = load i64, i64* %residual_nb_it, l110 c19
  (w64 0x1)
Collected value for `new_arcs`
  Assignment asm ln 127, prod ln 94.61, live ln 95, enc 8
  %9 = load i64, i64* %new_arcs, l94 c61
  (ReadLSB w64 (w32 0x0) price_out_impl.return)
Collected value for `residual_nb_it`
  Assignment asm ln 144, prod ln 110.19, live ln 111, enc 2
  %inc = add nsw i64 %11, 1, l110 c19
  (w64 0x2)
[0;1;31mKLEE: ERROR: mcf.c:77: reached "unreachable" instruction
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `new_arcs`
  Assignment asm ln 110, prod ln 81.63, live ln 82, enc 9
  %6 = load i64, i64* %new_arcs, l81 c63
  (ReadLSB w64 (w32 0x0) suspend_impl.return)
[0;1;31mKLEE: ERROR: mcf.c:103: reached "unreachable" instruction
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
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
[0m
🔔 Unable to execute all before program states

#### After values

Collected value for `residual_nb_it`
  Assignment asm ln 67, prod ln 43.0, live ln 48, enc 0
  i64 1
  (w64 0x1)
Collected value for `new_arcs`
  Assignment asm ln 68, prod ln 42.0, live ln 48, enc 0
  i64 -1
  (w64 0xFFFFFFFFFFFFFFFF)
Collected value for `new_arcs`
  Assignment asm ln 74, prod ln 90.16, live ln 91, enc 1
  %new_arcs.0 = phi i64 [ -1, %entry ], [ %call15, %if.end23 ]
  Block: 0
  (w64 0xFFFFFFFFFFFFFFFF)
Collected value for `residual_nb_it`
  Assignment asm ln 75, prod ln 110.19, live ln 111, enc 1
  %residual_nb_it.0 = phi i64 [ 1, %entry ], [ %inc, %if.end23 ]
  Block: 0
  (w64 0x1)
Collected value for `new_arcs`
  Assignment asm ln 93, prod ln 69.18, live ln 71, enc 2
  %call6 = call i64 @suspend_impl(%struct.network.2* @net, i64 -1, i64 0), l69 c18
  (ReadLSB w64 (w32 0x0) suspend_impl.return)
Collected value for `new_arcs`
  Assignment asm ln 117, prod ln 90.16, live ln 93, enc 3
  %call15 = call i64 @price_out_impl(%struct.network.2* @net), l90 c16
  (ReadLSB w64 (w32 0x0) price_out_impl.return)
Collected value for `residual_nb_it`
  Assignment asm ln 136, prod ln 110.19, live ln 111, enc 2
  %inc = add nsw i64 %residual_nb_it.0, 1, l110 c19
  (w64 0x2)
[0;1;31mKLEE: ERROR: mcf.c:77: reached "unreachable" instruction
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: mcf.c:103: reached "unreachable" instruction
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
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
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m
🔔 Unable to execute all after program states

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `new_arcs` (decl src ln 42)

Checking equivalence of `new_arcs` (decl src ln 42) from
  assn asm ln 76, prod ln 48.10, live ln 49, enc 1
  %0 = load i64, i64* %new_arcs, l48 c10
  (w64 0xFFFFFFFFFFFFFFFF)
and
  assn asm ln 72, prod ln 46.12, live ln 48, enc 0
  i64 -1
  (w64 0xFFFFFFFFFFFFFFFF)
🔔 Removing: asm ln 76, prod ln 48.10, live ln 49, enc 1

Checking equivalence of `new_arcs` (decl src ln 42) from
  assn asm ln 94, prod ln 69.18, live ln 71, enc 2
  %call6 = call i64 @suspend_impl(%struct.network* @net, i64 -1, i64 0), l69 c18
  (ReadLSB w64 (w32 0x0) suspend_impl.return)
and
  assn asm ln 72, prod ln 46.12, live ln 48, enc 0
  i64 -1
  (w64 0xFFFFFFFFFFFFFFFF)
Query to parse
array suspend_impl.return[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) suspend_impl.return)
     (w64 0xFFFFFFFFFFFFFFFF)))
Parsed query
(Eq (ReadLSB w64 (w32 0x0) suspend_impl.return)
     (w64 0xFFFFFFFFFFFFFFFF))

Checking equivalence of `new_arcs` (decl src ln 42) from
  assn asm ln 121, prod ln 90.16, live ln 93, enc 3
  %call15 = call i64 @price_out_impl(%struct.network* @net), l90 c16
  (ReadLSB w64 (w32 0x0) price_out_impl.return)
and
  assn asm ln 94, prod ln 69.18, live ln 71, enc 2
  %call6 = call i64 @suspend_impl(%struct.network* @net, i64 -1, i64 0), l69 c18
  (ReadLSB w64 (w32 0x0) suspend_impl.return)
Query to parse
array price_out_impl.return[8] : w32 -> w8 = symbolic
array suspend_impl.return[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) price_out_impl.return)
     (ReadLSB w64 (w32 0x0) suspend_impl.return)))
Parsed query
(Eq (ReadLSB w64 (w32 0x0) price_out_impl.return)
     (ReadLSB w64 (w32 0x0) suspend_impl.return))

Checking equivalence of `new_arcs` (decl src ln 42) from
  assn asm ln 95, prod ln 71.12, live ln 72, enc 4
  %4 = load i64, i64* %new_arcs, l71 c12
  (ReadLSB w64 (w32 0x0) suspend_impl.return)
and
  assn asm ln 121, prod ln 90.16, live ln 93, enc 3
  %call15 = call i64 @price_out_impl(%struct.network* @net), l90 c16
  (ReadLSB w64 (w32 0x0) price_out_impl.return)
Query to parse
array suspend_impl.return[8] : w32 -> w8 = symbolic
array price_out_impl.return[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) suspend_impl.return)
     (ReadLSB w64 (w32 0x0) price_out_impl.return)))
Parsed query
(Eq (ReadLSB w64 (w32 0x0) suspend_impl.return)
     (ReadLSB w64 (w32 0x0) price_out_impl.return))

Checking equivalence of `new_arcs` (decl src ln 42) from
  assn asm ln 122, prod ln 93.9, live ln 94, enc 5
  %8 = load i64, i64* %new_arcs, l93 c9
  (ReadLSB w64 (w32 0x0) price_out_impl.return)
and
  assn asm ln 95, prod ln 71.12, live ln 72, enc 4
  %4 = load i64, i64* %new_arcs, l71 c12
  (ReadLSB w64 (w32 0x0) suspend_impl.return)
Query to parse
array price_out_impl.return[8] : w32 -> w8 = symbolic
array suspend_impl.return[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) price_out_impl.return)
     (ReadLSB w64 (w32 0x0) suspend_impl.return)))
Parsed query
(Eq (ReadLSB w64 (w32 0x0) price_out_impl.return)
     (ReadLSB w64 (w32 0x0) suspend_impl.return))

Checking equivalence of `new_arcs` (decl src ln 42) from
  assn asm ln 105, prod ln 80.11, live ln 81, enc 6
  %5 = load i64, i64* %new_arcs, l80 c11
  (ReadLSB w64 (w32 0x0) suspend_impl.return)
and
  assn asm ln 122, prod ln 93.9, live ln 94, enc 5
  %8 = load i64, i64* %new_arcs, l93 c9
  (ReadLSB w64 (w32 0x0) price_out_impl.return)
Query to parse
array suspend_impl.return[8] : w32 -> w8 = symbolic
array price_out_impl.return[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) suspend_impl.return)
     (ReadLSB w64 (w32 0x0) price_out_impl.return)))
Parsed query
(Eq (ReadLSB w64 (w32 0x0) suspend_impl.return)
     (ReadLSB w64 (w32 0x0) price_out_impl.return))

Checking equivalence of `new_arcs` (decl src ln 42) from
  assn asm ln 132, prod ln 97.9, live ln 98, enc 7
  %10 = load i64, i64* %new_arcs, l97 c9
  (ReadLSB w64 (w32 0x0) price_out_impl.return)
and
  assn asm ln 105, prod ln 80.11, live ln 81, enc 6
  %5 = load i64, i64* %new_arcs, l80 c11
  (ReadLSB w64 (w32 0x0) suspend_impl.return)
Query to parse
array price_out_impl.return[8] : w32 -> w8 = symbolic
array suspend_impl.return[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) price_out_impl.return)
     (ReadLSB w64 (w32 0x0) suspend_impl.return)))
Parsed query
(Eq (ReadLSB w64 (w32 0x0) price_out_impl.return)
     (ReadLSB w64 (w32 0x0) suspend_impl.return))

Checking equivalence of `new_arcs` (decl src ln 42) from
  assn asm ln 127, prod ln 94.61, live ln 95, enc 8
  %9 = load i64, i64* %new_arcs, l94 c61
  (ReadLSB w64 (w32 0x0) price_out_impl.return)
and
  assn asm ln 132, prod ln 97.9, live ln 98, enc 7
  %10 = load i64, i64* %new_arcs, l97 c9
  (ReadLSB w64 (w32 0x0) price_out_impl.return)
Query to parse
array price_out_impl.return[8] : w32 -> w8 = symbolic
array price_out_impl.return[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) price_out_impl.return)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) price_out_impl.return)
     N0)
🔔 Removing: asm ln 127, prod ln 94.61, live ln 95, enc 8

Checking equivalence of `new_arcs` (decl src ln 42) from
  assn asm ln 110, prod ln 81.63, live ln 82, enc 9
  %6 = load i64, i64* %new_arcs, l81 c63
  (ReadLSB w64 (w32 0x0) suspend_impl.return)
and
  assn asm ln 132, prod ln 97.9, live ln 98, enc 7
  %10 = load i64, i64* %new_arcs, l97 c9
  (ReadLSB w64 (w32 0x0) price_out_impl.return)
Query to parse
array suspend_impl.return[8] : w32 -> w8 = symbolic
array price_out_impl.return[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) suspend_impl.return)
     (ReadLSB w64 (w32 0x0) price_out_impl.return)))
Parsed query
(Eq (ReadLSB w64 (w32 0x0) suspend_impl.return)
     (ReadLSB w64 (w32 0x0) price_out_impl.return))

Filtering before assignments: `residual_nb_it` (decl src ln 43)

Checking equivalence of `residual_nb_it` (decl src ln 43) from
  assn asm ln 142, prod ln 110.19, live ln 111, enc 1
  %11 = load i64, i64* %residual_nb_it, l110 c19
  (w64 0x1)
and
  assn asm ln 71, prod ln 43.8, live ln 46, enc 0
  i64 1
  (w64 0x1)
🔔 Removing: asm ln 142, prod ln 110.19, live ln 111, enc 1

Checking equivalence of `residual_nb_it` (decl src ln 43) from
  assn asm ln 144, prod ln 110.19, live ln 111, enc 2
  %inc = add nsw i64 %11, 1, l110 c19
  (w64 0x2)
and
  assn asm ln 71, prod ln 43.8, live ln 46, enc 0
  i64 1
  (w64 0x1)

Filtering after assignments: `residual_nb_it` (decl src ln 43)

Checking equivalence of `residual_nb_it` (decl src ln 43) from
  assn asm ln 75, prod ln 110.19, live ln 111, enc 1
  %residual_nb_it.0 = phi i64 [ 1, %entry ], [ %inc, %if.end23 ]
  (w64 0x1)
and
  assn asm ln 67, prod ln 43.0, live ln 48, enc 0
  i64 1
  (w64 0x1)
🔔 Removing: asm ln 75, prod ln 110.19, live ln 111, enc 1

Checking equivalence of `residual_nb_it` (decl src ln 43) from
  assn asm ln 136, prod ln 110.19, live ln 111, enc 2
  %inc = add nsw i64 %residual_nb_it.0, 1, l110 c19
  (w64 0x2)
and
  assn asm ln 67, prod ln 43.0, live ln 48, enc 0
  i64 1
  (w64 0x1)

Filtering after assignments: `new_arcs` (decl src ln 42)

Checking equivalence of `new_arcs` (decl src ln 42) from
  assn asm ln 74, prod ln 90.16, live ln 91, enc 1
  %new_arcs.0 = phi i64 [ -1, %entry ], [ %call15, %if.end23 ]
  (w64 0xFFFFFFFFFFFFFFFF)
and
  assn asm ln 68, prod ln 42.0, live ln 48, enc 0
  i64 -1
  (w64 0xFFFFFFFFFFFFFFFF)
🔔 Removing: asm ln 74, prod ln 90.16, live ln 91, enc 1

Checking equivalence of `new_arcs` (decl src ln 42) from
  assn asm ln 93, prod ln 69.18, live ln 71, enc 2
  %call6 = call i64 @suspend_impl(%struct.network.2* @net, i64 -1, i64 0), l69 c18
  (ReadLSB w64 (w32 0x0) suspend_impl.return)
and
  assn asm ln 68, prod ln 42.0, live ln 48, enc 0
  i64 -1
  (w64 0xFFFFFFFFFFFFFFFF)
Query to parse
array suspend_impl.return[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) suspend_impl.return)
     (w64 0xFFFFFFFFFFFFFFFF)))
Parsed query
(Eq (ReadLSB w64 (w32 0x0) suspend_impl.return)
     (w64 0xFFFFFFFFFFFFFFFF))

Checking equivalence of `new_arcs` (decl src ln 42) from
  assn asm ln 117, prod ln 90.16, live ln 93, enc 3
  %call15 = call i64 @price_out_impl(%struct.network.2* @net), l90 c16
  (ReadLSB w64 (w32 0x0) price_out_impl.return)
and
  assn asm ln 93, prod ln 69.18, live ln 71, enc 2
  %call6 = call i64 @suspend_impl(%struct.network.2* @net, i64 -1, i64 0), l69 c18
  (ReadLSB w64 (w32 0x0) suspend_impl.return)
Query to parse
array price_out_impl.return[8] : w32 -> w8 = symbolic
array suspend_impl.return[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) price_out_impl.return)
     (ReadLSB w64 (w32 0x0) suspend_impl.return)))
Parsed query
(Eq (ReadLSB w64 (w32 0x0) price_out_impl.return)
     (ReadLSB w64 (w32 0x0) suspend_impl.return))

Collating encountered before assignments: `new_arcs` (decl src ln 42)
  asm ln 72, prod ln 46.12, live ln 48, enc 0
  asm ln 94, prod ln 69.18, live ln 71, enc 1
  asm ln 121, prod ln 90.16, live ln 93, enc 2
  asm ln 95, prod ln 71.12, live ln 72, enc 3
  asm ln 122, prod ln 93.9, live ln 94, enc 4
  asm ln 105, prod ln 80.11, live ln 81, enc 5
  asm ln 132, prod ln 97.9, live ln 98, enc 6
  asm ln 110, prod ln 81.63, live ln 82, enc 7
Collating encountered before assignments: `residual_nb_it` (decl src ln 43)
  asm ln 71, prod ln 43.8, live ln 46, enc 0
  asm ln 144, prod ln 110.19, live ln 111, enc 1

Collating encountered after assignments: `residual_nb_it` (decl src ln 43)
  asm ln 67, prod ln 43.0, live ln 48, enc 0
  asm ln 136, prod ln 110.19, live ln 111, enc 1
Collating encountered after assignments: `new_arcs` (decl src ln 42)
  asm ln 68, prod ln 42.0, live ln 48, enc 0
  asm ln 93, prod ln 69.18, live ln 71, enc 1
  asm ln 117, prod ln 90.16, live ln 93, enc 2

#### Check after using before as reference

❌ Before encountered assn for `new_arcs` (decl src ln 42) at asm ln 95, prod ln 71.12, live ln 72, enc 3 not found in after

❌ Before encountered assn for `new_arcs` (decl src ln 42) at asm ln 122, prod ln 93.9, live ln 94, enc 4 not found in after

❌ Before encountered assn for `new_arcs` (decl src ln 42) at asm ln 105, prod ln 80.11, live ln 81, enc 5 not found in after

❌ Before encountered assn for `new_arcs` (decl src ln 42) at asm ln 132, prod ln 97.9, live ln 98, enc 6 not found in after

❌ Before encountered assn for `new_arcs` (decl src ln 42) at asm ln 110, prod ln 81.63, live ln 82, enc 7 not found in after

Checking equivalence of `new_arcs` (decl src ln 42) from
  assn asm ln 68, prod ln 42.0, live ln 48, enc 0
  i64 -1
  (w64 0xFFFFFFFFFFFFFFFF)
and
  assn asm ln 72, prod ln 46.12, live ln 48, enc 0
  i64 -1
  (w64 0xFFFFFFFFFFFFFFFF)
✅ Before `new_arcs` (decl src ln 42) assn asm ln 72, prod ln 46.12, live ln 48, enc 0 symbolic value matches after assn asm ln 68, prod ln 42.0, live ln 48, enc 0

Checking equivalence of `new_arcs` (decl src ln 42) from
  assn asm ln 93, prod ln 69.18, live ln 71, enc 1
  %call6 = call i64 @suspend_impl(%struct.network.2* @net, i64 -1, i64 0), l69 c18
  (ReadLSB w64 (w32 0x0) suspend_impl.return)
and
  assn asm ln 94, prod ln 69.18, live ln 71, enc 1
  %call6 = call i64 @suspend_impl(%struct.network* @net, i64 -1, i64 0), l69 c18
  (ReadLSB w64 (w32 0x0) suspend_impl.return)
Query to parse
array suspend_impl.return[8] : w32 -> w8 = symbolic
array suspend_impl.return[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) suspend_impl.return)
     (ReadLSB w64 (w32 0x0) suspend_impl.return)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) suspend_impl.return)
     N0)
✅ Before `new_arcs` (decl src ln 42) assn asm ln 94, prod ln 69.18, live ln 71, enc 1 symbolic value matches after assn asm ln 93, prod ln 69.18, live ln 71, enc 1

Checking equivalence of `new_arcs` (decl src ln 42) from
  assn asm ln 117, prod ln 90.16, live ln 93, enc 2
  %call15 = call i64 @price_out_impl(%struct.network.2* @net), l90 c16
  (ReadLSB w64 (w32 0x0) price_out_impl.return)
and
  assn asm ln 121, prod ln 90.16, live ln 93, enc 2
  %call15 = call i64 @price_out_impl(%struct.network* @net), l90 c16
  (ReadLSB w64 (w32 0x0) price_out_impl.return)
Query to parse
array price_out_impl.return[8] : w32 -> w8 = symbolic
array price_out_impl.return[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) price_out_impl.return)
     (ReadLSB w64 (w32 0x0) price_out_impl.return)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) price_out_impl.return)
     N0)
✅ Before `new_arcs` (decl src ln 42) assn asm ln 121, prod ln 90.16, live ln 93, enc 2 symbolic value matches after assn asm ln 117, prod ln 90.16, live ln 93, enc 2

❌ After `new_arcs` assns checked using before as reference
Assignments:         new_arcs
  Reference:         8
  Test:              3
Matching:
  Matching Coords:   3
  Matching Value:    3
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   5
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

❌ Before `residual_nb_it` (decl src ln 43) assn asm ln 71, prod ln 43.8, live ln 46, enc 0 coordinates don't match after assn asm ln 67, prod ln 43.0, live ln 48, enc 0
Checking equivalence of `residual_nb_it` (decl src ln 43) from
  assn asm ln 67, prod ln 43.0, live ln 48, enc 0
  i64 1
  (w64 0x1)
and
  assn asm ln 71, prod ln 43.8, live ln 46, enc 0
  i64 1
  (w64 0x1)
✅ Before `residual_nb_it` (decl src ln 43) assn asm ln 71, prod ln 43.8, live ln 46, enc 0 symbolic value matches after assn asm ln 67, prod ln 43.0, live ln 48, enc 0

Checking equivalence of `residual_nb_it` (decl src ln 43) from
  assn asm ln 136, prod ln 110.19, live ln 111, enc 1
  %inc = add nsw i64 %residual_nb_it.0, 1, l110 c19
  (w64 0x2)
and
  assn asm ln 144, prod ln 110.19, live ln 111, enc 1
  %inc = add nsw i64 %11, 1, l110 c19
  (w64 0x2)
✅ Before `residual_nb_it` (decl src ln 43) assn asm ln 144, prod ln 110.19, live ln 111, enc 1 symbolic value matches after assn asm ln 136, prod ln 110.19, live ln 111, enc 1

❌ After `residual_nb_it` assns checked using before as reference
Assignments:         residual_nb_it
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
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

## Function `refresh_neighbour_lists`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `net` (decl src ln 27), asm ln 366
  %34 = load %struct.network*, %struct.network** %net.addr, l48 c58, asm ln 366
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 366, prod ln 48.58, live ln 49, enc None
Load from declared address of `net` (decl src ln 27), asm ln 362
  %31 = load %struct.network*, %struct.network** %net.addr, l48 c41, asm ln 362
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 362, prod ln 48.41, live ln 49, enc None
Load from declared address of `net` (decl src ln 27), asm ln 324
  %14 = load %struct.network*, %struct.network** %net.addr, l48 c21, asm ln 324
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 324, prod ln 48.21, live ln 49, enc None
Load from declared address of `net` (decl src ln 27), asm ln 314
  %11 = load %struct.network*, %struct.network** %net.addr, l47 c11, asm ln 314
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 314, prod ln 47.11, live ln 48, enc None
Load from declared address of `net` (decl src ln 27), asm ln 287
  %2 = load %struct.network*, %struct.network** %net.addr, l40 c25, asm ln 287
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 287, prod ln 40.25, live ln 41, enc None
Load from declared address of `net` (decl src ln 27), asm ln 283
  %0 = load %struct.network*, %struct.network** %net.addr, l39 c12, asm ln 283
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 283, prod ln 39.12, live ln 40, enc None
Store to declared address of `net` (decl src ln 27), asm ln 275
  arg 0
  Added assignment asm ln 275, prod ln 27.0, live ln 39, enc None
Load from declared address of `getPos` (decl src ln 27), asm ln 365
  %33 = load i64 (%struct.network*, i64)*, i64 (%struct.network*, i64)** %getPos.addr, l48 c51, asm ln 365
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 365, prod ln 48.51, live ln 49, enc None
Store to declared address of `getPos` (decl src ln 27), asm ln 277
  arg 1
  Added assignment asm ln 277, prod ln 27.0, live ln 39, enc None
Store to declared address of `node` (decl src ln 33), asm ln 310
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %10, i32 1, l40 c69, asm ln 309
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 310, prod ln 40.69, live ln 41, enc None
Load from declared address of `node` (decl src ln 33), asm ln 308
  %10 = load %struct.node*, %struct.node** %node, l40 c69, asm ln 308
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 308, prod ln 40.69, live ln 41, enc None
Load from declared address of `node` (decl src ln 33), asm ln 305
  %9 = load %struct.node*, %struct.node** %node, l43 c9, asm ln 305
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 305, prod ln 43.9, live ln 44, enc None
Load from declared address of `node` (decl src ln 33), asm ln 302
  %8 = load %struct.node*, %struct.node** %node, l42 c9, asm ln 302
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 302, prod ln 42.9, live ln 43, enc None
Load from declared address of `node` (decl src ln 33), asm ln 295
  %5 = load %struct.node*, %struct.node** %node, l40 c42, asm ln 295
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 295, prod ln 40.42, live ln 41, enc None
Store to declared address of `node` (decl src ln 33), asm ln 286
  %1 = load %struct.node*, %struct.node** %nodes, l39 c17, asm ln 285
  Added assignment asm ln 286, prod ln 39.17, live ln 40, enc None
Store to declared address of `arc` (decl src ln 34), asm ln 371
  %arrayidx = getelementptr inbounds %struct.arc, %struct.arc* %32, i64 %call, l48 c41, asm ln 370
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 371, prod ln 48.41, live ln 49, enc None
Load from declared address of `arc` (decl src ln 34), asm ln 354
  %28 = load %struct.arc*, %struct.arc** %arc, l53 c9, asm ln 354
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 354, prod ln 53.9, live ln 54, enc None
Load from declared address of `arc` (decl src ln 34), asm ln 353
  %27 = load %struct.arc*, %struct.arc** %arc, l53 c30, asm ln 353
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 353, prod ln 53.30, live ln 54, enc None
Load from declared address of `arc` (decl src ln 34), asm ln 350
  %26 = load %struct.arc*, %struct.arc** %arc, l52 c9, asm ln 350
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 350, prod ln 52.9, live ln 53, enc None
Load from declared address of `arc` (decl src ln 34), asm ln 345
  %23 = load %struct.arc*, %struct.arc** %arc, l52 c23, asm ln 345
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 345, prod ln 52.23, live ln 53, enc None
Load from declared address of `arc` (decl src ln 34), asm ln 340
  %21 = load %struct.arc*, %struct.arc** %arc, l51 c9, asm ln 340
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 340, prod ln 51.9, live ln 52, enc None
Load from declared address of `arc` (decl src ln 34), asm ln 339
  %20 = load %struct.arc*, %struct.arc** %arc, l51 c31, asm ln 339
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 339, prod ln 51.31, live ln 52, enc None
Load from declared address of `arc` (decl src ln 34), asm ln 336
  %19 = load %struct.arc*, %struct.arc** %arc, l50 c9, asm ln 336
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 336, prod ln 50.9, live ln 51, enc None
Load from declared address of `arc` (decl src ln 34), asm ln 331
  %16 = load %struct.arc*, %struct.arc** %arc, l50 c24, asm ln 331
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 331, prod ln 50.24, live ln 51, enc None
Store to declared address of `arc` (decl src ln 34), asm ln 317
  %12 = load %struct.arc*, %struct.arc** %arcs, l47 c16, asm ln 316
  Added assignment asm ln 317, prod ln 47.16, live ln 48, enc None
Load from declared address of `stop` (decl src ln 35), asm ln 296
  %6 = load i8*, i8** %stop, l40 c59, asm ln 296
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 296, prod ln 40.59, live ln 41, enc None
Store to declared address of `stop` (decl src ln 35), asm ln 291
  %4 = bitcast %struct.node* %3 to i8*, l40 c17, asm ln 290
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 291, prod ln 40.17, live ln 41, enc None
Load from declared address of `i` (decl src ln 36), asm ln 367
  %35 = load i32, i32* %i, l48 c63, asm ln 367
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 367, prod ln 48.63, live ln 49, enc None
Store to declared address of `i` (decl src ln 36), asm ln 361
  %inc = add nsw i32 %30, 1, l48 c30, asm ln 360
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 361, prod ln 48.30, live ln 49, enc None
Load from declared address of `i` (decl src ln 36), asm ln 359
  %30 = load i32, i32* %i, l48 c30, asm ln 359
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 359, prod ln 48.30, live ln 49, enc None
Load from declared address of `i` (decl src ln 36), asm ln 322
  %13 = load i32, i32* %i, l48 c17, asm ln 322
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 322, prod ln 48.17, live ln 49, enc None
Store to declared address of `i` (decl src ln 36), asm ln 318
  const i32 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 318, prod ln 48.12, live ln 49, enc None

#### After variables

Value produced for `net` (decl src ln 27), asm ln 241
  arg 0
  Added assignment asm ln 241, prod ln 27.0, live ln 39, enc None
Value produced for `getPos` (decl src ln 27), asm ln 242
  arg 1
  Added assignment asm ln 242, prod ln 27.0, live ln 39, enc None
Value produced for `node` (decl src ln 33), asm ln 245
  %0 = load %struct.node.1*, %struct.node.1** %nodes, l39 c17, asm ln 244
  Added assignment asm ln 245, prod ln 39.17, live ln 40, enc None
Value produced for `stop` (decl src ln 35), asm ln 249
  %2 = bitcast %struct.node.1* %1 to i8*, l40 c17, asm ln 248
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 249, prod ln 40.17, live ln 41, enc None
Value produced for `node` (decl src ln 33), asm ln 265
  %incdec.ptr = getelementptr inbounds %struct.node.1, %struct.node.1* %node.0, i32 1, l40 c69, asm ln 264
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 265, prod ln 40.69, live ln 41, enc None
Value produced for `arc` (decl src ln 34), asm ln 271
  %4 = load %struct.arc.0*, %struct.arc.0** %arcs, l47 c16, asm ln 270
  Added assignment asm ln 271, prod ln 47.16, live ln 48, enc None
Value produced for `i` (decl src ln 36), asm ln 272
  const i32 0
  Added assignment asm ln 272, prod ln 36.0, live ln 48, enc None
Value produced for `i` (decl src ln 36), asm ln 308
  %inc = add nsw i32 %i.0, 1, l48 c30, asm ln 307
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 308, prod ln 48.30, live ln 49, enc None
Value produced for `arc` (decl src ln 34), asm ln 314
  %arrayidx = getelementptr inbounds %struct.arc.0, %struct.arc.0* %12, i64 %call, l48 c41, asm ln 313
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 314, prod ln 48.41, live ln 49, enc None
Value produced for `node` (decl src ln 33), asm ln 254
  %node.0 = phi %struct.node.1* [ %0, %entry ], [ %incdec.ptr, %for.body ], asm ln 253
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 254, prod ln 40.69, live ln 41, enc None
Value produced for `i` (decl src ln 36), asm ln 278
  %i.0 = phi i32 [ 0, %for.end ], [ %inc, %for.body4 ], asm ln 277
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 278, prod ln 48.30, live ln 49, enc None
Value produced for `arc` (decl src ln 34), asm ln 279
  %arc.0 = phi %struct.arc.0* [ %4, %for.end ], [ %arrayidx, %for.body4 ], asm ln 276
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 279, prod ln 48.41, live ln 49, enc None

#### Summary

✅ 6 before variables found, 6 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `mcfutil.c`
[0mCollected value for `net`
  Assignment asm ln 275, prod ln 27.0, live ln 39, enc 0
  Concrete pointer resolves to refresh_neighbour_lists.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refresh_neighbour_lists.net.deref)
  Replaced concrete pointer with hash (w64 0x9D9DDC88DB92E723)
  %struct.network* %net
  (w64 0x9D9DDC88DB92E723)
Collected value for `getPos`
  Assignment asm ln 277, prod ln 27.0, live ln 39, enc 0
  Concrete pointer resolves to refresh_neighbour_lists.getPos.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refresh_neighbour_lists.getPos.deref)
  Replaced concrete pointer with hash (w64 0x78BB3F521365B165)
  i64 (%struct.network*, i64)* %getPos
  (w64 0x78BB3F521365B165)
Collected value for `net`
  Assignment asm ln 283, prod ln 39.12, live ln 40, enc 1
  Concrete pointer resolves to refresh_neighbour_lists.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refresh_neighbour_lists.net.deref)
  Replaced concrete pointer with hash (w64 0x9D9DDC88DB92E723)
  %0 = load %struct.network*, %struct.network** %net.addr, l39 c12
  (w64 0x9D9DDC88DB92E723)
Collected value for `node`
  Assignment asm ln 286, prod ln 39.17, live ln 40, enc 0
  %1 = load %struct.node*, %struct.node** %nodes, l39 c17
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 287, prod ln 40.25, live ln 41, enc 2
  Concrete pointer resolves to refresh_neighbour_lists.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refresh_neighbour_lists.net.deref)
  Replaced concrete pointer with hash (w64 0x9D9DDC88DB92E723)
  %2 = load %struct.network*, %struct.network** %net.addr, l40 c25
  (w64 0x9D9DDC88DB92E723)
Collected value for `stop`
  Assignment asm ln 291, prod ln 40.17, live ln 41, enc 0
  %4 = bitcast %struct.node* %3 to i8*, l40 c17
  (w64 0x0)
Collected value for `node`
  Assignment asm ln 295, prod ln 40.42, live ln 41, enc 1
  %5 = load %struct.node*, %struct.node** %node, l40 c42
  (w64 0x0)
Collected value for `stop`
  Assignment asm ln 296, prod ln 40.59, live ln 41, enc 1
  %6 = load i8*, i8** %stop, l40 c59
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 314, prod ln 47.11, live ln 48, enc 3
  Concrete pointer resolves to refresh_neighbour_lists.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refresh_neighbour_lists.net.deref)
  Replaced concrete pointer with hash (w64 0x9D9DDC88DB92E723)
  %11 = load %struct.network*, %struct.network** %net.addr, l47 c11
  (w64 0x9D9DDC88DB92E723)
Collected value for `arc`
  Assignment asm ln 317, prod ln 47.16, live ln 48, enc 0
  %12 = load %struct.arc*, %struct.arc** %arcs, l47 c16
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 318, prod ln 48.12, live ln 49, enc 0
  i32 0
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 322, prod ln 48.17, live ln 49, enc 1
  %13 = load i32, i32* %i, l48 c17
  (w32 0x0)
Collected value for `net`
  Assignment asm ln 324, prod ln 48.21, live ln 49, enc 4
  Concrete pointer resolves to refresh_neighbour_lists.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refresh_neighbour_lists.net.deref)
  Replaced concrete pointer with hash (w64 0x9D9DDC88DB92E723)
  %14 = load %struct.network*, %struct.network** %net.addr, l48 c21
  (w64 0x9D9DDC88DB92E723)
Collected value for `arc`
  Assignment asm ln 331, prod ln 50.24, live ln 51, enc 1
  %16 = load %struct.arc*, %struct.arc** %arc, l50 c24
  (w64 0x0)
[0;1;31mKLEE: ERROR: mcfutil.c:50: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all before instructions

🔔 Unable to execute all before program states

#### After values

Collected value for `net`
  Assignment asm ln 241, prod ln 27.0, live ln 39, enc 0
  Concrete pointer resolves to refresh_neighbour_lists.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refresh_neighbour_lists.net.deref)
  Replaced concrete pointer with hash (w64 0x9D9DDC88DB92E723)
  %struct.network.2* %net
  (w64 0x9D9DDC88DB92E723)
Collected value for `getPos`
  Assignment asm ln 242, prod ln 27.0, live ln 39, enc 0
  Concrete pointer resolves to refresh_neighbour_lists.getPos.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refresh_neighbour_lists.getPos.deref)
  Replaced concrete pointer with hash (w64 0x78BB3F521365B165)
  i64 (%struct.network.2*, i64)* %getPos
  (w64 0x78BB3F521365B165)
Collected value for `node`
  Assignment asm ln 245, prod ln 39.17, live ln 40, enc 0
  %0 = load %struct.node.1*, %struct.node.1** %nodes, l39 c17
  (w64 0x0)
Collected value for `stop`
  Assignment asm ln 249, prod ln 40.17, live ln 41, enc 0
  %2 = bitcast %struct.node.1* %1 to i8*, l40 c17
  (w64 0x0)
Collected value for `node`
  Assignment asm ln 254, prod ln 40.69, live ln 41, enc 1
  %node.0 = phi %struct.node.1* [ %0, %entry ], [ %incdec.ptr, %for.body ]
  Block: 0
  (w64 0x0)
Collected value for `arc`
  Assignment asm ln 271, prod ln 47.16, live ln 48, enc 0
  %4 = load %struct.arc.0*, %struct.arc.0** %arcs, l47 c16
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 272, prod ln 36.0, live ln 48, enc 0
  i32 0
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 278, prod ln 48.30, live ln 49, enc 1
  %i.0 = phi i32 [ 0, %for.end ], [ %inc, %for.body4 ]
  Block: 0
  (w32 0x0)
Collected value for `arc`
  Assignment asm ln 279, prod ln 48.41, live ln 49, enc 1
  %arc.0 = phi %struct.arc.0* [ %4, %for.end ], [ %arrayidx, %for.body4 ]
  Block: 0
  (w64 0x0)
[0;1;31mKLEE: ERROR: mcfutil.c:50: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all after instructions

🔔 Unable to execute all after program states

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `net` (decl src ln 27)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 362, prod ln 48.41, live ln 49, enc None
  %31 = load %struct.network*, %struct.network** %net.addr, l48 c41
and
  assn asm ln 366, prod ln 48.58, live ln 49, enc None
  %34 = load %struct.network*, %struct.network** %net.addr, l48 c58
🔔 Removing: asm ln 362, prod ln 48.41, live ln 49, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 275, prod ln 27.0, live ln 39, enc 0
  %struct.network* %net
and
  assn asm ln 366, prod ln 48.58, live ln 49, enc None
  %34 = load %struct.network*, %struct.network** %net.addr, l48 c58

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 283, prod ln 39.12, live ln 40, enc 1
  %0 = load %struct.network*, %struct.network** %net.addr, l39 c12
  (w64 0x9D9DDC88DB92E723)
and
  assn asm ln 275, prod ln 27.0, live ln 39, enc 0
  %struct.network* %net
  (w64 0x9D9DDC88DB92E723)
🔔 Removing: asm ln 283, prod ln 39.12, live ln 40, enc 1

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 287, prod ln 40.25, live ln 41, enc 2
  %2 = load %struct.network*, %struct.network** %net.addr, l40 c25
  (w64 0x9D9DDC88DB92E723)
and
  assn asm ln 275, prod ln 27.0, live ln 39, enc 0
  %struct.network* %net
  (w64 0x9D9DDC88DB92E723)
🔔 Removing: asm ln 287, prod ln 40.25, live ln 41, enc 2

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 314, prod ln 47.11, live ln 48, enc 3
  %11 = load %struct.network*, %struct.network** %net.addr, l47 c11
  (w64 0x9D9DDC88DB92E723)
and
  assn asm ln 275, prod ln 27.0, live ln 39, enc 0
  %struct.network* %net
  (w64 0x9D9DDC88DB92E723)
🔔 Removing: asm ln 314, prod ln 47.11, live ln 48, enc 3

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 324, prod ln 48.21, live ln 49, enc 4
  %14 = load %struct.network*, %struct.network** %net.addr, l48 c21
  (w64 0x9D9DDC88DB92E723)
and
  assn asm ln 275, prod ln 27.0, live ln 39, enc 0
  %struct.network* %net
  (w64 0x9D9DDC88DB92E723)
🔔 Removing: asm ln 324, prod ln 48.21, live ln 49, enc 4

Filtering before assignments: `getPos` (decl src ln 27)

Expected 1 symbolic value(s), got 0
Checking equivalence of `getPos` (decl src ln 27) from
  assn asm ln 277, prod ln 27.0, live ln 39, enc 0
  i64 (%struct.network*, i64)* %getPos
and
  assn asm ln 365, prod ln 48.51, live ln 49, enc None
  %33 = load i64 (%struct.network*, i64)*, i64 (%struct.network*, i64)** %getPos.addr, l48 c51

Filtering before assignments: `node` (decl src ln 33)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 33) from
  assn asm ln 308, prod ln 40.69, live ln 41, enc None
  %10 = load %struct.node*, %struct.node** %node, l40 c69
and
  assn asm ln 310, prod ln 40.69, live ln 41, enc None
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %10, i32 1, l40 c69
🔔 Removing: asm ln 308, prod ln 40.69, live ln 41, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 33) from
  assn asm ln 305, prod ln 43.9, live ln 44, enc None
  %9 = load %struct.node*, %struct.node** %node, l43 c9
and
  assn asm ln 310, prod ln 40.69, live ln 41, enc None
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %10, i32 1, l40 c69
🔔 Removing: asm ln 305, prod ln 43.9, live ln 44, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 33) from
  assn asm ln 302, prod ln 42.9, live ln 43, enc None
  %8 = load %struct.node*, %struct.node** %node, l42 c9
and
  assn asm ln 310, prod ln 40.69, live ln 41, enc None
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %10, i32 1, l40 c69
🔔 Removing: asm ln 302, prod ln 42.9, live ln 43, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 33) from
  assn asm ln 286, prod ln 39.17, live ln 40, enc 0
  %1 = load %struct.node*, %struct.node** %nodes, l39 c17
and
  assn asm ln 310, prod ln 40.69, live ln 41, enc None
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %10, i32 1, l40 c69

Checking equivalence of `node` (decl src ln 33) from
  assn asm ln 295, prod ln 40.42, live ln 41, enc 1
  %5 = load %struct.node*, %struct.node** %node, l40 c42
  (w64 0x0)
and
  assn asm ln 286, prod ln 39.17, live ln 40, enc 0
  %1 = load %struct.node*, %struct.node** %nodes, l39 c17
  (w64 0x0)
🔔 Removing: asm ln 295, prod ln 40.42, live ln 41, enc 1

Filtering before assignments: `arc` (decl src ln 34)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 34) from
  assn asm ln 354, prod ln 53.9, live ln 54, enc None
  %28 = load %struct.arc*, %struct.arc** %arc, l53 c9
and
  assn asm ln 371, prod ln 48.41, live ln 49, enc None
  %arrayidx = getelementptr inbounds %struct.arc, %struct.arc* %32, i64 %call, l48 c41
🔔 Removing: asm ln 354, prod ln 53.9, live ln 54, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 34) from
  assn asm ln 353, prod ln 53.30, live ln 54, enc None
  %27 = load %struct.arc*, %struct.arc** %arc, l53 c30
and
  assn asm ln 371, prod ln 48.41, live ln 49, enc None
  %arrayidx = getelementptr inbounds %struct.arc, %struct.arc* %32, i64 %call, l48 c41
🔔 Removing: asm ln 353, prod ln 53.30, live ln 54, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 34) from
  assn asm ln 350, prod ln 52.9, live ln 53, enc None
  %26 = load %struct.arc*, %struct.arc** %arc, l52 c9
and
  assn asm ln 371, prod ln 48.41, live ln 49, enc None
  %arrayidx = getelementptr inbounds %struct.arc, %struct.arc* %32, i64 %call, l48 c41
🔔 Removing: asm ln 350, prod ln 52.9, live ln 53, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 34) from
  assn asm ln 345, prod ln 52.23, live ln 53, enc None
  %23 = load %struct.arc*, %struct.arc** %arc, l52 c23
and
  assn asm ln 371, prod ln 48.41, live ln 49, enc None
  %arrayidx = getelementptr inbounds %struct.arc, %struct.arc* %32, i64 %call, l48 c41
🔔 Removing: asm ln 345, prod ln 52.23, live ln 53, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 34) from
  assn asm ln 340, prod ln 51.9, live ln 52, enc None
  %21 = load %struct.arc*, %struct.arc** %arc, l51 c9
and
  assn asm ln 371, prod ln 48.41, live ln 49, enc None
  %arrayidx = getelementptr inbounds %struct.arc, %struct.arc* %32, i64 %call, l48 c41
🔔 Removing: asm ln 340, prod ln 51.9, live ln 52, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 34) from
  assn asm ln 339, prod ln 51.31, live ln 52, enc None
  %20 = load %struct.arc*, %struct.arc** %arc, l51 c31
and
  assn asm ln 371, prod ln 48.41, live ln 49, enc None
  %arrayidx = getelementptr inbounds %struct.arc, %struct.arc* %32, i64 %call, l48 c41
🔔 Removing: asm ln 339, prod ln 51.31, live ln 52, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 34) from
  assn asm ln 336, prod ln 50.9, live ln 51, enc None
  %19 = load %struct.arc*, %struct.arc** %arc, l50 c9
and
  assn asm ln 371, prod ln 48.41, live ln 49, enc None
  %arrayidx = getelementptr inbounds %struct.arc, %struct.arc* %32, i64 %call, l48 c41
🔔 Removing: asm ln 336, prod ln 50.9, live ln 51, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 34) from
  assn asm ln 317, prod ln 47.16, live ln 48, enc 0
  %12 = load %struct.arc*, %struct.arc** %arcs, l47 c16
and
  assn asm ln 371, prod ln 48.41, live ln 49, enc None
  %arrayidx = getelementptr inbounds %struct.arc, %struct.arc* %32, i64 %call, l48 c41

Checking equivalence of `arc` (decl src ln 34) from
  assn asm ln 331, prod ln 50.24, live ln 51, enc 1
  %16 = load %struct.arc*, %struct.arc** %arc, l50 c24
  (w64 0x0)
and
  assn asm ln 317, prod ln 47.16, live ln 48, enc 0
  %12 = load %struct.arc*, %struct.arc** %arcs, l47 c16
  (w64 0x0)
🔔 Removing: asm ln 331, prod ln 50.24, live ln 51, enc 1

Filtering before assignments: `stop` (decl src ln 35)

Checking equivalence of `stop` (decl src ln 35) from
  assn asm ln 296, prod ln 40.59, live ln 41, enc 1
  %6 = load i8*, i8** %stop, l40 c59
  (w64 0x0)
and
  assn asm ln 291, prod ln 40.17, live ln 41, enc 0
  %4 = bitcast %struct.node* %3 to i8*, l40 c17
  (w64 0x0)
🔔 Removing: asm ln 296, prod ln 40.59, live ln 41, enc 1

Filtering before assignments: `i` (decl src ln 36)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 361, prod ln 48.30, live ln 49, enc None
  %inc = add nsw i32 %30, 1, l48 c30
and
  assn asm ln 367, prod ln 48.63, live ln 49, enc None
  %35 = load i32, i32* %i, l48 c63
🔔 Removing: asm ln 361, prod ln 48.30, live ln 49, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 359, prod ln 48.30, live ln 49, enc None
  %30 = load i32, i32* %i, l48 c30
and
  assn asm ln 367, prod ln 48.63, live ln 49, enc None
  %35 = load i32, i32* %i, l48 c63
🔔 Removing: asm ln 359, prod ln 48.30, live ln 49, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 318, prod ln 48.12, live ln 49, enc 0
  i32 0
and
  assn asm ln 367, prod ln 48.63, live ln 49, enc None
  %35 = load i32, i32* %i, l48 c63

Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 322, prod ln 48.17, live ln 49, enc 1
  %13 = load i32, i32* %i, l48 c17
  (w32 0x0)
and
  assn asm ln 318, prod ln 48.12, live ln 49, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 322, prod ln 48.17, live ln 49, enc 1

Filtering after assignments: `node` (decl src ln 33)

Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 33) from
  assn asm ln 245, prod ln 39.17, live ln 40, enc 0
  %0 = load %struct.node.1*, %struct.node.1** %nodes, l39 c17
and
  assn asm ln 265, prod ln 40.69, live ln 41, enc None
  %incdec.ptr = getelementptr inbounds %struct.node.1, %struct.node.1* %node.0, i32 1, l40 c69

Checking equivalence of `node` (decl src ln 33) from
  assn asm ln 254, prod ln 40.69, live ln 41, enc 1
  %node.0 = phi %struct.node.1* [ %0, %entry ], [ %incdec.ptr, %for.body ]
  (w64 0x0)
and
  assn asm ln 245, prod ln 39.17, live ln 40, enc 0
  %0 = load %struct.node.1*, %struct.node.1** %nodes, l39 c17
  (w64 0x0)
🔔 Removing: asm ln 254, prod ln 40.69, live ln 41, enc 1

Filtering after assignments: `arc` (decl src ln 34)

Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 34) from
  assn asm ln 271, prod ln 47.16, live ln 48, enc 0
  %4 = load %struct.arc.0*, %struct.arc.0** %arcs, l47 c16
and
  assn asm ln 314, prod ln 48.41, live ln 49, enc None
  %arrayidx = getelementptr inbounds %struct.arc.0, %struct.arc.0* %12, i64 %call, l48 c41

Checking equivalence of `arc` (decl src ln 34) from
  assn asm ln 279, prod ln 48.41, live ln 49, enc 1
  %arc.0 = phi %struct.arc.0* [ %4, %for.end ], [ %arrayidx, %for.body4 ]
  (w64 0x0)
and
  assn asm ln 271, prod ln 47.16, live ln 48, enc 0
  %4 = load %struct.arc.0*, %struct.arc.0** %arcs, l47 c16
  (w64 0x0)
🔔 Removing: asm ln 279, prod ln 48.41, live ln 49, enc 1

Filtering after assignments: `i` (decl src ln 36)

Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 272, prod ln 36.0, live ln 48, enc 0
  i32 0
and
  assn asm ln 308, prod ln 48.30, live ln 49, enc None
  %inc = add nsw i32 %i.0, 1, l48 c30

Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 278, prod ln 48.30, live ln 49, enc 1
  %i.0 = phi i32 [ 0, %for.end ], [ %inc, %for.body4 ]
  (w32 0x0)
and
  assn asm ln 272, prod ln 36.0, live ln 48, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 278, prod ln 48.30, live ln 49, enc 1

Collating encountered before assignments: `net` (decl src ln 27)
❌ Assignment asm ln 366, prod ln 48.58, live ln 49, enc None for `net` (decl src ln 27) was not encountered during execution
  asm ln 275, prod ln 27.0, live ln 39, enc 0
Collating encountered before assignments: `getPos` (decl src ln 27)
❌ Assignment asm ln 365, prod ln 48.51, live ln 49, enc None for `getPos` (decl src ln 27) was not encountered during execution
  asm ln 277, prod ln 27.0, live ln 39, enc 0
Collating encountered before assignments: `node` (decl src ln 33)
❌ Assignment asm ln 310, prod ln 40.69, live ln 41, enc None for `node` (decl src ln 33) was not encountered during execution
  asm ln 286, prod ln 39.17, live ln 40, enc 0
Collating encountered before assignments: `arc` (decl src ln 34)
❌ Assignment asm ln 371, prod ln 48.41, live ln 49, enc None for `arc` (decl src ln 34) was not encountered during execution
  asm ln 317, prod ln 47.16, live ln 48, enc 0
Collating encountered before assignments: `stop` (decl src ln 35)
  asm ln 291, prod ln 40.17, live ln 41, enc 0
Collating encountered before assignments: `i` (decl src ln 36)
❌ Assignment asm ln 367, prod ln 48.63, live ln 49, enc None for `i` (decl src ln 36) was not encountered during execution
  asm ln 318, prod ln 48.12, live ln 49, enc 0

Collating encountered after assignments: `net` (decl src ln 27)
  asm ln 241, prod ln 27.0, live ln 39, enc 0
Collating encountered after assignments: `getPos` (decl src ln 27)
  asm ln 242, prod ln 27.0, live ln 39, enc 0
Collating encountered after assignments: `node` (decl src ln 33)
❌ Assignment asm ln 265, prod ln 40.69, live ln 41, enc None for `node` (decl src ln 33) was not encountered during execution
  asm ln 245, prod ln 39.17, live ln 40, enc 0
Collating encountered after assignments: `stop` (decl src ln 35)
  asm ln 249, prod ln 40.17, live ln 41, enc 0
Collating encountered after assignments: `arc` (decl src ln 34)
❌ Assignment asm ln 314, prod ln 48.41, live ln 49, enc None for `arc` (decl src ln 34) was not encountered during execution
  asm ln 271, prod ln 47.16, live ln 48, enc 0
Collating encountered after assignments: `i` (decl src ln 36)
❌ Assignment asm ln 308, prod ln 48.30, live ln 49, enc None for `i` (decl src ln 36) was not encountered during execution
  asm ln 272, prod ln 36.0, live ln 48, enc 0

#### Check after using before as reference

❌ Before assn asm ln 371, prod ln 48.41, live ln 49, enc None for `arc` (decl src ln 34) was not encountered during execution

❌ After assn asm ln 314, prod ln 48.41, live ln 49, enc None for `arc` (decl src ln 34) was not encountered during execution

Checking equivalence of `arc` (decl src ln 34) from
  assn asm ln 271, prod ln 47.16, live ln 48, enc 0
  %4 = load %struct.arc.0*, %struct.arc.0** %arcs, l47 c16
  (w64 0x0)
and
  assn asm ln 317, prod ln 47.16, live ln 48, enc 0
  %12 = load %struct.arc*, %struct.arc** %arcs, l47 c16
  (w64 0x0)
✅ Before `arc` (decl src ln 34) assn asm ln 317, prod ln 47.16, live ln 48, enc 0 symbolic value matches after assn asm ln 271, prod ln 47.16, live ln 48, enc 0

❌ After `arc` assns checked using before as reference
Assignments:         arc
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 365, prod ln 48.51, live ln 49, enc None for `getPos` (decl src ln 27) was not encountered during execution

Checking equivalence of `getPos` (decl src ln 27) from
  assn asm ln 242, prod ln 27.0, live ln 39, enc 0
  i64 (%struct.network.2*, i64)* %getPos
  (w64 0x78BB3F521365B165)
and
  assn asm ln 277, prod ln 27.0, live ln 39, enc 0
  i64 (%struct.network*, i64)* %getPos
  (w64 0x78BB3F521365B165)
✅ Before `getPos` (decl src ln 27) assn asm ln 277, prod ln 27.0, live ln 39, enc 0 symbolic value matches after assn asm ln 242, prod ln 27.0, live ln 39, enc 0

❌ After `getPos` assns checked using before as reference
Assignments:         getPos
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 367, prod ln 48.63, live ln 49, enc None for `i` (decl src ln 36) was not encountered during execution

❌ After assn asm ln 308, prod ln 48.30, live ln 49, enc None for `i` (decl src ln 36) was not encountered during execution

❌ Before `i` (decl src ln 36) assn asm ln 318, prod ln 48.12, live ln 49, enc 0 coordinates don't match after assn asm ln 272, prod ln 36.0, live ln 48, enc 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 272, prod ln 36.0, live ln 48, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 318, prod ln 48.12, live ln 49, enc 0
  i32 0
  (w32 0x0)
✅ Before `i` (decl src ln 36) assn asm ln 318, prod ln 48.12, live ln 49, enc 0 symbolic value matches after assn asm ln 272, prod ln 36.0, live ln 48, enc 0

❌ After `i` assns checked using before as reference
Assignments:         i
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 366, prod ln 48.58, live ln 49, enc None for `net` (decl src ln 27) was not encountered during execution

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 241, prod ln 27.0, live ln 39, enc 0
  %struct.network.2* %net
  (w64 0x9D9DDC88DB92E723)
and
  assn asm ln 275, prod ln 27.0, live ln 39, enc 0
  %struct.network* %net
  (w64 0x9D9DDC88DB92E723)
✅ Before `net` (decl src ln 27) assn asm ln 275, prod ln 27.0, live ln 39, enc 0 symbolic value matches after assn asm ln 241, prod ln 27.0, live ln 39, enc 0

❌ After `net` assns checked using before as reference
Assignments:         net
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 310, prod ln 40.69, live ln 41, enc None for `node` (decl src ln 33) was not encountered during execution

❌ After assn asm ln 265, prod ln 40.69, live ln 41, enc None for `node` (decl src ln 33) was not encountered during execution

Checking equivalence of `node` (decl src ln 33) from
  assn asm ln 245, prod ln 39.17, live ln 40, enc 0
  %0 = load %struct.node.1*, %struct.node.1** %nodes, l39 c17
  (w64 0x0)
and
  assn asm ln 286, prod ln 39.17, live ln 40, enc 0
  %1 = load %struct.node*, %struct.node** %nodes, l39 c17
  (w64 0x0)
✅ Before `node` (decl src ln 33) assn asm ln 286, prod ln 39.17, live ln 40, enc 0 symbolic value matches after assn asm ln 245, prod ln 39.17, live ln 40, enc 0

❌ After `node` assns checked using before as reference
Assignments:         node
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `stop` (decl src ln 35) from
  assn asm ln 249, prod ln 40.17, live ln 41, enc 0
  %2 = bitcast %struct.node.1* %1 to i8*, l40 c17
  (w64 0x0)
and
  assn asm ln 291, prod ln 40.17, live ln 41, enc 0
  %4 = bitcast %struct.node* %3 to i8*, l40 c17
  (w64 0x0)
✅ Before `stop` (decl src ln 35) assn asm ln 291, prod ln 40.17, live ln 41, enc 0 symbolic value matches after assn asm ln 249, prod ln 40.17, live ln 41, enc 0

✅ After `stop` assns checked using before as reference
Assignments:         stop
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

## Function `flow_cost`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `net` (decl src ln 61), asm ln 587
  %58 = load %struct.network*, %struct.network** %net.addr, l118 c36, asm ln 587
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 587, prod ln 118.36, live ln 119, enc None
Load from declared address of `net` (decl src ln 61), asm ln 554
  %48 = load %struct.network*, %struct.network** %net.addr, l108 c56, asm ln 554
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 554, prod ln 108.56, live ln 109, enc None
Load from declared address of `net` (decl src ln 61), asm ln 495
  %28 = load %struct.network*, %struct.network** %net.addr, l100 c21, asm ln 495
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 495, prod ln 100.21, live ln 101, enc None
Load from declared address of `net` (decl src ln 61), asm ln 485
  %25 = load %struct.network*, %struct.network** %net.addr, l96 c11, asm ln 485
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 485, prod ln 96.11, live ln 97, enc None
Load from declared address of `net` (decl src ln 61), asm ln 458
  %16 = load %struct.network*, %struct.network** %net.addr, l92 c22, asm ln 458
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 458, prod ln 92.22, live ln 93, enc None
Load from declared address of `net` (decl src ln 61), asm ln 448
  %13 = load %struct.network*, %struct.network** %net.addr, l87 c12, asm ln 448
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 448, prod ln 87.12, live ln 88, enc None
Load from declared address of `net` (decl src ln 61), asm ln 406
  %3 = load %struct.network*, %struct.network** %net.addr, l79 c21, asm ln 406
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 406, prod ln 79.21, live ln 80, enc None
Load from declared address of `net` (decl src ln 61), asm ln 396
  %0 = load %struct.network*, %struct.network** %net.addr, l75 c11, asm ln 396
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 396, prod ln 75.11, live ln 76, enc None
Store to declared address of `net` (decl src ln 61), asm ln 387
  arg 0
  Added assignment asm ln 387, prod ln 61.0, live ln 70, enc None
Load from declared address of `arc` (decl src ln 67), asm ln 567
  %52 = load %struct.arc*, %struct.arc** %arc, l112 c41, asm ln 567
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 567, prod ln 112.41, live ln 113, enc None
Load from declared address of `arc` (decl src ln 67), asm ln 548
  %45 = load %struct.arc*, %struct.arc** %arc, l108 c42, asm ln 548
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 548, prod ln 108.42, live ln 109, enc None
Load from declared address of `arc` (decl src ln 67), asm ln 536
  %41 = load %struct.arc*, %struct.arc** %arc, l106 c22, asm ln 536
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 536, prod ln 106.22, live ln 107, enc None
Load from declared address of `arc` (decl src ln 67), asm ln 524
  %37 = load %struct.arc*, %struct.arc** %arc, l104 c46, asm ln 524
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 524, prod ln 104.46, live ln 105, enc None
Load from declared address of `arc` (decl src ln 67), asm ln 512
  %33 = load %struct.arc*, %struct.arc** %arc, l104 c19, asm ln 512
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 512, prod ln 104.19, live ln 105, enc None
Load from declared address of `arc` (decl src ln 67), asm ln 502
  %30 = load %struct.arc*, %struct.arc** %arc, l102 c13, asm ln 502
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 502, prod ln 102.13, live ln 103, enc None
Store to declared address of `arc` (decl src ln 67), asm ln 488
  %26 = load %struct.arc*, %struct.arc** %arcs24, l96 c16, asm ln 487
  Added assignment asm ln 488, prod ln 96.16, live ln 100, enc None
Load from declared address of `arc` (decl src ln 67), asm ln 433
  %10 = load %struct.arc*, %struct.arc** %arc, l84 c13, asm ln 433
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 433, prod ln 84.13, live ln 85, enc None
Load from declared address of `arc` (decl src ln 67), asm ln 424
  %8 = load %struct.arc*, %struct.arc** %arc, l82 c13, asm ln 424
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 424, prod ln 82.13, live ln 83, enc None
Load from declared address of `arc` (decl src ln 67), asm ln 413
  %5 = load %struct.arc*, %struct.arc** %arc, l81 c13, asm ln 413
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 413, prod ln 81.13, live ln 82, enc None
Store to declared address of `arc` (decl src ln 67), asm ln 399
  %1 = load %struct.arc*, %struct.arc** %arcs, l75 c16, asm ln 398
  Added assignment asm ln 399, prod ln 75.16, live ln 79, enc None
Load from declared address of `node` (decl src ln 68), asm ln 471
  %21 = load %struct.node*, %struct.node** %node, l93 c9, asm ln 471
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 471, prod ln 93.9, live ln 94, enc None
Load from declared address of `node` (decl src ln 68), asm ln 465
  %18 = load %struct.node*, %struct.node** %node, l93 c35, asm ln 465
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 465, prod ln 93.35, live ln 94, enc None
Store to declared address of `node` (decl src ln 68), asm ln 451
  %14 = load %struct.node*, %struct.node** %nodes, l87 c17, asm ln 450
  Added assignment asm ln 451, prod ln 87.17, live ln 92, enc None
Load from declared address of `fleet` (decl src ln 70), asm ln 585
  %57 = load i64, i64* %fleet, l118 c20, asm ln 585
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 585, prod ln 118.20, live ln 119, enc None
Store to declared address of `fleet` (decl src ln 70), asm ln 563
  %inc53 = add nsw i64 %51, 1, l109 c26, asm ln 562
  Added assignment asm ln 563, prod ln 109.26, live ln 110, enc None
Load from declared address of `fleet` (decl src ln 70), asm ln 561
  %51 = load i64, i64* %fleet, l109 c26, asm ln 561
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 561, prod ln 109.26, live ln 110, enc None
Store to declared address of `fleet` (decl src ln 70), asm ln 392
  const i64 0
  Added assignment asm ln 392, prod ln 70.10, live ln 72, enc None
Store to declared address of `i` (decl src ln 71), asm ln 581
  %inc63 = add nsw i32 %56, 1, l100 c30, asm ln 580
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 581, prod ln 100.30, live ln 101, enc None
Load from declared address of `i` (decl src ln 71), asm ln 579
  %56 = load i32, i32* %i, l100 c30, asm ln 579
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 579, prod ln 100.30, live ln 101, enc None
Load from declared address of `i` (decl src ln 71), asm ln 568
  %53 = load i32, i32* %i, l112 c45, asm ln 568
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 568, prod ln 112.45, live ln 113, enc None
Load from declared address of `i` (decl src ln 71), asm ln 549
  %46 = load i32, i32* %i, l108 c46, asm ln 549
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 549, prod ln 108.46, live ln 109, enc None
Load from declared address of `i` (decl src ln 71), asm ln 537
  %42 = load i32, i32* %i, l106 c26, asm ln 537
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 537, prod ln 106.26, live ln 107, enc None
Load from declared address of `i` (decl src ln 71), asm ln 525
  %38 = load i32, i32* %i, l104 c50, asm ln 525
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 525, prod ln 104.50, live ln 105, enc None
Load from declared address of `i` (decl src ln 71), asm ln 513
  %34 = load i32, i32* %i, l104 c23, asm ln 513
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 513, prod ln 104.23, live ln 105, enc None
Load from declared address of `i` (decl src ln 71), asm ln 503
  %31 = load i32, i32* %i, l102 c17, asm ln 503
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 503, prod ln 102.17, live ln 103, enc None
Load from declared address of `i` (decl src ln 71), asm ln 493
  %27 = load i32, i32* %i, l100 c17, asm ln 493
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 493, prod ln 100.17, live ln 101, enc None
Store to declared address of `i` (decl src ln 71), asm ln 489
  const i32 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 489, prod ln 100.12, live ln 101, enc None
Store to declared address of `i` (decl src ln 71), asm ln 481
  %inc22 = add nsw i32 %24, 1, l92 c31, asm ln 480
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 481, prod ln 92.31, live ln 93, enc None
Load from declared address of `i` (decl src ln 71), asm ln 479
  %24 = load i32, i32* %i, l92 c31, asm ln 479
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 479, prod ln 92.31, live ln 93, enc None
Load from declared address of `i` (decl src ln 71), asm ln 472
  %22 = load i32, i32* %i, l93 c14, asm ln 472
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 472, prod ln 93.14, live ln 94, enc None
Load from declared address of `i` (decl src ln 71), asm ln 466
  %19 = load i32, i32* %i, l93 c40, asm ln 466
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 466, prod ln 93.40, live ln 94, enc None
Load from declared address of `i` (decl src ln 71), asm ln 456
  %15 = load i32, i32* %i, l92 c17, asm ln 456
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 456, prod ln 92.17, live ln 93, enc None
Store to declared address of `i` (decl src ln 71), asm ln 452
  const i32 1
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 452, prod ln 92.12, live ln 93, enc None
Store to declared address of `i` (decl src ln 71), asm ln 444
  %inc = add nsw i32 %12, 1, l79 c31, asm ln 443
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 444, prod ln 79.31, live ln 80, enc None
Load from declared address of `i` (decl src ln 71), asm ln 442
  %12 = load i32, i32* %i, l79 c31, asm ln 442
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 442, prod ln 79.31, live ln 80, enc None
Load from declared address of `i` (decl src ln 71), asm ln 434
  %11 = load i32, i32* %i, l84 c17, asm ln 434
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 434, prod ln 84.17, live ln 85, enc None
Load from declared address of `i` (decl src ln 71), asm ln 425
  %9 = load i32, i32* %i, l82 c17, asm ln 425
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 425, prod ln 82.17, live ln 83, enc None
Load from declared address of `i` (decl src ln 71), asm ln 414
  %6 = load i32, i32* %i, l81 c17, asm ln 414
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 414, prod ln 81.17, live ln 82, enc None
Load from declared address of `i` (decl src ln 71), asm ln 404
  %2 = load i32, i32* %i, l79 c17, asm ln 404
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 404, prod ln 79.17, live ln 80, enc None
Store to declared address of `i` (decl src ln 71), asm ln 400
  const i32 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 400, prod ln 79.12, live ln 80, enc None
Load from declared address of `operational_cost` (decl src ln 72), asm ln 592
  %60 = load i64, i64* %operational_cost, l118 c56, asm ln 592
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 592, prod ln 118.56, live ln 119, enc None
Store to declared address of `operational_cost` (decl src ln 72), asm ln 575
  %add58 = add nsw i64 %55, %54, l112 c38, asm ln 574
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 575, prod ln 112.38, live ln 113, enc None
Load from declared address of `operational_cost` (decl src ln 72), asm ln 573
  %55 = load i64, i64* %operational_cost, l112 c38, asm ln 573
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 573, prod ln 112.38, live ln 113, enc None
Store to declared address of `operational_cost` (decl src ln 72), asm ln 560
  %add = add nsw i64 %50, %sub, l108 c38, asm ln 559
  Added assignment asm ln 560, prod ln 108.38, live ln 109, enc None
Load from declared address of `operational_cost` (decl src ln 72), asm ln 558
  %50 = load i64, i64* %operational_cost, l108 c38, asm ln 558
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 558, prod ln 108.38, live ln 109, enc None
Store to declared address of `operational_cost` (decl src ln 72), asm ln 395
  const i64 0
  Added assignment asm ln 395, prod ln 72.12, live ln 75, enc None

#### After variables

Value produced for `net` (decl src ln 61), asm ln 324
  arg 0
  Added assignment asm ln 324, prod ln 61.0, live ln 75, enc None
Value produced for `fleet` (decl src ln 70), asm ln 325
  const i64 0
  Added assignment asm ln 325, prod ln 70.0, live ln 75, enc None
Value produced for `operational_cost` (decl src ln 72), asm ln 326
  const i64 0
  Added assignment asm ln 326, prod ln 72.0, live ln 75, enc None
Value produced for `arc` (decl src ln 67), asm ln 329
  %0 = load %struct.arc.0*, %struct.arc.0** %arcs, l75 c16, asm ln 328
  Added assignment asm ln 329, prod ln 75.16, live ln 79, enc None
Value produced for `i` (decl src ln 71), asm ln 330
  const i32 0
  Added assignment asm ln 330, prod ln 71.0, live ln 79, enc None
Value produced for `i` (decl src ln 71), asm ln 367
  %inc = add nsw i32 %i.0, 1, l79 c31, asm ln 366
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 367, prod ln 79.31, live ln 80, enc None
Value produced for `node` (decl src ln 68), asm ln 373
  %3 = load %struct.node.1*, %struct.node.1** %nodes, l87 c17, asm ln 372
  Added assignment asm ln 373, prod ln 87.17, live ln 92, enc None
Value produced for `i` (decl src ln 71), asm ln 374
  const i32 1
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 374, prod ln 71.0, live ln 92, enc None
Value produced for `i` (decl src ln 71), asm ln 398
  %inc22 = add nsw i32 %i.1, 1, l92 c31, asm ln 397
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 398, prod ln 92.31, live ln 93, enc None
Value produced for `arc` (decl src ln 67), asm ln 404
  %7 = load %struct.arc.0*, %struct.arc.0** %arcs24, l96 c16, asm ln 403
  Added assignment asm ln 404, prod ln 96.16, live ln 100, enc None
Value produced for `i` (decl src ln 71), asm ln 405
  const i32 0
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 405, prod ln 71.0, live ln 100, enc None
Value produced for `operational_cost` (decl src ln 72), asm ln 468
  %add = add nsw i64 %operational_cost.0, %sub, l108 c38, asm ln 467
  Added assignment asm ln 468, prod ln 108.38, live ln 109, enc None
Value produced for `fleet` (decl src ln 70), asm ln 470
  %inc53 = add nsw i64 %fleet.0, 1, l109 c26, asm ln 469
  Added assignment asm ln 470, prod ln 109.26, live ln 110, enc None
Value produced for `operational_cost` (decl src ln 72), asm ln 479
  %add58 = add nsw i64 %operational_cost.0, %18, l112 c38, asm ln 478
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 479, prod ln 112.38, live ln 113, enc None
Value produced for `i` (decl src ln 71), asm ln 488
  %inc63 = add nsw i32 %i.2, 1, l100 c30, asm ln 487
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 488, prod ln 100.30, live ln 101, enc None
Value produced for `i` (decl src ln 71), asm ln 335
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], asm ln 334
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 335, prod ln 79.31, live ln 80, enc None
Value produced for `i` (decl src ln 71), asm ln 379
  %i.1 = phi i32 [ 1, %for.end ], [ %inc22, %for.body14 ], asm ln 378
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 379, prod ln 92.31, live ln 93, enc None
Value produced for `operational_cost` (decl src ln 72), asm ln 412
  %operational_cost.0 = phi i64 [ 0, %for.end23 ], [ %operational_cost.3, %for.inc62 ], l72 c12, asm ln 411
  Added assignment asm ln 412, prod ln 72.12, live ln 100, enc None
Value produced for `i` (decl src ln 71), asm ln 413
  %i.2 = phi i32 [ 0, %for.end23 ], [ %inc63, %for.inc62 ], asm ln 410
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 413, prod ln 100.30, live ln 101, enc None
Value produced for `fleet` (decl src ln 70), asm ln 414
  %fleet.0 = phi i64 [ 0, %for.end23 ], [ %fleet.3, %for.inc62 ], l70 c10, asm ln 409
  Added assignment asm ln 414, prod ln 70.10, live ln 100, enc None
Value produced for `operational_cost` (decl src ln 72), asm ln 485
  %operational_cost.3 = phi i64 [ %operational_cost.0, %for.body30 ], [ %operational_cost.0, %land.lhs.true ], [ %add58, %if.else54 ], [ %add, %if.then50 ], l72 c12, asm ln 484
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 485, prod ln 112.38, live ln 113, enc None
Value produced for `fleet` (decl src ln 70), asm ln 486
  %fleet.3 = phi i64 [ %fleet.0, %for.body30 ], [ %fleet.0, %land.lhs.true ], [ %fleet.0, %if.else54 ], [ %inc53, %if.then50 ], l70 c10, asm ln 483
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 486, prod ln 109.26, live ln 110, enc None

#### Summary

✅ 6 before variables found, 6 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `net`
  Assignment asm ln 387, prod ln 61.0, live ln 70, enc 0
  Concrete pointer resolves to flow_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_cost.net.deref)
  Replaced concrete pointer with hash (w64 0x41523C7BC3B9B877)
  %struct.network* %net
  (w64 0x41523C7BC3B9B877)
Collected value for `fleet`
  Assignment asm ln 392, prod ln 70.10, live ln 72, enc 0
  i64 0
  (w64 0x0)
Collected value for `operational_cost`
  Assignment asm ln 395, prod ln 72.12, live ln 75, enc 0
  i64 0
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 396, prod ln 75.11, live ln 76, enc 1
  Concrete pointer resolves to flow_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_cost.net.deref)
  Replaced concrete pointer with hash (w64 0x41523C7BC3B9B877)
  %0 = load %struct.network*, %struct.network** %net.addr, l75 c11
  (w64 0x41523C7BC3B9B877)
Collected value for `arc`
  Assignment asm ln 399, prod ln 75.16, live ln 79, enc 0
  %1 = load %struct.arc*, %struct.arc** %arcs, l75 c16
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 400, prod ln 79.12, live ln 80, enc 0
  i32 0
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 404, prod ln 79.17, live ln 80, enc 1
  %2 = load i32, i32* %i, l79 c17
  (w32 0x0)
Collected value for `net`
  Assignment asm ln 406, prod ln 79.21, live ln 80, enc 2
  Concrete pointer resolves to flow_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_cost.net.deref)
  Replaced concrete pointer with hash (w64 0x41523C7BC3B9B877)
  %3 = load %struct.network*, %struct.network** %net.addr, l79 c21
  (w64 0x41523C7BC3B9B877)
Collected value for `net`
  Assignment asm ln 448, prod ln 87.12, live ln 88, enc 3
  Concrete pointer resolves to flow_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_cost.net.deref)
  Replaced concrete pointer with hash (w64 0x41523C7BC3B9B877)
  %13 = load %struct.network*, %struct.network** %net.addr, l87 c12
  (w64 0x41523C7BC3B9B877)
Collected value for `arc`
  Assignment asm ln 413, prod ln 81.13, live ln 82, enc 1
  %5 = load %struct.arc*, %struct.arc** %arc, l81 c13
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 414, prod ln 81.17, live ln 82, enc 2
  %6 = load i32, i32* %i, l81 c17
  (w32 0x0)
Collected value for `node`
  Assignment asm ln 451, prod ln 87.17, live ln 92, enc 0
  %14 = load %struct.node*, %struct.node** %nodes, l87 c17
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 452, prod ln 92.12, live ln 93, enc 3
  i32 1
  (w32 0x1)
Collected value for `i`
  Assignment asm ln 456, prod ln 92.17, live ln 93, enc 4
  %15 = load i32, i32* %i, l92 c17
  (w32 0x1)
[0;1;31mKLEE: ERROR: mcfutil.c:81: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `net`
  Assignment asm ln 458, prod ln 92.22, live ln 93, enc 4
  Concrete pointer resolves to flow_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_cost.net.deref)
  Replaced concrete pointer with hash (w64 0x41523C7BC3B9B877)
  %16 = load %struct.network*, %struct.network** %net.addr, l92 c22
  (w64 0x41523C7BC3B9B877)
Collected value for `node`
  Assignment asm ln 465, prod ln 93.35, live ln 94, enc 1
  %18 = load %struct.node*, %struct.node** %node, l93 c35
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 485, prod ln 96.11, live ln 97, enc 5
  Concrete pointer resolves to flow_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_cost.net.deref)
  Replaced concrete pointer with hash (w64 0x41523C7BC3B9B877)
  %25 = load %struct.network*, %struct.network** %net.addr, l96 c11
  (w64 0x41523C7BC3B9B877)
Collected value for `arc`
  Assignment asm ln 488, prod ln 96.16, live ln 100, enc 2
  %26 = load %struct.arc*, %struct.arc** %arcs24, l96 c16
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 489, prod ln 100.12, live ln 101, enc 5
  i32 0
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 466, prod ln 93.40, live ln 94, enc 6
  %19 = load i32, i32* %i, l93 c40
  (w32 0x1)
Collected value for `i`
  Assignment asm ln 493, prod ln 100.17, live ln 101, enc 7
  %27 = load i32, i32* %i, l100 c17
  (w32 0x0)
Collected value for `net`
  Assignment asm ln 495, prod ln 100.21, live ln 101, enc 6
  Concrete pointer resolves to flow_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_cost.net.deref)
  Replaced concrete pointer with hash (w64 0x41523C7BC3B9B877)
  %28 = load %struct.network*, %struct.network** %net.addr, l100 c21
  (w64 0x41523C7BC3B9B877)
[0;1;31mKLEE: ERROR: mcfutil.c:93: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `fleet`
  Assignment asm ln 585, prod ln 118.20, live ln 119, enc 1
  %57 = load i64, i64* %fleet, l118 c20
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 587, prod ln 118.36, live ln 119, enc 7
  Concrete pointer resolves to flow_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_cost.net.deref)
  Replaced concrete pointer with hash (w64 0x41523C7BC3B9B877)
  %58 = load %struct.network*, %struct.network** %net.addr, l118 c36
  (w64 0x41523C7BC3B9B877)
[0;1;35mKLEE: WARNING ONCE: silently concretizing (reason: floating point) expression (ReadLSB w64 (w32 0x210) flow_cost.net.deref) to value (w64 0x0) (mcfutil.c:118)
[0mCollected value for `operational_cost`
  Assignment asm ln 592, prod ln 118.56, live ln 119, enc 1
  %60 = load i64, i64* %operational_cost, l118 c56
  (w64 0x0)

🔔 Unable to execute all before instructions

🔔 Unable to execute all before program states

#### After values

Collected value for `net`
  Assignment asm ln 324, prod ln 61.0, live ln 75, enc 0
  Concrete pointer resolves to flow_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_cost.net.deref)
  Replaced concrete pointer with hash (w64 0x41523C7BC3B9B877)
  %struct.network.2* %net
  (w64 0x41523C7BC3B9B877)
Collected value for `fleet`
  Assignment asm ln 325, prod ln 70.0, live ln 75, enc 0
  i64 0
  (w64 0x0)
Collected value for `operational_cost`
  Assignment asm ln 326, prod ln 72.0, live ln 75, enc 0
  i64 0
  (w64 0x0)
Collected value for `arc`
  Assignment asm ln 329, prod ln 75.16, live ln 79, enc 0
  %0 = load %struct.arc.0*, %struct.arc.0** %arcs, l75 c16
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 330, prod ln 71.0, live ln 79, enc 0
  i32 0
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 335, prod ln 79.31, live ln 80, enc 1
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  Block: 0
  (w32 0x0)
Collected value for `node`
  Assignment asm ln 373, prod ln 87.17, live ln 92, enc 0
  %3 = load %struct.node.1*, %struct.node.1** %nodes, l87 c17
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 374, prod ln 71.0, live ln 92, enc 2
  i32 1
  (w32 0x1)
[0;1;31mKLEE: ERROR: mcfutil.c:81: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `i`
  Assignment asm ln 379, prod ln 92.31, live ln 93, enc 3
  %i.1 = phi i32 [ 1, %for.end ], [ %inc22, %for.body14 ]
  Block: 0
  (w32 0x1)
Collected value for `arc`
  Assignment asm ln 404, prod ln 96.16, live ln 100, enc 1
  %7 = load %struct.arc.0*, %struct.arc.0** %arcs24, l96 c16
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 405, prod ln 71.0, live ln 100, enc 4
  i32 0
  (w32 0x0)
[0;1;31mKLEE: ERROR: mcfutil.c:93: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `operational_cost`
  Assignment asm ln 412, prod ln 72.12, live ln 100, enc 1
  %operational_cost.0 = phi i64 [ 0, %for.end23 ], [ %operational_cost.3, %for.inc62 ], l72 c12
  Block: 0
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 413, prod ln 100.30, live ln 101, enc 5
  %i.2 = phi i32 [ 0, %for.end23 ], [ %inc63, %for.inc62 ]
  Block: 0
  (w32 0x0)
Collected value for `fleet`
  Assignment asm ln 414, prod ln 70.10, live ln 100, enc 1
  %fleet.0 = phi i64 [ 0, %for.end23 ], [ %fleet.3, %for.inc62 ], l70 c10
  Block: 0
  (w64 0x0)

🔔 Unable to execute all after instructions

🔔 Unable to execute all after program states

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `net` (decl src ln 61)

Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 61) from
  assn asm ln 387, prod ln 61.0, live ln 70, enc 0
  %struct.network* %net
and
  assn asm ln 554, prod ln 108.56, live ln 109, enc None
  %48 = load %struct.network*, %struct.network** %net.addr, l108 c56

Checking equivalence of `net` (decl src ln 61) from
  assn asm ln 396, prod ln 75.11, live ln 76, enc 1
  %0 = load %struct.network*, %struct.network** %net.addr, l75 c11
  (w64 0x41523C7BC3B9B877)
and
  assn asm ln 387, prod ln 61.0, live ln 70, enc 0
  %struct.network* %net
  (w64 0x41523C7BC3B9B877)
🔔 Removing: asm ln 396, prod ln 75.11, live ln 76, enc 1

Checking equivalence of `net` (decl src ln 61) from
  assn asm ln 406, prod ln 79.21, live ln 80, enc 2
  %3 = load %struct.network*, %struct.network** %net.addr, l79 c21
  (w64 0x41523C7BC3B9B877)
and
  assn asm ln 387, prod ln 61.0, live ln 70, enc 0
  %struct.network* %net
  (w64 0x41523C7BC3B9B877)
🔔 Removing: asm ln 406, prod ln 79.21, live ln 80, enc 2

Checking equivalence of `net` (decl src ln 61) from
  assn asm ln 448, prod ln 87.12, live ln 88, enc 3
  %13 = load %struct.network*, %struct.network** %net.addr, l87 c12
  (w64 0x41523C7BC3B9B877)
and
  assn asm ln 387, prod ln 61.0, live ln 70, enc 0
  %struct.network* %net
  (w64 0x41523C7BC3B9B877)
🔔 Removing: asm ln 448, prod ln 87.12, live ln 88, enc 3

Checking equivalence of `net` (decl src ln 61) from
  assn asm ln 458, prod ln 92.22, live ln 93, enc 4
  %16 = load %struct.network*, %struct.network** %net.addr, l92 c22
  (w64 0x41523C7BC3B9B877)
and
  assn asm ln 387, prod ln 61.0, live ln 70, enc 0
  %struct.network* %net
  (w64 0x41523C7BC3B9B877)
🔔 Removing: asm ln 458, prod ln 92.22, live ln 93, enc 4

Checking equivalence of `net` (decl src ln 61) from
  assn asm ln 485, prod ln 96.11, live ln 97, enc 5
  %25 = load %struct.network*, %struct.network** %net.addr, l96 c11
  (w64 0x41523C7BC3B9B877)
and
  assn asm ln 387, prod ln 61.0, live ln 70, enc 0
  %struct.network* %net
  (w64 0x41523C7BC3B9B877)
🔔 Removing: asm ln 485, prod ln 96.11, live ln 97, enc 5

Checking equivalence of `net` (decl src ln 61) from
  assn asm ln 495, prod ln 100.21, live ln 101, enc 6
  %28 = load %struct.network*, %struct.network** %net.addr, l100 c21
  (w64 0x41523C7BC3B9B877)
and
  assn asm ln 387, prod ln 61.0, live ln 70, enc 0
  %struct.network* %net
  (w64 0x41523C7BC3B9B877)
🔔 Removing: asm ln 495, prod ln 100.21, live ln 101, enc 6

Checking equivalence of `net` (decl src ln 61) from
  assn asm ln 587, prod ln 118.36, live ln 119, enc 7
  %58 = load %struct.network*, %struct.network** %net.addr, l118 c36
  (w64 0x41523C7BC3B9B877)
and
  assn asm ln 387, prod ln 61.0, live ln 70, enc 0
  %struct.network* %net
  (w64 0x41523C7BC3B9B877)
🔔 Removing: asm ln 587, prod ln 118.36, live ln 119, enc 7

Filtering before assignments: `arc` (decl src ln 67)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 67) from
  assn asm ln 548, prod ln 108.42, live ln 109, enc None
  %45 = load %struct.arc*, %struct.arc** %arc, l108 c42
and
  assn asm ln 567, prod ln 112.41, live ln 113, enc None
  %52 = load %struct.arc*, %struct.arc** %arc, l112 c41
🔔 Removing: asm ln 548, prod ln 108.42, live ln 109, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 67) from
  assn asm ln 536, prod ln 106.22, live ln 107, enc None
  %41 = load %struct.arc*, %struct.arc** %arc, l106 c22
and
  assn asm ln 567, prod ln 112.41, live ln 113, enc None
  %52 = load %struct.arc*, %struct.arc** %arc, l112 c41
🔔 Removing: asm ln 536, prod ln 106.22, live ln 107, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 67) from
  assn asm ln 524, prod ln 104.46, live ln 105, enc None
  %37 = load %struct.arc*, %struct.arc** %arc, l104 c46
and
  assn asm ln 567, prod ln 112.41, live ln 113, enc None
  %52 = load %struct.arc*, %struct.arc** %arc, l112 c41
🔔 Removing: asm ln 524, prod ln 104.46, live ln 105, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 67) from
  assn asm ln 512, prod ln 104.19, live ln 105, enc None
  %33 = load %struct.arc*, %struct.arc** %arc, l104 c19
and
  assn asm ln 567, prod ln 112.41, live ln 113, enc None
  %52 = load %struct.arc*, %struct.arc** %arc, l112 c41
🔔 Removing: asm ln 512, prod ln 104.19, live ln 105, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 67) from
  assn asm ln 502, prod ln 102.13, live ln 103, enc None
  %30 = load %struct.arc*, %struct.arc** %arc, l102 c13
and
  assn asm ln 567, prod ln 112.41, live ln 113, enc None
  %52 = load %struct.arc*, %struct.arc** %arc, l112 c41
🔔 Removing: asm ln 502, prod ln 102.13, live ln 103, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 67) from
  assn asm ln 424, prod ln 82.13, live ln 83, enc None
  %8 = load %struct.arc*, %struct.arc** %arc, l82 c13
and
  assn asm ln 567, prod ln 112.41, live ln 113, enc None
  %52 = load %struct.arc*, %struct.arc** %arc, l112 c41
🔔 Removing: asm ln 424, prod ln 82.13, live ln 83, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 67) from
  assn asm ln 433, prod ln 84.13, live ln 85, enc None
  %10 = load %struct.arc*, %struct.arc** %arc, l84 c13
and
  assn asm ln 567, prod ln 112.41, live ln 113, enc None
  %52 = load %struct.arc*, %struct.arc** %arc, l112 c41
🔔 Removing: asm ln 433, prod ln 84.13, live ln 85, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 67) from
  assn asm ln 399, prod ln 75.16, live ln 79, enc 0
  %1 = load %struct.arc*, %struct.arc** %arcs, l75 c16
and
  assn asm ln 567, prod ln 112.41, live ln 113, enc None
  %52 = load %struct.arc*, %struct.arc** %arc, l112 c41

Checking equivalence of `arc` (decl src ln 67) from
  assn asm ln 413, prod ln 81.13, live ln 82, enc 1
  %5 = load %struct.arc*, %struct.arc** %arc, l81 c13
  (w64 0x0)
and
  assn asm ln 399, prod ln 75.16, live ln 79, enc 0
  %1 = load %struct.arc*, %struct.arc** %arcs, l75 c16
  (w64 0x0)
🔔 Removing: asm ln 413, prod ln 81.13, live ln 82, enc 1

Checking equivalence of `arc` (decl src ln 67) from
  assn asm ln 488, prod ln 96.16, live ln 100, enc 2
  %26 = load %struct.arc*, %struct.arc** %arcs24, l96 c16
  (w64 0x0)
and
  assn asm ln 399, prod ln 75.16, live ln 79, enc 0
  %1 = load %struct.arc*, %struct.arc** %arcs, l75 c16
  (w64 0x0)
🔔 Removing: asm ln 488, prod ln 96.16, live ln 100, enc 2

Filtering before assignments: `node` (decl src ln 68)

Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 68) from
  assn asm ln 451, prod ln 87.17, live ln 92, enc 0
  %14 = load %struct.node*, %struct.node** %nodes, l87 c17
and
  assn asm ln 471, prod ln 93.9, live ln 94, enc None
  %21 = load %struct.node*, %struct.node** %node, l93 c9

Checking equivalence of `node` (decl src ln 68) from
  assn asm ln 465, prod ln 93.35, live ln 94, enc 1
  %18 = load %struct.node*, %struct.node** %node, l93 c35
  (w64 0x0)
and
  assn asm ln 451, prod ln 87.17, live ln 92, enc 0
  %14 = load %struct.node*, %struct.node** %nodes, l87 c17
  (w64 0x0)
🔔 Removing: asm ln 465, prod ln 93.35, live ln 94, enc 1

Filtering before assignments: `fleet` (decl src ln 70)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `fleet` (decl src ln 70) from
  assn asm ln 561, prod ln 109.26, live ln 110, enc None
  %51 = load i64, i64* %fleet, l109 c26
and
  assn asm ln 563, prod ln 109.26, live ln 110, enc None
  %inc53 = add nsw i64 %51, 1, l109 c26
🔔 Removing: asm ln 561, prod ln 109.26, live ln 110, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `fleet` (decl src ln 70) from
  assn asm ln 392, prod ln 70.10, live ln 72, enc 0
  i64 0
and
  assn asm ln 563, prod ln 109.26, live ln 110, enc None
  %inc53 = add nsw i64 %51, 1, l109 c26

Checking equivalence of `fleet` (decl src ln 70) from
  assn asm ln 585, prod ln 118.20, live ln 119, enc 1
  %57 = load i64, i64* %fleet, l118 c20
  (w64 0x0)
and
  assn asm ln 392, prod ln 70.10, live ln 72, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 585, prod ln 118.20, live ln 119, enc 1

Filtering before assignments: `i` (decl src ln 71)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 579, prod ln 100.30, live ln 101, enc None
  %56 = load i32, i32* %i, l100 c30
and
  assn asm ln 581, prod ln 100.30, live ln 101, enc None
  %inc63 = add nsw i32 %56, 1, l100 c30
🔔 Removing: asm ln 579, prod ln 100.30, live ln 101, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 568, prod ln 112.45, live ln 113, enc None
  %53 = load i32, i32* %i, l112 c45
and
  assn asm ln 581, prod ln 100.30, live ln 101, enc None
  %inc63 = add nsw i32 %56, 1, l100 c30
🔔 Removing: asm ln 568, prod ln 112.45, live ln 113, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 549, prod ln 108.46, live ln 109, enc None
  %46 = load i32, i32* %i, l108 c46
and
  assn asm ln 581, prod ln 100.30, live ln 101, enc None
  %inc63 = add nsw i32 %56, 1, l100 c30
🔔 Removing: asm ln 549, prod ln 108.46, live ln 109, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 537, prod ln 106.26, live ln 107, enc None
  %42 = load i32, i32* %i, l106 c26
and
  assn asm ln 581, prod ln 100.30, live ln 101, enc None
  %inc63 = add nsw i32 %56, 1, l100 c30
🔔 Removing: asm ln 537, prod ln 106.26, live ln 107, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 525, prod ln 104.50, live ln 105, enc None
  %38 = load i32, i32* %i, l104 c50
and
  assn asm ln 581, prod ln 100.30, live ln 101, enc None
  %inc63 = add nsw i32 %56, 1, l100 c30
🔔 Removing: asm ln 525, prod ln 104.50, live ln 105, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 513, prod ln 104.23, live ln 105, enc None
  %34 = load i32, i32* %i, l104 c23
and
  assn asm ln 581, prod ln 100.30, live ln 101, enc None
  %inc63 = add nsw i32 %56, 1, l100 c30
🔔 Removing: asm ln 513, prod ln 104.23, live ln 105, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 503, prod ln 102.17, live ln 103, enc None
  %31 = load i32, i32* %i, l102 c17
and
  assn asm ln 581, prod ln 100.30, live ln 101, enc None
  %inc63 = add nsw i32 %56, 1, l100 c30
🔔 Removing: asm ln 503, prod ln 102.17, live ln 103, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 425, prod ln 82.17, live ln 83, enc None
  %9 = load i32, i32* %i, l82 c17
and
  assn asm ln 581, prod ln 100.30, live ln 101, enc None
  %inc63 = add nsw i32 %56, 1, l100 c30
🔔 Removing: asm ln 425, prod ln 82.17, live ln 83, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 434, prod ln 84.17, live ln 85, enc None
  %11 = load i32, i32* %i, l84 c17
and
  assn asm ln 581, prod ln 100.30, live ln 101, enc None
  %inc63 = add nsw i32 %56, 1, l100 c30
🔔 Removing: asm ln 434, prod ln 84.17, live ln 85, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 481, prod ln 92.31, live ln 93, enc None
  %inc22 = add nsw i32 %24, 1, l92 c31
and
  assn asm ln 581, prod ln 100.30, live ln 101, enc None
  %inc63 = add nsw i32 %56, 1, l100 c30
🔔 Removing: asm ln 481, prod ln 92.31, live ln 93, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 479, prod ln 92.31, live ln 93, enc None
  %24 = load i32, i32* %i, l92 c31
and
  assn asm ln 581, prod ln 100.30, live ln 101, enc None
  %inc63 = add nsw i32 %56, 1, l100 c30
🔔 Removing: asm ln 479, prod ln 92.31, live ln 93, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 472, prod ln 93.14, live ln 94, enc None
  %22 = load i32, i32* %i, l93 c14
and
  assn asm ln 581, prod ln 100.30, live ln 101, enc None
  %inc63 = add nsw i32 %56, 1, l100 c30
🔔 Removing: asm ln 472, prod ln 93.14, live ln 94, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 442, prod ln 79.31, live ln 80, enc None
  %12 = load i32, i32* %i, l79 c31
and
  assn asm ln 581, prod ln 100.30, live ln 101, enc None
  %inc63 = add nsw i32 %56, 1, l100 c30
🔔 Removing: asm ln 442, prod ln 79.31, live ln 80, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 444, prod ln 79.31, live ln 80, enc None
  %inc = add nsw i32 %12, 1, l79 c31
and
  assn asm ln 581, prod ln 100.30, live ln 101, enc None
  %inc63 = add nsw i32 %56, 1, l100 c30
🔔 Removing: asm ln 444, prod ln 79.31, live ln 80, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 400, prod ln 79.12, live ln 80, enc 0
  i32 0
and
  assn asm ln 581, prod ln 100.30, live ln 101, enc None
  %inc63 = add nsw i32 %56, 1, l100 c30

Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 404, prod ln 79.17, live ln 80, enc 1
  %2 = load i32, i32* %i, l79 c17
  (w32 0x0)
and
  assn asm ln 400, prod ln 79.12, live ln 80, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 404, prod ln 79.17, live ln 80, enc 1

Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 414, prod ln 81.17, live ln 82, enc 2
  %6 = load i32, i32* %i, l81 c17
  (w32 0x0)
and
  assn asm ln 400, prod ln 79.12, live ln 80, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 414, prod ln 81.17, live ln 82, enc 2

Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 452, prod ln 92.12, live ln 93, enc 3
  i32 1
  (w32 0x1)
and
  assn asm ln 400, prod ln 79.12, live ln 80, enc 0
  i32 0
  (w32 0x0)

Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 456, prod ln 92.17, live ln 93, enc 4
  %15 = load i32, i32* %i, l92 c17
  (w32 0x1)
and
  assn asm ln 452, prod ln 92.12, live ln 93, enc 3
  i32 1
  (w32 0x1)
🔔 Removing: asm ln 456, prod ln 92.17, live ln 93, enc 4

Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 489, prod ln 100.12, live ln 101, enc 5
  i32 0
  (w32 0x0)
and
  assn asm ln 452, prod ln 92.12, live ln 93, enc 3
  i32 1
  (w32 0x1)

Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 466, prod ln 93.40, live ln 94, enc 6
  %19 = load i32, i32* %i, l93 c40
  (w32 0x1)
and
  assn asm ln 489, prod ln 100.12, live ln 101, enc 5
  i32 0
  (w32 0x0)

Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 493, prod ln 100.17, live ln 101, enc 7
  %27 = load i32, i32* %i, l100 c17
  (w32 0x0)
and
  assn asm ln 466, prod ln 93.40, live ln 94, enc 6
  %19 = load i32, i32* %i, l93 c40
  (w32 0x1)

Filtering before assignments: `operational_cost` (decl src ln 72)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `operational_cost` (decl src ln 72) from
  assn asm ln 573, prod ln 112.38, live ln 113, enc None
  %55 = load i64, i64* %operational_cost, l112 c38
and
  assn asm ln 575, prod ln 112.38, live ln 113, enc None
  %add58 = add nsw i64 %55, %54, l112 c38
🔔 Removing: asm ln 573, prod ln 112.38, live ln 113, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `operational_cost` (decl src ln 72) from
  assn asm ln 560, prod ln 108.38, live ln 109, enc None
  %add = add nsw i64 %50, %sub, l108 c38
and
  assn asm ln 575, prod ln 112.38, live ln 113, enc None
  %add58 = add nsw i64 %55, %54, l112 c38
🔔 Removing: asm ln 560, prod ln 108.38, live ln 109, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `operational_cost` (decl src ln 72) from
  assn asm ln 558, prod ln 108.38, live ln 109, enc None
  %50 = load i64, i64* %operational_cost, l108 c38
and
  assn asm ln 575, prod ln 112.38, live ln 113, enc None
  %add58 = add nsw i64 %55, %54, l112 c38
🔔 Removing: asm ln 558, prod ln 108.38, live ln 109, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `operational_cost` (decl src ln 72) from
  assn asm ln 395, prod ln 72.12, live ln 75, enc 0
  i64 0
and
  assn asm ln 575, prod ln 112.38, live ln 113, enc None
  %add58 = add nsw i64 %55, %54, l112 c38

Checking equivalence of `operational_cost` (decl src ln 72) from
  assn asm ln 592, prod ln 118.56, live ln 119, enc 1
  %60 = load i64, i64* %operational_cost, l118 c56
  (w64 0x0)
and
  assn asm ln 395, prod ln 72.12, live ln 75, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 592, prod ln 118.56, live ln 119, enc 1

Filtering after assignments: `fleet` (decl src ln 70)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `fleet` (decl src ln 70) from
  assn asm ln 486, prod ln 109.26, live ln 110, enc None
  %fleet.3 = phi i64 [ %fleet.0, %for.body30 ], [ %fleet.0, %land.lhs.true ], [ %fleet.0, %if.else54 ], [ %inc53, %if.then50 ], l70 c10
and
  assn asm ln 470, prod ln 109.26, live ln 110, enc None
  %inc53 = add nsw i64 %fleet.0, 1, l109 c26
🔔 Removing: asm ln 486, prod ln 109.26, live ln 110, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `fleet` (decl src ln 70) from
  assn asm ln 325, prod ln 70.0, live ln 75, enc 0
  i64 0
and
  assn asm ln 470, prod ln 109.26, live ln 110, enc None
  %inc53 = add nsw i64 %fleet.0, 1, l109 c26

Checking equivalence of `fleet` (decl src ln 70) from
  assn asm ln 414, prod ln 70.10, live ln 100, enc 1
  %fleet.0 = phi i64 [ 0, %for.end23 ], [ %fleet.3, %for.inc62 ], l70 c10
  (w64 0x0)
and
  assn asm ln 325, prod ln 70.0, live ln 75, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 414, prod ln 70.10, live ln 100, enc 1

Filtering after assignments: `operational_cost` (decl src ln 72)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `operational_cost` (decl src ln 72) from
  assn asm ln 479, prod ln 112.38, live ln 113, enc None
  %add58 = add nsw i64 %operational_cost.0, %18, l112 c38
and
  assn asm ln 468, prod ln 108.38, live ln 109, enc None
  %add = add nsw i64 %operational_cost.0, %sub, l108 c38
🔔 Removing: asm ln 479, prod ln 112.38, live ln 113, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `operational_cost` (decl src ln 72) from
  assn asm ln 485, prod ln 112.38, live ln 113, enc None
  %operational_cost.3 = phi i64 [ %operational_cost.0, %for.body30 ], [ %operational_cost.0, %land.lhs.true ], [ %add58, %if.else54 ], [ %add, %if.then50 ], l72 c12
and
  assn asm ln 468, prod ln 108.38, live ln 109, enc None
  %add = add nsw i64 %operational_cost.0, %sub, l108 c38
🔔 Removing: asm ln 485, prod ln 112.38, live ln 113, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `operational_cost` (decl src ln 72) from
  assn asm ln 326, prod ln 72.0, live ln 75, enc 0
  i64 0
and
  assn asm ln 468, prod ln 108.38, live ln 109, enc None
  %add = add nsw i64 %operational_cost.0, %sub, l108 c38

Checking equivalence of `operational_cost` (decl src ln 72) from
  assn asm ln 412, prod ln 72.12, live ln 100, enc 1
  %operational_cost.0 = phi i64 [ 0, %for.end23 ], [ %operational_cost.3, %for.inc62 ], l72 c12
  (w64 0x0)
and
  assn asm ln 326, prod ln 72.0, live ln 75, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 412, prod ln 72.12, live ln 100, enc 1

Filtering after assignments: `arc` (decl src ln 67)

Checking equivalence of `arc` (decl src ln 67) from
  assn asm ln 404, prod ln 96.16, live ln 100, enc 1
  %7 = load %struct.arc.0*, %struct.arc.0** %arcs24, l96 c16
  (w64 0x0)
and
  assn asm ln 329, prod ln 75.16, live ln 79, enc 0
  %0 = load %struct.arc.0*, %struct.arc.0** %arcs, l75 c16
  (w64 0x0)
🔔 Removing: asm ln 404, prod ln 96.16, live ln 100, enc 1

Filtering after assignments: `i` (decl src ln 71)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 367, prod ln 79.31, live ln 80, enc None
  %inc = add nsw i32 %i.0, 1, l79 c31
and
  assn asm ln 398, prod ln 92.31, live ln 93, enc None
  %inc22 = add nsw i32 %i.1, 1, l92 c31
🔔 Removing: asm ln 367, prod ln 79.31, live ln 80, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 488, prod ln 100.30, live ln 101, enc None
  %inc63 = add nsw i32 %i.2, 1, l100 c30
and
  assn asm ln 398, prod ln 92.31, live ln 93, enc None
  %inc22 = add nsw i32 %i.1, 1, l92 c31
🔔 Removing: asm ln 488, prod ln 100.30, live ln 101, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 330, prod ln 71.0, live ln 79, enc 0
  i32 0
and
  assn asm ln 398, prod ln 92.31, live ln 93, enc None
  %inc22 = add nsw i32 %i.1, 1, l92 c31

Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 335, prod ln 79.31, live ln 80, enc 1
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  (w32 0x0)
and
  assn asm ln 330, prod ln 71.0, live ln 79, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 335, prod ln 79.31, live ln 80, enc 1

Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 374, prod ln 71.0, live ln 92, enc 2
  i32 1
  (w32 0x1)
and
  assn asm ln 330, prod ln 71.0, live ln 79, enc 0
  i32 0
  (w32 0x0)

Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 379, prod ln 92.31, live ln 93, enc 3
  %i.1 = phi i32 [ 1, %for.end ], [ %inc22, %for.body14 ]
  (w32 0x1)
and
  assn asm ln 374, prod ln 71.0, live ln 92, enc 2
  i32 1
  (w32 0x1)
🔔 Removing: asm ln 379, prod ln 92.31, live ln 93, enc 3

Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 405, prod ln 71.0, live ln 100, enc 4
  i32 0
  (w32 0x0)
and
  assn asm ln 374, prod ln 71.0, live ln 92, enc 2
  i32 1
  (w32 0x1)

Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 413, prod ln 100.30, live ln 101, enc 5
  %i.2 = phi i32 [ 0, %for.end23 ], [ %inc63, %for.inc62 ]
  (w32 0x0)
and
  assn asm ln 405, prod ln 71.0, live ln 100, enc 4
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 413, prod ln 100.30, live ln 101, enc 5

Collating encountered before assignments: `net` (decl src ln 61)
❌ Assignment asm ln 554, prod ln 108.56, live ln 109, enc None for `net` (decl src ln 61) was not encountered during execution
  asm ln 387, prod ln 61.0, live ln 70, enc 0
Collating encountered before assignments: `arc` (decl src ln 67)
❌ Assignment asm ln 567, prod ln 112.41, live ln 113, enc None for `arc` (decl src ln 67) was not encountered during execution
  asm ln 399, prod ln 75.16, live ln 79, enc 0
Collating encountered before assignments: `node` (decl src ln 68)
❌ Assignment asm ln 471, prod ln 93.9, live ln 94, enc None for `node` (decl src ln 68) was not encountered during execution
  asm ln 451, prod ln 87.17, live ln 92, enc 0
Collating encountered before assignments: `fleet` (decl src ln 70)
❌ Assignment asm ln 563, prod ln 109.26, live ln 110, enc None for `fleet` (decl src ln 70) was not encountered during execution
  asm ln 392, prod ln 70.10, live ln 72, enc 0
Collating encountered before assignments: `i` (decl src ln 71)
❌ Assignment asm ln 581, prod ln 100.30, live ln 101, enc None for `i` (decl src ln 71) was not encountered during execution
  asm ln 400, prod ln 79.12, live ln 80, enc 0
  asm ln 452, prod ln 92.12, live ln 93, enc 1
  asm ln 489, prod ln 100.12, live ln 101, enc 2
  asm ln 466, prod ln 93.40, live ln 94, enc 3
  asm ln 493, prod ln 100.17, live ln 101, enc 4
Collating encountered before assignments: `operational_cost` (decl src ln 72)
❌ Assignment asm ln 575, prod ln 112.38, live ln 113, enc None for `operational_cost` (decl src ln 72) was not encountered during execution
  asm ln 395, prod ln 72.12, live ln 75, enc 0

Collating encountered after assignments: `net` (decl src ln 61)
  asm ln 324, prod ln 61.0, live ln 75, enc 0
Collating encountered after assignments: `fleet` (decl src ln 70)
❌ Assignment asm ln 470, prod ln 109.26, live ln 110, enc None for `fleet` (decl src ln 70) was not encountered during execution
  asm ln 325, prod ln 70.0, live ln 75, enc 0
Collating encountered after assignments: `operational_cost` (decl src ln 72)
❌ Assignment asm ln 468, prod ln 108.38, live ln 109, enc None for `operational_cost` (decl src ln 72) was not encountered during execution
  asm ln 326, prod ln 72.0, live ln 75, enc 0
Collating encountered after assignments: `arc` (decl src ln 67)
  asm ln 329, prod ln 75.16, live ln 79, enc 0
Collating encountered after assignments: `i` (decl src ln 71)
❌ Assignment asm ln 398, prod ln 92.31, live ln 93, enc None for `i` (decl src ln 71) was not encountered during execution
  asm ln 330, prod ln 71.0, live ln 79, enc 0
  asm ln 374, prod ln 71.0, live ln 92, enc 1
  asm ln 405, prod ln 71.0, live ln 100, enc 2
Collating encountered after assignments: `node` (decl src ln 68)
  asm ln 373, prod ln 87.17, live ln 92, enc 0

#### Check after using before as reference

❌ Before assn asm ln 567, prod ln 112.41, live ln 113, enc None for `arc` (decl src ln 67) was not encountered during execution

Checking equivalence of `arc` (decl src ln 67) from
  assn asm ln 329, prod ln 75.16, live ln 79, enc 0
  %0 = load %struct.arc.0*, %struct.arc.0** %arcs, l75 c16
  (w64 0x0)
and
  assn asm ln 399, prod ln 75.16, live ln 79, enc 0
  %1 = load %struct.arc*, %struct.arc** %arcs, l75 c16
  (w64 0x0)
✅ Before `arc` (decl src ln 67) assn asm ln 399, prod ln 75.16, live ln 79, enc 0 symbolic value matches after assn asm ln 329, prod ln 75.16, live ln 79, enc 0

❌ After `arc` assns checked using before as reference
Assignments:         arc
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 563, prod ln 109.26, live ln 110, enc None for `fleet` (decl src ln 70) was not encountered during execution

❌ After assn asm ln 470, prod ln 109.26, live ln 110, enc None for `fleet` (decl src ln 70) was not encountered during execution

❌ Before `fleet` (decl src ln 70) assn asm ln 392, prod ln 70.10, live ln 72, enc 0 coordinates don't match after assn asm ln 325, prod ln 70.0, live ln 75, enc 0
Checking equivalence of `fleet` (decl src ln 70) from
  assn asm ln 325, prod ln 70.0, live ln 75, enc 0
  i64 0
  (w64 0x0)
and
  assn asm ln 392, prod ln 70.10, live ln 72, enc 0
  i64 0
  (w64 0x0)
✅ Before `fleet` (decl src ln 70) assn asm ln 392, prod ln 70.10, live ln 72, enc 0 symbolic value matches after assn asm ln 325, prod ln 70.0, live ln 75, enc 0

❌ After `fleet` assns checked using before as reference
Assignments:         fleet
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 581, prod ln 100.30, live ln 101, enc None for `i` (decl src ln 71) was not encountered during execution

❌ Before encountered assn for `i` (decl src ln 71) at asm ln 466, prod ln 93.40, live ln 94, enc 3 not found in after

❌ Before encountered assn for `i` (decl src ln 71) at asm ln 493, prod ln 100.17, live ln 101, enc 4 not found in after

❌ After assn asm ln 398, prod ln 92.31, live ln 93, enc None for `i` (decl src ln 71) was not encountered during execution

❌ Before `i` (decl src ln 71) assn asm ln 400, prod ln 79.12, live ln 80, enc 0 coordinates don't match after assn asm ln 330, prod ln 71.0, live ln 79, enc 0
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 330, prod ln 71.0, live ln 79, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 400, prod ln 79.12, live ln 80, enc 0
  i32 0
  (w32 0x0)
✅ Before `i` (decl src ln 71) assn asm ln 400, prod ln 79.12, live ln 80, enc 0 symbolic value matches after assn asm ln 330, prod ln 71.0, live ln 79, enc 0

❌ Before `i` (decl src ln 71) assn asm ln 452, prod ln 92.12, live ln 93, enc 1 coordinates don't match after assn asm ln 374, prod ln 71.0, live ln 92, enc 1
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 374, prod ln 71.0, live ln 92, enc 1
  i32 1
  (w32 0x1)
and
  assn asm ln 452, prod ln 92.12, live ln 93, enc 1
  i32 1
  (w32 0x1)
✅ Before `i` (decl src ln 71) assn asm ln 452, prod ln 92.12, live ln 93, enc 1 symbolic value matches after assn asm ln 374, prod ln 71.0, live ln 92, enc 1

❌ Before `i` (decl src ln 71) assn asm ln 489, prod ln 100.12, live ln 101, enc 2 coordinates don't match after assn asm ln 405, prod ln 71.0, live ln 100, enc 2
Checking equivalence of `i` (decl src ln 71) from
  assn asm ln 405, prod ln 71.0, live ln 100, enc 2
  i32 0
  (w32 0x0)
and
  assn asm ln 489, prod ln 100.12, live ln 101, enc 2
  i32 0
  (w32 0x0)
✅ Before `i` (decl src ln 71) assn asm ln 489, prod ln 100.12, live ln 101, enc 2 symbolic value matches after assn asm ln 405, prod ln 71.0, live ln 100, enc 2

❌ After `i` assns checked using before as reference
Assignments:         i
  Reference:         6
  Test:              4
Matching:
  Matching Coords:   0
  Matching Value:    3
Consistency Errors:
  Mismatched Coords: 3
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   2
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 554, prod ln 108.56, live ln 109, enc None for `net` (decl src ln 61) was not encountered during execution

❌ Before `net` (decl src ln 61) assn asm ln 387, prod ln 61.0, live ln 70, enc 0 coordinates don't match after assn asm ln 324, prod ln 61.0, live ln 75, enc 0
Checking equivalence of `net` (decl src ln 61) from
  assn asm ln 324, prod ln 61.0, live ln 75, enc 0
  %struct.network.2* %net
  (w64 0x41523C7BC3B9B877)
and
  assn asm ln 387, prod ln 61.0, live ln 70, enc 0
  %struct.network* %net
  (w64 0x41523C7BC3B9B877)
✅ Before `net` (decl src ln 61) assn asm ln 387, prod ln 61.0, live ln 70, enc 0 symbolic value matches after assn asm ln 324, prod ln 61.0, live ln 75, enc 0

❌ After `net` assns checked using before as reference
Assignments:         net
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 471, prod ln 93.9, live ln 94, enc None for `node` (decl src ln 68) was not encountered during execution

Checking equivalence of `node` (decl src ln 68) from
  assn asm ln 373, prod ln 87.17, live ln 92, enc 0
  %3 = load %struct.node.1*, %struct.node.1** %nodes, l87 c17
  (w64 0x0)
and
  assn asm ln 451, prod ln 87.17, live ln 92, enc 0
  %14 = load %struct.node*, %struct.node** %nodes, l87 c17
  (w64 0x0)
✅ Before `node` (decl src ln 68) assn asm ln 451, prod ln 87.17, live ln 92, enc 0 symbolic value matches after assn asm ln 373, prod ln 87.17, live ln 92, enc 0

❌ After `node` assns checked using before as reference
Assignments:         node
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 575, prod ln 112.38, live ln 113, enc None for `operational_cost` (decl src ln 72) was not encountered during execution

❌ After assn asm ln 468, prod ln 108.38, live ln 109, enc None for `operational_cost` (decl src ln 72) was not encountered during execution

Checking equivalence of `operational_cost` (decl src ln 72) from
  assn asm ln 326, prod ln 72.0, live ln 75, enc 0
  i64 0
  (w64 0x0)
and
  assn asm ln 395, prod ln 72.12, live ln 75, enc 0
  i64 0
  (w64 0x0)
✅ Before `operational_cost` (decl src ln 72) assn asm ln 395, prod ln 72.12, live ln 75, enc 0 symbolic value matches after assn asm ln 326, prod ln 72.0, live ln 75, enc 0

❌ After `operational_cost` assns checked using before as reference
Assignments:         operational_cost
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

## Function `start`

✅ Before and after function names match

### Variable events

#### Before variables

#### After variables

#### Summary

✅ 0 before variables found, 0 after variables found, 0 mismatched

### Symbolic values

#### Before values


#### After values


### Assignments

#### Variables with single memory location

#### Collation



#### Check after using before as reference

## Function `getArcPosition`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `net` (decl src ln 137), asm ln 670
  %22 = load %struct.network*, %struct.network** %net.addr, l150 c54, asm ln 670
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 670, prod ln 150.54, live ln 151, enc None
Load from declared address of `net` (decl src ln 137), asm ln 664
  %19 = load %struct.network*, %struct.network** %net.addr, l150 c24, asm ln 664
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 664, prod ln 150.24, live ln 151, enc None
Load from declared address of `net` (decl src ln 137), asm ln 652
  %16 = load %struct.network*, %struct.network** %net.addr, l147 c112, asm ln 652
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 652, prod ln 147.112, live ln 148, enc None
Load from declared address of `net` (decl src ln 137), asm ln 648
  %14 = load %struct.network*, %struct.network** %net.addr, l147 c91, asm ln 648
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 648, prod ln 147.91, live ln 148, enc None
Load from declared address of `net` (decl src ln 137), asm ln 643
  %11 = load %struct.network*, %struct.network** %net.addr, l147 c61, asm ln 643
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 643, prod ln 147.61, live ln 148, enc None
Load from declared address of `net` (decl src ln 137), asm ln 640
  %9 = load %struct.network*, %struct.network** %net.addr, l147 c42, asm ln 640
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 640, prod ln 147.42, live ln 148, enc None
Load from declared address of `net` (decl src ln 137), asm ln 635
  %7 = load %struct.network*, %struct.network** %net.addr, l147 c24, asm ln 635
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 635, prod ln 147.24, live ln 148, enc None
Load from declared address of `net` (decl src ln 137), asm ln 627
  %4 = load %struct.network*, %struct.network** %net.addr, l146 c19, asm ln 627
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 627, prod ln 146.19, live ln 147, enc None
Load from declared address of `net` (decl src ln 137), asm ln 620
  %1 = load %struct.network*, %struct.network** %net.addr, l145 c24, asm ln 620
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 620, prod ln 145.24, live ln 146, enc None
Store to declared address of `net` (decl src ln 137), asm ln 613
  arg 0
  Added assignment asm ln 613, prod ln 137.0, live ln 145, enc None
Load from declared address of `actArc` (decl src ln 137), asm ln 663
  %18 = load i64, i64* %actArc.addr, l150 c15, asm ln 663
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 663, prod ln 150.15, live ln 151, enc None
Load from declared address of `actArc` (decl src ln 137), asm ln 634
  %6 = load i64, i64* %actArc.addr, l147 c15, asm ln 634
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 634, prod ln 147.15, live ln 148, enc None
Load from declared address of `actArc` (decl src ln 137), asm ln 619
  %0 = load i64, i64* %actArc.addr, l145 c15, asm ln 619
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 619, prod ln 145.15, live ln 146, enc None
Store to declared address of `actArc` (decl src ln 137), asm ln 615
  arg 1
  Added assignment asm ln 615, prod ln 137.0, live ln 145, enc None
Load from declared address of `result` (decl src ln 144), asm ln 679
  %24 = load i64, i64* %result, l152 c12, asm ln 679
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 679, prod ln 152.12, live ln 153, enc None
Store to declared address of `result` (decl src ln 144), asm ln 675
  %add12 = add nsw i64 %div9, %mul11, l150 c39, asm ln 674
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 675, prod ln 150.39, live ln 151, enc None
Store to declared address of `result` (decl src ln 144), asm ln 659
  %add7 = add nsw i64 %div, %add, l147 c39, asm ln 658
  Added assignment asm ln 659, prod ln 147.39, live ln 148, enc None
Load from declared address of `akt_group` (decl src ln 144), asm ln 669
  %21 = load i64, i64* %akt_group, l150 c42, asm ln 669
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 669, prod ln 150.42, live ln 151, enc None
Load from declared address of `akt_group` (decl src ln 144), asm ln 647
  %13 = load i64, i64* %akt_group, l147 c79, asm ln 647
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 647, prod ln 147.79, live ln 148, enc None
Load from declared address of `akt_group` (decl src ln 144), asm ln 626
  %3 = load i64, i64* %akt_group, l146 c7, asm ln 626
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 626, prod ln 146.7, live ln 147, enc None
Store to declared address of `akt_group` (decl src ln 144), asm ln 625
  %rem = srem i64 %0, %2, !klee.check.div !402, l145 c22, asm ln 624
  Added assignment asm ln 625, prod ln 145.22, live ln 146, enc None

#### After variables

Value produced for `net` (decl src ln 137), asm ln 513
  arg 0
  Added assignment asm ln 513, prod ln 137.0, live ln 145, enc None
Value produced for `actArc` (decl src ln 137), asm ln 514
  arg 1
  Added assignment asm ln 514, prod ln 137.0, live ln 145, enc None
Value produced for `akt_group` (decl src ln 144), asm ln 519
  %rem = srem i64 %actArc, %0, !klee.check.div !395, l145 c22, asm ln 518
  Added assignment asm ln 519, prod ln 145.22, live ln 146, enc None
Value produced for `result` (decl src ln 144), asm ln 544
  %add7 = add nsw i64 %div, %add, l147 c39, asm ln 543
  Added assignment asm ln 544, prod ln 147.39, live ln 148, enc None
Value produced for `result` (decl src ln 144), asm ln 556
  %add12 = add nsw i64 %div9, %mul11, l150 c39, asm ln 555
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 556, prod ln 150.39, live ln 151, enc None
Value produced for `result` (decl src ln 144), asm ln 561
  %result.0 = phi i64 [ %add7, %if.then ], [ %add12, %if.else ], asm ln 560
  Added assignment asm ln 561, prod ln 150.39, live ln 152, enc None

#### Summary

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `net`
  Assignment asm ln 613, prod ln 137.0, live ln 145, enc 0
  Concrete pointer resolves to getArcPosition.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getArcPosition.net.deref)
  Replaced concrete pointer with hash (w64 0x31CB02EE40309DDB)
  %struct.network* %net
  (w64 0x31CB02EE40309DDB)
Collected value for `actArc`
  Assignment asm ln 615, prod ln 137.0, live ln 145, enc 0
  i64 %actArc
  (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
Collected value for `actArc`
  Assignment asm ln 619, prod ln 145.15, live ln 146, enc 1
  %0 = load i64, i64* %actArc.addr, l145 c15
  (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
Collected value for `net`
  Assignment asm ln 620, prod ln 145.24, live ln 146, enc 1
  Concrete pointer resolves to getArcPosition.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getArcPosition.net.deref)
  Replaced concrete pointer with hash (w64 0x31CB02EE40309DDB)
  %1 = load %struct.network*, %struct.network** %net.addr, l145 c24
  (w64 0x31CB02EE40309DDB)
[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
[0m[0;1;31mKLEE: ERROR: mcfutil.c:145: divide by zero
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;35mKLEE: WARNING: Unable to load source file `mcfutil.c`
[0mCollected value for `akt_group`
  Assignment asm ln 625, prod ln 145.22, live ln 146, enc 0
  %rem = srem i64 %0, %2, !klee.check.div !402, l145 c22
  (SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
           (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
Collected value for `akt_group`
  Assignment asm ln 626, prod ln 146.7, live ln 147, enc 1
  %3 = load i64, i64* %akt_group, l146 c7
  (SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
           (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
Collected value for `net`
  Assignment asm ln 627, prod ln 146.19, live ln 147, enc 2
  Concrete pointer resolves to getArcPosition.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getArcPosition.net.deref)
  Replaced concrete pointer with hash (w64 0x31CB02EE40309DDB)
  %4 = load %struct.network*, %struct.network** %net.addr, l146 c19
  (w64 0x31CB02EE40309DDB)
Collected value for `actArc`
  Assignment asm ln 663, prod ln 150.15, live ln 151, enc 2
  %18 = load i64, i64* %actArc.addr, l150 c15
  (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
Collected value for `net`
  Assignment asm ln 664, prod ln 150.24, live ln 151, enc 3
  Concrete pointer resolves to getArcPosition.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getArcPosition.net.deref)
  Replaced concrete pointer with hash (w64 0x31CB02EE40309DDB)
  %19 = load %struct.network*, %struct.network** %net.addr, l150 c24
  (w64 0x31CB02EE40309DDB)
Collected value for `actArc`
  Assignment asm ln 634, prod ln 147.15, live ln 148, enc 3
  %6 = load i64, i64* %actArc.addr, l147 c15
  (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
Collected value for `net`
  Assignment asm ln 635, prod ln 147.24, live ln 148, enc 4
  Concrete pointer resolves to getArcPosition.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getArcPosition.net.deref)
  Replaced concrete pointer with hash (w64 0x31CB02EE40309DDB)
  %7 = load %struct.network*, %struct.network** %net.addr, l147 c24
  (w64 0x31CB02EE40309DDB)
[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `mcfutil.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `mcfutil.c`
[0mCollected value for `akt_group`
  Assignment asm ln 669, prod ln 150.42, live ln 151, enc 2
  %21 = load i64, i64* %akt_group, l150 c42
  (SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
           (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
Collected value for `net`
  Assignment asm ln 670, prod ln 150.54, live ln 151, enc 5
  Concrete pointer resolves to getArcPosition.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getArcPosition.net.deref)
  Replaced concrete pointer with hash (w64 0x31CB02EE40309DDB)
  %22 = load %struct.network*, %struct.network** %net.addr, l150 c54
  (w64 0x31CB02EE40309DDB)
[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `mcfutil.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `mcfutil.c`
[0mCollected value for `net`
  Assignment asm ln 640, prod ln 147.42, live ln 148, enc 6
  Concrete pointer resolves to getArcPosition.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getArcPosition.net.deref)
  Replaced concrete pointer with hash (w64 0x31CB02EE40309DDB)
  %9 = load %struct.network*, %struct.network** %net.addr, l147 c42
  (w64 0x31CB02EE40309DDB)
Collected value for `result`
  Assignment asm ln 675, prod ln 150.39, live ln 151, enc 0
  %add12 = add nsw i64 %div9, %mul11, l150 c39
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Mul w64 (SRem w64 N0 N1)
                   (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
Collected value for `result`
  Assignment asm ln 679, prod ln 152.12, live ln 153, enc 1
  %24 = load i64, i64* %result, l152 c12
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Mul w64 (SRem w64 N0 N1)
                   (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
Collected value for `net`
  Assignment asm ln 643, prod ln 147.61, live ln 148, enc 7
  Concrete pointer resolves to getArcPosition.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getArcPosition.net.deref)
  Replaced concrete pointer with hash (w64 0x31CB02EE40309DDB)
  %11 = load %struct.network*, %struct.network** %net.addr, l147 c61
  (w64 0x31CB02EE40309DDB)
Collected value for `akt_group`
  Assignment asm ln 647, prod ln 147.79, live ln 148, enc 3
  %13 = load i64, i64* %akt_group, l147 c79
  (SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
           (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
Collected value for `net`
  Assignment asm ln 648, prod ln 147.91, live ln 148, enc 8
  Concrete pointer resolves to getArcPosition.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getArcPosition.net.deref)
  Replaced concrete pointer with hash (w64 0x31CB02EE40309DDB)
  %14 = load %struct.network*, %struct.network** %net.addr, l147 c91
  (w64 0x31CB02EE40309DDB)
Collected value for `net`
  Assignment asm ln 652, prod ln 147.112, live ln 148, enc 9
  Concrete pointer resolves to getArcPosition.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getArcPosition.net.deref)
  Replaced concrete pointer with hash (w64 0x31CB02EE40309DDB)
  %16 = load %struct.network*, %struct.network** %net.addr, l147 c112
  (w64 0x31CB02EE40309DDB)
Collected value for `result`
  Assignment asm ln 659, prod ln 147.39, live ln 148, enc 2
  %add7 = add nsw i64 %div, %add, l147 c39
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Add w64 (Mul w64 N2:(ReadLSB w64 (w32 0x278) getArcPosition.net.deref)
                            N3:(ReadLSB w64 (w32 0x280) getArcPosition.net.deref))
                   (Mul w64 (Sub w64 (SRem w64 N0 N1) N2)
                            (Add w64 (w64 0xFFFFFFFFFFFFFFFF) N3))))

🔔 Unable to execute all before program states

#### After values

Collected value for `net`
  Assignment asm ln 513, prod ln 137.0, live ln 145, enc 0
  Concrete pointer resolves to getArcPosition.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getArcPosition.net.deref)
  Replaced concrete pointer with hash (w64 0x31CB02EE40309DDB)
  %struct.network.2* %net
  (w64 0x31CB02EE40309DDB)
Collected value for `actArc`
  Assignment asm ln 514, prod ln 137.0, live ln 145, enc 0
  i64 %actArc
  (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
[0m[0;1;31mKLEE: ERROR: mcfutil.c:145: divide by zero
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;35mKLEE: WARNING: Unable to load source file `mcfutil.c`
[0mCollected value for `akt_group`
  Assignment asm ln 519, prod ln 145.22, live ln 146, enc 0
  %rem = srem i64 %actArc, %0, !klee.check.div !395, l145 c22
  (SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
           (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `mcfutil.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `mcfutil.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `mcfutil.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `mcfutil.c`
[0mCollected value for `result`
  Assignment asm ln 556, prod ln 150.39, live ln 151, enc 0
  %add12 = add nsw i64 %div9, %mul11, l150 c39
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Mul w64 (SRem w64 N0 N1)
                   (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `mcfutil.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `mcfutil.c`
[0mCollected value for `result`
  Assignment asm ln 561, prod ln 150.39, live ln 152, enc 1
  %result.0 = phi i64 [ %add7, %if.then ], [ %add12, %if.else ]
  Block: 1
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Mul w64 (SRem w64 N0 N1)
                   (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
Collected value for `result`
  Assignment asm ln 544, prod ln 147.39, live ln 148, enc 2
  %add7 = add nsw i64 %div, %add, l147 c39
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Add w64 (Mul w64 N2:(ReadLSB w64 (w32 0x278) getArcPosition.net.deref)
                            N3:(ReadLSB w64 (w32 0x280) getArcPosition.net.deref))
                   (Mul w64 (Sub w64 (SRem w64 N0 N1) N2)
                            (Add w64 (w64 0xFFFFFFFFFFFFFFFF) N3))))

🔔 Unable to execute all after program states

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `net` (decl src ln 137)

Checking equivalence of `net` (decl src ln 137) from
  assn asm ln 620, prod ln 145.24, live ln 146, enc 1
  %1 = load %struct.network*, %struct.network** %net.addr, l145 c24
  (w64 0x31CB02EE40309DDB)
and
  assn asm ln 613, prod ln 137.0, live ln 145, enc 0
  %struct.network* %net
  (w64 0x31CB02EE40309DDB)
🔔 Removing: asm ln 620, prod ln 145.24, live ln 146, enc 1

Checking equivalence of `net` (decl src ln 137) from
  assn asm ln 627, prod ln 146.19, live ln 147, enc 2
  %4 = load %struct.network*, %struct.network** %net.addr, l146 c19
  (w64 0x31CB02EE40309DDB)
and
  assn asm ln 613, prod ln 137.0, live ln 145, enc 0
  %struct.network* %net
  (w64 0x31CB02EE40309DDB)
🔔 Removing: asm ln 627, prod ln 146.19, live ln 147, enc 2

Checking equivalence of `net` (decl src ln 137) from
  assn asm ln 664, prod ln 150.24, live ln 151, enc 3
  %19 = load %struct.network*, %struct.network** %net.addr, l150 c24
  (w64 0x31CB02EE40309DDB)
and
  assn asm ln 613, prod ln 137.0, live ln 145, enc 0
  %struct.network* %net
  (w64 0x31CB02EE40309DDB)
🔔 Removing: asm ln 664, prod ln 150.24, live ln 151, enc 3

Checking equivalence of `net` (decl src ln 137) from
  assn asm ln 635, prod ln 147.24, live ln 148, enc 4
  %7 = load %struct.network*, %struct.network** %net.addr, l147 c24
  (w64 0x31CB02EE40309DDB)
and
  assn asm ln 613, prod ln 137.0, live ln 145, enc 0
  %struct.network* %net
  (w64 0x31CB02EE40309DDB)
🔔 Removing: asm ln 635, prod ln 147.24, live ln 148, enc 4

Checking equivalence of `net` (decl src ln 137) from
  assn asm ln 670, prod ln 150.54, live ln 151, enc 5
  %22 = load %struct.network*, %struct.network** %net.addr, l150 c54
  (w64 0x31CB02EE40309DDB)
and
  assn asm ln 613, prod ln 137.0, live ln 145, enc 0
  %struct.network* %net
  (w64 0x31CB02EE40309DDB)
🔔 Removing: asm ln 670, prod ln 150.54, live ln 151, enc 5

Checking equivalence of `net` (decl src ln 137) from
  assn asm ln 640, prod ln 147.42, live ln 148, enc 6
  %9 = load %struct.network*, %struct.network** %net.addr, l147 c42
  (w64 0x31CB02EE40309DDB)
and
  assn asm ln 613, prod ln 137.0, live ln 145, enc 0
  %struct.network* %net
  (w64 0x31CB02EE40309DDB)
🔔 Removing: asm ln 640, prod ln 147.42, live ln 148, enc 6

Checking equivalence of `net` (decl src ln 137) from
  assn asm ln 643, prod ln 147.61, live ln 148, enc 7
  %11 = load %struct.network*, %struct.network** %net.addr, l147 c61
  (w64 0x31CB02EE40309DDB)
and
  assn asm ln 613, prod ln 137.0, live ln 145, enc 0
  %struct.network* %net
  (w64 0x31CB02EE40309DDB)
🔔 Removing: asm ln 643, prod ln 147.61, live ln 148, enc 7

Checking equivalence of `net` (decl src ln 137) from
  assn asm ln 648, prod ln 147.91, live ln 148, enc 8
  %14 = load %struct.network*, %struct.network** %net.addr, l147 c91
  (w64 0x31CB02EE40309DDB)
and
  assn asm ln 613, prod ln 137.0, live ln 145, enc 0
  %struct.network* %net
  (w64 0x31CB02EE40309DDB)
🔔 Removing: asm ln 648, prod ln 147.91, live ln 148, enc 8

Checking equivalence of `net` (decl src ln 137) from
  assn asm ln 652, prod ln 147.112, live ln 148, enc 9
  %16 = load %struct.network*, %struct.network** %net.addr, l147 c112
  (w64 0x31CB02EE40309DDB)
and
  assn asm ln 613, prod ln 137.0, live ln 145, enc 0
  %struct.network* %net
  (w64 0x31CB02EE40309DDB)
🔔 Removing: asm ln 652, prod ln 147.112, live ln 148, enc 9

Filtering before assignments: `actArc` (decl src ln 137)

Checking equivalence of `actArc` (decl src ln 137) from
  assn asm ln 619, prod ln 145.15, live ln 146, enc 1
  %0 = load i64, i64* %actArc.addr, l145 c15
  (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
and
  assn asm ln 615, prod ln 137.0, live ln 145, enc 0
  i64 %actArc
  (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
Query to parse
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
     N0)
🔔 Removing: asm ln 619, prod ln 145.15, live ln 146, enc 1

Checking equivalence of `actArc` (decl src ln 137) from
  assn asm ln 663, prod ln 150.15, live ln 151, enc 2
  %18 = load i64, i64* %actArc.addr, l150 c15
  (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
and
  assn asm ln 615, prod ln 137.0, live ln 145, enc 0
  i64 %actArc
  (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
Query to parse
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
     N0)
🔔 Removing: asm ln 663, prod ln 150.15, live ln 151, enc 2

Checking equivalence of `actArc` (decl src ln 137) from
  assn asm ln 634, prod ln 147.15, live ln 148, enc 3
  %6 = load i64, i64* %actArc.addr, l147 c15
  (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
and
  assn asm ln 615, prod ln 137.0, live ln 145, enc 0
  i64 %actArc
  (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
Query to parse
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
     N0)
🔔 Removing: asm ln 634, prod ln 147.15, live ln 148, enc 3

Filtering before assignments: `result` (decl src ln 144)

Checking equivalence of `result` (decl src ln 144) from
  assn asm ln 679, prod ln 152.12, live ln 153, enc 1
  %24 = load i64, i64* %result, l152 c12
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Mul w64 (SRem w64 N0 N1)
                   (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
and
  assn asm ln 675, prod ln 150.39, live ln 151, enc 0
  %add12 = add nsw i64 %div9, %mul11, l150 c39
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Mul w64 (SRem w64 N0 N1)
                   (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
Query to parse
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq N0:(Add w64 (SDiv w64 N1:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                           N2:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
                 (Mul w64 (SRem w64 N1 N2)
                          (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
     N0))
Parsed query
(Eq N0:(Add w64 (SDiv w64 N1:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                           N2:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
                 (Mul w64 (SRem w64 N1 N2)
                          (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
     N0)
🔔 Removing: asm ln 679, prod ln 152.12, live ln 153, enc 1

Checking equivalence of `result` (decl src ln 144) from
  assn asm ln 659, prod ln 147.39, live ln 148, enc 2
  %add7 = add nsw i64 %div, %add, l147 c39
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Add w64 (Mul w64 N2:(ReadLSB w64 (w32 0x278) getArcPosition.net.deref)
                            N3:(ReadLSB w64 (w32 0x280) getArcPosition.net.deref))
                   (Mul w64 (Sub w64 (SRem w64 N0 N1) N2)
                            (Add w64 (w64 0xFFFFFFFFFFFFFFFF) N3))))
and
  assn asm ln 675, prod ln 150.39, live ln 151, enc 0
  %add12 = add nsw i64 %div9, %mul11, l150 c39
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Mul w64 (SRem w64 N0 N1)
                   (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
Query to parse
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 N0:(SDiv w64 N1:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                           N2:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
              (Add w64 (Mul w64 N3:(ReadLSB w64 (w32 0x278) getArcPosition.net.deref)
                                N4:(ReadLSB w64 (w32 0x280) getArcPosition.net.deref))
                       (Mul w64 (Sub w64 N5:(SRem w64 N1 N2) N3)
                                (Add w64 (w64 0xFFFFFFFFFFFFFFFF) N4))))
     (Add w64 N0 (Mul w64 N5 N4))))
Parsed query
(Eq (Add w64 N0:(SDiv w64 N1:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                           N2:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
              (Add w64 (Mul w64 N3:(ReadLSB w64 (w32 0x278) getArcPosition.net.deref)
                                N4:(ReadLSB w64 (w32 0x280) getArcPosition.net.deref))
                       (Mul w64 (Sub w64 N5:(SRem w64 N1 N2) N3)
                                (Add w64 (w64 0xFFFFFFFFFFFFFFFF) N4))))
     (Add w64 N0 (Mul w64 N5 N4)))

Filtering before assignments: `akt_group` (decl src ln 144)

Checking equivalence of `akt_group` (decl src ln 144) from
  assn asm ln 626, prod ln 146.7, live ln 147, enc 1
  %3 = load i64, i64* %akt_group, l146 c7
  (SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
           (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
and
  assn asm ln 625, prod ln 145.22, live ln 146, enc 0
  %rem = srem i64 %0, %2, !klee.check.div !402, l145 c22
  (SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
           (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
Query to parse
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq N0:(SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                  (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
     N0))
Parsed query
(Eq N0:(SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                  (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
     N0)
🔔 Removing: asm ln 626, prod ln 146.7, live ln 147, enc 1

Checking equivalence of `akt_group` (decl src ln 144) from
  assn asm ln 669, prod ln 150.42, live ln 151, enc 2
  %21 = load i64, i64* %akt_group, l150 c42
  (SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
           (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
and
  assn asm ln 625, prod ln 145.22, live ln 146, enc 0
  %rem = srem i64 %0, %2, !klee.check.div !402, l145 c22
  (SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
           (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
Query to parse
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq N0:(SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                  (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
     N0))
Parsed query
(Eq N0:(SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                  (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
     N0)
🔔 Removing: asm ln 669, prod ln 150.42, live ln 151, enc 2

Checking equivalence of `akt_group` (decl src ln 144) from
  assn asm ln 647, prod ln 147.79, live ln 148, enc 3
  %13 = load i64, i64* %akt_group, l147 c79
  (SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
           (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
and
  assn asm ln 625, prod ln 145.22, live ln 146, enc 0
  %rem = srem i64 %0, %2, !klee.check.div !402, l145 c22
  (SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
           (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
Query to parse
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq N0:(SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                  (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
     N0))
Parsed query
(Eq N0:(SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                  (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
     N0)
🔔 Removing: asm ln 647, prod ln 147.79, live ln 148, enc 3

Filtering after assignments: `result` (decl src ln 144)

Checking equivalence of `result` (decl src ln 144) from
  assn asm ln 561, prod ln 150.39, live ln 152, enc 1
  %result.0 = phi i64 [ %add7, %if.then ], [ %add12, %if.else ]
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Mul w64 (SRem w64 N0 N1)
                   (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
and
  assn asm ln 556, prod ln 150.39, live ln 151, enc 0
  %add12 = add nsw i64 %div9, %mul11, l150 c39
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Mul w64 (SRem w64 N0 N1)
                   (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
Query to parse
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq N0:(Add w64 (SDiv w64 N1:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                           N2:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
                 (Mul w64 (SRem w64 N1 N2)
                          (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
     N0))
Parsed query
(Eq N0:(Add w64 (SDiv w64 N1:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                           N2:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
                 (Mul w64 (SRem w64 N1 N2)
                          (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
     N0)
🔔 Removing: asm ln 561, prod ln 150.39, live ln 152, enc 1

Checking equivalence of `result` (decl src ln 144) from
  assn asm ln 544, prod ln 147.39, live ln 148, enc 2
  %add7 = add nsw i64 %div, %add, l147 c39
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Add w64 (Mul w64 N2:(ReadLSB w64 (w32 0x278) getArcPosition.net.deref)
                            N3:(ReadLSB w64 (w32 0x280) getArcPosition.net.deref))
                   (Mul w64 (Sub w64 (SRem w64 N0 N1) N2)
                            (Add w64 (w64 0xFFFFFFFFFFFFFFFF) N3))))
and
  assn asm ln 556, prod ln 150.39, live ln 151, enc 0
  %add12 = add nsw i64 %div9, %mul11, l150 c39
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Mul w64 (SRem w64 N0 N1)
                   (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
Query to parse
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 N0:(SDiv w64 N1:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                           N2:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
              (Add w64 (Mul w64 N3:(ReadLSB w64 (w32 0x278) getArcPosition.net.deref)
                                N4:(ReadLSB w64 (w32 0x280) getArcPosition.net.deref))
                       (Mul w64 (Sub w64 N5:(SRem w64 N1 N2) N3)
                                (Add w64 (w64 0xFFFFFFFFFFFFFFFF) N4))))
     (Add w64 N0 (Mul w64 N5 N4))))
Parsed query
(Eq (Add w64 N0:(SDiv w64 N1:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                           N2:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
              (Add w64 (Mul w64 N3:(ReadLSB w64 (w32 0x278) getArcPosition.net.deref)
                                N4:(ReadLSB w64 (w32 0x280) getArcPosition.net.deref))
                       (Mul w64 (Sub w64 N5:(SRem w64 N1 N2) N3)
                                (Add w64 (w64 0xFFFFFFFFFFFFFFFF) N4))))
     (Add w64 N0 (Mul w64 N5 N4)))

Collating encountered before assignments: `net` (decl src ln 137)
  asm ln 613, prod ln 137.0, live ln 145, enc 0
Collating encountered before assignments: `actArc` (decl src ln 137)
  asm ln 615, prod ln 137.0, live ln 145, enc 0
Collating encountered before assignments: `result` (decl src ln 144)
  asm ln 675, prod ln 150.39, live ln 151, enc 0
  asm ln 659, prod ln 147.39, live ln 148, enc 1
Collating encountered before assignments: `akt_group` (decl src ln 144)
  asm ln 625, prod ln 145.22, live ln 146, enc 0

Collating encountered after assignments: `net` (decl src ln 137)
  asm ln 513, prod ln 137.0, live ln 145, enc 0
Collating encountered after assignments: `actArc` (decl src ln 137)
  asm ln 514, prod ln 137.0, live ln 145, enc 0
Collating encountered after assignments: `akt_group` (decl src ln 144)
  asm ln 519, prod ln 145.22, live ln 146, enc 0
Collating encountered after assignments: `result` (decl src ln 144)
  asm ln 556, prod ln 150.39, live ln 151, enc 0
  asm ln 544, prod ln 147.39, live ln 148, enc 1

#### Check after using before as reference

Checking equivalence of `actArc` (decl src ln 137) from
  assn asm ln 514, prod ln 137.0, live ln 145, enc 0
  i64 %actArc
  (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
and
  assn asm ln 615, prod ln 137.0, live ln 145, enc 0
  i64 %actArc
  (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
Query to parse
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
     (ReadLSB w64 (w32 0x0) getArcPosition.actArc)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
     N0)
✅ Before `actArc` (decl src ln 137) assn asm ln 615, prod ln 137.0, live ln 145, enc 0 symbolic value matches after assn asm ln 514, prod ln 137.0, live ln 145, enc 0

✅ After `actArc` assns checked using before as reference
Assignments:         actArc
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `akt_group` (decl src ln 144) from
  assn asm ln 519, prod ln 145.22, live ln 146, enc 0
  %rem = srem i64 %actArc, %0, !klee.check.div !395, l145 c22
  (SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
           (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
and
  assn asm ln 625, prod ln 145.22, live ln 146, enc 0
  %rem = srem i64 %0, %2, !klee.check.div !402, l145 c22
  (SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
           (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
Query to parse
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq (SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
               (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
     (SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
               (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))))
Parsed query
(Eq N0:(SRem w64 (ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                  (ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
     N0)
✅ Before `akt_group` (decl src ln 144) assn asm ln 625, prod ln 145.22, live ln 146, enc 0 symbolic value matches after assn asm ln 519, prod ln 145.22, live ln 146, enc 0

✅ After `akt_group` assns checked using before as reference
Assignments:         akt_group
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `net` (decl src ln 137) from
  assn asm ln 513, prod ln 137.0, live ln 145, enc 0
  %struct.network.2* %net
  (w64 0x31CB02EE40309DDB)
and
  assn asm ln 613, prod ln 137.0, live ln 145, enc 0
  %struct.network* %net
  (w64 0x31CB02EE40309DDB)
✅ Before `net` (decl src ln 137) assn asm ln 613, prod ln 137.0, live ln 145, enc 0 symbolic value matches after assn asm ln 513, prod ln 137.0, live ln 145, enc 0

✅ After `net` assns checked using before as reference
Assignments:         net
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `result` (decl src ln 144) from
  assn asm ln 556, prod ln 150.39, live ln 151, enc 0
  %add12 = add nsw i64 %div9, %mul11, l150 c39
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Mul w64 (SRem w64 N0 N1)
                   (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
and
  assn asm ln 675, prod ln 150.39, live ln 151, enc 0
  %add12 = add nsw i64 %div9, %mul11, l150 c39
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Mul w64 (SRem w64 N0 N1)
                   (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
Query to parse
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                        N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
              (Mul w64 (SRem w64 N0 N1)
                       (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
     (Add w64 (SDiv w64 N2:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                        N3:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
              (Mul w64 (SRem w64 N2 N3)
                       (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))))
Parsed query
(Eq N0:(Add w64 (SDiv w64 N1:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                           N2:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
                 (Mul w64 (SRem w64 N1 N2)
                          (ReadLSB w64 (w32 0x280) getArcPosition.net.deref)))
     N0)
✅ Before `result` (decl src ln 144) assn asm ln 675, prod ln 150.39, live ln 151, enc 0 symbolic value matches after assn asm ln 556, prod ln 150.39, live ln 151, enc 0

Checking equivalence of `result` (decl src ln 144) from
  assn asm ln 544, prod ln 147.39, live ln 148, enc 1
  %add7 = add nsw i64 %div, %add, l147 c39
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Add w64 (Mul w64 N2:(ReadLSB w64 (w32 0x278) getArcPosition.net.deref)
                            N3:(ReadLSB w64 (w32 0x280) getArcPosition.net.deref))
                   (Mul w64 (Sub w64 (SRem w64 N0 N1) N2)
                            (Add w64 (w64 0xFFFFFFFFFFFFFFFF) N3))))
and
  assn asm ln 659, prod ln 147.39, live ln 148, enc 1
  %add7 = add nsw i64 %div, %add, l147 c39
  (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                    N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
          (Add w64 (Mul w64 N2:(ReadLSB w64 (w32 0x278) getArcPosition.net.deref)
                            N3:(ReadLSB w64 (w32 0x280) getArcPosition.net.deref))
                   (Mul w64 (Sub w64 (SRem w64 N0 N1) N2)
                            (Add w64 (w64 0xFFFFFFFFFFFFFFFF) N3))))
Query to parse
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
array getArcPosition.actArc[8] : w32 -> w8 = symbolic
array getArcPosition.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (SDiv w64 N0:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                        N1:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
              (Add w64 (Mul w64 N2:(ReadLSB w64 (w32 0x278) getArcPosition.net.deref)
                                N3:(ReadLSB w64 (w32 0x280) getArcPosition.net.deref))
                       (Mul w64 (Sub w64 (SRem w64 N0 N1) N2)
                                (Add w64 (w64 0xFFFFFFFFFFFFFFFF) N3))))
     (Add w64 (SDiv w64 N4:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                        N5:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
              (Add w64 (Mul w64 N6:(ReadLSB w64 (w32 0x278) getArcPosition.net.deref)
                                N7:(ReadLSB w64 (w32 0x280) getArcPosition.net.deref))
                       (Mul w64 (Sub w64 (SRem w64 N4 N5) N6)
                                (Add w64 (w64 0xFFFFFFFFFFFFFFFF) N7))))))
Parsed query
(Eq N0:(Add w64 (SDiv w64 N1:(ReadLSB w64 (w32 0x0) getArcPosition.actArc)
                           N2:(ReadLSB w64 (w32 0x270) getArcPosition.net.deref))
                 (Add w64 (Mul w64 N3:(ReadLSB w64 (w32 0x278) getArcPosition.net.deref)
                                   N4:(ReadLSB w64 (w32 0x280) getArcPosition.net.deref))
                          (Mul w64 (Sub w64 (SRem w64 N1 N2) N3)
                                   (Add w64 (w64 0xFFFFFFFFFFFFFFFF) N4))))
     N0)
✅ Before `result` (decl src ln 144) assn asm ln 659, prod ln 147.39, live ln 148, enc 1 symbolic value matches after assn asm ln 544, prod ln 147.39, live ln 148, enc 1

✅ After `result` assns checked using before as reference
Assignments:         result
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

## Function `getOriginalArcPosition`

✅ Before and after function names match

### Variable events

#### Before variables

Store to declared address of `net` (decl src ln 156), asm ln 688
  arg 0
  @dbg.declare without read users, removable
  Added assignment asm ln 688, prod ln 156.0, live ln 163, enc None
Load from declared address of `actArc` (decl src ln 156), asm ln 692
  %0 = load i64, i64* %actArc.addr, l163 c10, asm ln 692
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 692, prod ln 163.10, live ln 164, enc None
Store to declared address of `actArc` (decl src ln 156), asm ln 690
  arg 1
  Added assignment asm ln 690, prod ln 156.0, live ln 163, enc None

#### After variables

Value produced for `net` (decl src ln 156), asm ln 568
  arg 0
  Added assignment asm ln 568, prod ln 156.0, live ln 163, enc None
Value produced for `actArc` (decl src ln 156), asm ln 569
  arg 1
  Added assignment asm ln 569, prod ln 156.0, live ln 163, enc None

#### Summary

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `net`
  Assignment asm ln 688, prod ln 156.0, live ln 163, enc 0
  Concrete pointer resolves to getOriginalArcPosition.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getOriginalArcPosition.net.deref)
  Replaced concrete pointer with hash (w64 0x751C43E0A9885701)
  %struct.network* %net
  (w64 0x751C43E0A9885701)
Collected value for `actArc`
  Assignment asm ln 690, prod ln 156.0, live ln 163, enc 0
  i64 %actArc
  (ReadLSB w64 (w32 0x0) getOriginalArcPosition.actArc)
Collected value for `actArc`
  Assignment asm ln 692, prod ln 163.10, live ln 164, enc 1
  %0 = load i64, i64* %actArc.addr, l163 c10
  (ReadLSB w64 (w32 0x0) getOriginalArcPosition.actArc)

#### After values

Collected value for `net`
  Assignment asm ln 568, prod ln 156.0, live ln 163, enc 0
  Concrete pointer resolves to getOriginalArcPosition.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getOriginalArcPosition.net.deref)
  Replaced concrete pointer with hash (w64 0x751C43E0A9885701)
  %struct.network.2* %net
  (w64 0x751C43E0A9885701)
Collected value for `actArc`
  Assignment asm ln 569, prod ln 156.0, live ln 163, enc 0
  i64 %actArc
  (ReadLSB w64 (w32 0x0) getOriginalArcPosition.actArc)

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `actArc` (decl src ln 156)

Checking equivalence of `actArc` (decl src ln 156) from
  assn asm ln 692, prod ln 163.10, live ln 164, enc 1
  %0 = load i64, i64* %actArc.addr, l163 c10
  (ReadLSB w64 (w32 0x0) getOriginalArcPosition.actArc)
and
  assn asm ln 690, prod ln 156.0, live ln 163, enc 0
  i64 %actArc
  (ReadLSB w64 (w32 0x0) getOriginalArcPosition.actArc)
Query to parse
array getOriginalArcPosition.actArc[8] : w32 -> w8 = symbolic
array getOriginalArcPosition.actArc[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) getOriginalArcPosition.actArc)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) getOriginalArcPosition.actArc)
     N0)
🔔 Removing: asm ln 692, prod ln 163.10, live ln 164, enc 1

Collating encountered before assignments: `net` (decl src ln 156)
  asm ln 688, prod ln 156.0, live ln 163, enc 0
Collating encountered before assignments: `actArc` (decl src ln 156)
  asm ln 690, prod ln 156.0, live ln 163, enc 0

Collating encountered after assignments: `net` (decl src ln 156)
  asm ln 568, prod ln 156.0, live ln 163, enc 0
Collating encountered after assignments: `actArc` (decl src ln 156)
  asm ln 569, prod ln 156.0, live ln 163, enc 0

#### Check after using before as reference

Checking equivalence of `actArc` (decl src ln 156) from
  assn asm ln 569, prod ln 156.0, live ln 163, enc 0
  i64 %actArc
  (ReadLSB w64 (w32 0x0) getOriginalArcPosition.actArc)
and
  assn asm ln 690, prod ln 156.0, live ln 163, enc 0
  i64 %actArc
  (ReadLSB w64 (w32 0x0) getOriginalArcPosition.actArc)
Query to parse
array getOriginalArcPosition.actArc[8] : w32 -> w8 = symbolic
array getOriginalArcPosition.actArc[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) getOriginalArcPosition.actArc)
     (ReadLSB w64 (w32 0x0) getOriginalArcPosition.actArc)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) getOriginalArcPosition.actArc)
     N0)
✅ Before `actArc` (decl src ln 156) assn asm ln 690, prod ln 156.0, live ln 163, enc 0 symbolic value matches after assn asm ln 569, prod ln 156.0, live ln 163, enc 0

✅ After `actArc` assns checked using before as reference
Assignments:         actArc
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

Checking equivalence of `net` (decl src ln 156) from
  assn asm ln 568, prod ln 156.0, live ln 163, enc 0
  %struct.network.2* %net
  (w64 0x751C43E0A9885701)
and
  assn asm ln 688, prod ln 156.0, live ln 163, enc 0
  %struct.network* %net
  (w64 0x751C43E0A9885701)
✅ Before `net` (decl src ln 156) assn asm ln 688, prod ln 156.0, live ln 163, enc 0 symbolic value matches after assn asm ln 568, prod ln 156.0, live ln 163, enc 0

✅ After `net` assns checked using before as reference
Assignments:         net
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

## Function `flow_org_cost`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `net` (decl src ln 171), asm ln 916
  %62 = load %struct.network*, %struct.network** %net.addr, l222 c36, asm ln 916
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 916, prod ln 222.36, live ln 223, enc None
Load from declared address of `net` (decl src ln 171), asm ln 905
  %58 = load %struct.network*, %struct.network** %net.addr, l221 c48, asm ln 905
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 905, prod ln 221.48, live ln 222, enc None
Load from declared address of `net` (decl src ln 171), asm ln 872
  %48 = load %struct.network*, %struct.network** %net.addr, l212 c60, asm ln 872
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 872, prod ln 212.60, live ln 213, enc None
Load from declared address of `net` (decl src ln 171), asm ln 813
  %28 = load %struct.network*, %struct.network** %net.addr, l204 c21, asm ln 813
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 813, prod ln 204.21, live ln 205, enc None
Load from declared address of `net` (decl src ln 171), asm ln 803
  %25 = load %struct.network*, %struct.network** %net.addr, l203 c11, asm ln 803
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 803, prod ln 203.11, live ln 204, enc None
Load from declared address of `net` (decl src ln 171), asm ln 776
  %16 = load %struct.network*, %struct.network** %net.addr, l200 c21, asm ln 776
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 776, prod ln 200.21, live ln 201, enc None
Load from declared address of `net` (decl src ln 171), asm ln 766
  %13 = load %struct.network*, %struct.network** %net.addr, l196 c12, asm ln 766
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 766, prod ln 196.12, live ln 197, enc None
Load from declared address of `net` (decl src ln 171), asm ln 724
  %3 = load %struct.network*, %struct.network** %net.addr, l188 c21, asm ln 724
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 724, prod ln 188.21, live ln 189, enc None
Load from declared address of `net` (decl src ln 171), asm ln 714
  %0 = load %struct.network*, %struct.network** %net.addr, l184 c11, asm ln 714
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 714, prod ln 184.11, live ln 185, enc None
Store to declared address of `net` (decl src ln 171), asm ln 705
  arg 0
  Added assignment asm ln 705, prod ln 171.0, live ln 181, enc None
Load from declared address of `arc` (decl src ln 177), asm ln 885
  %52 = load %struct.arc*, %struct.arc** %arc, l216 c41, asm ln 885
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 885, prod ln 216.41, live ln 217, enc None
Load from declared address of `arc` (decl src ln 177), asm ln 866
  %45 = load %struct.arc*, %struct.arc** %arc, l212 c42, asm ln 866
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 866, prod ln 212.42, live ln 213, enc None
Load from declared address of `arc` (decl src ln 177), asm ln 854
  %41 = load %struct.arc*, %struct.arc** %arc, l210 c22, asm ln 854
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 854, prod ln 210.22, live ln 211, enc None
Load from declared address of `arc` (decl src ln 177), asm ln 842
  %37 = load %struct.arc*, %struct.arc** %arc, l208 c46, asm ln 842
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 842, prod ln 208.46, live ln 209, enc None
Load from declared address of `arc` (decl src ln 177), asm ln 830
  %33 = load %struct.arc*, %struct.arc** %arc, l208 c19, asm ln 830
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 830, prod ln 208.19, live ln 209, enc None
Load from declared address of `arc` (decl src ln 177), asm ln 820
  %30 = load %struct.arc*, %struct.arc** %arc, l206 c13, asm ln 820
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 820, prod ln 206.13, live ln 207, enc None
Store to declared address of `arc` (decl src ln 177), asm ln 806
  %26 = load %struct.arc*, %struct.arc** %arcs24, l203 c16, asm ln 805
  Added assignment asm ln 806, prod ln 203.16, live ln 204, enc None
Load from declared address of `arc` (decl src ln 177), asm ln 751
  %10 = load %struct.arc*, %struct.arc** %arc, l193 c13, asm ln 751
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 751, prod ln 193.13, live ln 194, enc None
Load from declared address of `arc` (decl src ln 177), asm ln 742
  %8 = load %struct.arc*, %struct.arc** %arc, l191 c13, asm ln 742
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 742, prod ln 191.13, live ln 192, enc None
Load from declared address of `arc` (decl src ln 177), asm ln 731
  %5 = load %struct.arc*, %struct.arc** %arc, l190 c13, asm ln 731
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 731, prod ln 190.13, live ln 191, enc None
Store to declared address of `arc` (decl src ln 177), asm ln 717
  %1 = load %struct.arc*, %struct.arc** %arcs, l184 c16, asm ln 716
  Added assignment asm ln 717, prod ln 184.16, live ln 188, enc None
Load from declared address of `node` (decl src ln 178), asm ln 789
  %21 = load %struct.node*, %struct.node** %node, l201 c9, asm ln 789
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 789, prod ln 201.9, live ln 202, enc None
Load from declared address of `node` (decl src ln 178), asm ln 783
  %18 = load %struct.node*, %struct.node** %node, l201 c35, asm ln 783
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 783, prod ln 201.35, live ln 202, enc None
Store to declared address of `node` (decl src ln 178), asm ln 769
  %14 = load %struct.node*, %struct.node** %nodes, l196 c17, asm ln 768
  Added assignment asm ln 769, prod ln 196.17, live ln 200, enc None
Store to declared address of `i` (decl src ln 179), asm ln 899
  %inc63 = add nsw i32 %56, 1, l204 c30, asm ln 898
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 899, prod ln 204.30, live ln 205, enc None
Load from declared address of `i` (decl src ln 179), asm ln 897
  %56 = load i32, i32* %i, l204 c30, asm ln 897
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 897, prod ln 204.30, live ln 205, enc None
Load from declared address of `i` (decl src ln 179), asm ln 886
  %53 = load i32, i32* %i, l216 c45, asm ln 886
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 886, prod ln 216.45, live ln 217, enc None
Load from declared address of `i` (decl src ln 179), asm ln 867
  %46 = load i32, i32* %i, l212 c46, asm ln 867
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 867, prod ln 212.46, live ln 213, enc None
Load from declared address of `i` (decl src ln 179), asm ln 855
  %42 = load i32, i32* %i, l210 c26, asm ln 855
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 855, prod ln 210.26, live ln 211, enc None
Load from declared address of `i` (decl src ln 179), asm ln 843
  %38 = load i32, i32* %i, l208 c50, asm ln 843
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 843, prod ln 208.50, live ln 209, enc None
Load from declared address of `i` (decl src ln 179), asm ln 831
  %34 = load i32, i32* %i, l208 c23, asm ln 831
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 831, prod ln 208.23, live ln 209, enc None
Load from declared address of `i` (decl src ln 179), asm ln 821
  %31 = load i32, i32* %i, l206 c17, asm ln 821
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 821, prod ln 206.17, live ln 207, enc None
Load from declared address of `i` (decl src ln 179), asm ln 811
  %27 = load i32, i32* %i, l204 c17, asm ln 811
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 811, prod ln 204.17, live ln 205, enc None
Store to declared address of `i` (decl src ln 179), asm ln 807
  const i32 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 807, prod ln 204.12, live ln 205, enc None
Store to declared address of `i` (decl src ln 179), asm ln 799
  %inc22 = add nsw i32 %24, 1, l200 c30, asm ln 798
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 799, prod ln 200.30, live ln 201, enc None
Load from declared address of `i` (decl src ln 179), asm ln 797
  %24 = load i32, i32* %i, l200 c30, asm ln 797
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 797, prod ln 200.30, live ln 201, enc None
Load from declared address of `i` (decl src ln 179), asm ln 790
  %22 = load i32, i32* %i, l201 c14, asm ln 790
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 790, prod ln 201.14, live ln 202, enc None
Load from declared address of `i` (decl src ln 179), asm ln 784
  %19 = load i32, i32* %i, l201 c40, asm ln 784
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 784, prod ln 201.40, live ln 202, enc None
Load from declared address of `i` (decl src ln 179), asm ln 774
  %15 = load i32, i32* %i, l200 c17, asm ln 774
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 774, prod ln 200.17, live ln 201, enc None
Store to declared address of `i` (decl src ln 179), asm ln 770
  const i32 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 770, prod ln 200.12, live ln 201, enc None
Store to declared address of `i` (decl src ln 179), asm ln 762
  %inc = add nsw i32 %12, 1, l188 c30, asm ln 761
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 762, prod ln 188.30, live ln 189, enc None
Load from declared address of `i` (decl src ln 179), asm ln 760
  %12 = load i32, i32* %i, l188 c30, asm ln 760
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 760, prod ln 188.30, live ln 189, enc None
Load from declared address of `i` (decl src ln 179), asm ln 752
  %11 = load i32, i32* %i, l193 c17, asm ln 752
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 752, prod ln 193.17, live ln 194, enc None
Load from declared address of `i` (decl src ln 179), asm ln 743
  %9 = load i32, i32* %i, l191 c17, asm ln 743
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 743, prod ln 191.17, live ln 192, enc None
Load from declared address of `i` (decl src ln 179), asm ln 732
  %6 = load i32, i32* %i, l190 c17, asm ln 732
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 732, prod ln 190.17, live ln 191, enc None
Load from declared address of `i` (decl src ln 179), asm ln 722
  %2 = load i32, i32* %i, l188 c17, asm ln 722
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 722, prod ln 188.17, live ln 189, enc None
Store to declared address of `i` (decl src ln 179), asm ln 718
  const i32 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 718, prod ln 188.12, live ln 189, enc None
Load from declared address of `fleet` (decl src ln 181), asm ln 914
  %61 = load i64, i64* %fleet, l222 c20, asm ln 914
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 914, prod ln 222.20, live ln 223, enc None
Load from declared address of `fleet` (decl src ln 181), asm ln 903
  %57 = load i64, i64* %fleet, l221 c32, asm ln 903
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 903, prod ln 221.32, live ln 222, enc None
Store to declared address of `fleet` (decl src ln 181), asm ln 881
  %inc53 = add nsw i64 %51, 1, l213 c26, asm ln 880
  Added assignment asm ln 881, prod ln 213.26, live ln 214, enc None
Load from declared address of `fleet` (decl src ln 181), asm ln 879
  %51 = load i64, i64* %fleet, l213 c26, asm ln 879
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 879, prod ln 213.26, live ln 214, enc None
Store to declared address of `fleet` (decl src ln 181), asm ln 711
  const i64 0
  Added assignment asm ln 711, prod ln 181.10, live ln 182, enc None
Load from declared address of `operational_cost` (decl src ln 182), asm ln 921
  %64 = load i64, i64* %operational_cost, l222 c56, asm ln 921
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 921, prod ln 222.56, live ln 223, enc None
Load from declared address of `operational_cost` (decl src ln 182), asm ln 910
  %60 = load i64, i64* %operational_cost, l221 c68, asm ln 910
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 910, prod ln 221.68, live ln 222, enc None
Store to declared address of `operational_cost` (decl src ln 182), asm ln 893
  %add58 = add nsw i64 %55, %54, l216 c38, asm ln 892
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 893, prod ln 216.38, live ln 217, enc None
Load from declared address of `operational_cost` (decl src ln 182), asm ln 891
  %55 = load i64, i64* %operational_cost, l216 c38, asm ln 891
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 891, prod ln 216.38, live ln 217, enc None
Store to declared address of `operational_cost` (decl src ln 182), asm ln 878
  %add = add nsw i64 %50, %sub, l212 c38, asm ln 877
  Added assignment asm ln 878, prod ln 212.38, live ln 213, enc None
Load from declared address of `operational_cost` (decl src ln 182), asm ln 876
  %50 = load i64, i64* %operational_cost, l212 c38, asm ln 876
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 876, prod ln 212.38, live ln 213, enc None
Store to declared address of `operational_cost` (decl src ln 182), asm ln 713
  const i64 0
  Added assignment asm ln 713, prod ln 182.12, live ln 184, enc None

#### After variables

Value produced for `net` (decl src ln 171), asm ln 576
  arg 0
  Added assignment asm ln 576, prod ln 171.0, live ln 184, enc None
Value produced for `fleet` (decl src ln 181), asm ln 577
  const i64 0
  Added assignment asm ln 577, prod ln 181.0, live ln 184, enc None
Value produced for `operational_cost` (decl src ln 182), asm ln 578
  const i64 0
  Added assignment asm ln 578, prod ln 182.0, live ln 184, enc None
Value produced for `arc` (decl src ln 177), asm ln 581
  %0 = load %struct.arc.0*, %struct.arc.0** %arcs, l184 c16, asm ln 580
  Added assignment asm ln 581, prod ln 184.16, live ln 188, enc None
Value produced for `i` (decl src ln 179), asm ln 582
  const i32 0
  Added assignment asm ln 582, prod ln 179.0, live ln 188, enc None
Value produced for `i` (decl src ln 179), asm ln 619
  %inc = add nsw i32 %i.0, 1, l188 c30, asm ln 618
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 619, prod ln 188.30, live ln 189, enc None
Value produced for `node` (decl src ln 178), asm ln 625
  %3 = load %struct.node.1*, %struct.node.1** %nodes, l196 c17, asm ln 624
  Added assignment asm ln 625, prod ln 196.17, live ln 200, enc None
Value produced for `i` (decl src ln 179), asm ln 626
  const i32 0
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 626, prod ln 179.0, live ln 200, enc None
Value produced for `i` (decl src ln 179), asm ln 650
  %inc22 = add nsw i32 %i.1, 1, l200 c30, asm ln 649
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 650, prod ln 200.30, live ln 201, enc None
Value produced for `arc` (decl src ln 177), asm ln 656
  %7 = load %struct.arc.0*, %struct.arc.0** %arcs24, l203 c16, asm ln 655
  Added assignment asm ln 656, prod ln 203.16, live ln 204, enc None
Value produced for `i` (decl src ln 179), asm ln 657
  const i32 0
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 657, prod ln 179.0, live ln 204, enc None
Value produced for `operational_cost` (decl src ln 182), asm ln 720
  %add = add nsw i64 %operational_cost.0, %sub, l212 c38, asm ln 719
  Added assignment asm ln 720, prod ln 212.38, live ln 213, enc None
Value produced for `fleet` (decl src ln 181), asm ln 722
  %inc53 = add nsw i64 %fleet.0, 1, l213 c26, asm ln 721
  Added assignment asm ln 722, prod ln 213.26, live ln 214, enc None
Value produced for `operational_cost` (decl src ln 182), asm ln 731
  %add58 = add nsw i64 %operational_cost.0, %18, l216 c38, asm ln 730
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 731, prod ln 216.38, live ln 217, enc None
Value produced for `i` (decl src ln 179), asm ln 740
  %inc63 = add nsw i32 %i.2, 1, l204 c30, asm ln 739
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 740, prod ln 204.30, live ln 205, enc None
Value produced for `i` (decl src ln 179), asm ln 587
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], asm ln 586
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 587, prod ln 188.30, live ln 189, enc None
Value produced for `i` (decl src ln 179), asm ln 631
  %i.1 = phi i32 [ 0, %for.end ], [ %inc22, %for.body14 ], asm ln 630
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 631, prod ln 200.30, live ln 201, enc None
Value produced for `operational_cost` (decl src ln 182), asm ln 664
  %operational_cost.0 = phi i64 [ 0, %for.end23 ], [ %operational_cost.3, %for.inc62 ], l182 c12, asm ln 663
  Added assignment asm ln 664, prod ln 182.12, live ln 204, enc None
Value produced for `fleet` (decl src ln 181), asm ln 665
  %fleet.0 = phi i64 [ 0, %for.end23 ], [ %fleet.3, %for.inc62 ], l181 c10, asm ln 662
  Added assignment asm ln 665, prod ln 181.10, live ln 204, enc None
Value produced for `i` (decl src ln 179), asm ln 666
  %i.2 = phi i32 [ 0, %for.end23 ], [ %inc63, %for.inc62 ], asm ln 661
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 666, prod ln 204.30, live ln 205, enc None
Value produced for `operational_cost` (decl src ln 182), asm ln 737
  %operational_cost.3 = phi i64 [ %operational_cost.0, %for.body30 ], [ %operational_cost.0, %land.lhs.true ], [ %add58, %if.else54 ], [ %add, %if.then50 ], l182 c12, asm ln 736
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 737, prod ln 216.38, live ln 217, enc None
Value produced for `fleet` (decl src ln 181), asm ln 738
  %fleet.3 = phi i64 [ %fleet.0, %for.body30 ], [ %fleet.0, %land.lhs.true ], [ %fleet.0, %if.else54 ], [ %inc53, %if.then50 ], l181 c10, asm ln 735
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 738, prod ln 213.26, live ln 214, enc None

#### Summary

✅ 6 before variables found, 6 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `net`
  Assignment asm ln 705, prod ln 171.0, live ln 181, enc 0
  Concrete pointer resolves to flow_org_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_org_cost.net.deref)
  Replaced concrete pointer with hash (w64 0xC04E07DD12246704)
  %struct.network* %net
  (w64 0xC04E07DD12246704)
Collected value for `fleet`
  Assignment asm ln 711, prod ln 181.10, live ln 182, enc 0
  i64 0
  (w64 0x0)
Collected value for `operational_cost`
  Assignment asm ln 713, prod ln 182.12, live ln 184, enc 0
  i64 0
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 714, prod ln 184.11, live ln 185, enc 1
  Concrete pointer resolves to flow_org_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_org_cost.net.deref)
  Replaced concrete pointer with hash (w64 0xC04E07DD12246704)
  %0 = load %struct.network*, %struct.network** %net.addr, l184 c11
  (w64 0xC04E07DD12246704)
Collected value for `arc`
  Assignment asm ln 717, prod ln 184.16, live ln 188, enc 0
  %1 = load %struct.arc*, %struct.arc** %arcs, l184 c16
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 718, prod ln 188.12, live ln 189, enc 0
  i32 0
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 722, prod ln 188.17, live ln 189, enc 1
  %2 = load i32, i32* %i, l188 c17
  (w32 0x0)
Collected value for `net`
  Assignment asm ln 724, prod ln 188.21, live ln 189, enc 2
  Concrete pointer resolves to flow_org_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_org_cost.net.deref)
  Replaced concrete pointer with hash (w64 0xC04E07DD12246704)
  %3 = load %struct.network*, %struct.network** %net.addr, l188 c21
  (w64 0xC04E07DD12246704)
Collected value for `net`
  Assignment asm ln 766, prod ln 196.12, live ln 197, enc 3
  Concrete pointer resolves to flow_org_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_org_cost.net.deref)
  Replaced concrete pointer with hash (w64 0xC04E07DD12246704)
  %13 = load %struct.network*, %struct.network** %net.addr, l196 c12
  (w64 0xC04E07DD12246704)
Collected value for `arc`
  Assignment asm ln 731, prod ln 190.13, live ln 191, enc 1
  %5 = load %struct.arc*, %struct.arc** %arc, l190 c13
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 732, prod ln 190.17, live ln 191, enc 2
  %6 = load i32, i32* %i, l190 c17
  (w32 0x0)
Collected value for `node`
  Assignment asm ln 769, prod ln 196.17, live ln 200, enc 0
  %14 = load %struct.node*, %struct.node** %nodes, l196 c17
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 770, prod ln 200.12, live ln 201, enc 3
  i32 0
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 774, prod ln 200.17, live ln 201, enc 4
  %15 = load i32, i32* %i, l200 c17
  (w32 0x0)
[0;1;31mKLEE: ERROR: mcfutil.c:190: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `net`
  Assignment asm ln 776, prod ln 200.21, live ln 201, enc 4
  Concrete pointer resolves to flow_org_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_org_cost.net.deref)
  Replaced concrete pointer with hash (w64 0xC04E07DD12246704)
  %16 = load %struct.network*, %struct.network** %net.addr, l200 c21
  (w64 0xC04E07DD12246704)
Collected value for `node`
  Assignment asm ln 783, prod ln 201.35, live ln 202, enc 1
  %18 = load %struct.node*, %struct.node** %node, l201 c35
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 803, prod ln 203.11, live ln 204, enc 5
  Concrete pointer resolves to flow_org_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_org_cost.net.deref)
  Replaced concrete pointer with hash (w64 0xC04E07DD12246704)
  %25 = load %struct.network*, %struct.network** %net.addr, l203 c11
  (w64 0xC04E07DD12246704)
Collected value for `arc`
  Assignment asm ln 806, prod ln 203.16, live ln 204, enc 2
  %26 = load %struct.arc*, %struct.arc** %arcs24, l203 c16
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 807, prod ln 204.12, live ln 205, enc 5
  i32 0
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 784, prod ln 201.40, live ln 202, enc 6
  %19 = load i32, i32* %i, l201 c40
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 811, prod ln 204.17, live ln 205, enc 7
  %27 = load i32, i32* %i, l204 c17
  (w32 0x0)
Collected value for `net`
  Assignment asm ln 813, prod ln 204.21, live ln 205, enc 6
  Concrete pointer resolves to flow_org_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_org_cost.net.deref)
  Replaced concrete pointer with hash (w64 0xC04E07DD12246704)
  %28 = load %struct.network*, %struct.network** %net.addr, l204 c21
  (w64 0xC04E07DD12246704)
[0;1;31mKLEE: ERROR: mcfutil.c:201: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `fleet`
  Assignment asm ln 903, prod ln 221.32, live ln 222, enc 1
  %57 = load i64, i64* %fleet, l221 c32
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 905, prod ln 221.48, live ln 222, enc 7
  Concrete pointer resolves to flow_org_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_org_cost.net.deref)
  Replaced concrete pointer with hash (w64 0xC04E07DD12246704)
  %58 = load %struct.network*, %struct.network** %net.addr, l221 c48
  (w64 0xC04E07DD12246704)
Collected value for `operational_cost`
  Assignment asm ln 910, prod ln 221.68, live ln 222, enc 1
  %60 = load i64, i64* %operational_cost, l221 c68
  (w64 0x0)
Collected value for `fleet`
  Assignment asm ln 914, prod ln 222.20, live ln 223, enc 2
  %61 = load i64, i64* %fleet, l222 c20
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 916, prod ln 222.36, live ln 223, enc 8
  Concrete pointer resolves to flow_org_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_org_cost.net.deref)
  Replaced concrete pointer with hash (w64 0xC04E07DD12246704)
  %62 = load %struct.network*, %struct.network** %net.addr, l222 c36
  (w64 0xC04E07DD12246704)
Collected value for `operational_cost`
  Assignment asm ln 921, prod ln 222.56, live ln 223, enc 2
  %64 = load i64, i64* %operational_cost, l222 c56
  (w64 0x0)

🔔 Unable to execute all before instructions

🔔 Unable to execute all before program states

#### After values

Collected value for `net`
  Assignment asm ln 576, prod ln 171.0, live ln 184, enc 0
  Concrete pointer resolves to flow_org_cost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) flow_org_cost.net.deref)
  Replaced concrete pointer with hash (w64 0xC04E07DD12246704)
  %struct.network.2* %net
  (w64 0xC04E07DD12246704)
Collected value for `fleet`
  Assignment asm ln 577, prod ln 181.0, live ln 184, enc 0
  i64 0
  (w64 0x0)
Collected value for `operational_cost`
  Assignment asm ln 578, prod ln 182.0, live ln 184, enc 0
  i64 0
  (w64 0x0)
Collected value for `arc`
  Assignment asm ln 581, prod ln 184.16, live ln 188, enc 0
  %0 = load %struct.arc.0*, %struct.arc.0** %arcs, l184 c16
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 582, prod ln 179.0, live ln 188, enc 0
  i32 0
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 587, prod ln 188.30, live ln 189, enc 1
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  Block: 0
  (w32 0x0)
Collected value for `node`
  Assignment asm ln 625, prod ln 196.17, live ln 200, enc 0
  %3 = load %struct.node.1*, %struct.node.1** %nodes, l196 c17
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 626, prod ln 179.0, live ln 200, enc 2
  i32 0
  (w32 0x0)
[0;1;31mKLEE: ERROR: mcfutil.c:190: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `i`
  Assignment asm ln 631, prod ln 200.30, live ln 201, enc 3
  %i.1 = phi i32 [ 0, %for.end ], [ %inc22, %for.body14 ]
  Block: 0
  (w32 0x0)
Collected value for `arc`
  Assignment asm ln 656, prod ln 203.16, live ln 204, enc 1
  %7 = load %struct.arc.0*, %struct.arc.0** %arcs24, l203 c16
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 657, prod ln 179.0, live ln 204, enc 4
  i32 0
  (w32 0x0)
[0;1;31mKLEE: ERROR: mcfutil.c:201: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `operational_cost`
  Assignment asm ln 664, prod ln 182.12, live ln 204, enc 1
  %operational_cost.0 = phi i64 [ 0, %for.end23 ], [ %operational_cost.3, %for.inc62 ], l182 c12
  Block: 0
  (w64 0x0)
Collected value for `fleet`
  Assignment asm ln 665, prod ln 181.10, live ln 204, enc 1
  %fleet.0 = phi i64 [ 0, %for.end23 ], [ %fleet.3, %for.inc62 ], l181 c10
  Block: 0
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 666, prod ln 204.30, live ln 205, enc 5
  %i.2 = phi i32 [ 0, %for.end23 ], [ %inc63, %for.inc62 ]
  Block: 0
  (w32 0x0)

🔔 Unable to execute all after instructions

🔔 Unable to execute all after program states

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `net` (decl src ln 171)

Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 171) from
  assn asm ln 705, prod ln 171.0, live ln 181, enc 0
  %struct.network* %net
and
  assn asm ln 872, prod ln 212.60, live ln 213, enc None
  %48 = load %struct.network*, %struct.network** %net.addr, l212 c60

Checking equivalence of `net` (decl src ln 171) from
  assn asm ln 714, prod ln 184.11, live ln 185, enc 1
  %0 = load %struct.network*, %struct.network** %net.addr, l184 c11
  (w64 0xC04E07DD12246704)
and
  assn asm ln 705, prod ln 171.0, live ln 181, enc 0
  %struct.network* %net
  (w64 0xC04E07DD12246704)
🔔 Removing: asm ln 714, prod ln 184.11, live ln 185, enc 1

Checking equivalence of `net` (decl src ln 171) from
  assn asm ln 724, prod ln 188.21, live ln 189, enc 2
  %3 = load %struct.network*, %struct.network** %net.addr, l188 c21
  (w64 0xC04E07DD12246704)
and
  assn asm ln 705, prod ln 171.0, live ln 181, enc 0
  %struct.network* %net
  (w64 0xC04E07DD12246704)
🔔 Removing: asm ln 724, prod ln 188.21, live ln 189, enc 2

Checking equivalence of `net` (decl src ln 171) from
  assn asm ln 766, prod ln 196.12, live ln 197, enc 3
  %13 = load %struct.network*, %struct.network** %net.addr, l196 c12
  (w64 0xC04E07DD12246704)
and
  assn asm ln 705, prod ln 171.0, live ln 181, enc 0
  %struct.network* %net
  (w64 0xC04E07DD12246704)
🔔 Removing: asm ln 766, prod ln 196.12, live ln 197, enc 3

Checking equivalence of `net` (decl src ln 171) from
  assn asm ln 776, prod ln 200.21, live ln 201, enc 4
  %16 = load %struct.network*, %struct.network** %net.addr, l200 c21
  (w64 0xC04E07DD12246704)
and
  assn asm ln 705, prod ln 171.0, live ln 181, enc 0
  %struct.network* %net
  (w64 0xC04E07DD12246704)
🔔 Removing: asm ln 776, prod ln 200.21, live ln 201, enc 4

Checking equivalence of `net` (decl src ln 171) from
  assn asm ln 803, prod ln 203.11, live ln 204, enc 5
  %25 = load %struct.network*, %struct.network** %net.addr, l203 c11
  (w64 0xC04E07DD12246704)
and
  assn asm ln 705, prod ln 171.0, live ln 181, enc 0
  %struct.network* %net
  (w64 0xC04E07DD12246704)
🔔 Removing: asm ln 803, prod ln 203.11, live ln 204, enc 5

Checking equivalence of `net` (decl src ln 171) from
  assn asm ln 813, prod ln 204.21, live ln 205, enc 6
  %28 = load %struct.network*, %struct.network** %net.addr, l204 c21
  (w64 0xC04E07DD12246704)
and
  assn asm ln 705, prod ln 171.0, live ln 181, enc 0
  %struct.network* %net
  (w64 0xC04E07DD12246704)
🔔 Removing: asm ln 813, prod ln 204.21, live ln 205, enc 6

Checking equivalence of `net` (decl src ln 171) from
  assn asm ln 905, prod ln 221.48, live ln 222, enc 7
  %58 = load %struct.network*, %struct.network** %net.addr, l221 c48
  (w64 0xC04E07DD12246704)
and
  assn asm ln 705, prod ln 171.0, live ln 181, enc 0
  %struct.network* %net
  (w64 0xC04E07DD12246704)
🔔 Removing: asm ln 905, prod ln 221.48, live ln 222, enc 7

Checking equivalence of `net` (decl src ln 171) from
  assn asm ln 916, prod ln 222.36, live ln 223, enc 8
  %62 = load %struct.network*, %struct.network** %net.addr, l222 c36
  (w64 0xC04E07DD12246704)
and
  assn asm ln 705, prod ln 171.0, live ln 181, enc 0
  %struct.network* %net
  (w64 0xC04E07DD12246704)
🔔 Removing: asm ln 916, prod ln 222.36, live ln 223, enc 8

Filtering before assignments: `arc` (decl src ln 177)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 177) from
  assn asm ln 866, prod ln 212.42, live ln 213, enc None
  %45 = load %struct.arc*, %struct.arc** %arc, l212 c42
and
  assn asm ln 885, prod ln 216.41, live ln 217, enc None
  %52 = load %struct.arc*, %struct.arc** %arc, l216 c41
🔔 Removing: asm ln 866, prod ln 212.42, live ln 213, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 177) from
  assn asm ln 854, prod ln 210.22, live ln 211, enc None
  %41 = load %struct.arc*, %struct.arc** %arc, l210 c22
and
  assn asm ln 885, prod ln 216.41, live ln 217, enc None
  %52 = load %struct.arc*, %struct.arc** %arc, l216 c41
🔔 Removing: asm ln 854, prod ln 210.22, live ln 211, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 177) from
  assn asm ln 842, prod ln 208.46, live ln 209, enc None
  %37 = load %struct.arc*, %struct.arc** %arc, l208 c46
and
  assn asm ln 885, prod ln 216.41, live ln 217, enc None
  %52 = load %struct.arc*, %struct.arc** %arc, l216 c41
🔔 Removing: asm ln 842, prod ln 208.46, live ln 209, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 177) from
  assn asm ln 830, prod ln 208.19, live ln 209, enc None
  %33 = load %struct.arc*, %struct.arc** %arc, l208 c19
and
  assn asm ln 885, prod ln 216.41, live ln 217, enc None
  %52 = load %struct.arc*, %struct.arc** %arc, l216 c41
🔔 Removing: asm ln 830, prod ln 208.19, live ln 209, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 177) from
  assn asm ln 820, prod ln 206.13, live ln 207, enc None
  %30 = load %struct.arc*, %struct.arc** %arc, l206 c13
and
  assn asm ln 885, prod ln 216.41, live ln 217, enc None
  %52 = load %struct.arc*, %struct.arc** %arc, l216 c41
🔔 Removing: asm ln 820, prod ln 206.13, live ln 207, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 177) from
  assn asm ln 742, prod ln 191.13, live ln 192, enc None
  %8 = load %struct.arc*, %struct.arc** %arc, l191 c13
and
  assn asm ln 885, prod ln 216.41, live ln 217, enc None
  %52 = load %struct.arc*, %struct.arc** %arc, l216 c41
🔔 Removing: asm ln 742, prod ln 191.13, live ln 192, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 177) from
  assn asm ln 751, prod ln 193.13, live ln 194, enc None
  %10 = load %struct.arc*, %struct.arc** %arc, l193 c13
and
  assn asm ln 885, prod ln 216.41, live ln 217, enc None
  %52 = load %struct.arc*, %struct.arc** %arc, l216 c41
🔔 Removing: asm ln 751, prod ln 193.13, live ln 194, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 177) from
  assn asm ln 717, prod ln 184.16, live ln 188, enc 0
  %1 = load %struct.arc*, %struct.arc** %arcs, l184 c16
and
  assn asm ln 885, prod ln 216.41, live ln 217, enc None
  %52 = load %struct.arc*, %struct.arc** %arc, l216 c41

Checking equivalence of `arc` (decl src ln 177) from
  assn asm ln 731, prod ln 190.13, live ln 191, enc 1
  %5 = load %struct.arc*, %struct.arc** %arc, l190 c13
  (w64 0x0)
and
  assn asm ln 717, prod ln 184.16, live ln 188, enc 0
  %1 = load %struct.arc*, %struct.arc** %arcs, l184 c16
  (w64 0x0)
🔔 Removing: asm ln 731, prod ln 190.13, live ln 191, enc 1

Checking equivalence of `arc` (decl src ln 177) from
  assn asm ln 806, prod ln 203.16, live ln 204, enc 2
  %26 = load %struct.arc*, %struct.arc** %arcs24, l203 c16
  (w64 0x0)
and
  assn asm ln 717, prod ln 184.16, live ln 188, enc 0
  %1 = load %struct.arc*, %struct.arc** %arcs, l184 c16
  (w64 0x0)
🔔 Removing: asm ln 806, prod ln 203.16, live ln 204, enc 2

Filtering before assignments: `node` (decl src ln 178)

Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 178) from
  assn asm ln 769, prod ln 196.17, live ln 200, enc 0
  %14 = load %struct.node*, %struct.node** %nodes, l196 c17
and
  assn asm ln 789, prod ln 201.9, live ln 202, enc None
  %21 = load %struct.node*, %struct.node** %node, l201 c9

Checking equivalence of `node` (decl src ln 178) from
  assn asm ln 783, prod ln 201.35, live ln 202, enc 1
  %18 = load %struct.node*, %struct.node** %node, l201 c35
  (w64 0x0)
and
  assn asm ln 769, prod ln 196.17, live ln 200, enc 0
  %14 = load %struct.node*, %struct.node** %nodes, l196 c17
  (w64 0x0)
🔔 Removing: asm ln 783, prod ln 201.35, live ln 202, enc 1

Filtering before assignments: `i` (decl src ln 179)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 897, prod ln 204.30, live ln 205, enc None
  %56 = load i32, i32* %i, l204 c30
and
  assn asm ln 899, prod ln 204.30, live ln 205, enc None
  %inc63 = add nsw i32 %56, 1, l204 c30
🔔 Removing: asm ln 897, prod ln 204.30, live ln 205, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 886, prod ln 216.45, live ln 217, enc None
  %53 = load i32, i32* %i, l216 c45
and
  assn asm ln 899, prod ln 204.30, live ln 205, enc None
  %inc63 = add nsw i32 %56, 1, l204 c30
🔔 Removing: asm ln 886, prod ln 216.45, live ln 217, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 867, prod ln 212.46, live ln 213, enc None
  %46 = load i32, i32* %i, l212 c46
and
  assn asm ln 899, prod ln 204.30, live ln 205, enc None
  %inc63 = add nsw i32 %56, 1, l204 c30
🔔 Removing: asm ln 867, prod ln 212.46, live ln 213, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 855, prod ln 210.26, live ln 211, enc None
  %42 = load i32, i32* %i, l210 c26
and
  assn asm ln 899, prod ln 204.30, live ln 205, enc None
  %inc63 = add nsw i32 %56, 1, l204 c30
🔔 Removing: asm ln 855, prod ln 210.26, live ln 211, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 843, prod ln 208.50, live ln 209, enc None
  %38 = load i32, i32* %i, l208 c50
and
  assn asm ln 899, prod ln 204.30, live ln 205, enc None
  %inc63 = add nsw i32 %56, 1, l204 c30
🔔 Removing: asm ln 843, prod ln 208.50, live ln 209, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 831, prod ln 208.23, live ln 209, enc None
  %34 = load i32, i32* %i, l208 c23
and
  assn asm ln 899, prod ln 204.30, live ln 205, enc None
  %inc63 = add nsw i32 %56, 1, l204 c30
🔔 Removing: asm ln 831, prod ln 208.23, live ln 209, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 821, prod ln 206.17, live ln 207, enc None
  %31 = load i32, i32* %i, l206 c17
and
  assn asm ln 899, prod ln 204.30, live ln 205, enc None
  %inc63 = add nsw i32 %56, 1, l204 c30
🔔 Removing: asm ln 821, prod ln 206.17, live ln 207, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 743, prod ln 191.17, live ln 192, enc None
  %9 = load i32, i32* %i, l191 c17
and
  assn asm ln 899, prod ln 204.30, live ln 205, enc None
  %inc63 = add nsw i32 %56, 1, l204 c30
🔔 Removing: asm ln 743, prod ln 191.17, live ln 192, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 752, prod ln 193.17, live ln 194, enc None
  %11 = load i32, i32* %i, l193 c17
and
  assn asm ln 899, prod ln 204.30, live ln 205, enc None
  %inc63 = add nsw i32 %56, 1, l204 c30
🔔 Removing: asm ln 752, prod ln 193.17, live ln 194, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 799, prod ln 200.30, live ln 201, enc None
  %inc22 = add nsw i32 %24, 1, l200 c30
and
  assn asm ln 899, prod ln 204.30, live ln 205, enc None
  %inc63 = add nsw i32 %56, 1, l204 c30
🔔 Removing: asm ln 799, prod ln 200.30, live ln 201, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 797, prod ln 200.30, live ln 201, enc None
  %24 = load i32, i32* %i, l200 c30
and
  assn asm ln 899, prod ln 204.30, live ln 205, enc None
  %inc63 = add nsw i32 %56, 1, l204 c30
🔔 Removing: asm ln 797, prod ln 200.30, live ln 201, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 790, prod ln 201.14, live ln 202, enc None
  %22 = load i32, i32* %i, l201 c14
and
  assn asm ln 899, prod ln 204.30, live ln 205, enc None
  %inc63 = add nsw i32 %56, 1, l204 c30
🔔 Removing: asm ln 790, prod ln 201.14, live ln 202, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 760, prod ln 188.30, live ln 189, enc None
  %12 = load i32, i32* %i, l188 c30
and
  assn asm ln 899, prod ln 204.30, live ln 205, enc None
  %inc63 = add nsw i32 %56, 1, l204 c30
🔔 Removing: asm ln 760, prod ln 188.30, live ln 189, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 762, prod ln 188.30, live ln 189, enc None
  %inc = add nsw i32 %12, 1, l188 c30
and
  assn asm ln 899, prod ln 204.30, live ln 205, enc None
  %inc63 = add nsw i32 %56, 1, l204 c30
🔔 Removing: asm ln 762, prod ln 188.30, live ln 189, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 718, prod ln 188.12, live ln 189, enc 0
  i32 0
and
  assn asm ln 899, prod ln 204.30, live ln 205, enc None
  %inc63 = add nsw i32 %56, 1, l204 c30

Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 722, prod ln 188.17, live ln 189, enc 1
  %2 = load i32, i32* %i, l188 c17
  (w32 0x0)
and
  assn asm ln 718, prod ln 188.12, live ln 189, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 722, prod ln 188.17, live ln 189, enc 1

Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 732, prod ln 190.17, live ln 191, enc 2
  %6 = load i32, i32* %i, l190 c17
  (w32 0x0)
and
  assn asm ln 718, prod ln 188.12, live ln 189, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 732, prod ln 190.17, live ln 191, enc 2

Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 770, prod ln 200.12, live ln 201, enc 3
  i32 0
  (w32 0x0)
and
  assn asm ln 718, prod ln 188.12, live ln 189, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 770, prod ln 200.12, live ln 201, enc 3

Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 774, prod ln 200.17, live ln 201, enc 4
  %15 = load i32, i32* %i, l200 c17
  (w32 0x0)
and
  assn asm ln 718, prod ln 188.12, live ln 189, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 774, prod ln 200.17, live ln 201, enc 4

Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 807, prod ln 204.12, live ln 205, enc 5
  i32 0
  (w32 0x0)
and
  assn asm ln 718, prod ln 188.12, live ln 189, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 807, prod ln 204.12, live ln 205, enc 5

Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 784, prod ln 201.40, live ln 202, enc 6
  %19 = load i32, i32* %i, l201 c40
  (w32 0x0)
and
  assn asm ln 718, prod ln 188.12, live ln 189, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 784, prod ln 201.40, live ln 202, enc 6

Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 811, prod ln 204.17, live ln 205, enc 7
  %27 = load i32, i32* %i, l204 c17
  (w32 0x0)
and
  assn asm ln 718, prod ln 188.12, live ln 189, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 811, prod ln 204.17, live ln 205, enc 7

Filtering before assignments: `fleet` (decl src ln 181)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `fleet` (decl src ln 181) from
  assn asm ln 879, prod ln 213.26, live ln 214, enc None
  %51 = load i64, i64* %fleet, l213 c26
and
  assn asm ln 881, prod ln 213.26, live ln 214, enc None
  %inc53 = add nsw i64 %51, 1, l213 c26
🔔 Removing: asm ln 879, prod ln 213.26, live ln 214, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `fleet` (decl src ln 181) from
  assn asm ln 711, prod ln 181.10, live ln 182, enc 0
  i64 0
and
  assn asm ln 881, prod ln 213.26, live ln 214, enc None
  %inc53 = add nsw i64 %51, 1, l213 c26

Checking equivalence of `fleet` (decl src ln 181) from
  assn asm ln 903, prod ln 221.32, live ln 222, enc 1
  %57 = load i64, i64* %fleet, l221 c32
  (w64 0x0)
and
  assn asm ln 711, prod ln 181.10, live ln 182, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 903, prod ln 221.32, live ln 222, enc 1

Checking equivalence of `fleet` (decl src ln 181) from
  assn asm ln 914, prod ln 222.20, live ln 223, enc 2
  %61 = load i64, i64* %fleet, l222 c20
  (w64 0x0)
and
  assn asm ln 711, prod ln 181.10, live ln 182, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 914, prod ln 222.20, live ln 223, enc 2

Filtering before assignments: `operational_cost` (decl src ln 182)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `operational_cost` (decl src ln 182) from
  assn asm ln 876, prod ln 212.38, live ln 213, enc None
  %50 = load i64, i64* %operational_cost, l212 c38
and
  assn asm ln 891, prod ln 216.38, live ln 217, enc None
  %55 = load i64, i64* %operational_cost, l216 c38
🔔 Removing: asm ln 876, prod ln 212.38, live ln 213, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `operational_cost` (decl src ln 182) from
  assn asm ln 893, prod ln 216.38, live ln 217, enc None
  %add58 = add nsw i64 %55, %54, l216 c38
and
  assn asm ln 891, prod ln 216.38, live ln 217, enc None
  %55 = load i64, i64* %operational_cost, l216 c38
🔔 Removing: asm ln 893, prod ln 216.38, live ln 217, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `operational_cost` (decl src ln 182) from
  assn asm ln 878, prod ln 212.38, live ln 213, enc None
  %add = add nsw i64 %50, %sub, l212 c38
and
  assn asm ln 891, prod ln 216.38, live ln 217, enc None
  %55 = load i64, i64* %operational_cost, l216 c38
🔔 Removing: asm ln 878, prod ln 212.38, live ln 213, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `operational_cost` (decl src ln 182) from
  assn asm ln 713, prod ln 182.12, live ln 184, enc 0
  i64 0
and
  assn asm ln 891, prod ln 216.38, live ln 217, enc None
  %55 = load i64, i64* %operational_cost, l216 c38

Checking equivalence of `operational_cost` (decl src ln 182) from
  assn asm ln 910, prod ln 221.68, live ln 222, enc 1
  %60 = load i64, i64* %operational_cost, l221 c68
  (w64 0x0)
and
  assn asm ln 713, prod ln 182.12, live ln 184, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 910, prod ln 221.68, live ln 222, enc 1

Checking equivalence of `operational_cost` (decl src ln 182) from
  assn asm ln 921, prod ln 222.56, live ln 223, enc 2
  %64 = load i64, i64* %operational_cost, l222 c56
  (w64 0x0)
and
  assn asm ln 713, prod ln 182.12, live ln 184, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 921, prod ln 222.56, live ln 223, enc 2

Filtering after assignments: `fleet` (decl src ln 181)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `fleet` (decl src ln 181) from
  assn asm ln 738, prod ln 213.26, live ln 214, enc None
  %fleet.3 = phi i64 [ %fleet.0, %for.body30 ], [ %fleet.0, %land.lhs.true ], [ %fleet.0, %if.else54 ], [ %inc53, %if.then50 ], l181 c10
and
  assn asm ln 722, prod ln 213.26, live ln 214, enc None
  %inc53 = add nsw i64 %fleet.0, 1, l213 c26
🔔 Removing: asm ln 738, prod ln 213.26, live ln 214, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `fleet` (decl src ln 181) from
  assn asm ln 577, prod ln 181.0, live ln 184, enc 0
  i64 0
and
  assn asm ln 722, prod ln 213.26, live ln 214, enc None
  %inc53 = add nsw i64 %fleet.0, 1, l213 c26

Checking equivalence of `fleet` (decl src ln 181) from
  assn asm ln 665, prod ln 181.10, live ln 204, enc 1
  %fleet.0 = phi i64 [ 0, %for.end23 ], [ %fleet.3, %for.inc62 ], l181 c10
  (w64 0x0)
and
  assn asm ln 577, prod ln 181.0, live ln 184, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 665, prod ln 181.10, live ln 204, enc 1

Filtering after assignments: `operational_cost` (decl src ln 182)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `operational_cost` (decl src ln 182) from
  assn asm ln 731, prod ln 216.38, live ln 217, enc None
  %add58 = add nsw i64 %operational_cost.0, %18, l216 c38
and
  assn asm ln 720, prod ln 212.38, live ln 213, enc None
  %add = add nsw i64 %operational_cost.0, %sub, l212 c38
🔔 Removing: asm ln 731, prod ln 216.38, live ln 217, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `operational_cost` (decl src ln 182) from
  assn asm ln 737, prod ln 216.38, live ln 217, enc None
  %operational_cost.3 = phi i64 [ %operational_cost.0, %for.body30 ], [ %operational_cost.0, %land.lhs.true ], [ %add58, %if.else54 ], [ %add, %if.then50 ], l182 c12
and
  assn asm ln 720, prod ln 212.38, live ln 213, enc None
  %add = add nsw i64 %operational_cost.0, %sub, l212 c38
🔔 Removing: asm ln 737, prod ln 216.38, live ln 217, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `operational_cost` (decl src ln 182) from
  assn asm ln 578, prod ln 182.0, live ln 184, enc 0
  i64 0
and
  assn asm ln 720, prod ln 212.38, live ln 213, enc None
  %add = add nsw i64 %operational_cost.0, %sub, l212 c38

Checking equivalence of `operational_cost` (decl src ln 182) from
  assn asm ln 664, prod ln 182.12, live ln 204, enc 1
  %operational_cost.0 = phi i64 [ 0, %for.end23 ], [ %operational_cost.3, %for.inc62 ], l182 c12
  (w64 0x0)
and
  assn asm ln 578, prod ln 182.0, live ln 184, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 664, prod ln 182.12, live ln 204, enc 1

Filtering after assignments: `arc` (decl src ln 177)

Checking equivalence of `arc` (decl src ln 177) from
  assn asm ln 656, prod ln 203.16, live ln 204, enc 1
  %7 = load %struct.arc.0*, %struct.arc.0** %arcs24, l203 c16
  (w64 0x0)
and
  assn asm ln 581, prod ln 184.16, live ln 188, enc 0
  %0 = load %struct.arc.0*, %struct.arc.0** %arcs, l184 c16
  (w64 0x0)
🔔 Removing: asm ln 656, prod ln 203.16, live ln 204, enc 1

Filtering after assignments: `i` (decl src ln 179)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 619, prod ln 188.30, live ln 189, enc None
  %inc = add nsw i32 %i.0, 1, l188 c30
and
  assn asm ln 650, prod ln 200.30, live ln 201, enc None
  %inc22 = add nsw i32 %i.1, 1, l200 c30
🔔 Removing: asm ln 619, prod ln 188.30, live ln 189, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 740, prod ln 204.30, live ln 205, enc None
  %inc63 = add nsw i32 %i.2, 1, l204 c30
and
  assn asm ln 650, prod ln 200.30, live ln 201, enc None
  %inc22 = add nsw i32 %i.1, 1, l200 c30
🔔 Removing: asm ln 740, prod ln 204.30, live ln 205, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 582, prod ln 179.0, live ln 188, enc 0
  i32 0
and
  assn asm ln 650, prod ln 200.30, live ln 201, enc None
  %inc22 = add nsw i32 %i.1, 1, l200 c30

Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 587, prod ln 188.30, live ln 189, enc 1
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  (w32 0x0)
and
  assn asm ln 582, prod ln 179.0, live ln 188, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 587, prod ln 188.30, live ln 189, enc 1

Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 626, prod ln 179.0, live ln 200, enc 2
  i32 0
  (w32 0x0)
and
  assn asm ln 582, prod ln 179.0, live ln 188, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 626, prod ln 179.0, live ln 200, enc 2

Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 631, prod ln 200.30, live ln 201, enc 3
  %i.1 = phi i32 [ 0, %for.end ], [ %inc22, %for.body14 ]
  (w32 0x0)
and
  assn asm ln 582, prod ln 179.0, live ln 188, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 631, prod ln 200.30, live ln 201, enc 3

Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 657, prod ln 179.0, live ln 204, enc 4
  i32 0
  (w32 0x0)
and
  assn asm ln 582, prod ln 179.0, live ln 188, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 657, prod ln 179.0, live ln 204, enc 4

Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 666, prod ln 204.30, live ln 205, enc 5
  %i.2 = phi i32 [ 0, %for.end23 ], [ %inc63, %for.inc62 ]
  (w32 0x0)
and
  assn asm ln 582, prod ln 179.0, live ln 188, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 666, prod ln 204.30, live ln 205, enc 5

Collating encountered before assignments: `net` (decl src ln 171)
❌ Assignment asm ln 872, prod ln 212.60, live ln 213, enc None for `net` (decl src ln 171) was not encountered during execution
  asm ln 705, prod ln 171.0, live ln 181, enc 0
Collating encountered before assignments: `arc` (decl src ln 177)
❌ Assignment asm ln 885, prod ln 216.41, live ln 217, enc None for `arc` (decl src ln 177) was not encountered during execution
  asm ln 717, prod ln 184.16, live ln 188, enc 0
Collating encountered before assignments: `node` (decl src ln 178)
❌ Assignment asm ln 789, prod ln 201.9, live ln 202, enc None for `node` (decl src ln 178) was not encountered during execution
  asm ln 769, prod ln 196.17, live ln 200, enc 0
Collating encountered before assignments: `i` (decl src ln 179)
❌ Assignment asm ln 899, prod ln 204.30, live ln 205, enc None for `i` (decl src ln 179) was not encountered during execution
  asm ln 718, prod ln 188.12, live ln 189, enc 0
Collating encountered before assignments: `fleet` (decl src ln 181)
❌ Assignment asm ln 881, prod ln 213.26, live ln 214, enc None for `fleet` (decl src ln 181) was not encountered during execution
  asm ln 711, prod ln 181.10, live ln 182, enc 0
Collating encountered before assignments: `operational_cost` (decl src ln 182)
❌ Assignment asm ln 891, prod ln 216.38, live ln 217, enc None for `operational_cost` (decl src ln 182) was not encountered during execution
  asm ln 713, prod ln 182.12, live ln 184, enc 0

Collating encountered after assignments: `net` (decl src ln 171)
  asm ln 576, prod ln 171.0, live ln 184, enc 0
Collating encountered after assignments: `fleet` (decl src ln 181)
❌ Assignment asm ln 722, prod ln 213.26, live ln 214, enc None for `fleet` (decl src ln 181) was not encountered during execution
  asm ln 577, prod ln 181.0, live ln 184, enc 0
Collating encountered after assignments: `operational_cost` (decl src ln 182)
❌ Assignment asm ln 720, prod ln 212.38, live ln 213, enc None for `operational_cost` (decl src ln 182) was not encountered during execution
  asm ln 578, prod ln 182.0, live ln 184, enc 0
Collating encountered after assignments: `arc` (decl src ln 177)
  asm ln 581, prod ln 184.16, live ln 188, enc 0
Collating encountered after assignments: `i` (decl src ln 179)
❌ Assignment asm ln 650, prod ln 200.30, live ln 201, enc None for `i` (decl src ln 179) was not encountered during execution
  asm ln 582, prod ln 179.0, live ln 188, enc 0
Collating encountered after assignments: `node` (decl src ln 178)
  asm ln 625, prod ln 196.17, live ln 200, enc 0

#### Check after using before as reference

❌ Before assn asm ln 885, prod ln 216.41, live ln 217, enc None for `arc` (decl src ln 177) was not encountered during execution

Checking equivalence of `arc` (decl src ln 177) from
  assn asm ln 581, prod ln 184.16, live ln 188, enc 0
  %0 = load %struct.arc.0*, %struct.arc.0** %arcs, l184 c16
  (w64 0x0)
and
  assn asm ln 717, prod ln 184.16, live ln 188, enc 0
  %1 = load %struct.arc*, %struct.arc** %arcs, l184 c16
  (w64 0x0)
✅ Before `arc` (decl src ln 177) assn asm ln 717, prod ln 184.16, live ln 188, enc 0 symbolic value matches after assn asm ln 581, prod ln 184.16, live ln 188, enc 0

❌ After `arc` assns checked using before as reference
Assignments:         arc
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 881, prod ln 213.26, live ln 214, enc None for `fleet` (decl src ln 181) was not encountered during execution

❌ After assn asm ln 722, prod ln 213.26, live ln 214, enc None for `fleet` (decl src ln 181) was not encountered during execution

❌ Before `fleet` (decl src ln 181) assn asm ln 711, prod ln 181.10, live ln 182, enc 0 coordinates don't match after assn asm ln 577, prod ln 181.0, live ln 184, enc 0
Checking equivalence of `fleet` (decl src ln 181) from
  assn asm ln 577, prod ln 181.0, live ln 184, enc 0
  i64 0
  (w64 0x0)
and
  assn asm ln 711, prod ln 181.10, live ln 182, enc 0
  i64 0
  (w64 0x0)
✅ Before `fleet` (decl src ln 181) assn asm ln 711, prod ln 181.10, live ln 182, enc 0 symbolic value matches after assn asm ln 577, prod ln 181.0, live ln 184, enc 0

❌ After `fleet` assns checked using before as reference
Assignments:         fleet
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 899, prod ln 204.30, live ln 205, enc None for `i` (decl src ln 179) was not encountered during execution

❌ After assn asm ln 650, prod ln 200.30, live ln 201, enc None for `i` (decl src ln 179) was not encountered during execution

❌ Before `i` (decl src ln 179) assn asm ln 718, prod ln 188.12, live ln 189, enc 0 coordinates don't match after assn asm ln 582, prod ln 179.0, live ln 188, enc 0
Checking equivalence of `i` (decl src ln 179) from
  assn asm ln 582, prod ln 179.0, live ln 188, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 718, prod ln 188.12, live ln 189, enc 0
  i32 0
  (w32 0x0)
✅ Before `i` (decl src ln 179) assn asm ln 718, prod ln 188.12, live ln 189, enc 0 symbolic value matches after assn asm ln 582, prod ln 179.0, live ln 188, enc 0

❌ After `i` assns checked using before as reference
Assignments:         i
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 872, prod ln 212.60, live ln 213, enc None for `net` (decl src ln 171) was not encountered during execution

❌ Before `net` (decl src ln 171) assn asm ln 705, prod ln 171.0, live ln 181, enc 0 coordinates don't match after assn asm ln 576, prod ln 171.0, live ln 184, enc 0
Checking equivalence of `net` (decl src ln 171) from
  assn asm ln 576, prod ln 171.0, live ln 184, enc 0
  %struct.network.2* %net
  (w64 0xC04E07DD12246704)
and
  assn asm ln 705, prod ln 171.0, live ln 181, enc 0
  %struct.network* %net
  (w64 0xC04E07DD12246704)
✅ Before `net` (decl src ln 171) assn asm ln 705, prod ln 171.0, live ln 181, enc 0 symbolic value matches after assn asm ln 576, prod ln 171.0, live ln 184, enc 0

❌ After `net` assns checked using before as reference
Assignments:         net
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 789, prod ln 201.9, live ln 202, enc None for `node` (decl src ln 178) was not encountered during execution

Checking equivalence of `node` (decl src ln 178) from
  assn asm ln 625, prod ln 196.17, live ln 200, enc 0
  %3 = load %struct.node.1*, %struct.node.1** %nodes, l196 c17
  (w64 0x0)
and
  assn asm ln 769, prod ln 196.17, live ln 200, enc 0
  %14 = load %struct.node*, %struct.node** %nodes, l196 c17
  (w64 0x0)
✅ Before `node` (decl src ln 178) assn asm ln 769, prod ln 196.17, live ln 200, enc 0 symbolic value matches after assn asm ln 625, prod ln 196.17, live ln 200, enc 0

❌ After `node` assns checked using before as reference
Assignments:         node
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 891, prod ln 216.38, live ln 217, enc None for `operational_cost` (decl src ln 182) was not encountered during execution

❌ After assn asm ln 720, prod ln 212.38, live ln 213, enc None for `operational_cost` (decl src ln 182) was not encountered during execution

Checking equivalence of `operational_cost` (decl src ln 182) from
  assn asm ln 578, prod ln 182.0, live ln 184, enc 0
  i64 0
  (w64 0x0)
and
  assn asm ln 713, prod ln 182.12, live ln 184, enc 0
  i64 0
  (w64 0x0)
✅ Before `operational_cost` (decl src ln 182) assn asm ln 713, prod ln 182.12, live ln 184, enc 0 symbolic value matches after assn asm ln 578, prod ln 182.0, live ln 184, enc 0

❌ After `operational_cost` assns checked using before as reference
Assignments:         operational_cost
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

## Function `primal_feasible`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `net` (decl src ln 235), asm ln 1052
  %38 = load %struct.network*, %struct.network** %net.addr, l278 c5, asm ln 1052
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1052, prod ln 278.5, live ln 279, enc None
Load from declared address of `net` (decl src ln 235), asm ln 1039
  %36 = load %struct.network*, %struct.network** %net.addr, l272 c17, asm ln 1039
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1039, prod ln 272.17, live ln 273, enc None
Load from declared address of `net` (decl src ln 235), asm ln 1029
  %33 = load %struct.network*, %struct.network** %net.addr, l268 c46, asm ln 1029
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1029, prod ln 268.46, live ln 269, enc None
Load from declared address of `net` (decl src ln 235), asm ln 1019
  %30 = load %struct.network*, %struct.network** %net.addr, l267 c34, asm ln 1019
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1019, prod ln 267.34, live ln 268, enc None
Load from declared address of `net` (decl src ln 235), asm ln 1002
  %24 = load %struct.network*, %struct.network** %net.addr, l258 c37, asm ln 1002
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1002, prod ln 258.37, live ln 259, enc None
Load from declared address of `net` (decl src ln 235), asm ln 958
  %6 = load %struct.network*, %struct.network** %net.addr, l250 c20, asm ln 958
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 958, prod ln 250.20, live ln 251, enc None
Load from declared address of `net` (decl src ln 235), asm ln 954
  %4 = load %struct.network*, %struct.network** %net.addr, l249 c12, asm ln 954
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 954, prod ln 249.12, live ln 250, enc None
Load from declared address of `net` (decl src ln 235), asm ln 948
  %2 = load %struct.network*, %struct.network** %net.addr, l244 c25, asm ln 948
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 948, prod ln 244.25, live ln 245, enc None
Load from declared address of `net` (decl src ln 235), asm ln 943
  %0 = load %struct.network*, %struct.network** %net.addr, l243 c20, asm ln 943
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 943, prod ln 243.20, live ln 244, enc None
Store to declared address of `net` (decl src ln 235), asm ln 938
  arg 0
  Added assignment asm ln 938, prod ln 235.0, live ln 243, enc None
Load from declared address of `stop` (decl src ln 241), asm ln 970
  %11 = load i8*, i8** %stop, l252 c35, asm ln 970
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 970, prod ln 252.35, live ln 253, enc None
Store to declared address of `stop` (decl src ln 241), asm ln 962
  %8 = bitcast %struct.node* %7 to i8*, l250 c12, asm ln 961
  Added assignment asm ln 962, prod ln 250.12, live ln 252, enc None
Store to declared address of `node` (decl src ln 242), asm ln 1048
  %incdec.ptr20 = getelementptr inbounds %struct.node, %struct.node* %37, i32 1, l252 c45, asm ln 1047
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1048, prod ln 252.45, live ln 253, enc None
Load from declared address of `node` (decl src ln 242), asm ln 1046
  %37 = load %struct.node*, %struct.node** %node, l252 c45, asm ln 1046
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1046, prod ln 252.45, live ln 253, enc None
Load from declared address of `node` (decl src ln 242), asm ln 1010
  %26 = load %struct.node*, %struct.node** %node, l262 c25, asm ln 1010
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1010, prod ln 262.25, live ln 263, enc None
Load from declared address of `node` (decl src ln 242), asm ln 980
  %15 = load %struct.node*, %struct.node** %node, l255 c16, asm ln 980
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 980, prod ln 255.16, live ln 256, enc None
Load from declared address of `node` (decl src ln 242), asm ln 976
  %13 = load %struct.node*, %struct.node** %node, l254 c15, asm ln 976
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 976, prod ln 254.15, live ln 255, enc None
Load from declared address of `node` (decl src ln 242), asm ln 969
  %10 = load %struct.node*, %struct.node** %node, l252 c18, asm ln 969
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 969, prod ln 252.18, live ln 253, enc None
Store to declared address of `node` (decl src ln 242), asm ln 965
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %9, i32 1, l252 c14, asm ln 964
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 965, prod ln 252.14, live ln 253, enc None
Load from declared address of `node` (decl src ln 242), asm ln 963
  %9 = load %struct.node*, %struct.node** %node, l252 c14, asm ln 963
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 963, prod ln 252.14, live ln 253, enc None
Store to declared address of `node` (decl src ln 242), asm ln 957
  %5 = load %struct.node*, %struct.node** %nodes, l249 c17, asm ln 956
  Added assignment asm ln 957, prod ln 249.17, live ln 250, enc None
Load from declared address of `dummy` (decl src ln 243), asm ln 985
  %18 = load %struct.arc*, %struct.arc** %dummy, l256 c20, asm ln 985
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 985, prod ln 256.20, live ln 257, enc None
Store to declared address of `dummy` (decl src ln 243), asm ln 946
  %1 = load %struct.arc*, %struct.arc** %dummy_arcs, l243 c25, asm ln 945
  Added assignment asm ln 946, prod ln 243.25, live ln 244, enc None
Load from declared address of `stop_dummy` (decl src ln 244), asm ln 991
  %20 = load %struct.arc*, %struct.arc** %stop_dummy, l256 c35, asm ln 991
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 991, prod ln 256.35, live ln 257, enc None
Store to declared address of `stop_dummy` (decl src ln 244), asm ln 951
  %3 = load %struct.arc*, %struct.arc** %stop_dummy1, l244 c30, asm ln 950
  Added assignment asm ln 951, prod ln 244.30, live ln 249, enc None
Load from declared address of `arc` (decl src ln 245), asm ln 990
  %19 = load %struct.arc*, %struct.arc** %arc, l256 c29, asm ln 990
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 990, prod ln 256.29, live ln 257, enc None
Load from declared address of `arc` (decl src ln 245), asm ln 984
  %17 = load %struct.arc*, %struct.arc** %arc, l256 c13, asm ln 984
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 984, prod ln 256.13, live ln 257, enc None
Store to declared address of `arc` (decl src ln 245), asm ln 979
  %14 = load %struct.arc*, %struct.arc** %basic_arc, l254 c21, asm ln 978
  Added assignment asm ln 979, prod ln 254.21, live ln 255, enc None
Load from declared address of `flow` (decl src ln 246), asm ln 1037
  %35 = load i64, i64* %flow, l271 c68, asm ln 1037
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1037, prod ln 271.68, live ln 272, enc None
Load from declared address of `flow` (decl src ln 246), asm ln 1027
  %32 = load i64, i64* %flow, l268 c19, asm ln 1027
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1027, prod ln 268.19, live ln 269, enc None
Load from declared address of `flow` (decl src ln 246), asm ln 1018
  %29 = load i64, i64* %flow, l267 c17, asm ln 1018
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1018, prod ln 267.17, live ln 268, enc None
Load from declared address of `flow` (decl src ln 246), asm ln 1013
  %28 = load i64, i64* %flow, l262 c39, asm ln 1013
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1013, prod ln 262.39, live ln 263, enc None
Load from declared address of `flow` (decl src ln 246), asm ln 999
  %23 = load i64, i64* %flow, l258 c17, asm ln 999
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 999, prod ln 258.17, live ln 259, enc None
Load from declared address of `flow` (decl src ln 246), asm ln 998
  %22 = load i64, i64* %flow, l258 c17, asm ln 998
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 998, prod ln 258.17, live ln 259, enc None
Load from declared address of `flow` (decl src ln 246), asm ln 996
  %21 = load i64, i64* %flow, l258 c17, asm ln 996
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 996, prod ln 258.17, live ln 259, enc None
Store to declared address of `flow` (decl src ln 246), asm ln 983
  %16 = load i64, i64* %flow2, l255 c22, asm ln 982
  Added assignment asm ln 983, prod ln 255.22, live ln 256, enc None

#### After variables

Value produced for `net` (decl src ln 235), asm ln 765
  arg 0
  Added assignment asm ln 765, prod ln 235.0, live ln 243, enc None
Value produced for `dummy` (decl src ln 243), asm ln 768
  %0 = load %struct.arc.0*, %struct.arc.0** %dummy_arcs, l243 c25, asm ln 767
  Added assignment asm ln 768, prod ln 243.25, live ln 244, enc None
Value produced for `stop_dummy` (decl src ln 244), asm ln 771
  %1 = load %struct.arc.0*, %struct.arc.0** %stop_dummy1, l244 c30, asm ln 770
  Added assignment asm ln 771, prod ln 244.30, live ln 249, enc None
Value produced for `node` (decl src ln 242), asm ln 774
  %2 = load %struct.node.1*, %struct.node.1** %nodes, l249 c17, asm ln 773
  Added assignment asm ln 774, prod ln 249.17, live ln 250, enc None
Value produced for `stop` (decl src ln 241), asm ln 778
  %4 = bitcast %struct.node.1* %3 to i8*, l250 c12, asm ln 777
  Added assignment asm ln 778, prod ln 250.12, live ln 252, enc None
Value produced for `node` (decl src ln 242), asm ln 780
  %incdec.ptr = getelementptr inbounds %struct.node.1, %struct.node.1* %2, i32 1, l252 c14, asm ln 779
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 780, prod ln 252.14, live ln 253, enc None
Value produced for `arc` (decl src ln 245), asm ln 793
  %6 = load %struct.arc.0*, %struct.arc.0** %basic_arc, l254 c21, asm ln 792
  Added assignment asm ln 793, prod ln 254.21, live ln 255, enc None
Value produced for `flow` (decl src ln 246), asm ln 796
  %7 = load i64, i64* %flow2, l255 c22, asm ln 795
  Added assignment asm ln 796, prod ln 255.22, live ln 256, enc None
Value produced for `node` (decl src ln 242), asm ln 841
  %incdec.ptr20 = getelementptr inbounds %struct.node.1, %struct.node.1* %node.0, i32 1, l252 c45, asm ln 840
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 841, prod ln 252.45, live ln 253, enc None
Value produced for `node` (decl src ln 242), asm ln 785
  %node.0 = phi %struct.node.1* [ %incdec.ptr, %entry ], [ %incdec.ptr20, %for.inc ], asm ln 784
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 785, prod ln 252.45, live ln 253, enc None

#### Summary

✅ 7 before variables found, 7 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `net`
  Assignment asm ln 938, prod ln 235.0, live ln 243, enc 0
  Concrete pointer resolves to primal_feasible.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) primal_feasible.net.deref)
  Replaced concrete pointer with hash (w64 0x871FEAC470280F5B)
  %struct.network* %net
  (w64 0x871FEAC470280F5B)
Collected value for `net`
  Assignment asm ln 943, prod ln 243.20, live ln 244, enc 1
  Concrete pointer resolves to primal_feasible.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) primal_feasible.net.deref)
  Replaced concrete pointer with hash (w64 0x871FEAC470280F5B)
  %0 = load %struct.network*, %struct.network** %net.addr, l243 c20
  (w64 0x871FEAC470280F5B)
Collected value for `dummy`
  Assignment asm ln 946, prod ln 243.25, live ln 244, enc 0
  %1 = load %struct.arc*, %struct.arc** %dummy_arcs, l243 c25
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 948, prod ln 244.25, live ln 245, enc 2
  Concrete pointer resolves to primal_feasible.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) primal_feasible.net.deref)
  Replaced concrete pointer with hash (w64 0x871FEAC470280F5B)
  %2 = load %struct.network*, %struct.network** %net.addr, l244 c25
  (w64 0x871FEAC470280F5B)
Collected value for `stop_dummy`
  Assignment asm ln 951, prod ln 244.30, live ln 249, enc 0
  %3 = load %struct.arc*, %struct.arc** %stop_dummy1, l244 c30
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 954, prod ln 249.12, live ln 250, enc 3
  Concrete pointer resolves to primal_feasible.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) primal_feasible.net.deref)
  Replaced concrete pointer with hash (w64 0x871FEAC470280F5B)
  %4 = load %struct.network*, %struct.network** %net.addr, l249 c12
  (w64 0x871FEAC470280F5B)
Collected value for `node`
  Assignment asm ln 957, prod ln 249.17, live ln 250, enc 0
  %5 = load %struct.node*, %struct.node** %nodes, l249 c17
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 958, prod ln 250.20, live ln 251, enc 4
  Concrete pointer resolves to primal_feasible.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) primal_feasible.net.deref)
  Replaced concrete pointer with hash (w64 0x871FEAC470280F5B)
  %6 = load %struct.network*, %struct.network** %net.addr, l250 c20
  (w64 0x871FEAC470280F5B)
Collected value for `stop`
  Assignment asm ln 962, prod ln 250.12, live ln 252, enc 0
  %8 = bitcast %struct.node* %7 to i8*, l250 c12
  (w64 0x0)
Collected value for `node`
  Assignment asm ln 963, prod ln 252.14, live ln 253, enc 1
  %9 = load %struct.node*, %struct.node** %node, l252 c14
  (w64 0x0)
Collected value for `node`
  Assignment asm ln 965, prod ln 252.14, live ln 253, enc 2
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %9, i32 1, l252 c14
  (w64 0x68)
Collected value for `node`
  Assignment asm ln 969, prod ln 252.18, live ln 253, enc 3
  %10 = load %struct.node*, %struct.node** %node, l252 c18
  (w64 0x68)
Collected value for `stop`
  Assignment asm ln 970, prod ln 252.35, live ln 253, enc 1
  %11 = load i8*, i8** %stop, l252 c35
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 1052, prod ln 278.5, live ln 279, enc 5
  Concrete pointer resolves to primal_feasible.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) primal_feasible.net.deref)
  Replaced concrete pointer with hash (w64 0x871FEAC470280F5B)
  %38 = load %struct.network*, %struct.network** %net.addr, l278 c5
  (w64 0x871FEAC470280F5B)

🔔 Unable to execute all before instructions

#### After values

Collected value for `net`
  Assignment asm ln 765, prod ln 235.0, live ln 243, enc 0
  Concrete pointer resolves to primal_feasible.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) primal_feasible.net.deref)
  Replaced concrete pointer with hash (w64 0x871FEAC470280F5B)
  %struct.network.2* %net
  (w64 0x871FEAC470280F5B)
Collected value for `dummy`
  Assignment asm ln 768, prod ln 243.25, live ln 244, enc 0
  %0 = load %struct.arc.0*, %struct.arc.0** %dummy_arcs, l243 c25
  (w64 0x0)
Collected value for `stop_dummy`
  Assignment asm ln 771, prod ln 244.30, live ln 249, enc 0
  %1 = load %struct.arc.0*, %struct.arc.0** %stop_dummy1, l244 c30
  (w64 0x0)
Collected value for `node`
  Assignment asm ln 774, prod ln 249.17, live ln 250, enc 0
  %2 = load %struct.node.1*, %struct.node.1** %nodes, l249 c17
  (w64 0x0)
Collected value for `stop`
  Assignment asm ln 778, prod ln 250.12, live ln 252, enc 0
  %4 = bitcast %struct.node.1* %3 to i8*, l250 c12
  (w64 0x0)
Collected value for `node`
  Assignment asm ln 780, prod ln 252.14, live ln 253, enc 1
  %incdec.ptr = getelementptr inbounds %struct.node.1, %struct.node.1* %2, i32 1, l252 c14
  (w64 0x68)
Collected value for `node`
  Assignment asm ln 785, prod ln 252.45, live ln 253, enc 2
  %node.0 = phi %struct.node.1* [ %incdec.ptr, %entry ], [ %incdec.ptr20, %for.inc ]
  Block: 0
  (w64 0x68)

🔔 Unable to execute all after instructions

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `net` (decl src ln 235)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 235) from
  assn asm ln 1039, prod ln 272.17, live ln 273, enc None
  %36 = load %struct.network*, %struct.network** %net.addr, l272 c17
and
  assn asm ln 1002, prod ln 258.37, live ln 259, enc None
  %24 = load %struct.network*, %struct.network** %net.addr, l258 c37
🔔 Removing: asm ln 1039, prod ln 272.17, live ln 273, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 235) from
  assn asm ln 1029, prod ln 268.46, live ln 269, enc None
  %33 = load %struct.network*, %struct.network** %net.addr, l268 c46
and
  assn asm ln 1002, prod ln 258.37, live ln 259, enc None
  %24 = load %struct.network*, %struct.network** %net.addr, l258 c37
🔔 Removing: asm ln 1029, prod ln 268.46, live ln 269, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 235) from
  assn asm ln 1019, prod ln 267.34, live ln 268, enc None
  %30 = load %struct.network*, %struct.network** %net.addr, l267 c34
and
  assn asm ln 1002, prod ln 258.37, live ln 259, enc None
  %24 = load %struct.network*, %struct.network** %net.addr, l258 c37
🔔 Removing: asm ln 1019, prod ln 267.34, live ln 268, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 235) from
  assn asm ln 938, prod ln 235.0, live ln 243, enc 0
  %struct.network* %net
and
  assn asm ln 1002, prod ln 258.37, live ln 259, enc None
  %24 = load %struct.network*, %struct.network** %net.addr, l258 c37

Checking equivalence of `net` (decl src ln 235) from
  assn asm ln 943, prod ln 243.20, live ln 244, enc 1
  %0 = load %struct.network*, %struct.network** %net.addr, l243 c20
  (w64 0x871FEAC470280F5B)
and
  assn asm ln 938, prod ln 235.0, live ln 243, enc 0
  %struct.network* %net
  (w64 0x871FEAC470280F5B)
🔔 Removing: asm ln 943, prod ln 243.20, live ln 244, enc 1

Checking equivalence of `net` (decl src ln 235) from
  assn asm ln 948, prod ln 244.25, live ln 245, enc 2
  %2 = load %struct.network*, %struct.network** %net.addr, l244 c25
  (w64 0x871FEAC470280F5B)
and
  assn asm ln 938, prod ln 235.0, live ln 243, enc 0
  %struct.network* %net
  (w64 0x871FEAC470280F5B)
🔔 Removing: asm ln 948, prod ln 244.25, live ln 245, enc 2

Checking equivalence of `net` (decl src ln 235) from
  assn asm ln 954, prod ln 249.12, live ln 250, enc 3
  %4 = load %struct.network*, %struct.network** %net.addr, l249 c12
  (w64 0x871FEAC470280F5B)
and
  assn asm ln 938, prod ln 235.0, live ln 243, enc 0
  %struct.network* %net
  (w64 0x871FEAC470280F5B)
🔔 Removing: asm ln 954, prod ln 249.12, live ln 250, enc 3

Checking equivalence of `net` (decl src ln 235) from
  assn asm ln 958, prod ln 250.20, live ln 251, enc 4
  %6 = load %struct.network*, %struct.network** %net.addr, l250 c20
  (w64 0x871FEAC470280F5B)
and
  assn asm ln 938, prod ln 235.0, live ln 243, enc 0
  %struct.network* %net
  (w64 0x871FEAC470280F5B)
🔔 Removing: asm ln 958, prod ln 250.20, live ln 251, enc 4

Checking equivalence of `net` (decl src ln 235) from
  assn asm ln 1052, prod ln 278.5, live ln 279, enc 5
  %38 = load %struct.network*, %struct.network** %net.addr, l278 c5
  (w64 0x871FEAC470280F5B)
and
  assn asm ln 938, prod ln 235.0, live ln 243, enc 0
  %struct.network* %net
  (w64 0x871FEAC470280F5B)
🔔 Removing: asm ln 1052, prod ln 278.5, live ln 279, enc 5

Filtering before assignments: `stop` (decl src ln 241)

Checking equivalence of `stop` (decl src ln 241) from
  assn asm ln 970, prod ln 252.35, live ln 253, enc 1
  %11 = load i8*, i8** %stop, l252 c35
  (w64 0x0)
and
  assn asm ln 962, prod ln 250.12, live ln 252, enc 0
  %8 = bitcast %struct.node* %7 to i8*, l250 c12
  (w64 0x0)
🔔 Removing: asm ln 970, prod ln 252.35, live ln 253, enc 1

Filtering before assignments: `node` (decl src ln 242)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 242) from
  assn asm ln 1046, prod ln 252.45, live ln 253, enc None
  %37 = load %struct.node*, %struct.node** %node, l252 c45
and
  assn asm ln 1048, prod ln 252.45, live ln 253, enc None
  %incdec.ptr20 = getelementptr inbounds %struct.node, %struct.node* %37, i32 1, l252 c45
🔔 Removing: asm ln 1046, prod ln 252.45, live ln 253, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 242) from
  assn asm ln 1010, prod ln 262.25, live ln 263, enc None
  %26 = load %struct.node*, %struct.node** %node, l262 c25
and
  assn asm ln 1048, prod ln 252.45, live ln 253, enc None
  %incdec.ptr20 = getelementptr inbounds %struct.node, %struct.node* %37, i32 1, l252 c45
🔔 Removing: asm ln 1010, prod ln 262.25, live ln 263, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 242) from
  assn asm ln 980, prod ln 255.16, live ln 256, enc None
  %15 = load %struct.node*, %struct.node** %node, l255 c16
and
  assn asm ln 1048, prod ln 252.45, live ln 253, enc None
  %incdec.ptr20 = getelementptr inbounds %struct.node, %struct.node* %37, i32 1, l252 c45
🔔 Removing: asm ln 980, prod ln 255.16, live ln 256, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 242) from
  assn asm ln 976, prod ln 254.15, live ln 255, enc None
  %13 = load %struct.node*, %struct.node** %node, l254 c15
and
  assn asm ln 1048, prod ln 252.45, live ln 253, enc None
  %incdec.ptr20 = getelementptr inbounds %struct.node, %struct.node* %37, i32 1, l252 c45
🔔 Removing: asm ln 976, prod ln 254.15, live ln 255, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 242) from
  assn asm ln 957, prod ln 249.17, live ln 250, enc 0
  %5 = load %struct.node*, %struct.node** %nodes, l249 c17
and
  assn asm ln 1048, prod ln 252.45, live ln 253, enc None
  %incdec.ptr20 = getelementptr inbounds %struct.node, %struct.node* %37, i32 1, l252 c45

Checking equivalence of `node` (decl src ln 242) from
  assn asm ln 963, prod ln 252.14, live ln 253, enc 1
  %9 = load %struct.node*, %struct.node** %node, l252 c14
  (w64 0x0)
and
  assn asm ln 957, prod ln 249.17, live ln 250, enc 0
  %5 = load %struct.node*, %struct.node** %nodes, l249 c17
  (w64 0x0)
🔔 Removing: asm ln 963, prod ln 252.14, live ln 253, enc 1

Checking equivalence of `node` (decl src ln 242) from
  assn asm ln 965, prod ln 252.14, live ln 253, enc 2
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %9, i32 1, l252 c14
  (w64 0x68)
and
  assn asm ln 957, prod ln 249.17, live ln 250, enc 0
  %5 = load %struct.node*, %struct.node** %nodes, l249 c17
  (w64 0x0)

Checking equivalence of `node` (decl src ln 242) from
  assn asm ln 969, prod ln 252.18, live ln 253, enc 3
  %10 = load %struct.node*, %struct.node** %node, l252 c18
  (w64 0x68)
and
  assn asm ln 965, prod ln 252.14, live ln 253, enc 2
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %9, i32 1, l252 c14
  (w64 0x68)
🔔 Removing: asm ln 969, prod ln 252.18, live ln 253, enc 3

Filtering before assignments: `dummy` (decl src ln 243)

Expected 1 symbolic value(s), got 0
Checking equivalence of `dummy` (decl src ln 243) from
  assn asm ln 946, prod ln 243.25, live ln 244, enc 0
  %1 = load %struct.arc*, %struct.arc** %dummy_arcs, l243 c25
and
  assn asm ln 985, prod ln 256.20, live ln 257, enc None
  %18 = load %struct.arc*, %struct.arc** %dummy, l256 c20

Filtering before assignments: `stop_dummy` (decl src ln 244)

Expected 1 symbolic value(s), got 0
Checking equivalence of `stop_dummy` (decl src ln 244) from
  assn asm ln 951, prod ln 244.30, live ln 249, enc 0
  %3 = load %struct.arc*, %struct.arc** %stop_dummy1, l244 c30
and
  assn asm ln 991, prod ln 256.35, live ln 257, enc None
  %20 = load %struct.arc*, %struct.arc** %stop_dummy, l256 c35

Filtering before assignments: `arc` (decl src ln 245)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 245) from
  assn asm ln 984, prod ln 256.13, live ln 257, enc None
  %17 = load %struct.arc*, %struct.arc** %arc, l256 c13
and
  assn asm ln 990, prod ln 256.29, live ln 257, enc None
  %19 = load %struct.arc*, %struct.arc** %arc, l256 c29
🔔 Removing: asm ln 984, prod ln 256.13, live ln 257, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 245) from
  assn asm ln 979, prod ln 254.21, live ln 255, enc None
  %14 = load %struct.arc*, %struct.arc** %basic_arc, l254 c21
and
  assn asm ln 990, prod ln 256.29, live ln 257, enc None
  %19 = load %struct.arc*, %struct.arc** %arc, l256 c29
🔔 Removing: asm ln 979, prod ln 254.21, live ln 255, enc None

Filtering before assignments: `flow` (decl src ln 246)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `flow` (decl src ln 246) from
  assn asm ln 1027, prod ln 268.19, live ln 269, enc None
  %32 = load i64, i64* %flow, l268 c19
and
  assn asm ln 1037, prod ln 271.68, live ln 272, enc None
  %35 = load i64, i64* %flow, l271 c68
🔔 Removing: asm ln 1027, prod ln 268.19, live ln 269, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `flow` (decl src ln 246) from
  assn asm ln 1018, prod ln 267.17, live ln 268, enc None
  %29 = load i64, i64* %flow, l267 c17
and
  assn asm ln 1037, prod ln 271.68, live ln 272, enc None
  %35 = load i64, i64* %flow, l271 c68
🔔 Removing: asm ln 1018, prod ln 267.17, live ln 268, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `flow` (decl src ln 246) from
  assn asm ln 1013, prod ln 262.39, live ln 263, enc None
  %28 = load i64, i64* %flow, l262 c39
and
  assn asm ln 1037, prod ln 271.68, live ln 272, enc None
  %35 = load i64, i64* %flow, l271 c68
🔔 Removing: asm ln 1013, prod ln 262.39, live ln 263, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `flow` (decl src ln 246) from
  assn asm ln 999, prod ln 258.17, live ln 259, enc None
  %23 = load i64, i64* %flow, l258 c17
and
  assn asm ln 1037, prod ln 271.68, live ln 272, enc None
  %35 = load i64, i64* %flow, l271 c68
🔔 Removing: asm ln 999, prod ln 258.17, live ln 259, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `flow` (decl src ln 246) from
  assn asm ln 998, prod ln 258.17, live ln 259, enc None
  %22 = load i64, i64* %flow, l258 c17
and
  assn asm ln 1037, prod ln 271.68, live ln 272, enc None
  %35 = load i64, i64* %flow, l271 c68
🔔 Removing: asm ln 998, prod ln 258.17, live ln 259, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `flow` (decl src ln 246) from
  assn asm ln 996, prod ln 258.17, live ln 259, enc None
  %21 = load i64, i64* %flow, l258 c17
and
  assn asm ln 1037, prod ln 271.68, live ln 272, enc None
  %35 = load i64, i64* %flow, l271 c68
🔔 Removing: asm ln 996, prod ln 258.17, live ln 259, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `flow` (decl src ln 246) from
  assn asm ln 983, prod ln 255.22, live ln 256, enc None
  %16 = load i64, i64* %flow2, l255 c22
and
  assn asm ln 1037, prod ln 271.68, live ln 272, enc None
  %35 = load i64, i64* %flow, l271 c68
🔔 Removing: asm ln 983, prod ln 255.22, live ln 256, enc None

Filtering after assignments: `node` (decl src ln 242)

Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 242) from
  assn asm ln 774, prod ln 249.17, live ln 250, enc 0
  %2 = load %struct.node.1*, %struct.node.1** %nodes, l249 c17
and
  assn asm ln 841, prod ln 252.45, live ln 253, enc None
  %incdec.ptr20 = getelementptr inbounds %struct.node.1, %struct.node.1* %node.0, i32 1, l252 c45

Checking equivalence of `node` (decl src ln 242) from
  assn asm ln 780, prod ln 252.14, live ln 253, enc 1
  %incdec.ptr = getelementptr inbounds %struct.node.1, %struct.node.1* %2, i32 1, l252 c14
  (w64 0x68)
and
  assn asm ln 774, prod ln 249.17, live ln 250, enc 0
  %2 = load %struct.node.1*, %struct.node.1** %nodes, l249 c17
  (w64 0x0)

Checking equivalence of `node` (decl src ln 242) from
  assn asm ln 785, prod ln 252.45, live ln 253, enc 2
  %node.0 = phi %struct.node.1* [ %incdec.ptr, %entry ], [ %incdec.ptr20, %for.inc ]
  (w64 0x68)
and
  assn asm ln 780, prod ln 252.14, live ln 253, enc 1
  %incdec.ptr = getelementptr inbounds %struct.node.1, %struct.node.1* %2, i32 1, l252 c14
  (w64 0x68)
🔔 Removing: asm ln 785, prod ln 252.45, live ln 253, enc 2

Collating encountered before assignments: `net` (decl src ln 235)
❌ Assignment asm ln 1002, prod ln 258.37, live ln 259, enc None for `net` (decl src ln 235) was not encountered during execution
  asm ln 938, prod ln 235.0, live ln 243, enc 0
Collating encountered before assignments: `stop` (decl src ln 241)
  asm ln 962, prod ln 250.12, live ln 252, enc 0
Collating encountered before assignments: `node` (decl src ln 242)
❌ Assignment asm ln 1048, prod ln 252.45, live ln 253, enc None for `node` (decl src ln 242) was not encountered during execution
  asm ln 957, prod ln 249.17, live ln 250, enc 0
  asm ln 965, prod ln 252.14, live ln 253, enc 1
Collating encountered before assignments: `dummy` (decl src ln 243)
❌ Assignment asm ln 985, prod ln 256.20, live ln 257, enc None for `dummy` (decl src ln 243) was not encountered during execution
  asm ln 946, prod ln 243.25, live ln 244, enc 0
Collating encountered before assignments: `stop_dummy` (decl src ln 244)
❌ Assignment asm ln 991, prod ln 256.35, live ln 257, enc None for `stop_dummy` (decl src ln 244) was not encountered during execution
  asm ln 951, prod ln 244.30, live ln 249, enc 0
Collating encountered before assignments: `arc` (decl src ln 245)
❌ Assignment asm ln 990, prod ln 256.29, live ln 257, enc None for `arc` (decl src ln 245) was not encountered during execution
Collating encountered before assignments: `flow` (decl src ln 246)
❌ Assignment asm ln 1037, prod ln 271.68, live ln 272, enc None for `flow` (decl src ln 246) was not encountered during execution

Collating encountered after assignments: `net` (decl src ln 235)
  asm ln 765, prod ln 235.0, live ln 243, enc 0
Collating encountered after assignments: `dummy` (decl src ln 243)
  asm ln 768, prod ln 243.25, live ln 244, enc 0
Collating encountered after assignments: `stop_dummy` (decl src ln 244)
  asm ln 771, prod ln 244.30, live ln 249, enc 0
Collating encountered after assignments: `node` (decl src ln 242)
❌ Assignment asm ln 841, prod ln 252.45, live ln 253, enc None for `node` (decl src ln 242) was not encountered during execution
  asm ln 774, prod ln 249.17, live ln 250, enc 0
  asm ln 780, prod ln 252.14, live ln 253, enc 1
Collating encountered after assignments: `stop` (decl src ln 241)
  asm ln 778, prod ln 250.12, live ln 252, enc 0
Collating encountered after assignments: `arc` (decl src ln 245)
❌ Assignment asm ln 793, prod ln 254.21, live ln 255, enc None for `arc` (decl src ln 245) was not encountered during execution
Collating encountered after assignments: `flow` (decl src ln 246)
❌ Assignment asm ln 796, prod ln 255.22, live ln 256, enc None for `flow` (decl src ln 246) was not encountered during execution

#### Check after using before as reference

🔔 Before assn asm ln 990, prod ln 256.29, live ln 257, enc None for `arc` (decl src ln 245) has no symbolic value (likely unreachable) from %19 = load %struct.arc*, %struct.arc** %arc, l256 c29

❌ After assn asm ln 793, prod ln 254.21, live ln 255, enc None for `arc` (decl src ln 245) was not encountered during execution

❌ After `arc` assns checked using before as reference
Assignments:         arc
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       1
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

🔔 Before assn asm ln 985, prod ln 256.20, live ln 257, enc None for `dummy` (decl src ln 243) has no symbolic value (likely unreachable) from %18 = load %struct.arc*, %struct.arc** %dummy, l256 c20

Checking equivalence of `dummy` (decl src ln 243) from
  assn asm ln 768, prod ln 243.25, live ln 244, enc 0
  %0 = load %struct.arc.0*, %struct.arc.0** %dummy_arcs, l243 c25
  (w64 0x0)
and
  assn asm ln 946, prod ln 243.25, live ln 244, enc 0
  %1 = load %struct.arc*, %struct.arc** %dummy_arcs, l243 c25
  (w64 0x0)
✅ Before `dummy` (decl src ln 243) assn asm ln 946, prod ln 243.25, live ln 244, enc 0 symbolic value matches after assn asm ln 768, prod ln 243.25, live ln 244, enc 0

✅ After `dummy` assns checked using before as reference
Assignments:         dummy
  Reference:         2
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
  Unreachable:       1
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

🔔 Before assn asm ln 1037, prod ln 271.68, live ln 272, enc None for `flow` (decl src ln 246) has no symbolic value (likely unreachable) from %35 = load i64, i64* %flow, l271 c68

❌ After assn asm ln 796, prod ln 255.22, live ln 256, enc None for `flow` (decl src ln 246) was not encountered during execution

❌ After `flow` assns checked using before as reference
Assignments:         flow
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       1
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

🔔 Before assn asm ln 1002, prod ln 258.37, live ln 259, enc None for `net` (decl src ln 235) has no symbolic value (likely unreachable) from %24 = load %struct.network*, %struct.network** %net.addr, l258 c37

Checking equivalence of `net` (decl src ln 235) from
  assn asm ln 765, prod ln 235.0, live ln 243, enc 0
  %struct.network.2* %net
  (w64 0x871FEAC470280F5B)
and
  assn asm ln 938, prod ln 235.0, live ln 243, enc 0
  %struct.network* %net
  (w64 0x871FEAC470280F5B)
✅ Before `net` (decl src ln 235) assn asm ln 938, prod ln 235.0, live ln 243, enc 0 symbolic value matches after assn asm ln 765, prod ln 235.0, live ln 243, enc 0

✅ After `net` assns checked using before as reference
Assignments:         net
  Reference:         2
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
  Unreachable:       1
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

🔔 Before assn asm ln 1048, prod ln 252.45, live ln 253, enc None for `node` (decl src ln 242) has no symbolic value (likely unreachable) from %incdec.ptr20 = getelementptr inbounds %struct.node, %struct.node* %37, i32 1, l252 c45

❌ After assn asm ln 841, prod ln 252.45, live ln 253, enc None for `node` (decl src ln 242) was not encountered during execution

Checking equivalence of `node` (decl src ln 242) from
  assn asm ln 774, prod ln 249.17, live ln 250, enc 0
  %2 = load %struct.node.1*, %struct.node.1** %nodes, l249 c17
  (w64 0x0)
and
  assn asm ln 957, prod ln 249.17, live ln 250, enc 0
  %5 = load %struct.node*, %struct.node** %nodes, l249 c17
  (w64 0x0)
✅ Before `node` (decl src ln 242) assn asm ln 957, prod ln 249.17, live ln 250, enc 0 symbolic value matches after assn asm ln 774, prod ln 249.17, live ln 250, enc 0

Checking equivalence of `node` (decl src ln 242) from
  assn asm ln 780, prod ln 252.14, live ln 253, enc 1
  %incdec.ptr = getelementptr inbounds %struct.node.1, %struct.node.1* %2, i32 1, l252 c14
  (w64 0x68)
and
  assn asm ln 965, prod ln 252.14, live ln 253, enc 1
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %9, i32 1, l252 c14
  (w64 0x68)
✅ Before `node` (decl src ln 242) assn asm ln 965, prod ln 252.14, live ln 253, enc 1 symbolic value matches after assn asm ln 780, prod ln 252.14, live ln 253, enc 1

❌ After `node` assns checked using before as reference
Assignments:         node
  Reference:         3
  Test:              3
Matching:
  Matching Coords:   2
  Matching Value:    2
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       1
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `stop` (decl src ln 241) from
  assn asm ln 778, prod ln 250.12, live ln 252, enc 0
  %4 = bitcast %struct.node.1* %3 to i8*, l250 c12
  (w64 0x0)
and
  assn asm ln 962, prod ln 250.12, live ln 252, enc 0
  %8 = bitcast %struct.node* %7 to i8*, l250 c12
  (w64 0x0)
✅ Before `stop` (decl src ln 241) assn asm ln 962, prod ln 250.12, live ln 252, enc 0 symbolic value matches after assn asm ln 778, prod ln 250.12, live ln 252, enc 0

✅ After `stop` assns checked using before as reference
Assignments:         stop
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
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

🔔 Before assn asm ln 991, prod ln 256.35, live ln 257, enc None for `stop_dummy` (decl src ln 244) has no symbolic value (likely unreachable) from %20 = load %struct.arc*, %struct.arc** %stop_dummy, l256 c35

Checking equivalence of `stop_dummy` (decl src ln 244) from
  assn asm ln 771, prod ln 244.30, live ln 249, enc 0
  %1 = load %struct.arc.0*, %struct.arc.0** %stop_dummy1, l244 c30
  (w64 0x0)
and
  assn asm ln 951, prod ln 244.30, live ln 249, enc 0
  %3 = load %struct.arc*, %struct.arc** %stop_dummy1, l244 c30
  (w64 0x0)
✅ Before `stop_dummy` (decl src ln 244) assn asm ln 951, prod ln 244.30, live ln 249, enc 0 symbolic value matches after assn asm ln 771, prod ln 244.30, live ln 249, enc 0

✅ After `stop_dummy` assns checked using before as reference
Assignments:         stop_dummy
  Reference:         2
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
  Unreachable:       1
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

## Function `dual_feasible`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `net` (decl src ln 293), asm ln 1134
  %20 = load %struct.network*, %struct.network** %net.addr, l336 c36, asm ln 1134
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1134, prod ln 336.36, live ln 337, enc None
Load from declared address of `net` (decl src ln 293), asm ln 1125
  %17 = load %struct.network*, %struct.network** %net.addr, l326 c37, asm ln 1125
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1125, prod ln 326.37, live ln 327, enc None
Load from declared address of `net` (decl src ln 293), asm ln 1084
  %2 = load %struct.network*, %struct.network** %net.addr, l306 c22, asm ln 1084
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1084, prod ln 306.22, live ln 307, enc None
Load from declared address of `net` (decl src ln 293), asm ln 1076
  %0 = load %struct.network*, %struct.network** %net.addr, l300 c31, asm ln 1076
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1076, prod ln 300.31, live ln 301, enc None
Store to declared address of `net` (decl src ln 293), asm ln 1072
  arg 0
  Added assignment asm ln 1072, prod ln 293.0, live ln 300, enc None
Store to declared address of `arc` (decl src ln 299), asm ln 1143
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 1, l306 c48, asm ln 1142
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1143, prod ln 306.48, live ln 307, enc None
Load from declared address of `arc` (decl src ln 299), asm ln 1141
  %22 = load %struct.arc*, %struct.arc** %arc, l306 c48, asm ln 1141
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1141, prod ln 306.48, live ln 307, enc None
Load from declared address of `arc` (decl src ln 299), asm ln 1113
  %14 = load %struct.arc*, %struct.arc** %arc, l310 c17, asm ln 1113
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1113, prod ln 310.17, live ln 311, enc None
Load from declared address of `arc` (decl src ln 299), asm ln 1106
  %11 = load %struct.arc*, %struct.arc** %arc, l309 c15, asm ln 1106
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1106, prod ln 309.15, live ln 310, enc None
Load from declared address of `arc` (decl src ln 299), asm ln 1100
  %8 = load %struct.arc*, %struct.arc** %arc, l308 c32, asm ln 1100
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1100, prod ln 308.32, live ln 309, enc None
Load from declared address of `arc` (decl src ln 299), asm ln 1097
  %6 = load %struct.arc*, %struct.arc** %arc, l308 c20, asm ln 1097
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1097, prod ln 308.20, live ln 309, enc None
Load from declared address of `arc` (decl src ln 299), asm ln 1091
  %4 = load %struct.arc*, %struct.arc** %arc, l306 c33, asm ln 1091
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1091, prod ln 306.33, live ln 307, enc None
Store to declared address of `arc` (decl src ln 299), asm ln 1087
  %3 = load %struct.arc*, %struct.arc** %arcs, l306 c27, asm ln 1086
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1087, prod ln 306.27, live ln 307, enc None
Load from declared address of `stop` (decl src ln 300), asm ln 1092
  %5 = load %struct.arc*, %struct.arc** %stop, l306 c39, asm ln 1092
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1092, prod ln 306.39, live ln 307, enc None
Store to declared address of `stop` (decl src ln 300), asm ln 1079
  %1 = load %struct.arc*, %struct.arc** %stop_arcs, l300 c36, asm ln 1078
  Added assignment asm ln 1079, prod ln 300.36, live ln 303, enc None
Load from declared address of `red_cost` (decl src ln 301), asm ln 1133
  %19 = load i64, i64* %red_cost, l336 c17, asm ln 1133
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1133, prod ln 336.17, live ln 337, enc None
Load from declared address of `red_cost` (decl src ln 301), asm ln 1124
  %16 = load i64, i64* %red_cost, l326 c17, asm ln 1124
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1124, prod ln 326.17, live ln 327, enc None
Store to declared address of `red_cost` (decl src ln 301), asm ln 1112
  %add = add nsw i64 %sub, %13, l309 c13, asm ln 1111
  Added assignment asm ln 1112, prod ln 309.18, live ln 310, enc None
Store to declared address of `i` (decl src ln 303), asm ln 1146
  %inc = add nsw i64 %23, 1, l306 c53, asm ln 1145
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1146, prod ln 306.53, live ln 307, enc None
Load from declared address of `i` (decl src ln 303), asm ln 1144
  %23 = load i64, i64* %i, l306 c53, asm ln 1144
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1144, prod ln 306.53, live ln 307, enc None
Store to declared address of `i` (decl src ln 303), asm ln 1083
  const i64 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1083, prod ln 306.11, live ln 307, enc None
Store to declared address of `i` (decl src ln 303), asm ln 1082
  const i64 0
  Added assignment asm ln 1082, prod ln 303.10, live ln 306, enc None

#### After variables

Value produced for `net` (decl src ln 293), asm ln 857
  arg 0
  Added assignment asm ln 857, prod ln 293.0, live ln 300, enc None
Value produced for `stop` (decl src ln 300), asm ln 860
  %0 = load %struct.arc.0*, %struct.arc.0** %stop_arcs, l300 c36, asm ln 859
  Added assignment asm ln 860, prod ln 300.36, live ln 306, enc None
Value produced for `i` (decl src ln 303), asm ln 861
  const i64 0
  Added assignment asm ln 861, prod ln 303.0, live ln 306, enc None
Value produced for `i` (decl src ln 303), asm ln 862
  const i64 0
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 862, prod ln 303.0, live ln 306, enc None
Value produced for `arc` (decl src ln 299), asm ln 865
  %1 = load %struct.arc.0*, %struct.arc.0** %arcs, l306 c27, asm ln 864
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 865, prod ln 306.27, live ln 307, enc None
Value produced for `red_cost` (decl src ln 301), asm ln 889
  %add = add nsw i64 %sub, %6, l309 c13, asm ln 888
  Added assignment asm ln 889, prod ln 309.13, live ln 310, enc None
Value produced for `arc` (decl src ln 299), asm ln 914
  %incdec.ptr = getelementptr inbounds %struct.arc.0, %struct.arc.0* %arc.0, i32 1, l306 c48, asm ln 913
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 914, prod ln 306.48, live ln 307, enc None
Value produced for `i` (decl src ln 303), asm ln 916
  %inc = add nsw i64 %i.0, 1, l306 c53, asm ln 915
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 916, prod ln 306.53, live ln 307, enc None
Value produced for `i` (decl src ln 303), asm ln 871
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ], asm ln 870
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 871, prod ln 306.53, live ln 307, enc None
Value produced for `arc` (decl src ln 299), asm ln 872
  %arc.0 = phi %struct.arc.0* [ %1, %entry ], [ %incdec.ptr, %for.inc ], asm ln 869
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 872, prod ln 306.48, live ln 307, enc None

#### Summary

✅ 5 before variables found, 5 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `net`
  Assignment asm ln 1072, prod ln 293.0, live ln 300, enc 0
  Concrete pointer resolves to dual_feasible.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) dual_feasible.net.deref)
  Replaced concrete pointer with hash (w64 0xF48E3E2036F49BE3)
  %struct.network* %net
  (w64 0xF48E3E2036F49BE3)
Collected value for `net`
  Assignment asm ln 1076, prod ln 300.31, live ln 301, enc 1
  Concrete pointer resolves to dual_feasible.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) dual_feasible.net.deref)
  Replaced concrete pointer with hash (w64 0xF48E3E2036F49BE3)
  %0 = load %struct.network*, %struct.network** %net.addr, l300 c31
  (w64 0xF48E3E2036F49BE3)
Collected value for `stop`
  Assignment asm ln 1079, prod ln 300.36, live ln 303, enc 0
  %1 = load %struct.arc*, %struct.arc** %stop_arcs, l300 c36
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 1082, prod ln 303.10, live ln 306, enc 0
  i64 0
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 1083, prod ln 306.11, live ln 307, enc 1
  i64 0
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 1084, prod ln 306.22, live ln 307, enc 2
  Concrete pointer resolves to dual_feasible.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) dual_feasible.net.deref)
  Replaced concrete pointer with hash (w64 0xF48E3E2036F49BE3)
  %2 = load %struct.network*, %struct.network** %net.addr, l306 c22
  (w64 0xF48E3E2036F49BE3)
Collected value for `arc`
  Assignment asm ln 1087, prod ln 306.27, live ln 307, enc 0
  %3 = load %struct.arc*, %struct.arc** %arcs, l306 c27
  (w64 0x0)
Collected value for `arc`
  Assignment asm ln 1091, prod ln 306.33, live ln 307, enc 1
  %4 = load %struct.arc*, %struct.arc** %arc, l306 c33
  (w64 0x0)
Collected value for `stop`
  Assignment asm ln 1092, prod ln 306.39, live ln 307, enc 1
  %5 = load %struct.arc*, %struct.arc** %stop, l306 c39
  (w64 0x0)

🔔 Unable to execute all before instructions

#### After values

Collected value for `net`
  Assignment asm ln 857, prod ln 293.0, live ln 300, enc 0
  Concrete pointer resolves to dual_feasible.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) dual_feasible.net.deref)
  Replaced concrete pointer with hash (w64 0xF48E3E2036F49BE3)
  %struct.network.2* %net
  (w64 0xF48E3E2036F49BE3)
Collected value for `stop`
  Assignment asm ln 860, prod ln 300.36, live ln 306, enc 0
  %0 = load %struct.arc.0*, %struct.arc.0** %stop_arcs, l300 c36
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 861, prod ln 303.0, live ln 306, enc 0
  i64 0
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 862, prod ln 303.0, live ln 306, enc 1
  i64 0
  (w64 0x0)
Collected value for `arc`
  Assignment asm ln 865, prod ln 306.27, live ln 307, enc 0
  %1 = load %struct.arc.0*, %struct.arc.0** %arcs, l306 c27
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 871, prod ln 306.53, live ln 307, enc 2
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  Block: 0
  (w64 0x0)
Collected value for `arc`
  Assignment asm ln 872, prod ln 306.48, live ln 307, enc 1
  %arc.0 = phi %struct.arc.0* [ %1, %entry ], [ %incdec.ptr, %for.inc ]
  Block: 0
  (w64 0x0)

🔔 Unable to execute all after instructions

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `net` (decl src ln 293)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 293) from
  assn asm ln 1125, prod ln 326.37, live ln 327, enc None
  %17 = load %struct.network*, %struct.network** %net.addr, l326 c37
and
  assn asm ln 1134, prod ln 336.36, live ln 337, enc None
  %20 = load %struct.network*, %struct.network** %net.addr, l336 c36
🔔 Removing: asm ln 1125, prod ln 326.37, live ln 327, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 293) from
  assn asm ln 1072, prod ln 293.0, live ln 300, enc 0
  %struct.network* %net
and
  assn asm ln 1134, prod ln 336.36, live ln 337, enc None
  %20 = load %struct.network*, %struct.network** %net.addr, l336 c36

Checking equivalence of `net` (decl src ln 293) from
  assn asm ln 1076, prod ln 300.31, live ln 301, enc 1
  %0 = load %struct.network*, %struct.network** %net.addr, l300 c31
  (w64 0xF48E3E2036F49BE3)
and
  assn asm ln 1072, prod ln 293.0, live ln 300, enc 0
  %struct.network* %net
  (w64 0xF48E3E2036F49BE3)
🔔 Removing: asm ln 1076, prod ln 300.31, live ln 301, enc 1

Checking equivalence of `net` (decl src ln 293) from
  assn asm ln 1084, prod ln 306.22, live ln 307, enc 2
  %2 = load %struct.network*, %struct.network** %net.addr, l306 c22
  (w64 0xF48E3E2036F49BE3)
and
  assn asm ln 1072, prod ln 293.0, live ln 300, enc 0
  %struct.network* %net
  (w64 0xF48E3E2036F49BE3)
🔔 Removing: asm ln 1084, prod ln 306.22, live ln 307, enc 2

Filtering before assignments: `arc` (decl src ln 299)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 299) from
  assn asm ln 1141, prod ln 306.48, live ln 307, enc None
  %22 = load %struct.arc*, %struct.arc** %arc, l306 c48
and
  assn asm ln 1143, prod ln 306.48, live ln 307, enc None
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 1, l306 c48
🔔 Removing: asm ln 1141, prod ln 306.48, live ln 307, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 299) from
  assn asm ln 1113, prod ln 310.17, live ln 311, enc None
  %14 = load %struct.arc*, %struct.arc** %arc, l310 c17
and
  assn asm ln 1143, prod ln 306.48, live ln 307, enc None
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 1, l306 c48
🔔 Removing: asm ln 1113, prod ln 310.17, live ln 311, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 299) from
  assn asm ln 1106, prod ln 309.15, live ln 310, enc None
  %11 = load %struct.arc*, %struct.arc** %arc, l309 c15
and
  assn asm ln 1143, prod ln 306.48, live ln 307, enc None
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 1, l306 c48
🔔 Removing: asm ln 1106, prod ln 309.15, live ln 310, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 299) from
  assn asm ln 1100, prod ln 308.32, live ln 309, enc None
  %8 = load %struct.arc*, %struct.arc** %arc, l308 c32
and
  assn asm ln 1143, prod ln 306.48, live ln 307, enc None
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 1, l306 c48
🔔 Removing: asm ln 1100, prod ln 308.32, live ln 309, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 299) from
  assn asm ln 1097, prod ln 308.20, live ln 309, enc None
  %6 = load %struct.arc*, %struct.arc** %arc, l308 c20
and
  assn asm ln 1143, prod ln 306.48, live ln 307, enc None
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 1, l306 c48
🔔 Removing: asm ln 1097, prod ln 308.20, live ln 309, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 299) from
  assn asm ln 1087, prod ln 306.27, live ln 307, enc 0
  %3 = load %struct.arc*, %struct.arc** %arcs, l306 c27
and
  assn asm ln 1143, prod ln 306.48, live ln 307, enc None
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 1, l306 c48

Checking equivalence of `arc` (decl src ln 299) from
  assn asm ln 1091, prod ln 306.33, live ln 307, enc 1
  %4 = load %struct.arc*, %struct.arc** %arc, l306 c33
  (w64 0x0)
and
  assn asm ln 1087, prod ln 306.27, live ln 307, enc 0
  %3 = load %struct.arc*, %struct.arc** %arcs, l306 c27
  (w64 0x0)
🔔 Removing: asm ln 1091, prod ln 306.33, live ln 307, enc 1

Filtering before assignments: `stop` (decl src ln 300)

Checking equivalence of `stop` (decl src ln 300) from
  assn asm ln 1092, prod ln 306.39, live ln 307, enc 1
  %5 = load %struct.arc*, %struct.arc** %stop, l306 c39
  (w64 0x0)
and
  assn asm ln 1079, prod ln 300.36, live ln 303, enc 0
  %1 = load %struct.arc*, %struct.arc** %stop_arcs, l300 c36
  (w64 0x0)
🔔 Removing: asm ln 1092, prod ln 306.39, live ln 307, enc 1

Filtering before assignments: `red_cost` (decl src ln 301)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `red_cost` (decl src ln 301) from
  assn asm ln 1124, prod ln 326.17, live ln 327, enc None
  %16 = load i64, i64* %red_cost, l326 c17
and
  assn asm ln 1133, prod ln 336.17, live ln 337, enc None
  %19 = load i64, i64* %red_cost, l336 c17
🔔 Removing: asm ln 1124, prod ln 326.17, live ln 327, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `red_cost` (decl src ln 301) from
  assn asm ln 1112, prod ln 309.18, live ln 310, enc None
  %add = add nsw i64 %sub, %13, l309 c13
and
  assn asm ln 1133, prod ln 336.17, live ln 337, enc None
  %19 = load i64, i64* %red_cost, l336 c17
🔔 Removing: asm ln 1112, prod ln 309.18, live ln 310, enc None

Filtering before assignments: `i` (decl src ln 303)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 303) from
  assn asm ln 1144, prod ln 306.53, live ln 307, enc None
  %23 = load i64, i64* %i, l306 c53
and
  assn asm ln 1146, prod ln 306.53, live ln 307, enc None
  %inc = add nsw i64 %23, 1, l306 c53
🔔 Removing: asm ln 1144, prod ln 306.53, live ln 307, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 303) from
  assn asm ln 1082, prod ln 303.10, live ln 306, enc 0
  i64 0
and
  assn asm ln 1146, prod ln 306.53, live ln 307, enc None
  %inc = add nsw i64 %23, 1, l306 c53

Checking equivalence of `i` (decl src ln 303) from
  assn asm ln 1083, prod ln 306.11, live ln 307, enc 1
  i64 0
  (w64 0x0)
and
  assn asm ln 1082, prod ln 303.10, live ln 306, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 1083, prod ln 306.11, live ln 307, enc 1

Filtering after assignments: `i` (decl src ln 303)

Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 303) from
  assn asm ln 861, prod ln 303.0, live ln 306, enc 0
  i64 0
and
  assn asm ln 916, prod ln 306.53, live ln 307, enc None
  %inc = add nsw i64 %i.0, 1, l306 c53

Checking equivalence of `i` (decl src ln 303) from
  assn asm ln 862, prod ln 303.0, live ln 306, enc 1
  i64 0
  (w64 0x0)
and
  assn asm ln 861, prod ln 303.0, live ln 306, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 862, prod ln 303.0, live ln 306, enc 1

Checking equivalence of `i` (decl src ln 303) from
  assn asm ln 871, prod ln 306.53, live ln 307, enc 2
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  (w64 0x0)
and
  assn asm ln 861, prod ln 303.0, live ln 306, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 871, prod ln 306.53, live ln 307, enc 2

Filtering after assignments: `arc` (decl src ln 299)

Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 299) from
  assn asm ln 865, prod ln 306.27, live ln 307, enc 0
  %1 = load %struct.arc.0*, %struct.arc.0** %arcs, l306 c27
and
  assn asm ln 914, prod ln 306.48, live ln 307, enc None
  %incdec.ptr = getelementptr inbounds %struct.arc.0, %struct.arc.0* %arc.0, i32 1, l306 c48

Checking equivalence of `arc` (decl src ln 299) from
  assn asm ln 872, prod ln 306.48, live ln 307, enc 1
  %arc.0 = phi %struct.arc.0* [ %1, %entry ], [ %incdec.ptr, %for.inc ]
  (w64 0x0)
and
  assn asm ln 865, prod ln 306.27, live ln 307, enc 0
  %1 = load %struct.arc.0*, %struct.arc.0** %arcs, l306 c27
  (w64 0x0)
🔔 Removing: asm ln 872, prod ln 306.48, live ln 307, enc 1

Collating encountered before assignments: `net` (decl src ln 293)
❌ Assignment asm ln 1134, prod ln 336.36, live ln 337, enc None for `net` (decl src ln 293) was not encountered during execution
  asm ln 1072, prod ln 293.0, live ln 300, enc 0
Collating encountered before assignments: `arc` (decl src ln 299)
❌ Assignment asm ln 1143, prod ln 306.48, live ln 307, enc None for `arc` (decl src ln 299) was not encountered during execution
  asm ln 1087, prod ln 306.27, live ln 307, enc 0
Collating encountered before assignments: `stop` (decl src ln 300)
  asm ln 1079, prod ln 300.36, live ln 303, enc 0
Collating encountered before assignments: `red_cost` (decl src ln 301)
❌ Assignment asm ln 1133, prod ln 336.17, live ln 337, enc None for `red_cost` (decl src ln 301) was not encountered during execution
Collating encountered before assignments: `i` (decl src ln 303)
❌ Assignment asm ln 1146, prod ln 306.53, live ln 307, enc None for `i` (decl src ln 303) was not encountered during execution
  asm ln 1082, prod ln 303.10, live ln 306, enc 0

Collating encountered after assignments: `net` (decl src ln 293)
  asm ln 857, prod ln 293.0, live ln 300, enc 0
Collating encountered after assignments: `stop` (decl src ln 300)
  asm ln 860, prod ln 300.36, live ln 306, enc 0
Collating encountered after assignments: `i` (decl src ln 303)
❌ Assignment asm ln 916, prod ln 306.53, live ln 307, enc None for `i` (decl src ln 303) was not encountered during execution
  asm ln 861, prod ln 303.0, live ln 306, enc 0
Collating encountered after assignments: `arc` (decl src ln 299)
❌ Assignment asm ln 914, prod ln 306.48, live ln 307, enc None for `arc` (decl src ln 299) was not encountered during execution
  asm ln 865, prod ln 306.27, live ln 307, enc 0
Collating encountered after assignments: `red_cost` (decl src ln 301)
❌ Assignment asm ln 889, prod ln 309.13, live ln 310, enc None for `red_cost` (decl src ln 301) was not encountered during execution

#### Check after using before as reference

🔔 Before assn asm ln 1143, prod ln 306.48, live ln 307, enc None for `arc` (decl src ln 299) has no symbolic value (likely unreachable) from %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 1, l306 c48

❌ After assn asm ln 914, prod ln 306.48, live ln 307, enc None for `arc` (decl src ln 299) was not encountered during execution

Checking equivalence of `arc` (decl src ln 299) from
  assn asm ln 865, prod ln 306.27, live ln 307, enc 0
  %1 = load %struct.arc.0*, %struct.arc.0** %arcs, l306 c27
  (w64 0x0)
and
  assn asm ln 1087, prod ln 306.27, live ln 307, enc 0
  %3 = load %struct.arc*, %struct.arc** %arcs, l306 c27
  (w64 0x0)
✅ Before `arc` (decl src ln 299) assn asm ln 1087, prod ln 306.27, live ln 307, enc 0 symbolic value matches after assn asm ln 865, prod ln 306.27, live ln 307, enc 0

❌ After `arc` assns checked using before as reference
Assignments:         arc
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       1
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

🔔 Before assn asm ln 1146, prod ln 306.53, live ln 307, enc None for `i` (decl src ln 303) has no symbolic value (likely unreachable) from %inc = add nsw i64 %23, 1, l306 c53

❌ After assn asm ln 916, prod ln 306.53, live ln 307, enc None for `i` (decl src ln 303) was not encountered during execution

Checking equivalence of `i` (decl src ln 303) from
  assn asm ln 861, prod ln 303.0, live ln 306, enc 0
  i64 0
  (w64 0x0)
and
  assn asm ln 1082, prod ln 303.10, live ln 306, enc 0
  i64 0
  (w64 0x0)
✅ Before `i` (decl src ln 303) assn asm ln 1082, prod ln 303.10, live ln 306, enc 0 symbolic value matches after assn asm ln 861, prod ln 303.0, live ln 306, enc 0

❌ After `i` assns checked using before as reference
Assignments:         i
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       1
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

🔔 Before assn asm ln 1134, prod ln 336.36, live ln 337, enc None for `net` (decl src ln 293) has no symbolic value (likely unreachable) from %20 = load %struct.network*, %struct.network** %net.addr, l336 c36

Checking equivalence of `net` (decl src ln 293) from
  assn asm ln 857, prod ln 293.0, live ln 300, enc 0
  %struct.network.2* %net
  (w64 0xF48E3E2036F49BE3)
and
  assn asm ln 1072, prod ln 293.0, live ln 300, enc 0
  %struct.network* %net
  (w64 0xF48E3E2036F49BE3)
✅ Before `net` (decl src ln 293) assn asm ln 1072, prod ln 293.0, live ln 300, enc 0 symbolic value matches after assn asm ln 857, prod ln 293.0, live ln 300, enc 0

✅ After `net` assns checked using before as reference
Assignments:         net
  Reference:         2
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
  Unreachable:       1
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

🔔 Before assn asm ln 1133, prod ln 336.17, live ln 337, enc None for `red_cost` (decl src ln 301) has no symbolic value (likely unreachable) from %19 = load i64, i64* %red_cost, l336 c17

❌ After assn asm ln 889, prod ln 309.13, live ln 310, enc None for `red_cost` (decl src ln 301) was not encountered during execution

❌ After `red_cost` assns checked using before as reference
Assignments:         red_cost
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       1
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

❌ Before `stop` (decl src ln 300) assn asm ln 1079, prod ln 300.36, live ln 303, enc 0 coordinates don't match after assn asm ln 860, prod ln 300.36, live ln 306, enc 0
Checking equivalence of `stop` (decl src ln 300) from
  assn asm ln 860, prod ln 300.36, live ln 306, enc 0
  %0 = load %struct.arc.0*, %struct.arc.0** %stop_arcs, l300 c36
  (w64 0x0)
and
  assn asm ln 1079, prod ln 300.36, live ln 303, enc 0
  %1 = load %struct.arc*, %struct.arc** %stop_arcs, l300 c36
  (w64 0x0)
✅ Before `stop` (decl src ln 300) assn asm ln 1079, prod ln 300.36, live ln 303, enc 0 symbolic value matches after assn asm ln 860, prod ln 300.36, live ln 306, enc 0

❌ After `stop` assns checked using before as reference
Assignments:         stop
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
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

## Function `getfree`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `net` (decl src ln 367), asm ln 1256
  %26 = load %struct.network*, %struct.network** %net.addr, l381 c5, asm ln 1256
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1256, prod ln 381.5, live ln 382, enc None
Load from declared address of `net` (decl src ln 367), asm ln 1253
  %25 = load %struct.network*, %struct.network** %net.addr, l380 c5, asm ln 1253
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1253, prod ln 380.5, live ln 381, enc None
Load from declared address of `net` (decl src ln 367), asm ln 1250
  %24 = load %struct.network*, %struct.network** %net.addr, l380 c23, asm ln 1250
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1250, prod ln 380.23, live ln 381, enc None
Load from declared address of `net` (decl src ln 367), asm ln 1247
  %23 = load %struct.network*, %struct.network** %net.addr, l379 c5, asm ln 1247
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1247, prod ln 379.5, live ln 380, enc None
Load from declared address of `net` (decl src ln 367), asm ln 1244
  %22 = load %struct.network*, %struct.network** %net.addr, l379 c17, asm ln 1244
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1244, prod ln 379.17, live ln 380, enc None
Load from declared address of `net` (decl src ln 367), asm ln 1241
  %21 = load %struct.network*, %struct.network** %net.addr, l378 c5, asm ln 1241
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1241, prod ln 378.5, live ln 379, enc None
Load from declared address of `net` (decl src ln 367), asm ln 1238
  %20 = load %struct.network*, %struct.network** %net.addr, l378 c18, asm ln 1238
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1238, prod ln 378.18, live ln 379, enc None
Load from declared address of `net` (decl src ln 367), asm ln 1230
  %17 = load %struct.network*, %struct.network** %net.addr, l377 c5, asm ln 1230
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1230, prod ln 377.5, live ln 378, enc None
Load from declared address of `net` (decl src ln 367), asm ln 1223
  %15 = load %struct.network*, %struct.network** %net.addr, l377 c5, asm ln 1223
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1223, prod ln 377.5, live ln 378, enc None
Load from declared address of `net` (decl src ln 367), asm ln 1215
  %12 = load %struct.network*, %struct.network** %net.addr, l376 c5, asm ln 1215
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1215, prod ln 376.5, live ln 377, enc None
Load from declared address of `net` (decl src ln 367), asm ln 1208
  %10 = load %struct.network*, %struct.network** %net.addr, l376 c5, asm ln 1208
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1208, prod ln 376.5, live ln 377, enc None
Load from declared address of `net` (decl src ln 367), asm ln 1200
  %7 = load %struct.network*, %struct.network** %net.addr, l375 c5, asm ln 1200
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1200, prod ln 375.5, live ln 376, enc None
Load from declared address of `net` (decl src ln 367), asm ln 1193
  %5 = load %struct.network*, %struct.network** %net.addr, l375 c5, asm ln 1193
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1193, prod ln 375.5, live ln 376, enc None
Load from declared address of `net` (decl src ln 367), asm ln 1185
  %2 = load %struct.network*, %struct.network** %net.addr, l374 c5, asm ln 1185
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1185, prod ln 374.5, live ln 375, enc None
Load from declared address of `net` (decl src ln 367), asm ln 1178
  %0 = load %struct.network*, %struct.network** %net.addr, l374 c5, asm ln 1178
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1178, prod ln 374.5, live ln 375, enc None
Store to declared address of `net` (decl src ln 367), asm ln 1176
  arg 0
  Added assignment asm ln 1176, prod ln 367.0, live ln 374, enc None

#### After variables

Value produced for `net` (decl src ln 367), asm ln 940
  arg 0
  Added assignment asm ln 940, prod ln 367.0, live ln 374, enc None

#### Summary

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `net`
  Assignment asm ln 1176, prod ln 367.0, live ln 374, enc 0
  Concrete pointer resolves to getfree.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getfree.net.deref)
  Replaced concrete pointer with hash (w64 0x7318F4A8D56F5FC5)
  %struct.network* %net
  (w64 0x7318F4A8D56F5FC5)
Collected value for `net`
  Assignment asm ln 1178, prod ln 374.5, live ln 375, enc 1
  Concrete pointer resolves to getfree.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getfree.net.deref)
  Replaced concrete pointer with hash (w64 0x7318F4A8D56F5FC5)
  %0 = load %struct.network*, %struct.network** %net.addr, l374 c5
  (w64 0x7318F4A8D56F5FC5)
Collected value for `net`
  Assignment asm ln 1193, prod ln 375.5, live ln 376, enc 2
  Concrete pointer resolves to getfree.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getfree.net.deref)
  Replaced concrete pointer with hash (w64 0x7318F4A8D56F5FC5)
  %5 = load %struct.network*, %struct.network** %net.addr, l375 c5
  (w64 0x7318F4A8D56F5FC5)
Collected value for `net`
  Assignment asm ln 1208, prod ln 376.5, live ln 377, enc 3
  Concrete pointer resolves to getfree.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getfree.net.deref)
  Replaced concrete pointer with hash (w64 0x7318F4A8D56F5FC5)
  %10 = load %struct.network*, %struct.network** %net.addr, l376 c5
  (w64 0x7318F4A8D56F5FC5)
Collected value for `net`
  Assignment asm ln 1223, prod ln 377.5, live ln 378, enc 4
  Concrete pointer resolves to getfree.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getfree.net.deref)
  Replaced concrete pointer with hash (w64 0x7318F4A8D56F5FC5)
  %15 = load %struct.network*, %struct.network** %net.addr, l377 c5
  (w64 0x7318F4A8D56F5FC5)
Collected value for `net`
  Assignment asm ln 1238, prod ln 378.18, live ln 379, enc 5
  Concrete pointer resolves to getfree.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getfree.net.deref)
  Replaced concrete pointer with hash (w64 0x7318F4A8D56F5FC5)
  %20 = load %struct.network*, %struct.network** %net.addr, l378 c18
  (w64 0x7318F4A8D56F5FC5)
Collected value for `net`
  Assignment asm ln 1241, prod ln 378.5, live ln 379, enc 6
  Concrete pointer resolves to getfree.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getfree.net.deref)
  Replaced concrete pointer with hash (w64 0x7318F4A8D56F5FC5)
  %21 = load %struct.network*, %struct.network** %net.addr, l378 c5
  (w64 0x7318F4A8D56F5FC5)
Collected value for `net`
  Assignment asm ln 1244, prod ln 379.17, live ln 380, enc 7
  Concrete pointer resolves to getfree.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getfree.net.deref)
  Replaced concrete pointer with hash (w64 0x7318F4A8D56F5FC5)
  %22 = load %struct.network*, %struct.network** %net.addr, l379 c17
  (w64 0x7318F4A8D56F5FC5)
Collected value for `net`
  Assignment asm ln 1247, prod ln 379.5, live ln 380, enc 8
  Concrete pointer resolves to getfree.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getfree.net.deref)
  Replaced concrete pointer with hash (w64 0x7318F4A8D56F5FC5)
  %23 = load %struct.network*, %struct.network** %net.addr, l379 c5
  (w64 0x7318F4A8D56F5FC5)
Collected value for `net`
  Assignment asm ln 1250, prod ln 380.23, live ln 381, enc 9
  Concrete pointer resolves to getfree.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getfree.net.deref)
  Replaced concrete pointer with hash (w64 0x7318F4A8D56F5FC5)
  %24 = load %struct.network*, %struct.network** %net.addr, l380 c23
  (w64 0x7318F4A8D56F5FC5)
Collected value for `net`
  Assignment asm ln 1253, prod ln 380.5, live ln 381, enc 10
  Concrete pointer resolves to getfree.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getfree.net.deref)
  Replaced concrete pointer with hash (w64 0x7318F4A8D56F5FC5)
  %25 = load %struct.network*, %struct.network** %net.addr, l380 c5
  (w64 0x7318F4A8D56F5FC5)
Collected value for `net`
  Assignment asm ln 1256, prod ln 381.5, live ln 382, enc 11
  Concrete pointer resolves to getfree.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getfree.net.deref)
  Replaced concrete pointer with hash (w64 0x7318F4A8D56F5FC5)
  %26 = load %struct.network*, %struct.network** %net.addr, l381 c5
  (w64 0x7318F4A8D56F5FC5)

🔔 Unable to execute all before instructions

#### After values

Collected value for `net`
  Assignment asm ln 940, prod ln 367.0, live ln 374, enc 0
  Concrete pointer resolves to getfree.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) getfree.net.deref)
  Replaced concrete pointer with hash (w64 0x7318F4A8D56F5FC5)
  %struct.network.2* %net
  (w64 0x7318F4A8D56F5FC5)

🔔 Unable to execute all after instructions

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `net` (decl src ln 367)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 367) from
  assn asm ln 1215, prod ln 376.5, live ln 377, enc None
  %12 = load %struct.network*, %struct.network** %net.addr, l376 c5
and
  assn asm ln 1200, prod ln 375.5, live ln 376, enc None
  %7 = load %struct.network*, %struct.network** %net.addr, l375 c5
🔔 Removing: asm ln 1215, prod ln 376.5, live ln 377, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 367) from
  assn asm ln 1185, prod ln 374.5, live ln 375, enc None
  %2 = load %struct.network*, %struct.network** %net.addr, l374 c5
and
  assn asm ln 1200, prod ln 375.5, live ln 376, enc None
  %7 = load %struct.network*, %struct.network** %net.addr, l375 c5
🔔 Removing: asm ln 1185, prod ln 374.5, live ln 375, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 367) from
  assn asm ln 1230, prod ln 377.5, live ln 378, enc None
  %17 = load %struct.network*, %struct.network** %net.addr, l377 c5
and
  assn asm ln 1200, prod ln 375.5, live ln 376, enc None
  %7 = load %struct.network*, %struct.network** %net.addr, l375 c5
🔔 Removing: asm ln 1230, prod ln 377.5, live ln 378, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 367) from
  assn asm ln 1176, prod ln 367.0, live ln 374, enc 0
  %struct.network* %net
and
  assn asm ln 1200, prod ln 375.5, live ln 376, enc None
  %7 = load %struct.network*, %struct.network** %net.addr, l375 c5

Checking equivalence of `net` (decl src ln 367) from
  assn asm ln 1178, prod ln 374.5, live ln 375, enc 1
  %0 = load %struct.network*, %struct.network** %net.addr, l374 c5
  (w64 0x7318F4A8D56F5FC5)
and
  assn asm ln 1176, prod ln 367.0, live ln 374, enc 0
  %struct.network* %net
  (w64 0x7318F4A8D56F5FC5)
🔔 Removing: asm ln 1178, prod ln 374.5, live ln 375, enc 1

Checking equivalence of `net` (decl src ln 367) from
  assn asm ln 1193, prod ln 375.5, live ln 376, enc 2
  %5 = load %struct.network*, %struct.network** %net.addr, l375 c5
  (w64 0x7318F4A8D56F5FC5)
and
  assn asm ln 1176, prod ln 367.0, live ln 374, enc 0
  %struct.network* %net
  (w64 0x7318F4A8D56F5FC5)
🔔 Removing: asm ln 1193, prod ln 375.5, live ln 376, enc 2

Checking equivalence of `net` (decl src ln 367) from
  assn asm ln 1208, prod ln 376.5, live ln 377, enc 3
  %10 = load %struct.network*, %struct.network** %net.addr, l376 c5
  (w64 0x7318F4A8D56F5FC5)
and
  assn asm ln 1176, prod ln 367.0, live ln 374, enc 0
  %struct.network* %net
  (w64 0x7318F4A8D56F5FC5)
🔔 Removing: asm ln 1208, prod ln 376.5, live ln 377, enc 3

Checking equivalence of `net` (decl src ln 367) from
  assn asm ln 1223, prod ln 377.5, live ln 378, enc 4
  %15 = load %struct.network*, %struct.network** %net.addr, l377 c5
  (w64 0x7318F4A8D56F5FC5)
and
  assn asm ln 1176, prod ln 367.0, live ln 374, enc 0
  %struct.network* %net
  (w64 0x7318F4A8D56F5FC5)
🔔 Removing: asm ln 1223, prod ln 377.5, live ln 378, enc 4

Checking equivalence of `net` (decl src ln 367) from
  assn asm ln 1238, prod ln 378.18, live ln 379, enc 5
  %20 = load %struct.network*, %struct.network** %net.addr, l378 c18
  (w64 0x7318F4A8D56F5FC5)
and
  assn asm ln 1176, prod ln 367.0, live ln 374, enc 0
  %struct.network* %net
  (w64 0x7318F4A8D56F5FC5)
🔔 Removing: asm ln 1238, prod ln 378.18, live ln 379, enc 5

Checking equivalence of `net` (decl src ln 367) from
  assn asm ln 1241, prod ln 378.5, live ln 379, enc 6
  %21 = load %struct.network*, %struct.network** %net.addr, l378 c5
  (w64 0x7318F4A8D56F5FC5)
and
  assn asm ln 1176, prod ln 367.0, live ln 374, enc 0
  %struct.network* %net
  (w64 0x7318F4A8D56F5FC5)
🔔 Removing: asm ln 1241, prod ln 378.5, live ln 379, enc 6

Checking equivalence of `net` (decl src ln 367) from
  assn asm ln 1244, prod ln 379.17, live ln 380, enc 7
  %22 = load %struct.network*, %struct.network** %net.addr, l379 c17
  (w64 0x7318F4A8D56F5FC5)
and
  assn asm ln 1176, prod ln 367.0, live ln 374, enc 0
  %struct.network* %net
  (w64 0x7318F4A8D56F5FC5)
🔔 Removing: asm ln 1244, prod ln 379.17, live ln 380, enc 7

Checking equivalence of `net` (decl src ln 367) from
  assn asm ln 1247, prod ln 379.5, live ln 380, enc 8
  %23 = load %struct.network*, %struct.network** %net.addr, l379 c5
  (w64 0x7318F4A8D56F5FC5)
and
  assn asm ln 1176, prod ln 367.0, live ln 374, enc 0
  %struct.network* %net
  (w64 0x7318F4A8D56F5FC5)
🔔 Removing: asm ln 1247, prod ln 379.5, live ln 380, enc 8

Checking equivalence of `net` (decl src ln 367) from
  assn asm ln 1250, prod ln 380.23, live ln 381, enc 9
  %24 = load %struct.network*, %struct.network** %net.addr, l380 c23
  (w64 0x7318F4A8D56F5FC5)
and
  assn asm ln 1176, prod ln 367.0, live ln 374, enc 0
  %struct.network* %net
  (w64 0x7318F4A8D56F5FC5)
🔔 Removing: asm ln 1250, prod ln 380.23, live ln 381, enc 9

Checking equivalence of `net` (decl src ln 367) from
  assn asm ln 1253, prod ln 380.5, live ln 381, enc 10
  %25 = load %struct.network*, %struct.network** %net.addr, l380 c5
  (w64 0x7318F4A8D56F5FC5)
and
  assn asm ln 1176, prod ln 367.0, live ln 374, enc 0
  %struct.network* %net
  (w64 0x7318F4A8D56F5FC5)
🔔 Removing: asm ln 1253, prod ln 380.5, live ln 381, enc 10

Checking equivalence of `net` (decl src ln 367) from
  assn asm ln 1256, prod ln 381.5, live ln 382, enc 11
  %26 = load %struct.network*, %struct.network** %net.addr, l381 c5
  (w64 0x7318F4A8D56F5FC5)
and
  assn asm ln 1176, prod ln 367.0, live ln 374, enc 0
  %struct.network* %net
  (w64 0x7318F4A8D56F5FC5)
🔔 Removing: asm ln 1256, prod ln 381.5, live ln 382, enc 11

Collating encountered before assignments: `net` (decl src ln 367)
❌ Assignment asm ln 1200, prod ln 375.5, live ln 376, enc None for `net` (decl src ln 367) was not encountered during execution
  asm ln 1176, prod ln 367.0, live ln 374, enc 0

Collating encountered after assignments: `net` (decl src ln 367)
  asm ln 940, prod ln 367.0, live ln 374, enc 0

#### Check after using before as reference

🔔 Before assn asm ln 1200, prod ln 375.5, live ln 376, enc None for `net` (decl src ln 367) has no symbolic value (likely unreachable) from %7 = load %struct.network*, %struct.network** %net.addr, l375 c5

Checking equivalence of `net` (decl src ln 367) from
  assn asm ln 940, prod ln 367.0, live ln 374, enc 0
  %struct.network.2* %net
  (w64 0x7318F4A8D56F5FC5)
and
  assn asm ln 1176, prod ln 367.0, live ln 374, enc 0
  %struct.network* %net
  (w64 0x7318F4A8D56F5FC5)
✅ Before `net` (decl src ln 367) assn asm ln 1176, prod ln 367.0, live ln 374, enc 0 symbolic value matches after assn asm ln 940, prod ln 367.0, live ln 374, enc 0

✅ After `net` assns checked using before as reference
Assignments:         net
  Reference:         2
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
  Unreachable:       1
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

## Function `read_min`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `net` (decl src ln 27), asm ln 2116
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32, asm ln 2116
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2116, prod ln 232.32, live ln 233, enc None
Load from declared address of `net` (decl src ln 27), asm ln 2109
  %300 = load %struct.network*, %struct.network** %net.addr, l232 c32, asm ln 2109
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2109, prod ln 232.32, live ln 233, enc None
Load from declared address of `net` (decl src ln 27), asm ln 2098
  %297 = load %struct.network*, %struct.network** %net.addr, l230 c31, asm ln 2098
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2098, prod ln 230.31, live ln 231, enc None
Load from declared address of `net` (decl src ln 27), asm ln 2091
  %295 = load %struct.network*, %struct.network** %net.addr, l230 c31, asm ln 2091
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2091, prod ln 230.31, live ln 231, enc None
Load from declared address of `net` (decl src ln 27), asm ln 2084
  %293 = load %struct.network*, %struct.network** %net.addr, l228 c40, asm ln 2084
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2084, prod ln 228.40, live ln 229, enc None
Load from declared address of `net` (decl src ln 27), asm ln 2081
  %291 = load %struct.network*, %struct.network** %net.addr, l228 c13, asm ln 2081
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2081, prod ln 228.13, live ln 229, enc None
Load from declared address of `net` (decl src ln 27), asm ln 2074
  %289 = load %struct.network*, %struct.network** %net.addr, l226 c22, asm ln 2074
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2074, prod ln 226.22, live ln 227, enc None
Load from declared address of `net` (decl src ln 27), asm ln 2065
  %287 = load %struct.network*, %struct.network** %net.addr, l225 c5, asm ln 2065
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2065, prod ln 225.5, live ln 226, enc None
Load from declared address of `net` (decl src ln 27), asm ln 2057
  %285 = load %struct.network*, %struct.network** %net.addr, l210 c9, asm ln 2057
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2057, prod ln 210.9, live ln 211, enc None
Load from declared address of `net` (decl src ln 27), asm ln 2054
  %283 = load %struct.network*, %struct.network** %net.addr, l210 c22, asm ln 2054
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2054, prod ln 210.22, live ln 211, enc None
Load from declared address of `net` (decl src ln 27), asm ln 2043
  %280 = load %struct.network*, %struct.network** %net.addr, l209 c14, asm ln 2043
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2043, prod ln 209.14, live ln 210, enc None
Load from declared address of `net` (decl src ln 27), asm ln 2036
  %278 = load %struct.network*, %struct.network** %net.addr, l208 c32, asm ln 2036
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2036, prod ln 208.32, live ln 209, enc None
Load from declared address of `net` (decl src ln 27), asm ln 2029
  %276 = load %struct.network*, %struct.network** %net.addr, l208 c14, asm ln 2029
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2029, prod ln 208.14, live ln 209, enc None
Load from declared address of `net` (decl src ln 27), asm ln 2025
  %274 = load %struct.network*, %struct.network** %net.addr, l207 c15, asm ln 2025
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2025, prod ln 207.15, live ln 208, enc None
Load from declared address of `net` (decl src ln 27), asm ln 2022
  %273 = load %struct.network*, %struct.network** %net.addr, l206 c9, asm ln 2022
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2022, prod ln 206.9, live ln 207, enc None
Load from declared address of `net` (decl src ln 27), asm ln 2013
  %269 = load %struct.network*, %struct.network** %net.addr, l204 c9, asm ln 2013
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2013, prod ln 204.9, live ln 205, enc None
Load from declared address of `net` (decl src ln 27), asm ln 2009
  %267 = load %struct.network*, %struct.network** %net.addr, l202 c11, asm ln 2009
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2009, prod ln 202.11, live ln 203, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1999
  %265 = load %struct.network*, %struct.network** %net.addr, l181 c71, asm ln 1999
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1999, prod ln 181.71, live ln 182, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1996
  %263 = load %struct.network*, %struct.network** %net.addr, l181 c44, asm ln 1996
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1996, prod ln 181.44, live ln 182, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1943
  %238 = load %struct.network*, %struct.network** %net.addr, l193 c30, asm ln 1943
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1943, prod ln 193.30, live ln 194, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1916
  %231 = load %struct.network*, %struct.network** %net.addr, l181 c21, asm ln 1916
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1916, prod ln 181.21, live ln 182, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1899
  %228 = load %struct.network*, %struct.network** %net.addr, l177 c14, asm ln 1899
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1899, prod ln 177.14, live ln 178, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1885
  %224 = load %struct.network*, %struct.network** %net.addr, l174 c42, asm ln 1885
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1885, prod ln 174.42, live ln 175, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1882
  %222 = load %struct.network*, %struct.network** %net.addr, l174 c15, asm ln 1882
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1882, prod ln 174.15, live ln 175, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1840
  %204 = load %struct.network*, %struct.network** %net.addr, l169 c48, asm ln 1840
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1840, prod ln 169.48, live ln 170, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1833
  %202 = load %struct.network*, %struct.network** %net.addr, l169 c48, asm ln 1833
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1833, prod ln 169.48, live ln 170, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1825
  %199 = load %struct.network*, %struct.network** %net.addr, l168 c30, asm ln 1825
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1825, prod ln 168.30, live ln 169, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1805
  %190 = load %struct.network*, %struct.network** %net.addr, l164 c42, asm ln 1805
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1805, prod ln 164.42, live ln 165, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1802
  %188 = load %struct.network*, %struct.network** %net.addr, l164 c15, asm ln 1802
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1802, prod ln 164.15, live ln 165, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1761
  %169 = load %struct.network*, %struct.network** %net.addr, l158 c28, asm ln 1761
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1761, prod ln 158.28, live ln 159, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1752
  %165 = load %struct.network*, %struct.network** %net.addr, l157 c30, asm ln 1752
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1752, prod ln 157.30, live ln 158, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1738
  %159 = load %struct.network*, %struct.network** %net.addr, l154 c42, asm ln 1738
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1738, prod ln 154.42, live ln 155, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1735
  %157 = load %struct.network*, %struct.network** %net.addr, l154 c15, asm ln 1735
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1735, prod ln 154.15, live ln 155, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1697
  %139 = load %struct.network*, %struct.network** %net.addr, l149 c46, asm ln 1697
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1697, prod ln 149.46, live ln 150, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1684
  %133 = load %struct.network*, %struct.network** %net.addr, l147 c28, asm ln 1684
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1684, prod ln 147.28, live ln 148, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1671
  %128 = load %struct.network*, %struct.network** %net.addr, l144 c16, asm ln 1671
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1671, prod ln 144.16, live ln 145, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1653
  %120 = load %struct.network*, %struct.network** %net.addr, l141 c16, asm ln 1653
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1653, prod ln 141.16, live ln 142, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1644
  %116 = load %struct.network*, %struct.network** %net.addr, l140 c16, asm ln 1644
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1644, prod ln 140.16, live ln 141, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1601
  %103 = load %struct.network*, %struct.network** %net.addr, l127 c22, asm ln 1601
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1601, prod ln 127.22, live ln 128, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1592
  %100 = load %struct.network*, %struct.network** %net.addr, l125 c11, asm ln 1592
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1592, prod ln 125.11, live ln 126, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1588
  %98 = load %struct.network*, %struct.network** %net.addr, l124 c12, asm ln 1588
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1588, prod ln 124.12, live ln 125, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1585
  %97 = load %struct.network*, %struct.network** %net.addr, l120 c5, asm ln 1585
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1585, prod ln 120.5, live ln 121, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1581
  %95 = load %struct.network*, %struct.network** %net.addr, l120 c41, asm ln 1581
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1581, prod ln 120.41, live ln 121, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1578
  %93 = load %struct.network*, %struct.network** %net.addr, l120 c23, asm ln 1578
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1578, prod ln 120.23, live ln 121, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1575
  %92 = load %struct.network*, %struct.network** %net.addr, l119 c5, asm ln 1575
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1575, prod ln 119.5, live ln 120, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1571
  %90 = load %struct.network*, %struct.network** %net.addr, l119 c35, asm ln 1571
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1571, prod ln 119.35, live ln 120, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1568
  %88 = load %struct.network*, %struct.network** %net.addr, l119 c23, asm ln 1568
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1568, prod ln 119.23, live ln 120, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1565
  %87 = load %struct.network*, %struct.network** %net.addr, l118 c5, asm ln 1565
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1565, prod ln 118.5, live ln 119, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1560
  %85 = load %struct.network*, %struct.network** %net.addr, l118 c36, asm ln 1560
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1560, prod ln 118.36, live ln 119, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1557
  %83 = load %struct.network*, %struct.network** %net.addr, l118 c23, asm ln 1557
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1557, prod ln 118.23, live ln 119, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1551
  %82 = load %struct.network*, %struct.network** %net.addr, l95 c16, asm ln 1551
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1551, prod ln 95.16, live ln 96, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1543
  %80 = load %struct.network*, %struct.network** %net.addr, l92 c58, asm ln 1543
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1543, prod ln 92.58, live ln 93, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1536
  %78 = load %struct.network*, %struct.network** %net.addr, l92 c39, asm ln 1536
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1536, prod ln 92.39, live ln 93, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1529
  %76 = load %struct.network*, %struct.network** %net.addr, l92 c26, asm ln 1529
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1529, prod ln 92.26, live ln 93, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1522
  %74 = load %struct.network*, %struct.network** %net.addr, l92 c12, asm ln 1522
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1522, prod ln 92.12, live ln 93, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1519
  %73 = load %struct.network*, %struct.network** %net.addr, l90 c5, asm ln 1519
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1519, prod ln 90.5, live ln 91, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1514
  %70 = load %struct.network*, %struct.network** %net.addr, l90 c42, asm ln 1514
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1514, prod ln 90.42, live ln 91, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1511
  %69 = load %struct.network*, %struct.network** %net.addr, l89 c5, asm ln 1511
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1511, prod ln 89.5, live ln 90, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1506
  %66 = load %struct.network*, %struct.network** %net.addr, l89 c44, asm ln 1506
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1506, prod ln 89.44, live ln 90, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1503
  %65 = load %struct.network*, %struct.network** %net.addr, l88 c5, asm ln 1503
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1503, prod ln 88.5, live ln 89, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1498
  %62 = load %struct.network*, %struct.network** %net.addr, l88 c42, asm ln 1498
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1498, prod ln 88.42, live ln 89, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1495
  %61 = load %struct.network*, %struct.network** %net.addr, l87 c5, asm ln 1495
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1495, prod ln 87.5, live ln 88, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1489
  %58 = load %struct.network*, %struct.network** %net.addr, l87 c42, asm ln 1489
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1489, prod ln 87.42, live ln 88, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1483
  %57 = load %struct.network*, %struct.network** %net.addr, l79 c7, asm ln 1483
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1483, prod ln 79.7, live ln 80, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1480
  %56 = load %struct.network*, %struct.network** %net.addr, l78 c7, asm ln 1480
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1480, prod ln 78.7, live ln 79, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1467
  %54 = load %struct.network*, %struct.network** %net.addr, l78 c20, asm ln 1467
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1467, prod ln 78.20, live ln 79, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1460
  %52 = load %struct.network*, %struct.network** %net.addr, l78 c20, asm ln 1460
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1460, prod ln 78.20, live ln 79, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1447
  %50 = load %struct.network*, %struct.network** %net.addr, l78 c20, asm ln 1447
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1447, prod ln 78.20, live ln 79, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1443
  %48 = load %struct.network*, %struct.network** %net.addr, l78 c20, asm ln 1443
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1443, prod ln 78.20, live ln 79, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1437
  %47 = load %struct.network*, %struct.network** %net.addr, l73 c7, asm ln 1437
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1437, prod ln 73.7, live ln 74, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1433
  %45 = load %struct.network*, %struct.network** %net.addr, l73 c46, asm ln 1433
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1433, prod ln 73.46, live ln 74, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1430
  %43 = load %struct.network*, %struct.network** %net.addr, l73 c33, asm ln 1430
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1430, prod ln 73.33, live ln 74, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1427
  %42 = load %struct.network*, %struct.network** %net.addr, l72 c7, asm ln 1427
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1427, prod ln 72.7, live ln 73, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1424
  %41 = load %struct.network*, %struct.network** %net.addr, l71 c7, asm ln 1424
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1424, prod ln 71.7, live ln 72, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1421
  %39 = load %struct.network*, %struct.network** %net.addr, l71 c20, asm ln 1421
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1421, prod ln 71.20, live ln 72, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1414
  %37 = load %struct.network*, %struct.network** %net.addr, l69 c9, asm ln 1414
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1414, prod ln 69.9, live ln 70, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1406
  %35 = load %struct.network*, %struct.network** %net.addr, l66 c5, asm ln 1406
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1406, prod ln 66.5, live ln 67, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1403
  %34 = load %struct.network*, %struct.network** %net.addr, l65 c5, asm ln 1403
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1403, prod ln 65.5, live ln 66, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1399
  %32 = load %struct.network*, %struct.network** %net.addr, l65 c40, asm ln 1399
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1399, prod ln 65.40, live ln 66, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1396
  %30 = load %struct.network*, %struct.network** %net.addr, l65 c24, asm ln 1396
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1396, prod ln 65.24, live ln 66, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1389
  %28 = load %struct.network*, %struct.network** %net.addr, l64 c10, asm ln 1389
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1389, prod ln 64.10, live ln 65, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1380
  %27 = load %struct.network*, %struct.network** %net.addr, l63 c6, asm ln 1380
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1380, prod ln 63.6, live ln 64, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1377
  %25 = load %struct.network*, %struct.network** %net.addr, l63 c25, asm ln 1377
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1377, prod ln 63.25, live ln 64, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1371
  %24 = load %struct.network*, %struct.network** %net.addr, l61 c9, asm ln 1371
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1371, prod ln 61.9, live ln 62, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1365
  %22 = load %struct.network*, %struct.network** %net.addr, l61 c50, asm ln 1365
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1365, prod ln 61.50, live ln 62, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1362
  %20 = load %struct.network*, %struct.network** %net.addr, l61 c28, asm ln 1362
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1362, prod ln 61.28, live ln 62, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1354
  %18 = load %struct.network*, %struct.network** %net.addr, l60 c9, asm ln 1354
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1354, prod ln 60.9, live ln 61, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1351
  %17 = load %struct.network*, %struct.network** %net.addr, l59 c5, asm ln 1351
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1351, prod ln 59.5, live ln 60, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1345
  %15 = load %struct.network*, %struct.network** %net.addr, l59 c24, asm ln 1345
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1345, prod ln 59.24, live ln 60, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1342
  %14 = load %struct.network*, %struct.network** %net.addr, l58 c5, asm ln 1342
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1342, prod ln 58.5, live ln 59, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1339
  %13 = load %struct.network*, %struct.network** %net.addr, l56 c5, asm ln 1339
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1339, prod ln 56.5, live ln 57, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1329
  %8 = load %struct.network*, %struct.network** %net.addr, l55 c5, asm ln 1329
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1329, prod ln 55.5, live ln 56, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1322
  %5 = load %struct.network*, %struct.network** %net.addr, l54 c5, asm ln 1322
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1322, prod ln 54.5, live ln 55, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1318
  %3 = load %struct.network*, %struct.network** %net.addr, l53 c5, asm ln 1318
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1318, prod ln 53.5, live ln 54, enc None
Load from declared address of `net` (decl src ln 27), asm ln 1291
  %0 = load %struct.network*, %struct.network** %net.addr, l41 c22, asm ln 1291
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1291, prod ln 41.22, live ln 42, enc None
Store to declared address of `net` (decl src ln 27), asm ln 1278
  arg 0
  Added assignment asm ln 1278, prod ln 27.0, live ln 33, enc None
Load from declared address of `in` (decl src ln 33), asm ln 2063
  %286 = load %struct.__sFILE*, %struct.__sFILE** %in, l213 c13, asm ln 2063
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2063, prod ln 213.13, live ln 214, enc None
Load from declared address of `in` (decl src ln 33), asm ln 1924
  %233 = load %struct.__sFILE*, %struct.__sFILE** %in, l183 c31, asm ln 1924
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1924, prod ln 183.31, live ln 184, enc None
Load from declared address of `in` (decl src ln 33), asm ln 1609
  %105 = load %struct.__sFILE*, %struct.__sFILE** %in, l129 c31, asm ln 1609
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1609, prod ln 129.31, live ln 130, enc None
Load from declared address of `in` (decl src ln 33), asm ln 1305
  %1 = load %struct.__sFILE*, %struct.__sFILE** %in, l44 c27, asm ln 1305
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1305, prod ln 44.27, live ln 45, enc None
Store to declared address of `in` (decl src ln 33), asm ln 1295
  %call = call %struct.__sFILE* @"\01_fopen"(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)), l41 c15, asm ln 1294
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1295, prod ln 41.15, live ln 42, enc None
Store to declared address of `in` (decl src ln 33), asm ln 1281
  const %struct.__sFILE* null
  Added assignment asm ln 1281, prod ln 33.11, live ln 36, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1942
  %237 = load i64, i64* %t, l193 c28, asm ln 1942
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1942, prod ln 193.28, live ln 194, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1660
  %122 = load i64, i64* %t, l143 c24, asm ln 1660
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1660, prod ln 143.24, live ln 144, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1617
  %106 = load i64, i64* %t, l131 c73, asm ln 1617
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1617, prod ln 131.73, live ln 132, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1335
  %11 = load i64, i64* %t, l56 c19, asm ln 1335
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1335, prod ln 56.19, live ln 57, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1333
  %10 = load i64, i64* %t, l56 c17, asm ln 1333
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1333, prod ln 56.17, live ln 57, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1332
  %9 = load i64, i64* %t, l56 c15, asm ln 1332
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1332, prod ln 56.15, live ln 57, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1326
  %7 = load i64, i64* %t, l55 c17, asm ln 1326
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1326, prod ln 55.17, live ln 56, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1325
  %6 = load i64, i64* %t, l55 c15, asm ln 1325
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1325, prod ln 55.15, live ln 56, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1317
  %2 = load i64, i64* %t, l53 c20, asm ln 1317
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1317, prod ln 53.20, live ln 54, enc None
Load from declared address of `h` (decl src ln 35), asm ln 1952
  %242 = load i64, i64* %h, l194 c28, asm ln 1952
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1952, prod ln 194.28, live ln 195, enc None
Load from declared address of `h` (decl src ln 35), asm ln 1667
  %125 = load i64, i64* %h, l144 c37, asm ln 1667
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1667, prod ln 144.37, live ln 145, enc None
Load from declared address of `h` (decl src ln 35), asm ln 1618
  %107 = load i64, i64* %h, l131 c77, asm ln 1618
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1618, prod ln 131.77, live ln 132, enc None
Load from declared address of `h` (decl src ln 35), asm ln 1337
  %12 = load i64, i64* %h, l56 c21, asm ln 1337
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1337, prod ln 56.21, live ln 57, enc None
Load from declared address of `h` (decl src ln 35), asm ln 1321
  %4 = load i64, i64* %h, l54 c18, asm ln 1321
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1321, prod ln 54.18, live ln 55, enc None
Load from declared address of `c` (decl src ln 35), asm ln 1961
  %246 = load i64, i64* %c, l196 c29, asm ln 1961
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1961, prod ln 196.29, live ln 197, enc None
Load from declared address of `c` (decl src ln 35), asm ln 1957
  %244 = load i64, i64* %c, l195 c33, asm ln 1957
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1957, prod ln 195.33, live ln 196, enc None
Store to declared address of `i` (decl src ln 36), asm ln 2129
  %inc298 = add nsw i64 %305, 1, l226 c37, asm ln 2128
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2129, prod ln 226.37, live ln 227, enc None
Load from declared address of `i` (decl src ln 36), asm ln 2127
  %305 = load i64, i64* %i, l226 c37, asm ln 2127
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2127, prod ln 226.37, live ln 227, enc None
Load from declared address of `i` (decl src ln 36), asm ln 2085
  %294 = load i64, i64* %i, l228 c49, asm ln 2085
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2085, prod ln 228.49, live ln 229, enc None
Load from declared address of `i` (decl src ln 36), asm ln 2073
  %288 = load i64, i64* %i, l226 c17, asm ln 2073
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2073, prod ln 226.17, live ln 227, enc None
Store to declared address of `i` (decl src ln 36), asm ln 2069
  const i64 1
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2069, prod ln 226.12, live ln 227, enc None
Store to declared address of `i` (decl src ln 36), asm ln 1995
  %inc239 = add nsw i64 %262, 1, l181 c34, asm ln 1994
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1995, prod ln 181.34, live ln 182, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1993
  %262 = load i64, i64* %i, l181 c34, asm ln 1993
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1993, prod ln 181.34, live ln 182, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1915
  %230 = load i64, i64* %i, l181 c17, asm ln 1915
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1915, prod ln 181.17, live ln 182, enc None
Store to declared address of `i` (decl src ln 36), asm ln 1911
  const i64 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1911, prod ln 181.12, live ln 182, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1898
  %227 = load i64, i64* %i, l177 c9, asm ln 1898
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1898, prod ln 177.9, live ln 178, enc None
Store to declared address of `i` (decl src ln 36), asm ln 1894
  %inc198 = add nsw i64 %226, 1, l127 c37, asm ln 1893
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1894, prod ln 127.37, live ln 128, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1892
  %226 = load i64, i64* %i, l127 c37, asm ln 1892
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1892, prod ln 127.37, live ln 128, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1824
  %198 = load i64, i64* %i, l168 c28, asm ln 1824
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1824, prod ln 168.28, live ln 169, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1818
  %195 = load i64, i64* %i, l167 c28, asm ln 1818
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1818, prod ln 167.28, live ln 168, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1751
  %164 = load i64, i64* %i, l157 c28, asm ln 1751
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1751, prod ln 157.28, live ln 158, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1692
  %137 = load i64, i64* %i, l148 c28, asm ln 1692
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1692, prod ln 148.28, live ln 149, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1670
  %127 = load i64, i64* %i, l144 c14, asm ln 1670
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1670, prod ln 144.14, live ln 145, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1663
  %124 = load i64, i64* %i, l143 c14, asm ln 1663
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1663, prod ln 143.14, live ln 144, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1652
  %119 = load i64, i64* %i, l141 c14, asm ln 1652
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1652, prod ln 141.14, live ln 142, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1643
  %115 = load i64, i64* %i, l140 c14, asm ln 1643
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1643, prod ln 140.14, live ln 141, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1640
  %113 = load i64, i64* %i, l140 c39, asm ln 1640
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1640, prod ln 140.39, live ln 141, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1636
  %112 = load i64, i64* %i, l138 c14, asm ln 1636
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1636, prod ln 138.14, live ln 139, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1631
  %110 = load i64, i64* %i, l137 c14, asm ln 1631
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1631, prod ln 137.14, live ln 138, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1627
  %108 = load i64, i64* %i, l137 c27, asm ln 1627
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1627, prod ln 137.27, live ln 138, enc None
Load from declared address of `i` (decl src ln 36), asm ln 1600
  %102 = load i64, i64* %i, l127 c17, asm ln 1600
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1600, prod ln 127.17, live ln 128, enc None
Store to declared address of `i` (decl src ln 36), asm ln 1596
  const i64 1
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1596, prod ln 127.12, live ln 128, enc None
Store to declared address of `actArc` (decl src ln 36), asm ln 2002
  %inc241 = add nsw i64 %266, 1, l181 c76, asm ln 2001
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2002, prod ln 181.76, live ln 182, enc None
Load from declared address of `actArc` (decl src ln 36), asm ln 2000
  %266 = load i64, i64* %actArc, l181 c76, asm ln 2000
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2000, prod ln 181.76, live ln 182, enc None
Load from declared address of `actArc` (decl src ln 36), asm ln 1936
  %234 = load i64, i64* %actArc, l192 c19, asm ln 1936
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1936, prod ln 192.19, live ln 193, enc None
Store to declared address of `actArc` (decl src ln 36), asm ln 1888
  %inc195 = add nsw i64 %225, 1, l174 c47, asm ln 1887
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1888, prod ln 174.47, live ln 175, enc None
Load from declared address of `actArc` (decl src ln 36), asm ln 1886
  %225 = load i64, i64* %actArc, l174 c47, asm ln 1886
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1886, prod ln 174.47, live ln 175, enc None
Load from declared address of `actArc` (decl src ln 36), asm ln 1812
  %192 = load i64, i64* %actArc, l166 c19, asm ln 1812
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1812, prod ln 166.19, live ln 167, enc None
Store to declared address of `actArc` (decl src ln 36), asm ln 1808
  %inc162 = add nsw i64 %191, 1, l164 c47, asm ln 1807
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1808, prod ln 164.47, live ln 165, enc None
Load from declared address of `actArc` (decl src ln 36), asm ln 1806
  %191 = load i64, i64* %actArc, l164 c47, asm ln 1806
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1806, prod ln 164.47, live ln 165, enc None
Load from declared address of `actArc` (decl src ln 36), asm ln 1745
  %161 = load i64, i64* %actArc, l156 c19, asm ln 1745
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1745, prod ln 156.19, live ln 157, enc None
Store to declared address of `actArc` (decl src ln 36), asm ln 1741
  %inc = add nsw i64 %160, 1, l154 c47, asm ln 1740
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1741, prod ln 154.47, live ln 155, enc None
Load from declared address of `actArc` (decl src ln 36), asm ln 1739
  %160 = load i64, i64* %actArc, l154 c47, asm ln 1739
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1739, prod ln 154.47, live ln 155, enc None
Load from declared address of `actArc` (decl src ln 36), asm ln 1678
  %130 = load i64, i64* %actArc, l146 c19, asm ln 1678
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1678, prod ln 146.19, live ln 147, enc None
Store to declared address of `actArc` (decl src ln 36), asm ln 1288
  const i64 0
  Added assignment asm ln 1288, prod ln 36.13, live ln 41, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 2124
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7, asm ln 2124
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2124, prod ln 231.7, live ln 232, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 2106
  %299 = load %struct.arc*, %struct.arc** %arc, l229 c7, asm ln 2106
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2106, prod ln 229.7, live ln 230, enc None
Store to declared address of `arc` (decl src ln 37), asm ln 2090
  %add.ptr276 = getelementptr inbounds %struct.arc, %struct.arc* %292, i64 %call275, l228 c23, asm ln 2089
  Added assignment asm ln 2090, prod ln 228.23, live ln 230, enc None
Store to declared address of `arc` (decl src ln 37), asm ln 2050
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %282, i32 1, l208 c51, asm ln 2049
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2050, prod ln 208.51, live ln 209, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 2048
  %282 = load %struct.arc*, %struct.arc** %arc, l208 c51, asm ln 2048
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2048, prod ln 208.51, live ln 209, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 2035
  %277 = load %struct.arc*, %struct.arc** %arc, l208 c26, asm ln 2035
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2035, prod ln 208.26, live ln 209, enc None
Store to declared address of `arc` (decl src ln 37), asm ln 2028
  %275 = load %struct.arc*, %struct.arc** %arcs251, l207 c20, asm ln 2027
  Added assignment asm ln 2028, prod ln 207.20, live ln 208, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 2021
  %272 = load %struct.arc*, %struct.arc** %arc, l206 c26, asm ln 2021
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2021, prod ln 206.26, live ln 207, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 2016
  %271 = load %struct.arc*, %struct.arc** %arc, l204 c27, asm ln 2016
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2016, prod ln 204.27, live ln 205, enc None
Store to declared address of `arc` (decl src ln 37), asm ln 2012
  %268 = load %struct.arc*, %struct.arc** %stop_arcs245, l202 c16, asm ln 2011
  Added assignment asm ln 2012, prod ln 202.16, live ln 204, enc None
Store to declared address of `arc` (decl src ln 37), asm ln 2005
  %add.ptr243 = getelementptr inbounds %struct.arc, %struct.arc* %264, i64 %call242, l181 c54, asm ln 2004
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2005, prod ln 181.54, live ln 182, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1988
  %260 = load %struct.arc*, %struct.arc** %arc, l200 c9, asm ln 1988
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1988, prod ln 200.9, live ln 201, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1987
  %259 = load %struct.arc*, %struct.arc** %arc, l200 c30, asm ln 1987
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1987, prod ln 200.30, live ln 201, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1984
  %258 = load %struct.arc*, %struct.arc** %arc, l199 c9, asm ln 1984
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1984, prod ln 199.9, live ln 200, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1979
  %255 = load %struct.arc*, %struct.arc** %arc, l199 c23, asm ln 1979
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1979, prod ln 199.23, live ln 200, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1974
  %253 = load %struct.arc*, %struct.arc** %arc, l198 c9, asm ln 1974
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1974, prod ln 198.9, live ln 199, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1973
  %252 = load %struct.arc*, %struct.arc** %arc, l198 c31, asm ln 1973
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1973, prod ln 198.31, live ln 199, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1970
  %251 = load %struct.arc*, %struct.arc** %arc, l197 c9, asm ln 1970
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1970, prod ln 197.9, live ln 198, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1965
  %248 = load %struct.arc*, %struct.arc** %arc, l197 c24, asm ln 1965
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1965, prod ln 197.24, live ln 198, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1962
  %247 = load %struct.arc*, %struct.arc** %arc, l196 c9, asm ln 1962
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1962, prod ln 196.9, live ln 197, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1958
  %245 = load %struct.arc*, %struct.arc** %arc, l195 c9, asm ln 1958
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1958, prod ln 195.9, live ln 196, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1954
  %243 = load %struct.arc*, %struct.arc** %arc, l194 c9, asm ln 1954
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1954, prod ln 194.9, live ln 195, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1948
  %240 = load %struct.arc*, %struct.arc** %arc, l193 c9, asm ln 1948
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1948, prod ln 193.9, live ln 194, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1938
  %235 = load %struct.arc*, %struct.arc** %arc, l192 c9, asm ln 1938
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1938, prod ln 192.9, live ln 193, enc None
Store to declared address of `arc` (decl src ln 37), asm ln 1891
  %add.ptr197 = getelementptr inbounds %struct.arc, %struct.arc* %223, i64 %call196, l174 c25, asm ln 1890
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1891, prod ln 174.25, live ln 175, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1877
  %220 = load %struct.arc*, %struct.arc** %arc, l173 c9, asm ln 1877
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1877, prod ln 173.9, live ln 174, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1876
  %219 = load %struct.arc*, %struct.arc** %arc, l173 c30, asm ln 1876
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1876, prod ln 173.30, live ln 174, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1873
  %218 = load %struct.arc*, %struct.arc** %arc, l172 c9, asm ln 1873
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1873, prod ln 172.9, live ln 173, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1868
  %215 = load %struct.arc*, %struct.arc** %arc, l172 c23, asm ln 1868
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1868, prod ln 172.23, live ln 173, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1863
  %213 = load %struct.arc*, %struct.arc** %arc, l171 c9, asm ln 1863
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1863, prod ln 171.9, live ln 172, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1862
  %212 = load %struct.arc*, %struct.arc** %arc, l171 c31, asm ln 1862
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1862, prod ln 171.31, live ln 172, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1859
  %211 = load %struct.arc*, %struct.arc** %arc, l170 c9, asm ln 1859
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1859, prod ln 170.9, live ln 171, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1854
  %208 = load %struct.arc*, %struct.arc** %arc, l170 c24, asm ln 1854
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1854, prod ln 170.24, live ln 171, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1851
  %207 = load %struct.arc*, %struct.arc** %arc, l169 c9, asm ln 1851
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1851, prod ln 169.9, live ln 170, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1848
  %206 = load %struct.arc*, %struct.arc** %arc, l169 c25, asm ln 1848
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1848, prod ln 169.25, live ln 170, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1830
  %201 = load %struct.arc*, %struct.arc** %arc, l168 c9, asm ln 1830
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1830, prod ln 168.9, live ln 169, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1820
  %196 = load %struct.arc*, %struct.arc** %arc, l167 c9, asm ln 1820
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1820, prod ln 167.9, live ln 168, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1814
  %193 = load %struct.arc*, %struct.arc** %arc, l166 c9, asm ln 1814
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1814, prod ln 166.9, live ln 167, enc None
Store to declared address of `arc` (decl src ln 37), asm ln 1811
  %add.ptr164 = getelementptr inbounds %struct.arc, %struct.arc* %189, i64 %call163, l164 c25, asm ln 1810
  Added assignment asm ln 1811, prod ln 164.25, live ln 166, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1797
  %186 = load %struct.arc*, %struct.arc** %arc, l163 c9, asm ln 1797
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1797, prod ln 163.9, live ln 164, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1796
  %185 = load %struct.arc*, %struct.arc** %arc, l163 c30, asm ln 1796
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1796, prod ln 163.30, live ln 164, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1793
  %184 = load %struct.arc*, %struct.arc** %arc, l162 c9, asm ln 1793
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1793, prod ln 162.9, live ln 163, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1788
  %181 = load %struct.arc*, %struct.arc** %arc, l162 c23, asm ln 1788
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1788, prod ln 162.23, live ln 163, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1783
  %179 = load %struct.arc*, %struct.arc** %arc, l161 c9, asm ln 1783
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1783, prod ln 161.9, live ln 162, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1782
  %178 = load %struct.arc*, %struct.arc** %arc, l161 c31, asm ln 1782
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1782, prod ln 161.31, live ln 162, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1779
  %177 = load %struct.arc*, %struct.arc** %arc, l160 c9, asm ln 1779
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1779, prod ln 160.9, live ln 161, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1774
  %174 = load %struct.arc*, %struct.arc** %arc, l160 c24, asm ln 1774
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1774, prod ln 160.24, live ln 161, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1771
  %173 = load %struct.arc*, %struct.arc** %arc, l159 c9, asm ln 1771
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1771, prod ln 159.9, live ln 160, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1768
  %172 = load %struct.arc*, %struct.arc** %arc, l159 c25, asm ln 1768
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1768, prod ln 159.25, live ln 160, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1765
  %171 = load %struct.arc*, %struct.arc** %arc, l158 c9, asm ln 1765
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1765, prod ln 158.9, live ln 159, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1757
  %167 = load %struct.arc*, %struct.arc** %arc, l157 c9, asm ln 1757
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1757, prod ln 157.9, live ln 158, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1747
  %162 = load %struct.arc*, %struct.arc** %arc, l156 c9, asm ln 1747
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1747, prod ln 156.9, live ln 157, enc None
Store to declared address of `arc` (decl src ln 37), asm ln 1744
  %add.ptr139 = getelementptr inbounds %struct.arc, %struct.arc* %158, i64 %call138, l154 c25, asm ln 1743
  Added assignment asm ln 1744, prod ln 154.25, live ln 156, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1730
  %155 = load %struct.arc*, %struct.arc** %arc, l153 c9, asm ln 1730
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1730, prod ln 153.9, live ln 154, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1729
  %154 = load %struct.arc*, %struct.arc** %arc, l153 c30, asm ln 1729
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1729, prod ln 153.30, live ln 154, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1726
  %153 = load %struct.arc*, %struct.arc** %arc, l152 c9, asm ln 1726
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1726, prod ln 152.9, live ln 153, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1721
  %150 = load %struct.arc*, %struct.arc** %arc, l152 c23, asm ln 1721
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1721, prod ln 152.23, live ln 153, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1716
  %148 = load %struct.arc*, %struct.arc** %arc, l151 c9, asm ln 1716
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1716, prod ln 151.9, live ln 152, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1715
  %147 = load %struct.arc*, %struct.arc** %arc, l151 c31, asm ln 1715
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1715, prod ln 151.31, live ln 152, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1712
  %146 = load %struct.arc*, %struct.arc** %arc, l150 c9, asm ln 1712
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1712, prod ln 150.9, live ln 151, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1707
  %143 = load %struct.arc*, %struct.arc** %arc, l150 c24, asm ln 1707
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1707, prod ln 150.24, live ln 151, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1704
  %142 = load %struct.arc*, %struct.arc** %arc, l149 c9, asm ln 1704
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1704, prod ln 149.9, live ln 150, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1701
  %141 = load %struct.arc*, %struct.arc** %arc, l149 c25, asm ln 1701
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1701, prod ln 149.25, live ln 150, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1694
  %138 = load %struct.arc*, %struct.arc** %arc, l148 c9, asm ln 1694
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1694, prod ln 148.9, live ln 149, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1688
  %135 = load %struct.arc*, %struct.arc** %arc, l147 c9, asm ln 1688
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1688, prod ln 147.9, live ln 148, enc None
Load from declared address of `arc` (decl src ln 37), asm ln 1680
  %131 = load %struct.arc*, %struct.arc** %arc, l146 c9, asm ln 1680
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1680, prod ln 146.9, live ln 147, enc None
Store to declared address of `arc` (decl src ln 37), asm ln 1595
  %101 = load %struct.arc*, %struct.arc** %arcs93, l125 c16, asm ln 1594
  Added assignment asm ln 1595, prod ln 125.16, live ln 127, enc None
Load from declared address of `node` (decl src ln 38), asm ln 1951
  %241 = load %struct.node*, %struct.node** %node, l194 c23, asm ln 1951
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1951, prod ln 194.23, live ln 195, enc None
Load from declared address of `node` (decl src ln 38), asm ln 1941
  %236 = load %struct.node*, %struct.node** %node, l193 c23, asm ln 1941
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1941, prod ln 193.23, live ln 194, enc None
Load from declared address of `node` (decl src ln 38), asm ln 1823
  %197 = load %struct.node*, %struct.node** %node, l168 c23, asm ln 1823
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1823, prod ln 168.23, live ln 169, enc None
Load from declared address of `node` (decl src ln 38), asm ln 1817
  %194 = load %struct.node*, %struct.node** %node, l167 c23, asm ln 1817
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1817, prod ln 167.23, live ln 168, enc None
Load from declared address of `node` (decl src ln 38), asm ln 1760
  %168 = load %struct.node*, %struct.node** %node, l158 c23, asm ln 1760
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1760, prod ln 158.23, live ln 159, enc None
Load from declared address of `node` (decl src ln 38), asm ln 1750
  %163 = load %struct.node*, %struct.node** %node, l157 c23, asm ln 1750
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1750, prod ln 157.23, live ln 158, enc None
Load from declared address of `node` (decl src ln 38), asm ln 1691
  %136 = load %struct.node*, %struct.node** %node, l148 c23, asm ln 1691
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1691, prod ln 148.23, live ln 149, enc None
Load from declared address of `node` (decl src ln 38), asm ln 1683
  %132 = load %struct.node*, %struct.node** %node, l147 c23, asm ln 1683
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1683, prod ln 147.23, live ln 148, enc None
Load from declared address of `node` (decl src ln 38), asm ln 1669
  %126 = load %struct.node*, %struct.node** %node, l144 c9, asm ln 1669
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1669, prod ln 144.9, live ln 145, enc None
Load from declared address of `node` (decl src ln 38), asm ln 1662
  %123 = load %struct.node*, %struct.node** %node, l143 c9, asm ln 1662
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1662, prod ln 143.9, live ln 144, enc None
Load from declared address of `node` (decl src ln 38), asm ln 1651
  %118 = load %struct.node*, %struct.node** %node, l141 c9, asm ln 1651
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1651, prod ln 141.9, live ln 142, enc None
Load from declared address of `node` (decl src ln 38), asm ln 1642
  %114 = load %struct.node*, %struct.node** %node, l140 c9, asm ln 1642
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1642, prod ln 140.9, live ln 141, enc None
Load from declared address of `node` (decl src ln 38), asm ln 1635
  %111 = load %struct.node*, %struct.node** %node, l138 c9, asm ln 1635
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1635, prod ln 138.9, live ln 139, enc None
Load from declared address of `node` (decl src ln 38), asm ln 1630
  %109 = load %struct.node*, %struct.node** %node, l137 c9, asm ln 1630
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1630, prod ln 137.9, live ln 138, enc None
Store to declared address of `node` (decl src ln 38), asm ln 1591
  %99 = load %struct.node*, %struct.node** %nodes92, l124 c17, asm ln 1590
  Added assignment asm ln 1591, prod ln 124.17, live ln 125, enc None

#### After variables

Value produced for `net` (decl src ln 27), asm ln 1019
  arg 0
  Added assignment asm ln 1019, prod ln 27.0, live ln 41, enc None
Value produced for `in` (decl src ln 33), asm ln 1020
  const %struct.__sFILE.5* null
  Added assignment asm ln 1020, prod ln 33.0, live ln 41, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1510
  %83 = load i64, i64* %t, l193 c28, asm ln 1510
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1510, prod ln 193.28, live ln 194, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1316
  %50 = load i64, i64* %t, l143 c24, asm ln 1316
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1316, prod ln 143.24, live ln 144, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1289
  %46 = load i64, i64* %t, l131 c73, asm ln 1289
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1289, prod ln 131.73, live ln 132, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1057
  %6 = load i64, i64* %t, l56 c19, asm ln 1057
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1057, prod ln 56.19, live ln 57, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1055
  %5 = load i64, i64* %t, l56 c17, asm ln 1055
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1055, prod ln 56.17, live ln 57, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1054
  %4 = load i64, i64* %t, l56 c15, asm ln 1054
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1054, prod ln 56.15, live ln 57, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1049
  %3 = load i64, i64* %t, l55 c17, asm ln 1049
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1049, prod ln 55.17, live ln 56, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1048
  %2 = load i64, i64* %t, l55 c15, asm ln 1048
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1048, prod ln 55.15, live ln 56, enc None
Load from declared address of `t` (decl src ln 35), asm ln 1042
  %0 = load i64, i64* %t, l53 c20, asm ln 1042
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1042, prod ln 53.20, live ln 54, enc None
Load from declared address of `h` (decl src ln 35), asm ln 1517
  %85 = load i64, i64* %h, l194 c28, asm ln 1517
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1517, prod ln 194.28, live ln 195, enc None
Load from declared address of `h` (decl src ln 35), asm ln 1321
  %51 = load i64, i64* %h, l144 c37, asm ln 1321
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1321, prod ln 144.37, live ln 145, enc None
Load from declared address of `h` (decl src ln 35), asm ln 1290
  %47 = load i64, i64* %h, l131 c77, asm ln 1290
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1290, prod ln 131.77, live ln 132, enc None
Load from declared address of `h` (decl src ln 35), asm ln 1059
  %7 = load i64, i64* %h, l56 c21, asm ln 1059
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1059, prod ln 56.21, live ln 57, enc None
Load from declared address of `h` (decl src ln 35), asm ln 1045
  %1 = load i64, i64* %h, l54 c18, asm ln 1045
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1045, prod ln 54.18, live ln 55, enc None
Load from declared address of `c` (decl src ln 35), asm ln 1524
  %87 = load i64, i64* %c, l196 c29, asm ln 1524
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1524, prod ln 196.29, live ln 197, enc None
Load from declared address of `c` (decl src ln 35), asm ln 1521
  %86 = load i64, i64* %c, l195 c33, asm ln 1521
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1521, prod ln 195.33, live ln 196, enc None
Value produced for `actArc` (decl src ln 36), asm ln 1025
  const i64 0
  Added assignment asm ln 1025, prod ln 36.0, live ln 41, enc None
Value produced for `in` (decl src ln 33), asm ln 1029
  %call = call %struct.__sFILE.5* @"\01_fopen"(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)), l41 c15, asm ln 1028
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1029, prod ln 41.15, live ln 42, enc None
Value produced for `node` (decl src ln 38), asm ln 1261
  %43 = load %struct.node.1*, %struct.node.1** %nodes92, l124 c17, asm ln 1260
  Added assignment asm ln 1261, prod ln 124.17, live ln 125, enc None
Value produced for `arc` (decl src ln 37), asm ln 1264
  %44 = load %struct.arc.0*, %struct.arc.0** %arcs93, l125 c16, asm ln 1263
  Added assignment asm ln 1264, prod ln 125.16, live ln 127, enc None
Value produced for `i` (decl src ln 36), asm ln 1265
  const i64 1
  Added assignment asm ln 1265, prod ln 36.0, live ln 127, enc None
Value produced for `actArc` (decl src ln 36), asm ln 1370
  %inc = add nsw i64 %actArc.0, 1, l154 c47, asm ln 1369
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1370, prod ln 154.47, live ln 155, enc None
Value produced for `arc` (decl src ln 37), asm ln 1373
  %add.ptr139 = getelementptr inbounds %struct.arc.0, %struct.arc.0* %61, i64 %call138, l154 c25, asm ln 1372
  Added assignment asm ln 1373, prod ln 154.25, live ln 156, enc None
Value produced for `actArc` (decl src ln 36), asm ln 1415
  %inc162 = add nsw i64 %inc, 1, l164 c47, asm ln 1414
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1415, prod ln 164.47, live ln 165, enc None
Value produced for `arc` (decl src ln 37), asm ln 1418
  %add.ptr164 = getelementptr inbounds %struct.arc.0, %struct.arc.0* %70, i64 %call163, l164 c25, asm ln 1417
  Added assignment asm ln 1418, prod ln 164.25, live ln 166, enc None
Value produced for `actArc` (decl src ln 36), asm ln 1471
  %inc195 = add nsw i64 %inc162, 1, l174 c47, asm ln 1470
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1471, prod ln 174.47, live ln 175, enc None
Value produced for `arc` (decl src ln 37), asm ln 1474
  %add.ptr197 = getelementptr inbounds %struct.arc.0, %struct.arc.0* %80, i64 %call196, l174 c25, asm ln 1473
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1474, prod ln 174.25, live ln 175, enc None
Value produced for `i` (decl src ln 36), asm ln 1476
  %inc198 = add nsw i64 %i.0, 1, l127 c37, asm ln 1475
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1476, prod ln 127.37, live ln 128, enc None
Value produced for `i` (decl src ln 36), asm ln 1548
  %inc239 = add nsw i64 %i.1, 1, l181 c34, asm ln 1547
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1548, prod ln 181.34, live ln 182, enc None
Value produced for `actArc` (decl src ln 36), asm ln 1552
  %inc241 = add nsw i64 %actArc.1, 1, l181 c76, asm ln 1551
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1552, prod ln 181.76, live ln 182, enc None
Value produced for `arc` (decl src ln 37), asm ln 1555
  %add.ptr243 = getelementptr inbounds %struct.arc.0, %struct.arc.0* %94, i64 %call242, l181 c54, asm ln 1554
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1555, prod ln 181.54, live ln 182, enc None
Value produced for `arc` (decl src ln 37), asm ln 1561
  %95 = load %struct.arc.0*, %struct.arc.0** %stop_arcs245, l202 c16, asm ln 1560
  Added assignment asm ln 1561, prod ln 202.16, live ln 204, enc None
Value produced for `arc` (decl src ln 37), asm ln 1572
  %97 = load %struct.arc.0*, %struct.arc.0** %arcs251, l207 c20, asm ln 1571
  Added assignment asm ln 1572, prod ln 207.20, live ln 208, enc None
Value produced for `arc` (decl src ln 37), asm ln 1591
  %incdec.ptr = getelementptr inbounds %struct.arc.0, %struct.arc.0* %arc.2, i32 1, l208 c51, asm ln 1590
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1591, prod ln 208.51, live ln 209, enc None
Value produced for `i` (decl src ln 36), asm ln 1606
  const i64 1
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 1606, prod ln 36.0, live ln 226, enc None
Value produced for `arc` (decl src ln 37), asm ln 1624
  %add.ptr276 = getelementptr inbounds %struct.arc.0, %struct.arc.0* %102, i64 %call275, l228 c23, asm ln 1623
  Added assignment asm ln 1624, prod ln 228.23, live ln 230, enc None
Value produced for `i` (decl src ln 36), asm ln 1656
  %inc298 = add nsw i64 %i.2, 1, l226 c37, asm ln 1655
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1656, prod ln 226.37, live ln 227, enc None
Value produced for `arc` (decl src ln 37), asm ln 1272
  %arc.0 = phi %struct.arc.0* [ %44, %if.end82 ], [ %add.ptr197, %cond.end179 ], asm ln 1271
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1272, prod ln 174.25, live ln 175, enc None
Value produced for `i` (decl src ln 36), asm ln 1273
  %i.0 = phi i64 [ 1, %if.end82 ], [ %inc198, %cond.end179 ], asm ln 1270
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1273, prod ln 127.37, live ln 128, enc None
Value produced for `actArc` (decl src ln 36), asm ln 1274
  %actArc.0 = phi i64 [ 0, %if.end82 ], [ %inc195, %cond.end179 ], asm ln 1269
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1274, prod ln 174.47, live ln 175, enc None
Value produced for `arc` (decl src ln 37), asm ln 1490
  %arc.1 = phi %struct.arc.0* [ %add.ptr243, %if.end217 ], [ %arc.0, %for.end ], asm ln 1489
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1490, prod ln 181.54, live ln 182, enc None
Value produced for `i` (decl src ln 36), asm ln 1491
  %i.1 = phi i64 [ %inc239, %if.end217 ], [ 0, %for.end ], asm ln 1488
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1491, prod ln 181.34, live ln 182, enc None
Value produced for `actArc` (decl src ln 36), asm ln 1492
  %actArc.1 = phi i64 [ %inc241, %if.end217 ], [ %actArc.0, %for.end ], asm ln 1487
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1492, prod ln 181.76, live ln 182, enc None
Value produced for `arc` (decl src ln 37), asm ln 1579
  %arc.2 = phi %struct.arc.0* [ %97, %if.then249 ], [ %incdec.ptr, %for.body257 ], asm ln 1578
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1579, prod ln 208.51, live ln 209, enc None
Value produced for `i` (decl src ln 36), asm ln 1611
  %i.2 = phi i64 [ 1, %if.end264 ], [ %inc298, %cond.end293 ], asm ln 1610
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1611, prod ln 226.37, live ln 227, enc None

#### Summary

✅ 10 before variables found, 10 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `readmin.c`
[0mCollected value for `net`
  Assignment asm ln 1278, prod ln 27.0, live ln 33, enc 0
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) read_min.net.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
Collected value for `in`
  Assignment asm ln 1281, prod ln 33.11, live ln 36, enc 0
  %struct.__sFILE* null
  (w64 0x0)
Collected value for `actArc`
  Assignment asm ln 1288, prod ln 36.13, live ln 41, enc 0
  i64 0
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 1291, prod ln 41.22, live ln 42, enc 1
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) read_min.net.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %0 = load %struct.network*, %struct.network** %net.addr, l41 c22
  (w64 0x81DE172F37E9C697)
Collected value for `in`
  Assignment asm ln 1295, prod ln 41.15, live ln 42, enc 1
  Concrete pointer resolves to _fopen.return.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x9297D9A77A217663)
  %call = call %struct.__sFILE* @"\01_fopen"(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)), l41 c15
  (w64 0x9297D9A77A217663)
Collected value for `in`
  Assignment asm ln 1305, prod ln 44.27, live ln 45, enc 2
  Concrete pointer resolves to _fopen.return.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x9297D9A77A217663)
  %1 = load %struct.__sFILE*, %struct.__sFILE** %in, l44 c27
  (w64 0x9297D9A77A217663)
Collected value for `t`
  Assignment asm ln 1317, prod ln 53.20, live ln 54, enc 0
  %2 = load i64, i64* %t, l53 c20
  (w64 0xABABABABABABABAB)
Collected value for `net`
  Assignment asm ln 1318, prod ln 53.5, live ln 54, enc 2
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) __fopen.arg0.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %3 = load %struct.network*, %struct.network** %net.addr, l53 c5
  (w64 0x81DE172F37E9C697)
Collected value for `h`
  Assignment asm ln 1321, prod ln 54.18, live ln 55, enc 0
  %4 = load i64, i64* %h, l54 c18
  (w64 0xABABABABABABABAB)
Collected value for `net`
  Assignment asm ln 1322, prod ln 54.5, live ln 55, enc 3
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) __fopen.arg0.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %5 = load %struct.network*, %struct.network** %net.addr, l54 c5
  (w64 0x81DE172F37E9C697)
Collected value for `t`
  Assignment asm ln 1325, prod ln 55.15, live ln 56, enc 1
  %6 = load i64, i64* %t, l55 c15
  (w64 0xABABABABABABABAB)
Collected value for `t`
  Assignment asm ln 1326, prod ln 55.17, live ln 56, enc 2
  %7 = load i64, i64* %t, l55 c17
  (w64 0xABABABABABABABAB)
Collected value for `net`
  Assignment asm ln 1329, prod ln 55.5, live ln 56, enc 4
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) __fopen.arg0.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %8 = load %struct.network*, %struct.network** %net.addr, l55 c5
  (w64 0x81DE172F37E9C697)
Collected value for `t`
  Assignment asm ln 1332, prod ln 56.15, live ln 57, enc 3
  %9 = load i64, i64* %t, l56 c15
  (w64 0xABABABABABABABAB)
Collected value for `t`
  Assignment asm ln 1333, prod ln 56.17, live ln 57, enc 4
  %10 = load i64, i64* %t, l56 c17
  (w64 0xABABABABABABABAB)
Collected value for `t`
  Assignment asm ln 1335, prod ln 56.19, live ln 57, enc 5
  %11 = load i64, i64* %t, l56 c19
  (w64 0xABABABABABABABAB)
Collected value for `h`
  Assignment asm ln 1337, prod ln 56.21, live ln 57, enc 1
  %12 = load i64, i64* %h, l56 c21
  (w64 0xABABABABABABABAB)
Collected value for `net`
  Assignment asm ln 1339, prod ln 56.5, live ln 57, enc 5
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) __fopen.arg0.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %13 = load %struct.network*, %struct.network** %net.addr, l56 c5
  (w64 0x81DE172F37E9C697)
Collected value for `net`
  Assignment asm ln 1342, prod ln 58.5, live ln 59, enc 6
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) __fopen.arg0.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %14 = load %struct.network*, %struct.network** %net.addr, l58 c5
  (w64 0x81DE172F37E9C697)
Collected value for `net`
  Assignment asm ln 1345, prod ln 59.24, live ln 60, enc 7
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) __fopen.arg0.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %15 = load %struct.network*, %struct.network** %net.addr, l59 c24
  (w64 0x81DE172F37E9C697)
Collected value for `net`
  Assignment asm ln 1351, prod ln 59.5, live ln 60, enc 8
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) __fopen.arg0.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %17 = load %struct.network*, %struct.network** %net.addr, l59 c5
  (w64 0x81DE172F37E9C697)
Collected value for `net`
  Assignment asm ln 1354, prod ln 60.9, live ln 61, enc 9
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) __fopen.arg0.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %18 = load %struct.network*, %struct.network** %net.addr, l60 c9
  (w64 0x81DE172F37E9C697)
Collected value for `net`
  Assignment asm ln 1362, prod ln 61.28, live ln 62, enc 10
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) __fopen.arg0.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %20 = load %struct.network*, %struct.network** %net.addr, l61 c28
  (w64 0x81DE172F37E9C697)
Collected value for `net`
  Assignment asm ln 1365, prod ln 61.50, live ln 62, enc 11
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) __fopen.arg0.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %22 = load %struct.network*, %struct.network** %net.addr, l61 c50
  (w64 0x81DE172F37E9C697)
Collected value for `net`
  Assignment asm ln 1371, prod ln 61.9, live ln 62, enc 12
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) __fopen.arg0.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %24 = load %struct.network*, %struct.network** %net.addr, l61 c9
  (w64 0x81DE172F37E9C697)
Collected value for `net`
  Assignment asm ln 1389, prod ln 64.10, live ln 65, enc 13
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) __fopen.arg0.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %28 = load %struct.network*, %struct.network** %net.addr, l64 c10
  (w64 0x81DE172F37E9C697)
Collected value for `net`
  Assignment asm ln 1396, prod ln 65.24, live ln 66, enc 14
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) __fopen.arg0.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %30 = load %struct.network*, %struct.network** %net.addr, l65 c24
  (w64 0x81DE172F37E9C697)
Collected value for `net`
  Assignment asm ln 1399, prod ln 65.40, live ln 66, enc 15
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) __fopen.arg0.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %32 = load %struct.network*, %struct.network** %net.addr, l65 c40
  (w64 0x81DE172F37E9C697)
Collected value for `net`
  Assignment asm ln 1403, prod ln 65.5, live ln 66, enc 16
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) __fopen.arg0.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %34 = load %struct.network*, %struct.network** %net.addr, l65 c5
  (w64 0x81DE172F37E9C697)
Collected value for `net`
  Assignment asm ln 1406, prod ln 66.5, live ln 67, enc 17
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) __fopen.arg0.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %35 = load %struct.network*, %struct.network** %net.addr, l66 c5
  (w64 0x81DE172F37E9C697)
KLEE: HaltTimer invoked
[0mKLEE: halting execution, dumping remaining states
[0m
🔔 Unable to execute all before instructions

🔔 Unable to execute all before program states

#### After values

Collected value for `net`
  Assignment asm ln 1019, prod ln 27.0, live ln 41, enc 0
  Concrete pointer resolves to read_min.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) read_min.net.deref)
  Replaced concrete pointer with hash (w64 0x81DE172F37E9C697)
  %struct.network.2* %net
  (w64 0x81DE172F37E9C697)
Collected value for `in`
  Assignment asm ln 1020, prod ln 33.0, live ln 41, enc 0
  %struct.__sFILE.5* null
  (w64 0x0)
Collected value for `actArc`
  Assignment asm ln 1025, prod ln 36.0, live ln 41, enc 0
  i64 0
  (w64 0x0)
Collected value for `in`
  Assignment asm ln 1029, prod ln 41.15, live ln 42, enc 1
  Concrete pointer resolves to _fopen.return.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x9297D9A77A217663)
  %call = call %struct.__sFILE.5* @"\01_fopen"(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)), l41 c15
  (w64 0x9297D9A77A217663)
Collected value for `t`
  Assignment asm ln 1042, prod ln 53.20, live ln 54, enc 0
  %0 = load i64, i64* %t, l53 c20
  (w64 0xABABABABABABABAB)
Collected value for `h`
  Assignment asm ln 1045, prod ln 54.18, live ln 55, enc 0
  %1 = load i64, i64* %h, l54 c18
  (w64 0xABABABABABABABAB)
Collected value for `t`
  Assignment asm ln 1048, prod ln 55.15, live ln 56, enc 1
  %2 = load i64, i64* %t, l55 c15
  (w64 0xABABABABABABABAB)
Collected value for `t`
  Assignment asm ln 1049, prod ln 55.17, live ln 56, enc 2
  %3 = load i64, i64* %t, l55 c17
  (w64 0xABABABABABABABAB)
Collected value for `t`
  Assignment asm ln 1054, prod ln 56.15, live ln 57, enc 3
  %4 = load i64, i64* %t, l56 c15
  (w64 0xABABABABABABABAB)
Collected value for `t`
  Assignment asm ln 1055, prod ln 56.17, live ln 57, enc 4
  %5 = load i64, i64* %t, l56 c17
  (w64 0xABABABABABABABAB)
Collected value for `t`
  Assignment asm ln 1057, prod ln 56.19, live ln 57, enc 5
  %6 = load i64, i64* %t, l56 c19
  (w64 0xABABABABABABABAB)
Collected value for `h`
  Assignment asm ln 1059, prod ln 56.21, live ln 57, enc 1
  %7 = load i64, i64* %h, l56 c21
  (w64 0xABABABABABABABAB)
KLEE: HaltTimer invoked
[0mKLEE: halting execution, dumping remaining states
[0m
🔔 Unable to execute all after instructions

🔔 Unable to execute all after program states

### Assignments

#### Variables with single memory location

✅ Variable `c` uses only a single memory location (via `dbg.declare`), skipping further checks
Assignments:         c
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true

✅ Variable `h` uses only a single memory location (via `dbg.declare`), skipping further checks
Assignments:         h
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true

✅ Variable `t` uses only a single memory location (via `dbg.declare`), skipping further checks
Assignments:         t
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true

#### Collation

Filtering before assignments: `actArc` (decl src ln 36)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 2000, prod ln 181.76, live ln 182, enc None
  %266 = load i64, i64* %actArc, l181 c76
and
  assn asm ln 2002, prod ln 181.76, live ln 182, enc None
  %inc241 = add nsw i64 %266, 1, l181 c76
🔔 Removing: asm ln 2000, prod ln 181.76, live ln 182, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1936, prod ln 192.19, live ln 193, enc None
  %234 = load i64, i64* %actArc, l192 c19
and
  assn asm ln 2002, prod ln 181.76, live ln 182, enc None
  %inc241 = add nsw i64 %266, 1, l181 c76
🔔 Removing: asm ln 1936, prod ln 192.19, live ln 193, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1888, prod ln 174.47, live ln 175, enc None
  %inc195 = add nsw i64 %225, 1, l174 c47
and
  assn asm ln 2002, prod ln 181.76, live ln 182, enc None
  %inc241 = add nsw i64 %266, 1, l181 c76
🔔 Removing: asm ln 1888, prod ln 174.47, live ln 175, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1886, prod ln 174.47, live ln 175, enc None
  %225 = load i64, i64* %actArc, l174 c47
and
  assn asm ln 2002, prod ln 181.76, live ln 182, enc None
  %inc241 = add nsw i64 %266, 1, l181 c76
🔔 Removing: asm ln 1886, prod ln 174.47, live ln 175, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1812, prod ln 166.19, live ln 167, enc None
  %192 = load i64, i64* %actArc, l166 c19
and
  assn asm ln 2002, prod ln 181.76, live ln 182, enc None
  %inc241 = add nsw i64 %266, 1, l181 c76
🔔 Removing: asm ln 1812, prod ln 166.19, live ln 167, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1808, prod ln 164.47, live ln 165, enc None
  %inc162 = add nsw i64 %191, 1, l164 c47
and
  assn asm ln 2002, prod ln 181.76, live ln 182, enc None
  %inc241 = add nsw i64 %266, 1, l181 c76
🔔 Removing: asm ln 1808, prod ln 164.47, live ln 165, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1806, prod ln 164.47, live ln 165, enc None
  %191 = load i64, i64* %actArc, l164 c47
and
  assn asm ln 2002, prod ln 181.76, live ln 182, enc None
  %inc241 = add nsw i64 %266, 1, l181 c76
🔔 Removing: asm ln 1806, prod ln 164.47, live ln 165, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1745, prod ln 156.19, live ln 157, enc None
  %161 = load i64, i64* %actArc, l156 c19
and
  assn asm ln 2002, prod ln 181.76, live ln 182, enc None
  %inc241 = add nsw i64 %266, 1, l181 c76
🔔 Removing: asm ln 1745, prod ln 156.19, live ln 157, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1741, prod ln 154.47, live ln 155, enc None
  %inc = add nsw i64 %160, 1, l154 c47
and
  assn asm ln 2002, prod ln 181.76, live ln 182, enc None
  %inc241 = add nsw i64 %266, 1, l181 c76
🔔 Removing: asm ln 1741, prod ln 154.47, live ln 155, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1739, prod ln 154.47, live ln 155, enc None
  %160 = load i64, i64* %actArc, l154 c47
and
  assn asm ln 2002, prod ln 181.76, live ln 182, enc None
  %inc241 = add nsw i64 %266, 1, l181 c76
🔔 Removing: asm ln 1739, prod ln 154.47, live ln 155, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1678, prod ln 146.19, live ln 147, enc None
  %130 = load i64, i64* %actArc, l146 c19
and
  assn asm ln 2002, prod ln 181.76, live ln 182, enc None
  %inc241 = add nsw i64 %266, 1, l181 c76
🔔 Removing: asm ln 1678, prod ln 146.19, live ln 147, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1288, prod ln 36.13, live ln 41, enc 0
  i64 0
and
  assn asm ln 2002, prod ln 181.76, live ln 182, enc None
  %inc241 = add nsw i64 %266, 1, l181 c76

Filtering before assignments: `arc` (decl src ln 37)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 2106, prod ln 229.7, live ln 230, enc None
  %299 = load %struct.arc*, %struct.arc** %arc, l229 c7
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 2106, prod ln 229.7, live ln 230, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 2090, prod ln 228.23, live ln 230, enc None
  %add.ptr276 = getelementptr inbounds %struct.arc, %struct.arc* %292, i64 %call275, l228 c23
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 2090, prod ln 228.23, live ln 230, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 2050, prod ln 208.51, live ln 209, enc None
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %282, i32 1, l208 c51
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 2050, prod ln 208.51, live ln 209, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 2048, prod ln 208.51, live ln 209, enc None
  %282 = load %struct.arc*, %struct.arc** %arc, l208 c51
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 2048, prod ln 208.51, live ln 209, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 2035, prod ln 208.26, live ln 209, enc None
  %277 = load %struct.arc*, %struct.arc** %arc, l208 c26
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 2035, prod ln 208.26, live ln 209, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 2028, prod ln 207.20, live ln 208, enc None
  %275 = load %struct.arc*, %struct.arc** %arcs251, l207 c20
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 2028, prod ln 207.20, live ln 208, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 2021, prod ln 206.26, live ln 207, enc None
  %272 = load %struct.arc*, %struct.arc** %arc, l206 c26
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 2021, prod ln 206.26, live ln 207, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 2016, prod ln 204.27, live ln 205, enc None
  %271 = load %struct.arc*, %struct.arc** %arc, l204 c27
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 2016, prod ln 204.27, live ln 205, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 2012, prod ln 202.16, live ln 204, enc None
  %268 = load %struct.arc*, %struct.arc** %stop_arcs245, l202 c16
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 2012, prod ln 202.16, live ln 204, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 2005, prod ln 181.54, live ln 182, enc None
  %add.ptr243 = getelementptr inbounds %struct.arc, %struct.arc* %264, i64 %call242, l181 c54
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 2005, prod ln 181.54, live ln 182, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1988, prod ln 200.9, live ln 201, enc None
  %260 = load %struct.arc*, %struct.arc** %arc, l200 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1988, prod ln 200.9, live ln 201, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1987, prod ln 200.30, live ln 201, enc None
  %259 = load %struct.arc*, %struct.arc** %arc, l200 c30
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1987, prod ln 200.30, live ln 201, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1984, prod ln 199.9, live ln 200, enc None
  %258 = load %struct.arc*, %struct.arc** %arc, l199 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1984, prod ln 199.9, live ln 200, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1979, prod ln 199.23, live ln 200, enc None
  %255 = load %struct.arc*, %struct.arc** %arc, l199 c23
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1979, prod ln 199.23, live ln 200, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1974, prod ln 198.9, live ln 199, enc None
  %253 = load %struct.arc*, %struct.arc** %arc, l198 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1974, prod ln 198.9, live ln 199, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1973, prod ln 198.31, live ln 199, enc None
  %252 = load %struct.arc*, %struct.arc** %arc, l198 c31
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1973, prod ln 198.31, live ln 199, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1970, prod ln 197.9, live ln 198, enc None
  %251 = load %struct.arc*, %struct.arc** %arc, l197 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1970, prod ln 197.9, live ln 198, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1965, prod ln 197.24, live ln 198, enc None
  %248 = load %struct.arc*, %struct.arc** %arc, l197 c24
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1965, prod ln 197.24, live ln 198, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1962, prod ln 196.9, live ln 197, enc None
  %247 = load %struct.arc*, %struct.arc** %arc, l196 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1962, prod ln 196.9, live ln 197, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1958, prod ln 195.9, live ln 196, enc None
  %245 = load %struct.arc*, %struct.arc** %arc, l195 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1958, prod ln 195.9, live ln 196, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1954, prod ln 194.9, live ln 195, enc None
  %243 = load %struct.arc*, %struct.arc** %arc, l194 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1954, prod ln 194.9, live ln 195, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1948, prod ln 193.9, live ln 194, enc None
  %240 = load %struct.arc*, %struct.arc** %arc, l193 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1948, prod ln 193.9, live ln 194, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1938, prod ln 192.9, live ln 193, enc None
  %235 = load %struct.arc*, %struct.arc** %arc, l192 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1938, prod ln 192.9, live ln 193, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1891, prod ln 174.25, live ln 175, enc None
  %add.ptr197 = getelementptr inbounds %struct.arc, %struct.arc* %223, i64 %call196, l174 c25
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1891, prod ln 174.25, live ln 175, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1877, prod ln 173.9, live ln 174, enc None
  %220 = load %struct.arc*, %struct.arc** %arc, l173 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1877, prod ln 173.9, live ln 174, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1876, prod ln 173.30, live ln 174, enc None
  %219 = load %struct.arc*, %struct.arc** %arc, l173 c30
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1876, prod ln 173.30, live ln 174, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1873, prod ln 172.9, live ln 173, enc None
  %218 = load %struct.arc*, %struct.arc** %arc, l172 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1873, prod ln 172.9, live ln 173, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1868, prod ln 172.23, live ln 173, enc None
  %215 = load %struct.arc*, %struct.arc** %arc, l172 c23
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1868, prod ln 172.23, live ln 173, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1863, prod ln 171.9, live ln 172, enc None
  %213 = load %struct.arc*, %struct.arc** %arc, l171 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1863, prod ln 171.9, live ln 172, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1862, prod ln 171.31, live ln 172, enc None
  %212 = load %struct.arc*, %struct.arc** %arc, l171 c31
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1862, prod ln 171.31, live ln 172, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1859, prod ln 170.9, live ln 171, enc None
  %211 = load %struct.arc*, %struct.arc** %arc, l170 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1859, prod ln 170.9, live ln 171, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1854, prod ln 170.24, live ln 171, enc None
  %208 = load %struct.arc*, %struct.arc** %arc, l170 c24
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1854, prod ln 170.24, live ln 171, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1851, prod ln 169.9, live ln 170, enc None
  %207 = load %struct.arc*, %struct.arc** %arc, l169 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1851, prod ln 169.9, live ln 170, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1848, prod ln 169.25, live ln 170, enc None
  %206 = load %struct.arc*, %struct.arc** %arc, l169 c25
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1848, prod ln 169.25, live ln 170, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1830, prod ln 168.9, live ln 169, enc None
  %201 = load %struct.arc*, %struct.arc** %arc, l168 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1830, prod ln 168.9, live ln 169, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1820, prod ln 167.9, live ln 168, enc None
  %196 = load %struct.arc*, %struct.arc** %arc, l167 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1820, prod ln 167.9, live ln 168, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1814, prod ln 166.9, live ln 167, enc None
  %193 = load %struct.arc*, %struct.arc** %arc, l166 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1814, prod ln 166.9, live ln 167, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1811, prod ln 164.25, live ln 166, enc None
  %add.ptr164 = getelementptr inbounds %struct.arc, %struct.arc* %189, i64 %call163, l164 c25
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1811, prod ln 164.25, live ln 166, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1797, prod ln 163.9, live ln 164, enc None
  %186 = load %struct.arc*, %struct.arc** %arc, l163 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1797, prod ln 163.9, live ln 164, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1796, prod ln 163.30, live ln 164, enc None
  %185 = load %struct.arc*, %struct.arc** %arc, l163 c30
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1796, prod ln 163.30, live ln 164, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1793, prod ln 162.9, live ln 163, enc None
  %184 = load %struct.arc*, %struct.arc** %arc, l162 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1793, prod ln 162.9, live ln 163, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1788, prod ln 162.23, live ln 163, enc None
  %181 = load %struct.arc*, %struct.arc** %arc, l162 c23
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1788, prod ln 162.23, live ln 163, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1783, prod ln 161.9, live ln 162, enc None
  %179 = load %struct.arc*, %struct.arc** %arc, l161 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1783, prod ln 161.9, live ln 162, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1782, prod ln 161.31, live ln 162, enc None
  %178 = load %struct.arc*, %struct.arc** %arc, l161 c31
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1782, prod ln 161.31, live ln 162, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1779, prod ln 160.9, live ln 161, enc None
  %177 = load %struct.arc*, %struct.arc** %arc, l160 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1779, prod ln 160.9, live ln 161, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1774, prod ln 160.24, live ln 161, enc None
  %174 = load %struct.arc*, %struct.arc** %arc, l160 c24
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1774, prod ln 160.24, live ln 161, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1771, prod ln 159.9, live ln 160, enc None
  %173 = load %struct.arc*, %struct.arc** %arc, l159 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1771, prod ln 159.9, live ln 160, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1768, prod ln 159.25, live ln 160, enc None
  %172 = load %struct.arc*, %struct.arc** %arc, l159 c25
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1768, prod ln 159.25, live ln 160, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1765, prod ln 158.9, live ln 159, enc None
  %171 = load %struct.arc*, %struct.arc** %arc, l158 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1765, prod ln 158.9, live ln 159, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1757, prod ln 157.9, live ln 158, enc None
  %167 = load %struct.arc*, %struct.arc** %arc, l157 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1757, prod ln 157.9, live ln 158, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1747, prod ln 156.9, live ln 157, enc None
  %162 = load %struct.arc*, %struct.arc** %arc, l156 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1747, prod ln 156.9, live ln 157, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1744, prod ln 154.25, live ln 156, enc None
  %add.ptr139 = getelementptr inbounds %struct.arc, %struct.arc* %158, i64 %call138, l154 c25
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1744, prod ln 154.25, live ln 156, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1730, prod ln 153.9, live ln 154, enc None
  %155 = load %struct.arc*, %struct.arc** %arc, l153 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1730, prod ln 153.9, live ln 154, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1729, prod ln 153.30, live ln 154, enc None
  %154 = load %struct.arc*, %struct.arc** %arc, l153 c30
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1729, prod ln 153.30, live ln 154, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1726, prod ln 152.9, live ln 153, enc None
  %153 = load %struct.arc*, %struct.arc** %arc, l152 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1726, prod ln 152.9, live ln 153, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1721, prod ln 152.23, live ln 153, enc None
  %150 = load %struct.arc*, %struct.arc** %arc, l152 c23
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1721, prod ln 152.23, live ln 153, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1716, prod ln 151.9, live ln 152, enc None
  %148 = load %struct.arc*, %struct.arc** %arc, l151 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1716, prod ln 151.9, live ln 152, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1715, prod ln 151.31, live ln 152, enc None
  %147 = load %struct.arc*, %struct.arc** %arc, l151 c31
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1715, prod ln 151.31, live ln 152, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1712, prod ln 150.9, live ln 151, enc None
  %146 = load %struct.arc*, %struct.arc** %arc, l150 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1712, prod ln 150.9, live ln 151, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1707, prod ln 150.24, live ln 151, enc None
  %143 = load %struct.arc*, %struct.arc** %arc, l150 c24
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1707, prod ln 150.24, live ln 151, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1704, prod ln 149.9, live ln 150, enc None
  %142 = load %struct.arc*, %struct.arc** %arc, l149 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1704, prod ln 149.9, live ln 150, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1701, prod ln 149.25, live ln 150, enc None
  %141 = load %struct.arc*, %struct.arc** %arc, l149 c25
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1701, prod ln 149.25, live ln 150, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1694, prod ln 148.9, live ln 149, enc None
  %138 = load %struct.arc*, %struct.arc** %arc, l148 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1694, prod ln 148.9, live ln 149, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1688, prod ln 147.9, live ln 148, enc None
  %135 = load %struct.arc*, %struct.arc** %arc, l147 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1688, prod ln 147.9, live ln 148, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1680, prod ln 146.9, live ln 147, enc None
  %131 = load %struct.arc*, %struct.arc** %arc, l146 c9
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1680, prod ln 146.9, live ln 147, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1595, prod ln 125.16, live ln 127, enc None
  %101 = load %struct.arc*, %struct.arc** %arcs93, l125 c16
and
  assn asm ln 2124, prod ln 231.7, live ln 232, enc None
  %304 = load %struct.arc*, %struct.arc** %arc, l231 c7
🔔 Removing: asm ln 1595, prod ln 125.16, live ln 127, enc None

Filtering before assignments: `i` (decl src ln 36)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 2127, prod ln 226.37, live ln 227, enc None
  %305 = load i64, i64* %i, l226 c37
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 2127, prod ln 226.37, live ln 227, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 2085, prod ln 228.49, live ln 229, enc None
  %294 = load i64, i64* %i, l228 c49
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 2085, prod ln 228.49, live ln 229, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 2073, prod ln 226.17, live ln 227, enc None
  %288 = load i64, i64* %i, l226 c17
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 2073, prod ln 226.17, live ln 227, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 2069, prod ln 226.12, live ln 227, enc None
  i64 1
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 2069, prod ln 226.12, live ln 227, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1995, prod ln 181.34, live ln 182, enc None
  %inc239 = add nsw i64 %262, 1, l181 c34
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1995, prod ln 181.34, live ln 182, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1993, prod ln 181.34, live ln 182, enc None
  %262 = load i64, i64* %i, l181 c34
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1993, prod ln 181.34, live ln 182, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1915, prod ln 181.17, live ln 182, enc None
  %230 = load i64, i64* %i, l181 c17
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1915, prod ln 181.17, live ln 182, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1911, prod ln 181.12, live ln 182, enc None
  i64 0
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1911, prod ln 181.12, live ln 182, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1898, prod ln 177.9, live ln 178, enc None
  %227 = load i64, i64* %i, l177 c9
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1898, prod ln 177.9, live ln 178, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1894, prod ln 127.37, live ln 128, enc None
  %inc198 = add nsw i64 %226, 1, l127 c37
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1894, prod ln 127.37, live ln 128, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1892, prod ln 127.37, live ln 128, enc None
  %226 = load i64, i64* %i, l127 c37
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1892, prod ln 127.37, live ln 128, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1824, prod ln 168.28, live ln 169, enc None
  %198 = load i64, i64* %i, l168 c28
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1824, prod ln 168.28, live ln 169, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1818, prod ln 167.28, live ln 168, enc None
  %195 = load i64, i64* %i, l167 c28
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1818, prod ln 167.28, live ln 168, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1751, prod ln 157.28, live ln 158, enc None
  %164 = load i64, i64* %i, l157 c28
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1751, prod ln 157.28, live ln 158, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1692, prod ln 148.28, live ln 149, enc None
  %137 = load i64, i64* %i, l148 c28
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1692, prod ln 148.28, live ln 149, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1670, prod ln 144.14, live ln 145, enc None
  %127 = load i64, i64* %i, l144 c14
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1670, prod ln 144.14, live ln 145, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1663, prod ln 143.14, live ln 144, enc None
  %124 = load i64, i64* %i, l143 c14
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1663, prod ln 143.14, live ln 144, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1652, prod ln 141.14, live ln 142, enc None
  %119 = load i64, i64* %i, l141 c14
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1652, prod ln 141.14, live ln 142, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1643, prod ln 140.14, live ln 141, enc None
  %115 = load i64, i64* %i, l140 c14
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1643, prod ln 140.14, live ln 141, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1640, prod ln 140.39, live ln 141, enc None
  %113 = load i64, i64* %i, l140 c39
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1640, prod ln 140.39, live ln 141, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1636, prod ln 138.14, live ln 139, enc None
  %112 = load i64, i64* %i, l138 c14
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1636, prod ln 138.14, live ln 139, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1631, prod ln 137.14, live ln 138, enc None
  %110 = load i64, i64* %i, l137 c14
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1631, prod ln 137.14, live ln 138, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1627, prod ln 137.27, live ln 138, enc None
  %108 = load i64, i64* %i, l137 c27
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1627, prod ln 137.27, live ln 138, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1600, prod ln 127.17, live ln 128, enc None
  %102 = load i64, i64* %i, l127 c17
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1600, prod ln 127.17, live ln 128, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1596, prod ln 127.12, live ln 128, enc None
  i64 1
and
  assn asm ln 2129, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %305, 1, l226 c37
🔔 Removing: asm ln 1596, prod ln 127.12, live ln 128, enc None

Filtering before assignments: `in` (decl src ln 33)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `in` (decl src ln 33) from
  assn asm ln 1924, prod ln 183.31, live ln 184, enc None
  %233 = load %struct.__sFILE*, %struct.__sFILE** %in, l183 c31
and
  assn asm ln 2063, prod ln 213.13, live ln 214, enc None
  %286 = load %struct.__sFILE*, %struct.__sFILE** %in, l213 c13
🔔 Removing: asm ln 1924, prod ln 183.31, live ln 184, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `in` (decl src ln 33) from
  assn asm ln 1609, prod ln 129.31, live ln 130, enc None
  %105 = load %struct.__sFILE*, %struct.__sFILE** %in, l129 c31
and
  assn asm ln 2063, prod ln 213.13, live ln 214, enc None
  %286 = load %struct.__sFILE*, %struct.__sFILE** %in, l213 c13
🔔 Removing: asm ln 1609, prod ln 129.31, live ln 130, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `in` (decl src ln 33) from
  assn asm ln 1281, prod ln 33.11, live ln 36, enc 0
  %struct.__sFILE* null
and
  assn asm ln 2063, prod ln 213.13, live ln 214, enc None
  %286 = load %struct.__sFILE*, %struct.__sFILE** %in, l213 c13

Checking equivalence of `in` (decl src ln 33) from
  assn asm ln 1295, prod ln 41.15, live ln 42, enc 1
  %call = call %struct.__sFILE* @"\01_fopen"(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)), l41 c15
  (w64 0x9297D9A77A217663)
and
  assn asm ln 1281, prod ln 33.11, live ln 36, enc 0
  %struct.__sFILE* null
  (w64 0x0)

Checking equivalence of `in` (decl src ln 33) from
  assn asm ln 1305, prod ln 44.27, live ln 45, enc 2
  %1 = load %struct.__sFILE*, %struct.__sFILE** %in, l44 c27
  (w64 0x9297D9A77A217663)
and
  assn asm ln 1295, prod ln 41.15, live ln 42, enc 1
  %call = call %struct.__sFILE* @"\01_fopen"(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)), l41 c15
  (w64 0x9297D9A77A217663)
🔔 Removing: asm ln 1305, prod ln 44.27, live ln 45, enc 2

Filtering before assignments: `net` (decl src ln 27)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 2109, prod ln 232.32, live ln 233, enc None
  %300 = load %struct.network*, %struct.network** %net.addr, l232 c32
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 2109, prod ln 232.32, live ln 233, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 2098, prod ln 230.31, live ln 231, enc None
  %297 = load %struct.network*, %struct.network** %net.addr, l230 c31
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 2098, prod ln 230.31, live ln 231, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 2091, prod ln 230.31, live ln 231, enc None
  %295 = load %struct.network*, %struct.network** %net.addr, l230 c31
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 2091, prod ln 230.31, live ln 231, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 2084, prod ln 228.40, live ln 229, enc None
  %293 = load %struct.network*, %struct.network** %net.addr, l228 c40
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 2084, prod ln 228.40, live ln 229, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 2081, prod ln 228.13, live ln 229, enc None
  %291 = load %struct.network*, %struct.network** %net.addr, l228 c13
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 2081, prod ln 228.13, live ln 229, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 2074, prod ln 226.22, live ln 227, enc None
  %289 = load %struct.network*, %struct.network** %net.addr, l226 c22
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 2074, prod ln 226.22, live ln 227, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 2065, prod ln 225.5, live ln 226, enc None
  %287 = load %struct.network*, %struct.network** %net.addr, l225 c5
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 2065, prod ln 225.5, live ln 226, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 2057, prod ln 210.9, live ln 211, enc None
  %285 = load %struct.network*, %struct.network** %net.addr, l210 c9
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 2057, prod ln 210.9, live ln 211, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 2054, prod ln 210.22, live ln 211, enc None
  %283 = load %struct.network*, %struct.network** %net.addr, l210 c22
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 2054, prod ln 210.22, live ln 211, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 2043, prod ln 209.14, live ln 210, enc None
  %280 = load %struct.network*, %struct.network** %net.addr, l209 c14
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 2043, prod ln 209.14, live ln 210, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 2036, prod ln 208.32, live ln 209, enc None
  %278 = load %struct.network*, %struct.network** %net.addr, l208 c32
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 2036, prod ln 208.32, live ln 209, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 2029, prod ln 208.14, live ln 209, enc None
  %276 = load %struct.network*, %struct.network** %net.addr, l208 c14
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 2029, prod ln 208.14, live ln 209, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 2025, prod ln 207.15, live ln 208, enc None
  %274 = load %struct.network*, %struct.network** %net.addr, l207 c15
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 2025, prod ln 207.15, live ln 208, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 2022, prod ln 206.9, live ln 207, enc None
  %273 = load %struct.network*, %struct.network** %net.addr, l206 c9
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 2022, prod ln 206.9, live ln 207, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 2013, prod ln 204.9, live ln 205, enc None
  %269 = load %struct.network*, %struct.network** %net.addr, l204 c9
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 2013, prod ln 204.9, live ln 205, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 2009, prod ln 202.11, live ln 203, enc None
  %267 = load %struct.network*, %struct.network** %net.addr, l202 c11
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 2009, prod ln 202.11, live ln 203, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1999, prod ln 181.71, live ln 182, enc None
  %265 = load %struct.network*, %struct.network** %net.addr, l181 c71
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1999, prod ln 181.71, live ln 182, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1996, prod ln 181.44, live ln 182, enc None
  %263 = load %struct.network*, %struct.network** %net.addr, l181 c44
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1996, prod ln 181.44, live ln 182, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1943, prod ln 193.30, live ln 194, enc None
  %238 = load %struct.network*, %struct.network** %net.addr, l193 c30
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1943, prod ln 193.30, live ln 194, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1916, prod ln 181.21, live ln 182, enc None
  %231 = load %struct.network*, %struct.network** %net.addr, l181 c21
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1916, prod ln 181.21, live ln 182, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1899, prod ln 177.14, live ln 178, enc None
  %228 = load %struct.network*, %struct.network** %net.addr, l177 c14
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1899, prod ln 177.14, live ln 178, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1885, prod ln 174.42, live ln 175, enc None
  %224 = load %struct.network*, %struct.network** %net.addr, l174 c42
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1885, prod ln 174.42, live ln 175, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1882, prod ln 174.15, live ln 175, enc None
  %222 = load %struct.network*, %struct.network** %net.addr, l174 c15
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1882, prod ln 174.15, live ln 175, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1840, prod ln 169.48, live ln 170, enc None
  %204 = load %struct.network*, %struct.network** %net.addr, l169 c48
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1840, prod ln 169.48, live ln 170, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1833, prod ln 169.48, live ln 170, enc None
  %202 = load %struct.network*, %struct.network** %net.addr, l169 c48
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1833, prod ln 169.48, live ln 170, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1825, prod ln 168.30, live ln 169, enc None
  %199 = load %struct.network*, %struct.network** %net.addr, l168 c30
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1825, prod ln 168.30, live ln 169, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1805, prod ln 164.42, live ln 165, enc None
  %190 = load %struct.network*, %struct.network** %net.addr, l164 c42
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1805, prod ln 164.42, live ln 165, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1802, prod ln 164.15, live ln 165, enc None
  %188 = load %struct.network*, %struct.network** %net.addr, l164 c15
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1802, prod ln 164.15, live ln 165, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1761, prod ln 158.28, live ln 159, enc None
  %169 = load %struct.network*, %struct.network** %net.addr, l158 c28
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1761, prod ln 158.28, live ln 159, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1752, prod ln 157.30, live ln 158, enc None
  %165 = load %struct.network*, %struct.network** %net.addr, l157 c30
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1752, prod ln 157.30, live ln 158, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1738, prod ln 154.42, live ln 155, enc None
  %159 = load %struct.network*, %struct.network** %net.addr, l154 c42
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1738, prod ln 154.42, live ln 155, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1735, prod ln 154.15, live ln 155, enc None
  %157 = load %struct.network*, %struct.network** %net.addr, l154 c15
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1735, prod ln 154.15, live ln 155, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1697, prod ln 149.46, live ln 150, enc None
  %139 = load %struct.network*, %struct.network** %net.addr, l149 c46
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1697, prod ln 149.46, live ln 150, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1684, prod ln 147.28, live ln 148, enc None
  %133 = load %struct.network*, %struct.network** %net.addr, l147 c28
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1684, prod ln 147.28, live ln 148, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1671, prod ln 144.16, live ln 145, enc None
  %128 = load %struct.network*, %struct.network** %net.addr, l144 c16
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1671, prod ln 144.16, live ln 145, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1653, prod ln 141.16, live ln 142, enc None
  %120 = load %struct.network*, %struct.network** %net.addr, l141 c16
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1653, prod ln 141.16, live ln 142, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1644, prod ln 140.16, live ln 141, enc None
  %116 = load %struct.network*, %struct.network** %net.addr, l140 c16
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1644, prod ln 140.16, live ln 141, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1601, prod ln 127.22, live ln 128, enc None
  %103 = load %struct.network*, %struct.network** %net.addr, l127 c22
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1601, prod ln 127.22, live ln 128, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1592, prod ln 125.11, live ln 126, enc None
  %100 = load %struct.network*, %struct.network** %net.addr, l125 c11
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1592, prod ln 125.11, live ln 126, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1588, prod ln 124.12, live ln 125, enc None
  %98 = load %struct.network*, %struct.network** %net.addr, l124 c12
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1588, prod ln 124.12, live ln 125, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1585, prod ln 120.5, live ln 121, enc None
  %97 = load %struct.network*, %struct.network** %net.addr, l120 c5
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1585, prod ln 120.5, live ln 121, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1581, prod ln 120.41, live ln 121, enc None
  %95 = load %struct.network*, %struct.network** %net.addr, l120 c41
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1581, prod ln 120.41, live ln 121, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1578, prod ln 120.23, live ln 121, enc None
  %93 = load %struct.network*, %struct.network** %net.addr, l120 c23
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1578, prod ln 120.23, live ln 121, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1575, prod ln 119.5, live ln 120, enc None
  %92 = load %struct.network*, %struct.network** %net.addr, l119 c5
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1575, prod ln 119.5, live ln 120, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1571, prod ln 119.35, live ln 120, enc None
  %90 = load %struct.network*, %struct.network** %net.addr, l119 c35
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1571, prod ln 119.35, live ln 120, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1568, prod ln 119.23, live ln 120, enc None
  %88 = load %struct.network*, %struct.network** %net.addr, l119 c23
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1568, prod ln 119.23, live ln 120, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1565, prod ln 118.5, live ln 119, enc None
  %87 = load %struct.network*, %struct.network** %net.addr, l118 c5
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1565, prod ln 118.5, live ln 119, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1560, prod ln 118.36, live ln 119, enc None
  %85 = load %struct.network*, %struct.network** %net.addr, l118 c36
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1560, prod ln 118.36, live ln 119, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1557, prod ln 118.23, live ln 119, enc None
  %83 = load %struct.network*, %struct.network** %net.addr, l118 c23
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1557, prod ln 118.23, live ln 119, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1551, prod ln 95.16, live ln 96, enc None
  %82 = load %struct.network*, %struct.network** %net.addr, l95 c16
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1551, prod ln 95.16, live ln 96, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1543, prod ln 92.58, live ln 93, enc None
  %80 = load %struct.network*, %struct.network** %net.addr, l92 c58
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1543, prod ln 92.58, live ln 93, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1536, prod ln 92.39, live ln 93, enc None
  %78 = load %struct.network*, %struct.network** %net.addr, l92 c39
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1536, prod ln 92.39, live ln 93, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1529, prod ln 92.26, live ln 93, enc None
  %76 = load %struct.network*, %struct.network** %net.addr, l92 c26
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1529, prod ln 92.26, live ln 93, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1522, prod ln 92.12, live ln 93, enc None
  %74 = load %struct.network*, %struct.network** %net.addr, l92 c12
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1522, prod ln 92.12, live ln 93, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1519, prod ln 90.5, live ln 91, enc None
  %73 = load %struct.network*, %struct.network** %net.addr, l90 c5
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1519, prod ln 90.5, live ln 91, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1514, prod ln 90.42, live ln 91, enc None
  %70 = load %struct.network*, %struct.network** %net.addr, l90 c42
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1514, prod ln 90.42, live ln 91, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1511, prod ln 89.5, live ln 90, enc None
  %69 = load %struct.network*, %struct.network** %net.addr, l89 c5
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1511, prod ln 89.5, live ln 90, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1506, prod ln 89.44, live ln 90, enc None
  %66 = load %struct.network*, %struct.network** %net.addr, l89 c44
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1506, prod ln 89.44, live ln 90, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1503, prod ln 88.5, live ln 89, enc None
  %65 = load %struct.network*, %struct.network** %net.addr, l88 c5
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1503, prod ln 88.5, live ln 89, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1498, prod ln 88.42, live ln 89, enc None
  %62 = load %struct.network*, %struct.network** %net.addr, l88 c42
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1498, prod ln 88.42, live ln 89, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1495, prod ln 87.5, live ln 88, enc None
  %61 = load %struct.network*, %struct.network** %net.addr, l87 c5
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1495, prod ln 87.5, live ln 88, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1489, prod ln 87.42, live ln 88, enc None
  %58 = load %struct.network*, %struct.network** %net.addr, l87 c42
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1489, prod ln 87.42, live ln 88, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1483, prod ln 79.7, live ln 80, enc None
  %57 = load %struct.network*, %struct.network** %net.addr, l79 c7
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1483, prod ln 79.7, live ln 80, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1480, prod ln 78.7, live ln 79, enc None
  %56 = load %struct.network*, %struct.network** %net.addr, l78 c7
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1480, prod ln 78.7, live ln 79, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1467, prod ln 78.20, live ln 79, enc None
  %54 = load %struct.network*, %struct.network** %net.addr, l78 c20
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1467, prod ln 78.20, live ln 79, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1460, prod ln 78.20, live ln 79, enc None
  %52 = load %struct.network*, %struct.network** %net.addr, l78 c20
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1460, prod ln 78.20, live ln 79, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1447, prod ln 78.20, live ln 79, enc None
  %50 = load %struct.network*, %struct.network** %net.addr, l78 c20
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1447, prod ln 78.20, live ln 79, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1443, prod ln 78.20, live ln 79, enc None
  %48 = load %struct.network*, %struct.network** %net.addr, l78 c20
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1443, prod ln 78.20, live ln 79, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1437, prod ln 73.7, live ln 74, enc None
  %47 = load %struct.network*, %struct.network** %net.addr, l73 c7
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1437, prod ln 73.7, live ln 74, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1433, prod ln 73.46, live ln 74, enc None
  %45 = load %struct.network*, %struct.network** %net.addr, l73 c46
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1433, prod ln 73.46, live ln 74, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1430, prod ln 73.33, live ln 74, enc None
  %43 = load %struct.network*, %struct.network** %net.addr, l73 c33
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1430, prod ln 73.33, live ln 74, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1427, prod ln 72.7, live ln 73, enc None
  %42 = load %struct.network*, %struct.network** %net.addr, l72 c7
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1427, prod ln 72.7, live ln 73, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1424, prod ln 71.7, live ln 72, enc None
  %41 = load %struct.network*, %struct.network** %net.addr, l71 c7
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1424, prod ln 71.7, live ln 72, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1421, prod ln 71.20, live ln 72, enc None
  %39 = load %struct.network*, %struct.network** %net.addr, l71 c20
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1421, prod ln 71.20, live ln 72, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1414, prod ln 69.9, live ln 70, enc None
  %37 = load %struct.network*, %struct.network** %net.addr, l69 c9
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1414, prod ln 69.9, live ln 70, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1377, prod ln 63.25, live ln 64, enc None
  %25 = load %struct.network*, %struct.network** %net.addr, l63 c25
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1377, prod ln 63.25, live ln 64, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1380, prod ln 63.6, live ln 64, enc None
  %27 = load %struct.network*, %struct.network** %net.addr, l63 c6
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32
🔔 Removing: asm ln 1380, prod ln 63.6, live ln 64, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
and
  assn asm ln 2116, prod ln 232.32, live ln 233, enc None
  %302 = load %struct.network*, %struct.network** %net.addr, l232 c32

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1291, prod ln 41.22, live ln 42, enc 1
  %0 = load %struct.network*, %struct.network** %net.addr, l41 c22
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1291, prod ln 41.22, live ln 42, enc 1

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1318, prod ln 53.5, live ln 54, enc 2
  %3 = load %struct.network*, %struct.network** %net.addr, l53 c5
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1318, prod ln 53.5, live ln 54, enc 2

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1322, prod ln 54.5, live ln 55, enc 3
  %5 = load %struct.network*, %struct.network** %net.addr, l54 c5
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1322, prod ln 54.5, live ln 55, enc 3

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1329, prod ln 55.5, live ln 56, enc 4
  %8 = load %struct.network*, %struct.network** %net.addr, l55 c5
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1329, prod ln 55.5, live ln 56, enc 4

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1339, prod ln 56.5, live ln 57, enc 5
  %13 = load %struct.network*, %struct.network** %net.addr, l56 c5
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1339, prod ln 56.5, live ln 57, enc 5

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1342, prod ln 58.5, live ln 59, enc 6
  %14 = load %struct.network*, %struct.network** %net.addr, l58 c5
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1342, prod ln 58.5, live ln 59, enc 6

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1345, prod ln 59.24, live ln 60, enc 7
  %15 = load %struct.network*, %struct.network** %net.addr, l59 c24
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1345, prod ln 59.24, live ln 60, enc 7

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1351, prod ln 59.5, live ln 60, enc 8
  %17 = load %struct.network*, %struct.network** %net.addr, l59 c5
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1351, prod ln 59.5, live ln 60, enc 8

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1354, prod ln 60.9, live ln 61, enc 9
  %18 = load %struct.network*, %struct.network** %net.addr, l60 c9
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1354, prod ln 60.9, live ln 61, enc 9

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1362, prod ln 61.28, live ln 62, enc 10
  %20 = load %struct.network*, %struct.network** %net.addr, l61 c28
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1362, prod ln 61.28, live ln 62, enc 10

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1365, prod ln 61.50, live ln 62, enc 11
  %22 = load %struct.network*, %struct.network** %net.addr, l61 c50
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1365, prod ln 61.50, live ln 62, enc 11

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1371, prod ln 61.9, live ln 62, enc 12
  %24 = load %struct.network*, %struct.network** %net.addr, l61 c9
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1371, prod ln 61.9, live ln 62, enc 12

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1389, prod ln 64.10, live ln 65, enc 13
  %28 = load %struct.network*, %struct.network** %net.addr, l64 c10
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1389, prod ln 64.10, live ln 65, enc 13

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1396, prod ln 65.24, live ln 66, enc 14
  %30 = load %struct.network*, %struct.network** %net.addr, l65 c24
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1396, prod ln 65.24, live ln 66, enc 14

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1399, prod ln 65.40, live ln 66, enc 15
  %32 = load %struct.network*, %struct.network** %net.addr, l65 c40
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1399, prod ln 65.40, live ln 66, enc 15

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1403, prod ln 65.5, live ln 66, enc 16
  %34 = load %struct.network*, %struct.network** %net.addr, l65 c5
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1403, prod ln 65.5, live ln 66, enc 16

Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1406, prod ln 66.5, live ln 67, enc 17
  %35 = load %struct.network*, %struct.network** %net.addr, l66 c5
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
🔔 Removing: asm ln 1406, prod ln 66.5, live ln 67, enc 17

Filtering before assignments: `node` (decl src ln 38)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 38) from
  assn asm ln 1941, prod ln 193.23, live ln 194, enc None
  %236 = load %struct.node*, %struct.node** %node, l193 c23
and
  assn asm ln 1951, prod ln 194.23, live ln 195, enc None
  %241 = load %struct.node*, %struct.node** %node, l194 c23
🔔 Removing: asm ln 1941, prod ln 193.23, live ln 194, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 38) from
  assn asm ln 1823, prod ln 168.23, live ln 169, enc None
  %197 = load %struct.node*, %struct.node** %node, l168 c23
and
  assn asm ln 1951, prod ln 194.23, live ln 195, enc None
  %241 = load %struct.node*, %struct.node** %node, l194 c23
🔔 Removing: asm ln 1823, prod ln 168.23, live ln 169, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 38) from
  assn asm ln 1817, prod ln 167.23, live ln 168, enc None
  %194 = load %struct.node*, %struct.node** %node, l167 c23
and
  assn asm ln 1951, prod ln 194.23, live ln 195, enc None
  %241 = load %struct.node*, %struct.node** %node, l194 c23
🔔 Removing: asm ln 1817, prod ln 167.23, live ln 168, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 38) from
  assn asm ln 1760, prod ln 158.23, live ln 159, enc None
  %168 = load %struct.node*, %struct.node** %node, l158 c23
and
  assn asm ln 1951, prod ln 194.23, live ln 195, enc None
  %241 = load %struct.node*, %struct.node** %node, l194 c23
🔔 Removing: asm ln 1760, prod ln 158.23, live ln 159, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 38) from
  assn asm ln 1750, prod ln 157.23, live ln 158, enc None
  %163 = load %struct.node*, %struct.node** %node, l157 c23
and
  assn asm ln 1951, prod ln 194.23, live ln 195, enc None
  %241 = load %struct.node*, %struct.node** %node, l194 c23
🔔 Removing: asm ln 1750, prod ln 157.23, live ln 158, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 38) from
  assn asm ln 1691, prod ln 148.23, live ln 149, enc None
  %136 = load %struct.node*, %struct.node** %node, l148 c23
and
  assn asm ln 1951, prod ln 194.23, live ln 195, enc None
  %241 = load %struct.node*, %struct.node** %node, l194 c23
🔔 Removing: asm ln 1691, prod ln 148.23, live ln 149, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 38) from
  assn asm ln 1683, prod ln 147.23, live ln 148, enc None
  %132 = load %struct.node*, %struct.node** %node, l147 c23
and
  assn asm ln 1951, prod ln 194.23, live ln 195, enc None
  %241 = load %struct.node*, %struct.node** %node, l194 c23
🔔 Removing: asm ln 1683, prod ln 147.23, live ln 148, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 38) from
  assn asm ln 1669, prod ln 144.9, live ln 145, enc None
  %126 = load %struct.node*, %struct.node** %node, l144 c9
and
  assn asm ln 1951, prod ln 194.23, live ln 195, enc None
  %241 = load %struct.node*, %struct.node** %node, l194 c23
🔔 Removing: asm ln 1669, prod ln 144.9, live ln 145, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 38) from
  assn asm ln 1662, prod ln 143.9, live ln 144, enc None
  %123 = load %struct.node*, %struct.node** %node, l143 c9
and
  assn asm ln 1951, prod ln 194.23, live ln 195, enc None
  %241 = load %struct.node*, %struct.node** %node, l194 c23
🔔 Removing: asm ln 1662, prod ln 143.9, live ln 144, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 38) from
  assn asm ln 1651, prod ln 141.9, live ln 142, enc None
  %118 = load %struct.node*, %struct.node** %node, l141 c9
and
  assn asm ln 1951, prod ln 194.23, live ln 195, enc None
  %241 = load %struct.node*, %struct.node** %node, l194 c23
🔔 Removing: asm ln 1651, prod ln 141.9, live ln 142, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 38) from
  assn asm ln 1642, prod ln 140.9, live ln 141, enc None
  %114 = load %struct.node*, %struct.node** %node, l140 c9
and
  assn asm ln 1951, prod ln 194.23, live ln 195, enc None
  %241 = load %struct.node*, %struct.node** %node, l194 c23
🔔 Removing: asm ln 1642, prod ln 140.9, live ln 141, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 38) from
  assn asm ln 1635, prod ln 138.9, live ln 139, enc None
  %111 = load %struct.node*, %struct.node** %node, l138 c9
and
  assn asm ln 1951, prod ln 194.23, live ln 195, enc None
  %241 = load %struct.node*, %struct.node** %node, l194 c23
🔔 Removing: asm ln 1635, prod ln 138.9, live ln 139, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 38) from
  assn asm ln 1630, prod ln 137.9, live ln 138, enc None
  %109 = load %struct.node*, %struct.node** %node, l137 c9
and
  assn asm ln 1951, prod ln 194.23, live ln 195, enc None
  %241 = load %struct.node*, %struct.node** %node, l194 c23
🔔 Removing: asm ln 1630, prod ln 137.9, live ln 138, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 38) from
  assn asm ln 1591, prod ln 124.17, live ln 125, enc None
  %99 = load %struct.node*, %struct.node** %nodes92, l124 c17
and
  assn asm ln 1951, prod ln 194.23, live ln 195, enc None
  %241 = load %struct.node*, %struct.node** %node, l194 c23
🔔 Removing: asm ln 1591, prod ln 124.17, live ln 125, enc None

Filtering after assignments: `actArc` (decl src ln 36)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1370, prod ln 154.47, live ln 155, enc None
  %inc = add nsw i64 %actArc.0, 1, l154 c47
and
  assn asm ln 1471, prod ln 174.47, live ln 175, enc None
  %inc195 = add nsw i64 %inc162, 1, l174 c47
🔔 Removing: asm ln 1370, prod ln 154.47, live ln 155, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1415, prod ln 164.47, live ln 165, enc None
  %inc162 = add nsw i64 %inc, 1, l164 c47
and
  assn asm ln 1471, prod ln 174.47, live ln 175, enc None
  %inc195 = add nsw i64 %inc162, 1, l174 c47
🔔 Removing: asm ln 1415, prod ln 164.47, live ln 165, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1492, prod ln 181.76, live ln 182, enc None
  %actArc.1 = phi i64 [ %inc241, %if.end217 ], [ %actArc.0, %for.end ]
and
  assn asm ln 1471, prod ln 174.47, live ln 175, enc None
  %inc195 = add nsw i64 %inc162, 1, l174 c47
🔔 Removing: asm ln 1492, prod ln 181.76, live ln 182, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1552, prod ln 181.76, live ln 182, enc None
  %inc241 = add nsw i64 %actArc.1, 1, l181 c76
and
  assn asm ln 1471, prod ln 174.47, live ln 175, enc None
  %inc195 = add nsw i64 %inc162, 1, l174 c47
🔔 Removing: asm ln 1552, prod ln 181.76, live ln 182, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1274, prod ln 174.47, live ln 175, enc None
  %actArc.0 = phi i64 [ 0, %if.end82 ], [ %inc195, %cond.end179 ]
and
  assn asm ln 1471, prod ln 174.47, live ln 175, enc None
  %inc195 = add nsw i64 %inc162, 1, l174 c47
🔔 Removing: asm ln 1274, prod ln 174.47, live ln 175, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1025, prod ln 36.0, live ln 41, enc 0
  i64 0
and
  assn asm ln 1471, prod ln 174.47, live ln 175, enc None
  %inc195 = add nsw i64 %inc162, 1, l174 c47

Filtering after assignments: `arc` (decl src ln 37)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1373, prod ln 154.25, live ln 156, enc None
  %add.ptr139 = getelementptr inbounds %struct.arc.0, %struct.arc.0* %61, i64 %call138, l154 c25
and
  assn asm ln 1264, prod ln 125.16, live ln 127, enc None
  %44 = load %struct.arc.0*, %struct.arc.0** %arcs93, l125 c16
🔔 Removing: asm ln 1373, prod ln 154.25, live ln 156, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1418, prod ln 164.25, live ln 166, enc None
  %add.ptr164 = getelementptr inbounds %struct.arc.0, %struct.arc.0* %70, i64 %call163, l164 c25
and
  assn asm ln 1264, prod ln 125.16, live ln 127, enc None
  %44 = load %struct.arc.0*, %struct.arc.0** %arcs93, l125 c16
🔔 Removing: asm ln 1418, prod ln 164.25, live ln 166, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1474, prod ln 174.25, live ln 175, enc None
  %add.ptr197 = getelementptr inbounds %struct.arc.0, %struct.arc.0* %80, i64 %call196, l174 c25
and
  assn asm ln 1264, prod ln 125.16, live ln 127, enc None
  %44 = load %struct.arc.0*, %struct.arc.0** %arcs93, l125 c16
🔔 Removing: asm ln 1474, prod ln 174.25, live ln 175, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1555, prod ln 181.54, live ln 182, enc None
  %add.ptr243 = getelementptr inbounds %struct.arc.0, %struct.arc.0* %94, i64 %call242, l181 c54
and
  assn asm ln 1264, prod ln 125.16, live ln 127, enc None
  %44 = load %struct.arc.0*, %struct.arc.0** %arcs93, l125 c16
🔔 Removing: asm ln 1555, prod ln 181.54, live ln 182, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1561, prod ln 202.16, live ln 204, enc None
  %95 = load %struct.arc.0*, %struct.arc.0** %stop_arcs245, l202 c16
and
  assn asm ln 1264, prod ln 125.16, live ln 127, enc None
  %44 = load %struct.arc.0*, %struct.arc.0** %arcs93, l125 c16
🔔 Removing: asm ln 1561, prod ln 202.16, live ln 204, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1572, prod ln 207.20, live ln 208, enc None
  %97 = load %struct.arc.0*, %struct.arc.0** %arcs251, l207 c20
and
  assn asm ln 1264, prod ln 125.16, live ln 127, enc None
  %44 = load %struct.arc.0*, %struct.arc.0** %arcs93, l125 c16
🔔 Removing: asm ln 1572, prod ln 207.20, live ln 208, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1591, prod ln 208.51, live ln 209, enc None
  %incdec.ptr = getelementptr inbounds %struct.arc.0, %struct.arc.0* %arc.2, i32 1, l208 c51
and
  assn asm ln 1264, prod ln 125.16, live ln 127, enc None
  %44 = load %struct.arc.0*, %struct.arc.0** %arcs93, l125 c16
🔔 Removing: asm ln 1591, prod ln 208.51, live ln 209, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1624, prod ln 228.23, live ln 230, enc None
  %add.ptr276 = getelementptr inbounds %struct.arc.0, %struct.arc.0* %102, i64 %call275, l228 c23
and
  assn asm ln 1264, prod ln 125.16, live ln 127, enc None
  %44 = load %struct.arc.0*, %struct.arc.0** %arcs93, l125 c16
🔔 Removing: asm ln 1624, prod ln 228.23, live ln 230, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1272, prod ln 174.25, live ln 175, enc None
  %arc.0 = phi %struct.arc.0* [ %44, %if.end82 ], [ %add.ptr197, %cond.end179 ]
and
  assn asm ln 1264, prod ln 125.16, live ln 127, enc None
  %44 = load %struct.arc.0*, %struct.arc.0** %arcs93, l125 c16
🔔 Removing: asm ln 1272, prod ln 174.25, live ln 175, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1490, prod ln 181.54, live ln 182, enc None
  %arc.1 = phi %struct.arc.0* [ %add.ptr243, %if.end217 ], [ %arc.0, %for.end ]
and
  assn asm ln 1264, prod ln 125.16, live ln 127, enc None
  %44 = load %struct.arc.0*, %struct.arc.0** %arcs93, l125 c16
🔔 Removing: asm ln 1490, prod ln 181.54, live ln 182, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `arc` (decl src ln 37) from
  assn asm ln 1579, prod ln 208.51, live ln 209, enc None
  %arc.2 = phi %struct.arc.0* [ %97, %if.then249 ], [ %incdec.ptr, %for.body257 ]
and
  assn asm ln 1264, prod ln 125.16, live ln 127, enc None
  %44 = load %struct.arc.0*, %struct.arc.0** %arcs93, l125 c16
🔔 Removing: asm ln 1579, prod ln 208.51, live ln 209, enc None

Filtering after assignments: `i` (decl src ln 36)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1476, prod ln 127.37, live ln 128, enc None
  %inc198 = add nsw i64 %i.0, 1, l127 c37
and
  assn asm ln 1265, prod ln 36.0, live ln 127, enc None
  i64 1
🔔 Removing: asm ln 1476, prod ln 127.37, live ln 128, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1548, prod ln 181.34, live ln 182, enc None
  %inc239 = add nsw i64 %i.1, 1, l181 c34
and
  assn asm ln 1265, prod ln 36.0, live ln 127, enc None
  i64 1
🔔 Removing: asm ln 1548, prod ln 181.34, live ln 182, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1606, prod ln 36.0, live ln 226, enc None
  i64 1
and
  assn asm ln 1265, prod ln 36.0, live ln 127, enc None
  i64 1
🔔 Removing: asm ln 1606, prod ln 36.0, live ln 226, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1656, prod ln 226.37, live ln 227, enc None
  %inc298 = add nsw i64 %i.2, 1, l226 c37
and
  assn asm ln 1265, prod ln 36.0, live ln 127, enc None
  i64 1
🔔 Removing: asm ln 1656, prod ln 226.37, live ln 227, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1273, prod ln 127.37, live ln 128, enc None
  %i.0 = phi i64 [ 1, %if.end82 ], [ %inc198, %cond.end179 ]
and
  assn asm ln 1265, prod ln 36.0, live ln 127, enc None
  i64 1
🔔 Removing: asm ln 1273, prod ln 127.37, live ln 128, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1491, prod ln 181.34, live ln 182, enc None
  %i.1 = phi i64 [ %inc239, %if.end217 ], [ 0, %for.end ]
and
  assn asm ln 1265, prod ln 36.0, live ln 127, enc None
  i64 1
🔔 Removing: asm ln 1491, prod ln 181.34, live ln 182, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 36) from
  assn asm ln 1611, prod ln 226.37, live ln 227, enc None
  %i.2 = phi i64 [ 1, %if.end264 ], [ %inc298, %cond.end293 ]
and
  assn asm ln 1265, prod ln 36.0, live ln 127, enc None
  i64 1
🔔 Removing: asm ln 1611, prod ln 226.37, live ln 227, enc None

Filtering after assignments: `in` (decl src ln 33)

Checking equivalence of `in` (decl src ln 33) from
  assn asm ln 1029, prod ln 41.15, live ln 42, enc 1
  %call = call %struct.__sFILE.5* @"\01_fopen"(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)), l41 c15
  (w64 0x9297D9A77A217663)
and
  assn asm ln 1020, prod ln 33.0, live ln 41, enc 0
  %struct.__sFILE.5* null
  (w64 0x0)

Collating encountered before assignments: `actArc` (decl src ln 36)
❌ Assignment asm ln 2002, prod ln 181.76, live ln 182, enc None for `actArc` (decl src ln 36) was not encountered during execution
  asm ln 1288, prod ln 36.13, live ln 41, enc 0
Collating encountered before assignments: `arc` (decl src ln 37)
❌ Assignment asm ln 2124, prod ln 231.7, live ln 232, enc None for `arc` (decl src ln 37) was not encountered during execution
Collating encountered before assignments: `i` (decl src ln 36)
❌ Assignment asm ln 2129, prod ln 226.37, live ln 227, enc None for `i` (decl src ln 36) was not encountered during execution
Collating encountered before assignments: `in` (decl src ln 33)
❌ Assignment asm ln 2063, prod ln 213.13, live ln 214, enc None for `in` (decl src ln 33) was not encountered during execution
  asm ln 1281, prod ln 33.11, live ln 36, enc 0
  asm ln 1295, prod ln 41.15, live ln 42, enc 1
Collating encountered before assignments: `net` (decl src ln 27)
❌ Assignment asm ln 2116, prod ln 232.32, live ln 233, enc None for `net` (decl src ln 27) was not encountered during execution
  asm ln 1278, prod ln 27.0, live ln 33, enc 0
Collating encountered before assignments: `node` (decl src ln 38)
❌ Assignment asm ln 1951, prod ln 194.23, live ln 195, enc None for `node` (decl src ln 38) was not encountered during execution

Collating encountered after assignments: `actArc` (decl src ln 36)
❌ Assignment asm ln 1471, prod ln 174.47, live ln 175, enc None for `actArc` (decl src ln 36) was not encountered during execution
  asm ln 1025, prod ln 36.0, live ln 41, enc 0
Collating encountered after assignments: `arc` (decl src ln 37)
❌ Assignment asm ln 1264, prod ln 125.16, live ln 127, enc None for `arc` (decl src ln 37) was not encountered during execution
Collating encountered after assignments: `i` (decl src ln 36)
❌ Assignment asm ln 1265, prod ln 36.0, live ln 127, enc None for `i` (decl src ln 36) was not encountered during execution
Collating encountered after assignments: `in` (decl src ln 33)
  asm ln 1020, prod ln 33.0, live ln 41, enc 0
  asm ln 1029, prod ln 41.15, live ln 42, enc 1
Collating encountered after assignments: `net` (decl src ln 27)
  asm ln 1019, prod ln 27.0, live ln 41, enc 0
Collating encountered after assignments: `node` (decl src ln 38)
❌ Assignment asm ln 1261, prod ln 124.17, live ln 125, enc None for `node` (decl src ln 38) was not encountered during execution

#### Check after using before as reference

❌ Before assn asm ln 2002, prod ln 181.76, live ln 182, enc None for `actArc` (decl src ln 36) was not encountered during execution

❌ After assn asm ln 1471, prod ln 174.47, live ln 175, enc None for `actArc` (decl src ln 36) was not encountered during execution

Checking equivalence of `actArc` (decl src ln 36) from
  assn asm ln 1025, prod ln 36.0, live ln 41, enc 0
  i64 0
  (w64 0x0)
and
  assn asm ln 1288, prod ln 36.13, live ln 41, enc 0
  i64 0
  (w64 0x0)
✅ Before `actArc` (decl src ln 36) assn asm ln 1288, prod ln 36.13, live ln 41, enc 0 symbolic value matches after assn asm ln 1025, prod ln 36.0, live ln 41, enc 0

❌ After `actArc` assns checked using before as reference
Assignments:         actArc
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true

❌ Before assn asm ln 2124, prod ln 231.7, live ln 232, enc None for `arc` (decl src ln 37) was not encountered during execution

❌ After assn asm ln 1264, prod ln 125.16, live ln 127, enc None for `arc` (decl src ln 37) was not encountered during execution

❌ After `arc` assns checked using before as reference
Assignments:         arc
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true

✅ After `c` assns checked using before as reference
Assignments:         c
  Reference:         0
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true

✅ After `h` assns checked using before as reference
Assignments:         h
  Reference:         0
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true

❌ Before assn asm ln 2129, prod ln 226.37, live ln 227, enc None for `i` (decl src ln 36) was not encountered during execution

❌ After assn asm ln 1265, prod ln 36.0, live ln 127, enc None for `i` (decl src ln 36) was not encountered during execution

❌ After `i` assns checked using before as reference
Assignments:         i
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true

❌ Before assn asm ln 2063, prod ln 213.13, live ln 214, enc None for `in` (decl src ln 33) was not encountered during execution

❌ Before `in` (decl src ln 33) assn asm ln 1281, prod ln 33.11, live ln 36, enc 0 coordinates don't match after assn asm ln 1020, prod ln 33.0, live ln 41, enc 0
Checking equivalence of `in` (decl src ln 33) from
  assn asm ln 1020, prod ln 33.0, live ln 41, enc 0
  %struct.__sFILE.5* null
  (w64 0x0)
and
  assn asm ln 1281, prod ln 33.11, live ln 36, enc 0
  %struct.__sFILE* null
  (w64 0x0)
✅ Before `in` (decl src ln 33) assn asm ln 1281, prod ln 33.11, live ln 36, enc 0 symbolic value matches after assn asm ln 1020, prod ln 33.0, live ln 41, enc 0

Checking equivalence of `in` (decl src ln 33) from
  assn asm ln 1029, prod ln 41.15, live ln 42, enc 1
  %call = call %struct.__sFILE.5* @"\01_fopen"(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)), l41 c15
  (w64 0x9297D9A77A217663)
and
  assn asm ln 1295, prod ln 41.15, live ln 42, enc 1
  %call = call %struct.__sFILE* @"\01_fopen"(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)), l41 c15
  (w64 0x9297D9A77A217663)
✅ Before `in` (decl src ln 33) assn asm ln 1295, prod ln 41.15, live ln 42, enc 1 symbolic value matches after assn asm ln 1029, prod ln 41.15, live ln 42, enc 1

❌ After `in` assns checked using before as reference
Assignments:         in
  Reference:         3
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    2
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true

✅ After `instring` assns checked using before as reference
Assignments:         instring
  Reference:         0
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true

❌ Before assn asm ln 2116, prod ln 232.32, live ln 233, enc None for `net` (decl src ln 27) was not encountered during execution

❌ Before `net` (decl src ln 27) assn asm ln 1278, prod ln 27.0, live ln 33, enc 0 coordinates don't match after assn asm ln 1019, prod ln 27.0, live ln 41, enc 0
Checking equivalence of `net` (decl src ln 27) from
  assn asm ln 1019, prod ln 27.0, live ln 41, enc 0
  %struct.network.2* %net
  (w64 0x81DE172F37E9C697)
and
  assn asm ln 1278, prod ln 27.0, live ln 33, enc 0
  %struct.network* %net
  (w64 0x81DE172F37E9C697)
✅ Before `net` (decl src ln 27) assn asm ln 1278, prod ln 27.0, live ln 33, enc 0 symbolic value matches after assn asm ln 1019, prod ln 27.0, live ln 41, enc 0

❌ After `net` assns checked using before as reference
Assignments:         net
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true

❌ Before assn asm ln 1951, prod ln 194.23, live ln 195, enc None for `node` (decl src ln 38) was not encountered during execution

❌ After assn asm ln 1261, prod ln 124.17, live ln 125, enc None for `node` (decl src ln 38) was not encountered during execution

❌ After `node` assns checked using before as reference
Assignments:         node
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true

✅ After `t` assns checked using before as reference
Assignments:         t
  Reference:         0
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: true

## Function `refreshArcPointers`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `net` (decl src ln 48), asm ln 2270
  %37 = load %struct.network*, %struct.network** %net.addr, l69 c49, asm ln 2270
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2270, prod ln 69.49, live ln 70, enc None
Load from declared address of `net` (decl src ln 48), asm ln 2237
  %25 = load %struct.network*, %struct.network** %net.addr, l67 c48, asm ln 2237
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2237, prod ln 67.48, live ln 68, enc None
Load from declared address of `net` (decl src ln 48), asm ln 2204
  %13 = load %struct.network*, %struct.network** %net.addr, l65 c50, asm ln 2204
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2204, prod ln 65.50, live ln 66, enc None
Load from declared address of `net` (decl src ln 48), asm ln 2180
  %3 = load %struct.network*, %struct.network** %net.addr, l63 c14, asm ln 2180
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2180, prod ln 63.14, live ln 64, enc None
Load from declared address of `net` (decl src ln 48), asm ln 2173
  %1 = load %struct.network*, %struct.network** %net.addr, l62 c22, asm ln 2173
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2173, prod ln 62.22, live ln 63, enc None
Store to declared address of `net` (decl src ln 48), asm ln 2160
  arg 0
  Added assignment asm ln 2160, prod ln 48.0, live ln 62, enc None
Load from declared address of `getPos` (decl src ln 48), asm ln 2269
  %36 = load i64 (%struct.network*, i64)*, i64 (%struct.network*, i64)** %getPos.addr, l69 c42, asm ln 2269
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2269, prod ln 69.42, live ln 70, enc None
Load from declared address of `getPos` (decl src ln 48), asm ln 2236
  %24 = load i64 (%struct.network*, i64)*, i64 (%struct.network*, i64)** %getPos.addr, l67 c41, asm ln 2236
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2236, prod ln 67.41, live ln 68, enc None
Load from declared address of `getPos` (decl src ln 48), asm ln 2203
  %12 = load i64 (%struct.network*, i64)*, i64 (%struct.network*, i64)** %getPos.addr, l65 c43, asm ln 2203
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2203, prod ln 65.43, live ln 66, enc None
Store to declared address of `getPos` (decl src ln 48), asm ln 2162
  arg 1
  Added assignment asm ln 2162, prod ln 48.0, live ln 62, enc None
Load from declared address of `sorted_array` (decl src ln 48), asm ln 2268
  %35 = load %struct.arc*, %struct.arc** %sorted_array.addr, l69 c29, asm ln 2268
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2268, prod ln 69.29, live ln 70, enc None
Load from declared address of `sorted_array` (decl src ln 48), asm ln 2235
  %23 = load %struct.arc*, %struct.arc** %sorted_array.addr, l67 c28, asm ln 2235
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2235, prod ln 67.28, live ln 68, enc None
Load from declared address of `sorted_array` (decl src ln 48), asm ln 2202
  %11 = load %struct.arc*, %struct.arc** %sorted_array.addr, l65 c30, asm ln 2202
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2202, prod ln 65.30, live ln 66, enc None
Store to declared address of `sorted_array` (decl src ln 48), asm ln 2164
  arg 2
  Added assignment asm ln 2164, prod ln 48.0, live ln 62, enc None
Load from declared address of `node` (decl src ln 56), asm ln 2279
  %41 = load %struct.node*, %struct.node** %node, l69 c11, asm ln 2279
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2279, prod ln 69.11, live ln 70, enc None
Load from declared address of `node` (decl src ln 56), asm ln 2271
  %38 = load %struct.node*, %struct.node** %node, l69 c54, asm ln 2271
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2271, prod ln 69.54, live ln 70, enc None
Load from declared address of `node` (decl src ln 56), asm ln 2259
  %32 = load %struct.node*, %struct.node** %node, l68 c29, asm ln 2259
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2259, prod ln 68.29, live ln 69, enc None
Load from declared address of `node` (decl src ln 56), asm ln 2252
  %30 = load %struct.node*, %struct.node** %node, l68 c11, asm ln 2252
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2252, prod ln 68.11, live ln 69, enc None
Load from declared address of `node` (decl src ln 56), asm ln 2246
  %29 = load %struct.node*, %struct.node** %node, l67 c11, asm ln 2246
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2246, prod ln 67.11, live ln 68, enc None
Load from declared address of `node` (decl src ln 56), asm ln 2238
  %26 = load %struct.node*, %struct.node** %node, l67 c53, asm ln 2238
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2238, prod ln 67.53, live ln 68, enc None
Load from declared address of `node` (decl src ln 56), asm ln 2226
  %20 = load %struct.node*, %struct.node** %node, l66 c28, asm ln 2226
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2226, prod ln 66.28, live ln 67, enc None
Load from declared address of `node` (decl src ln 56), asm ln 2219
  %18 = load %struct.node*, %struct.node** %node, l66 c11, asm ln 2219
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2219, prod ln 66.11, live ln 67, enc None
Load from declared address of `node` (decl src ln 56), asm ln 2213
  %17 = load %struct.node*, %struct.node** %node, l65 c11, asm ln 2213
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2213, prod ln 65.11, live ln 66, enc None
Load from declared address of `node` (decl src ln 56), asm ln 2205
  %14 = load %struct.node*, %struct.node** %node, l65 c55, asm ln 2205
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2205, prod ln 65.55, live ln 66, enc None
Load from declared address of `node` (decl src ln 56), asm ln 2193
  %8 = load %struct.node*, %struct.node** %node, l64 c30, asm ln 2193
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2193, prod ln 64.30, live ln 65, enc None
Load from declared address of `node` (decl src ln 56), asm ln 2186
  %6 = load %struct.node*, %struct.node** %node, l64 c11, asm ln 2186
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2186, prod ln 64.11, live ln 65, enc None
Store to declared address of `node` (decl src ln 56), asm ln 2185
  %add.ptr = getelementptr inbounds %struct.node, %struct.node* %4, i64 %5, l63 c25, asm ln 2184
  Added assignment asm ln 2185, prod ln 63.25, live ln 64, enc None
Store to declared address of `i` (decl src ln 57), asm ln 2287
  %inc = add nsw i64 %42, 1, l62 c31, asm ln 2286
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2287, prod ln 62.31, live ln 63, enc None
Load from declared address of `i` (decl src ln 57), asm ln 2285
  %42 = load i64, i64* %i, l62 c31, asm ln 2285
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2285, prod ln 62.31, live ln 63, enc None
Load from declared address of `i` (decl src ln 57), asm ln 2183
  %5 = load i64, i64* %i, l63 c27, asm ln 2183
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2183, prod ln 63.27, live ln 64, enc None
Load from declared address of `i` (decl src ln 57), asm ln 2172
  %0 = load i64, i64* %i, l62 c17, asm ln 2172
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2172, prod ln 62.17, live ln 63, enc None
Store to declared address of `i` (decl src ln 57), asm ln 2168
  const i64 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2168, prod ln 62.12, live ln 63, enc None

#### After variables

Value produced for `net` (decl src ln 48), asm ln 1678
  arg 0
  Added assignment asm ln 1678, prod ln 48.0, live ln 62, enc None
Value produced for `getPos` (decl src ln 48), asm ln 1679
  arg 1
  Added assignment asm ln 1679, prod ln 48.0, live ln 62, enc None
Value produced for `sorted_array` (decl src ln 48), asm ln 1680
  arg 2
  Added assignment asm ln 1680, prod ln 48.0, live ln 62, enc None
Value produced for `i` (decl src ln 57), asm ln 1681
  const i64 0
  Added assignment asm ln 1681, prod ln 57.0, live ln 62, enc None
Value produced for `node` (decl src ln 56), asm ln 1696
  %add.ptr = getelementptr inbounds %struct.node.1, %struct.node.1* %1, i64 %i.0, l63 c25, asm ln 1695
  Added assignment asm ln 1696, prod ln 63.25, live ln 64, enc None
Value produced for `i` (decl src ln 57), asm ln 1776
  %inc = add nsw i64 %i.0, 1, l62 c31, asm ln 1775
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1776, prod ln 62.31, live ln 63, enc None
Value produced for `i` (decl src ln 57), asm ln 1686
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ], asm ln 1685
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1686, prod ln 62.31, live ln 63, enc None

#### Summary

✅ 5 before variables found, 5 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `implicit.c`
[0mCollected value for `net`
  Assignment asm ln 2160, prod ln 48.0, live ln 62, enc 0
  Concrete pointer resolves to refreshArcPointers.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref)
  Replaced concrete pointer with hash (w64 0xA540E79E32894846)
  %struct.network* %net
  (w64 0xA540E79E32894846)
Collected value for `getPos`
  Assignment asm ln 2162, prod ln 48.0, live ln 62, enc 0
  Concrete pointer resolves to refreshArcPointers.getPos.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.getPos.deref)
  Replaced concrete pointer with hash (w64 0x46BC2AA88FA5332E)
  i64 (%struct.network*, i64)* %getPos
  (w64 0x46BC2AA88FA5332E)
Collected value for `sorted_array`
  Assignment asm ln 2164, prod ln 48.0, live ln 62, enc 0
  Concrete pointer resolves to refreshArcPointers.sorted_array.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.sorted_array.deref)
  Replaced concrete pointer with hash (w64 0x874F76F9FCFE05CB)
  %struct.arc* %sorted_array
  (w64 0x874F76F9FCFE05CB)
Collected value for `i`
  Assignment asm ln 2168, prod ln 62.12, live ln 63, enc 0
  i64 0
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 2172, prod ln 62.17, live ln 63, enc 1
  %0 = load i64, i64* %i, l62 c17
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 2173, prod ln 62.22, live ln 63, enc 1
  Concrete pointer resolves to refreshArcPointers.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref)
  Replaced concrete pointer with hash (w64 0xA540E79E32894846)
  %1 = load %struct.network*, %struct.network** %net.addr, l62 c22
  (w64 0xA540E79E32894846)
Collected value for `net`
  Assignment asm ln 2180, prod ln 63.14, live ln 64, enc 2
  Concrete pointer resolves to refreshArcPointers.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref)
  Replaced concrete pointer with hash (w64 0xA540E79E32894846)
  %3 = load %struct.network*, %struct.network** %net.addr, l63 c14
  (w64 0xA540E79E32894846)
Collected value for `i`
  Assignment asm ln 2183, prod ln 63.27, live ln 64, enc 2
  %5 = load i64, i64* %i, l63 c27
  (w64 0x0)
Collected value for `node`
  Assignment asm ln 2185, prod ln 63.25, live ln 64, enc 0
  %add.ptr = getelementptr inbounds %struct.node, %struct.node* %4, i64 %5, l63 c25
  (w64 0x0)
Collected value for `node`
  Assignment asm ln 2186, prod ln 64.11, live ln 65, enc 1
  %6 = load %struct.node*, %struct.node** %node, l64 c11
  (w64 0x0)
[0;1;31mKLEE: ERROR: implicit.c:64: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all before instructions

🔔 Unable to execute all before program states

#### After values

Collected value for `net`
  Assignment asm ln 1678, prod ln 48.0, live ln 62, enc 0
  Concrete pointer resolves to refreshArcPointers.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref)
  Replaced concrete pointer with hash (w64 0xA540E79E32894846)
  %struct.network.2* %net
  (w64 0xA540E79E32894846)
Collected value for `getPos`
  Assignment asm ln 1679, prod ln 48.0, live ln 62, enc 0
  Concrete pointer resolves to refreshArcPointers.getPos.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.getPos.deref)
  Replaced concrete pointer with hash (w64 0x46BC2AA88FA5332E)
  i64 (%struct.network.2*, i64)* %getPos
  (w64 0x46BC2AA88FA5332E)
Collected value for `sorted_array`
  Assignment asm ln 1680, prod ln 48.0, live ln 62, enc 0
  Concrete pointer resolves to refreshArcPointers.sorted_array.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.sorted_array.deref)
  Replaced concrete pointer with hash (w64 0x874F76F9FCFE05CB)
  %struct.arc.0* %sorted_array
  (w64 0x874F76F9FCFE05CB)
Collected value for `i`
  Assignment asm ln 1681, prod ln 57.0, live ln 62, enc 0
  i64 0
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 1686, prod ln 62.31, live ln 63, enc 1
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  Block: 0
  (w64 0x0)
Collected value for `node`
  Assignment asm ln 1696, prod ln 63.25, live ln 64, enc 0
  %add.ptr = getelementptr inbounds %struct.node.1, %struct.node.1* %1, i64 %i.0, l63 c25
  (w64 0x0)
[0;1;31mKLEE: ERROR: implicit.c:64: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all after instructions

🔔 Unable to execute all after program states

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `net` (decl src ln 48)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 48) from
  assn asm ln 2237, prod ln 67.48, live ln 68, enc None
  %25 = load %struct.network*, %struct.network** %net.addr, l67 c48
and
  assn asm ln 2270, prod ln 69.49, live ln 70, enc None
  %37 = load %struct.network*, %struct.network** %net.addr, l69 c49
🔔 Removing: asm ln 2237, prod ln 67.48, live ln 68, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 48) from
  assn asm ln 2204, prod ln 65.50, live ln 66, enc None
  %13 = load %struct.network*, %struct.network** %net.addr, l65 c50
and
  assn asm ln 2270, prod ln 69.49, live ln 70, enc None
  %37 = load %struct.network*, %struct.network** %net.addr, l69 c49
🔔 Removing: asm ln 2204, prod ln 65.50, live ln 66, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 48) from
  assn asm ln 2160, prod ln 48.0, live ln 62, enc 0
  %struct.network* %net
and
  assn asm ln 2270, prod ln 69.49, live ln 70, enc None
  %37 = load %struct.network*, %struct.network** %net.addr, l69 c49

Checking equivalence of `net` (decl src ln 48) from
  assn asm ln 2173, prod ln 62.22, live ln 63, enc 1
  %1 = load %struct.network*, %struct.network** %net.addr, l62 c22
  (w64 0xA540E79E32894846)
and
  assn asm ln 2160, prod ln 48.0, live ln 62, enc 0
  %struct.network* %net
  (w64 0xA540E79E32894846)
🔔 Removing: asm ln 2173, prod ln 62.22, live ln 63, enc 1

Checking equivalence of `net` (decl src ln 48) from
  assn asm ln 2180, prod ln 63.14, live ln 64, enc 2
  %3 = load %struct.network*, %struct.network** %net.addr, l63 c14
  (w64 0xA540E79E32894846)
and
  assn asm ln 2160, prod ln 48.0, live ln 62, enc 0
  %struct.network* %net
  (w64 0xA540E79E32894846)
🔔 Removing: asm ln 2180, prod ln 63.14, live ln 64, enc 2

Filtering before assignments: `getPos` (decl src ln 48)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `getPos` (decl src ln 48) from
  assn asm ln 2236, prod ln 67.41, live ln 68, enc None
  %24 = load i64 (%struct.network*, i64)*, i64 (%struct.network*, i64)** %getPos.addr, l67 c41
and
  assn asm ln 2269, prod ln 69.42, live ln 70, enc None
  %36 = load i64 (%struct.network*, i64)*, i64 (%struct.network*, i64)** %getPos.addr, l69 c42
🔔 Removing: asm ln 2236, prod ln 67.41, live ln 68, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `getPos` (decl src ln 48) from
  assn asm ln 2203, prod ln 65.43, live ln 66, enc None
  %12 = load i64 (%struct.network*, i64)*, i64 (%struct.network*, i64)** %getPos.addr, l65 c43
and
  assn asm ln 2269, prod ln 69.42, live ln 70, enc None
  %36 = load i64 (%struct.network*, i64)*, i64 (%struct.network*, i64)** %getPos.addr, l69 c42
🔔 Removing: asm ln 2203, prod ln 65.43, live ln 66, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `getPos` (decl src ln 48) from
  assn asm ln 2162, prod ln 48.0, live ln 62, enc 0
  i64 (%struct.network*, i64)* %getPos
and
  assn asm ln 2269, prod ln 69.42, live ln 70, enc None
  %36 = load i64 (%struct.network*, i64)*, i64 (%struct.network*, i64)** %getPos.addr, l69 c42

Filtering before assignments: `sorted_array` (decl src ln 48)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `sorted_array` (decl src ln 48) from
  assn asm ln 2235, prod ln 67.28, live ln 68, enc None
  %23 = load %struct.arc*, %struct.arc** %sorted_array.addr, l67 c28
and
  assn asm ln 2268, prod ln 69.29, live ln 70, enc None
  %35 = load %struct.arc*, %struct.arc** %sorted_array.addr, l69 c29
🔔 Removing: asm ln 2235, prod ln 67.28, live ln 68, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `sorted_array` (decl src ln 48) from
  assn asm ln 2202, prod ln 65.30, live ln 66, enc None
  %11 = load %struct.arc*, %struct.arc** %sorted_array.addr, l65 c30
and
  assn asm ln 2268, prod ln 69.29, live ln 70, enc None
  %35 = load %struct.arc*, %struct.arc** %sorted_array.addr, l69 c29
🔔 Removing: asm ln 2202, prod ln 65.30, live ln 66, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `sorted_array` (decl src ln 48) from
  assn asm ln 2164, prod ln 48.0, live ln 62, enc 0
  %struct.arc* %sorted_array
and
  assn asm ln 2268, prod ln 69.29, live ln 70, enc None
  %35 = load %struct.arc*, %struct.arc** %sorted_array.addr, l69 c29

Filtering before assignments: `node` (decl src ln 56)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 56) from
  assn asm ln 2271, prod ln 69.54, live ln 70, enc None
  %38 = load %struct.node*, %struct.node** %node, l69 c54
and
  assn asm ln 2279, prod ln 69.11, live ln 70, enc None
  %41 = load %struct.node*, %struct.node** %node, l69 c11
🔔 Removing: asm ln 2271, prod ln 69.54, live ln 70, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 56) from
  assn asm ln 2259, prod ln 68.29, live ln 69, enc None
  %32 = load %struct.node*, %struct.node** %node, l68 c29
and
  assn asm ln 2279, prod ln 69.11, live ln 70, enc None
  %41 = load %struct.node*, %struct.node** %node, l69 c11
🔔 Removing: asm ln 2259, prod ln 68.29, live ln 69, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 56) from
  assn asm ln 2252, prod ln 68.11, live ln 69, enc None
  %30 = load %struct.node*, %struct.node** %node, l68 c11
and
  assn asm ln 2279, prod ln 69.11, live ln 70, enc None
  %41 = load %struct.node*, %struct.node** %node, l69 c11
🔔 Removing: asm ln 2252, prod ln 68.11, live ln 69, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 56) from
  assn asm ln 2246, prod ln 67.11, live ln 68, enc None
  %29 = load %struct.node*, %struct.node** %node, l67 c11
and
  assn asm ln 2279, prod ln 69.11, live ln 70, enc None
  %41 = load %struct.node*, %struct.node** %node, l69 c11
🔔 Removing: asm ln 2246, prod ln 67.11, live ln 68, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 56) from
  assn asm ln 2238, prod ln 67.53, live ln 68, enc None
  %26 = load %struct.node*, %struct.node** %node, l67 c53
and
  assn asm ln 2279, prod ln 69.11, live ln 70, enc None
  %41 = load %struct.node*, %struct.node** %node, l69 c11
🔔 Removing: asm ln 2238, prod ln 67.53, live ln 68, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 56) from
  assn asm ln 2226, prod ln 66.28, live ln 67, enc None
  %20 = load %struct.node*, %struct.node** %node, l66 c28
and
  assn asm ln 2279, prod ln 69.11, live ln 70, enc None
  %41 = load %struct.node*, %struct.node** %node, l69 c11
🔔 Removing: asm ln 2226, prod ln 66.28, live ln 67, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 56) from
  assn asm ln 2219, prod ln 66.11, live ln 67, enc None
  %18 = load %struct.node*, %struct.node** %node, l66 c11
and
  assn asm ln 2279, prod ln 69.11, live ln 70, enc None
  %41 = load %struct.node*, %struct.node** %node, l69 c11
🔔 Removing: asm ln 2219, prod ln 66.11, live ln 67, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 56) from
  assn asm ln 2213, prod ln 65.11, live ln 66, enc None
  %17 = load %struct.node*, %struct.node** %node, l65 c11
and
  assn asm ln 2279, prod ln 69.11, live ln 70, enc None
  %41 = load %struct.node*, %struct.node** %node, l69 c11
🔔 Removing: asm ln 2213, prod ln 65.11, live ln 66, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 56) from
  assn asm ln 2205, prod ln 65.55, live ln 66, enc None
  %14 = load %struct.node*, %struct.node** %node, l65 c55
and
  assn asm ln 2279, prod ln 69.11, live ln 70, enc None
  %41 = load %struct.node*, %struct.node** %node, l69 c11
🔔 Removing: asm ln 2205, prod ln 65.55, live ln 66, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 56) from
  assn asm ln 2193, prod ln 64.30, live ln 65, enc None
  %8 = load %struct.node*, %struct.node** %node, l64 c30
and
  assn asm ln 2279, prod ln 69.11, live ln 70, enc None
  %41 = load %struct.node*, %struct.node** %node, l69 c11
🔔 Removing: asm ln 2193, prod ln 64.30, live ln 65, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 56) from
  assn asm ln 2185, prod ln 63.25, live ln 64, enc 0
  %add.ptr = getelementptr inbounds %struct.node, %struct.node* %4, i64 %5, l63 c25
and
  assn asm ln 2279, prod ln 69.11, live ln 70, enc None
  %41 = load %struct.node*, %struct.node** %node, l69 c11

Checking equivalence of `node` (decl src ln 56) from
  assn asm ln 2186, prod ln 64.11, live ln 65, enc 1
  %6 = load %struct.node*, %struct.node** %node, l64 c11
  (w64 0x0)
and
  assn asm ln 2185, prod ln 63.25, live ln 64, enc 0
  %add.ptr = getelementptr inbounds %struct.node, %struct.node* %4, i64 %5, l63 c25
  (w64 0x0)
🔔 Removing: asm ln 2186, prod ln 64.11, live ln 65, enc 1

Filtering before assignments: `i` (decl src ln 57)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 57) from
  assn asm ln 2285, prod ln 62.31, live ln 63, enc None
  %42 = load i64, i64* %i, l62 c31
and
  assn asm ln 2287, prod ln 62.31, live ln 63, enc None
  %inc = add nsw i64 %42, 1, l62 c31
🔔 Removing: asm ln 2285, prod ln 62.31, live ln 63, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 57) from
  assn asm ln 2168, prod ln 62.12, live ln 63, enc 0
  i64 0
and
  assn asm ln 2287, prod ln 62.31, live ln 63, enc None
  %inc = add nsw i64 %42, 1, l62 c31

Checking equivalence of `i` (decl src ln 57) from
  assn asm ln 2172, prod ln 62.17, live ln 63, enc 1
  %0 = load i64, i64* %i, l62 c17
  (w64 0x0)
and
  assn asm ln 2168, prod ln 62.12, live ln 63, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2172, prod ln 62.17, live ln 63, enc 1

Checking equivalence of `i` (decl src ln 57) from
  assn asm ln 2183, prod ln 63.27, live ln 64, enc 2
  %5 = load i64, i64* %i, l63 c27
  (w64 0x0)
and
  assn asm ln 2168, prod ln 62.12, live ln 63, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2183, prod ln 63.27, live ln 64, enc 2

Filtering after assignments: `i` (decl src ln 57)

Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 57) from
  assn asm ln 1681, prod ln 57.0, live ln 62, enc 0
  i64 0
and
  assn asm ln 1776, prod ln 62.31, live ln 63, enc None
  %inc = add nsw i64 %i.0, 1, l62 c31

Checking equivalence of `i` (decl src ln 57) from
  assn asm ln 1686, prod ln 62.31, live ln 63, enc 1
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  (w64 0x0)
and
  assn asm ln 1681, prod ln 57.0, live ln 62, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 1686, prod ln 62.31, live ln 63, enc 1

Collating encountered before assignments: `net` (decl src ln 48)
❌ Assignment asm ln 2270, prod ln 69.49, live ln 70, enc None for `net` (decl src ln 48) was not encountered during execution
  asm ln 2160, prod ln 48.0, live ln 62, enc 0
Collating encountered before assignments: `getPos` (decl src ln 48)
❌ Assignment asm ln 2269, prod ln 69.42, live ln 70, enc None for `getPos` (decl src ln 48) was not encountered during execution
  asm ln 2162, prod ln 48.0, live ln 62, enc 0
Collating encountered before assignments: `sorted_array` (decl src ln 48)
❌ Assignment asm ln 2268, prod ln 69.29, live ln 70, enc None for `sorted_array` (decl src ln 48) was not encountered during execution
  asm ln 2164, prod ln 48.0, live ln 62, enc 0
Collating encountered before assignments: `node` (decl src ln 56)
❌ Assignment asm ln 2279, prod ln 69.11, live ln 70, enc None for `node` (decl src ln 56) was not encountered during execution
  asm ln 2185, prod ln 63.25, live ln 64, enc 0
Collating encountered before assignments: `i` (decl src ln 57)
❌ Assignment asm ln 2287, prod ln 62.31, live ln 63, enc None for `i` (decl src ln 57) was not encountered during execution
  asm ln 2168, prod ln 62.12, live ln 63, enc 0

Collating encountered after assignments: `net` (decl src ln 48)
  asm ln 1678, prod ln 48.0, live ln 62, enc 0
Collating encountered after assignments: `getPos` (decl src ln 48)
  asm ln 1679, prod ln 48.0, live ln 62, enc 0
Collating encountered after assignments: `sorted_array` (decl src ln 48)
  asm ln 1680, prod ln 48.0, live ln 62, enc 0
Collating encountered after assignments: `i` (decl src ln 57)
❌ Assignment asm ln 1776, prod ln 62.31, live ln 63, enc None for `i` (decl src ln 57) was not encountered during execution
  asm ln 1681, prod ln 57.0, live ln 62, enc 0
Collating encountered after assignments: `node` (decl src ln 56)
  asm ln 1696, prod ln 63.25, live ln 64, enc 0

#### Check after using before as reference

❌ Before assn asm ln 2269, prod ln 69.42, live ln 70, enc None for `getPos` (decl src ln 48) was not encountered during execution

Checking equivalence of `getPos` (decl src ln 48) from
  assn asm ln 1679, prod ln 48.0, live ln 62, enc 0
  i64 (%struct.network.2*, i64)* %getPos
  (w64 0x46BC2AA88FA5332E)
and
  assn asm ln 2162, prod ln 48.0, live ln 62, enc 0
  i64 (%struct.network*, i64)* %getPos
  (w64 0x46BC2AA88FA5332E)
✅ Before `getPos` (decl src ln 48) assn asm ln 2162, prod ln 48.0, live ln 62, enc 0 symbolic value matches after assn asm ln 1679, prod ln 48.0, live ln 62, enc 0

❌ After `getPos` assns checked using before as reference
Assignments:         getPos
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 2287, prod ln 62.31, live ln 63, enc None for `i` (decl src ln 57) was not encountered during execution

❌ After assn asm ln 1776, prod ln 62.31, live ln 63, enc None for `i` (decl src ln 57) was not encountered during execution

❌ Before `i` (decl src ln 57) assn asm ln 2168, prod ln 62.12, live ln 63, enc 0 coordinates don't match after assn asm ln 1681, prod ln 57.0, live ln 62, enc 0
Checking equivalence of `i` (decl src ln 57) from
  assn asm ln 1681, prod ln 57.0, live ln 62, enc 0
  i64 0
  (w64 0x0)
and
  assn asm ln 2168, prod ln 62.12, live ln 63, enc 0
  i64 0
  (w64 0x0)
✅ Before `i` (decl src ln 57) assn asm ln 2168, prod ln 62.12, live ln 63, enc 0 symbolic value matches after assn asm ln 1681, prod ln 57.0, live ln 62, enc 0

❌ After `i` assns checked using before as reference
Assignments:         i
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 2270, prod ln 69.49, live ln 70, enc None for `net` (decl src ln 48) was not encountered during execution

Checking equivalence of `net` (decl src ln 48) from
  assn asm ln 1678, prod ln 48.0, live ln 62, enc 0
  %struct.network.2* %net
  (w64 0xA540E79E32894846)
and
  assn asm ln 2160, prod ln 48.0, live ln 62, enc 0
  %struct.network* %net
  (w64 0xA540E79E32894846)
✅ Before `net` (decl src ln 48) assn asm ln 2160, prod ln 48.0, live ln 62, enc 0 symbolic value matches after assn asm ln 1678, prod ln 48.0, live ln 62, enc 0

❌ After `net` assns checked using before as reference
Assignments:         net
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 2279, prod ln 69.11, live ln 70, enc None for `node` (decl src ln 56) was not encountered during execution

Checking equivalence of `node` (decl src ln 56) from
  assn asm ln 1696, prod ln 63.25, live ln 64, enc 0
  %add.ptr = getelementptr inbounds %struct.node.1, %struct.node.1* %1, i64 %i.0, l63 c25
  (w64 0x0)
and
  assn asm ln 2185, prod ln 63.25, live ln 64, enc 0
  %add.ptr = getelementptr inbounds %struct.node, %struct.node* %4, i64 %5, l63 c25
  (w64 0x0)
✅ Before `node` (decl src ln 56) assn asm ln 2185, prod ln 63.25, live ln 64, enc 0 symbolic value matches after assn asm ln 1696, prod ln 63.25, live ln 64, enc 0

❌ After `node` assns checked using before as reference
Assignments:         node
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 2268, prod ln 69.29, live ln 70, enc None for `sorted_array` (decl src ln 48) was not encountered during execution

Checking equivalence of `sorted_array` (decl src ln 48) from
  assn asm ln 1680, prod ln 48.0, live ln 62, enc 0
  %struct.arc.0* %sorted_array
  (w64 0x874F76F9FCFE05CB)
and
  assn asm ln 2164, prod ln 48.0, live ln 62, enc 0
  %struct.arc* %sorted_array
  (w64 0x874F76F9FCFE05CB)
✅ Before `sorted_array` (decl src ln 48) assn asm ln 2164, prod ln 48.0, live ln 62, enc 0 symbolic value matches after assn asm ln 1680, prod ln 48.0, live ln 62, enc 0

❌ After `sorted_array` assns checked using before as reference
Assignments:         sorted_array
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

## Function `refreshPositions`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `net` (decl src ln 77), asm ln 2384
  %31 = load %struct.network*, %struct.network** %net.addr, l105 c3, asm ln 2384
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2384, prod ln 105.3, live ln 106, enc None
Load from declared address of `net` (decl src ln 77), asm ln 2378
  %28 = load %struct.network*, %struct.network** %net.addr, l104 c3, asm ln 2378
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2378, prod ln 104.3, live ln 105, enc None
Load from declared address of `net` (decl src ln 77), asm ln 2374
  %26 = load %struct.network*, %struct.network** %net.addr, l103 c3, asm ln 2374
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2374, prod ln 103.3, live ln 104, enc None
Load from declared address of `net` (decl src ln 77), asm ln 2369
  %23 = load %struct.network*, %struct.network** %net.addr, l102 c9, asm ln 2369
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2369, prod ln 102.9, live ln 103, enc None
Load from declared address of `net` (decl src ln 77), asm ln 2346
  %13 = load %struct.network*, %struct.network** %net.addr, l98 c27, asm ln 2346
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2346, prod ln 98.27, live ln 99, enc None
Load from declared address of `net` (decl src ln 77), asm ln 2332
  %7 = load %struct.network*, %struct.network** %net.addr, l95 c11, asm ln 2332
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2332, prod ln 95.11, live ln 96, enc None
Load from declared address of `net` (decl src ln 77), asm ln 2318
  %2 = load %struct.network*, %struct.network** %net.addr, l89 c24, asm ln 2318
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2318, prod ln 89.24, live ln 90, enc None
Load from declared address of `net` (decl src ln 77), asm ln 2314
  %0 = load %struct.network*, %struct.network** %net.addr, l88 c20, asm ln 2314
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2314, prod ln 88.20, live ln 89, enc None
Store to declared address of `net` (decl src ln 77), asm ln 2304
  arg 0
  Added assignment asm ln 2304, prod ln 77.0, live ln 88, enc None
Load from declared address of `getPos` (decl src ln 77), asm ln 2345
  %12 = load i64 (%struct.network*, i64)*, i64 (%struct.network*, i64)** %getPos.addr, l98 c20, asm ln 2345
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2345, prod ln 98.20, live ln 99, enc None
Load from declared address of `getPos` (decl src ln 77), asm ln 2319
  %3 = load i64 (%struct.network*, i64)*, i64 (%struct.network*, i64)** %getPos.addr, l89 c29, asm ln 2319
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2319, prod ln 89.29, live ln 90, enc None
Store to declared address of `getPos` (decl src ln 77), asm ln 2306
  arg 1
  Added assignment asm ln 2306, prod ln 77.0, live ln 88, enc None
Load from declared address of `new_m` (decl src ln 77), asm ln 2382
  %30 = load i64, i64* %new_m.addr, l105 c35, asm ln 2382
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2382, prod ln 105.35, live ln 106, enc None
Load from declared address of `new_m` (decl src ln 77), asm ln 2327
  %6 = load i64, i64* %new_m.addr, l94 c33, asm ln 2327
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2327, prod ln 94.33, live ln 95, enc None
Store to declared address of `new_m` (decl src ln 77), asm ln 2308
  arg 2
  Added assignment asm ln 2308, prod ln 77.0, live ln 88, enc None
Load from declared address of `arc` (decl src ln 85), asm ln 2377
  %27 = load %struct.arc*, %struct.arc** %arc, l104 c22, asm ln 2377
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2377, prod ln 104.22, live ln 105, enc None
Store to declared address of `arc` (decl src ln 85), asm ln 2372
  %24 = load %struct.arc*, %struct.arc** %arcs4, l102 c14, asm ln 2371
  Added assignment asm ln 2372, prod ln 102.14, live ln 103, enc None
Load from declared address of `arc` (decl src ln 85), asm ln 2356
  %18 = load %struct.arc*, %struct.arc** %arc, l99 c35, asm ln 2356
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2356, prod ln 99.35, live ln 100, enc None
Load from declared address of `arc` (decl src ln 85), asm ln 2347
  %14 = load %struct.arc*, %struct.arc** %arc, l98 c32, asm ln 2347
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2347, prod ln 98.32, live ln 99, enc None
Load from declared address of `arc` (decl src ln 85), asm ln 2338
  %10 = load %struct.arc*, %struct.arc** %arc, l96 c8, asm ln 2338
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2338, prod ln 96.8, live ln 97, enc None
Store to declared address of `arc` (decl src ln 85), asm ln 2337
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %8, i64 %9, l95 c21, asm ln 2336
  Added assignment asm ln 2337, prod ln 95.21, live ln 96, enc None
Load from declared address of `sorted_array` (decl src ln 85), asm ln 2381
  %29 = load %struct.arc*, %struct.arc** %sorted_array, l105 c20, asm ln 2381
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2381, prod ln 105.20, live ln 106, enc None
Load from declared address of `sorted_array` (decl src ln 85), asm ln 2373
  %25 = load %struct.arc*, %struct.arc** %sorted_array, l103 c15, asm ln 2373
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2373, prod ln 103.15, live ln 104, enc None
Load from declared address of `sorted_array` (decl src ln 85), asm ln 2353
  %16 = load %struct.arc*, %struct.arc** %sorted_array, l99 c5, asm ln 2353
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2353, prod ln 99.5, live ln 100, enc None
Load from declared address of `sorted_array` (decl src ln 85), asm ln 2320
  %4 = load %struct.arc*, %struct.arc** %sorted_array, l89 c37, asm ln 2320
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2320, prod ln 89.37, live ln 90, enc None
Store to declared address of `sorted_array` (decl src ln 85), asm ln 2317
  %1 = load %struct.arc*, %struct.arc** %sorted_arcs, l88 c25, asm ln 2316
  Added assignment asm ln 2317, prod ln 88.25, live ln 89, enc None
Store to declared address of `position` (decl src ln 86), asm ln 2365
  %inc = add nsw i64 %22, 1, l94 c48, asm ln 2364
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2365, prod ln 94.48, live ln 95, enc None
Load from declared address of `position` (decl src ln 86), asm ln 2363
  %22 = load i64, i64* %position, l94 c48, asm ln 2363
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2363, prod ln 94.48, live ln 95, enc None
Load from declared address of `position` (decl src ln 86), asm ln 2335
  %9 = load i64, i64* %position, l95 c23, asm ln 2335
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2335, prod ln 95.23, live ln 96, enc None
Load from declared address of `position` (decl src ln 86), asm ln 2326
  %5 = load i64, i64* %position, l94 c22, asm ln 2326
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2326, prod ln 94.22, live ln 95, enc None
Store to declared address of `position` (decl src ln 86), asm ln 2322
  const i64 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2322, prod ln 94.17, live ln 95, enc None
Load from declared address of `new_position` (decl src ln 86), asm ln 2354
  %17 = load i64, i64* %new_position, l99 c18, asm ln 2354
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2354, prod ln 99.18, live ln 100, enc None
Store to declared address of `new_position` (decl src ln 86), asm ln 2352
  %call3 = call i64 %12(%struct.network* %13, i64 %conv), l98 c20, asm ln 2351
  Added assignment asm ln 2352, prod ln 98.20, live ln 99, enc None

#### After variables

Value produced for `net` (decl src ln 77), asm ln 1786
  arg 0
  Added assignment asm ln 1786, prod ln 77.0, live ln 88, enc None
Value produced for `getPos` (decl src ln 77), asm ln 1787
  arg 1
  Added assignment asm ln 1787, prod ln 77.0, live ln 88, enc None
Value produced for `new_m` (decl src ln 77), asm ln 1788
  arg 2
  Added assignment asm ln 1788, prod ln 77.0, live ln 88, enc None
Value produced for `sorted_array` (decl src ln 85), asm ln 1791
  %0 = load %struct.arc.0*, %struct.arc.0** %sorted_arcs, l88 c25, asm ln 1790
  Added assignment asm ln 1791, prod ln 88.25, live ln 89, enc None
Value produced for `position` (decl src ln 86), asm ln 1793
  const i64 0
  Added assignment asm ln 1793, prod ln 86.0, live ln 94, enc None
Value produced for `arc` (decl src ln 85), asm ln 1806
  %add.ptr = getelementptr inbounds %struct.arc.0, %struct.arc.0* %1, i64 %position.0, l95 c21, asm ln 1805
  Added assignment asm ln 1806, prod ln 95.21, live ln 96, enc None
Value produced for `new_position` (decl src ln 86), asm ln 1817
  %call3 = call i64 %getPos(%struct.network.2* %net, i64 %conv), l98 c20, asm ln 1816
  Added assignment asm ln 1817, prod ln 98.20, live ln 99, enc None
Value produced for `position` (decl src ln 86), asm ln 1826
  %inc = add nsw i64 %position.0, 1, l94 c48, asm ln 1825
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1826, prod ln 94.48, live ln 95, enc None
Value produced for `arc` (decl src ln 85), asm ln 1832
  %7 = load %struct.arc.0*, %struct.arc.0** %arcs4, l102 c14, asm ln 1831
  Added assignment asm ln 1832, prod ln 102.14, live ln 103, enc None
Value produced for `position` (decl src ln 86), asm ln 1798
  %position.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ], asm ln 1797
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1798, prod ln 94.48, live ln 95, enc None

#### Summary

✅ 7 before variables found, 7 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `net`
  Assignment asm ln 2304, prod ln 77.0, live ln 88, enc 0
  Concrete pointer resolves to refreshPositions.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshPositions.net.deref)
  Replaced concrete pointer with hash (w64 0x44BED0BEAE8CF191)
  %struct.network* %net
  (w64 0x44BED0BEAE8CF191)
Collected value for `getPos`
  Assignment asm ln 2306, prod ln 77.0, live ln 88, enc 0
  Concrete pointer resolves to refreshPositions.getPos.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshPositions.getPos.deref)
  Replaced concrete pointer with hash (w64 0xDBBEDCBE3051C519)
  i64 (%struct.network*, i64)* %getPos
  (w64 0xDBBEDCBE3051C519)
Collected value for `new_m`
  Assignment asm ln 2308, prod ln 77.0, live ln 88, enc 0
  i64 %new_m
  (ReadLSB w64 (w32 0x0) refreshPositions.new_m)
Collected value for `net`
  Assignment asm ln 2314, prod ln 88.20, live ln 89, enc 1
  Concrete pointer resolves to refreshPositions.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshPositions.net.deref)
  Replaced concrete pointer with hash (w64 0x44BED0BEAE8CF191)
  %0 = load %struct.network*, %struct.network** %net.addr, l88 c20
  (w64 0x44BED0BEAE8CF191)
Collected value for `sorted_array`
  Assignment asm ln 2317, prod ln 88.25, live ln 89, enc 0
  %1 = load %struct.arc*, %struct.arc** %sorted_arcs, l88 c25
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 2318, prod ln 89.24, live ln 90, enc 2
  Concrete pointer resolves to refreshPositions.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshPositions.net.deref)
  Replaced concrete pointer with hash (w64 0x44BED0BEAE8CF191)
  %2 = load %struct.network*, %struct.network** %net.addr, l89 c24
  (w64 0x44BED0BEAE8CF191)
Collected value for `getPos`
  Assignment asm ln 2319, prod ln 89.29, live ln 90, enc 1
  Concrete pointer resolves to refreshPositions.getPos.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshPositions.getPos.deref)
  Replaced concrete pointer with hash (w64 0xDBBEDCBE3051C519)
  %3 = load i64 (%struct.network*, i64)*, i64 (%struct.network*, i64)** %getPos.addr, l89 c29
  (w64 0xDBBEDCBE3051C519)
Collected value for `sorted_array`
  Assignment asm ln 2320, prod ln 89.37, live ln 90, enc 1
  %4 = load %struct.arc*, %struct.arc** %sorted_array, l89 c37
  (w64 0x0)
Collected value for `position`
  Assignment asm ln 2322, prod ln 94.17, live ln 95, enc 0
  i64 0
  (w64 0x0)
Collected value for `position`
  Assignment asm ln 2326, prod ln 94.22, live ln 95, enc 1
  %5 = load i64, i64* %position, l94 c22
  (w64 0x0)
Collected value for `new_m`
  Assignment asm ln 2327, prod ln 94.33, live ln 95, enc 1
  %6 = load i64, i64* %new_m.addr, l94 c33
  (ReadLSB w64 (w32 0x0) refreshPositions.new_m)
Collected value for `net`
  Assignment asm ln 2369, prod ln 102.9, live ln 103, enc 3
  Concrete pointer resolves to refreshPositions.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref)
  Replaced concrete pointer with hash (w64 0x44BED0BEAE8CF191)
  %23 = load %struct.network*, %struct.network** %net.addr, l102 c9
  (w64 0x44BED0BEAE8CF191)
Collected value for `net`
  Assignment asm ln 2332, prod ln 95.11, live ln 96, enc 4
  Concrete pointer resolves to refreshPositions.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref)
  Replaced concrete pointer with hash (w64 0x44BED0BEAE8CF191)
  %7 = load %struct.network*, %struct.network** %net.addr, l95 c11
  (w64 0x44BED0BEAE8CF191)
Collected value for `arc`
  Assignment asm ln 2372, prod ln 102.14, live ln 103, enc 0
  Concrete pointer resolves to refreshArcPointers.net.deref.e23.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref.e23.deref)
  Replaced concrete pointer with hash (w64 0xE502C5CF1F8A809)
  %24 = load %struct.arc*, %struct.arc** %arcs4, l102 c14
  (w64 0xE502C5CF1F8A809)
Collected value for `sorted_array`
  Assignment asm ln 2373, prod ln 103.15, live ln 104, enc 2
  %25 = load %struct.arc*, %struct.arc** %sorted_array, l103 c15
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 2374, prod ln 103.3, live ln 104, enc 5
  Concrete pointer resolves to refreshPositions.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref)
  Replaced concrete pointer with hash (w64 0x44BED0BEAE8CF191)
  %26 = load %struct.network*, %struct.network** %net.addr, l103 c3
  (w64 0x44BED0BEAE8CF191)
Collected value for `position`
  Assignment asm ln 2335, prod ln 95.23, live ln 96, enc 2
  %9 = load i64, i64* %position, l95 c23
  (w64 0x0)
Collected value for `arc`
  Assignment asm ln 2337, prod ln 95.21, live ln 96, enc 1
  Concrete pointer resolves to refreshArcPointers.net.deref.e23.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref.e23.deref)
  Replaced concrete pointer with hash (w64 0xE502C5CF1F8A809)
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %8, i64 %9, l95 c21
  (w64 0xE502C5CF1F8A809)
Collected value for `arc`
  Assignment asm ln 2338, prod ln 96.8, live ln 97, enc 2
  Concrete pointer resolves to refreshArcPointers.net.deref.e23.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref.e23.deref)
  Replaced concrete pointer with hash (w64 0xE502C5CF1F8A809)
  %10 = load %struct.arc*, %struct.arc** %arc, l96 c8
  (w64 0xE502C5CF1F8A809)
Collected value for `arc`
  Assignment asm ln 2377, prod ln 104.22, live ln 105, enc 3
  Concrete pointer resolves to refreshArcPointers.net.deref.e23.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref.e23.deref)
  Replaced concrete pointer with hash (w64 0xE502C5CF1F8A809)
  %27 = load %struct.arc*, %struct.arc** %arc, l104 c22
  (w64 0xE502C5CF1F8A809)
Collected value for `net`
  Assignment asm ln 2378, prod ln 104.3, live ln 105, enc 6
  Concrete pointer resolves to refreshPositions.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref)
  Replaced concrete pointer with hash (w64 0x44BED0BEAE8CF191)
  %28 = load %struct.network*, %struct.network** %net.addr, l104 c3
  (w64 0x44BED0BEAE8CF191)
Collected value for `sorted_array`
  Assignment asm ln 2381, prod ln 105.20, live ln 106, enc 3
  %29 = load %struct.arc*, %struct.arc** %sorted_array, l105 c20
  (w64 0x0)
Collected value for `new_m`
  Assignment asm ln 2382, prod ln 105.35, live ln 106, enc 2
  %30 = load i64, i64* %new_m.addr, l105 c35
  (ReadLSB w64 (w32 0x0) refreshPositions.new_m)
Collected value for `net`
  Assignment asm ln 2384, prod ln 105.3, live ln 106, enc 7
  Concrete pointer resolves to refreshPositions.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref)
  Replaced concrete pointer with hash (w64 0x44BED0BEAE8CF191)
  %31 = load %struct.network*, %struct.network** %net.addr, l105 c3
  (w64 0x44BED0BEAE8CF191)
Collected value for `position`
  Assignment asm ln 2363, prod ln 94.48, live ln 95, enc 3
  %22 = load i64, i64* %position, l94 c48
  (w64 0x0)
Collected value for `position`
  Assignment asm ln 2365, prod ln 94.48, live ln 95, enc 4
  %inc = add nsw i64 %22, 1, l94 c48
  (w64 0x1)
Collected value for `getPos`
  Assignment asm ln 2345, prod ln 98.20, live ln 99, enc 2
  Concrete pointer resolves to refreshPositions.getPos.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshPositions.getPos.deref)
  Replaced concrete pointer with hash (w64 0xDBBEDCBE3051C519)
  %12 = load i64 (%struct.network*, i64)*, i64 (%struct.network*, i64)** %getPos.addr, l98 c20
  (w64 0xDBBEDCBE3051C519)
Collected value for `net`
  Assignment asm ln 2346, prod ln 98.27, live ln 99, enc 8
  Concrete pointer resolves to refreshPositions.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref)
  Replaced concrete pointer with hash (w64 0x44BED0BEAE8CF191)
  %13 = load %struct.network*, %struct.network** %net.addr, l98 c27
  (w64 0x44BED0BEAE8CF191)
Collected value for `arc`
  Assignment asm ln 2347, prod ln 98.32, live ln 99, enc 4
  Concrete pointer resolves to refreshArcPointers.net.deref.e23.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref.e23.deref)
  Replaced concrete pointer with hash (w64 0xE502C5CF1F8A809)
  %14 = load %struct.arc*, %struct.arc** %arc, l98 c32
  (w64 0xE502C5CF1F8A809)
Collected value for `new_position`
  Assignment asm ln 2352, prod ln 98.20, live ln 99, enc 0
  %call3 = call i64 %12(%struct.network* %13, i64 %conv), l98 c20
  (ReadLSB w64 (w32 0x0) refreshPositions.getPos.deref.return)
Collected value for `sorted_array`
  Assignment asm ln 2353, prod ln 99.5, live ln 100, enc 4
  %16 = load %struct.arc*, %struct.arc** %sorted_array, l99 c5
  (w64 0x0)
Collected value for `new_position`
  Assignment asm ln 2354, prod ln 99.18, live ln 100, enc 1
  %17 = load i64, i64* %new_position, l99 c18
  (ReadLSB w64 (w32 0x0) refreshPositions.getPos.deref.return)
Collected value for `arc`
  Assignment asm ln 2356, prod ln 99.35, live ln 100, enc 5
  Concrete pointer resolves to refreshArcPointers.net.deref.e23.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref.e23.deref)
  Replaced concrete pointer with hash (w64 0xE502C5CF1F8A809)
  %18 = load %struct.arc*, %struct.arc** %arc, l99 c35
  (w64 0xE502C5CF1F8A809)
[0;1;31mKLEE: ERROR: implicit.c:96: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all before program states

#### After values

Collected value for `net`
  Assignment asm ln 1786, prod ln 77.0, live ln 88, enc 0
  Concrete pointer resolves to refreshPositions.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshPositions.net.deref)
  Replaced concrete pointer with hash (w64 0x44BED0BEAE8CF191)
  %struct.network.2* %net
  (w64 0x44BED0BEAE8CF191)
Collected value for `getPos`
  Assignment asm ln 1787, prod ln 77.0, live ln 88, enc 0
  Concrete pointer resolves to refreshPositions.getPos.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshPositions.getPos.deref)
  Replaced concrete pointer with hash (w64 0xDBBEDCBE3051C519)
  i64 (%struct.network.2*, i64)* %getPos
  (w64 0xDBBEDCBE3051C519)
Collected value for `new_m`
  Assignment asm ln 1788, prod ln 77.0, live ln 88, enc 0
  i64 %new_m
  (ReadLSB w64 (w32 0x0) refreshPositions.new_m)
Collected value for `sorted_array`
  Assignment asm ln 1791, prod ln 88.25, live ln 89, enc 0
  %0 = load %struct.arc.0*, %struct.arc.0** %sorted_arcs, l88 c25
  (w64 0x0)
Collected value for `position`
  Assignment asm ln 1793, prod ln 86.0, live ln 94, enc 0
  i64 0
  (w64 0x0)
Collected value for `position`
  Assignment asm ln 1798, prod ln 94.48, live ln 95, enc 1
  %position.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  Block: 0
  (w64 0x0)
Collected value for `arc`
  Assignment asm ln 1832, prod ln 102.14, live ln 103, enc 0
  Concrete pointer resolves to refreshArcPointers.net.deref.e23.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref.e23.deref)
  Replaced concrete pointer with hash (w64 0xE502C5CF1F8A809)
  %7 = load %struct.arc.0*, %struct.arc.0** %arcs4, l102 c14
  (w64 0xE502C5CF1F8A809)
Collected value for `arc`
  Assignment asm ln 1806, prod ln 95.21, live ln 96, enc 1
  Concrete pointer resolves to refreshArcPointers.net.deref.e23.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) refreshArcPointers.net.deref.e23.deref)
  Replaced concrete pointer with hash (w64 0xE502C5CF1F8A809)
  %add.ptr = getelementptr inbounds %struct.arc.0, %struct.arc.0* %1, i64 %position.0, l95 c21
  (w64 0xE502C5CF1F8A809)
Collected value for `new_position`
  Assignment asm ln 1817, prod ln 98.20, live ln 99, enc 0
  %call3 = call i64 %getPos(%struct.network.2* %net, i64 %conv), l98 c20
  (ReadLSB w64 (w32 0x0) refreshPositions.getPos.deref.return)
Collected value for `position`
  Assignment asm ln 1826, prod ln 94.48, live ln 95, enc 2
  %inc = add nsw i64 %position.0, 1, l94 c48
  (w64 0x1)
[0;1;31mKLEE: ERROR: implicit.c:96: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all after program states

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `net` (decl src ln 77)

Checking equivalence of `net` (decl src ln 77) from
  assn asm ln 2314, prod ln 88.20, live ln 89, enc 1
  %0 = load %struct.network*, %struct.network** %net.addr, l88 c20
  (w64 0x44BED0BEAE8CF191)
and
  assn asm ln 2304, prod ln 77.0, live ln 88, enc 0
  %struct.network* %net
  (w64 0x44BED0BEAE8CF191)
🔔 Removing: asm ln 2314, prod ln 88.20, live ln 89, enc 1

Checking equivalence of `net` (decl src ln 77) from
  assn asm ln 2318, prod ln 89.24, live ln 90, enc 2
  %2 = load %struct.network*, %struct.network** %net.addr, l89 c24
  (w64 0x44BED0BEAE8CF191)
and
  assn asm ln 2304, prod ln 77.0, live ln 88, enc 0
  %struct.network* %net
  (w64 0x44BED0BEAE8CF191)
🔔 Removing: asm ln 2318, prod ln 89.24, live ln 90, enc 2

Checking equivalence of `net` (decl src ln 77) from
  assn asm ln 2369, prod ln 102.9, live ln 103, enc 3
  %23 = load %struct.network*, %struct.network** %net.addr, l102 c9
  (w64 0x44BED0BEAE8CF191)
and
  assn asm ln 2304, prod ln 77.0, live ln 88, enc 0
  %struct.network* %net
  (w64 0x44BED0BEAE8CF191)
🔔 Removing: asm ln 2369, prod ln 102.9, live ln 103, enc 3

Checking equivalence of `net` (decl src ln 77) from
  assn asm ln 2332, prod ln 95.11, live ln 96, enc 4
  %7 = load %struct.network*, %struct.network** %net.addr, l95 c11
  (w64 0x44BED0BEAE8CF191)
and
  assn asm ln 2304, prod ln 77.0, live ln 88, enc 0
  %struct.network* %net
  (w64 0x44BED0BEAE8CF191)
🔔 Removing: asm ln 2332, prod ln 95.11, live ln 96, enc 4

Checking equivalence of `net` (decl src ln 77) from
  assn asm ln 2374, prod ln 103.3, live ln 104, enc 5
  %26 = load %struct.network*, %struct.network** %net.addr, l103 c3
  (w64 0x44BED0BEAE8CF191)
and
  assn asm ln 2304, prod ln 77.0, live ln 88, enc 0
  %struct.network* %net
  (w64 0x44BED0BEAE8CF191)
🔔 Removing: asm ln 2374, prod ln 103.3, live ln 104, enc 5

Checking equivalence of `net` (decl src ln 77) from
  assn asm ln 2378, prod ln 104.3, live ln 105, enc 6
  %28 = load %struct.network*, %struct.network** %net.addr, l104 c3
  (w64 0x44BED0BEAE8CF191)
and
  assn asm ln 2304, prod ln 77.0, live ln 88, enc 0
  %struct.network* %net
  (w64 0x44BED0BEAE8CF191)
🔔 Removing: asm ln 2378, prod ln 104.3, live ln 105, enc 6

Checking equivalence of `net` (decl src ln 77) from
  assn asm ln 2384, prod ln 105.3, live ln 106, enc 7
  %31 = load %struct.network*, %struct.network** %net.addr, l105 c3
  (w64 0x44BED0BEAE8CF191)
and
  assn asm ln 2304, prod ln 77.0, live ln 88, enc 0
  %struct.network* %net
  (w64 0x44BED0BEAE8CF191)
🔔 Removing: asm ln 2384, prod ln 105.3, live ln 106, enc 7

Checking equivalence of `net` (decl src ln 77) from
  assn asm ln 2346, prod ln 98.27, live ln 99, enc 8
  %13 = load %struct.network*, %struct.network** %net.addr, l98 c27
  (w64 0x44BED0BEAE8CF191)
and
  assn asm ln 2304, prod ln 77.0, live ln 88, enc 0
  %struct.network* %net
  (w64 0x44BED0BEAE8CF191)
🔔 Removing: asm ln 2346, prod ln 98.27, live ln 99, enc 8

Filtering before assignments: `getPos` (decl src ln 77)

Checking equivalence of `getPos` (decl src ln 77) from
  assn asm ln 2319, prod ln 89.29, live ln 90, enc 1
  %3 = load i64 (%struct.network*, i64)*, i64 (%struct.network*, i64)** %getPos.addr, l89 c29
  (w64 0xDBBEDCBE3051C519)
and
  assn asm ln 2306, prod ln 77.0, live ln 88, enc 0
  i64 (%struct.network*, i64)* %getPos
  (w64 0xDBBEDCBE3051C519)
🔔 Removing: asm ln 2319, prod ln 89.29, live ln 90, enc 1

Checking equivalence of `getPos` (decl src ln 77) from
  assn asm ln 2345, prod ln 98.20, live ln 99, enc 2
  %12 = load i64 (%struct.network*, i64)*, i64 (%struct.network*, i64)** %getPos.addr, l98 c20
  (w64 0xDBBEDCBE3051C519)
and
  assn asm ln 2306, prod ln 77.0, live ln 88, enc 0
  i64 (%struct.network*, i64)* %getPos
  (w64 0xDBBEDCBE3051C519)
🔔 Removing: asm ln 2345, prod ln 98.20, live ln 99, enc 2

Filtering before assignments: `new_m` (decl src ln 77)

Checking equivalence of `new_m` (decl src ln 77) from
  assn asm ln 2327, prod ln 94.33, live ln 95, enc 1
  %6 = load i64, i64* %new_m.addr, l94 c33
  (ReadLSB w64 (w32 0x0) refreshPositions.new_m)
and
  assn asm ln 2308, prod ln 77.0, live ln 88, enc 0
  i64 %new_m
  (ReadLSB w64 (w32 0x0) refreshPositions.new_m)
Query to parse
array refreshPositions.new_m[8] : w32 -> w8 = symbolic
array refreshPositions.new_m[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) refreshPositions.new_m)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) refreshPositions.new_m)
     N0)
🔔 Removing: asm ln 2327, prod ln 94.33, live ln 95, enc 1

Checking equivalence of `new_m` (decl src ln 77) from
  assn asm ln 2382, prod ln 105.35, live ln 106, enc 2
  %30 = load i64, i64* %new_m.addr, l105 c35
  (ReadLSB w64 (w32 0x0) refreshPositions.new_m)
and
  assn asm ln 2308, prod ln 77.0, live ln 88, enc 0
  i64 %new_m
  (ReadLSB w64 (w32 0x0) refreshPositions.new_m)
Query to parse
array refreshPositions.new_m[8] : w32 -> w8 = symbolic
array refreshPositions.new_m[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) refreshPositions.new_m)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) refreshPositions.new_m)
     N0)
🔔 Removing: asm ln 2382, prod ln 105.35, live ln 106, enc 2

Filtering before assignments: `arc` (decl src ln 85)

Checking equivalence of `arc` (decl src ln 85) from
  assn asm ln 2337, prod ln 95.21, live ln 96, enc 1
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %8, i64 %9, l95 c21
  (w64 0xE502C5CF1F8A809)
and
  assn asm ln 2372, prod ln 102.14, live ln 103, enc 0
  %24 = load %struct.arc*, %struct.arc** %arcs4, l102 c14
  (w64 0xE502C5CF1F8A809)
🔔 Removing: asm ln 2337, prod ln 95.21, live ln 96, enc 1

Checking equivalence of `arc` (decl src ln 85) from
  assn asm ln 2338, prod ln 96.8, live ln 97, enc 2
  %10 = load %struct.arc*, %struct.arc** %arc, l96 c8
  (w64 0xE502C5CF1F8A809)
and
  assn asm ln 2372, prod ln 102.14, live ln 103, enc 0
  %24 = load %struct.arc*, %struct.arc** %arcs4, l102 c14
  (w64 0xE502C5CF1F8A809)
🔔 Removing: asm ln 2338, prod ln 96.8, live ln 97, enc 2

Checking equivalence of `arc` (decl src ln 85) from
  assn asm ln 2377, prod ln 104.22, live ln 105, enc 3
  %27 = load %struct.arc*, %struct.arc** %arc, l104 c22
  (w64 0xE502C5CF1F8A809)
and
  assn asm ln 2372, prod ln 102.14, live ln 103, enc 0
  %24 = load %struct.arc*, %struct.arc** %arcs4, l102 c14
  (w64 0xE502C5CF1F8A809)
🔔 Removing: asm ln 2377, prod ln 104.22, live ln 105, enc 3

Checking equivalence of `arc` (decl src ln 85) from
  assn asm ln 2347, prod ln 98.32, live ln 99, enc 4
  %14 = load %struct.arc*, %struct.arc** %arc, l98 c32
  (w64 0xE502C5CF1F8A809)
and
  assn asm ln 2372, prod ln 102.14, live ln 103, enc 0
  %24 = load %struct.arc*, %struct.arc** %arcs4, l102 c14
  (w64 0xE502C5CF1F8A809)
🔔 Removing: asm ln 2347, prod ln 98.32, live ln 99, enc 4

Checking equivalence of `arc` (decl src ln 85) from
  assn asm ln 2356, prod ln 99.35, live ln 100, enc 5
  %18 = load %struct.arc*, %struct.arc** %arc, l99 c35
  (w64 0xE502C5CF1F8A809)
and
  assn asm ln 2372, prod ln 102.14, live ln 103, enc 0
  %24 = load %struct.arc*, %struct.arc** %arcs4, l102 c14
  (w64 0xE502C5CF1F8A809)
🔔 Removing: asm ln 2356, prod ln 99.35, live ln 100, enc 5

Filtering before assignments: `sorted_array` (decl src ln 85)

Checking equivalence of `sorted_array` (decl src ln 85) from
  assn asm ln 2320, prod ln 89.37, live ln 90, enc 1
  %4 = load %struct.arc*, %struct.arc** %sorted_array, l89 c37
  (w64 0x0)
and
  assn asm ln 2317, prod ln 88.25, live ln 89, enc 0
  %1 = load %struct.arc*, %struct.arc** %sorted_arcs, l88 c25
  (w64 0x0)
🔔 Removing: asm ln 2320, prod ln 89.37, live ln 90, enc 1

Checking equivalence of `sorted_array` (decl src ln 85) from
  assn asm ln 2373, prod ln 103.15, live ln 104, enc 2
  %25 = load %struct.arc*, %struct.arc** %sorted_array, l103 c15
  (w64 0x0)
and
  assn asm ln 2317, prod ln 88.25, live ln 89, enc 0
  %1 = load %struct.arc*, %struct.arc** %sorted_arcs, l88 c25
  (w64 0x0)
🔔 Removing: asm ln 2373, prod ln 103.15, live ln 104, enc 2

Checking equivalence of `sorted_array` (decl src ln 85) from
  assn asm ln 2381, prod ln 105.20, live ln 106, enc 3
  %29 = load %struct.arc*, %struct.arc** %sorted_array, l105 c20
  (w64 0x0)
and
  assn asm ln 2317, prod ln 88.25, live ln 89, enc 0
  %1 = load %struct.arc*, %struct.arc** %sorted_arcs, l88 c25
  (w64 0x0)
🔔 Removing: asm ln 2381, prod ln 105.20, live ln 106, enc 3

Checking equivalence of `sorted_array` (decl src ln 85) from
  assn asm ln 2353, prod ln 99.5, live ln 100, enc 4
  %16 = load %struct.arc*, %struct.arc** %sorted_array, l99 c5
  (w64 0x0)
and
  assn asm ln 2317, prod ln 88.25, live ln 89, enc 0
  %1 = load %struct.arc*, %struct.arc** %sorted_arcs, l88 c25
  (w64 0x0)
🔔 Removing: asm ln 2353, prod ln 99.5, live ln 100, enc 4

Filtering before assignments: `position` (decl src ln 86)

Checking equivalence of `position` (decl src ln 86) from
  assn asm ln 2326, prod ln 94.22, live ln 95, enc 1
  %5 = load i64, i64* %position, l94 c22
  (w64 0x0)
and
  assn asm ln 2322, prod ln 94.17, live ln 95, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2326, prod ln 94.22, live ln 95, enc 1

Checking equivalence of `position` (decl src ln 86) from
  assn asm ln 2335, prod ln 95.23, live ln 96, enc 2
  %9 = load i64, i64* %position, l95 c23
  (w64 0x0)
and
  assn asm ln 2322, prod ln 94.17, live ln 95, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2335, prod ln 95.23, live ln 96, enc 2

Checking equivalence of `position` (decl src ln 86) from
  assn asm ln 2363, prod ln 94.48, live ln 95, enc 3
  %22 = load i64, i64* %position, l94 c48
  (w64 0x0)
and
  assn asm ln 2322, prod ln 94.17, live ln 95, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2363, prod ln 94.48, live ln 95, enc 3

Checking equivalence of `position` (decl src ln 86) from
  assn asm ln 2365, prod ln 94.48, live ln 95, enc 4
  %inc = add nsw i64 %22, 1, l94 c48
  (w64 0x1)
and
  assn asm ln 2322, prod ln 94.17, live ln 95, enc 0
  i64 0
  (w64 0x0)

Filtering before assignments: `new_position` (decl src ln 86)

Checking equivalence of `new_position` (decl src ln 86) from
  assn asm ln 2354, prod ln 99.18, live ln 100, enc 1
  %17 = load i64, i64* %new_position, l99 c18
  (ReadLSB w64 (w32 0x0) refreshPositions.getPos.deref.return)
and
  assn asm ln 2352, prod ln 98.20, live ln 99, enc 0
  %call3 = call i64 %12(%struct.network* %13, i64 %conv), l98 c20
  (ReadLSB w64 (w32 0x0) refreshPositions.getPos.deref.return)
Query to parse
array refreshPositions.getPos.deref.return[8] : w32 -> w8 = symbolic
array refreshPositions.getPos.deref.return[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) refreshPositions.getPos.deref.return)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) refreshPositions.getPos.deref.return)
     N0)
🔔 Removing: asm ln 2354, prod ln 99.18, live ln 100, enc 1

Filtering after assignments: `position` (decl src ln 86)

Checking equivalence of `position` (decl src ln 86) from
  assn asm ln 1798, prod ln 94.48, live ln 95, enc 1
  %position.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  (w64 0x0)
and
  assn asm ln 1793, prod ln 86.0, live ln 94, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 1798, prod ln 94.48, live ln 95, enc 1

Checking equivalence of `position` (decl src ln 86) from
  assn asm ln 1826, prod ln 94.48, live ln 95, enc 2
  %inc = add nsw i64 %position.0, 1, l94 c48
  (w64 0x1)
and
  assn asm ln 1793, prod ln 86.0, live ln 94, enc 0
  i64 0
  (w64 0x0)

Filtering after assignments: `arc` (decl src ln 85)

Checking equivalence of `arc` (decl src ln 85) from
  assn asm ln 1806, prod ln 95.21, live ln 96, enc 1
  %add.ptr = getelementptr inbounds %struct.arc.0, %struct.arc.0* %1, i64 %position.0, l95 c21
  (w64 0xE502C5CF1F8A809)
and
  assn asm ln 1832, prod ln 102.14, live ln 103, enc 0
  %7 = load %struct.arc.0*, %struct.arc.0** %arcs4, l102 c14
  (w64 0xE502C5CF1F8A809)
🔔 Removing: asm ln 1806, prod ln 95.21, live ln 96, enc 1

Collating encountered before assignments: `net` (decl src ln 77)
  asm ln 2304, prod ln 77.0, live ln 88, enc 0
Collating encountered before assignments: `getPos` (decl src ln 77)
  asm ln 2306, prod ln 77.0, live ln 88, enc 0
Collating encountered before assignments: `new_m` (decl src ln 77)
  asm ln 2308, prod ln 77.0, live ln 88, enc 0
Collating encountered before assignments: `arc` (decl src ln 85)
  asm ln 2372, prod ln 102.14, live ln 103, enc 0
Collating encountered before assignments: `sorted_array` (decl src ln 85)
  asm ln 2317, prod ln 88.25, live ln 89, enc 0
Collating encountered before assignments: `position` (decl src ln 86)
  asm ln 2322, prod ln 94.17, live ln 95, enc 0
  asm ln 2365, prod ln 94.48, live ln 95, enc 1
Collating encountered before assignments: `new_position` (decl src ln 86)
  asm ln 2352, prod ln 98.20, live ln 99, enc 0

Collating encountered after assignments: `net` (decl src ln 77)
  asm ln 1786, prod ln 77.0, live ln 88, enc 0
Collating encountered after assignments: `getPos` (decl src ln 77)
  asm ln 1787, prod ln 77.0, live ln 88, enc 0
Collating encountered after assignments: `new_m` (decl src ln 77)
  asm ln 1788, prod ln 77.0, live ln 88, enc 0
Collating encountered after assignments: `sorted_array` (decl src ln 85)
  asm ln 1791, prod ln 88.25, live ln 89, enc 0
Collating encountered after assignments: `position` (decl src ln 86)
  asm ln 1793, prod ln 86.0, live ln 94, enc 0
  asm ln 1826, prod ln 94.48, live ln 95, enc 1
Collating encountered after assignments: `arc` (decl src ln 85)
  asm ln 1832, prod ln 102.14, live ln 103, enc 0
Collating encountered after assignments: `new_position` (decl src ln 86)
  asm ln 1817, prod ln 98.20, live ln 99, enc 0

#### Check after using before as reference

Checking equivalence of `arc` (decl src ln 85) from
  assn asm ln 1832, prod ln 102.14, live ln 103, enc 0
  %7 = load %struct.arc.0*, %struct.arc.0** %arcs4, l102 c14
  (w64 0xE502C5CF1F8A809)
and
  assn asm ln 2372, prod ln 102.14, live ln 103, enc 0
  %24 = load %struct.arc*, %struct.arc** %arcs4, l102 c14
  (w64 0xE502C5CF1F8A809)
✅ Before `arc` (decl src ln 85) assn asm ln 2372, prod ln 102.14, live ln 103, enc 0 symbolic value matches after assn asm ln 1832, prod ln 102.14, live ln 103, enc 0

✅ After `arc` assns checked using before as reference
Assignments:         arc
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `getPos` (decl src ln 77) from
  assn asm ln 1787, prod ln 77.0, live ln 88, enc 0
  i64 (%struct.network.2*, i64)* %getPos
  (w64 0xDBBEDCBE3051C519)
and
  assn asm ln 2306, prod ln 77.0, live ln 88, enc 0
  i64 (%struct.network*, i64)* %getPos
  (w64 0xDBBEDCBE3051C519)
✅ Before `getPos` (decl src ln 77) assn asm ln 2306, prod ln 77.0, live ln 88, enc 0 symbolic value matches after assn asm ln 1787, prod ln 77.0, live ln 88, enc 0

✅ After `getPos` assns checked using before as reference
Assignments:         getPos
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `net` (decl src ln 77) from
  assn asm ln 1786, prod ln 77.0, live ln 88, enc 0
  %struct.network.2* %net
  (w64 0x44BED0BEAE8CF191)
and
  assn asm ln 2304, prod ln 77.0, live ln 88, enc 0
  %struct.network* %net
  (w64 0x44BED0BEAE8CF191)
✅ Before `net` (decl src ln 77) assn asm ln 2304, prod ln 77.0, live ln 88, enc 0 symbolic value matches after assn asm ln 1786, prod ln 77.0, live ln 88, enc 0

✅ After `net` assns checked using before as reference
Assignments:         net
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `new_m` (decl src ln 77) from
  assn asm ln 1788, prod ln 77.0, live ln 88, enc 0
  i64 %new_m
  (ReadLSB w64 (w32 0x0) refreshPositions.new_m)
and
  assn asm ln 2308, prod ln 77.0, live ln 88, enc 0
  i64 %new_m
  (ReadLSB w64 (w32 0x0) refreshPositions.new_m)
Query to parse
array refreshPositions.new_m[8] : w32 -> w8 = symbolic
array refreshPositions.new_m[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) refreshPositions.new_m)
     (ReadLSB w64 (w32 0x0) refreshPositions.new_m)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) refreshPositions.new_m)
     N0)
✅ Before `new_m` (decl src ln 77) assn asm ln 2308, prod ln 77.0, live ln 88, enc 0 symbolic value matches after assn asm ln 1788, prod ln 77.0, live ln 88, enc 0

✅ After `new_m` assns checked using before as reference
Assignments:         new_m
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `new_position` (decl src ln 86) from
  assn asm ln 1817, prod ln 98.20, live ln 99, enc 0
  %call3 = call i64 %getPos(%struct.network.2* %net, i64 %conv), l98 c20
  (ReadLSB w64 (w32 0x0) refreshPositions.getPos.deref.return)
and
  assn asm ln 2352, prod ln 98.20, live ln 99, enc 0
  %call3 = call i64 %12(%struct.network* %13, i64 %conv), l98 c20
  (ReadLSB w64 (w32 0x0) refreshPositions.getPos.deref.return)
Query to parse
array refreshPositions.getPos.deref.return[8] : w32 -> w8 = symbolic
array refreshPositions.getPos.deref.return[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) refreshPositions.getPos.deref.return)
     (ReadLSB w64 (w32 0x0) refreshPositions.getPos.deref.return)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) refreshPositions.getPos.deref.return)
     N0)
✅ Before `new_position` (decl src ln 86) assn asm ln 2352, prod ln 98.20, live ln 99, enc 0 symbolic value matches after assn asm ln 1817, prod ln 98.20, live ln 99, enc 0

✅ After `new_position` assns checked using before as reference
Assignments:         new_position
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before `position` (decl src ln 86) assn asm ln 2322, prod ln 94.17, live ln 95, enc 0 coordinates don't match after assn asm ln 1793, prod ln 86.0, live ln 94, enc 0
Checking equivalence of `position` (decl src ln 86) from
  assn asm ln 1793, prod ln 86.0, live ln 94, enc 0
  i64 0
  (w64 0x0)
and
  assn asm ln 2322, prod ln 94.17, live ln 95, enc 0
  i64 0
  (w64 0x0)
✅ Before `position` (decl src ln 86) assn asm ln 2322, prod ln 94.17, live ln 95, enc 0 symbolic value matches after assn asm ln 1793, prod ln 86.0, live ln 94, enc 0

Checking equivalence of `position` (decl src ln 86) from
  assn asm ln 1826, prod ln 94.48, live ln 95, enc 1
  %inc = add nsw i64 %position.0, 1, l94 c48
  (w64 0x1)
and
  assn asm ln 2365, prod ln 94.48, live ln 95, enc 1
  %inc = add nsw i64 %22, 1, l94 c48
  (w64 0x1)
✅ Before `position` (decl src ln 86) assn asm ln 2365, prod ln 94.48, live ln 95, enc 1 symbolic value matches after assn asm ln 1826, prod ln 94.48, live ln 95, enc 1

❌ After `position` assns checked using before as reference
Assignments:         position
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
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `sorted_array` (decl src ln 85) from
  assn asm ln 1791, prod ln 88.25, live ln 89, enc 0
  %0 = load %struct.arc.0*, %struct.arc.0** %sorted_arcs, l88 c25
  (w64 0x0)
and
  assn asm ln 2317, prod ln 88.25, live ln 89, enc 0
  %1 = load %struct.arc*, %struct.arc** %sorted_arcs, l88 c25
  (w64 0x0)
✅ Before `sorted_array` (decl src ln 85) assn asm ln 2317, prod ln 88.25, live ln 89, enc 0 symbolic value matches after assn asm ln 1791, prod ln 88.25, live ln 89, enc 0

✅ After `sorted_array` assns checked using before as reference
Assignments:         sorted_array
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

## Function `marc_arcs`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `net` (decl src ln 111), asm ln 2721
  %105 = load %struct.network*, %struct.network** %net.addr, l195 c5, asm ln 2721
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2721, prod ln 195.5, live ln 196, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2718
  %104 = load %struct.network*, %struct.network** %net.addr, l194 c5, asm ln 2718
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2718, prod ln 194.5, live ln 195, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2714
  %102 = load %struct.network*, %struct.network** %net.addr, l194 c40, asm ln 2714
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2714, prod ln 194.40, live ln 195, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2711
  %100 = load %struct.network*, %struct.network** %net.addr, l194 c24, asm ln 2711
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2711, prod ln 194.24, live ln 195, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2704
  %98 = load %struct.network*, %struct.network** %net.addr, l193 c10, asm ln 2704
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2704, prod ln 193.10, live ln 194, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2695
  %97 = load %struct.network*, %struct.network** %net.addr, l192 c7, asm ln 2695
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2695, prod ln 192.7, live ln 193, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2692
  %95 = load %struct.network*, %struct.network** %net.addr, l192 c26, asm ln 2692
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2692, prod ln 192.26, live ln 193, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2686
  %94 = load %struct.network*, %struct.network** %net.addr, l190 c7, asm ln 2686
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2686, prod ln 190.7, live ln 191, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2679
  %92 = load %struct.network*, %struct.network** %net.addr, l190 c61, asm ln 2679
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2679, prod ln 190.61, live ln 191, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2674
  %88 = load %struct.network*, %struct.network** %net.addr, l190 c26, asm ln 2674
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2674, prod ln 190.26, live ln 191, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2665
  %86 = load %struct.network*, %struct.network** %net.addr, l189 c20, asm ln 2665
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2665, prod ln 189.20, live ln 190, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2660
  %83 = load %struct.network*, %struct.network** %net.addr, l188 c3, asm ln 2660
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2660, prod ln 188.3, live ln 189, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2653
  %81 = load %struct.network*, %struct.network** %net.addr, l188 c34, asm ln 2653
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2653, prod ln 188.34, live ln 189, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2648
  %78 = load %struct.network*, %struct.network** %net.addr, l187 c3, asm ln 2648
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2648, prod ln 187.3, live ln 188, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2500
  %26 = load %struct.network*, %struct.network** %net.addr, l153 c14, asm ln 2500
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2500, prod ln 153.14, live ln 154, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2454
  %8 = load %struct.network*, %struct.network** %net.addr, l141 c20, asm ln 2454
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2454, prod ln 141.20, live ln 142, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2446
  %6 = load %struct.network*, %struct.network** %net.addr, l139 c20, asm ln 2446
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2446, prod ln 139.20, live ln 140, enc None
Load from declared address of `net` (decl src ln 111), asm ln 2439
  %4 = load %struct.network*, %struct.network** %net.addr, l138 c7, asm ln 2439
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2439, prod ln 138.7, live ln 139, enc None
Store to declared address of `net` (decl src ln 111), asm ln 2409
  arg 0
  Added assignment asm ln 2409, prod ln 111.0, live ln 124, enc None
Load from declared address of `new_arcs` (decl src ln 111), asm ln 2677
  %90 = load i64*, i64** %new_arcs.addr, l190 c50, asm ln 2677
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2677, prod ln 190.50, live ln 191, enc None
Load from declared address of `new_arcs` (decl src ln 111), asm ln 2663
  %84 = load i64*, i64** %new_arcs.addr, l189 c9, asm ln 2663
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2663, prod ln 189.9, live ln 190, enc None
Load from declared address of `new_arcs` (decl src ln 111), asm ln 2651
  %79 = load i64*, i64** %new_arcs.addr, l188 c23, asm ln 2651
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2651, prod ln 188.23, live ln 189, enc None
Load from declared address of `new_arcs` (decl src ln 111), asm ln 2638
  %75 = load i64*, i64** %new_arcs.addr, l185 c6, asm ln 2638
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2638, prod ln 185.6, live ln 186, enc None
Load from declared address of `new_arcs` (decl src ln 111), asm ln 2622
  %69 = load i64*, i64** %new_arcs.addr, l183 c4, asm ln 2622
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2622, prod ln 183.4, live ln 184, enc None
Load from declared address of `new_arcs` (decl src ln 111), asm ln 2508
  %29 = load i64*, i64** %new_arcs.addr, l154 c23, asm ln 2508
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2508, prod ln 154.23, live ln 155, enc None
Load from declared address of `new_arcs` (decl src ln 111), asm ln 2478
  %16 = load i64*, i64** %new_arcs.addr, l147 c6, asm ln 2478
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2478, prod ln 147.6, live ln 148, enc None
Load from declared address of `new_arcs` (decl src ln 111), asm ln 2462
  %10 = load i64*, i64** %new_arcs.addr, l143 c4, asm ln 2462
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2462, prod ln 143.4, live ln 144, enc None
Store to declared address of `new_arcs` (decl src ln 111), asm ln 2411
  arg 1
  Added assignment asm ln 2411, prod ln 111.0, live ln 124, enc None
Load from declared address of `new_arcs_array` (decl src ln 111), asm ln 2555
  %46 = load i64*, i64** %new_arcs_array.addr, l163 c30, asm ln 2555
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2555, prod ln 163.30, live ln 164, enc None
Load from declared address of `new_arcs_array` (decl src ln 111), asm ln 2521
  %36 = load i64*, i64** %new_arcs_array.addr, l155 c21, asm ln 2521
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2521, prod ln 155.21, live ln 156, enc None
Load from declared address of `new_arcs_array` (decl src ln 111), asm ln 2474
  %13 = load i64*, i64** %new_arcs_array.addr, l147 c18, asm ln 2474
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2474, prod ln 147.18, live ln 148, enc None
Store to declared address of `new_arcs_array` (decl src ln 111), asm ln 2413
  arg 2
  Added assignment asm ln 2413, prod ln 111.0, live ln 124, enc None
Load from declared address of `arcs_pointer_sorted` (decl src ln 111), asm ln 2482
  %18 = load %struct.arc***, %struct.arc**** %arcs_pointer_sorted.addr, l148 c20, asm ln 2482
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2482, prod ln 148.20, live ln 149, enc None
Store to declared address of `arcs_pointer_sorted` (decl src ln 111), asm ln 2415
  arg 3
  Added assignment asm ln 2415, prod ln 111.0, live ln 124, enc None
Load from declared address of `max_new_arcs` (decl src ln 121), asm ln 2512
  %32 = load i64, i64* %max_new_arcs, l154 c32, asm ln 2512
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2512, prod ln 154.32, live ln 155, enc None
Store to declared address of `max_new_arcs` (decl src ln 121), asm ln 2458
  %sub4 = sub nsw i64 %9, 4000000, l141 c44, asm ln 2457
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 2458, prod ln 141.44, live ln 142, enc None
Store to declared address of `max_new_arcs` (decl src ln 121), asm ln 2450
  %sub = sub nsw i64 %7, 1000000, l139 c44, asm ln 2449
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2450, prod ln 139.44, live ln 140, enc None
Load from declared address of `positions` (decl src ln 122), asm ln 2729
  %107 = load %struct.arc***, %struct.arc**** %positions, l198 c10, asm ln 2729
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2729, prod ln 198.10, live ln 199, enc None
Load from declared address of `positions` (decl src ln 122), asm ln 2607
  %63 = load %struct.arc***, %struct.arc**** %positions, l173 c9, asm ln 2607
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2607, prod ln 173.9, live ln 174, enc None
Load from declared address of `positions` (decl src ln 122), asm ln 2577
  %53 = load %struct.arc***, %struct.arc**** %positions, l164 c24, asm ln 2577
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2577, prod ln 164.24, live ln 165, enc None
Load from declared address of `positions` (decl src ln 122), asm ln 2568
  %50 = load %struct.arc***, %struct.arc**** %positions, l163 c75, asm ln 2568
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2568, prod ln 163.75, live ln 164, enc None
Load from declared address of `positions` (decl src ln 122), asm ln 2528
  %38 = load %struct.arc***, %struct.arc**** %positions, l156 c20, asm ln 2528
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2528, prod ln 156.20, live ln 157, enc None
Load from declared address of `positions` (decl src ln 122), asm ln 2486
  %21 = load %struct.arc***, %struct.arc**** %positions, l148 c5, asm ln 2486
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2486, prod ln 148.5, live ln 149, enc None
Store to declared address of `positions` (decl src ln 122), asm ln 2433
  %1 = bitcast i8* %call to %struct.arc***, l135 c15, asm ln 2432
  Added assignment asm ln 2433, prod ln 135.15, live ln 136, enc None
Load from declared address of `values` (decl src ln 123), asm ln 2732
  %109 = load i64*, i64** %values, l199 c10, asm ln 2732
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2732, prod ln 199.10, live ln 200, enc None
Load from declared address of `values` (decl src ln 123), asm ln 2634
  %72 = load i64*, i64** %values, l185 c18, asm ln 2634
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2634, prod ln 185.18, live ln 186, enc None
Load from declared address of `values` (decl src ln 123), asm ln 2613
  %66 = load i64*, i64** %values, l174 c9, asm ln 2613
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2613, prod ln 174.9, live ln 175, enc None
Load from declared address of `values` (decl src ln 123), asm ln 2551
  %43 = load i64*, i64** %values, l163 c18, asm ln 2551
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2551, prod ln 163.18, live ln 164, enc None
Load from declared address of `values` (decl src ln 123), asm ln 2518
  %34 = load i64*, i64** %values, l155 c9, asm ln 2518
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2518, prod ln 155.9, live ln 156, enc None
Load from declared address of `values` (decl src ln 123), asm ln 2490
  %23 = load i64*, i64** %values, l149 c5, asm ln 2490
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2490, prod ln 149.5, live ln 150, enc None
Store to declared address of `values` (decl src ln 123), asm ln 2438
  %3 = bitcast i8* %call2 to i64*, l136 c12, asm ln 2437
  Added assignment asm ln 2438, prod ln 136.12, live ln 138, enc None
Store to declared address of `global_new` (decl src ln 124), asm ln 2606
  %inc34 = add nsw i64 %62, 1, l172 c19, asm ln 2605
  Added assignment asm ln 2606, prod ln 172.19, live ln 173, enc None
Load from declared address of `global_new` (decl src ln 124), asm ln 2604
  %62 = load i64, i64* %global_new, l172 c19, asm ln 2604
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2604, prod ln 172.19, live ln 173, enc None
Load from declared address of `global_new` (decl src ln 124), asm ln 2511
  %31 = load i64, i64* %global_new, l154 c32, asm ln 2511
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2511, prod ln 154.32, live ln 155, enc None
Load from declared address of `global_new` (decl src ln 124), asm ln 2507
  %28 = load i64, i64* %global_new, l154 c9, asm ln 2507
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2507, prod ln 154.9, live ln 155, enc None
Store to declared address of `global_new` (decl src ln 124), asm ln 2421
  const i64 0
  Added assignment asm ln 2421, prod ln 124.8, live ln 125, enc None
Load from declared address of `best_pos` (decl src ln 125), asm ln 2614
  %67 = load i64, i64* %best_pos, l174 c16, asm ln 2614
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2614, prod ln 174.16, live ln 175, enc None
Load from declared address of `best_pos` (decl src ln 125), asm ln 2608
  %64 = load i64, i64* %best_pos, l173 c19, asm ln 2608
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2608, prod ln 173.19, live ln 174, enc None
Store to declared address of `best_pos` (decl src ln 125), asm ln 2584
  %57 = load i64, i64* %i, l165 c28, asm ln 2583
  Added assignment asm ln 2584, prod ln 165.28, live ln 166, enc None
Store to declared address of `best_pos` (decl src ln 125), asm ln 2533
  const i64 0
  Added assignment asm ln 2533, prod ln 157.22, live ln 158, enc None
Store to declared address of `best_pos` (decl src ln 125), asm ln 2423
  const i64 0
  Added assignment asm ln 2423, prod ln 125.8, live ln 132, enc None
Store to declared address of `start_id` (decl src ln 126), asm ln 2596
  %inc33 = add nsw i64 %59, 1, l170 c27, asm ln 2595
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2596, prod ln 170.27, live ln 171, enc None
Load from declared address of `start_id` (decl src ln 126), asm ln 2594
  %59 = load i64, i64* %start_id, l170 c27, asm ln 2594
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2594, prod ln 170.27, live ln 171, enc None
Store to declared address of `start_id` (decl src ln 126), asm ln 2503
  %27 = load i64, i64* %m, l153 c19, asm ln 2502
  Added assignment asm ln 2503, prod ln 153.19, live ln 154, enc None
Store to declared address of `i` (decl src ln 126), asm ln 2644
  %inc45 = add nsw i64 %77, 1, l184 c32, asm ln 2643
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2644, prod ln 184.32, live ln 185, enc None
Load from declared address of `i` (decl src ln 126), asm ln 2642
  %77 = load i64, i64* %i, l184 c32, asm ln 2642
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2642, prod ln 184.32, live ln 185, enc None
Load from declared address of `i` (decl src ln 126), asm ln 2635
  %73 = load i64, i64* %i, l185 c25, asm ln 2635
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2635, prod ln 185.25, live ln 186, enc None
Load from declared address of `i` (decl src ln 126), asm ln 2628
  %70 = load i64, i64* %i, l184 c15, asm ln 2628
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2628, prod ln 184.15, live ln 185, enc None
Store to declared address of `i` (decl src ln 126), asm ln 2624
  const i64 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2624, prod ln 184.10, live ln 185, enc None
Store to declared address of `i` (decl src ln 126), asm ln 2590
  %inc31 = add nsw i64 %58, 1, l162 c39, asm ln 2589
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2590, prod ln 162.39, live ln 163, enc None
Load from declared address of `i` (decl src ln 126), asm ln 2588
  %58 = load i64, i64* %i, l162 c39, asm ln 2588
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2588, prod ln 162.39, live ln 163, enc None
Load from declared address of `i` (decl src ln 126), asm ln 2583
  %57 = load i64, i64* %i, l165 c28, asm ln 2583
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2583, prod ln 165.28, live ln 166, enc None
Load from declared address of `i` (decl src ln 126), asm ln 2578
  %54 = load i64, i64* %i, l164 c34, asm ln 2578
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2578, prod ln 164.34, live ln 165, enc None
Load from declared address of `i` (decl src ln 126), asm ln 2569
  %51 = load i64, i64* %i, l163 c85, asm ln 2569
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2569, prod ln 163.85, live ln 164, enc None
Load from declared address of `i` (decl src ln 126), asm ln 2556
  %47 = load i64, i64* %i, l163 c45, asm ln 2556
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2556, prod ln 163.45, live ln 164, enc None
Load from declared address of `i` (decl src ln 126), asm ln 2552
  %44 = load i64, i64* %i, l163 c25, asm ln 2552
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2552, prod ln 163.25, live ln 164, enc None
Load from declared address of `i` (decl src ln 126), asm ln 2545
  %41 = load i64, i64* %i, l162 c21, asm ln 2545
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2545, prod ln 162.21, live ln 163, enc None
Store to declared address of `i` (decl src ln 126), asm ln 2541
  const i64 1
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2541, prod ln 162.16, live ln 163, enc None
Store to declared address of `i` (decl src ln 126), asm ln 2496
  %inc = add nsw i64 %25, 1, l146 c31, asm ln 2495
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2496, prod ln 146.31, live ln 147, enc None
Load from declared address of `i` (decl src ln 126), asm ln 2494
  %25 = load i64, i64* %i, l146 c31, asm ln 2494
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2494, prod ln 146.31, live ln 147, enc None
Load from declared address of `i` (decl src ln 126), asm ln 2491
  %24 = load i64, i64* %i, l149 c12, asm ln 2491
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2491, prod ln 149.12, live ln 150, enc None
Load from declared address of `i` (decl src ln 126), asm ln 2487
  %22 = load i64, i64* %i, l148 c15, asm ln 2487
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2487, prod ln 148.15, live ln 149, enc None
Load from declared address of `i` (decl src ln 126), asm ln 2483
  %19 = load i64, i64* %i, l148 c40, asm ln 2483
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2483, prod ln 148.40, live ln 149, enc None
Load from declared address of `i` (decl src ln 126), asm ln 2475
  %14 = load i64, i64* %i, l147 c33, asm ln 2475
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2475, prod ln 147.33, live ln 148, enc None
Load from declared address of `i` (decl src ln 126), asm ln 2468
  %11 = load i64, i64* %i, l146 c14, asm ln 2468
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2468, prod ln 146.14, live ln 147, enc None
Store to declared address of `i` (decl src ln 126), asm ln 2464
  const i64 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2464, prod ln 146.9, live ln 147, enc None
Load from declared address of `arc` (decl src ln 127), asm ln 2601
  %61 = load %struct.arc*, %struct.arc** %arc, l171 c9, asm ln 2601
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2601, prod ln 171.9, live ln 172, enc None
Load from declared address of `arc` (decl src ln 127), asm ln 2598
  %60 = load %struct.arc*, %struct.arc** %arc, l170 c9, asm ln 2598
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2598, prod ln 170.9, live ln 171, enc None
Store to declared address of `arc` (decl src ln 127), asm ln 2582
  %56 = load %struct.arc*, %struct.arc** %55, l164 c23, asm ln 2581
  Added assignment asm ln 2582, prod ln 164.23, live ln 165, enc None
Load from declared address of `arc` (decl src ln 127), asm ln 2563
  %49 = load %struct.arc*, %struct.arc** %arc, l163 c55, asm ln 2563
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2563, prod ln 163.55, live ln 164, enc None
Store to declared address of `arc` (decl src ln 127), asm ln 2537
  const %struct.arc* null
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 2537, prod ln 160.11, live ln 161, enc None
Store to declared address of `arc` (decl src ln 127), asm ln 2532
  %40 = load %struct.arc*, %struct.arc** %39, l156 c19, asm ln 2531
  Added assignment asm ln 2532, prod ln 156.19, live ln 157, enc None
Load from declared address of `num_threads` (decl src ln 132), asm ln 2629
  %71 = load i64, i64* %num_threads, l184 c18, asm ln 2629
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2629, prod ln 184.18, live ln 185, enc None
Load from declared address of `num_threads` (decl src ln 132), asm ln 2546
  %42 = load i64, i64* %num_threads, l162 c25, asm ln 2546
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2546, prod ln 162.25, live ln 163, enc None
Load from declared address of `num_threads` (decl src ln 132), asm ln 2469
  %12 = load i64, i64* %num_threads, l146 c17, asm ln 2469
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2469, prod ln 146.17, live ln 147, enc None
Load from declared address of `num_threads` (decl src ln 132), asm ln 2434
  %2 = load i64, i64* %num_threads, l136 c27, asm ln 2434
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2434, prod ln 136.27, live ln 137, enc None
Load from declared address of `num_threads` (decl src ln 132), asm ln 2429
  %0 = load i64, i64* %num_threads, l135 c32, asm ln 2429
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2429, prod ln 135.32, live ln 136, enc None
Store to declared address of `num_threads` (decl src ln 132), asm ln 2428
  const i64 1
  Added assignment asm ln 2428, prod ln 132.8, live ln 135, enc None

#### After variables

Value produced for `net` (decl src ln 111), asm ln 1850
  arg 0
  Added assignment asm ln 1850, prod ln 111.0, live ln 135, enc None
Value produced for `new_arcs` (decl src ln 111), asm ln 1851
  arg 1
  Added assignment asm ln 1851, prod ln 111.0, live ln 135, enc None
Value produced for `new_arcs_array` (decl src ln 111), asm ln 1852
  arg 2
  Added assignment asm ln 1852, prod ln 111.0, live ln 135, enc None
Value produced for `arcs_pointer_sorted` (decl src ln 111), asm ln 1853
  arg 3
  Added assignment asm ln 1853, prod ln 111.0, live ln 135, enc None
Value produced for `global_new` (decl src ln 124), asm ln 1854
  const i64 0
  Added assignment asm ln 1854, prod ln 124.0, live ln 135, enc None
Value produced for `best_pos` (decl src ln 125), asm ln 1855
  const i64 0
  Added assignment asm ln 1855, prod ln 125.0, live ln 135, enc None
Load from declared address of `arc` (decl src ln 127), asm ln 2009
  %21 = load %struct.arc.0*, %struct.arc.0** %arc, l171 c9, asm ln 2009
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2009, prod ln 171.9, live ln 172, enc None
Load from declared address of `arc` (decl src ln 127), asm ln 2006
  %20 = load %struct.arc.0*, %struct.arc.0** %arc, l170 c9, asm ln 2006
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2006, prod ln 170.9, live ln 171, enc None
Store to declared address of `arc` (decl src ln 127), asm ln 1991
  %19 = load %struct.arc.0*, %struct.arc.0** %18, l164 c23, asm ln 1990
  Added assignment asm ln 1991, prod ln 164.23, live ln 166, enc None
Load from declared address of `arc` (decl src ln 127), asm ln 1976
  %16 = load %struct.arc.0*, %struct.arc.0** %arc, l163 c55, asm ln 1976
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1976, prod ln 163.55, live ln 164, enc None
Store to declared address of `arc` (decl src ln 127), asm ln 1950
  const %struct.arc.0* null
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 1950, prod ln 160.11, live ln 161, enc None
Store to declared address of `arc` (decl src ln 127), asm ln 1945
  %13 = load %struct.arc.0*, %struct.arc.0** %12, l156 c19, asm ln 1944
  Added assignment asm ln 1945, prod ln 156.19, live ln 158, enc None
Value produced for `num_threads` (decl src ln 132), asm ln 1857
  const i64 1
  Added assignment asm ln 1857, prod ln 132.0, live ln 135, enc None
Value produced for `positions` (decl src ln 122), asm ln 1861
  %0 = bitcast i8* %call to %struct.arc.0***, l135 c15, asm ln 1860
  Added assignment asm ln 1861, prod ln 135.15, live ln 136, enc None
Value produced for `values` (decl src ln 123), asm ln 1865
  %1 = bitcast i8* %call2 to i64*, l136 c12, asm ln 1864
  Added assignment asm ln 1865, prod ln 136.12, live ln 138, enc None
Value produced for `max_new_arcs` (decl src ln 121), asm ln 1875
  %sub = sub nsw i64 %3, 1000000, l139 c44, asm ln 1874
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1875, prod ln 139.44, live ln 140, enc None
Value produced for `max_new_arcs` (decl src ln 121), asm ln 1882
  %sub4 = sub nsw i64 %4, 4000000, l141 c44, asm ln 1881
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 1882, prod ln 141.44, live ln 142, enc None
Value produced for `i` (decl src ln 126), asm ln 1889
  const i64 0
  Added assignment asm ln 1889, prod ln 126.0, live ln 146, enc None
Value produced for `i` (decl src ln 126), asm ln 1911
  %inc = add nsw i64 %i.0, 1, l146 c31, asm ln 1910
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1911, prod ln 146.31, live ln 147, enc None
Value produced for `start_id` (decl src ln 126), asm ln 1917
  %8 = load i64, i64* %m, l153 c19, asm ln 1916
  Added assignment asm ln 1917, prod ln 153.19, live ln 154, enc None
Value produced for `best_pos` (decl src ln 125), asm ln 1946
  const i64 0
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 1946, prod ln 125.0, live ln 158, enc None
Value produced for `i` (decl src ln 126), asm ln 1956
  const i64 1
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 1956, prod ln 126.0, live ln 162, enc None
Value produced for `i` (decl src ln 126), asm ln 1999
  %inc31 = add nsw i64 %i.1, 1, l162 c39, asm ln 1998
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1999, prod ln 162.39, live ln 163, enc None
Value produced for `start_id` (decl src ln 126), asm ln 2004
  %inc33 = add nsw i64 %start_id.0, 1, l170 c27, asm ln 2003
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2004, prod ln 170.27, live ln 171, enc None
Value produced for `global_new` (decl src ln 124), asm ln 2013
  %inc34 = add nsw i64 %global_new.0, 1, l172 c19, asm ln 2012
  Added assignment asm ln 2013, prod ln 172.19, live ln 173, enc None
Value produced for `i` (decl src ln 126), asm ln 2026
  const i64 0
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 2026, prod ln 126.0, live ln 184, enc None
Value produced for `i` (decl src ln 126), asm ln 2042
  %inc45 = add nsw i64 %i.2, 1, l184 c32, asm ln 2041
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2042, prod ln 184.32, live ln 185, enc None
Value produced for `max_new_arcs` (decl src ln 121), asm ln 1887
  %max_new_arcs.0 = phi i64 [ %sub, %if.then ], [ %sub4, %if.else ], asm ln 1886
  Added assignment asm ln 1887, prod ln 141.44, live ln 143, enc None
Value produced for `i` (decl src ln 126), asm ln 1894
  %i.0 = phi i64 [ 0, %if.end ], [ %inc, %for.body ], asm ln 1893
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1894, prod ln 146.31, live ln 147, enc None
Value produced for `start_id` (decl src ln 126), asm ln 1924
  %start_id.0 = phi i64 [ %8, %for.end ], [ %inc33, %for.end32 ], asm ln 1923
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1924, prod ln 170.27, live ln 171, enc None
Value produced for `best_pos` (decl src ln 125), asm ln 1925
  %best_pos.0 = phi i64 [ 0, %for.end ], [ %best_pos.2, %for.end32 ], asm ln 1922
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 1925, prod ln 125.0, live ln 154, enc None
Value produced for `global_new` (decl src ln 124), asm ln 1926
  %global_new.0 = phi i64 [ 0, %for.end ], [ %inc34, %for.end32 ], asm ln 1921
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1926, prod ln 172.19, live ln 173, enc None
Value produced for `best_pos` (decl src ln 125), asm ln 1955
  %best_pos.1 = phi i64 [ 0, %if.then14 ], [ %best_pos.0, %if.else16 ], asm ln 1954
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 1955, prod ln 125.0, live ln 162, enc None
Value produced for `i` (decl src ln 126), asm ln 1962
  %i.1 = phi i64 [ 1, %if.end17 ], [ %inc31, %for.inc30 ], asm ln 1961
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 1962, prod ln 162.39, live ln 163, enc None
Value produced for `best_pos` (decl src ln 125), asm ln 1963
  %best_pos.2 = phi i64 [ %best_pos.1, %if.end17 ], [ %best_pos.3, %for.inc30 ], asm ln 1960
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 1963, prod ln 125.0, live ln 162, enc None
Value produced for `best_pos` (decl src ln 125), asm ln 1992
  %i.1 = phi i64 [ 1, %if.end17 ], [ %inc31, %for.inc30 ], asm ln 1961
  Added assignment asm ln 1992, prod ln 162.39, live ln 166, enc None
Value produced for `best_pos` (decl src ln 125), asm ln 1997
  %best_pos.3 = phi i64 [ %i.1, %if.then27 ], [ %best_pos.2, %lor.lhs.false ], [ %best_pos.2, %for.body20 ], asm ln 1996
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 1997, prod ln 125.0, live ln 162, enc None
Value produced for `i` (decl src ln 126), asm ln 2031
  %i.2 = phi i64 [ 0, %while.end ], [ %inc45, %for.body41 ], asm ln 2030
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2031, prod ln 184.32, live ln 185, enc None

#### Summary

✅ 13 before variables found, 13 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `net`
  Assignment asm ln 2409, prod ln 111.0, live ln 124, enc 0
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %struct.network* %net
  (w64 0x19F61B371798B58A)
Collected value for `new_arcs`
  Assignment asm ln 2411, prod ln 111.0, live ln 124, enc 0
  Concrete pointer resolves to marc_arcs.new_arcs.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.new_arcs.deref)
  Replaced concrete pointer with hash (w64 0x879E370389B1A9AF)
  i64* %new_arcs
  (w64 0x879E370389B1A9AF)
Collected value for `new_arcs_array`
  Assignment asm ln 2413, prod ln 111.0, live ln 124, enc 0
  Concrete pointer resolves to marc_arcs.new_arcs_array.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.new_arcs_array.deref)
  Replaced concrete pointer with hash (w64 0x59D35653871435B0)
  i64* %new_arcs_array
  (w64 0x59D35653871435B0)
Collected value for `arcs_pointer_sorted`
  Assignment asm ln 2415, prod ln 111.0, live ln 124, enc 0
  Concrete pointer resolves to marc_arcs.arcs_pointer_sorted.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xDA11E8EDEBB932FE)
  %struct.arc*** %arcs_pointer_sorted
  (w64 0xDA11E8EDEBB932FE)
Collected value for `global_new`
  Assignment asm ln 2421, prod ln 124.8, live ln 125, enc 0
  i64 0
  (w64 0x0)
Collected value for `best_pos`
  Assignment asm ln 2423, prod ln 125.8, live ln 132, enc 0
  i64 0
  (w64 0x0)
Collected value for `num_threads`
  Assignment asm ln 2428, prod ln 132.8, live ln 135, enc 0
  i64 1
  (w64 0x1)
Collected value for `num_threads`
  Assignment asm ln 2429, prod ln 135.32, live ln 136, enc 1
  %0 = load i64, i64* %num_threads, l135 c32
  (w64 0x1)
Collected value for `positions`
  Assignment asm ln 2433, prod ln 135.15, live ln 136, enc 0
  Concrete pointer resolves to malloc.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) malloc.return.deref)
  Replaced concrete pointer with hash (w64 0xC6415B982A7466DD)
  %1 = bitcast i8* %call to %struct.arc***, l135 c15
  (w64 0xC6415B982A7466DD)
Collected value for `num_threads`
  Assignment asm ln 2434, prod ln 136.27, live ln 137, enc 2
  %2 = load i64, i64* %num_threads, l136 c27
  (w64 0x1)
Collected value for `values`
  Assignment asm ln 2438, prod ln 136.12, live ln 138, enc 0
  Concrete pointer resolves to malloc.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) malloc.return.deref_1)
  Replaced concrete pointer with hash (w64 0xC6415B982A7466DD)
  %3 = bitcast i8* %call2 to i64*, l136 c12
  (w64 0xC6415B982A7466DD)
Collected value for `net`
  Assignment asm ln 2439, prod ln 138.7, live ln 139, enc 1
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %4 = load %struct.network*, %struct.network** %net.addr, l138 c7
  (w64 0x19F61B371798B58A)
Collected value for `net`
  Assignment asm ln 2454, prod ln 141.20, live ln 142, enc 2
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %8 = load %struct.network*, %struct.network** %net.addr, l141 c20
  (w64 0x19F61B371798B58A)
Collected value for `net`
  Assignment asm ln 2446, prod ln 139.20, live ln 140, enc 3
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %6 = load %struct.network*, %struct.network** %net.addr, l139 c20
  (w64 0x19F61B371798B58A)
Collected value for `max_new_arcs`
  Assignment asm ln 2458, prod ln 141.44, live ln 142, enc 0
  %sub4 = sub nsw i64 %9, 4000000, l141 c44
  (Add w64 (w64 0xFFFFFFFFFFC2F700)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
Collected value for `max_new_arcs`
  Assignment asm ln 2450, prod ln 139.44, live ln 140, enc 1
  %sub = sub nsw i64 %7, 1000000, l139 c44
  (Add w64 (w64 0xFFFFFFFFFFF0BDC0)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
Collected value for `new_arcs`
  Assignment asm ln 2462, prod ln 143.4, live ln 144, enc 1
  Concrete pointer resolves to marc_arcs.new_arcs.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.new_arcs.deref)
  Replaced concrete pointer with hash (w64 0x879E370389B1A9AF)
  %10 = load i64*, i64** %new_arcs.addr, l143 c4
  (w64 0x879E370389B1A9AF)
Collected value for `i`
  Assignment asm ln 2464, prod ln 146.9, live ln 147, enc 0
  i64 0
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 2468, prod ln 146.14, live ln 147, enc 1
  %11 = load i64, i64* %i, l146 c14
  (w64 0x0)
Collected value for `num_threads`
  Assignment asm ln 2469, prod ln 146.17, live ln 147, enc 3
  %12 = load i64, i64* %num_threads, l146 c17
  (w64 0x1)
Collected value for `new_arcs_array`
  Assignment asm ln 2474, prod ln 147.18, live ln 148, enc 1
  Concrete pointer resolves to marc_arcs.new_arcs_array.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.new_arcs_array.deref)
  Replaced concrete pointer with hash (w64 0x59D35653871435B0)
  %13 = load i64*, i64** %new_arcs_array.addr, l147 c18
  (w64 0x59D35653871435B0)
Collected value for `i`
  Assignment asm ln 2475, prod ln 147.33, live ln 148, enc 2
  %14 = load i64, i64* %i, l147 c33
  (w64 0x0)
Collected value for `new_arcs`
  Assignment asm ln 2478, prod ln 147.6, live ln 148, enc 2
  Concrete pointer resolves to marc_arcs.new_arcs.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x879E370389B1A9AF)
  %16 = load i64*, i64** %new_arcs.addr, l147 c6
  (w64 0x879E370389B1A9AF)
Collected value for `arcs_pointer_sorted`
  Assignment asm ln 2482, prod ln 148.20, live ln 149, enc 1
  Concrete pointer resolves to marc_arcs.arcs_pointer_sorted.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xDA11E8EDEBB932FE)
  %18 = load %struct.arc***, %struct.arc**** %arcs_pointer_sorted.addr, l148 c20
  (w64 0xDA11E8EDEBB932FE)
Collected value for `i`
  Assignment asm ln 2483, prod ln 148.40, live ln 149, enc 3
  %19 = load i64, i64* %i, l148 c40
  (w64 0x0)
Collected value for `positions`
  Assignment asm ln 2486, prod ln 148.5, live ln 149, enc 1
  Concrete pointer resolves to malloc.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) malloc.return.deref)
  Replaced concrete pointer with hash (w64 0xC6415B982A7466DD)
  %21 = load %struct.arc***, %struct.arc**** %positions, l148 c5
  (w64 0xC6415B982A7466DD)
Collected value for `i`
  Assignment asm ln 2487, prod ln 148.15, live ln 149, enc 4
  %22 = load i64, i64* %i, l148 c15
  (w64 0x0)
Collected value for `values`
  Assignment asm ln 2490, prod ln 149.5, live ln 150, enc 1
  Concrete pointer resolves to malloc.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) malloc.return.deref_1)
  Replaced concrete pointer with hash (w64 0xC6415B982A7466DD)
  %23 = load i64*, i64** %values, l149 c5
  (w64 0xC6415B982A7466DD)
Collected value for `i`
  Assignment asm ln 2491, prod ln 149.12, live ln 150, enc 5
  %24 = load i64, i64* %i, l149 c12
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 2494, prod ln 146.31, live ln 147, enc 6
  %25 = load i64, i64* %i, l146 c31
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 2496, prod ln 146.31, live ln 147, enc 7
  %inc = add nsw i64 %25, 1, l146 c31
  (w64 0x1)
Collected value for `net`
  Assignment asm ln 2500, prod ln 153.14, live ln 154, enc 4
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %26 = load %struct.network*, %struct.network** %net.addr, l153 c14
  (w64 0x19F61B371798B58A)
Collected value for `start_id`
  Assignment asm ln 2503, prod ln 153.19, live ln 154, enc 0
  %27 = load i64, i64* %m, l153 c19
  (ReadLSB w64 (w32 0x1A8) marc_arcs.net.deref)
Collected value for `global_new`
  Assignment asm ln 2507, prod ln 154.9, live ln 155, enc 1
  %28 = load i64, i64* %global_new, l154 c9
  (w64 0x0)
Collected value for `new_arcs`
  Assignment asm ln 2508, prod ln 154.23, live ln 155, enc 3
  Concrete pointer resolves to marc_arcs.new_arcs.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.new_arcs_array.deref)
  Replaced concrete pointer with hash (w64 0x879E370389B1A9AF)
  %29 = load i64*, i64** %new_arcs.addr, l154 c23
  (w64 0x879E370389B1A9AF)
Collected value for `global_new`
  Assignment asm ln 2511, prod ln 154.32, live ln 155, enc 2
  %31 = load i64, i64* %global_new, l154 c32
  (w64 0x0)
Collected value for `max_new_arcs`
  Assignment asm ln 2512, prod ln 154.32, live ln 155, enc 2
  %32 = load i64, i64* %max_new_arcs, l154 c32
  (Add w64 (w64 0xFFFFFFFFFFC2F700)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
Collected value for `values`
  Assignment asm ln 2518, prod ln 155.9, live ln 156, enc 2
  Concrete pointer resolves to malloc.return.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xC6415B982A7466DD)
  %34 = load i64*, i64** %values, l155 c9
  (w64 0xC6415B982A7466DD)
Collected value for `new_arcs`
  Assignment asm ln 2622, prod ln 183.4, live ln 184, enc 4
  Concrete pointer resolves to marc_arcs.new_arcs.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.new_arcs_array.deref)
  Replaced concrete pointer with hash (w64 0x879E370389B1A9AF)
  %69 = load i64*, i64** %new_arcs.addr, l183 c4
  (w64 0x879E370389B1A9AF)
Collected value for `i`
  Assignment asm ln 2624, prod ln 184.10, live ln 185, enc 8
  i64 0
  (w64 0x0)
Collected value for `new_arcs_array`
  Assignment asm ln 2521, prod ln 155.21, live ln 156, enc 2
  Concrete pointer resolves to marc_arcs.new_arcs_array.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.new_arcs_array.deref)
  Replaced concrete pointer with hash (w64 0x59D35653871435B0)
  %36 = load i64*, i64** %new_arcs_array.addr, l155 c21
  (w64 0x59D35653871435B0)
Collected value for `i`
  Assignment asm ln 2628, prod ln 184.15, live ln 185, enc 9
  %70 = load i64, i64* %i, l184 c15
  (w64 0x0)
Collected value for `num_threads`
  Assignment asm ln 2629, prod ln 184.18, live ln 185, enc 4
  %71 = load i64, i64* %num_threads, l184 c18
  (w64 0x1)
Collected value for `values`
  Assignment asm ln 2634, prod ln 185.18, live ln 186, enc 3
  Concrete pointer resolves to malloc.return.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xC6415B982A7466DD)
  %72 = load i64*, i64** %values, l185 c18
  (w64 0xC6415B982A7466DD)
Collected value for `i`
  Assignment asm ln 2635, prod ln 185.25, live ln 186, enc 10
  %73 = load i64, i64* %i, l185 c25
  (w64 0x0)
Collected value for `new_arcs`
  Assignment asm ln 2638, prod ln 185.6, live ln 186, enc 5
  Concrete pointer resolves to marc_arcs.new_arcs.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x879E370389B1A9AF)
  %75 = load i64*, i64** %new_arcs.addr, l185 c6
  (w64 0x879E370389B1A9AF)
Collected value for `i`
  Assignment asm ln 2642, prod ln 184.32, live ln 185, enc 11
  %77 = load i64, i64* %i, l184 c32
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 2644, prod ln 184.32, live ln 185, enc 12
  %inc45 = add nsw i64 %77, 1, l184 c32
  (w64 0x1)
Collected value for `positions`
  Assignment asm ln 2528, prod ln 156.20, live ln 157, enc 2
  Concrete pointer resolves to malloc.return.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xC6415B982A7466DD)
  %38 = load %struct.arc***, %struct.arc**** %positions, l156 c20
  (w64 0xC6415B982A7466DD)
[0;1;31mKLEE: ERROR: implicit.c:156: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `net`
  Assignment asm ln 2648, prod ln 187.3, live ln 188, enc 5
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %78 = load %struct.network*, %struct.network** %net.addr, l187 c3
  (w64 0x19F61B371798B58A)
Collected value for `new_arcs`
  Assignment asm ln 2651, prod ln 188.23, live ln 189, enc 6
  Concrete pointer resolves to marc_arcs.new_arcs.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x879E370389B1A9AF)
  %79 = load i64*, i64** %new_arcs.addr, l188 c23
  (w64 0x879E370389B1A9AF)
Collected value for `net`
  Assignment asm ln 2653, prod ln 188.34, live ln 189, enc 6
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %81 = load %struct.network*, %struct.network** %net.addr, l188 c34
  (w64 0x19F61B371798B58A)
Collected value for `net`
  Assignment asm ln 2660, prod ln 188.3, live ln 189, enc 7
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %83 = load %struct.network*, %struct.network** %net.addr, l188 c3
  (w64 0x19F61B371798B58A)
Collected value for `new_arcs`
  Assignment asm ln 2663, prod ln 189.9, live ln 190, enc 7
  Concrete pointer resolves to marc_arcs.new_arcs.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x879E370389B1A9AF)
  %84 = load i64*, i64** %new_arcs.addr, l189 c9
  (w64 0x879E370389B1A9AF)
Collected value for `net`
  Assignment asm ln 2665, prod ln 189.20, live ln 190, enc 8
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %86 = load %struct.network*, %struct.network** %net.addr, l189 c20
  (w64 0x19F61B371798B58A)
Collected value for `net`
  Assignment asm ln 2674, prod ln 190.26, live ln 191, enc 9
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %88 = load %struct.network*, %struct.network** %net.addr, l190 c26
  (w64 0x19F61B371798B58A)
Collected value for `net`
  Assignment asm ln 2692, prod ln 192.26, live ln 193, enc 10
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %95 = load %struct.network*, %struct.network** %net.addr, l192 c26
  (w64 0x19F61B371798B58A)
Collected value for `new_arcs`
  Assignment asm ln 2677, prod ln 190.50, live ln 191, enc 8
  Concrete pointer resolves to marc_arcs.new_arcs.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x879E370389B1A9AF)
  %90 = load i64*, i64** %new_arcs.addr, l190 c50
  (w64 0x879E370389B1A9AF)
Collected value for `net`
  Assignment asm ln 2679, prod ln 190.61, live ln 191, enc 11
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %92 = load %struct.network*, %struct.network** %net.addr, l190 c61
  (w64 0x19F61B371798B58A)
Collected value for `net`
  Assignment asm ln 2695, prod ln 192.7, live ln 193, enc 12
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %97 = load %struct.network*, %struct.network** %net.addr, l192 c7
  (w64 0x19F61B371798B58A)
Collected value for `net`
  Assignment asm ln 2704, prod ln 193.10, live ln 194, enc 13
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %98 = load %struct.network*, %struct.network** %net.addr, l193 c10
  (w64 0x19F61B371798B58A)
Collected value for `net`
  Assignment asm ln 2711, prod ln 194.24, live ln 195, enc 14
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %100 = load %struct.network*, %struct.network** %net.addr, l194 c24
  (w64 0x19F61B371798B58A)
Collected value for `positions`
  Assignment asm ln 2729, prod ln 198.10, live ln 199, enc 3
  Concrete pointer resolves to malloc.return.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xC6415B982A7466DD)
  %107 = load %struct.arc***, %struct.arc**** %positions, l198 c10
  (w64 0xC6415B982A7466DD)
Collected value for `net`
  Assignment asm ln 2686, prod ln 190.7, live ln 191, enc 15
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %94 = load %struct.network*, %struct.network** %net.addr, l190 c7
  (w64 0x19F61B371798B58A)
Collected value for `net`
  Assignment asm ln 2714, prod ln 194.40, live ln 195, enc 16
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %102 = load %struct.network*, %struct.network** %net.addr, l194 c40
  (w64 0x19F61B371798B58A)
Collected value for `values`
  Assignment asm ln 2732, prod ln 199.10, live ln 200, enc 4
  Concrete pointer resolves to malloc.return.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xC6415B982A7466DD)
  %109 = load i64*, i64** %values, l199 c10
  (w64 0xC6415B982A7466DD)
Collected value for `net`
  Assignment asm ln 2718, prod ln 194.5, live ln 195, enc 17
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %104 = load %struct.network*, %struct.network** %net.addr, l194 c5
  (w64 0x19F61B371798B58A)
Collected value for `net`
  Assignment asm ln 2721, prod ln 195.5, live ln 196, enc 18
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %105 = load %struct.network*, %struct.network** %net.addr, l195 c5
  (w64 0x19F61B371798B58A)
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
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

Collected value for `net`
  Assignment asm ln 1850, prod ln 111.0, live ln 135, enc 0
  Concrete pointer resolves to marc_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0x19F61B371798B58A)
  %struct.network.2* %net
  (w64 0x19F61B371798B58A)
Collected value for `new_arcs`
  Assignment asm ln 1851, prod ln 111.0, live ln 135, enc 0
  Concrete pointer resolves to marc_arcs.new_arcs.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.new_arcs.deref)
  Replaced concrete pointer with hash (w64 0x879E370389B1A9AF)
  i64* %new_arcs
  (w64 0x879E370389B1A9AF)
Collected value for `new_arcs_array`
  Assignment asm ln 1852, prod ln 111.0, live ln 135, enc 0
  Concrete pointer resolves to marc_arcs.new_arcs_array.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) marc_arcs.new_arcs_array.deref)
  Replaced concrete pointer with hash (w64 0x59D35653871435B0)
  i64* %new_arcs_array
  (w64 0x59D35653871435B0)
Collected value for `arcs_pointer_sorted`
  Assignment asm ln 1853, prod ln 111.0, live ln 135, enc 0
  Concrete pointer resolves to marc_arcs.arcs_pointer_sorted.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xDA11E8EDEBB932FE)
  %struct.arc.0*** %arcs_pointer_sorted
  (w64 0xDA11E8EDEBB932FE)
Collected value for `global_new`
  Assignment asm ln 1854, prod ln 124.0, live ln 135, enc 0
  i64 0
  (w64 0x0)
Collected value for `best_pos`
  Assignment asm ln 1855, prod ln 125.0, live ln 135, enc 0
  i64 0
  (w64 0x0)
Collected value for `num_threads`
  Assignment asm ln 1857, prod ln 132.0, live ln 135, enc 0
  i64 1
  (w64 0x1)
Collected value for `positions`
  Assignment asm ln 1861, prod ln 135.15, live ln 136, enc 0
  Concrete pointer resolves to malloc.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) malloc.return.deref)
  Replaced concrete pointer with hash (w64 0xC6415B982A7466DD)
  %0 = bitcast i8* %call to %struct.arc.0***, l135 c15
  (w64 0xC6415B982A7466DD)
Collected value for `values`
  Assignment asm ln 1865, prod ln 136.12, live ln 138, enc 0
  Concrete pointer resolves to malloc.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) malloc.return.deref_1)
  Replaced concrete pointer with hash (w64 0xC6415B982A7466DD)
  %1 = bitcast i8* %call2 to i64*, l136 c12
  (w64 0xC6415B982A7466DD)
Collected value for `max_new_arcs`
  Assignment asm ln 1882, prod ln 141.44, live ln 142, enc 0
  %sub4 = sub nsw i64 %4, 4000000, l141 c44
  (Add w64 (w64 0xFFFFFFFFFFC2F700)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
Collected value for `max_new_arcs`
  Assignment asm ln 1875, prod ln 139.44, live ln 140, enc 1
  %sub = sub nsw i64 %3, 1000000, l139 c44
  (Add w64 (w64 0xFFFFFFFFFFF0BDC0)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
Collected value for `max_new_arcs`
  Assignment asm ln 1887, prod ln 141.44, live ln 143, enc 2
  %max_new_arcs.0 = phi i64 [ %sub, %if.then ], [ %sub4, %if.else ]
  Block: 1
  (Add w64 (w64 0xFFFFFFFFFFC2F700)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
Collected value for `i`
  Assignment asm ln 1889, prod ln 126.0, live ln 146, enc 0
  i64 0
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 1894, prod ln 146.31, live ln 147, enc 1
  %i.0 = phi i64 [ 0, %if.end ], [ %inc, %for.body ]
  Block: 0
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 1911, prod ln 146.31, live ln 147, enc 2
  %inc = add nsw i64 %i.0, 1, l146 c31
  (w64 0x1)
Collected value for `start_id`
  Assignment asm ln 1917, prod ln 153.19, live ln 154, enc 0
  %8 = load i64, i64* %m, l153 c19
  (ReadLSB w64 (w32 0x1A8) marc_arcs.net.deref)
Collected value for `start_id`
  Assignment asm ln 1924, prod ln 170.27, live ln 171, enc 1
  %start_id.0 = phi i64 [ %8, %for.end ], [ %inc33, %for.end32 ]
  Block: 0
  (ReadLSB w64 (w32 0x1A8) marc_arcs.net.deref)
Collected value for `best_pos`
  Assignment asm ln 1925, prod ln 125.0, live ln 154, enc 1
  %best_pos.0 = phi i64 [ 0, %for.end ], [ %best_pos.2, %for.end32 ]
  Block: 0
  (w64 0x0)
Collected value for `global_new`
  Assignment asm ln 1926, prod ln 172.19, live ln 173, enc 1
  %global_new.0 = phi i64 [ 0, %for.end ], [ %inc34, %for.end32 ]
  Block: 0
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 2026, prod ln 126.0, live ln 184, enc 3
  i64 0
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 2031, prod ln 184.32, live ln 185, enc 4
  %i.2 = phi i64 [ 0, %while.end ], [ %inc45, %for.body41 ]
  Block: 0
  (w64 0x0)
[0;1;31mKLEE: ERROR: implicit.c:156: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `i`
  Assignment asm ln 2042, prod ln 184.32, live ln 185, enc 5
  %inc45 = add nsw i64 %i.2, 1, l184 c32
  (w64 0x1)
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

#### Variables with single memory location

✅ Variable `arc` uses only a single memory location (via `dbg.declare`), skipping further checks
Assignments:         arc
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

#### Collation

Filtering before assignments: `arcs_pointer_sorted` (decl src ln 111)

Checking equivalence of `arcs_pointer_sorted` (decl src ln 111) from
  assn asm ln 2482, prod ln 148.20, live ln 149, enc 1
  %18 = load %struct.arc***, %struct.arc**** %arcs_pointer_sorted.addr, l148 c20
  (w64 0xDA11E8EDEBB932FE)
and
  assn asm ln 2415, prod ln 111.0, live ln 124, enc 0
  %struct.arc*** %arcs_pointer_sorted
  (w64 0xDA11E8EDEBB932FE)
🔔 Removing: asm ln 2482, prod ln 148.20, live ln 149, enc 1

Filtering before assignments: `best_pos` (decl src ln 125)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `best_pos` (decl src ln 125) from
  assn asm ln 2608, prod ln 173.19, live ln 174, enc None
  %64 = load i64, i64* %best_pos, l173 c19
and
  assn asm ln 2614, prod ln 174.16, live ln 175, enc None
  %67 = load i64, i64* %best_pos, l174 c16
🔔 Removing: asm ln 2608, prod ln 173.19, live ln 174, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `best_pos` (decl src ln 125) from
  assn asm ln 2584, prod ln 165.28, live ln 166, enc None
  %57 = load i64, i64* %i, l165 c28
and
  assn asm ln 2614, prod ln 174.16, live ln 175, enc None
  %67 = load i64, i64* %best_pos, l174 c16
🔔 Removing: asm ln 2584, prod ln 165.28, live ln 166, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `best_pos` (decl src ln 125) from
  assn asm ln 2533, prod ln 157.22, live ln 158, enc None
  i64 0
and
  assn asm ln 2614, prod ln 174.16, live ln 175, enc None
  %67 = load i64, i64* %best_pos, l174 c16
🔔 Removing: asm ln 2533, prod ln 157.22, live ln 158, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `best_pos` (decl src ln 125) from
  assn asm ln 2423, prod ln 125.8, live ln 132, enc 0
  i64 0
and
  assn asm ln 2614, prod ln 174.16, live ln 175, enc None
  %67 = load i64, i64* %best_pos, l174 c16

Filtering before assignments: `global_new` (decl src ln 124)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `global_new` (decl src ln 124) from
  assn asm ln 2604, prod ln 172.19, live ln 173, enc None
  %62 = load i64, i64* %global_new, l172 c19
and
  assn asm ln 2606, prod ln 172.19, live ln 173, enc None
  %inc34 = add nsw i64 %62, 1, l172 c19
🔔 Removing: asm ln 2604, prod ln 172.19, live ln 173, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `global_new` (decl src ln 124) from
  assn asm ln 2421, prod ln 124.8, live ln 125, enc 0
  i64 0
and
  assn asm ln 2606, prod ln 172.19, live ln 173, enc None
  %inc34 = add nsw i64 %62, 1, l172 c19

Checking equivalence of `global_new` (decl src ln 124) from
  assn asm ln 2507, prod ln 154.9, live ln 155, enc 1
  %28 = load i64, i64* %global_new, l154 c9
  (w64 0x0)
and
  assn asm ln 2421, prod ln 124.8, live ln 125, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2507, prod ln 154.9, live ln 155, enc 1

Checking equivalence of `global_new` (decl src ln 124) from
  assn asm ln 2511, prod ln 154.32, live ln 155, enc 2
  %31 = load i64, i64* %global_new, l154 c32
  (w64 0x0)
and
  assn asm ln 2421, prod ln 124.8, live ln 125, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2511, prod ln 154.32, live ln 155, enc 2

Filtering before assignments: `i` (decl src ln 126)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2541, prod ln 162.16, live ln 163, enc None
  i64 1
and
  assn asm ln 2552, prod ln 163.25, live ln 164, enc None
  %44 = load i64, i64* %i, l163 c25
🔔 Removing: asm ln 2541, prod ln 162.16, live ln 163, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2545, prod ln 162.21, live ln 163, enc None
  %41 = load i64, i64* %i, l162 c21
and
  assn asm ln 2552, prod ln 163.25, live ln 164, enc None
  %44 = load i64, i64* %i, l163 c25
🔔 Removing: asm ln 2545, prod ln 162.21, live ln 163, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2556, prod ln 163.45, live ln 164, enc None
  %47 = load i64, i64* %i, l163 c45
and
  assn asm ln 2552, prod ln 163.25, live ln 164, enc None
  %44 = load i64, i64* %i, l163 c25
🔔 Removing: asm ln 2556, prod ln 163.45, live ln 164, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2569, prod ln 163.85, live ln 164, enc None
  %51 = load i64, i64* %i, l163 c85
and
  assn asm ln 2552, prod ln 163.25, live ln 164, enc None
  %44 = load i64, i64* %i, l163 c25
🔔 Removing: asm ln 2569, prod ln 163.85, live ln 164, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2590, prod ln 162.39, live ln 163, enc None
  %inc31 = add nsw i64 %58, 1, l162 c39
and
  assn asm ln 2552, prod ln 163.25, live ln 164, enc None
  %44 = load i64, i64* %i, l163 c25
🔔 Removing: asm ln 2590, prod ln 162.39, live ln 163, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2588, prod ln 162.39, live ln 163, enc None
  %58 = load i64, i64* %i, l162 c39
and
  assn asm ln 2552, prod ln 163.25, live ln 164, enc None
  %44 = load i64, i64* %i, l163 c25
🔔 Removing: asm ln 2588, prod ln 162.39, live ln 163, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2583, prod ln 165.28, live ln 166, enc None
  %57 = load i64, i64* %i, l165 c28
and
  assn asm ln 2552, prod ln 163.25, live ln 164, enc None
  %44 = load i64, i64* %i, l163 c25
🔔 Removing: asm ln 2583, prod ln 165.28, live ln 166, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2578, prod ln 164.34, live ln 165, enc None
  %54 = load i64, i64* %i, l164 c34
and
  assn asm ln 2552, prod ln 163.25, live ln 164, enc None
  %44 = load i64, i64* %i, l163 c25
🔔 Removing: asm ln 2578, prod ln 164.34, live ln 165, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2464, prod ln 146.9, live ln 147, enc 0
  i64 0
and
  assn asm ln 2552, prod ln 163.25, live ln 164, enc None
  %44 = load i64, i64* %i, l163 c25

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2468, prod ln 146.14, live ln 147, enc 1
  %11 = load i64, i64* %i, l146 c14
  (w64 0x0)
and
  assn asm ln 2464, prod ln 146.9, live ln 147, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2468, prod ln 146.14, live ln 147, enc 1

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2475, prod ln 147.33, live ln 148, enc 2
  %14 = load i64, i64* %i, l147 c33
  (w64 0x0)
and
  assn asm ln 2464, prod ln 146.9, live ln 147, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2475, prod ln 147.33, live ln 148, enc 2

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2483, prod ln 148.40, live ln 149, enc 3
  %19 = load i64, i64* %i, l148 c40
  (w64 0x0)
and
  assn asm ln 2464, prod ln 146.9, live ln 147, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2483, prod ln 148.40, live ln 149, enc 3

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2487, prod ln 148.15, live ln 149, enc 4
  %22 = load i64, i64* %i, l148 c15
  (w64 0x0)
and
  assn asm ln 2464, prod ln 146.9, live ln 147, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2487, prod ln 148.15, live ln 149, enc 4

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2491, prod ln 149.12, live ln 150, enc 5
  %24 = load i64, i64* %i, l149 c12
  (w64 0x0)
and
  assn asm ln 2464, prod ln 146.9, live ln 147, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2491, prod ln 149.12, live ln 150, enc 5

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2494, prod ln 146.31, live ln 147, enc 6
  %25 = load i64, i64* %i, l146 c31
  (w64 0x0)
and
  assn asm ln 2464, prod ln 146.9, live ln 147, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2494, prod ln 146.31, live ln 147, enc 6

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2496, prod ln 146.31, live ln 147, enc 7
  %inc = add nsw i64 %25, 1, l146 c31
  (w64 0x1)
and
  assn asm ln 2464, prod ln 146.9, live ln 147, enc 0
  i64 0
  (w64 0x0)

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2624, prod ln 184.10, live ln 185, enc 8
  i64 0
  (w64 0x0)
and
  assn asm ln 2496, prod ln 146.31, live ln 147, enc 7
  %inc = add nsw i64 %25, 1, l146 c31
  (w64 0x1)

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2628, prod ln 184.15, live ln 185, enc 9
  %70 = load i64, i64* %i, l184 c15
  (w64 0x0)
and
  assn asm ln 2624, prod ln 184.10, live ln 185, enc 8
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2628, prod ln 184.15, live ln 185, enc 9

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2635, prod ln 185.25, live ln 186, enc 10
  %73 = load i64, i64* %i, l185 c25
  (w64 0x0)
and
  assn asm ln 2624, prod ln 184.10, live ln 185, enc 8
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2635, prod ln 185.25, live ln 186, enc 10

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2642, prod ln 184.32, live ln 185, enc 11
  %77 = load i64, i64* %i, l184 c32
  (w64 0x0)
and
  assn asm ln 2624, prod ln 184.10, live ln 185, enc 8
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2642, prod ln 184.32, live ln 185, enc 11

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2644, prod ln 184.32, live ln 185, enc 12
  %inc45 = add nsw i64 %77, 1, l184 c32
  (w64 0x1)
and
  assn asm ln 2624, prod ln 184.10, live ln 185, enc 8
  i64 0
  (w64 0x0)

Filtering before assignments: `max_new_arcs` (decl src ln 121)

Checking equivalence of `max_new_arcs` (decl src ln 121) from
  assn asm ln 2450, prod ln 139.44, live ln 140, enc 1
  %sub = sub nsw i64 %7, 1000000, l139 c44
  (Add w64 (w64 0xFFFFFFFFFFF0BDC0)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
and
  assn asm ln 2458, prod ln 141.44, live ln 142, enc 0
  %sub4 = sub nsw i64 %9, 4000000, l141 c44
  (Add w64 (w64 0xFFFFFFFFFFC2F700)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
Query to parse
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0xFFFFFFFFFFF0BDC0)
              N0:(ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
     (Add w64 (w64 0xFFFFFFFFFFC2F700) N0)))
Parsed query
(Eq (Add w64 (w64 0xFFFFFFFFFFF0BDC0)
              N0:(ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
     (Add w64 (w64 0xFFFFFFFFFFC2F700) N0))

Checking equivalence of `max_new_arcs` (decl src ln 121) from
  assn asm ln 2512, prod ln 154.32, live ln 155, enc 2
  %32 = load i64, i64* %max_new_arcs, l154 c32
  (Add w64 (w64 0xFFFFFFFFFFC2F700)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
and
  assn asm ln 2450, prod ln 139.44, live ln 140, enc 1
  %sub = sub nsw i64 %7, 1000000, l139 c44
  (Add w64 (w64 0xFFFFFFFFFFF0BDC0)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
Query to parse
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0xFFFFFFFFFFC2F700)
              N0:(ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
     (Add w64 (w64 0xFFFFFFFFFFF0BDC0) N0)))
Parsed query
(Eq (Add w64 (w64 0xFFFFFFFFFFC2F700)
              N0:(ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
     (Add w64 (w64 0xFFFFFFFFFFF0BDC0) N0))

Filtering before assignments: `net` (decl src ln 111)

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2439, prod ln 138.7, live ln 139, enc 1
  %4 = load %struct.network*, %struct.network** %net.addr, l138 c7
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2439, prod ln 138.7, live ln 139, enc 1

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2454, prod ln 141.20, live ln 142, enc 2
  %8 = load %struct.network*, %struct.network** %net.addr, l141 c20
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2454, prod ln 141.20, live ln 142, enc 2

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2446, prod ln 139.20, live ln 140, enc 3
  %6 = load %struct.network*, %struct.network** %net.addr, l139 c20
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2446, prod ln 139.20, live ln 140, enc 3

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2500, prod ln 153.14, live ln 154, enc 4
  %26 = load %struct.network*, %struct.network** %net.addr, l153 c14
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2500, prod ln 153.14, live ln 154, enc 4

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2648, prod ln 187.3, live ln 188, enc 5
  %78 = load %struct.network*, %struct.network** %net.addr, l187 c3
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2648, prod ln 187.3, live ln 188, enc 5

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2653, prod ln 188.34, live ln 189, enc 6
  %81 = load %struct.network*, %struct.network** %net.addr, l188 c34
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2653, prod ln 188.34, live ln 189, enc 6

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2660, prod ln 188.3, live ln 189, enc 7
  %83 = load %struct.network*, %struct.network** %net.addr, l188 c3
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2660, prod ln 188.3, live ln 189, enc 7

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2665, prod ln 189.20, live ln 190, enc 8
  %86 = load %struct.network*, %struct.network** %net.addr, l189 c20
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2665, prod ln 189.20, live ln 190, enc 8

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2674, prod ln 190.26, live ln 191, enc 9
  %88 = load %struct.network*, %struct.network** %net.addr, l190 c26
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2674, prod ln 190.26, live ln 191, enc 9

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2692, prod ln 192.26, live ln 193, enc 10
  %95 = load %struct.network*, %struct.network** %net.addr, l192 c26
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2692, prod ln 192.26, live ln 193, enc 10

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2679, prod ln 190.61, live ln 191, enc 11
  %92 = load %struct.network*, %struct.network** %net.addr, l190 c61
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2679, prod ln 190.61, live ln 191, enc 11

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2695, prod ln 192.7, live ln 193, enc 12
  %97 = load %struct.network*, %struct.network** %net.addr, l192 c7
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2695, prod ln 192.7, live ln 193, enc 12

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2704, prod ln 193.10, live ln 194, enc 13
  %98 = load %struct.network*, %struct.network** %net.addr, l193 c10
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2704, prod ln 193.10, live ln 194, enc 13

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2711, prod ln 194.24, live ln 195, enc 14
  %100 = load %struct.network*, %struct.network** %net.addr, l194 c24
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2711, prod ln 194.24, live ln 195, enc 14

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2686, prod ln 190.7, live ln 191, enc 15
  %94 = load %struct.network*, %struct.network** %net.addr, l190 c7
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2686, prod ln 190.7, live ln 191, enc 15

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2714, prod ln 194.40, live ln 195, enc 16
  %102 = load %struct.network*, %struct.network** %net.addr, l194 c40
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2714, prod ln 194.40, live ln 195, enc 16

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2718, prod ln 194.5, live ln 195, enc 17
  %104 = load %struct.network*, %struct.network** %net.addr, l194 c5
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2718, prod ln 194.5, live ln 195, enc 17

Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 2721, prod ln 195.5, live ln 196, enc 18
  %105 = load %struct.network*, %struct.network** %net.addr, l195 c5
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
🔔 Removing: asm ln 2721, prod ln 195.5, live ln 196, enc 18

Filtering before assignments: `new_arcs` (decl src ln 111)

Checking equivalence of `new_arcs` (decl src ln 111) from
  assn asm ln 2462, prod ln 143.4, live ln 144, enc 1
  %10 = load i64*, i64** %new_arcs.addr, l143 c4
  (w64 0x879E370389B1A9AF)
and
  assn asm ln 2411, prod ln 111.0, live ln 124, enc 0
  i64* %new_arcs
  (w64 0x879E370389B1A9AF)
🔔 Removing: asm ln 2462, prod ln 143.4, live ln 144, enc 1

Checking equivalence of `new_arcs` (decl src ln 111) from
  assn asm ln 2478, prod ln 147.6, live ln 148, enc 2
  %16 = load i64*, i64** %new_arcs.addr, l147 c6
  (w64 0x879E370389B1A9AF)
and
  assn asm ln 2411, prod ln 111.0, live ln 124, enc 0
  i64* %new_arcs
  (w64 0x879E370389B1A9AF)
🔔 Removing: asm ln 2478, prod ln 147.6, live ln 148, enc 2

Checking equivalence of `new_arcs` (decl src ln 111) from
  assn asm ln 2508, prod ln 154.23, live ln 155, enc 3
  %29 = load i64*, i64** %new_arcs.addr, l154 c23
  (w64 0x879E370389B1A9AF)
and
  assn asm ln 2411, prod ln 111.0, live ln 124, enc 0
  i64* %new_arcs
  (w64 0x879E370389B1A9AF)
🔔 Removing: asm ln 2508, prod ln 154.23, live ln 155, enc 3

Checking equivalence of `new_arcs` (decl src ln 111) from
  assn asm ln 2622, prod ln 183.4, live ln 184, enc 4
  %69 = load i64*, i64** %new_arcs.addr, l183 c4
  (w64 0x879E370389B1A9AF)
and
  assn asm ln 2411, prod ln 111.0, live ln 124, enc 0
  i64* %new_arcs
  (w64 0x879E370389B1A9AF)
🔔 Removing: asm ln 2622, prod ln 183.4, live ln 184, enc 4

Checking equivalence of `new_arcs` (decl src ln 111) from
  assn asm ln 2638, prod ln 185.6, live ln 186, enc 5
  %75 = load i64*, i64** %new_arcs.addr, l185 c6
  (w64 0x879E370389B1A9AF)
and
  assn asm ln 2411, prod ln 111.0, live ln 124, enc 0
  i64* %new_arcs
  (w64 0x879E370389B1A9AF)
🔔 Removing: asm ln 2638, prod ln 185.6, live ln 186, enc 5

Checking equivalence of `new_arcs` (decl src ln 111) from
  assn asm ln 2651, prod ln 188.23, live ln 189, enc 6
  %79 = load i64*, i64** %new_arcs.addr, l188 c23
  (w64 0x879E370389B1A9AF)
and
  assn asm ln 2411, prod ln 111.0, live ln 124, enc 0
  i64* %new_arcs
  (w64 0x879E370389B1A9AF)
🔔 Removing: asm ln 2651, prod ln 188.23, live ln 189, enc 6

Checking equivalence of `new_arcs` (decl src ln 111) from
  assn asm ln 2663, prod ln 189.9, live ln 190, enc 7
  %84 = load i64*, i64** %new_arcs.addr, l189 c9
  (w64 0x879E370389B1A9AF)
and
  assn asm ln 2411, prod ln 111.0, live ln 124, enc 0
  i64* %new_arcs
  (w64 0x879E370389B1A9AF)
🔔 Removing: asm ln 2663, prod ln 189.9, live ln 190, enc 7

Checking equivalence of `new_arcs` (decl src ln 111) from
  assn asm ln 2677, prod ln 190.50, live ln 191, enc 8
  %90 = load i64*, i64** %new_arcs.addr, l190 c50
  (w64 0x879E370389B1A9AF)
and
  assn asm ln 2411, prod ln 111.0, live ln 124, enc 0
  i64* %new_arcs
  (w64 0x879E370389B1A9AF)
🔔 Removing: asm ln 2677, prod ln 190.50, live ln 191, enc 8

Filtering before assignments: `new_arcs_array` (decl src ln 111)

Expected 1 symbolic value(s), got 0
Checking equivalence of `new_arcs_array` (decl src ln 111) from
  assn asm ln 2413, prod ln 111.0, live ln 124, enc 0
  i64* %new_arcs_array
and
  assn asm ln 2555, prod ln 163.30, live ln 164, enc None
  %46 = load i64*, i64** %new_arcs_array.addr, l163 c30

Checking equivalence of `new_arcs_array` (decl src ln 111) from
  assn asm ln 2474, prod ln 147.18, live ln 148, enc 1
  %13 = load i64*, i64** %new_arcs_array.addr, l147 c18
  (w64 0x59D35653871435B0)
and
  assn asm ln 2413, prod ln 111.0, live ln 124, enc 0
  i64* %new_arcs_array
  (w64 0x59D35653871435B0)
🔔 Removing: asm ln 2474, prod ln 147.18, live ln 148, enc 1

Checking equivalence of `new_arcs_array` (decl src ln 111) from
  assn asm ln 2521, prod ln 155.21, live ln 156, enc 2
  %36 = load i64*, i64** %new_arcs_array.addr, l155 c21
  (w64 0x59D35653871435B0)
and
  assn asm ln 2413, prod ln 111.0, live ln 124, enc 0
  i64* %new_arcs_array
  (w64 0x59D35653871435B0)
🔔 Removing: asm ln 2521, prod ln 155.21, live ln 156, enc 2

Filtering before assignments: `num_threads` (decl src ln 132)

Expected 1 symbolic value(s), got 0
Checking equivalence of `num_threads` (decl src ln 132) from
  assn asm ln 2428, prod ln 132.8, live ln 135, enc 0
  i64 1
and
  assn asm ln 2546, prod ln 162.25, live ln 163, enc None
  %42 = load i64, i64* %num_threads, l162 c25

Checking equivalence of `num_threads` (decl src ln 132) from
  assn asm ln 2429, prod ln 135.32, live ln 136, enc 1
  %0 = load i64, i64* %num_threads, l135 c32
  (w64 0x1)
and
  assn asm ln 2428, prod ln 132.8, live ln 135, enc 0
  i64 1
  (w64 0x1)
🔔 Removing: asm ln 2429, prod ln 135.32, live ln 136, enc 1

Checking equivalence of `num_threads` (decl src ln 132) from
  assn asm ln 2434, prod ln 136.27, live ln 137, enc 2
  %2 = load i64, i64* %num_threads, l136 c27
  (w64 0x1)
and
  assn asm ln 2428, prod ln 132.8, live ln 135, enc 0
  i64 1
  (w64 0x1)
🔔 Removing: asm ln 2434, prod ln 136.27, live ln 137, enc 2

Checking equivalence of `num_threads` (decl src ln 132) from
  assn asm ln 2469, prod ln 146.17, live ln 147, enc 3
  %12 = load i64, i64* %num_threads, l146 c17
  (w64 0x1)
and
  assn asm ln 2428, prod ln 132.8, live ln 135, enc 0
  i64 1
  (w64 0x1)
🔔 Removing: asm ln 2469, prod ln 146.17, live ln 147, enc 3

Checking equivalence of `num_threads` (decl src ln 132) from
  assn asm ln 2629, prod ln 184.18, live ln 185, enc 4
  %71 = load i64, i64* %num_threads, l184 c18
  (w64 0x1)
and
  assn asm ln 2428, prod ln 132.8, live ln 135, enc 0
  i64 1
  (w64 0x1)
🔔 Removing: asm ln 2629, prod ln 184.18, live ln 185, enc 4

Filtering before assignments: `positions` (decl src ln 122)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `positions` (decl src ln 122) from
  assn asm ln 2607, prod ln 173.9, live ln 174, enc None
  %63 = load %struct.arc***, %struct.arc**** %positions, l173 c9
and
  assn asm ln 2568, prod ln 163.75, live ln 164, enc None
  %50 = load %struct.arc***, %struct.arc**** %positions, l163 c75
🔔 Removing: asm ln 2607, prod ln 173.9, live ln 174, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `positions` (decl src ln 122) from
  assn asm ln 2577, prod ln 164.24, live ln 165, enc None
  %53 = load %struct.arc***, %struct.arc**** %positions, l164 c24
and
  assn asm ln 2568, prod ln 163.75, live ln 164, enc None
  %50 = load %struct.arc***, %struct.arc**** %positions, l163 c75
🔔 Removing: asm ln 2577, prod ln 164.24, live ln 165, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `positions` (decl src ln 122) from
  assn asm ln 2433, prod ln 135.15, live ln 136, enc 0
  %1 = bitcast i8* %call to %struct.arc***, l135 c15
and
  assn asm ln 2568, prod ln 163.75, live ln 164, enc None
  %50 = load %struct.arc***, %struct.arc**** %positions, l163 c75

Checking equivalence of `positions` (decl src ln 122) from
  assn asm ln 2486, prod ln 148.5, live ln 149, enc 1
  %21 = load %struct.arc***, %struct.arc**** %positions, l148 c5
  (w64 0xC6415B982A7466DD)
and
  assn asm ln 2433, prod ln 135.15, live ln 136, enc 0
  %1 = bitcast i8* %call to %struct.arc***, l135 c15
  (w64 0xC6415B982A7466DD)
🔔 Removing: asm ln 2486, prod ln 148.5, live ln 149, enc 1

Checking equivalence of `positions` (decl src ln 122) from
  assn asm ln 2528, prod ln 156.20, live ln 157, enc 2
  %38 = load %struct.arc***, %struct.arc**** %positions, l156 c20
  (w64 0xC6415B982A7466DD)
and
  assn asm ln 2433, prod ln 135.15, live ln 136, enc 0
  %1 = bitcast i8* %call to %struct.arc***, l135 c15
  (w64 0xC6415B982A7466DD)
🔔 Removing: asm ln 2528, prod ln 156.20, live ln 157, enc 2

Checking equivalence of `positions` (decl src ln 122) from
  assn asm ln 2729, prod ln 198.10, live ln 199, enc 3
  %107 = load %struct.arc***, %struct.arc**** %positions, l198 c10
  (w64 0xC6415B982A7466DD)
and
  assn asm ln 2433, prod ln 135.15, live ln 136, enc 0
  %1 = bitcast i8* %call to %struct.arc***, l135 c15
  (w64 0xC6415B982A7466DD)
🔔 Removing: asm ln 2729, prod ln 198.10, live ln 199, enc 3

Filtering before assignments: `start_id` (decl src ln 126)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `start_id` (decl src ln 126) from
  assn asm ln 2594, prod ln 170.27, live ln 171, enc None
  %59 = load i64, i64* %start_id, l170 c27
and
  assn asm ln 2596, prod ln 170.27, live ln 171, enc None
  %inc33 = add nsw i64 %59, 1, l170 c27
🔔 Removing: asm ln 2594, prod ln 170.27, live ln 171, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `start_id` (decl src ln 126) from
  assn asm ln 2503, prod ln 153.19, live ln 154, enc 0
  %27 = load i64, i64* %m, l153 c19
and
  assn asm ln 2596, prod ln 170.27, live ln 171, enc None
  %inc33 = add nsw i64 %59, 1, l170 c27

Filtering before assignments: `values` (decl src ln 123)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `values` (decl src ln 123) from
  assn asm ln 2613, prod ln 174.9, live ln 175, enc None
  %66 = load i64*, i64** %values, l174 c9
and
  assn asm ln 2551, prod ln 163.18, live ln 164, enc None
  %43 = load i64*, i64** %values, l163 c18
🔔 Removing: asm ln 2613, prod ln 174.9, live ln 175, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `values` (decl src ln 123) from
  assn asm ln 2438, prod ln 136.12, live ln 138, enc 0
  %3 = bitcast i8* %call2 to i64*, l136 c12
and
  assn asm ln 2551, prod ln 163.18, live ln 164, enc None
  %43 = load i64*, i64** %values, l163 c18

Checking equivalence of `values` (decl src ln 123) from
  assn asm ln 2490, prod ln 149.5, live ln 150, enc 1
  %23 = load i64*, i64** %values, l149 c5
  (w64 0xC6415B982A7466DD)
and
  assn asm ln 2438, prod ln 136.12, live ln 138, enc 0
  %3 = bitcast i8* %call2 to i64*, l136 c12
  (w64 0xC6415B982A7466DD)
🔔 Removing: asm ln 2490, prod ln 149.5, live ln 150, enc 1

Checking equivalence of `values` (decl src ln 123) from
  assn asm ln 2518, prod ln 155.9, live ln 156, enc 2
  %34 = load i64*, i64** %values, l155 c9
  (w64 0xC6415B982A7466DD)
and
  assn asm ln 2438, prod ln 136.12, live ln 138, enc 0
  %3 = bitcast i8* %call2 to i64*, l136 c12
  (w64 0xC6415B982A7466DD)
🔔 Removing: asm ln 2518, prod ln 155.9, live ln 156, enc 2

Checking equivalence of `values` (decl src ln 123) from
  assn asm ln 2634, prod ln 185.18, live ln 186, enc 3
  %72 = load i64*, i64** %values, l185 c18
  (w64 0xC6415B982A7466DD)
and
  assn asm ln 2438, prod ln 136.12, live ln 138, enc 0
  %3 = bitcast i8* %call2 to i64*, l136 c12
  (w64 0xC6415B982A7466DD)
🔔 Removing: asm ln 2634, prod ln 185.18, live ln 186, enc 3

Checking equivalence of `values` (decl src ln 123) from
  assn asm ln 2732, prod ln 199.10, live ln 200, enc 4
  %109 = load i64*, i64** %values, l199 c10
  (w64 0xC6415B982A7466DD)
and
  assn asm ln 2438, prod ln 136.12, live ln 138, enc 0
  %3 = bitcast i8* %call2 to i64*, l136 c12
  (w64 0xC6415B982A7466DD)
🔔 Removing: asm ln 2732, prod ln 199.10, live ln 200, enc 4

Filtering after assignments: `best_pos` (decl src ln 125)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `best_pos` (decl src ln 125) from
  assn asm ln 1946, prod ln 125.0, live ln 158, enc None
  i64 0
and
  assn asm ln 1955, prod ln 125.0, live ln 162, enc None
  %best_pos.1 = phi i64 [ 0, %if.then14 ], [ %best_pos.0, %if.else16 ]
🔔 Removing: asm ln 1946, prod ln 125.0, live ln 158, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `best_pos` (decl src ln 125) from
  assn asm ln 1992, prod ln 162.39, live ln 166, enc None
  %i.1 = phi i64 [ 1, %if.end17 ], [ %inc31, %for.inc30 ]
and
  assn asm ln 1955, prod ln 125.0, live ln 162, enc None
  %best_pos.1 = phi i64 [ 0, %if.then14 ], [ %best_pos.0, %if.else16 ]
🔔 Removing: asm ln 1992, prod ln 162.39, live ln 166, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `best_pos` (decl src ln 125) from
  assn asm ln 1997, prod ln 125.0, live ln 162, enc None
  %best_pos.3 = phi i64 [ %i.1, %if.then27 ], [ %best_pos.2, %lor.lhs.false ], [ %best_pos.2, %for.body20 ]
and
  assn asm ln 1955, prod ln 125.0, live ln 162, enc None
  %best_pos.1 = phi i64 [ 0, %if.then14 ], [ %best_pos.0, %if.else16 ]
🔔 Removing: asm ln 1997, prod ln 125.0, live ln 162, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `best_pos` (decl src ln 125) from
  assn asm ln 1963, prod ln 125.0, live ln 162, enc None
  %best_pos.2 = phi i64 [ %best_pos.1, %if.end17 ], [ %best_pos.3, %for.inc30 ]
and
  assn asm ln 1955, prod ln 125.0, live ln 162, enc None
  %best_pos.1 = phi i64 [ 0, %if.then14 ], [ %best_pos.0, %if.else16 ]
🔔 Removing: asm ln 1963, prod ln 125.0, live ln 162, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `best_pos` (decl src ln 125) from
  assn asm ln 1855, prod ln 125.0, live ln 135, enc 0
  i64 0
and
  assn asm ln 1955, prod ln 125.0, live ln 162, enc None
  %best_pos.1 = phi i64 [ 0, %if.then14 ], [ %best_pos.0, %if.else16 ]

Checking equivalence of `best_pos` (decl src ln 125) from
  assn asm ln 1925, prod ln 125.0, live ln 154, enc 1
  %best_pos.0 = phi i64 [ 0, %for.end ], [ %best_pos.2, %for.end32 ]
  (w64 0x0)
and
  assn asm ln 1855, prod ln 125.0, live ln 135, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 1925, prod ln 125.0, live ln 154, enc 1

Filtering after assignments: `global_new` (decl src ln 124)

Expected 1 symbolic value(s), got 0
Checking equivalence of `global_new` (decl src ln 124) from
  assn asm ln 1854, prod ln 124.0, live ln 135, enc 0
  i64 0
and
  assn asm ln 2013, prod ln 172.19, live ln 173, enc None
  %inc34 = add nsw i64 %global_new.0, 1, l172 c19

Checking equivalence of `global_new` (decl src ln 124) from
  assn asm ln 1926, prod ln 172.19, live ln 173, enc 1
  %global_new.0 = phi i64 [ 0, %for.end ], [ %inc34, %for.end32 ]
  (w64 0x0)
and
  assn asm ln 1854, prod ln 124.0, live ln 135, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 1926, prod ln 172.19, live ln 173, enc 1

Filtering after assignments: `i` (decl src ln 126)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 1999, prod ln 162.39, live ln 163, enc None
  %inc31 = add nsw i64 %i.1, 1, l162 c39
and
  assn asm ln 1956, prod ln 126.0, live ln 162, enc None
  i64 1
🔔 Removing: asm ln 1999, prod ln 162.39, live ln 163, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 1962, prod ln 162.39, live ln 163, enc None
  %i.1 = phi i64 [ 1, %if.end17 ], [ %inc31, %for.inc30 ]
and
  assn asm ln 1956, prod ln 126.0, live ln 162, enc None
  i64 1
🔔 Removing: asm ln 1962, prod ln 162.39, live ln 163, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 1889, prod ln 126.0, live ln 146, enc 0
  i64 0
and
  assn asm ln 1956, prod ln 126.0, live ln 162, enc None
  i64 1

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 1894, prod ln 146.31, live ln 147, enc 1
  %i.0 = phi i64 [ 0, %if.end ], [ %inc, %for.body ]
  (w64 0x0)
and
  assn asm ln 1889, prod ln 126.0, live ln 146, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 1894, prod ln 146.31, live ln 147, enc 1

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 1911, prod ln 146.31, live ln 147, enc 2
  %inc = add nsw i64 %i.0, 1, l146 c31
  (w64 0x1)
and
  assn asm ln 1889, prod ln 126.0, live ln 146, enc 0
  i64 0
  (w64 0x0)

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2026, prod ln 126.0, live ln 184, enc 3
  i64 0
  (w64 0x0)
and
  assn asm ln 1911, prod ln 146.31, live ln 147, enc 2
  %inc = add nsw i64 %i.0, 1, l146 c31
  (w64 0x1)

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2031, prod ln 184.32, live ln 185, enc 4
  %i.2 = phi i64 [ 0, %while.end ], [ %inc45, %for.body41 ]
  (w64 0x0)
and
  assn asm ln 2026, prod ln 126.0, live ln 184, enc 3
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2031, prod ln 184.32, live ln 185, enc 4

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2042, prod ln 184.32, live ln 185, enc 5
  %inc45 = add nsw i64 %i.2, 1, l184 c32
  (w64 0x1)
and
  assn asm ln 2026, prod ln 126.0, live ln 184, enc 3
  i64 0
  (w64 0x0)

Filtering after assignments: `max_new_arcs` (decl src ln 121)

Checking equivalence of `max_new_arcs` (decl src ln 121) from
  assn asm ln 1875, prod ln 139.44, live ln 140, enc 1
  %sub = sub nsw i64 %3, 1000000, l139 c44
  (Add w64 (w64 0xFFFFFFFFFFF0BDC0)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
and
  assn asm ln 1882, prod ln 141.44, live ln 142, enc 0
  %sub4 = sub nsw i64 %4, 4000000, l141 c44
  (Add w64 (w64 0xFFFFFFFFFFC2F700)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
Query to parse
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0xFFFFFFFFFFF0BDC0)
              N0:(ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
     (Add w64 (w64 0xFFFFFFFFFFC2F700) N0)))
Parsed query
(Eq (Add w64 (w64 0xFFFFFFFFFFF0BDC0)
              N0:(ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
     (Add w64 (w64 0xFFFFFFFFFFC2F700) N0))

Checking equivalence of `max_new_arcs` (decl src ln 121) from
  assn asm ln 1887, prod ln 141.44, live ln 143, enc 2
  %max_new_arcs.0 = phi i64 [ %sub, %if.then ], [ %sub4, %if.else ]
  (Add w64 (w64 0xFFFFFFFFFFC2F700)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
and
  assn asm ln 1875, prod ln 139.44, live ln 140, enc 1
  %sub = sub nsw i64 %3, 1000000, l139 c44
  (Add w64 (w64 0xFFFFFFFFFFF0BDC0)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
Query to parse
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0xFFFFFFFFFFC2F700)
              N0:(ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
     (Add w64 (w64 0xFFFFFFFFFFF0BDC0) N0)))
Parsed query
(Eq (Add w64 (w64 0xFFFFFFFFFFC2F700)
              N0:(ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
     (Add w64 (w64 0xFFFFFFFFFFF0BDC0) N0))

Filtering after assignments: `start_id` (decl src ln 126)

Expected 1 symbolic value(s), got 0
Checking equivalence of `start_id` (decl src ln 126) from
  assn asm ln 1917, prod ln 153.19, live ln 154, enc 0
  %8 = load i64, i64* %m, l153 c19
and
  assn asm ln 2004, prod ln 170.27, live ln 171, enc None
  %inc33 = add nsw i64 %start_id.0, 1, l170 c27

Checking equivalence of `start_id` (decl src ln 126) from
  assn asm ln 1924, prod ln 170.27, live ln 171, enc 1
  %start_id.0 = phi i64 [ %8, %for.end ], [ %inc33, %for.end32 ]
  (ReadLSB w64 (w32 0x1A8) marc_arcs.net.deref)
and
  assn asm ln 1917, prod ln 153.19, live ln 154, enc 0
  %8 = load i64, i64* %m, l153 c19
  (ReadLSB w64 (w32 0x1A8) marc_arcs.net.deref)
Query to parse
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x1A8) marc_arcs.net.deref)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x1A8) marc_arcs.net.deref)
     N0)
🔔 Removing: asm ln 1924, prod ln 170.27, live ln 171, enc 1

Collating encountered before assignments: `arcs_pointer_sorted` (decl src ln 111)
  asm ln 2415, prod ln 111.0, live ln 124, enc 0
Collating encountered before assignments: `best_pos` (decl src ln 125)
❌ Assignment asm ln 2614, prod ln 174.16, live ln 175, enc None for `best_pos` (decl src ln 125) was not encountered during execution
  asm ln 2423, prod ln 125.8, live ln 132, enc 0
Collating encountered before assignments: `global_new` (decl src ln 124)
❌ Assignment asm ln 2606, prod ln 172.19, live ln 173, enc None for `global_new` (decl src ln 124) was not encountered during execution
  asm ln 2421, prod ln 124.8, live ln 125, enc 0
Collating encountered before assignments: `i` (decl src ln 126)
❌ Assignment asm ln 2552, prod ln 163.25, live ln 164, enc None for `i` (decl src ln 126) was not encountered during execution
  asm ln 2464, prod ln 146.9, live ln 147, enc 0
  asm ln 2496, prod ln 146.31, live ln 147, enc 1
  asm ln 2624, prod ln 184.10, live ln 185, enc 2
  asm ln 2644, prod ln 184.32, live ln 185, enc 3
Collating encountered before assignments: `max_new_arcs` (decl src ln 121)
  asm ln 2458, prod ln 141.44, live ln 142, enc 0
  asm ln 2450, prod ln 139.44, live ln 140, enc 1
  asm ln 2512, prod ln 154.32, live ln 155, enc 2
Collating encountered before assignments: `net` (decl src ln 111)
  asm ln 2409, prod ln 111.0, live ln 124, enc 0
Collating encountered before assignments: `new_arcs` (decl src ln 111)
  asm ln 2411, prod ln 111.0, live ln 124, enc 0
Collating encountered before assignments: `new_arcs_array` (decl src ln 111)
❌ Assignment asm ln 2555, prod ln 163.30, live ln 164, enc None for `new_arcs_array` (decl src ln 111) was not encountered during execution
  asm ln 2413, prod ln 111.0, live ln 124, enc 0
Collating encountered before assignments: `num_threads` (decl src ln 132)
❌ Assignment asm ln 2546, prod ln 162.25, live ln 163, enc None for `num_threads` (decl src ln 132) was not encountered during execution
  asm ln 2428, prod ln 132.8, live ln 135, enc 0
Collating encountered before assignments: `positions` (decl src ln 122)
❌ Assignment asm ln 2568, prod ln 163.75, live ln 164, enc None for `positions` (decl src ln 122) was not encountered during execution
  asm ln 2433, prod ln 135.15, live ln 136, enc 0
Collating encountered before assignments: `start_id` (decl src ln 126)
❌ Assignment asm ln 2596, prod ln 170.27, live ln 171, enc None for `start_id` (decl src ln 126) was not encountered during execution
  asm ln 2503, prod ln 153.19, live ln 154, enc 0
Collating encountered before assignments: `values` (decl src ln 123)
❌ Assignment asm ln 2551, prod ln 163.18, live ln 164, enc None for `values` (decl src ln 123) was not encountered during execution
  asm ln 2438, prod ln 136.12, live ln 138, enc 0

Collating encountered after assignments: `arcs_pointer_sorted` (decl src ln 111)
  asm ln 1853, prod ln 111.0, live ln 135, enc 0
Collating encountered after assignments: `best_pos` (decl src ln 125)
❌ Assignment asm ln 1955, prod ln 125.0, live ln 162, enc None for `best_pos` (decl src ln 125) was not encountered during execution
  asm ln 1855, prod ln 125.0, live ln 135, enc 0
Collating encountered after assignments: `global_new` (decl src ln 124)
❌ Assignment asm ln 2013, prod ln 172.19, live ln 173, enc None for `global_new` (decl src ln 124) was not encountered during execution
  asm ln 1854, prod ln 124.0, live ln 135, enc 0
Collating encountered after assignments: `i` (decl src ln 126)
❌ Assignment asm ln 1956, prod ln 126.0, live ln 162, enc None for `i` (decl src ln 126) was not encountered during execution
  asm ln 1889, prod ln 126.0, live ln 146, enc 0
  asm ln 1911, prod ln 146.31, live ln 147, enc 1
  asm ln 2026, prod ln 126.0, live ln 184, enc 2
  asm ln 2042, prod ln 184.32, live ln 185, enc 3
Collating encountered after assignments: `max_new_arcs` (decl src ln 121)
  asm ln 1882, prod ln 141.44, live ln 142, enc 0
  asm ln 1875, prod ln 139.44, live ln 140, enc 1
  asm ln 1887, prod ln 141.44, live ln 143, enc 2
Collating encountered after assignments: `net` (decl src ln 111)
  asm ln 1850, prod ln 111.0, live ln 135, enc 0
Collating encountered after assignments: `new_arcs` (decl src ln 111)
  asm ln 1851, prod ln 111.0, live ln 135, enc 0
Collating encountered after assignments: `new_arcs_array` (decl src ln 111)
  asm ln 1852, prod ln 111.0, live ln 135, enc 0
Collating encountered after assignments: `num_threads` (decl src ln 132)
  asm ln 1857, prod ln 132.0, live ln 135, enc 0
Collating encountered after assignments: `positions` (decl src ln 122)
  asm ln 1861, prod ln 135.15, live ln 136, enc 0
Collating encountered after assignments: `start_id` (decl src ln 126)
❌ Assignment asm ln 2004, prod ln 170.27, live ln 171, enc None for `start_id` (decl src ln 126) was not encountered during execution
  asm ln 1917, prod ln 153.19, live ln 154, enc 0
Collating encountered after assignments: `values` (decl src ln 123)
  asm ln 1865, prod ln 136.12, live ln 138, enc 0

#### Check after using before as reference

✅ After `arc` assns checked using before as reference
Assignments:         arc
  Reference:         0
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
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

❌ Before `arcs_pointer_sorted` (decl src ln 111) assn asm ln 2415, prod ln 111.0, live ln 124, enc 0 coordinates don't match after assn asm ln 1853, prod ln 111.0, live ln 135, enc 0
Checking equivalence of `arcs_pointer_sorted` (decl src ln 111) from
  assn asm ln 1853, prod ln 111.0, live ln 135, enc 0
  %struct.arc.0*** %arcs_pointer_sorted
  (w64 0xDA11E8EDEBB932FE)
and
  assn asm ln 2415, prod ln 111.0, live ln 124, enc 0
  %struct.arc*** %arcs_pointer_sorted
  (w64 0xDA11E8EDEBB932FE)
✅ Before `arcs_pointer_sorted` (decl src ln 111) assn asm ln 2415, prod ln 111.0, live ln 124, enc 0 symbolic value matches after assn asm ln 1853, prod ln 111.0, live ln 135, enc 0

❌ After `arcs_pointer_sorted` assns checked using before as reference
Assignments:         arcs_pointer_sorted
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

❌ Before assn asm ln 2614, prod ln 174.16, live ln 175, enc None for `best_pos` (decl src ln 125) was not encountered during execution

❌ After assn asm ln 1955, prod ln 125.0, live ln 162, enc None for `best_pos` (decl src ln 125) was not encountered during execution

❌ Before `best_pos` (decl src ln 125) assn asm ln 2423, prod ln 125.8, live ln 132, enc 0 coordinates don't match after assn asm ln 1855, prod ln 125.0, live ln 135, enc 0
Checking equivalence of `best_pos` (decl src ln 125) from
  assn asm ln 1855, prod ln 125.0, live ln 135, enc 0
  i64 0
  (w64 0x0)
and
  assn asm ln 2423, prod ln 125.8, live ln 132, enc 0
  i64 0
  (w64 0x0)
✅ Before `best_pos` (decl src ln 125) assn asm ln 2423, prod ln 125.8, live ln 132, enc 0 symbolic value matches after assn asm ln 1855, prod ln 125.0, live ln 135, enc 0

❌ After `best_pos` assns checked using before as reference
Assignments:         best_pos
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
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

❌ Before assn asm ln 2606, prod ln 172.19, live ln 173, enc None for `global_new` (decl src ln 124) was not encountered during execution

❌ After assn asm ln 2013, prod ln 172.19, live ln 173, enc None for `global_new` (decl src ln 124) was not encountered during execution

❌ Before `global_new` (decl src ln 124) assn asm ln 2421, prod ln 124.8, live ln 125, enc 0 coordinates don't match after assn asm ln 1854, prod ln 124.0, live ln 135, enc 0
Checking equivalence of `global_new` (decl src ln 124) from
  assn asm ln 1854, prod ln 124.0, live ln 135, enc 0
  i64 0
  (w64 0x0)
and
  assn asm ln 2421, prod ln 124.8, live ln 125, enc 0
  i64 0
  (w64 0x0)
✅ Before `global_new` (decl src ln 124) assn asm ln 2421, prod ln 124.8, live ln 125, enc 0 symbolic value matches after assn asm ln 1854, prod ln 124.0, live ln 135, enc 0

❌ After `global_new` assns checked using before as reference
Assignments:         global_new
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
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

❌ Before assn asm ln 2552, prod ln 163.25, live ln 164, enc None for `i` (decl src ln 126) was not encountered during execution

❌ After assn asm ln 1956, prod ln 126.0, live ln 162, enc None for `i` (decl src ln 126) was not encountered during execution

❌ Before `i` (decl src ln 126) assn asm ln 2464, prod ln 146.9, live ln 147, enc 0 coordinates don't match after assn asm ln 1889, prod ln 126.0, live ln 146, enc 0
Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 1889, prod ln 126.0, live ln 146, enc 0
  i64 0
  (w64 0x0)
and
  assn asm ln 2464, prod ln 146.9, live ln 147, enc 0
  i64 0
  (w64 0x0)
✅ Before `i` (decl src ln 126) assn asm ln 2464, prod ln 146.9, live ln 147, enc 0 symbolic value matches after assn asm ln 1889, prod ln 126.0, live ln 146, enc 0

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 1911, prod ln 146.31, live ln 147, enc 1
  %inc = add nsw i64 %i.0, 1, l146 c31
  (w64 0x1)
and
  assn asm ln 2496, prod ln 146.31, live ln 147, enc 1
  %inc = add nsw i64 %25, 1, l146 c31
  (w64 0x1)
✅ Before `i` (decl src ln 126) assn asm ln 2496, prod ln 146.31, live ln 147, enc 1 symbolic value matches after assn asm ln 1911, prod ln 146.31, live ln 147, enc 1

❌ Before `i` (decl src ln 126) assn asm ln 2624, prod ln 184.10, live ln 185, enc 2 coordinates don't match after assn asm ln 2026, prod ln 126.0, live ln 184, enc 2
Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2026, prod ln 126.0, live ln 184, enc 2
  i64 0
  (w64 0x0)
and
  assn asm ln 2624, prod ln 184.10, live ln 185, enc 2
  i64 0
  (w64 0x0)
✅ Before `i` (decl src ln 126) assn asm ln 2624, prod ln 184.10, live ln 185, enc 2 symbolic value matches after assn asm ln 2026, prod ln 126.0, live ln 184, enc 2

Checking equivalence of `i` (decl src ln 126) from
  assn asm ln 2042, prod ln 184.32, live ln 185, enc 3
  %inc45 = add nsw i64 %i.2, 1, l184 c32
  (w64 0x1)
and
  assn asm ln 2644, prod ln 184.32, live ln 185, enc 3
  %inc45 = add nsw i64 %77, 1, l184 c32
  (w64 0x1)
✅ Before `i` (decl src ln 126) assn asm ln 2644, prod ln 184.32, live ln 185, enc 3 symbolic value matches after assn asm ln 2042, prod ln 184.32, live ln 185, enc 3

❌ After `i` assns checked using before as reference
Assignments:         i
  Reference:         5
  Test:              5
Matching:
  Matching Coords:   2
  Matching Value:    4
Consistency Errors:
  Mismatched Coords: 2
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
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

Checking equivalence of `max_new_arcs` (decl src ln 121) from
  assn asm ln 1882, prod ln 141.44, live ln 142, enc 0
  %sub4 = sub nsw i64 %4, 4000000, l141 c44
  (Add w64 (w64 0xFFFFFFFFFFC2F700)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
and
  assn asm ln 2458, prod ln 141.44, live ln 142, enc 0
  %sub4 = sub nsw i64 %9, 4000000, l141 c44
  (Add w64 (w64 0xFFFFFFFFFFC2F700)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
Query to parse
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0xFFFFFFFFFFC2F700)
              (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
     (Add w64 (w64 0xFFFFFFFFFFC2F700)
              (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))))
Parsed query
(Eq N0:(Add w64 (w64 0xFFFFFFFFFFC2F700)
                 (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
     N0)
✅ Before `max_new_arcs` (decl src ln 121) assn asm ln 2458, prod ln 141.44, live ln 142, enc 0 symbolic value matches after assn asm ln 1882, prod ln 141.44, live ln 142, enc 0

Checking equivalence of `max_new_arcs` (decl src ln 121) from
  assn asm ln 1875, prod ln 139.44, live ln 140, enc 1
  %sub = sub nsw i64 %3, 1000000, l139 c44
  (Add w64 (w64 0xFFFFFFFFFFF0BDC0)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
and
  assn asm ln 2450, prod ln 139.44, live ln 140, enc 1
  %sub = sub nsw i64 %7, 1000000, l139 c44
  (Add w64 (w64 0xFFFFFFFFFFF0BDC0)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
Query to parse
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0xFFFFFFFFFFF0BDC0)
              (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
     (Add w64 (w64 0xFFFFFFFFFFF0BDC0)
              (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))))
Parsed query
(Eq N0:(Add w64 (w64 0xFFFFFFFFFFF0BDC0)
                 (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
     N0)
✅ Before `max_new_arcs` (decl src ln 121) assn asm ln 2450, prod ln 139.44, live ln 140, enc 1 symbolic value matches after assn asm ln 1875, prod ln 139.44, live ln 140, enc 1

❌ Before `max_new_arcs` (decl src ln 121) assn asm ln 2512, prod ln 154.32, live ln 155, enc 2 coordinates don't match after assn asm ln 1887, prod ln 141.44, live ln 143, enc 2
Checking equivalence of `max_new_arcs` (decl src ln 121) from
  assn asm ln 1887, prod ln 141.44, live ln 143, enc 2
  %max_new_arcs.0 = phi i64 [ %sub, %if.then ], [ %sub4, %if.else ]
  (Add w64 (w64 0xFFFFFFFFFFC2F700)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
and
  assn asm ln 2512, prod ln 154.32, live ln 155, enc 2
  %32 = load i64, i64* %max_new_arcs, l154 c32
  (Add w64 (w64 0xFFFFFFFFFFC2F700)
          (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
Query to parse
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0xFFFFFFFFFFC2F700)
              (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
     (Add w64 (w64 0xFFFFFFFFFFC2F700)
              (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))))
Parsed query
(Eq N0:(Add w64 (w64 0xFFFFFFFFFFC2F700)
                 (ReadLSB w64 (w32 0x1C0) marc_arcs.net.deref))
     N0)
✅ Before `max_new_arcs` (decl src ln 121) assn asm ln 2512, prod ln 154.32, live ln 155, enc 2 symbolic value matches after assn asm ln 1887, prod ln 141.44, live ln 143, enc 2

❌ After `max_new_arcs` assns checked using before as reference
Assignments:         max_new_arcs
  Reference:         3
  Test:              3
Matching:
  Matching Coords:   2
  Matching Value:    3
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

❌ Before `net` (decl src ln 111) assn asm ln 2409, prod ln 111.0, live ln 124, enc 0 coordinates don't match after assn asm ln 1850, prod ln 111.0, live ln 135, enc 0
Checking equivalence of `net` (decl src ln 111) from
  assn asm ln 1850, prod ln 111.0, live ln 135, enc 0
  %struct.network.2* %net
  (w64 0x19F61B371798B58A)
and
  assn asm ln 2409, prod ln 111.0, live ln 124, enc 0
  %struct.network* %net
  (w64 0x19F61B371798B58A)
✅ Before `net` (decl src ln 111) assn asm ln 2409, prod ln 111.0, live ln 124, enc 0 symbolic value matches after assn asm ln 1850, prod ln 111.0, live ln 135, enc 0

❌ After `net` assns checked using before as reference
Assignments:         net
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

❌ Before `new_arcs` (decl src ln 111) assn asm ln 2411, prod ln 111.0, live ln 124, enc 0 coordinates don't match after assn asm ln 1851, prod ln 111.0, live ln 135, enc 0
Checking equivalence of `new_arcs` (decl src ln 111) from
  assn asm ln 1851, prod ln 111.0, live ln 135, enc 0
  i64* %new_arcs
  (w64 0x879E370389B1A9AF)
and
  assn asm ln 2411, prod ln 111.0, live ln 124, enc 0
  i64* %new_arcs
  (w64 0x879E370389B1A9AF)
✅ Before `new_arcs` (decl src ln 111) assn asm ln 2411, prod ln 111.0, live ln 124, enc 0 symbolic value matches after assn asm ln 1851, prod ln 111.0, live ln 135, enc 0

❌ After `new_arcs` assns checked using before as reference
Assignments:         new_arcs
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

❌ Before assn asm ln 2555, prod ln 163.30, live ln 164, enc None for `new_arcs_array` (decl src ln 111) was not encountered during execution

❌ Before `new_arcs_array` (decl src ln 111) assn asm ln 2413, prod ln 111.0, live ln 124, enc 0 coordinates don't match after assn asm ln 1852, prod ln 111.0, live ln 135, enc 0
Checking equivalence of `new_arcs_array` (decl src ln 111) from
  assn asm ln 1852, prod ln 111.0, live ln 135, enc 0
  i64* %new_arcs_array
  (w64 0x59D35653871435B0)
and
  assn asm ln 2413, prod ln 111.0, live ln 124, enc 0
  i64* %new_arcs_array
  (w64 0x59D35653871435B0)
✅ Before `new_arcs_array` (decl src ln 111) assn asm ln 2413, prod ln 111.0, live ln 124, enc 0 symbolic value matches after assn asm ln 1852, prod ln 111.0, live ln 135, enc 0

❌ After `new_arcs_array` assns checked using before as reference
Assignments:         new_arcs_array
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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

❌ Before assn asm ln 2546, prod ln 162.25, live ln 163, enc None for `num_threads` (decl src ln 132) was not encountered during execution

Checking equivalence of `num_threads` (decl src ln 132) from
  assn asm ln 1857, prod ln 132.0, live ln 135, enc 0
  i64 1
  (w64 0x1)
and
  assn asm ln 2428, prod ln 132.8, live ln 135, enc 0
  i64 1
  (w64 0x1)
✅ Before `num_threads` (decl src ln 132) assn asm ln 2428, prod ln 132.8, live ln 135, enc 0 symbolic value matches after assn asm ln 1857, prod ln 132.0, live ln 135, enc 0

❌ After `num_threads` assns checked using before as reference
Assignments:         num_threads
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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

❌ Before assn asm ln 2568, prod ln 163.75, live ln 164, enc None for `positions` (decl src ln 122) was not encountered during execution

Checking equivalence of `positions` (decl src ln 122) from
  assn asm ln 1861, prod ln 135.15, live ln 136, enc 0
  %0 = bitcast i8* %call to %struct.arc.0***, l135 c15
  (w64 0xC6415B982A7466DD)
and
  assn asm ln 2433, prod ln 135.15, live ln 136, enc 0
  %1 = bitcast i8* %call to %struct.arc***, l135 c15
  (w64 0xC6415B982A7466DD)
✅ Before `positions` (decl src ln 122) assn asm ln 2433, prod ln 135.15, live ln 136, enc 0 symbolic value matches after assn asm ln 1861, prod ln 135.15, live ln 136, enc 0

❌ After `positions` assns checked using before as reference
Assignments:         positions
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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

❌ Before assn asm ln 2596, prod ln 170.27, live ln 171, enc None for `start_id` (decl src ln 126) was not encountered during execution

❌ After assn asm ln 2004, prod ln 170.27, live ln 171, enc None for `start_id` (decl src ln 126) was not encountered during execution

Checking equivalence of `start_id` (decl src ln 126) from
  assn asm ln 1917, prod ln 153.19, live ln 154, enc 0
  %8 = load i64, i64* %m, l153 c19
  (ReadLSB w64 (w32 0x1A8) marc_arcs.net.deref)
and
  assn asm ln 2503, prod ln 153.19, live ln 154, enc 0
  %27 = load i64, i64* %m, l153 c19
  (ReadLSB w64 (w32 0x1A8) marc_arcs.net.deref)
Query to parse
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
array marc_arcs.net.deref[1296] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x1A8) marc_arcs.net.deref)
     (ReadLSB w64 (w32 0x1A8) marc_arcs.net.deref)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x1A8) marc_arcs.net.deref)
     N0)
✅ Before `start_id` (decl src ln 126) assn asm ln 2503, prod ln 153.19, live ln 154, enc 0 symbolic value matches after assn asm ln 1917, prod ln 153.19, live ln 154, enc 0

❌ After `start_id` assns checked using before as reference
Assignments:         start_id
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
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

❌ Before assn asm ln 2551, prod ln 163.18, live ln 164, enc None for `values` (decl src ln 123) was not encountered during execution

Checking equivalence of `values` (decl src ln 123) from
  assn asm ln 1865, prod ln 136.12, live ln 138, enc 0
  %1 = bitcast i8* %call2 to i64*, l136 c12
  (w64 0xC6415B982A7466DD)
and
  assn asm ln 2438, prod ln 136.12, live ln 138, enc 0
  %3 = bitcast i8* %call2 to i64*, l136 c12
  (w64 0xC6415B982A7466DD)
✅ Before `values` (decl src ln 123) assn asm ln 2438, prod ln 136.12, live ln 138, enc 0 symbolic value matches after assn asm ln 1865, prod ln 136.12, live ln 138, enc 0

❌ After `values` assns checked using before as reference
Assignments:         values
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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

## Function `arc_compare`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `a1` (decl src ln 30), asm ln 2783
  %12 = load %struct.arc**, %struct.arc*** %a1.addr, l41 c9, asm ln 2783
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2783, prod ln 41.9, live ln 42, enc None
Load from declared address of `a1` (decl src ln 30), asm ln 2767
  %6 = load %struct.arc**, %struct.arc*** %a1.addr, l39 c9, asm ln 2767
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2767, prod ln 39.9, live ln 40, enc None
Load from declared address of `a1` (decl src ln 30), asm ln 2751
  %0 = load %struct.arc**, %struct.arc*** %a1.addr, l37 c9, asm ln 2751
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2751, prod ln 37.9, live ln 38, enc None
Store to declared address of `a1` (decl src ln 30), asm ln 2747
  arg 0
  Added assignment asm ln 2747, prod ln 30.0, live ln 37, enc None
Load from declared address of `a2` (decl src ln 30), asm ln 2787
  %15 = load %struct.arc**, %struct.arc*** %a2.addr, l41 c21, asm ln 2787
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2787, prod ln 41.21, live ln 42, enc None
Load from declared address of `a2` (decl src ln 30), asm ln 2771
  %9 = load %struct.arc**, %struct.arc*** %a2.addr, l39 c23, asm ln 2771
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2771, prod ln 39.23, live ln 40, enc None
Load from declared address of `a2` (decl src ln 30), asm ln 2755
  %3 = load %struct.arc**, %struct.arc*** %a2.addr, l37 c23, asm ln 2755
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2755, prod ln 37.23, live ln 38, enc None
Store to declared address of `a2` (decl src ln 30), asm ln 2749
  arg 1
  Added assignment asm ln 2749, prod ln 30.0, live ln 37, enc None

#### After variables

Value produced for `a1` (decl src ln 30), asm ln 2123
  arg 0
  Added assignment asm ln 2123, prod ln 30.0, live ln 37, enc None
Value produced for `a2` (decl src ln 30), asm ln 2124
  arg 1
  Added assignment asm ln 2124, prod ln 30.0, live ln 37, enc None

#### Summary

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `a1`
  Assignment asm ln 2747, prod ln 30.0, live ln 37, enc 0
  Concrete pointer resolves to arc_compare.a1.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x747F2C712059EA59)
  %struct.arc** %a1
  (w64 0x747F2C712059EA59)
Collected value for `a2`
  Assignment asm ln 2749, prod ln 30.0, live ln 37, enc 0
  Concrete pointer resolves to arc_compare.a2.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x236950215239957)
  %struct.arc** %a2
  (w64 0x236950215239957)
Collected value for `a1`
  Assignment asm ln 2751, prod ln 37.9, live ln 38, enc 1
  Concrete pointer resolves to arc_compare.a1.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x747F2C712059EA59)
  %0 = load %struct.arc**, %struct.arc*** %a1.addr, l37 c9
  (w64 0x747F2C712059EA59)
[0;1;31mKLEE: ERROR: implicit.c:37: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all before instructions

🔔 Unable to execute all before program states

#### After values

Collected value for `a1`
  Assignment asm ln 2123, prod ln 30.0, live ln 37, enc 0
  Concrete pointer resolves to arc_compare.a1.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x747F2C712059EA59)
  %struct.arc.0** %a1
  (w64 0x747F2C712059EA59)
Collected value for `a2`
  Assignment asm ln 2124, prod ln 30.0, live ln 37, enc 0
  Concrete pointer resolves to arc_compare.a2.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x236950215239957)
  %struct.arc.0** %a2
  (w64 0x236950215239957)
[0;1;31mKLEE: ERROR: implicit.c:37: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all after instructions

🔔 Unable to execute all after program states

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `a1` (decl src ln 30)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `a1` (decl src ln 30) from
  assn asm ln 2767, prod ln 39.9, live ln 40, enc None
  %6 = load %struct.arc**, %struct.arc*** %a1.addr, l39 c9
and
  assn asm ln 2783, prod ln 41.9, live ln 42, enc None
  %12 = load %struct.arc**, %struct.arc*** %a1.addr, l41 c9
🔔 Removing: asm ln 2767, prod ln 39.9, live ln 40, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `a1` (decl src ln 30) from
  assn asm ln 2747, prod ln 30.0, live ln 37, enc 0
  %struct.arc** %a1
and
  assn asm ln 2783, prod ln 41.9, live ln 42, enc None
  %12 = load %struct.arc**, %struct.arc*** %a1.addr, l41 c9

Checking equivalence of `a1` (decl src ln 30) from
  assn asm ln 2751, prod ln 37.9, live ln 38, enc 1
  %0 = load %struct.arc**, %struct.arc*** %a1.addr, l37 c9
  (w64 0x747F2C712059EA59)
and
  assn asm ln 2747, prod ln 30.0, live ln 37, enc 0
  %struct.arc** %a1
  (w64 0x747F2C712059EA59)
🔔 Removing: asm ln 2751, prod ln 37.9, live ln 38, enc 1

Filtering before assignments: `a2` (decl src ln 30)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `a2` (decl src ln 30) from
  assn asm ln 2771, prod ln 39.23, live ln 40, enc None
  %9 = load %struct.arc**, %struct.arc*** %a2.addr, l39 c23
and
  assn asm ln 2787, prod ln 41.21, live ln 42, enc None
  %15 = load %struct.arc**, %struct.arc*** %a2.addr, l41 c21
🔔 Removing: asm ln 2771, prod ln 39.23, live ln 40, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `a2` (decl src ln 30) from
  assn asm ln 2755, prod ln 37.23, live ln 38, enc None
  %3 = load %struct.arc**, %struct.arc*** %a2.addr, l37 c23
and
  assn asm ln 2787, prod ln 41.21, live ln 42, enc None
  %15 = load %struct.arc**, %struct.arc*** %a2.addr, l41 c21
🔔 Removing: asm ln 2755, prod ln 37.23, live ln 38, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `a2` (decl src ln 30) from
  assn asm ln 2749, prod ln 30.0, live ln 37, enc 0
  %struct.arc** %a2
and
  assn asm ln 2787, prod ln 41.21, live ln 42, enc None
  %15 = load %struct.arc**, %struct.arc*** %a2.addr, l41 c21

Collating encountered before assignments: `a1` (decl src ln 30)
❌ Assignment asm ln 2783, prod ln 41.9, live ln 42, enc None for `a1` (decl src ln 30) was not encountered during execution
  asm ln 2747, prod ln 30.0, live ln 37, enc 0
Collating encountered before assignments: `a2` (decl src ln 30)
❌ Assignment asm ln 2787, prod ln 41.21, live ln 42, enc None for `a2` (decl src ln 30) was not encountered during execution
  asm ln 2749, prod ln 30.0, live ln 37, enc 0

Collating encountered after assignments: `a1` (decl src ln 30)
  asm ln 2123, prod ln 30.0, live ln 37, enc 0
Collating encountered after assignments: `a2` (decl src ln 30)
  asm ln 2124, prod ln 30.0, live ln 37, enc 0

#### Check after using before as reference

❌ Before assn asm ln 2783, prod ln 41.9, live ln 42, enc None for `a1` (decl src ln 30) was not encountered during execution

Checking equivalence of `a1` (decl src ln 30) from
  assn asm ln 2123, prod ln 30.0, live ln 37, enc 0
  %struct.arc.0** %a1
  (w64 0x747F2C712059EA59)
and
  assn asm ln 2747, prod ln 30.0, live ln 37, enc 0
  %struct.arc** %a1
  (w64 0x747F2C712059EA59)
✅ Before `a1` (decl src ln 30) assn asm ln 2747, prod ln 30.0, live ln 37, enc 0 symbolic value matches after assn asm ln 2123, prod ln 30.0, live ln 37, enc 0

❌ After `a1` assns checked using before as reference
Assignments:         a1
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 2787, prod ln 41.21, live ln 42, enc None for `a2` (decl src ln 30) was not encountered during execution

Checking equivalence of `a2` (decl src ln 30) from
  assn asm ln 2124, prod ln 30.0, live ln 37, enc 0
  %struct.arc.0** %a2
  (w64 0x236950215239957)
and
  assn asm ln 2749, prod ln 30.0, live ln 37, enc 0
  %struct.arc** %a2
  (w64 0x236950215239957)
✅ Before `a2` (decl src ln 30) assn asm ln 2749, prod ln 30.0, live ln 37, enc 0 symbolic value matches after assn asm ln 2124, prod ln 30.0, live ln 37, enc 0

❌ After `a2` assns checked using before as reference
Assignments:         a2
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

## Function `resize_prob`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `net` (decl src ln 203), asm ln 2958
  %52 = load %struct.network*, %struct.network** %net.addr, l251 c5, asm ln 2958
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2958, prod ln 251.5, live ln 252, enc None
Load from declared address of `net` (decl src ln 203), asm ln 2950
  %48 = load %struct.network*, %struct.network** %net.addr, l250 c48, asm ln 2950
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2950, prod ln 250.48, live ln 251, enc None
Load from declared address of `net` (decl src ln 203), asm ln 2946
  %45 = load %struct.network*, %struct.network** %net.addr, l250 c30, asm ln 2946
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2946, prod ln 250.30, live ln 251, enc None
Load from declared address of `net` (decl src ln 203), asm ln 2929
  %40 = load %struct.network*, %struct.network** %net.addr, l246 c41, asm ln 2929
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2929, prod ln 246.41, live ln 247, enc None
Load from declared address of `net` (decl src ln 203), asm ln 2892
  %28 = load %struct.network*, %struct.network** %net.addr, l243 c24, asm ln 2892
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2892, prod ln 243.24, live ln 244, enc None
Load from declared address of `net` (decl src ln 203), asm ln 2884
  %25 = load %struct.network*, %struct.network** %net.addr, l242 c19, asm ln 2884
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2884, prod ln 242.19, live ln 243, enc None
Load from declared address of `net` (decl src ln 203), asm ln 2881
  %24 = load %struct.network*, %struct.network** %net.addr, l240 c5, asm ln 2881
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2881, prod ln 240.5, live ln 241, enc None
Load from declared address of `net` (decl src ln 203), asm ln 2877
  %22 = load %struct.network*, %struct.network** %net.addr, l240 c28, asm ln 2877
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2877, prod ln 240.28, live ln 241, enc None
Load from declared address of `net` (decl src ln 203), asm ln 2873
  %20 = load %struct.network*, %struct.network** %net.addr, l239 c5, asm ln 2873
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2873, prod ln 239.5, live ln 240, enc None
Load from declared address of `net` (decl src ln 203), asm ln 2868
  %17 = load %struct.network*, %struct.network** %net.addr, l237 c16, asm ln 2868
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2868, prod ln 237.16, live ln 238, enc None
Load from declared address of `net` (decl src ln 203), asm ln 2858
  %15 = load %struct.network*, %struct.network** %net.addr, l232 c52, asm ln 2858
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2858, prod ln 232.52, live ln 233, enc None
Load from declared address of `net` (decl src ln 203), asm ln 2846
  %11 = load %struct.network*, %struct.network** %net.addr, l229 c41, asm ln 2846
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2846, prod ln 229.41, live ln 230, enc None
Load from declared address of `net` (decl src ln 203), asm ln 2842
  %8 = load %struct.network*, %struct.network** %net.addr, l229 c30, asm ln 2842
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2842, prod ln 229.30, live ln 230, enc None
Load from declared address of `net` (decl src ln 203), asm ln 2837
  %6 = load %struct.network*, %struct.network** %net.addr, l218 c5, asm ln 2837
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2837, prod ln 218.5, live ln 219, enc None
Load from declared address of `net` (decl src ln 203), asm ln 2834
  %4 = load %struct.network*, %struct.network** %net.addr, l218 c32, asm ln 2834
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2834, prod ln 218.32, live ln 219, enc None
Load from declared address of `net` (decl src ln 203), asm ln 2829
  %2 = load %struct.network*, %struct.network** %net.addr, l217 c5, asm ln 2829
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2829, prod ln 217.5, live ln 218, enc None
Load from declared address of `net` (decl src ln 203), asm ln 2826
  %0 = load %struct.network*, %struct.network** %net.addr, l217 c19, asm ln 2826
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2826, prod ln 217.19, live ln 218, enc None
Store to declared address of `net` (decl src ln 203), asm ln 2818
  arg 0
  Added assignment asm ln 2818, prod ln 203.0, live ln 217, enc None
Load from declared address of `arc` (decl src ln 209), asm ln 2957
  %51 = load %struct.arc*, %struct.arc** %arc, l251 c24, asm ln 2957
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2957, prod ln 251.24, live ln 252, enc None
Store to declared address of `arc` (decl src ln 209), asm ln 2956
  %50 = bitcast i8* %call19 to %struct.arc*, l250 c11, asm ln 2955
  Added assignment asm ln 2956, prod ln 250.11, live ln 251, enc None
Load from declared address of `arc` (decl src ln 209), asm ln 2876
  %21 = load %struct.arc*, %struct.arc** %arc, l240 c22, asm ln 2876
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2876, prod ln 240.22, live ln 241, enc None
Load from declared address of `arc` (decl src ln 209), asm ln 2872
  %19 = load %struct.arc*, %struct.arc** %arc, l239 c17, asm ln 2872
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2872, prod ln 239.17, live ln 240, enc None
Load from declared address of `arc` (decl src ln 209), asm ln 2853
  %14 = load %struct.arc*, %struct.arc** %arc, l230 c10, asm ln 2853
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2853, prod ln 230.10, live ln 231, enc None
Store to declared address of `arc` (decl src ln 209), asm ln 2852
  %13 = bitcast i8* %call to %struct.arc*, l229 c11, asm ln 2851
  Added assignment asm ln 2852, prod ln 229.11, live ln 230, enc None
Load from declared address of `old_arcs` (decl src ln 209), asm ln 2923
  %39 = load %struct.arc*, %struct.arc** %old_arcs, l245 c35, asm ln 2923
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2923, prod ln 245.35, live ln 246, enc None
Store to declared address of `old_arcs` (decl src ln 209), asm ln 2871
  %18 = load %struct.arc*, %struct.arc** %arcs6, l237 c21, asm ln 2870
  Added assignment asm ln 2871, prod ln 237.21, live ln 239, enc None
Store to declared address of `node` (decl src ln 210), asm ln 2942
  %incdec.ptr16 = getelementptr inbounds %struct.node, %struct.node* %44, i32 1, l243 c58, asm ln 2941
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2942, prod ln 243.58, live ln 244, enc None
Load from declared address of `node` (decl src ln 210), asm ln 2940
  %44 = load %struct.node*, %struct.node** %node, l243 c58, asm ln 2940
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2940, prod ln 243.58, live ln 244, enc None
Load from declared address of `node` (decl src ln 210), asm ln 2934
  %43 = load %struct.node*, %struct.node** %node, l246 c13, asm ln 2934
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2934, prod ln 246.13, live ln 247, enc None
Load from declared address of `node` (decl src ln 210), asm ln 2920
  %37 = load %struct.node*, %struct.node** %node, l245 c17, asm ln 2920
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2920, prod ln 245.17, live ln 246, enc None
Load from declared address of `node` (decl src ln 210), asm ln 2912
  %34 = load %struct.node*, %struct.node** %node, l244 c31, asm ln 2912
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2912, prod ln 244.31, live ln 245, enc None
Load from declared address of `node` (decl src ln 210), asm ln 2905
  %32 = load %struct.node*, %struct.node** %node, l244 c12, asm ln 2905
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2905, prod ln 244.12, live ln 245, enc None
Load from declared address of `node` (decl src ln 210), asm ln 2899
  %30 = load %struct.node*, %struct.node** %node, l243 c41, asm ln 2899
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2899, prod ln 243.41, live ln 244, enc None
Store to declared address of `node` (decl src ln 210), asm ln 2891
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %27, i32 1, l243 c13, asm ln 2890
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2891, prod ln 243.13, live ln 244, enc None
Load from declared address of `node` (decl src ln 210), asm ln 2889
  %27 = load %struct.node*, %struct.node** %node, l243 c13, asm ln 2889
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2889, prod ln 243.13, live ln 244, enc None
Store to declared address of `node` (decl src ln 210), asm ln 2887
  %26 = load %struct.node*, %struct.node** %nodes, l242 c24, asm ln 2886
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2887, prod ln 242.24, live ln 243, enc None
Load from declared address of `stop` (decl src ln 210), asm ln 2900
  %31 = load %struct.node*, %struct.node** %stop, l243 c48, asm ln 2900
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2900, prod ln 243.48, live ln 244, enc None
Store to declared address of `stop` (decl src ln 210), asm ln 2895
  %29 = load %struct.node*, %struct.node** %stop_nodes, l243 c29, asm ln 2894
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2895, prod ln 243.29, live ln 244, enc None
Load from declared address of `root` (decl src ln 210), asm ln 2915
  %36 = load %struct.node*, %struct.node** %root, l244 c45, asm ln 2915
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2915, prod ln 244.45, live ln 245, enc None
Store to declared address of `root` (decl src ln 210), asm ln 2888
  %26 = load %struct.node*, %struct.node** %nodes, l242 c24, asm ln 2886
  Added assignment asm ln 2888, prod ln 242.24, live ln 243, enc None
Load from declared address of `off` (decl src ln 211), asm ln 2932
  %42 = load i64, i64* %off, l246 c53, asm ln 2932
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2932, prod ln 246.53, live ln 247, enc None
Store to declared address of `off` (decl src ln 211), asm ln 2928
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 72, l245 c33, asm ln 2927
  Added assignment asm ln 2928, prod ln 245.33, live ln 246, enc None

#### After variables

Value produced for `net` (decl src ln 203), asm ln 2163
  arg 0
  Added assignment asm ln 2163, prod ln 203.0, live ln 217, enc None
Value produced for `arc` (decl src ln 209), asm ln 2184
  %7 = bitcast i8* %call to %struct.arc.0*, l229 c11, asm ln 2183
  Added assignment asm ln 2184, prod ln 229.11, live ln 230, enc None
Value produced for `old_arcs` (decl src ln 209), asm ln 2199
  %9 = load %struct.arc.0*, %struct.arc.0** %arcs6, l237 c21, asm ln 2198
  Added assignment asm ln 2199, prod ln 237.21, live ln 239, enc None
Value produced for `node` (decl src ln 210), asm ln 2209
  %11 = load %struct.node.1*, %struct.node.1** %nodes, l242 c24, asm ln 2208
  Added assignment asm ln 2209, prod ln 242.24, live ln 243, enc None
Value produced for `root` (decl src ln 210), asm ln 2210
  %11 = load %struct.node.1*, %struct.node.1** %nodes, l242 c24, asm ln 2208
  Added assignment asm ln 2210, prod ln 242.24, live ln 243, enc None
Value produced for `node` (decl src ln 210), asm ln 2212
  %incdec.ptr = getelementptr inbounds %struct.node.1, %struct.node.1* %11, i32 1, l243 c13, asm ln 2211
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2212, prod ln 243.13, live ln 244, enc None
Value produced for `stop` (decl src ln 210), asm ln 2215
  %12 = load %struct.node.1*, %struct.node.1** %stop_nodes, l243 c29, asm ln 2214
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2215, prod ln 243.29, live ln 244, enc None
Value produced for `off` (decl src ln 211), asm ln 2243
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 72, l245 c33, asm ln 2242
  Added assignment asm ln 2243, prod ln 245.33, live ln 246, enc None
Value produced for `node` (decl src ln 210), asm ln 2253
  %incdec.ptr16 = getelementptr inbounds %struct.node.1, %struct.node.1* %node.0, i32 1, l243 c58, asm ln 2252
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2253, prod ln 243.58, live ln 244, enc None
Value produced for `arc` (decl src ln 209), asm ln 2265
  %20 = bitcast i8* %call19 to %struct.arc.0*, l250 c11, asm ln 2264
  Added assignment asm ln 2265, prod ln 250.11, live ln 251, enc None
Value produced for `node` (decl src ln 210), asm ln 2220
  %node.0 = phi %struct.node.1* [ %incdec.ptr, %if.end ], [ %incdec.ptr16, %for.inc ], asm ln 2219
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2220, prod ln 243.58, live ln 244, enc None

#### Summary

✅ 7 before variables found, 7 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `net`
  Assignment asm ln 2818, prod ln 203.0, live ln 217, enc 0
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
Collected value for `net`
  Assignment asm ln 2826, prod ln 217.19, live ln 218, enc 1
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %0 = load %struct.network*, %struct.network** %net.addr, l217 c19
  (w64 0xF07BF0E3328ED348)
Collected value for `net`
  Assignment asm ln 2829, prod ln 217.5, live ln 218, enc 2
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %2 = load %struct.network*, %struct.network** %net.addr, l217 c5
  (w64 0xF07BF0E3328ED348)
Collected value for `net`
  Assignment asm ln 2834, prod ln 218.32, live ln 219, enc 3
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %4 = load %struct.network*, %struct.network** %net.addr, l218 c32
  (w64 0xF07BF0E3328ED348)
Collected value for `net`
  Assignment asm ln 2837, prod ln 218.5, live ln 219, enc 4
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %6 = load %struct.network*, %struct.network** %net.addr, l218 c5
  (w64 0xF07BF0E3328ED348)
Collected value for `net`
  Assignment asm ln 2842, prod ln 229.30, live ln 230, enc 5
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %8 = load %struct.network*, %struct.network** %net.addr, l229 c30
  (w64 0xF07BF0E3328ED348)
Collected value for `net`
  Assignment asm ln 2846, prod ln 229.41, live ln 230, enc 6
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %11 = load %struct.network*, %struct.network** %net.addr, l229 c41
  (w64 0xF07BF0E3328ED348)
Collected value for `arc`
  Assignment asm ln 2852, prod ln 229.11, live ln 230, enc 0
  Concrete pointer resolves to realloc.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) realloc.return.deref)
  Replaced concrete pointer with hash (w64 0x32CAA2B11DD898E6)
  %13 = bitcast i8* %call to %struct.arc*, l229 c11
  (w64 0x32CAA2B11DD898E6)
Collected value for `arc`
  Assignment asm ln 2853, prod ln 230.10, live ln 231, enc 1
  Concrete pointer resolves to realloc.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) realloc.return.deref)
  Replaced concrete pointer with hash (w64 0x32CAA2B11DD898E6)
  %14 = load %struct.arc*, %struct.arc** %arc, l230 c10
  (w64 0x32CAA2B11DD898E6)
Collected value for `net`
  Assignment asm ln 2868, prod ln 237.16, live ln 238, enc 7
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %17 = load %struct.network*, %struct.network** %net.addr, l237 c16
  (w64 0xF07BF0E3328ED348)
Collected value for `old_arcs`
  Assignment asm ln 2871, prod ln 237.21, live ln 239, enc 0
  %18 = load %struct.arc*, %struct.arc** %arcs6, l237 c21
  (w64 0x0)
Collected value for `arc`
  Assignment asm ln 2872, prod ln 239.17, live ln 240, enc 2
  Concrete pointer resolves to realloc.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) realloc.return.deref)
  Replaced concrete pointer with hash (w64 0x32CAA2B11DD898E6)
  %19 = load %struct.arc*, %struct.arc** %arc, l239 c17
  (w64 0x32CAA2B11DD898E6)
Collected value for `net`
  Assignment asm ln 2873, prod ln 239.5, live ln 240, enc 8
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %20 = load %struct.network*, %struct.network** %net.addr, l239 c5
  (w64 0xF07BF0E3328ED348)
Collected value for `arc`
  Assignment asm ln 2876, prod ln 240.22, live ln 241, enc 3
  Concrete pointer resolves to realloc.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) realloc.return.deref)
  Replaced concrete pointer with hash (w64 0x32CAA2B11DD898E6)
  %21 = load %struct.arc*, %struct.arc** %arc, l240 c22
  (w64 0x32CAA2B11DD898E6)
Collected value for `net`
  Assignment asm ln 2877, prod ln 240.28, live ln 241, enc 9
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %22 = load %struct.network*, %struct.network** %net.addr, l240 c28
  (w64 0xF07BF0E3328ED348)
Collected value for `net`
  Assignment asm ln 2881, prod ln 240.5, live ln 241, enc 10
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %24 = load %struct.network*, %struct.network** %net.addr, l240 c5
  (w64 0xF07BF0E3328ED348)
Collected value for `net`
  Assignment asm ln 2884, prod ln 242.19, live ln 243, enc 11
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %25 = load %struct.network*, %struct.network** %net.addr, l242 c19
  (w64 0xF07BF0E3328ED348)
Collected value for `node`
  Assignment asm ln 2887, prod ln 242.24, live ln 243, enc 0
  %26 = load %struct.node*, %struct.node** %nodes, l242 c24
  (w64 0x0)
Collected value for `root`
  Assignment asm ln 2888, prod ln 242.24, live ln 243, enc 0
  %26 = load %struct.node*, %struct.node** %nodes, l242 c24
  (w64 0x0)
Collected value for `node`
  Assignment asm ln 2889, prod ln 243.13, live ln 244, enc 1
  %27 = load %struct.node*, %struct.node** %node, l243 c13
  (w64 0x0)
Collected value for `node`
  Assignment asm ln 2891, prod ln 243.13, live ln 244, enc 2
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %27, i32 1, l243 c13
  (w64 0x68)
Collected value for `net`
  Assignment asm ln 2892, prod ln 243.24, live ln 244, enc 12
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %28 = load %struct.network*, %struct.network** %net.addr, l243 c24
  (w64 0xF07BF0E3328ED348)
Collected value for `stop`
  Assignment asm ln 2895, prod ln 243.29, live ln 244, enc 0
  %29 = load %struct.node*, %struct.node** %stop_nodes, l243 c29
  (w64 0x0)
Collected value for `node`
  Assignment asm ln 2899, prod ln 243.41, live ln 244, enc 3
  %30 = load %struct.node*, %struct.node** %node, l243 c41
  (w64 0x68)
Collected value for `stop`
  Assignment asm ln 2900, prod ln 243.48, live ln 244, enc 1
  %31 = load %struct.node*, %struct.node** %stop, l243 c48
  (w64 0x0)
Collected value for `net`
  Assignment asm ln 2946, prod ln 250.30, live ln 251, enc 13
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %45 = load %struct.network*, %struct.network** %net.addr, l250 c30
  (w64 0xF07BF0E3328ED348)
Collected value for `net`
  Assignment asm ln 2950, prod ln 250.48, live ln 251, enc 14
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %48 = load %struct.network*, %struct.network** %net.addr, l250 c48
  (w64 0xF07BF0E3328ED348)
Collected value for `arc`
  Assignment asm ln 2956, prod ln 250.11, live ln 251, enc 4
  Concrete pointer resolves to realloc.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) realloc.return.deref_1)
  Replaced concrete pointer with hash (w64 0x32CAA2B11DD898E6)
  %50 = bitcast i8* %call19 to %struct.arc*, l250 c11
  (w64 0x32CAA2B11DD898E6)
Collected value for `arc`
  Assignment asm ln 2957, prod ln 251.24, live ln 252, enc 5
  Concrete pointer resolves to realloc.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) realloc.return.deref_1)
  Replaced concrete pointer with hash (w64 0x32CAA2B11DD898E6)
  %51 = load %struct.arc*, %struct.arc** %arc, l251 c24
  (w64 0x32CAA2B11DD898E6)
Collected value for `net`
  Assignment asm ln 2958, prod ln 251.5, live ln 252, enc 15
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %52 = load %struct.network*, %struct.network** %net.addr, l251 c5
  (w64 0xF07BF0E3328ED348)

🔔 Unable to execute all before instructions

#### After values

Collected value for `net`
  Assignment asm ln 2163, prod ln 203.0, live ln 217, enc 0
  Concrete pointer resolves to resize_prob.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) resize_prob.net.deref)
  Replaced concrete pointer with hash (w64 0xF07BF0E3328ED348)
  %struct.network.2* %net
  (w64 0xF07BF0E3328ED348)
Collected value for `arc`
  Assignment asm ln 2184, prod ln 229.11, live ln 230, enc 0
  Concrete pointer resolves to realloc.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) realloc.return.deref)
  Replaced concrete pointer with hash (w64 0x32CAA2B11DD898E6)
  %7 = bitcast i8* %call to %struct.arc.0*, l229 c11
  (w64 0x32CAA2B11DD898E6)
Collected value for `old_arcs`
  Assignment asm ln 2199, prod ln 237.21, live ln 239, enc 0
  %9 = load %struct.arc.0*, %struct.arc.0** %arcs6, l237 c21
  (w64 0x0)
Collected value for `node`
  Assignment asm ln 2209, prod ln 242.24, live ln 243, enc 0
  %11 = load %struct.node.1*, %struct.node.1** %nodes, l242 c24
  (w64 0x0)
Collected value for `root`
  Assignment asm ln 2210, prod ln 242.24, live ln 243, enc 0
  %11 = load %struct.node.1*, %struct.node.1** %nodes, l242 c24
  (w64 0x0)
Collected value for `node`
  Assignment asm ln 2212, prod ln 243.13, live ln 244, enc 1
  %incdec.ptr = getelementptr inbounds %struct.node.1, %struct.node.1* %11, i32 1, l243 c13
  (w64 0x68)
Collected value for `stop`
  Assignment asm ln 2215, prod ln 243.29, live ln 244, enc 0
  %12 = load %struct.node.1*, %struct.node.1** %stop_nodes, l243 c29
  (w64 0x0)
Collected value for `node`
  Assignment asm ln 2220, prod ln 243.58, live ln 244, enc 2
  %node.0 = phi %struct.node.1* [ %incdec.ptr, %if.end ], [ %incdec.ptr16, %for.inc ]
  Block: 0
  (w64 0x68)
Collected value for `arc`
  Assignment asm ln 2265, prod ln 250.11, live ln 251, enc 1
  Concrete pointer resolves to realloc.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) realloc.return.deref_1)
  Replaced concrete pointer with hash (w64 0x32CAA2B11DD898E6)
  %20 = bitcast i8* %call19 to %struct.arc.0*, l250 c11
  (w64 0x32CAA2B11DD898E6)

🔔 Unable to execute all after instructions

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `net` (decl src ln 203)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2929, prod ln 246.41, live ln 247, enc None
  %40 = load %struct.network*, %struct.network** %net.addr, l246 c41
and
  assn asm ln 2858, prod ln 232.52, live ln 233, enc None
  %15 = load %struct.network*, %struct.network** %net.addr, l232 c52
🔔 Removing: asm ln 2929, prod ln 246.41, live ln 247, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
and
  assn asm ln 2858, prod ln 232.52, live ln 233, enc None
  %15 = load %struct.network*, %struct.network** %net.addr, l232 c52

Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2826, prod ln 217.19, live ln 218, enc 1
  %0 = load %struct.network*, %struct.network** %net.addr, l217 c19
  (w64 0xF07BF0E3328ED348)
and
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
🔔 Removing: asm ln 2826, prod ln 217.19, live ln 218, enc 1

Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2829, prod ln 217.5, live ln 218, enc 2
  %2 = load %struct.network*, %struct.network** %net.addr, l217 c5
  (w64 0xF07BF0E3328ED348)
and
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
🔔 Removing: asm ln 2829, prod ln 217.5, live ln 218, enc 2

Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2834, prod ln 218.32, live ln 219, enc 3
  %4 = load %struct.network*, %struct.network** %net.addr, l218 c32
  (w64 0xF07BF0E3328ED348)
and
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
🔔 Removing: asm ln 2834, prod ln 218.32, live ln 219, enc 3

Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2837, prod ln 218.5, live ln 219, enc 4
  %6 = load %struct.network*, %struct.network** %net.addr, l218 c5
  (w64 0xF07BF0E3328ED348)
and
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
🔔 Removing: asm ln 2837, prod ln 218.5, live ln 219, enc 4

Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2842, prod ln 229.30, live ln 230, enc 5
  %8 = load %struct.network*, %struct.network** %net.addr, l229 c30
  (w64 0xF07BF0E3328ED348)
and
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
🔔 Removing: asm ln 2842, prod ln 229.30, live ln 230, enc 5

Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2846, prod ln 229.41, live ln 230, enc 6
  %11 = load %struct.network*, %struct.network** %net.addr, l229 c41
  (w64 0xF07BF0E3328ED348)
and
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
🔔 Removing: asm ln 2846, prod ln 229.41, live ln 230, enc 6

Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2868, prod ln 237.16, live ln 238, enc 7
  %17 = load %struct.network*, %struct.network** %net.addr, l237 c16
  (w64 0xF07BF0E3328ED348)
and
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
🔔 Removing: asm ln 2868, prod ln 237.16, live ln 238, enc 7

Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2873, prod ln 239.5, live ln 240, enc 8
  %20 = load %struct.network*, %struct.network** %net.addr, l239 c5
  (w64 0xF07BF0E3328ED348)
and
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
🔔 Removing: asm ln 2873, prod ln 239.5, live ln 240, enc 8

Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2877, prod ln 240.28, live ln 241, enc 9
  %22 = load %struct.network*, %struct.network** %net.addr, l240 c28
  (w64 0xF07BF0E3328ED348)
and
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
🔔 Removing: asm ln 2877, prod ln 240.28, live ln 241, enc 9

Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2881, prod ln 240.5, live ln 241, enc 10
  %24 = load %struct.network*, %struct.network** %net.addr, l240 c5
  (w64 0xF07BF0E3328ED348)
and
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
🔔 Removing: asm ln 2881, prod ln 240.5, live ln 241, enc 10

Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2884, prod ln 242.19, live ln 243, enc 11
  %25 = load %struct.network*, %struct.network** %net.addr, l242 c19
  (w64 0xF07BF0E3328ED348)
and
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
🔔 Removing: asm ln 2884, prod ln 242.19, live ln 243, enc 11

Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2892, prod ln 243.24, live ln 244, enc 12
  %28 = load %struct.network*, %struct.network** %net.addr, l243 c24
  (w64 0xF07BF0E3328ED348)
and
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
🔔 Removing: asm ln 2892, prod ln 243.24, live ln 244, enc 12

Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2946, prod ln 250.30, live ln 251, enc 13
  %45 = load %struct.network*, %struct.network** %net.addr, l250 c30
  (w64 0xF07BF0E3328ED348)
and
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
🔔 Removing: asm ln 2946, prod ln 250.30, live ln 251, enc 13

Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2950, prod ln 250.48, live ln 251, enc 14
  %48 = load %struct.network*, %struct.network** %net.addr, l250 c48
  (w64 0xF07BF0E3328ED348)
and
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
🔔 Removing: asm ln 2950, prod ln 250.48, live ln 251, enc 14

Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2958, prod ln 251.5, live ln 252, enc 15
  %52 = load %struct.network*, %struct.network** %net.addr, l251 c5
  (w64 0xF07BF0E3328ED348)
and
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
🔔 Removing: asm ln 2958, prod ln 251.5, live ln 252, enc 15

Filtering before assignments: `arc` (decl src ln 209)

Checking equivalence of `arc` (decl src ln 209) from
  assn asm ln 2853, prod ln 230.10, live ln 231, enc 1
  %14 = load %struct.arc*, %struct.arc** %arc, l230 c10
  (w64 0x32CAA2B11DD898E6)
and
  assn asm ln 2852, prod ln 229.11, live ln 230, enc 0
  %13 = bitcast i8* %call to %struct.arc*, l229 c11
  (w64 0x32CAA2B11DD898E6)
🔔 Removing: asm ln 2853, prod ln 230.10, live ln 231, enc 1

Checking equivalence of `arc` (decl src ln 209) from
  assn asm ln 2872, prod ln 239.17, live ln 240, enc 2
  %19 = load %struct.arc*, %struct.arc** %arc, l239 c17
  (w64 0x32CAA2B11DD898E6)
and
  assn asm ln 2852, prod ln 229.11, live ln 230, enc 0
  %13 = bitcast i8* %call to %struct.arc*, l229 c11
  (w64 0x32CAA2B11DD898E6)
🔔 Removing: asm ln 2872, prod ln 239.17, live ln 240, enc 2

Checking equivalence of `arc` (decl src ln 209) from
  assn asm ln 2876, prod ln 240.22, live ln 241, enc 3
  %21 = load %struct.arc*, %struct.arc** %arc, l240 c22
  (w64 0x32CAA2B11DD898E6)
and
  assn asm ln 2852, prod ln 229.11, live ln 230, enc 0
  %13 = bitcast i8* %call to %struct.arc*, l229 c11
  (w64 0x32CAA2B11DD898E6)
🔔 Removing: asm ln 2876, prod ln 240.22, live ln 241, enc 3

Checking equivalence of `arc` (decl src ln 209) from
  assn asm ln 2956, prod ln 250.11, live ln 251, enc 4
  %50 = bitcast i8* %call19 to %struct.arc*, l250 c11
  (w64 0x32CAA2B11DD898E6)
and
  assn asm ln 2852, prod ln 229.11, live ln 230, enc 0
  %13 = bitcast i8* %call to %struct.arc*, l229 c11
  (w64 0x32CAA2B11DD898E6)
🔔 Removing: asm ln 2956, prod ln 250.11, live ln 251, enc 4

Checking equivalence of `arc` (decl src ln 209) from
  assn asm ln 2957, prod ln 251.24, live ln 252, enc 5
  %51 = load %struct.arc*, %struct.arc** %arc, l251 c24
  (w64 0x32CAA2B11DD898E6)
and
  assn asm ln 2852, prod ln 229.11, live ln 230, enc 0
  %13 = bitcast i8* %call to %struct.arc*, l229 c11
  (w64 0x32CAA2B11DD898E6)
🔔 Removing: asm ln 2957, prod ln 251.24, live ln 252, enc 5

Filtering before assignments: `old_arcs` (decl src ln 209)

Expected 1 symbolic value(s), got 0
Checking equivalence of `old_arcs` (decl src ln 209) from
  assn asm ln 2871, prod ln 237.21, live ln 239, enc 0
  %18 = load %struct.arc*, %struct.arc** %arcs6, l237 c21
and
  assn asm ln 2923, prod ln 245.35, live ln 246, enc None
  %39 = load %struct.arc*, %struct.arc** %old_arcs, l245 c35

Filtering before assignments: `node` (decl src ln 210)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 210) from
  assn asm ln 2940, prod ln 243.58, live ln 244, enc None
  %44 = load %struct.node*, %struct.node** %node, l243 c58
and
  assn asm ln 2942, prod ln 243.58, live ln 244, enc None
  %incdec.ptr16 = getelementptr inbounds %struct.node, %struct.node* %44, i32 1, l243 c58
🔔 Removing: asm ln 2940, prod ln 243.58, live ln 244, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 210) from
  assn asm ln 2934, prod ln 246.13, live ln 247, enc None
  %43 = load %struct.node*, %struct.node** %node, l246 c13
and
  assn asm ln 2942, prod ln 243.58, live ln 244, enc None
  %incdec.ptr16 = getelementptr inbounds %struct.node, %struct.node* %44, i32 1, l243 c58
🔔 Removing: asm ln 2934, prod ln 246.13, live ln 247, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 210) from
  assn asm ln 2920, prod ln 245.17, live ln 246, enc None
  %37 = load %struct.node*, %struct.node** %node, l245 c17
and
  assn asm ln 2942, prod ln 243.58, live ln 244, enc None
  %incdec.ptr16 = getelementptr inbounds %struct.node, %struct.node* %44, i32 1, l243 c58
🔔 Removing: asm ln 2920, prod ln 245.17, live ln 246, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 210) from
  assn asm ln 2912, prod ln 244.31, live ln 245, enc None
  %34 = load %struct.node*, %struct.node** %node, l244 c31
and
  assn asm ln 2942, prod ln 243.58, live ln 244, enc None
  %incdec.ptr16 = getelementptr inbounds %struct.node, %struct.node* %44, i32 1, l243 c58
🔔 Removing: asm ln 2912, prod ln 244.31, live ln 245, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 210) from
  assn asm ln 2905, prod ln 244.12, live ln 245, enc None
  %32 = load %struct.node*, %struct.node** %node, l244 c12
and
  assn asm ln 2942, prod ln 243.58, live ln 244, enc None
  %incdec.ptr16 = getelementptr inbounds %struct.node, %struct.node* %44, i32 1, l243 c58
🔔 Removing: asm ln 2905, prod ln 244.12, live ln 245, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 210) from
  assn asm ln 2887, prod ln 242.24, live ln 243, enc 0
  %26 = load %struct.node*, %struct.node** %nodes, l242 c24
and
  assn asm ln 2942, prod ln 243.58, live ln 244, enc None
  %incdec.ptr16 = getelementptr inbounds %struct.node, %struct.node* %44, i32 1, l243 c58

Checking equivalence of `node` (decl src ln 210) from
  assn asm ln 2889, prod ln 243.13, live ln 244, enc 1
  %27 = load %struct.node*, %struct.node** %node, l243 c13
  (w64 0x0)
and
  assn asm ln 2887, prod ln 242.24, live ln 243, enc 0
  %26 = load %struct.node*, %struct.node** %nodes, l242 c24
  (w64 0x0)
🔔 Removing: asm ln 2889, prod ln 243.13, live ln 244, enc 1

Checking equivalence of `node` (decl src ln 210) from
  assn asm ln 2891, prod ln 243.13, live ln 244, enc 2
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %27, i32 1, l243 c13
  (w64 0x68)
and
  assn asm ln 2887, prod ln 242.24, live ln 243, enc 0
  %26 = load %struct.node*, %struct.node** %nodes, l242 c24
  (w64 0x0)

Checking equivalence of `node` (decl src ln 210) from
  assn asm ln 2899, prod ln 243.41, live ln 244, enc 3
  %30 = load %struct.node*, %struct.node** %node, l243 c41
  (w64 0x68)
and
  assn asm ln 2891, prod ln 243.13, live ln 244, enc 2
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %27, i32 1, l243 c13
  (w64 0x68)
🔔 Removing: asm ln 2899, prod ln 243.41, live ln 244, enc 3

Filtering before assignments: `stop` (decl src ln 210)

Checking equivalence of `stop` (decl src ln 210) from
  assn asm ln 2900, prod ln 243.48, live ln 244, enc 1
  %31 = load %struct.node*, %struct.node** %stop, l243 c48
  (w64 0x0)
and
  assn asm ln 2895, prod ln 243.29, live ln 244, enc 0
  %29 = load %struct.node*, %struct.node** %stop_nodes, l243 c29
  (w64 0x0)
🔔 Removing: asm ln 2900, prod ln 243.48, live ln 244, enc 1

Filtering before assignments: `root` (decl src ln 210)

Expected 1 symbolic value(s), got 0
Checking equivalence of `root` (decl src ln 210) from
  assn asm ln 2888, prod ln 242.24, live ln 243, enc 0
  %26 = load %struct.node*, %struct.node** %nodes, l242 c24
and
  assn asm ln 2915, prod ln 244.45, live ln 245, enc None
  %36 = load %struct.node*, %struct.node** %root, l244 c45

Filtering before assignments: `off` (decl src ln 211)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `off` (decl src ln 211) from
  assn asm ln 2928, prod ln 245.33, live ln 246, enc None
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 72, l245 c33
and
  assn asm ln 2932, prod ln 246.53, live ln 247, enc None
  %42 = load i64, i64* %off, l246 c53
🔔 Removing: asm ln 2928, prod ln 245.33, live ln 246, enc None

Filtering after assignments: `arc` (decl src ln 209)

Checking equivalence of `arc` (decl src ln 209) from
  assn asm ln 2265, prod ln 250.11, live ln 251, enc 1
  %20 = bitcast i8* %call19 to %struct.arc.0*, l250 c11
  (w64 0x32CAA2B11DD898E6)
and
  assn asm ln 2184, prod ln 229.11, live ln 230, enc 0
  %7 = bitcast i8* %call to %struct.arc.0*, l229 c11
  (w64 0x32CAA2B11DD898E6)
🔔 Removing: asm ln 2265, prod ln 250.11, live ln 251, enc 1

Filtering after assignments: `node` (decl src ln 210)

Expected 1 symbolic value(s), got 0
Checking equivalence of `node` (decl src ln 210) from
  assn asm ln 2209, prod ln 242.24, live ln 243, enc 0
  %11 = load %struct.node.1*, %struct.node.1** %nodes, l242 c24
and
  assn asm ln 2253, prod ln 243.58, live ln 244, enc None
  %incdec.ptr16 = getelementptr inbounds %struct.node.1, %struct.node.1* %node.0, i32 1, l243 c58

Checking equivalence of `node` (decl src ln 210) from
  assn asm ln 2212, prod ln 243.13, live ln 244, enc 1
  %incdec.ptr = getelementptr inbounds %struct.node.1, %struct.node.1* %11, i32 1, l243 c13
  (w64 0x68)
and
  assn asm ln 2209, prod ln 242.24, live ln 243, enc 0
  %11 = load %struct.node.1*, %struct.node.1** %nodes, l242 c24
  (w64 0x0)

Checking equivalence of `node` (decl src ln 210) from
  assn asm ln 2220, prod ln 243.58, live ln 244, enc 2
  %node.0 = phi %struct.node.1* [ %incdec.ptr, %if.end ], [ %incdec.ptr16, %for.inc ]
  (w64 0x68)
and
  assn asm ln 2212, prod ln 243.13, live ln 244, enc 1
  %incdec.ptr = getelementptr inbounds %struct.node.1, %struct.node.1* %11, i32 1, l243 c13
  (w64 0x68)
🔔 Removing: asm ln 2220, prod ln 243.58, live ln 244, enc 2

Collating encountered before assignments: `net` (decl src ln 203)
❌ Assignment asm ln 2858, prod ln 232.52, live ln 233, enc None for `net` (decl src ln 203) was not encountered during execution
  asm ln 2818, prod ln 203.0, live ln 217, enc 0
Collating encountered before assignments: `arc` (decl src ln 209)
  asm ln 2852, prod ln 229.11, live ln 230, enc 0
Collating encountered before assignments: `old_arcs` (decl src ln 209)
❌ Assignment asm ln 2923, prod ln 245.35, live ln 246, enc None for `old_arcs` (decl src ln 209) was not encountered during execution
  asm ln 2871, prod ln 237.21, live ln 239, enc 0
Collating encountered before assignments: `node` (decl src ln 210)
❌ Assignment asm ln 2942, prod ln 243.58, live ln 244, enc None for `node` (decl src ln 210) was not encountered during execution
  asm ln 2887, prod ln 242.24, live ln 243, enc 0
  asm ln 2891, prod ln 243.13, live ln 244, enc 1
Collating encountered before assignments: `stop` (decl src ln 210)
  asm ln 2895, prod ln 243.29, live ln 244, enc 0
Collating encountered before assignments: `root` (decl src ln 210)
❌ Assignment asm ln 2915, prod ln 244.45, live ln 245, enc None for `root` (decl src ln 210) was not encountered during execution
  asm ln 2888, prod ln 242.24, live ln 243, enc 0
Collating encountered before assignments: `off` (decl src ln 211)
❌ Assignment asm ln 2932, prod ln 246.53, live ln 247, enc None for `off` (decl src ln 211) was not encountered during execution

Collating encountered after assignments: `net` (decl src ln 203)
  asm ln 2163, prod ln 203.0, live ln 217, enc 0
Collating encountered after assignments: `arc` (decl src ln 209)
  asm ln 2184, prod ln 229.11, live ln 230, enc 0
Collating encountered after assignments: `old_arcs` (decl src ln 209)
  asm ln 2199, prod ln 237.21, live ln 239, enc 0
Collating encountered after assignments: `node` (decl src ln 210)
❌ Assignment asm ln 2253, prod ln 243.58, live ln 244, enc None for `node` (decl src ln 210) was not encountered during execution
  asm ln 2209, prod ln 242.24, live ln 243, enc 0
  asm ln 2212, prod ln 243.13, live ln 244, enc 1
Collating encountered after assignments: `root` (decl src ln 210)
  asm ln 2210, prod ln 242.24, live ln 243, enc 0
Collating encountered after assignments: `stop` (decl src ln 210)
  asm ln 2215, prod ln 243.29, live ln 244, enc 0
Collating encountered after assignments: `off` (decl src ln 211)
❌ Assignment asm ln 2243, prod ln 245.33, live ln 246, enc None for `off` (decl src ln 211) was not encountered during execution

#### Check after using before as reference

Checking equivalence of `arc` (decl src ln 209) from
  assn asm ln 2184, prod ln 229.11, live ln 230, enc 0
  %7 = bitcast i8* %call to %struct.arc.0*, l229 c11
  (w64 0x32CAA2B11DD898E6)
and
  assn asm ln 2852, prod ln 229.11, live ln 230, enc 0
  %13 = bitcast i8* %call to %struct.arc*, l229 c11
  (w64 0x32CAA2B11DD898E6)
✅ Before `arc` (decl src ln 209) assn asm ln 2852, prod ln 229.11, live ln 230, enc 0 symbolic value matches after assn asm ln 2184, prod ln 229.11, live ln 230, enc 0

✅ After `arc` assns checked using before as reference
Assignments:         arc
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
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

🔔 Before assn asm ln 2858, prod ln 232.52, live ln 233, enc None for `net` (decl src ln 203) has no symbolic value (likely unreachable) from %15 = load %struct.network*, %struct.network** %net.addr, l232 c52

Checking equivalence of `net` (decl src ln 203) from
  assn asm ln 2163, prod ln 203.0, live ln 217, enc 0
  %struct.network.2* %net
  (w64 0xF07BF0E3328ED348)
and
  assn asm ln 2818, prod ln 203.0, live ln 217, enc 0
  %struct.network* %net
  (w64 0xF07BF0E3328ED348)
✅ Before `net` (decl src ln 203) assn asm ln 2818, prod ln 203.0, live ln 217, enc 0 symbolic value matches after assn asm ln 2163, prod ln 203.0, live ln 217, enc 0

✅ After `net` assns checked using before as reference
Assignments:         net
  Reference:         2
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
  Unreachable:       1
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

🔔 Before assn asm ln 2942, prod ln 243.58, live ln 244, enc None for `node` (decl src ln 210) has no symbolic value (likely unreachable) from %incdec.ptr16 = getelementptr inbounds %struct.node, %struct.node* %44, i32 1, l243 c58

❌ After assn asm ln 2253, prod ln 243.58, live ln 244, enc None for `node` (decl src ln 210) was not encountered during execution

Checking equivalence of `node` (decl src ln 210) from
  assn asm ln 2209, prod ln 242.24, live ln 243, enc 0
  %11 = load %struct.node.1*, %struct.node.1** %nodes, l242 c24
  (w64 0x0)
and
  assn asm ln 2887, prod ln 242.24, live ln 243, enc 0
  %26 = load %struct.node*, %struct.node** %nodes, l242 c24
  (w64 0x0)
✅ Before `node` (decl src ln 210) assn asm ln 2887, prod ln 242.24, live ln 243, enc 0 symbolic value matches after assn asm ln 2209, prod ln 242.24, live ln 243, enc 0

Checking equivalence of `node` (decl src ln 210) from
  assn asm ln 2212, prod ln 243.13, live ln 244, enc 1
  %incdec.ptr = getelementptr inbounds %struct.node.1, %struct.node.1* %11, i32 1, l243 c13
  (w64 0x68)
and
  assn asm ln 2891, prod ln 243.13, live ln 244, enc 1
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %27, i32 1, l243 c13
  (w64 0x68)
✅ Before `node` (decl src ln 210) assn asm ln 2891, prod ln 243.13, live ln 244, enc 1 symbolic value matches after assn asm ln 2212, prod ln 243.13, live ln 244, enc 1

❌ After `node` assns checked using before as reference
Assignments:         node
  Reference:         3
  Test:              3
Matching:
  Matching Coords:   2
  Matching Value:    2
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       1
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

🔔 Before assn asm ln 2932, prod ln 246.53, live ln 247, enc None for `off` (decl src ln 211) has no symbolic value (likely unreachable) from %42 = load i64, i64* %off, l246 c53

❌ After assn asm ln 2243, prod ln 245.33, live ln 246, enc None for `off` (decl src ln 211) was not encountered during execution

❌ After `off` assns checked using before as reference
Assignments:         off
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       1
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

🔔 Before assn asm ln 2923, prod ln 245.35, live ln 246, enc None for `old_arcs` (decl src ln 209) has no symbolic value (likely unreachable) from %39 = load %struct.arc*, %struct.arc** %old_arcs, l245 c35

Checking equivalence of `old_arcs` (decl src ln 209) from
  assn asm ln 2199, prod ln 237.21, live ln 239, enc 0
  %9 = load %struct.arc.0*, %struct.arc.0** %arcs6, l237 c21
  (w64 0x0)
and
  assn asm ln 2871, prod ln 237.21, live ln 239, enc 0
  %18 = load %struct.arc*, %struct.arc** %arcs6, l237 c21
  (w64 0x0)
✅ Before `old_arcs` (decl src ln 209) assn asm ln 2871, prod ln 237.21, live ln 239, enc 0 symbolic value matches after assn asm ln 2199, prod ln 237.21, live ln 239, enc 0

✅ After `old_arcs` assns checked using before as reference
Assignments:         old_arcs
  Reference:         2
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
  Unreachable:       1
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

🔔 Before assn asm ln 2915, prod ln 244.45, live ln 245, enc None for `root` (decl src ln 210) has no symbolic value (likely unreachable) from %36 = load %struct.node*, %struct.node** %root, l244 c45

Checking equivalence of `root` (decl src ln 210) from
  assn asm ln 2210, prod ln 242.24, live ln 243, enc 0
  %11 = load %struct.node.1*, %struct.node.1** %nodes, l242 c24
  (w64 0x0)
and
  assn asm ln 2888, prod ln 242.24, live ln 243, enc 0
  %26 = load %struct.node*, %struct.node** %nodes, l242 c24
  (w64 0x0)
✅ Before `root` (decl src ln 210) assn asm ln 2888, prod ln 242.24, live ln 243, enc 0 symbolic value matches after assn asm ln 2210, prod ln 242.24, live ln 243, enc 0

✅ After `root` assns checked using before as reference
Assignments:         root
  Reference:         2
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
  Unreachable:       1
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `stop` (decl src ln 210) from
  assn asm ln 2215, prod ln 243.29, live ln 244, enc 0
  %12 = load %struct.node.1*, %struct.node.1** %stop_nodes, l243 c29
  (w64 0x0)
and
  assn asm ln 2895, prod ln 243.29, live ln 244, enc 0
  %29 = load %struct.node*, %struct.node** %stop_nodes, l243 c29
  (w64 0x0)
✅ Before `stop` (decl src ln 210) assn asm ln 2895, prod ln 243.29, live ln 244, enc 0 symbolic value matches after assn asm ln 2215, prod ln 243.29, live ln 244, enc 0

✅ After `stop` assns checked using before as reference
Assignments:         stop
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
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

## Function `insert_new_arc`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `newarc` (decl src ln 263), asm ln 3182
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9, asm ln 3182
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3182, prod ln 302.9, live ln 303, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3174
  %68 = load %struct.arc*, %struct.arc** %newarc.addr, l301 c9, asm ln 3174
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3174, prod ln 301.9, live ln 302, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3167
  %65 = load %struct.arc*, %struct.arc** %newarc.addr, l300 c9, asm ln 3167
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3167, prod ln 300.9, live ln 301, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3160
  %62 = load %struct.arc*, %struct.arc** %newarc.addr, l299 c9, asm ln 3160
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3160, prod ln 299.9, live ln 300, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3153
  %59 = load %struct.arc*, %struct.arc** %newarc.addr, l298 c9, asm ln 3153
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3153, prod ln 298.9, live ln 299, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3146
  %56 = load %struct.arc*, %struct.arc** %newarc.addr, l297 c9, asm ln 3146
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3146, prod ln 297.9, live ln 298, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3136
  %52 = load %struct.arc*, %struct.arc** %newarc.addr, l294 c9, asm ln 3136
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3136, prod ln 294.9, live ln 295, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3129
  %49 = load %struct.arc*, %struct.arc** %newarc.addr, l294 c34, asm ln 3129
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3129, prod ln 294.34, live ln 295, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3123
  %47 = load %struct.arc*, %struct.arc** %newarc.addr, l293 c9, asm ln 3123
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3123, prod ln 293.9, live ln 294, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3116
  %44 = load %struct.arc*, %struct.arc** %newarc.addr, l293 c34, asm ln 3116
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3116, prod ln 293.34, live ln 294, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3110
  %42 = load %struct.arc*, %struct.arc** %newarc.addr, l292 c9, asm ln 3110
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3110, prod ln 292.9, live ln 293, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3103
  %39 = load %struct.arc*, %struct.arc** %newarc.addr, l292 c34, asm ln 3103
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3103, prod ln 292.34, live ln 293, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3097
  %37 = load %struct.arc*, %struct.arc** %newarc.addr, l291 c9, asm ln 3097
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3097, prod ln 291.9, live ln 292, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3090
  %34 = load %struct.arc*, %struct.arc** %newarc.addr, l291 c34, asm ln 3090
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3090, prod ln 291.34, live ln 292, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3084
  %32 = load %struct.arc*, %struct.arc** %newarc.addr, l290 c9, asm ln 3084
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3084, prod ln 290.9, live ln 291, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3077
  %29 = load %struct.arc*, %struct.arc** %newarc.addr, l290 c34, asm ln 3077
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3077, prod ln 290.34, live ln 291, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3071
  %27 = load %struct.arc*, %struct.arc** %newarc.addr, l289 c9, asm ln 3071
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3071, prod ln 289.9, live ln 290, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3064
  %24 = load %struct.arc*, %struct.arc** %newarc.addr, l289 c34, asm ln 3064
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3064, prod ln 289.34, live ln 290, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3053
  %21 = load %struct.arc*, %struct.arc** %newarc.addr, l287 c40, asm ln 3053
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3053, prod ln 287.40, live ln 288, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3035
  %16 = load %struct.arc*, %struct.arc** %newarc.addr, l284 c5, asm ln 3035
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3035, prod ln 284.5, live ln 285, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3028
  %13 = load %struct.arc*, %struct.arc** %newarc.addr, l283 c5, asm ln 3028
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3028, prod ln 283.5, live ln 284, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3022
  %10 = load %struct.arc*, %struct.arc** %newarc.addr, l282 c5, asm ln 3022
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3022, prod ln 282.5, live ln 283, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3016
  %7 = load %struct.arc*, %struct.arc** %newarc.addr, l281 c5, asm ln 3016
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3016, prod ln 281.5, live ln 282, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3010
  %4 = load %struct.arc*, %struct.arc** %newarc.addr, l280 c5, asm ln 3010
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3010, prod ln 280.5, live ln 281, enc None
Load from declared address of `newarc` (decl src ln 263), asm ln 3004
  %1 = load %struct.arc*, %struct.arc** %newarc.addr, l279 c5, asm ln 3004
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3004, prod ln 279.5, live ln 280, enc None
Store to declared address of `newarc` (decl src ln 263), asm ln 2986
  arg 0
  Added assignment asm ln 2986, prod ln 263.0, live ln 279, enc None
Load from declared address of `newpos` (decl src ln 263), asm ln 3040
  %18 = load i64, i64* %newpos.addr, l286 c11, asm ln 3040
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3040, prod ln 286.11, live ln 287, enc None
Load from declared address of `newpos` (decl src ln 263), asm ln 3036
  %17 = load i64, i64* %newpos.addr, l284 c12, asm ln 3036
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3036, prod ln 284.12, live ln 285, enc None
Load from declared address of `newpos` (decl src ln 263), asm ln 3029
  %14 = load i64, i64* %newpos.addr, l283 c12, asm ln 3029
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3029, prod ln 283.12, live ln 284, enc None
Load from declared address of `newpos` (decl src ln 263), asm ln 3023
  %11 = load i64, i64* %newpos.addr, l282 c12, asm ln 3023
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3023, prod ln 282.12, live ln 283, enc None
Load from declared address of `newpos` (decl src ln 263), asm ln 3017
  %8 = load i64, i64* %newpos.addr, l281 c12, asm ln 3017
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3017, prod ln 281.12, live ln 282, enc None
Load from declared address of `newpos` (decl src ln 263), asm ln 3011
  %5 = load i64, i64* %newpos.addr, l280 c12, asm ln 3011
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3011, prod ln 280.12, live ln 281, enc None
Load from declared address of `newpos` (decl src ln 263), asm ln 3005
  %2 = load i64, i64* %newpos.addr, l279 c12, asm ln 3005
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3005, prod ln 279.12, live ln 280, enc None
Store to declared address of `newpos` (decl src ln 263), asm ln 2988
  arg 1
  Added assignment asm ln 2988, prod ln 263.0, live ln 279, enc None
Load from declared address of `tail` (decl src ln 263), asm ln 3145
  %55 = load %struct.node*, %struct.node** %tail.addr, l297 c34, asm ln 3145
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3145, prod ln 297.34, live ln 298, enc None
Load from declared address of `tail` (decl src ln 263), asm ln 3003
  %0 = load %struct.node*, %struct.node** %tail.addr, l279 c32, asm ln 3003
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3003, prod ln 279.32, live ln 280, enc None
Store to declared address of `tail` (decl src ln 263), asm ln 2990
  arg 2
  Added assignment asm ln 2990, prod ln 263.0, live ln 279, enc None
Load from declared address of `head` (decl src ln 263), asm ln 3152
  %58 = load %struct.node*, %struct.node** %head.addr, l298 c34, asm ln 3152
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3152, prod ln 298.34, live ln 299, enc None
Load from declared address of `head` (decl src ln 263), asm ln 3009
  %3 = load %struct.node*, %struct.node** %head.addr, l280 c32, asm ln 3009
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3009, prod ln 280.32, live ln 281, enc None
Store to declared address of `head` (decl src ln 263), asm ln 2992
  arg 3
  Added assignment asm ln 2992, prod ln 263.0, live ln 279, enc None
Load from declared address of `cost` (decl src ln 264), asm ln 3166
  %64 = load i64, i64* %cost.addr, l300 c34, asm ln 3166
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3166, prod ln 300.34, live ln 301, enc None
Load from declared address of `cost` (decl src ln 264), asm ln 3159
  %61 = load i64, i64* %cost.addr, l299 c34, asm ln 3159
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3159, prod ln 299.34, live ln 300, enc None
Load from declared address of `cost` (decl src ln 264), asm ln 3021
  %9 = load i64, i64* %cost.addr, l282 c32, asm ln 3021
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3021, prod ln 282.32, live ln 283, enc None
Load from declared address of `cost` (decl src ln 264), asm ln 3015
  %6 = load i64, i64* %cost.addr, l281 c32, asm ln 3015
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3015, prod ln 281.32, live ln 282, enc None
Store to declared address of `cost` (decl src ln 264), asm ln 2994
  arg 4
  Added assignment asm ln 2994, prod ln 264.0, live ln 279, enc None
Load from declared address of `red_cost` (decl src ln 264), asm ln 3173
  %67 = load i64, i64* %red_cost.addr, l301 c42, asm ln 3173
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3173, prod ln 301.42, live ln 302, enc None
Load from declared address of `red_cost` (decl src ln 264), asm ln 3052
  %20 = load i64, i64* %red_cost.addr, l287 c21, asm ln 3052
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3052, prod ln 287.21, live ln 288, enc None
Load from declared address of `red_cost` (decl src ln 264), asm ln 3027
  %12 = load i64, i64* %red_cost.addr, l283 c40, asm ln 3027
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3027, prod ln 283.40, live ln 284, enc None
Store to declared address of `red_cost` (decl src ln 264), asm ln 2996
  arg 5
  Added assignment asm ln 2996, prod ln 264.0, live ln 279, enc None
Store to declared address of `m` (decl src ln 264), asm ln 2998
  arg 6
  @dbg.declare without read users, removable
  Added assignment asm ln 2998, prod ln 264.0, live ln 279, enc None
Load from declared address of `number` (decl src ln 264), asm ln 3180
  %70 = load i64, i64* %number.addr, l302 c34, asm ln 3180
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3180, prod ln 302.34, live ln 303, enc None
Load from declared address of `number` (decl src ln 264), asm ln 3033
  %15 = load i64, i64* %number.addr, l284 c32, asm ln 3033
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3033, prod ln 284.32, live ln 285, enc None
Store to declared address of `number` (decl src ln 264), asm ln 3000
  arg 7
  Added assignment asm ln 3000, prod ln 264.0, live ln 279, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3183
  %72 = load i64, i64* %pos, l302 c16, asm ln 3183
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3183, prod ln 302.16, live ln 303, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3175
  %69 = load i64, i64* %pos, l301 c16, asm ln 3175
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3175, prod ln 301.16, live ln 302, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3168
  %66 = load i64, i64* %pos, l300 c16, asm ln 3168
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3168, prod ln 300.16, live ln 301, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3161
  %63 = load i64, i64* %pos, l299 c16, asm ln 3161
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3161, prod ln 299.16, live ln 300, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3154
  %60 = load i64, i64* %pos, l298 c16, asm ln 3154
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3154, prod ln 298.16, live ln 299, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3147
  %57 = load i64, i64* %pos, l297 c16, asm ln 3147
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3147, prod ln 297.16, live ln 298, enc None
Store to declared address of `pos` (decl src ln 277), asm ln 3144
  %div55 = sdiv i64 %54, 2, l296 c18, asm ln 3143
  Added assignment asm ln 3144, prod ln 296.18, live ln 297, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3142
  %54 = load i64, i64* %pos, l296 c15, asm ln 3142
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3142, prod ln 296.15, live ln 297, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3137
  %53 = load i64, i64* %pos, l294 c16, asm ln 3137
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3137, prod ln 294.16, live ln 295, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3130
  %50 = load i64, i64* %pos, l294 c41, asm ln 3130
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3130, prod ln 294.41, live ln 295, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3124
  %48 = load i64, i64* %pos, l293 c16, asm ln 3124
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3124, prod ln 293.16, live ln 294, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3117
  %45 = load i64, i64* %pos, l293 c41, asm ln 3117
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3117, prod ln 293.41, live ln 294, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3111
  %43 = load i64, i64* %pos, l292 c16, asm ln 3111
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3111, prod ln 292.16, live ln 293, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3104
  %40 = load i64, i64* %pos, l292 c41, asm ln 3104
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3104, prod ln 292.41, live ln 293, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3098
  %38 = load i64, i64* %pos, l291 c16, asm ln 3098
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3098, prod ln 291.16, live ln 292, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3091
  %35 = load i64, i64* %pos, l291 c41, asm ln 3091
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3091, prod ln 291.41, live ln 292, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3085
  %33 = load i64, i64* %pos, l290 c16, asm ln 3085
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3085, prod ln 290.16, live ln 291, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3078
  %30 = load i64, i64* %pos, l290 c41, asm ln 3078
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3078, prod ln 290.41, live ln 291, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3072
  %28 = load i64, i64* %pos, l289 c16, asm ln 3072
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3072, prod ln 289.16, live ln 290, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3065
  %25 = load i64, i64* %pos, l289 c41, asm ln 3065
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3065, prod ln 289.41, live ln 290, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3054
  %22 = load i64, i64* %pos, l287 c47, asm ln 3054
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3054, prod ln 287.47, live ln 288, enc None
Load from declared address of `pos` (decl src ln 277), asm ln 3046
  %19 = load i64, i64* %pos, l287 c12, asm ln 3046
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3046, prod ln 287.12, live ln 288, enc None
Store to declared address of `pos` (decl src ln 277), asm ln 3042
  %add = add nsw i64 %18, 1, l286 c17, asm ln 3041
  Added assignment asm ln 3042, prod ln 286.17, live ln 287, enc None

#### After variables

Value produced for `newarc` (decl src ln 263), asm ln 2283
  arg 0
  Added assignment asm ln 2283, prod ln 263.0, live ln 279, enc None
Value produced for `newpos` (decl src ln 263), asm ln 2284
  arg 1
  Added assignment asm ln 2284, prod ln 263.0, live ln 279, enc None
Value produced for `tail` (decl src ln 263), asm ln 2285
  arg 2
  Added assignment asm ln 2285, prod ln 263.0, live ln 279, enc None
Value produced for `head` (decl src ln 263), asm ln 2286
  arg 3
  Added assignment asm ln 2286, prod ln 263.0, live ln 279, enc None
Value produced for `cost` (decl src ln 264), asm ln 2287
  arg 4
  Added assignment asm ln 2287, prod ln 264.0, live ln 279, enc None
Value produced for `red_cost` (decl src ln 264), asm ln 2288
  arg 5
  Added assignment asm ln 2288, prod ln 264.0, live ln 279, enc None
Value produced for `m` (decl src ln 264), asm ln 2289
  arg 6
  Added assignment asm ln 2289, prod ln 264.0, live ln 279, enc None
Value produced for `number` (decl src ln 264), asm ln 2290
  arg 7
  Added assignment asm ln 2290, prod ln 264.0, live ln 279, enc None
Value produced for `pos` (decl src ln 277), asm ln 2311
  %add = add nsw i64 %newpos, 1, l286 c17, asm ln 2310
  Added assignment asm ln 2311, prod ln 286.17, live ln 287, enc None
Value produced for `pos` (decl src ln 277), asm ln 2386
  %div55 = sdiv i64 %pos.0, 2, l296 c18, asm ln 2385
  Added assignment asm ln 2386, prod ln 296.18, live ln 297, enc None
Value produced for `pos` (decl src ln 277), asm ln 2316
  %pos.0 = phi i64 [ %add, %entry ], [ %div55, %while.body ], asm ln 2315
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2316, prod ln 296.18, live ln 297, enc None

#### Summary

✅ 9 before variables found, 9 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `newarc`
  Assignment asm ln 2986, prod ln 263.0, live ln 279, enc 0
  Concrete pointer resolves to insert_new_arc.newarc.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) insert_new_arc.newarc.deref)
  Replaced concrete pointer with hash (w64 0xB3CABFBFAB8B4DDC)
  %struct.arc* %newarc
  (w64 0xB3CABFBFAB8B4DDC)
Collected value for `newpos`
  Assignment asm ln 2988, prod ln 263.0, live ln 279, enc 0
  i64 %newpos
  (ReadLSB w64 (w32 0x0) insert_new_arc.newpos)
Collected value for `tail`
  Assignment asm ln 2990, prod ln 263.0, live ln 279, enc 0
  Concrete pointer resolves to insert_new_arc.tail.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) insert_new_arc.tail.deref)
  Replaced concrete pointer with hash (w64 0xDEC52050C5E32E8D)
  %struct.node* %tail
  (w64 0xDEC52050C5E32E8D)
Collected value for `head`
  Assignment asm ln 2992, prod ln 263.0, live ln 279, enc 0
  Concrete pointer resolves to insert_new_arc.head.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) insert_new_arc.head.deref)
  Replaced concrete pointer with hash (w64 0xADDECCE6C6405B8F)
  %struct.node* %head
  (w64 0xADDECCE6C6405B8F)
Collected value for `cost`
  Assignment asm ln 2994, prod ln 264.0, live ln 279, enc 0
  i64 %cost
  (ReadLSB w64 (w32 0x0) insert_new_arc.cost)
Collected value for `red_cost`
  Assignment asm ln 2996, prod ln 264.0, live ln 279, enc 0
  i64 %red_cost
  (ReadLSB w64 (w32 0x0) insert_new_arc.red_cost)
Collected value for `m`
  Assignment asm ln 2998, prod ln 264.0, live ln 279, enc 0
  i64 %m
  (ReadLSB w64 (w32 0x0) insert_new_arc.m)
Collected value for `number`
  Assignment asm ln 3000, prod ln 264.0, live ln 279, enc 0
  i64 %number
  (ReadLSB w64 (w32 0x0) insert_new_arc.number)
Collected value for `tail`
  Assignment asm ln 3003, prod ln 279.32, live ln 280, enc 1
  Concrete pointer resolves to insert_new_arc.tail.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) insert_new_arc.tail.deref)
  Replaced concrete pointer with hash (w64 0xDEC52050C5E32E8D)
  %0 = load %struct.node*, %struct.node** %tail.addr, l279 c32
  (w64 0xDEC52050C5E32E8D)
Collected value for `newarc`
  Assignment asm ln 3004, prod ln 279.5, live ln 280, enc 1
  Concrete pointer resolves to insert_new_arc.newarc.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) insert_new_arc.newarc.deref)
  Replaced concrete pointer with hash (w64 0xB3CABFBFAB8B4DDC)
  %1 = load %struct.arc*, %struct.arc** %newarc.addr, l279 c5
  (w64 0xB3CABFBFAB8B4DDC)
Collected value for `newpos`
  Assignment asm ln 3005, prod ln 279.12, live ln 280, enc 1
  %2 = load i64, i64* %newpos.addr, l279 c12
  (ReadLSB w64 (w32 0x0) insert_new_arc.newpos)
[0;1;31mKLEE: ERROR: implicit.c:279: memory error: object read only
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
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

Collected value for `newarc`
  Assignment asm ln 2283, prod ln 263.0, live ln 279, enc 0
  Concrete pointer resolves to insert_new_arc.newarc.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) insert_new_arc.newarc.deref)
  Replaced concrete pointer with hash (w64 0xB3CABFBFAB8B4DDC)
  %struct.arc.0* %newarc
  (w64 0xB3CABFBFAB8B4DDC)
Collected value for `newpos`
  Assignment asm ln 2284, prod ln 263.0, live ln 279, enc 0
  i64 %newpos
  (ReadLSB w64 (w32 0x0) insert_new_arc.newpos)
Collected value for `tail`
  Assignment asm ln 2285, prod ln 263.0, live ln 279, enc 0
  Concrete pointer resolves to insert_new_arc.tail.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) insert_new_arc.tail.deref)
  Replaced concrete pointer with hash (w64 0xDEC52050C5E32E8D)
  %struct.node.1* %tail
  (w64 0xDEC52050C5E32E8D)
Collected value for `head`
  Assignment asm ln 2286, prod ln 263.0, live ln 279, enc 0
  Concrete pointer resolves to insert_new_arc.head.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) insert_new_arc.head.deref)
  Replaced concrete pointer with hash (w64 0xADDECCE6C6405B8F)
  %struct.node.1* %head
  (w64 0xADDECCE6C6405B8F)
Collected value for `cost`
  Assignment asm ln 2287, prod ln 264.0, live ln 279, enc 0
  i64 %cost
  (ReadLSB w64 (w32 0x0) insert_new_arc.cost)
Collected value for `red_cost`
  Assignment asm ln 2288, prod ln 264.0, live ln 279, enc 0
  i64 %red_cost
  (ReadLSB w64 (w32 0x0) insert_new_arc.red_cost)
Collected value for `m`
  Assignment asm ln 2289, prod ln 264.0, live ln 279, enc 0
  i64 %m
  (ReadLSB w64 (w32 0x0) insert_new_arc.m)
Collected value for `number`
  Assignment asm ln 2290, prod ln 264.0, live ln 279, enc 0
  i64 %number
  (ReadLSB w64 (w32 0x0) insert_new_arc.number)
[0;1;31mKLEE: ERROR: implicit.c:279: memory error: object read only
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0mKLEE: HaltTimer invoked
[0mKLEE: halting execution, dumping remaining states
[0m
🔔 Unable to execute all after instructions

🔔 Unable to execute all after program states

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `cost` (decl src ln 264)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cost` (decl src ln 264) from
  assn asm ln 3159, prod ln 299.34, live ln 300, enc None
  %61 = load i64, i64* %cost.addr, l299 c34
and
  assn asm ln 3166, prod ln 300.34, live ln 301, enc None
  %64 = load i64, i64* %cost.addr, l300 c34
🔔 Removing: asm ln 3159, prod ln 299.34, live ln 300, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cost` (decl src ln 264) from
  assn asm ln 3021, prod ln 282.32, live ln 283, enc None
  %9 = load i64, i64* %cost.addr, l282 c32
and
  assn asm ln 3166, prod ln 300.34, live ln 301, enc None
  %64 = load i64, i64* %cost.addr, l300 c34
🔔 Removing: asm ln 3021, prod ln 282.32, live ln 283, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cost` (decl src ln 264) from
  assn asm ln 3015, prod ln 281.32, live ln 282, enc None
  %6 = load i64, i64* %cost.addr, l281 c32
and
  assn asm ln 3166, prod ln 300.34, live ln 301, enc None
  %64 = load i64, i64* %cost.addr, l300 c34
🔔 Removing: asm ln 3015, prod ln 281.32, live ln 282, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `cost` (decl src ln 264) from
  assn asm ln 2994, prod ln 264.0, live ln 279, enc 0
  i64 %cost
and
  assn asm ln 3166, prod ln 300.34, live ln 301, enc None
  %64 = load i64, i64* %cost.addr, l300 c34

Filtering before assignments: `head` (decl src ln 263)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `head` (decl src ln 263) from
  assn asm ln 3009, prod ln 280.32, live ln 281, enc None
  %3 = load %struct.node*, %struct.node** %head.addr, l280 c32
and
  assn asm ln 3152, prod ln 298.34, live ln 299, enc None
  %58 = load %struct.node*, %struct.node** %head.addr, l298 c34
🔔 Removing: asm ln 3009, prod ln 280.32, live ln 281, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `head` (decl src ln 263) from
  assn asm ln 2992, prod ln 263.0, live ln 279, enc 0
  %struct.node* %head
and
  assn asm ln 3152, prod ln 298.34, live ln 299, enc None
  %58 = load %struct.node*, %struct.node** %head.addr, l298 c34

Filtering before assignments: `newarc` (decl src ln 263)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3174, prod ln 301.9, live ln 302, enc None
  %68 = load %struct.arc*, %struct.arc** %newarc.addr, l301 c9
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3174, prod ln 301.9, live ln 302, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3167, prod ln 300.9, live ln 301, enc None
  %65 = load %struct.arc*, %struct.arc** %newarc.addr, l300 c9
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3167, prod ln 300.9, live ln 301, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3160, prod ln 299.9, live ln 300, enc None
  %62 = load %struct.arc*, %struct.arc** %newarc.addr, l299 c9
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3160, prod ln 299.9, live ln 300, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3153, prod ln 298.9, live ln 299, enc None
  %59 = load %struct.arc*, %struct.arc** %newarc.addr, l298 c9
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3153, prod ln 298.9, live ln 299, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3146, prod ln 297.9, live ln 298, enc None
  %56 = load %struct.arc*, %struct.arc** %newarc.addr, l297 c9
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3146, prod ln 297.9, live ln 298, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3136, prod ln 294.9, live ln 295, enc None
  %52 = load %struct.arc*, %struct.arc** %newarc.addr, l294 c9
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3136, prod ln 294.9, live ln 295, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3129, prod ln 294.34, live ln 295, enc None
  %49 = load %struct.arc*, %struct.arc** %newarc.addr, l294 c34
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3129, prod ln 294.34, live ln 295, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3123, prod ln 293.9, live ln 294, enc None
  %47 = load %struct.arc*, %struct.arc** %newarc.addr, l293 c9
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3123, prod ln 293.9, live ln 294, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3116, prod ln 293.34, live ln 294, enc None
  %44 = load %struct.arc*, %struct.arc** %newarc.addr, l293 c34
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3116, prod ln 293.34, live ln 294, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3110, prod ln 292.9, live ln 293, enc None
  %42 = load %struct.arc*, %struct.arc** %newarc.addr, l292 c9
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3110, prod ln 292.9, live ln 293, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3103, prod ln 292.34, live ln 293, enc None
  %39 = load %struct.arc*, %struct.arc** %newarc.addr, l292 c34
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3103, prod ln 292.34, live ln 293, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3097, prod ln 291.9, live ln 292, enc None
  %37 = load %struct.arc*, %struct.arc** %newarc.addr, l291 c9
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3097, prod ln 291.9, live ln 292, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3090, prod ln 291.34, live ln 292, enc None
  %34 = load %struct.arc*, %struct.arc** %newarc.addr, l291 c34
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3090, prod ln 291.34, live ln 292, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3084, prod ln 290.9, live ln 291, enc None
  %32 = load %struct.arc*, %struct.arc** %newarc.addr, l290 c9
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3084, prod ln 290.9, live ln 291, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3077, prod ln 290.34, live ln 291, enc None
  %29 = load %struct.arc*, %struct.arc** %newarc.addr, l290 c34
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3077, prod ln 290.34, live ln 291, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3071, prod ln 289.9, live ln 290, enc None
  %27 = load %struct.arc*, %struct.arc** %newarc.addr, l289 c9
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3071, prod ln 289.9, live ln 290, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3064, prod ln 289.34, live ln 290, enc None
  %24 = load %struct.arc*, %struct.arc** %newarc.addr, l289 c34
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3064, prod ln 289.34, live ln 290, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3053, prod ln 287.40, live ln 288, enc None
  %21 = load %struct.arc*, %struct.arc** %newarc.addr, l287 c40
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3053, prod ln 287.40, live ln 288, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3035, prod ln 284.5, live ln 285, enc None
  %16 = load %struct.arc*, %struct.arc** %newarc.addr, l284 c5
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3035, prod ln 284.5, live ln 285, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3028, prod ln 283.5, live ln 284, enc None
  %13 = load %struct.arc*, %struct.arc** %newarc.addr, l283 c5
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3028, prod ln 283.5, live ln 284, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3022, prod ln 282.5, live ln 283, enc None
  %10 = load %struct.arc*, %struct.arc** %newarc.addr, l282 c5
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3022, prod ln 282.5, live ln 283, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3016, prod ln 281.5, live ln 282, enc None
  %7 = load %struct.arc*, %struct.arc** %newarc.addr, l281 c5
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3016, prod ln 281.5, live ln 282, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3010, prod ln 280.5, live ln 281, enc None
  %4 = load %struct.arc*, %struct.arc** %newarc.addr, l280 c5
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9
🔔 Removing: asm ln 3010, prod ln 280.5, live ln 281, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 2986, prod ln 263.0, live ln 279, enc 0
  %struct.arc* %newarc
and
  assn asm ln 3182, prod ln 302.9, live ln 303, enc None
  %71 = load %struct.arc*, %struct.arc** %newarc.addr, l302 c9

Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 3004, prod ln 279.5, live ln 280, enc 1
  %1 = load %struct.arc*, %struct.arc** %newarc.addr, l279 c5
  (w64 0xB3CABFBFAB8B4DDC)
and
  assn asm ln 2986, prod ln 263.0, live ln 279, enc 0
  %struct.arc* %newarc
  (w64 0xB3CABFBFAB8B4DDC)
🔔 Removing: asm ln 3004, prod ln 279.5, live ln 280, enc 1

Filtering before assignments: `newpos` (decl src ln 263)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newpos` (decl src ln 263) from
  assn asm ln 3036, prod ln 284.12, live ln 285, enc None
  %17 = load i64, i64* %newpos.addr, l284 c12
and
  assn asm ln 3040, prod ln 286.11, live ln 287, enc None
  %18 = load i64, i64* %newpos.addr, l286 c11
🔔 Removing: asm ln 3036, prod ln 284.12, live ln 285, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newpos` (decl src ln 263) from
  assn asm ln 3029, prod ln 283.12, live ln 284, enc None
  %14 = load i64, i64* %newpos.addr, l283 c12
and
  assn asm ln 3040, prod ln 286.11, live ln 287, enc None
  %18 = load i64, i64* %newpos.addr, l286 c11
🔔 Removing: asm ln 3029, prod ln 283.12, live ln 284, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newpos` (decl src ln 263) from
  assn asm ln 3023, prod ln 282.12, live ln 283, enc None
  %11 = load i64, i64* %newpos.addr, l282 c12
and
  assn asm ln 3040, prod ln 286.11, live ln 287, enc None
  %18 = load i64, i64* %newpos.addr, l286 c11
🔔 Removing: asm ln 3023, prod ln 282.12, live ln 283, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newpos` (decl src ln 263) from
  assn asm ln 3017, prod ln 281.12, live ln 282, enc None
  %8 = load i64, i64* %newpos.addr, l281 c12
and
  assn asm ln 3040, prod ln 286.11, live ln 287, enc None
  %18 = load i64, i64* %newpos.addr, l286 c11
🔔 Removing: asm ln 3017, prod ln 281.12, live ln 282, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newpos` (decl src ln 263) from
  assn asm ln 3011, prod ln 280.12, live ln 281, enc None
  %5 = load i64, i64* %newpos.addr, l280 c12
and
  assn asm ln 3040, prod ln 286.11, live ln 287, enc None
  %18 = load i64, i64* %newpos.addr, l286 c11
🔔 Removing: asm ln 3011, prod ln 280.12, live ln 281, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `newpos` (decl src ln 263) from
  assn asm ln 2988, prod ln 263.0, live ln 279, enc 0
  i64 %newpos
and
  assn asm ln 3040, prod ln 286.11, live ln 287, enc None
  %18 = load i64, i64* %newpos.addr, l286 c11

Checking equivalence of `newpos` (decl src ln 263) from
  assn asm ln 3005, prod ln 279.12, live ln 280, enc 1
  %2 = load i64, i64* %newpos.addr, l279 c12
  (ReadLSB w64 (w32 0x0) insert_new_arc.newpos)
and
  assn asm ln 2988, prod ln 263.0, live ln 279, enc 0
  i64 %newpos
  (ReadLSB w64 (w32 0x0) insert_new_arc.newpos)
Query to parse
array insert_new_arc.newpos[8] : w32 -> w8 = symbolic
array insert_new_arc.newpos[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) insert_new_arc.newpos)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) insert_new_arc.newpos)
     N0)
🔔 Removing: asm ln 3005, prod ln 279.12, live ln 280, enc 1

Filtering before assignments: `number` (decl src ln 264)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `number` (decl src ln 264) from
  assn asm ln 3033, prod ln 284.32, live ln 285, enc None
  %15 = load i64, i64* %number.addr, l284 c32
and
  assn asm ln 3180, prod ln 302.34, live ln 303, enc None
  %70 = load i64, i64* %number.addr, l302 c34
🔔 Removing: asm ln 3033, prod ln 284.32, live ln 285, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `number` (decl src ln 264) from
  assn asm ln 3000, prod ln 264.0, live ln 279, enc 0
  i64 %number
and
  assn asm ln 3180, prod ln 302.34, live ln 303, enc None
  %70 = load i64, i64* %number.addr, l302 c34

Filtering before assignments: `pos` (decl src ln 277)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3175, prod ln 301.16, live ln 302, enc None
  %69 = load i64, i64* %pos, l301 c16
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3175, prod ln 301.16, live ln 302, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3168, prod ln 300.16, live ln 301, enc None
  %66 = load i64, i64* %pos, l300 c16
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3168, prod ln 300.16, live ln 301, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3161, prod ln 299.16, live ln 300, enc None
  %63 = load i64, i64* %pos, l299 c16
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3161, prod ln 299.16, live ln 300, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3154, prod ln 298.16, live ln 299, enc None
  %60 = load i64, i64* %pos, l298 c16
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3154, prod ln 298.16, live ln 299, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3147, prod ln 297.16, live ln 298, enc None
  %57 = load i64, i64* %pos, l297 c16
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3147, prod ln 297.16, live ln 298, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3144, prod ln 296.18, live ln 297, enc None
  %div55 = sdiv i64 %54, 2, l296 c18
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3144, prod ln 296.18, live ln 297, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3142, prod ln 296.15, live ln 297, enc None
  %54 = load i64, i64* %pos, l296 c15
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3142, prod ln 296.15, live ln 297, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3137, prod ln 294.16, live ln 295, enc None
  %53 = load i64, i64* %pos, l294 c16
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3137, prod ln 294.16, live ln 295, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3130, prod ln 294.41, live ln 295, enc None
  %50 = load i64, i64* %pos, l294 c41
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3130, prod ln 294.41, live ln 295, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3124, prod ln 293.16, live ln 294, enc None
  %48 = load i64, i64* %pos, l293 c16
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3124, prod ln 293.16, live ln 294, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3117, prod ln 293.41, live ln 294, enc None
  %45 = load i64, i64* %pos, l293 c41
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3117, prod ln 293.41, live ln 294, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3111, prod ln 292.16, live ln 293, enc None
  %43 = load i64, i64* %pos, l292 c16
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3111, prod ln 292.16, live ln 293, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3104, prod ln 292.41, live ln 293, enc None
  %40 = load i64, i64* %pos, l292 c41
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3104, prod ln 292.41, live ln 293, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3098, prod ln 291.16, live ln 292, enc None
  %38 = load i64, i64* %pos, l291 c16
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3098, prod ln 291.16, live ln 292, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3091, prod ln 291.41, live ln 292, enc None
  %35 = load i64, i64* %pos, l291 c41
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3091, prod ln 291.41, live ln 292, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3085, prod ln 290.16, live ln 291, enc None
  %33 = load i64, i64* %pos, l290 c16
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3085, prod ln 290.16, live ln 291, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3078, prod ln 290.41, live ln 291, enc None
  %30 = load i64, i64* %pos, l290 c41
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3078, prod ln 290.41, live ln 291, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3072, prod ln 289.16, live ln 290, enc None
  %28 = load i64, i64* %pos, l289 c16
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3072, prod ln 289.16, live ln 290, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3065, prod ln 289.41, live ln 290, enc None
  %25 = load i64, i64* %pos, l289 c41
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3065, prod ln 289.41, live ln 290, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3054, prod ln 287.47, live ln 288, enc None
  %22 = load i64, i64* %pos, l287 c47
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3054, prod ln 287.47, live ln 288, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3046, prod ln 287.12, live ln 288, enc None
  %19 = load i64, i64* %pos, l287 c12
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3046, prod ln 287.12, live ln 288, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 3042, prod ln 286.17, live ln 287, enc None
  %add = add nsw i64 %18, 1, l286 c17
and
  assn asm ln 3183, prod ln 302.16, live ln 303, enc None
  %72 = load i64, i64* %pos, l302 c16
🔔 Removing: asm ln 3042, prod ln 286.17, live ln 287, enc None

Filtering before assignments: `red_cost` (decl src ln 264)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `red_cost` (decl src ln 264) from
  assn asm ln 3052, prod ln 287.21, live ln 288, enc None
  %20 = load i64, i64* %red_cost.addr, l287 c21
and
  assn asm ln 3173, prod ln 301.42, live ln 302, enc None
  %67 = load i64, i64* %red_cost.addr, l301 c42
🔔 Removing: asm ln 3052, prod ln 287.21, live ln 288, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `red_cost` (decl src ln 264) from
  assn asm ln 3027, prod ln 283.40, live ln 284, enc None
  %12 = load i64, i64* %red_cost.addr, l283 c40
and
  assn asm ln 3173, prod ln 301.42, live ln 302, enc None
  %67 = load i64, i64* %red_cost.addr, l301 c42
🔔 Removing: asm ln 3027, prod ln 283.40, live ln 284, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `red_cost` (decl src ln 264) from
  assn asm ln 2996, prod ln 264.0, live ln 279, enc 0
  i64 %red_cost
and
  assn asm ln 3173, prod ln 301.42, live ln 302, enc None
  %67 = load i64, i64* %red_cost.addr, l301 c42

Filtering before assignments: `tail` (decl src ln 263)

Expected 1 symbolic value(s), got 0
Checking equivalence of `tail` (decl src ln 263) from
  assn asm ln 2990, prod ln 263.0, live ln 279, enc 0
  %struct.node* %tail
and
  assn asm ln 3145, prod ln 297.34, live ln 298, enc None
  %55 = load %struct.node*, %struct.node** %tail.addr, l297 c34

Checking equivalence of `tail` (decl src ln 263) from
  assn asm ln 3003, prod ln 279.32, live ln 280, enc 1
  %0 = load %struct.node*, %struct.node** %tail.addr, l279 c32
  (w64 0xDEC52050C5E32E8D)
and
  assn asm ln 2990, prod ln 263.0, live ln 279, enc 0
  %struct.node* %tail
  (w64 0xDEC52050C5E32E8D)
🔔 Removing: asm ln 3003, prod ln 279.32, live ln 280, enc 1

Filtering after assignments: `pos` (decl src ln 277)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 2386, prod ln 296.18, live ln 297, enc None
  %div55 = sdiv i64 %pos.0, 2, l296 c18
and
  assn asm ln 2311, prod ln 286.17, live ln 287, enc None
  %add = add nsw i64 %newpos, 1, l286 c17
🔔 Removing: asm ln 2386, prod ln 296.18, live ln 297, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 277) from
  assn asm ln 2316, prod ln 296.18, live ln 297, enc None
  %pos.0 = phi i64 [ %add, %entry ], [ %div55, %while.body ]
and
  assn asm ln 2311, prod ln 286.17, live ln 287, enc None
  %add = add nsw i64 %newpos, 1, l286 c17
🔔 Removing: asm ln 2316, prod ln 296.18, live ln 297, enc None

Collating encountered before assignments: `cost` (decl src ln 264)
❌ Assignment asm ln 3166, prod ln 300.34, live ln 301, enc None for `cost` (decl src ln 264) was not encountered during execution
  asm ln 2994, prod ln 264.0, live ln 279, enc 0
Collating encountered before assignments: `head` (decl src ln 263)
❌ Assignment asm ln 3152, prod ln 298.34, live ln 299, enc None for `head` (decl src ln 263) was not encountered during execution
  asm ln 2992, prod ln 263.0, live ln 279, enc 0
Collating encountered before assignments: `m` (decl src ln 264)
  asm ln 2998, prod ln 264.0, live ln 279, enc 0
Collating encountered before assignments: `newarc` (decl src ln 263)
❌ Assignment asm ln 3182, prod ln 302.9, live ln 303, enc None for `newarc` (decl src ln 263) was not encountered during execution
  asm ln 2986, prod ln 263.0, live ln 279, enc 0
Collating encountered before assignments: `newpos` (decl src ln 263)
❌ Assignment asm ln 3040, prod ln 286.11, live ln 287, enc None for `newpos` (decl src ln 263) was not encountered during execution
  asm ln 2988, prod ln 263.0, live ln 279, enc 0
Collating encountered before assignments: `number` (decl src ln 264)
❌ Assignment asm ln 3180, prod ln 302.34, live ln 303, enc None for `number` (decl src ln 264) was not encountered during execution
  asm ln 3000, prod ln 264.0, live ln 279, enc 0
Collating encountered before assignments: `pos` (decl src ln 277)
❌ Assignment asm ln 3183, prod ln 302.16, live ln 303, enc None for `pos` (decl src ln 277) was not encountered during execution
Collating encountered before assignments: `red_cost` (decl src ln 264)
❌ Assignment asm ln 3173, prod ln 301.42, live ln 302, enc None for `red_cost` (decl src ln 264) was not encountered during execution
  asm ln 2996, prod ln 264.0, live ln 279, enc 0
Collating encountered before assignments: `tail` (decl src ln 263)
❌ Assignment asm ln 3145, prod ln 297.34, live ln 298, enc None for `tail` (decl src ln 263) was not encountered during execution
  asm ln 2990, prod ln 263.0, live ln 279, enc 0

Collating encountered after assignments: `cost` (decl src ln 264)
  asm ln 2287, prod ln 264.0, live ln 279, enc 0
Collating encountered after assignments: `head` (decl src ln 263)
  asm ln 2286, prod ln 263.0, live ln 279, enc 0
Collating encountered after assignments: `m` (decl src ln 264)
  asm ln 2289, prod ln 264.0, live ln 279, enc 0
Collating encountered after assignments: `newarc` (decl src ln 263)
  asm ln 2283, prod ln 263.0, live ln 279, enc 0
Collating encountered after assignments: `newpos` (decl src ln 263)
  asm ln 2284, prod ln 263.0, live ln 279, enc 0
Collating encountered after assignments: `number` (decl src ln 264)
  asm ln 2290, prod ln 264.0, live ln 279, enc 0
Collating encountered after assignments: `pos` (decl src ln 277)
❌ Assignment asm ln 2311, prod ln 286.17, live ln 287, enc None for `pos` (decl src ln 277) was not encountered during execution
Collating encountered after assignments: `red_cost` (decl src ln 264)
  asm ln 2288, prod ln 264.0, live ln 279, enc 0
Collating encountered after assignments: `tail` (decl src ln 263)
  asm ln 2285, prod ln 263.0, live ln 279, enc 0

#### Check after using before as reference

❌ Before assn asm ln 3166, prod ln 300.34, live ln 301, enc None for `cost` (decl src ln 264) was not encountered during execution

Checking equivalence of `cost` (decl src ln 264) from
  assn asm ln 2287, prod ln 264.0, live ln 279, enc 0
  i64 %cost
  (ReadLSB w64 (w32 0x0) insert_new_arc.cost)
and
  assn asm ln 2994, prod ln 264.0, live ln 279, enc 0
  i64 %cost
  (ReadLSB w64 (w32 0x0) insert_new_arc.cost)
Query to parse
array insert_new_arc.cost[8] : w32 -> w8 = symbolic
array insert_new_arc.cost[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) insert_new_arc.cost)
     (ReadLSB w64 (w32 0x0) insert_new_arc.cost)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) insert_new_arc.cost)
     N0)
✅ Before `cost` (decl src ln 264) assn asm ln 2994, prod ln 264.0, live ln 279, enc 0 symbolic value matches after assn asm ln 2287, prod ln 264.0, live ln 279, enc 0

❌ After `cost` assns checked using before as reference
Assignments:         cost
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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

❌ Before assn asm ln 3152, prod ln 298.34, live ln 299, enc None for `head` (decl src ln 263) was not encountered during execution

Checking equivalence of `head` (decl src ln 263) from
  assn asm ln 2286, prod ln 263.0, live ln 279, enc 0
  %struct.node.1* %head
  (w64 0xADDECCE6C6405B8F)
and
  assn asm ln 2992, prod ln 263.0, live ln 279, enc 0
  %struct.node* %head
  (w64 0xADDECCE6C6405B8F)
✅ Before `head` (decl src ln 263) assn asm ln 2992, prod ln 263.0, live ln 279, enc 0 symbolic value matches after assn asm ln 2286, prod ln 263.0, live ln 279, enc 0

❌ After `head` assns checked using before as reference
Assignments:         head
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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

Checking equivalence of `m` (decl src ln 264) from
  assn asm ln 2289, prod ln 264.0, live ln 279, enc 0
  i64 %m
  (ReadLSB w64 (w32 0x0) insert_new_arc.m)
and
  assn asm ln 2998, prod ln 264.0, live ln 279, enc 0
  i64 %m
  (ReadLSB w64 (w32 0x0) insert_new_arc.m)
Query to parse
array insert_new_arc.m[8] : w32 -> w8 = symbolic
array insert_new_arc.m[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) insert_new_arc.m)
     (ReadLSB w64 (w32 0x0) insert_new_arc.m)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) insert_new_arc.m)
     N0)
✅ Before `m` (decl src ln 264) assn asm ln 2998, prod ln 264.0, live ln 279, enc 0 symbolic value matches after assn asm ln 2289, prod ln 264.0, live ln 279, enc 0

✅ After `m` assns checked using before as reference
Assignments:         m
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

❌ Before assn asm ln 3182, prod ln 302.9, live ln 303, enc None for `newarc` (decl src ln 263) was not encountered during execution

Checking equivalence of `newarc` (decl src ln 263) from
  assn asm ln 2283, prod ln 263.0, live ln 279, enc 0
  %struct.arc.0* %newarc
  (w64 0xB3CABFBFAB8B4DDC)
and
  assn asm ln 2986, prod ln 263.0, live ln 279, enc 0
  %struct.arc* %newarc
  (w64 0xB3CABFBFAB8B4DDC)
✅ Before `newarc` (decl src ln 263) assn asm ln 2986, prod ln 263.0, live ln 279, enc 0 symbolic value matches after assn asm ln 2283, prod ln 263.0, live ln 279, enc 0

❌ After `newarc` assns checked using before as reference
Assignments:         newarc
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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

❌ Before assn asm ln 3040, prod ln 286.11, live ln 287, enc None for `newpos` (decl src ln 263) was not encountered during execution

Checking equivalence of `newpos` (decl src ln 263) from
  assn asm ln 2284, prod ln 263.0, live ln 279, enc 0
  i64 %newpos
  (ReadLSB w64 (w32 0x0) insert_new_arc.newpos)
and
  assn asm ln 2988, prod ln 263.0, live ln 279, enc 0
  i64 %newpos
  (ReadLSB w64 (w32 0x0) insert_new_arc.newpos)
Query to parse
array insert_new_arc.newpos[8] : w32 -> w8 = symbolic
array insert_new_arc.newpos[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) insert_new_arc.newpos)
     (ReadLSB w64 (w32 0x0) insert_new_arc.newpos)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) insert_new_arc.newpos)
     N0)
✅ Before `newpos` (decl src ln 263) assn asm ln 2988, prod ln 263.0, live ln 279, enc 0 symbolic value matches after assn asm ln 2284, prod ln 263.0, live ln 279, enc 0

❌ After `newpos` assns checked using before as reference
Assignments:         newpos
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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

❌ Before assn asm ln 3180, prod ln 302.34, live ln 303, enc None for `number` (decl src ln 264) was not encountered during execution

Checking equivalence of `number` (decl src ln 264) from
  assn asm ln 2290, prod ln 264.0, live ln 279, enc 0
  i64 %number
  (ReadLSB w64 (w32 0x0) insert_new_arc.number)
and
  assn asm ln 3000, prod ln 264.0, live ln 279, enc 0
  i64 %number
  (ReadLSB w64 (w32 0x0) insert_new_arc.number)
Query to parse
array insert_new_arc.number[8] : w32 -> w8 = symbolic
array insert_new_arc.number[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) insert_new_arc.number)
     (ReadLSB w64 (w32 0x0) insert_new_arc.number)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) insert_new_arc.number)
     N0)
✅ Before `number` (decl src ln 264) assn asm ln 3000, prod ln 264.0, live ln 279, enc 0 symbolic value matches after assn asm ln 2290, prod ln 264.0, live ln 279, enc 0

❌ After `number` assns checked using before as reference
Assignments:         number
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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

❌ Before assn asm ln 3183, prod ln 302.16, live ln 303, enc None for `pos` (decl src ln 277) was not encountered during execution

❌ After assn asm ln 2311, prod ln 286.17, live ln 287, enc None for `pos` (decl src ln 277) was not encountered during execution

❌ After `pos` assns checked using before as reference
Assignments:         pos
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
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

❌ Before assn asm ln 3173, prod ln 301.42, live ln 302, enc None for `red_cost` (decl src ln 264) was not encountered during execution

Checking equivalence of `red_cost` (decl src ln 264) from
  assn asm ln 2288, prod ln 264.0, live ln 279, enc 0
  i64 %red_cost
  (ReadLSB w64 (w32 0x0) insert_new_arc.red_cost)
and
  assn asm ln 2996, prod ln 264.0, live ln 279, enc 0
  i64 %red_cost
  (ReadLSB w64 (w32 0x0) insert_new_arc.red_cost)
Query to parse
array insert_new_arc.red_cost[8] : w32 -> w8 = symbolic
array insert_new_arc.red_cost[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) insert_new_arc.red_cost)
     (ReadLSB w64 (w32 0x0) insert_new_arc.red_cost)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) insert_new_arc.red_cost)
     N0)
✅ Before `red_cost` (decl src ln 264) assn asm ln 2996, prod ln 264.0, live ln 279, enc 0 symbolic value matches after assn asm ln 2288, prod ln 264.0, live ln 279, enc 0

❌ After `red_cost` assns checked using before as reference
Assignments:         red_cost
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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

❌ Before assn asm ln 3145, prod ln 297.34, live ln 298, enc None for `tail` (decl src ln 263) was not encountered during execution

Checking equivalence of `tail` (decl src ln 263) from
  assn asm ln 2285, prod ln 263.0, live ln 279, enc 0
  %struct.node.1* %tail
  (w64 0xDEC52050C5E32E8D)
and
  assn asm ln 2990, prod ln 263.0, live ln 279, enc 0
  %struct.node* %tail
  (w64 0xDEC52050C5E32E8D)
✅ Before `tail` (decl src ln 263) assn asm ln 2990, prod ln 263.0, live ln 279, enc 0 symbolic value matches after assn asm ln 2285, prod ln 263.0, live ln 279, enc 0

❌ After `tail` assns checked using before as reference
Assignments:         tail
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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

## Function `replace_weaker_arc`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `newarc` (decl src ln 314), asm ln 3420
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38, asm ln 3420
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3420, prod ln 358.38, live ln 359, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3414
  %75 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c17, asm ln 3414
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3414, prod ln 358.17, live ln 359, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3396
  %69 = load %struct.arc*, %struct.arc** %newarc.addr, l354 c9, asm ln 3396
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3396, prod ln 354.9, live ln 355, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3388
  %66 = load %struct.arc*, %struct.arc** %newarc.addr, l353 c9, asm ln 3388
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3388, prod ln 353.9, live ln 354, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3381
  %63 = load %struct.arc*, %struct.arc** %newarc.addr, l352 c9, asm ln 3381
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3381, prod ln 352.9, live ln 353, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3374
  %60 = load %struct.arc*, %struct.arc** %newarc.addr, l351 c9, asm ln 3374
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3374, prod ln 351.9, live ln 352, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3367
  %57 = load %struct.arc*, %struct.arc** %newarc.addr, l350 c9, asm ln 3367
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3367, prod ln 350.9, live ln 351, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3360
  %54 = load %struct.arc*, %struct.arc** %newarc.addr, l349 c9, asm ln 3360
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3360, prod ln 349.9, live ln 350, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3353
  %51 = load %struct.arc*, %struct.arc** %newarc.addr, l347 c9, asm ln 3353
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3353, prod ln 347.9, live ln 348, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3347
  %48 = load %struct.arc*, %struct.arc** %newarc.addr, l347 c30, asm ln 3347
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3347, prod ln 347.30, live ln 348, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3341
  %46 = load %struct.arc*, %struct.arc** %newarc.addr, l346 c9, asm ln 3341
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3341, prod ln 346.9, live ln 347, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3335
  %43 = load %struct.arc*, %struct.arc** %newarc.addr, l346 c30, asm ln 3335
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3335, prod ln 346.30, live ln 347, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3329
  %41 = load %struct.arc*, %struct.arc** %newarc.addr, l345 c9, asm ln 3329
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3329, prod ln 345.9, live ln 346, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3323
  %38 = load %struct.arc*, %struct.arc** %newarc.addr, l345 c34, asm ln 3323
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3323, prod ln 345.34, live ln 346, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3317
  %36 = load %struct.arc*, %struct.arc** %newarc.addr, l344 c9, asm ln 3317
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3317, prod ln 344.9, live ln 345, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3311
  %33 = load %struct.arc*, %struct.arc** %newarc.addr, l344 c30, asm ln 3311
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3311, prod ln 344.30, live ln 345, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3305
  %31 = load %struct.arc*, %struct.arc** %newarc.addr, l343 c9, asm ln 3305
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3305, prod ln 343.9, live ln 344, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3299
  %28 = load %struct.arc*, %struct.arc** %newarc.addr, l343 c30, asm ln 3299
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3299, prod ln 343.30, live ln 344, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3293
  %26 = load %struct.arc*, %struct.arc** %newarc.addr, l342 c9, asm ln 3293
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3293, prod ln 342.9, live ln 343, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3287
  %23 = load %struct.arc*, %struct.arc** %newarc.addr, l342 c30, asm ln 3287
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3287, prod ln 342.30, live ln 343, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3277
  %20 = load %struct.arc*, %struct.arc** %newarc.addr, l340 c63, asm ln 3277
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3277, prod ln 340.63, live ln 341, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3258
  %14 = load %struct.arc*, %struct.arc** %newarc.addr, l339 c29, asm ln 3258
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3258, prod ln 339.29, live ln 340, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3254
  %12 = load %struct.arc*, %struct.arc** %newarc.addr, l339 c12, asm ln 3254
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3254, prod ln 339.12, live ln 340, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3249
  %11 = load %struct.arc*, %struct.arc** %newarc.addr, l336 c5, asm ln 3249
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3249, prod ln 336.5, live ln 337, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3243
  %9 = load %struct.arc*, %struct.arc** %newarc.addr, l335 c5, asm ln 3243
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3243, prod ln 335.5, live ln 336, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3238
  %7 = load %struct.arc*, %struct.arc** %newarc.addr, l334 c5, asm ln 3238
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3238, prod ln 334.5, live ln 335, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3233
  %5 = load %struct.arc*, %struct.arc** %newarc.addr, l333 c5, asm ln 3233
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3233, prod ln 333.5, live ln 334, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3228
  %3 = load %struct.arc*, %struct.arc** %newarc.addr, l332 c5, asm ln 3228
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3228, prod ln 332.5, live ln 333, enc None
Load from declared address of `newarc` (decl src ln 314), asm ln 3223
  %1 = load %struct.arc*, %struct.arc** %newarc.addr, l331 c5, asm ln 3223
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3223, prod ln 331.5, live ln 332, enc None
Store to declared address of `newarc` (decl src ln 314), asm ln 3206
  arg 0
  Added assignment asm ln 3206, prod ln 314.0, live ln 331, enc None
Load from declared address of `tail` (decl src ln 314), asm ln 3359
  %53 = load %struct.node*, %struct.node** %tail.addr, l349 c30, asm ln 3359
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3359, prod ln 349.30, live ln 350, enc None
Load from declared address of `tail` (decl src ln 314), asm ln 3222
  %0 = load %struct.node*, %struct.node** %tail.addr, l331 c26, asm ln 3222
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3222, prod ln 331.26, live ln 332, enc None
Store to declared address of `tail` (decl src ln 314), asm ln 3208
  arg 1
  Added assignment asm ln 3208, prod ln 314.0, live ln 331, enc None
Load from declared address of `head` (decl src ln 314), asm ln 3366
  %56 = load %struct.node*, %struct.node** %head.addr, l350 c30, asm ln 3366
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3366, prod ln 350.30, live ln 351, enc None
Load from declared address of `head` (decl src ln 314), asm ln 3227
  %2 = load %struct.node*, %struct.node** %head.addr, l332 c26, asm ln 3227
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3227, prod ln 332.26, live ln 333, enc None
Store to declared address of `head` (decl src ln 314), asm ln 3210
  arg 2
  Added assignment asm ln 3210, prod ln 314.0, live ln 331, enc None
Load from declared address of `cost` (decl src ln 315), asm ln 3380
  %62 = load i64, i64* %cost.addr, l352 c34, asm ln 3380
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3380, prod ln 352.34, live ln 353, enc None
Load from declared address of `cost` (decl src ln 315), asm ln 3373
  %59 = load i64, i64* %cost.addr, l351 c30, asm ln 3373
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3373, prod ln 351.30, live ln 352, enc None
Load from declared address of `cost` (decl src ln 315), asm ln 3237
  %6 = load i64, i64* %cost.addr, l334 c26, asm ln 3237
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3237, prod ln 334.26, live ln 335, enc None
Load from declared address of `cost` (decl src ln 315), asm ln 3232
  %4 = load i64, i64* %cost.addr, l333 c26, asm ln 3232
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3232, prod ln 333.26, live ln 334, enc None
Store to declared address of `cost` (decl src ln 315), asm ln 3212
  arg 3
  Added assignment asm ln 3212, prod ln 315.0, live ln 331, enc None
Load from declared address of `red_cost` (decl src ln 315), asm ln 3387
  %65 = load i64, i64* %red_cost.addr, l353 c38, asm ln 3387
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3387, prod ln 353.38, live ln 354, enc None
Load from declared address of `red_cost` (decl src ln 315), asm ln 3276
  %19 = load i64, i64* %red_cost.addr, l340 c52, asm ln 3276
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3276, prod ln 340.52, live ln 341, enc None
Load from declared address of `red_cost` (decl src ln 315), asm ln 3242
  %8 = load i64, i64* %red_cost.addr, l335 c34, asm ln 3242
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3242, prod ln 335.34, live ln 336, enc None
Store to declared address of `red_cost` (decl src ln 315), asm ln 3214
  arg 4
  Added assignment asm ln 3214, prod ln 315.0, live ln 331, enc None
Load from declared address of `max_new_par_residual_new_arcs` (decl src ln 315), asm ln 3409
  %74 = load i64, i64* %max_new_par_residual_new_arcs.addr, l357 c24, asm ln 3409
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3409, prod ln 357.24, live ln 358, enc None
Load from declared address of `max_new_par_residual_new_arcs` (decl src ln 315), asm ln 3271
  %18 = load i64, i64* %max_new_par_residual_new_arcs.addr, l340 c19, asm ln 3271
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3271, prod ln 340.19, live ln 341, enc None
Store to declared address of `max_new_par_residual_new_arcs` (decl src ln 315), asm ln 3216
  arg 5
  Added assignment asm ln 3216, prod ln 315.0, live ln 331, enc None
Load from declared address of `number` (decl src ln 315), asm ln 3394
  %68 = load i64, i64* %number.addr, l354 c30, asm ln 3394
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3394, prod ln 354.30, live ln 355, enc None
Load from declared address of `number` (decl src ln 315), asm ln 3247
  %10 = load i64, i64* %number.addr, l336 c26, asm ln 3247
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3247, prod ln 336.26, live ln 337, enc None
Store to declared address of `number` (decl src ln 315), asm ln 3218
  arg 6
  Added assignment asm ln 3218, prod ln 315.0, live ln 331, enc None
Store to declared address of `pos` (decl src ln 328), asm ln 3403
  %71 = load i64, i64* %cmp, l355 c15, asm ln 3402
  Added assignment asm ln 3403, prod ln 355.15, live ln 356, enc None
Load from declared address of `pos` (decl src ln 328), asm ln 3354
  %52 = load i64, i64* %pos, l347 c16, asm ln 3354
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3354, prod ln 347.16, live ln 348, enc None
Load from declared address of `pos` (decl src ln 328), asm ln 3342
  %47 = load i64, i64* %pos, l346 c16, asm ln 3342
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3342, prod ln 346.16, live ln 347, enc None
Load from declared address of `pos` (decl src ln 328), asm ln 3330
  %42 = load i64, i64* %pos, l345 c16, asm ln 3330
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3330, prod ln 345.16, live ln 346, enc None
Load from declared address of `pos` (decl src ln 328), asm ln 3318
  %37 = load i64, i64* %pos, l344 c16, asm ln 3318
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3318, prod ln 344.16, live ln 345, enc None
Load from declared address of `pos` (decl src ln 328), asm ln 3306
  %32 = load i64, i64* %pos, l343 c16, asm ln 3306
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3306, prod ln 343.16, live ln 344, enc None
Load from declared address of `pos` (decl src ln 328), asm ln 3294
  %27 = load i64, i64* %pos, l342 c16, asm ln 3294
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3294, prod ln 342.16, live ln 343, enc None
Store to declared address of `pos` (decl src ln 328), asm ln 3253
  const i64 1
  Added assignment asm ln 3253, prod ln 338.9, live ln 339, enc None
Store to declared address of `cmp` (decl src ln 329), asm ln 3431
  %inc = add nsw i64 %81, 1, l359 c20, asm ln 3430
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3431, prod ln 359.20, live ln 360, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3429
  %81 = load i64, i64* %cmp, l359 c20, asm ln 3429
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3429, prod ln 359.20, live ln 360, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3421
  %79 = load i64, i64* %cmp, l358 c45, asm ln 3421
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3421, prod ln 358.45, live ln 359, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3415
  %76 = load i64, i64* %cmp, l358 c24, asm ln 3415
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3415, prod ln 358.24, live ln 359, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3407
  %73 = load i64, i64* %cmp, l357 c13, asm ln 3407
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3407, prod ln 357.13, live ln 358, enc None
Store to declared address of `cmp` (decl src ln 329), asm ln 3406
  %mul = mul nsw i64 %72, 2, l356 c13, asm ln 3405
  Added assignment asm ln 3406, prod ln 356.13, live ln 357, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3404
  %72 = load i64, i64* %cmp, l356 c13, asm ln 3404
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3404, prod ln 356.13, live ln 357, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3402
  %71 = load i64, i64* %cmp, l355 c15, asm ln 3402
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3402, prod ln 355.15, live ln 356, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3397
  %70 = load i64, i64* %cmp, l354 c16, asm ln 3397
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3397, prod ln 354.16, live ln 355, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3389
  %67 = load i64, i64* %cmp, l353 c16, asm ln 3389
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3389, prod ln 353.16, live ln 354, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3382
  %64 = load i64, i64* %cmp, l352 c16, asm ln 3382
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3382, prod ln 352.16, live ln 353, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3375
  %61 = load i64, i64* %cmp, l351 c16, asm ln 3375
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3375, prod ln 351.16, live ln 352, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3368
  %58 = load i64, i64* %cmp, l350 c16, asm ln 3368
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3368, prod ln 350.16, live ln 351, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3361
  %55 = load i64, i64* %cmp, l349 c16, asm ln 3361
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3361, prod ln 349.16, live ln 350, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3348
  %49 = load i64, i64* %cmp, l347 c37, asm ln 3348
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3348, prod ln 347.37, live ln 348, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3336
  %44 = load i64, i64* %cmp, l346 c37, asm ln 3336
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3336, prod ln 346.37, live ln 347, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3324
  %39 = load i64, i64* %cmp, l345 c41, asm ln 3324
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3324, prod ln 345.41, live ln 346, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3312
  %34 = load i64, i64* %cmp, l344 c37, asm ln 3312
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3312, prod ln 344.37, live ln 345, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3300
  %29 = load i64, i64* %cmp, l343 c37, asm ln 3300
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3300, prod ln 343.37, live ln 344, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3288
  %24 = load i64, i64* %cmp, l342 c37, asm ln 3288
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3288, prod ln 342.37, live ln 343, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3278
  %21 = load i64, i64* %cmp, l340 c70, asm ln 3278
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3278, prod ln 340.70, live ln 341, enc None
Load from declared address of `cmp` (decl src ln 329), asm ln 3270
  %17 = load i64, i64* %cmp, l340 c12, asm ln 3270
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3270, prod ln 340.12, live ln 341, enc None
Store to declared address of `cmp` (decl src ln 329), asm ln 3266
  %conv15 = sext i32 %cond to i64, l339 c11, asm ln 3265
  Added assignment asm ln 3266, prod ln 339.11, live ln 340, enc None

#### After variables

Value produced for `newarc` (decl src ln 314), asm ln 2421
  arg 0
  Added assignment asm ln 2421, prod ln 314.0, live ln 331, enc None
Value produced for `tail` (decl src ln 314), asm ln 2422
  arg 1
  Added assignment asm ln 2422, prod ln 314.0, live ln 331, enc None
Value produced for `head` (decl src ln 314), asm ln 2423
  arg 2
  Added assignment asm ln 2423, prod ln 314.0, live ln 331, enc None
Value produced for `cost` (decl src ln 315), asm ln 2424
  arg 3
  Added assignment asm ln 2424, prod ln 315.0, live ln 331, enc None
Value produced for `red_cost` (decl src ln 315), asm ln 2425
  arg 4
  Added assignment asm ln 2425, prod ln 315.0, live ln 331, enc None
Value produced for `max_new_par_residual_new_arcs` (decl src ln 315), asm ln 2426
  arg 5
  Added assignment asm ln 2426, prod ln 315.0, live ln 331, enc None
Value produced for `number` (decl src ln 315), asm ln 2427
  arg 6
  Added assignment asm ln 2427, prod ln 315.0, live ln 331, enc None
Value produced for `pos` (decl src ln 328), asm ln 2447
  const i64 1
  Added assignment asm ln 2447, prod ln 328.0, live ln 339, enc None
Value produced for `cmp` (decl src ln 329), asm ln 2458
  %conv15 = sext i32 %cond to i64, l339 c11, asm ln 2457
  Added assignment asm ln 2458, prod ln 339.11, live ln 340, enc None
Value produced for `cmp` (decl src ln 329), asm ln 2553
  %mul = mul nsw i64 %cmp.0, 2, l356 c13, asm ln 2552
  Added assignment asm ln 2553, prod ln 356.13, live ln 357, enc None
Value produced for `cmp` (decl src ln 329), asm ln 2569
  %spec.select = select i1 %cmp84, i64 %inc, i64 %mul, l358 c17, asm ln 2568
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2569, prod ln 358.17, live ln 359, enc None
Value produced for `cmp` (decl src ln 329), asm ln 2464
  %cmp.0 = phi i64 [ %conv15, %entry ], [ %cmp.2, %if.end87 ], asm ln 2463
  Added assignment asm ln 2464, prod ln 339.11, live ln 340, enc None
Value produced for `pos` (decl src ln 328), asm ln 2465
  %pos.0 = phi i64 [ 1, %entry ], [ %cmp.0, %if.end87 ], asm ln 2462
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 2465, prod ln 328.0, live ln 340, enc None
Value produced for `pos` (decl src ln 328), asm ln 2551
  %cmp.0 = phi i64 [ %conv15, %entry ], [ %cmp.2, %if.end87 ], asm ln 2463
  Added assignment asm ln 2551, prod ln 339.11, live ln 356, enc None
Value produced for `cmp` (decl src ln 329), asm ln 2574
  %cmp.2 = phi i64 [ %spec.select, %if.then ], [ %mul, %while.body ], asm ln 2573
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2574, prod ln 358.17, live ln 359, enc None

#### Summary

✅ 9 before variables found, 9 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `newarc`
  Assignment asm ln 3206, prod ln 314.0, live ln 331, enc 0
  Concrete pointer resolves to replace_weaker_arc.newarc.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) replace_weaker_arc.newarc.deref)
  Replaced concrete pointer with hash (w64 0x837C6801A3A1D1BF)
  %struct.arc* %newarc
  (w64 0x837C6801A3A1D1BF)
Collected value for `tail`
  Assignment asm ln 3208, prod ln 314.0, live ln 331, enc 0
  Concrete pointer resolves to replace_weaker_arc.tail.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) replace_weaker_arc.tail.deref)
  Replaced concrete pointer with hash (w64 0x11B0A39310165B72)
  %struct.node* %tail
  (w64 0x11B0A39310165B72)
Collected value for `head`
  Assignment asm ln 3210, prod ln 314.0, live ln 331, enc 0
  Concrete pointer resolves to replace_weaker_arc.head.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) replace_weaker_arc.head.deref)
  Replaced concrete pointer with hash (w64 0x4254EBC09DAF4161)
  %struct.node* %head
  (w64 0x4254EBC09DAF4161)
Collected value for `cost`
  Assignment asm ln 3212, prod ln 315.0, live ln 331, enc 0
  i64 %cost
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)
Collected value for `red_cost`
  Assignment asm ln 3214, prod ln 315.0, live ln 331, enc 0
  i64 %red_cost
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.red_cost)
Collected value for `max_new_par_residual_new_arcs`
  Assignment asm ln 3216, prod ln 315.0, live ln 331, enc 0
  i64 %max_new_par_residual_new_arcs
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.max_new_par_residual_new_arcs)
Collected value for `number`
  Assignment asm ln 3218, prod ln 315.0, live ln 331, enc 0
  i64 %number
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.number)
Collected value for `tail`
  Assignment asm ln 3222, prod ln 331.26, live ln 332, enc 1
  Concrete pointer resolves to replace_weaker_arc.tail.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) replace_weaker_arc.tail.deref)
  Replaced concrete pointer with hash (w64 0x11B0A39310165B72)
  %0 = load %struct.node*, %struct.node** %tail.addr, l331 c26
  (w64 0x11B0A39310165B72)
Collected value for `newarc`
  Assignment asm ln 3223, prod ln 331.5, live ln 332, enc 1
  Concrete pointer resolves to replace_weaker_arc.newarc.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) replace_weaker_arc.newarc.deref)
  Replaced concrete pointer with hash (w64 0x837C6801A3A1D1BF)
  %1 = load %struct.arc*, %struct.arc** %newarc.addr, l331 c5
  (w64 0x837C6801A3A1D1BF)
Collected value for `head`
  Assignment asm ln 3227, prod ln 332.26, live ln 333, enc 1
  Concrete pointer resolves to replace_weaker_arc.head.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) replace_weaker_arc.head.deref)
  Replaced concrete pointer with hash (w64 0x4254EBC09DAF4161)
  %2 = load %struct.node*, %struct.node** %head.addr, l332 c26
  (w64 0x4254EBC09DAF4161)
Collected value for `newarc`
  Assignment asm ln 3228, prod ln 332.5, live ln 333, enc 2
  Concrete pointer resolves to replace_weaker_arc.newarc.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) replace_weaker_arc.newarc.deref)
  Replaced concrete pointer with hash (w64 0x837C6801A3A1D1BF)
  %3 = load %struct.arc*, %struct.arc** %newarc.addr, l332 c5
  (w64 0x837C6801A3A1D1BF)
Collected value for `cost`
  Assignment asm ln 3232, prod ln 333.26, live ln 334, enc 1
  %4 = load i64, i64* %cost.addr, l333 c26
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)
Collected value for `newarc`
  Assignment asm ln 3233, prod ln 333.5, live ln 334, enc 3
  Concrete pointer resolves to replace_weaker_arc.newarc.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) replace_weaker_arc.newarc.deref)
  Replaced concrete pointer with hash (w64 0x837C6801A3A1D1BF)
  %5 = load %struct.arc*, %struct.arc** %newarc.addr, l333 c5
  (w64 0x837C6801A3A1D1BF)
Collected value for `cost`
  Assignment asm ln 3237, prod ln 334.26, live ln 335, enc 2
  %6 = load i64, i64* %cost.addr, l334 c26
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)
Collected value for `newarc`
  Assignment asm ln 3238, prod ln 334.5, live ln 335, enc 4
  Concrete pointer resolves to replace_weaker_arc.newarc.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) replace_weaker_arc.newarc.deref)
  Replaced concrete pointer with hash (w64 0x837C6801A3A1D1BF)
  %7 = load %struct.arc*, %struct.arc** %newarc.addr, l334 c5
  (w64 0x837C6801A3A1D1BF)
Collected value for `red_cost`
  Assignment asm ln 3242, prod ln 335.34, live ln 336, enc 1
  %8 = load i64, i64* %red_cost.addr, l335 c34
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.red_cost)
Collected value for `newarc`
  Assignment asm ln 3243, prod ln 335.5, live ln 336, enc 5
  Concrete pointer resolves to replace_weaker_arc.newarc.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) replace_weaker_arc.newarc.deref)
  Replaced concrete pointer with hash (w64 0x837C6801A3A1D1BF)
  %9 = load %struct.arc*, %struct.arc** %newarc.addr, l335 c5
  (w64 0x837C6801A3A1D1BF)
Collected value for `number`
  Assignment asm ln 3247, prod ln 336.26, live ln 337, enc 1
  %10 = load i64, i64* %number.addr, l336 c26
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.number)
Collected value for `newarc`
  Assignment asm ln 3249, prod ln 336.5, live ln 337, enc 6
  Concrete pointer resolves to replace_weaker_arc.newarc.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) replace_weaker_arc.newarc.deref)
  Replaced concrete pointer with hash (w64 0x837C6801A3A1D1BF)
  %11 = load %struct.arc*, %struct.arc** %newarc.addr, l336 c5
  (w64 0x837C6801A3A1D1BF)
Collected value for `pos`
  Assignment asm ln 3253, prod ln 338.9, live ln 339, enc 0
  i64 1
  (w64 0x1)
Collected value for `newarc`
  Assignment asm ln 3254, prod ln 339.12, live ln 340, enc 7
  Concrete pointer resolves to replace_weaker_arc.newarc.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) replace_weaker_arc.number)
  Replaced concrete pointer with hash (w64 0x837C6801A3A1D1BF)
  %12 = load %struct.arc*, %struct.arc** %newarc.addr, l339 c12
  (w64 0x837C6801A3A1D1BF)
Collected value for `newarc`
  Assignment asm ln 3258, prod ln 339.29, live ln 340, enc 8
  Concrete pointer resolves to replace_weaker_arc.newarc.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) replace_weaker_arc.number)
  Replaced concrete pointer with hash (w64 0x837C6801A3A1D1BF)
  %14 = load %struct.arc*, %struct.arc** %newarc.addr, l339 c29
  (w64 0x837C6801A3A1D1BF)
[0;1;31mKLEE: ERROR: implicit.c:339: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all before instructions

🔔 Unable to execute all before program states

#### After values

Collected value for `newarc`
  Assignment asm ln 2421, prod ln 314.0, live ln 331, enc 0
  Concrete pointer resolves to replace_weaker_arc.newarc.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) replace_weaker_arc.newarc.deref)
  Replaced concrete pointer with hash (w64 0x837C6801A3A1D1BF)
  %struct.arc.0* %newarc
  (w64 0x837C6801A3A1D1BF)
Collected value for `tail`
  Assignment asm ln 2422, prod ln 314.0, live ln 331, enc 0
  Concrete pointer resolves to replace_weaker_arc.tail.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) replace_weaker_arc.tail.deref)
  Replaced concrete pointer with hash (w64 0x11B0A39310165B72)
  %struct.node.1* %tail
  (w64 0x11B0A39310165B72)
Collected value for `head`
  Assignment asm ln 2423, prod ln 314.0, live ln 331, enc 0
  Concrete pointer resolves to replace_weaker_arc.head.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) replace_weaker_arc.head.deref)
  Replaced concrete pointer with hash (w64 0x4254EBC09DAF4161)
  %struct.node.1* %head
  (w64 0x4254EBC09DAF4161)
Collected value for `cost`
  Assignment asm ln 2424, prod ln 315.0, live ln 331, enc 0
  i64 %cost
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)
Collected value for `red_cost`
  Assignment asm ln 2425, prod ln 315.0, live ln 331, enc 0
  i64 %red_cost
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.red_cost)
Collected value for `max_new_par_residual_new_arcs`
  Assignment asm ln 2426, prod ln 315.0, live ln 331, enc 0
  i64 %max_new_par_residual_new_arcs
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.max_new_par_residual_new_arcs)
Collected value for `number`
  Assignment asm ln 2427, prod ln 315.0, live ln 331, enc 0
  i64 %number
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.number)
Collected value for `pos`
  Assignment asm ln 2447, prod ln 328.0, live ln 339, enc 0
  i64 1
  (w64 0x1)
[0;1;31mKLEE: ERROR: implicit.c:339: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all after instructions

🔔 Unable to execute all after program states

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `cmp` (decl src ln 329)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3429, prod ln 359.20, live ln 360, enc None
  %81 = load i64, i64* %cmp, l359 c20
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3429, prod ln 359.20, live ln 360, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3421, prod ln 358.45, live ln 359, enc None
  %79 = load i64, i64* %cmp, l358 c45
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3421, prod ln 358.45, live ln 359, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3415, prod ln 358.24, live ln 359, enc None
  %76 = load i64, i64* %cmp, l358 c24
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3415, prod ln 358.24, live ln 359, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3407, prod ln 357.13, live ln 358, enc None
  %73 = load i64, i64* %cmp, l357 c13
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3407, prod ln 357.13, live ln 358, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3406, prod ln 356.13, live ln 357, enc None
  %mul = mul nsw i64 %72, 2, l356 c13
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3406, prod ln 356.13, live ln 357, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3404, prod ln 356.13, live ln 357, enc None
  %72 = load i64, i64* %cmp, l356 c13
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3404, prod ln 356.13, live ln 357, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3402, prod ln 355.15, live ln 356, enc None
  %71 = load i64, i64* %cmp, l355 c15
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3402, prod ln 355.15, live ln 356, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3397, prod ln 354.16, live ln 355, enc None
  %70 = load i64, i64* %cmp, l354 c16
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3397, prod ln 354.16, live ln 355, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3389, prod ln 353.16, live ln 354, enc None
  %67 = load i64, i64* %cmp, l353 c16
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3389, prod ln 353.16, live ln 354, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3382, prod ln 352.16, live ln 353, enc None
  %64 = load i64, i64* %cmp, l352 c16
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3382, prod ln 352.16, live ln 353, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3375, prod ln 351.16, live ln 352, enc None
  %61 = load i64, i64* %cmp, l351 c16
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3375, prod ln 351.16, live ln 352, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3368, prod ln 350.16, live ln 351, enc None
  %58 = load i64, i64* %cmp, l350 c16
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3368, prod ln 350.16, live ln 351, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3361, prod ln 349.16, live ln 350, enc None
  %55 = load i64, i64* %cmp, l349 c16
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3361, prod ln 349.16, live ln 350, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3348, prod ln 347.37, live ln 348, enc None
  %49 = load i64, i64* %cmp, l347 c37
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3348, prod ln 347.37, live ln 348, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3336, prod ln 346.37, live ln 347, enc None
  %44 = load i64, i64* %cmp, l346 c37
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3336, prod ln 346.37, live ln 347, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3324, prod ln 345.41, live ln 346, enc None
  %39 = load i64, i64* %cmp, l345 c41
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3324, prod ln 345.41, live ln 346, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3312, prod ln 344.37, live ln 345, enc None
  %34 = load i64, i64* %cmp, l344 c37
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3312, prod ln 344.37, live ln 345, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3300, prod ln 343.37, live ln 344, enc None
  %29 = load i64, i64* %cmp, l343 c37
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3300, prod ln 343.37, live ln 344, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3288, prod ln 342.37, live ln 343, enc None
  %24 = load i64, i64* %cmp, l342 c37
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3288, prod ln 342.37, live ln 343, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3278, prod ln 340.70, live ln 341, enc None
  %21 = load i64, i64* %cmp, l340 c70
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3278, prod ln 340.70, live ln 341, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3270, prod ln 340.12, live ln 341, enc None
  %17 = load i64, i64* %cmp, l340 c12
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3270, prod ln 340.12, live ln 341, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 3266, prod ln 339.11, live ln 340, enc None
  %conv15 = sext i32 %cond to i64, l339 c11
and
  assn asm ln 3431, prod ln 359.20, live ln 360, enc None
  %inc = add nsw i64 %81, 1, l359 c20
🔔 Removing: asm ln 3266, prod ln 339.11, live ln 340, enc None

Filtering before assignments: `cost` (decl src ln 315)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cost` (decl src ln 315) from
  assn asm ln 3373, prod ln 351.30, live ln 352, enc None
  %59 = load i64, i64* %cost.addr, l351 c30
and
  assn asm ln 3380, prod ln 352.34, live ln 353, enc None
  %62 = load i64, i64* %cost.addr, l352 c34
🔔 Removing: asm ln 3373, prod ln 351.30, live ln 352, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `cost` (decl src ln 315) from
  assn asm ln 3212, prod ln 315.0, live ln 331, enc 0
  i64 %cost
and
  assn asm ln 3380, prod ln 352.34, live ln 353, enc None
  %62 = load i64, i64* %cost.addr, l352 c34

Checking equivalence of `cost` (decl src ln 315) from
  assn asm ln 3232, prod ln 333.26, live ln 334, enc 1
  %4 = load i64, i64* %cost.addr, l333 c26
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)
and
  assn asm ln 3212, prod ln 315.0, live ln 331, enc 0
  i64 %cost
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)
Query to parse
array replace_weaker_arc.cost[8] : w32 -> w8 = symbolic
array replace_weaker_arc.cost[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)
     N0)
🔔 Removing: asm ln 3232, prod ln 333.26, live ln 334, enc 1

Checking equivalence of `cost` (decl src ln 315) from
  assn asm ln 3237, prod ln 334.26, live ln 335, enc 2
  %6 = load i64, i64* %cost.addr, l334 c26
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)
and
  assn asm ln 3212, prod ln 315.0, live ln 331, enc 0
  i64 %cost
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)
Query to parse
array replace_weaker_arc.cost[8] : w32 -> w8 = symbolic
array replace_weaker_arc.cost[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)
     N0)
🔔 Removing: asm ln 3237, prod ln 334.26, live ln 335, enc 2

Filtering before assignments: `head` (decl src ln 314)

Expected 1 symbolic value(s), got 0
Checking equivalence of `head` (decl src ln 314) from
  assn asm ln 3210, prod ln 314.0, live ln 331, enc 0
  %struct.node* %head
and
  assn asm ln 3366, prod ln 350.30, live ln 351, enc None
  %56 = load %struct.node*, %struct.node** %head.addr, l350 c30

Checking equivalence of `head` (decl src ln 314) from
  assn asm ln 3227, prod ln 332.26, live ln 333, enc 1
  %2 = load %struct.node*, %struct.node** %head.addr, l332 c26
  (w64 0x4254EBC09DAF4161)
and
  assn asm ln 3210, prod ln 314.0, live ln 331, enc 0
  %struct.node* %head
  (w64 0x4254EBC09DAF4161)
🔔 Removing: asm ln 3227, prod ln 332.26, live ln 333, enc 1

Filtering before assignments: `max_new_par_residual_new_arcs` (decl src ln 315)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `max_new_par_residual_new_arcs` (decl src ln 315) from
  assn asm ln 3271, prod ln 340.19, live ln 341, enc None
  %18 = load i64, i64* %max_new_par_residual_new_arcs.addr, l340 c19
and
  assn asm ln 3409, prod ln 357.24, live ln 358, enc None
  %74 = load i64, i64* %max_new_par_residual_new_arcs.addr, l357 c24
🔔 Removing: asm ln 3271, prod ln 340.19, live ln 341, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `max_new_par_residual_new_arcs` (decl src ln 315) from
  assn asm ln 3216, prod ln 315.0, live ln 331, enc 0
  i64 %max_new_par_residual_new_arcs
and
  assn asm ln 3409, prod ln 357.24, live ln 358, enc None
  %74 = load i64, i64* %max_new_par_residual_new_arcs.addr, l357 c24

Filtering before assignments: `newarc` (decl src ln 314)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3414, prod ln 358.17, live ln 359, enc None
  %75 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c17
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3414, prod ln 358.17, live ln 359, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3396, prod ln 354.9, live ln 355, enc None
  %69 = load %struct.arc*, %struct.arc** %newarc.addr, l354 c9
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3396, prod ln 354.9, live ln 355, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3388, prod ln 353.9, live ln 354, enc None
  %66 = load %struct.arc*, %struct.arc** %newarc.addr, l353 c9
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3388, prod ln 353.9, live ln 354, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3381, prod ln 352.9, live ln 353, enc None
  %63 = load %struct.arc*, %struct.arc** %newarc.addr, l352 c9
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3381, prod ln 352.9, live ln 353, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3374, prod ln 351.9, live ln 352, enc None
  %60 = load %struct.arc*, %struct.arc** %newarc.addr, l351 c9
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3374, prod ln 351.9, live ln 352, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3367, prod ln 350.9, live ln 351, enc None
  %57 = load %struct.arc*, %struct.arc** %newarc.addr, l350 c9
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3367, prod ln 350.9, live ln 351, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3360, prod ln 349.9, live ln 350, enc None
  %54 = load %struct.arc*, %struct.arc** %newarc.addr, l349 c9
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3360, prod ln 349.9, live ln 350, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3353, prod ln 347.9, live ln 348, enc None
  %51 = load %struct.arc*, %struct.arc** %newarc.addr, l347 c9
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3353, prod ln 347.9, live ln 348, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3347, prod ln 347.30, live ln 348, enc None
  %48 = load %struct.arc*, %struct.arc** %newarc.addr, l347 c30
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3347, prod ln 347.30, live ln 348, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3341, prod ln 346.9, live ln 347, enc None
  %46 = load %struct.arc*, %struct.arc** %newarc.addr, l346 c9
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3341, prod ln 346.9, live ln 347, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3335, prod ln 346.30, live ln 347, enc None
  %43 = load %struct.arc*, %struct.arc** %newarc.addr, l346 c30
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3335, prod ln 346.30, live ln 347, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3329, prod ln 345.9, live ln 346, enc None
  %41 = load %struct.arc*, %struct.arc** %newarc.addr, l345 c9
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3329, prod ln 345.9, live ln 346, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3323, prod ln 345.34, live ln 346, enc None
  %38 = load %struct.arc*, %struct.arc** %newarc.addr, l345 c34
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3323, prod ln 345.34, live ln 346, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3317, prod ln 344.9, live ln 345, enc None
  %36 = load %struct.arc*, %struct.arc** %newarc.addr, l344 c9
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3317, prod ln 344.9, live ln 345, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3311, prod ln 344.30, live ln 345, enc None
  %33 = load %struct.arc*, %struct.arc** %newarc.addr, l344 c30
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3311, prod ln 344.30, live ln 345, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3305, prod ln 343.9, live ln 344, enc None
  %31 = load %struct.arc*, %struct.arc** %newarc.addr, l343 c9
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3305, prod ln 343.9, live ln 344, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3299, prod ln 343.30, live ln 344, enc None
  %28 = load %struct.arc*, %struct.arc** %newarc.addr, l343 c30
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3299, prod ln 343.30, live ln 344, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3293, prod ln 342.9, live ln 343, enc None
  %26 = load %struct.arc*, %struct.arc** %newarc.addr, l342 c9
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3293, prod ln 342.9, live ln 343, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3287, prod ln 342.30, live ln 343, enc None
  %23 = load %struct.arc*, %struct.arc** %newarc.addr, l342 c30
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3287, prod ln 342.30, live ln 343, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3277, prod ln 340.63, live ln 341, enc None
  %20 = load %struct.arc*, %struct.arc** %newarc.addr, l340 c63
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38
🔔 Removing: asm ln 3277, prod ln 340.63, live ln 341, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3206, prod ln 314.0, live ln 331, enc 0
  %struct.arc* %newarc
and
  assn asm ln 3420, prod ln 358.38, live ln 359, enc None
  %78 = load %struct.arc*, %struct.arc** %newarc.addr, l358 c38

Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3223, prod ln 331.5, live ln 332, enc 1
  %1 = load %struct.arc*, %struct.arc** %newarc.addr, l331 c5
  (w64 0x837C6801A3A1D1BF)
and
  assn asm ln 3206, prod ln 314.0, live ln 331, enc 0
  %struct.arc* %newarc
  (w64 0x837C6801A3A1D1BF)
🔔 Removing: asm ln 3223, prod ln 331.5, live ln 332, enc 1

Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3228, prod ln 332.5, live ln 333, enc 2
  %3 = load %struct.arc*, %struct.arc** %newarc.addr, l332 c5
  (w64 0x837C6801A3A1D1BF)
and
  assn asm ln 3206, prod ln 314.0, live ln 331, enc 0
  %struct.arc* %newarc
  (w64 0x837C6801A3A1D1BF)
🔔 Removing: asm ln 3228, prod ln 332.5, live ln 333, enc 2

Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3233, prod ln 333.5, live ln 334, enc 3
  %5 = load %struct.arc*, %struct.arc** %newarc.addr, l333 c5
  (w64 0x837C6801A3A1D1BF)
and
  assn asm ln 3206, prod ln 314.0, live ln 331, enc 0
  %struct.arc* %newarc
  (w64 0x837C6801A3A1D1BF)
🔔 Removing: asm ln 3233, prod ln 333.5, live ln 334, enc 3

Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3238, prod ln 334.5, live ln 335, enc 4
  %7 = load %struct.arc*, %struct.arc** %newarc.addr, l334 c5
  (w64 0x837C6801A3A1D1BF)
and
  assn asm ln 3206, prod ln 314.0, live ln 331, enc 0
  %struct.arc* %newarc
  (w64 0x837C6801A3A1D1BF)
🔔 Removing: asm ln 3238, prod ln 334.5, live ln 335, enc 4

Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3243, prod ln 335.5, live ln 336, enc 5
  %9 = load %struct.arc*, %struct.arc** %newarc.addr, l335 c5
  (w64 0x837C6801A3A1D1BF)
and
  assn asm ln 3206, prod ln 314.0, live ln 331, enc 0
  %struct.arc* %newarc
  (w64 0x837C6801A3A1D1BF)
🔔 Removing: asm ln 3243, prod ln 335.5, live ln 336, enc 5

Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3249, prod ln 336.5, live ln 337, enc 6
  %11 = load %struct.arc*, %struct.arc** %newarc.addr, l336 c5
  (w64 0x837C6801A3A1D1BF)
and
  assn asm ln 3206, prod ln 314.0, live ln 331, enc 0
  %struct.arc* %newarc
  (w64 0x837C6801A3A1D1BF)
🔔 Removing: asm ln 3249, prod ln 336.5, live ln 337, enc 6

Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3254, prod ln 339.12, live ln 340, enc 7
  %12 = load %struct.arc*, %struct.arc** %newarc.addr, l339 c12
  (w64 0x837C6801A3A1D1BF)
and
  assn asm ln 3206, prod ln 314.0, live ln 331, enc 0
  %struct.arc* %newarc
  (w64 0x837C6801A3A1D1BF)
🔔 Removing: asm ln 3254, prod ln 339.12, live ln 340, enc 7

Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 3258, prod ln 339.29, live ln 340, enc 8
  %14 = load %struct.arc*, %struct.arc** %newarc.addr, l339 c29
  (w64 0x837C6801A3A1D1BF)
and
  assn asm ln 3206, prod ln 314.0, live ln 331, enc 0
  %struct.arc* %newarc
  (w64 0x837C6801A3A1D1BF)
🔔 Removing: asm ln 3258, prod ln 339.29, live ln 340, enc 8

Filtering before assignments: `number` (decl src ln 315)

Expected 1 symbolic value(s), got 0
Checking equivalence of `number` (decl src ln 315) from
  assn asm ln 3218, prod ln 315.0, live ln 331, enc 0
  i64 %number
and
  assn asm ln 3394, prod ln 354.30, live ln 355, enc None
  %68 = load i64, i64* %number.addr, l354 c30

Checking equivalence of `number` (decl src ln 315) from
  assn asm ln 3247, prod ln 336.26, live ln 337, enc 1
  %10 = load i64, i64* %number.addr, l336 c26
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.number)
and
  assn asm ln 3218, prod ln 315.0, live ln 331, enc 0
  i64 %number
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.number)
Query to parse
array replace_weaker_arc.number[8] : w32 -> w8 = symbolic
array replace_weaker_arc.number[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) replace_weaker_arc.number)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) replace_weaker_arc.number)
     N0)
🔔 Removing: asm ln 3247, prod ln 336.26, live ln 337, enc 1

Filtering before assignments: `pos` (decl src ln 328)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 328) from
  assn asm ln 3354, prod ln 347.16, live ln 348, enc None
  %52 = load i64, i64* %pos, l347 c16
and
  assn asm ln 3403, prod ln 355.15, live ln 356, enc None
  %71 = load i64, i64* %cmp, l355 c15
🔔 Removing: asm ln 3354, prod ln 347.16, live ln 348, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 328) from
  assn asm ln 3342, prod ln 346.16, live ln 347, enc None
  %47 = load i64, i64* %pos, l346 c16
and
  assn asm ln 3403, prod ln 355.15, live ln 356, enc None
  %71 = load i64, i64* %cmp, l355 c15
🔔 Removing: asm ln 3342, prod ln 346.16, live ln 347, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 328) from
  assn asm ln 3330, prod ln 345.16, live ln 346, enc None
  %42 = load i64, i64* %pos, l345 c16
and
  assn asm ln 3403, prod ln 355.15, live ln 356, enc None
  %71 = load i64, i64* %cmp, l355 c15
🔔 Removing: asm ln 3330, prod ln 345.16, live ln 346, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 328) from
  assn asm ln 3318, prod ln 344.16, live ln 345, enc None
  %37 = load i64, i64* %pos, l344 c16
and
  assn asm ln 3403, prod ln 355.15, live ln 356, enc None
  %71 = load i64, i64* %cmp, l355 c15
🔔 Removing: asm ln 3318, prod ln 344.16, live ln 345, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 328) from
  assn asm ln 3306, prod ln 343.16, live ln 344, enc None
  %32 = load i64, i64* %pos, l343 c16
and
  assn asm ln 3403, prod ln 355.15, live ln 356, enc None
  %71 = load i64, i64* %cmp, l355 c15
🔔 Removing: asm ln 3306, prod ln 343.16, live ln 344, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 328) from
  assn asm ln 3294, prod ln 342.16, live ln 343, enc None
  %27 = load i64, i64* %pos, l342 c16
and
  assn asm ln 3403, prod ln 355.15, live ln 356, enc None
  %71 = load i64, i64* %cmp, l355 c15
🔔 Removing: asm ln 3294, prod ln 342.16, live ln 343, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 328) from
  assn asm ln 3253, prod ln 338.9, live ln 339, enc 0
  i64 1
and
  assn asm ln 3403, prod ln 355.15, live ln 356, enc None
  %71 = load i64, i64* %cmp, l355 c15

Filtering before assignments: `red_cost` (decl src ln 315)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `red_cost` (decl src ln 315) from
  assn asm ln 3276, prod ln 340.52, live ln 341, enc None
  %19 = load i64, i64* %red_cost.addr, l340 c52
and
  assn asm ln 3387, prod ln 353.38, live ln 354, enc None
  %65 = load i64, i64* %red_cost.addr, l353 c38
🔔 Removing: asm ln 3276, prod ln 340.52, live ln 341, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `red_cost` (decl src ln 315) from
  assn asm ln 3214, prod ln 315.0, live ln 331, enc 0
  i64 %red_cost
and
  assn asm ln 3387, prod ln 353.38, live ln 354, enc None
  %65 = load i64, i64* %red_cost.addr, l353 c38

Checking equivalence of `red_cost` (decl src ln 315) from
  assn asm ln 3242, prod ln 335.34, live ln 336, enc 1
  %8 = load i64, i64* %red_cost.addr, l335 c34
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.red_cost)
and
  assn asm ln 3214, prod ln 315.0, live ln 331, enc 0
  i64 %red_cost
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.red_cost)
Query to parse
array replace_weaker_arc.red_cost[8] : w32 -> w8 = symbolic
array replace_weaker_arc.red_cost[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) replace_weaker_arc.red_cost)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) replace_weaker_arc.red_cost)
     N0)
🔔 Removing: asm ln 3242, prod ln 335.34, live ln 336, enc 1

Filtering before assignments: `tail` (decl src ln 314)

Expected 1 symbolic value(s), got 0
Checking equivalence of `tail` (decl src ln 314) from
  assn asm ln 3208, prod ln 314.0, live ln 331, enc 0
  %struct.node* %tail
and
  assn asm ln 3359, prod ln 349.30, live ln 350, enc None
  %53 = load %struct.node*, %struct.node** %tail.addr, l349 c30

Checking equivalence of `tail` (decl src ln 314) from
  assn asm ln 3222, prod ln 331.26, live ln 332, enc 1
  %0 = load %struct.node*, %struct.node** %tail.addr, l331 c26
  (w64 0x11B0A39310165B72)
and
  assn asm ln 3208, prod ln 314.0, live ln 331, enc 0
  %struct.node* %tail
  (w64 0x11B0A39310165B72)
🔔 Removing: asm ln 3222, prod ln 331.26, live ln 332, enc 1

Filtering after assignments: `cmp` (decl src ln 329)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 2553, prod ln 356.13, live ln 357, enc None
  %mul = mul nsw i64 %cmp.0, 2, l356 c13
and
  assn asm ln 2458, prod ln 339.11, live ln 340, enc None
  %conv15 = sext i32 %cond to i64, l339 c11
🔔 Removing: asm ln 2553, prod ln 356.13, live ln 357, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 2569, prod ln 358.17, live ln 359, enc None
  %spec.select = select i1 %cmp84, i64 %inc, i64 %mul, l358 c17
and
  assn asm ln 2458, prod ln 339.11, live ln 340, enc None
  %conv15 = sext i32 %cond to i64, l339 c11
🔔 Removing: asm ln 2569, prod ln 358.17, live ln 359, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 2464, prod ln 339.11, live ln 340, enc None
  %cmp.0 = phi i64 [ %conv15, %entry ], [ %cmp.2, %if.end87 ]
and
  assn asm ln 2458, prod ln 339.11, live ln 340, enc None
  %conv15 = sext i32 %cond to i64, l339 c11
🔔 Removing: asm ln 2464, prod ln 339.11, live ln 340, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `cmp` (decl src ln 329) from
  assn asm ln 2574, prod ln 358.17, live ln 359, enc None
  %cmp.2 = phi i64 [ %spec.select, %if.then ], [ %mul, %while.body ]
and
  assn asm ln 2458, prod ln 339.11, live ln 340, enc None
  %conv15 = sext i32 %cond to i64, l339 c11
🔔 Removing: asm ln 2574, prod ln 358.17, live ln 359, enc None

Filtering after assignments: `pos` (decl src ln 328)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 328) from
  assn asm ln 2551, prod ln 339.11, live ln 356, enc None
  %cmp.0 = phi i64 [ %conv15, %entry ], [ %cmp.2, %if.end87 ]
and
  assn asm ln 2465, prod ln 328.0, live ln 340, enc None
  %pos.0 = phi i64 [ 1, %entry ], [ %cmp.0, %if.end87 ]
🔔 Removing: asm ln 2551, prod ln 339.11, live ln 356, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `pos` (decl src ln 328) from
  assn asm ln 2447, prod ln 328.0, live ln 339, enc 0
  i64 1
and
  assn asm ln 2465, prod ln 328.0, live ln 340, enc None
  %pos.0 = phi i64 [ 1, %entry ], [ %cmp.0, %if.end87 ]

Collating encountered before assignments: `cmp` (decl src ln 329)
❌ Assignment asm ln 3431, prod ln 359.20, live ln 360, enc None for `cmp` (decl src ln 329) was not encountered during execution
Collating encountered before assignments: `cost` (decl src ln 315)
❌ Assignment asm ln 3380, prod ln 352.34, live ln 353, enc None for `cost` (decl src ln 315) was not encountered during execution
  asm ln 3212, prod ln 315.0, live ln 331, enc 0
Collating encountered before assignments: `head` (decl src ln 314)
❌ Assignment asm ln 3366, prod ln 350.30, live ln 351, enc None for `head` (decl src ln 314) was not encountered during execution
  asm ln 3210, prod ln 314.0, live ln 331, enc 0
Collating encountered before assignments: `max_new_par_residual_new_arcs` (decl src ln 315)
❌ Assignment asm ln 3409, prod ln 357.24, live ln 358, enc None for `max_new_par_residual_new_arcs` (decl src ln 315) was not encountered during execution
  asm ln 3216, prod ln 315.0, live ln 331, enc 0
Collating encountered before assignments: `newarc` (decl src ln 314)
❌ Assignment asm ln 3420, prod ln 358.38, live ln 359, enc None for `newarc` (decl src ln 314) was not encountered during execution
  asm ln 3206, prod ln 314.0, live ln 331, enc 0
Collating encountered before assignments: `number` (decl src ln 315)
❌ Assignment asm ln 3394, prod ln 354.30, live ln 355, enc None for `number` (decl src ln 315) was not encountered during execution
  asm ln 3218, prod ln 315.0, live ln 331, enc 0
Collating encountered before assignments: `pos` (decl src ln 328)
❌ Assignment asm ln 3403, prod ln 355.15, live ln 356, enc None for `pos` (decl src ln 328) was not encountered during execution
  asm ln 3253, prod ln 338.9, live ln 339, enc 0
Collating encountered before assignments: `red_cost` (decl src ln 315)
❌ Assignment asm ln 3387, prod ln 353.38, live ln 354, enc None for `red_cost` (decl src ln 315) was not encountered during execution
  asm ln 3214, prod ln 315.0, live ln 331, enc 0
Collating encountered before assignments: `tail` (decl src ln 314)
❌ Assignment asm ln 3359, prod ln 349.30, live ln 350, enc None for `tail` (decl src ln 314) was not encountered during execution
  asm ln 3208, prod ln 314.0, live ln 331, enc 0

Collating encountered after assignments: `cmp` (decl src ln 329)
❌ Assignment asm ln 2458, prod ln 339.11, live ln 340, enc None for `cmp` (decl src ln 329) was not encountered during execution
Collating encountered after assignments: `cost` (decl src ln 315)
  asm ln 2424, prod ln 315.0, live ln 331, enc 0
Collating encountered after assignments: `head` (decl src ln 314)
  asm ln 2423, prod ln 314.0, live ln 331, enc 0
Collating encountered after assignments: `max_new_par_residual_new_arcs` (decl src ln 315)
  asm ln 2426, prod ln 315.0, live ln 331, enc 0
Collating encountered after assignments: `newarc` (decl src ln 314)
  asm ln 2421, prod ln 314.0, live ln 331, enc 0
Collating encountered after assignments: `number` (decl src ln 315)
  asm ln 2427, prod ln 315.0, live ln 331, enc 0
Collating encountered after assignments: `pos` (decl src ln 328)
❌ Assignment asm ln 2465, prod ln 328.0, live ln 340, enc None for `pos` (decl src ln 328) was not encountered during execution
  asm ln 2447, prod ln 328.0, live ln 339, enc 0
Collating encountered after assignments: `red_cost` (decl src ln 315)
  asm ln 2425, prod ln 315.0, live ln 331, enc 0
Collating encountered after assignments: `tail` (decl src ln 314)
  asm ln 2422, prod ln 314.0, live ln 331, enc 0

#### Check after using before as reference

❌ Before assn asm ln 3431, prod ln 359.20, live ln 360, enc None for `cmp` (decl src ln 329) was not encountered during execution

❌ After assn asm ln 2458, prod ln 339.11, live ln 340, enc None for `cmp` (decl src ln 329) was not encountered during execution

❌ After `cmp` assns checked using before as reference
Assignments:         cmp
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 3380, prod ln 352.34, live ln 353, enc None for `cost` (decl src ln 315) was not encountered during execution

Checking equivalence of `cost` (decl src ln 315) from
  assn asm ln 2424, prod ln 315.0, live ln 331, enc 0
  i64 %cost
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)
and
  assn asm ln 3212, prod ln 315.0, live ln 331, enc 0
  i64 %cost
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)
Query to parse
array replace_weaker_arc.cost[8] : w32 -> w8 = symbolic
array replace_weaker_arc.cost[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)
     (ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) replace_weaker_arc.cost)
     N0)
✅ Before `cost` (decl src ln 315) assn asm ln 3212, prod ln 315.0, live ln 331, enc 0 symbolic value matches after assn asm ln 2424, prod ln 315.0, live ln 331, enc 0

❌ After `cost` assns checked using before as reference
Assignments:         cost
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 3366, prod ln 350.30, live ln 351, enc None for `head` (decl src ln 314) was not encountered during execution

Checking equivalence of `head` (decl src ln 314) from
  assn asm ln 2423, prod ln 314.0, live ln 331, enc 0
  %struct.node.1* %head
  (w64 0x4254EBC09DAF4161)
and
  assn asm ln 3210, prod ln 314.0, live ln 331, enc 0
  %struct.node* %head
  (w64 0x4254EBC09DAF4161)
✅ Before `head` (decl src ln 314) assn asm ln 3210, prod ln 314.0, live ln 331, enc 0 symbolic value matches after assn asm ln 2423, prod ln 314.0, live ln 331, enc 0

❌ After `head` assns checked using before as reference
Assignments:         head
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 3409, prod ln 357.24, live ln 358, enc None for `max_new_par_residual_new_arcs` (decl src ln 315) was not encountered during execution

Checking equivalence of `max_new_par_residual_new_arcs` (decl src ln 315) from
  assn asm ln 2426, prod ln 315.0, live ln 331, enc 0
  i64 %max_new_par_residual_new_arcs
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.max_new_par_residual_new_arcs)
and
  assn asm ln 3216, prod ln 315.0, live ln 331, enc 0
  i64 %max_new_par_residual_new_arcs
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.max_new_par_residual_new_arcs)
Query to parse
array replace_weaker_arc.max_new_par_residual_new_arcs[8] : w32 -> w8 = symbolic
array replace_weaker_arc.max_new_par_residual_new_arcs[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) replace_weaker_arc.max_new_par_residual_new_arcs)
     (ReadLSB w64 (w32 0x0) replace_weaker_arc.max_new_par_residual_new_arcs)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) replace_weaker_arc.max_new_par_residual_new_arcs)
     N0)
✅ Before `max_new_par_residual_new_arcs` (decl src ln 315) assn asm ln 3216, prod ln 315.0, live ln 331, enc 0 symbolic value matches after assn asm ln 2426, prod ln 315.0, live ln 331, enc 0

❌ After `max_new_par_residual_new_arcs` assns checked using before as reference
Assignments:         max_new_par_residual_new_arcs
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 3420, prod ln 358.38, live ln 359, enc None for `newarc` (decl src ln 314) was not encountered during execution

Checking equivalence of `newarc` (decl src ln 314) from
  assn asm ln 2421, prod ln 314.0, live ln 331, enc 0
  %struct.arc.0* %newarc
  (w64 0x837C6801A3A1D1BF)
and
  assn asm ln 3206, prod ln 314.0, live ln 331, enc 0
  %struct.arc* %newarc
  (w64 0x837C6801A3A1D1BF)
✅ Before `newarc` (decl src ln 314) assn asm ln 3206, prod ln 314.0, live ln 331, enc 0 symbolic value matches after assn asm ln 2421, prod ln 314.0, live ln 331, enc 0

❌ After `newarc` assns checked using before as reference
Assignments:         newarc
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 3394, prod ln 354.30, live ln 355, enc None for `number` (decl src ln 315) was not encountered during execution

Checking equivalence of `number` (decl src ln 315) from
  assn asm ln 2427, prod ln 315.0, live ln 331, enc 0
  i64 %number
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.number)
and
  assn asm ln 3218, prod ln 315.0, live ln 331, enc 0
  i64 %number
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.number)
Query to parse
array replace_weaker_arc.number[8] : w32 -> w8 = symbolic
array replace_weaker_arc.number[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) replace_weaker_arc.number)
     (ReadLSB w64 (w32 0x0) replace_weaker_arc.number)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) replace_weaker_arc.number)
     N0)
✅ Before `number` (decl src ln 315) assn asm ln 3218, prod ln 315.0, live ln 331, enc 0 symbolic value matches after assn asm ln 2427, prod ln 315.0, live ln 331, enc 0

❌ After `number` assns checked using before as reference
Assignments:         number
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 3403, prod ln 355.15, live ln 356, enc None for `pos` (decl src ln 328) was not encountered during execution

❌ After assn asm ln 2465, prod ln 328.0, live ln 340, enc None for `pos` (decl src ln 328) was not encountered during execution

Checking equivalence of `pos` (decl src ln 328) from
  assn asm ln 2447, prod ln 328.0, live ln 339, enc 0
  i64 1
  (w64 0x1)
and
  assn asm ln 3253, prod ln 338.9, live ln 339, enc 0
  i64 1
  (w64 0x1)
✅ Before `pos` (decl src ln 328) assn asm ln 3253, prod ln 338.9, live ln 339, enc 0 symbolic value matches after assn asm ln 2447, prod ln 328.0, live ln 339, enc 0

❌ After `pos` assns checked using before as reference
Assignments:         pos
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 3387, prod ln 353.38, live ln 354, enc None for `red_cost` (decl src ln 315) was not encountered during execution

Checking equivalence of `red_cost` (decl src ln 315) from
  assn asm ln 2425, prod ln 315.0, live ln 331, enc 0
  i64 %red_cost
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.red_cost)
and
  assn asm ln 3214, prod ln 315.0, live ln 331, enc 0
  i64 %red_cost
  (ReadLSB w64 (w32 0x0) replace_weaker_arc.red_cost)
Query to parse
array replace_weaker_arc.red_cost[8] : w32 -> w8 = symbolic
array replace_weaker_arc.red_cost[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) replace_weaker_arc.red_cost)
     (ReadLSB w64 (w32 0x0) replace_weaker_arc.red_cost)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) replace_weaker_arc.red_cost)
     N0)
✅ Before `red_cost` (decl src ln 315) assn asm ln 3214, prod ln 315.0, live ln 331, enc 0 symbolic value matches after assn asm ln 2425, prod ln 315.0, live ln 331, enc 0

❌ After `red_cost` assns checked using before as reference
Assignments:         red_cost
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 3359, prod ln 349.30, live ln 350, enc None for `tail` (decl src ln 314) was not encountered during execution

Checking equivalence of `tail` (decl src ln 314) from
  assn asm ln 2422, prod ln 314.0, live ln 331, enc 0
  %struct.node.1* %tail
  (w64 0x11B0A39310165B72)
and
  assn asm ln 3208, prod ln 314.0, live ln 331, enc 0
  %struct.node* %tail
  (w64 0x11B0A39310165B72)
✅ Before `tail` (decl src ln 314) assn asm ln 3208, prod ln 314.0, live ln 331, enc 0 symbolic value matches after assn asm ln 2422, prod ln 314.0, live ln 331, enc 0

❌ After `tail` assns checked using before as reference
Assignments:         tail
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

## Function `calculate_max_redcost`

✅ Before and after function names match

### Variable events

#### Before variables

Store to declared address of `net` (decl src ln 383), asm ln 3449
  arg 0
  @dbg.declare without read users, removable
  Added assignment asm ln 3449, prod ln 383.0, live ln 392, enc None
Load from declared address of `max_redcost` (decl src ln 383), asm ln 3492
  %15 = load i64*, i64** %max_redcost.addr, l396 c8, asm ln 3492
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3492, prod ln 396.8, live ln 397, enc None
Load from declared address of `max_redcost` (decl src ln 383), asm ln 3478
  %8 = load i64*, i64** %max_redcost.addr, l395 c44, asm ln 3478
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3478, prod ln 395.44, live ln 396, enc None
Load from declared address of `max_redcost` (decl src ln 383), asm ln 3458
  %0 = load i64*, i64** %max_redcost.addr, l392 c4, asm ln 3458
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3458, prod ln 392.4, live ln 393, enc None
Store to declared address of `max_redcost` (decl src ln 383), asm ln 3451
  arg 1
  Added assignment asm ln 3451, prod ln 383.0, live ln 392, enc None
Load from declared address of `arcs_pointer_sorted` (decl src ln 383), asm ln 3484
  %10 = load %struct.arc***, %struct.arc**** %arcs_pointer_sorted.addr, l396 c22, asm ln 3484
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3484, prod ln 396.22, live ln 397, enc None
Load from declared address of `arcs_pointer_sorted` (decl src ln 383), asm ln 3470
  %3 = load %struct.arc***, %struct.arc**** %arcs_pointer_sorted.addr, l395 c9, asm ln 3470
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3470, prod ln 395.9, live ln 396, enc None
Store to declared address of `arcs_pointer_sorted` (decl src ln 383), asm ln 3453
  arg 2
  Added assignment asm ln 3453, prod ln 383.0, live ln 392, enc None
Load from declared address of `num_threads` (decl src ln 383), asm ln 3465
  %2 = load i64, i64* %num_threads.addr, l393 c19, asm ln 3465
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3465, prod ln 393.19, live ln 394, enc None
Store to declared address of `num_threads` (decl src ln 383), asm ln 3455
  arg 3
  Added assignment asm ln 3455, prod ln 383.0, live ln 392, enc None
Store to declared address of `i` (decl src ln 391), asm ln 3499
  %inc = add nsw i64 %16, 1, l393 c33, asm ln 3498
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3499, prod ln 393.33, live ln 394, enc None
Load from declared address of `i` (decl src ln 391), asm ln 3497
  %16 = load i64, i64* %i, l393 c33, asm ln 3497
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3497, prod ln 393.33, live ln 394, enc None
Load from declared address of `i` (decl src ln 391), asm ln 3485
  %11 = load i64, i64* %i, l396 c42, asm ln 3485
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3485, prod ln 396.42, live ln 397, enc None
Load from declared address of `i` (decl src ln 391), asm ln 3471
  %4 = load i64, i64* %i, l395 c29, asm ln 3471
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3471, prod ln 395.29, live ln 396, enc None
Load from declared address of `i` (decl src ln 391), asm ln 3464
  %1 = load i64, i64* %i, l393 c15, asm ln 3464
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3464, prod ln 393.15, live ln 394, enc None
Store to declared address of `i` (decl src ln 391), asm ln 3460
  const i64 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3460, prod ln 393.10, live ln 394, enc None

#### After variables

Value produced for `net` (decl src ln 383), asm ln 2584
  arg 0
  Added assignment asm ln 2584, prod ln 383.0, live ln 392, enc None
Value produced for `max_redcost` (decl src ln 383), asm ln 2585
  arg 1
  Added assignment asm ln 2585, prod ln 383.0, live ln 392, enc None
Value produced for `arcs_pointer_sorted` (decl src ln 383), asm ln 2586
  arg 2
  Added assignment asm ln 2586, prod ln 383.0, live ln 392, enc None
Value produced for `num_threads` (decl src ln 383), asm ln 2587
  arg 3
  Added assignment asm ln 2587, prod ln 383.0, live ln 392, enc None
Value produced for `i` (decl src ln 391), asm ln 2589
  const i64 0
  Added assignment asm ln 2589, prod ln 391.0, live ln 393, enc None
Value produced for `i` (decl src ln 391), asm ln 2621
  %inc = add nsw i64 %i.0, 1, l393 c33, asm ln 2620
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2621, prod ln 393.33, live ln 394, enc None
Value produced for `i` (decl src ln 391), asm ln 2594
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ], asm ln 2593
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2594, prod ln 393.33, live ln 394, enc None

#### Summary

✅ 5 before variables found, 5 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `net`
  Assignment asm ln 3449, prod ln 383.0, live ln 392, enc 0
  Concrete pointer resolves to calculate_max_redcost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) calculate_max_redcost.net.deref)
  Replaced concrete pointer with hash (w64 0x69CE690E424A5C5C)
  %struct.network* %net
  (w64 0x69CE690E424A5C5C)
Collected value for `max_redcost`
  Assignment asm ln 3451, prod ln 383.0, live ln 392, enc 0
  Concrete pointer resolves to calculate_max_redcost.max_redcost.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) calculate_max_redcost.max_redcost.deref)
  Replaced concrete pointer with hash (w64 0x6EEFD0011507F589)
  i64* %max_redcost
  (w64 0x6EEFD0011507F589)
Collected value for `arcs_pointer_sorted`
  Assignment asm ln 3453, prod ln 383.0, live ln 392, enc 0
  Concrete pointer resolves to calculate_max_redcost.arcs_pointer_sorted.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x4006CDDCB5324181)
  %struct.arc*** %arcs_pointer_sorted
  (w64 0x4006CDDCB5324181)
Collected value for `num_threads`
  Assignment asm ln 3455, prod ln 383.0, live ln 392, enc 0
  i64 %num_threads
  (ReadLSB w64 (w32 0x0) calculate_max_redcost.num_threads)
Collected value for `max_redcost`
  Assignment asm ln 3458, prod ln 392.4, live ln 393, enc 1
  Concrete pointer resolves to calculate_max_redcost.max_redcost.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) calculate_max_redcost.max_redcost.deref)
  Replaced concrete pointer with hash (w64 0x6EEFD0011507F589)
  %0 = load i64*, i64** %max_redcost.addr, l392 c4
  (w64 0x6EEFD0011507F589)
Collected value for `i`
  Assignment asm ln 3460, prod ln 393.10, live ln 394, enc 0
  i64 0
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 3464, prod ln 393.15, live ln 394, enc 1
  %1 = load i64, i64* %i, l393 c15
  (w64 0x0)
Collected value for `num_threads`
  Assignment asm ln 3465, prod ln 393.19, live ln 394, enc 1
  %2 = load i64, i64* %num_threads.addr, l393 c19
  (ReadLSB w64 (w32 0x0) calculate_max_redcost.num_threads)
Collected value for `arcs_pointer_sorted`
  Assignment asm ln 3470, prod ln 395.9, live ln 396, enc 1
  Concrete pointer resolves to calculate_max_redcost.arcs_pointer_sorted.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x4006CDDCB5324181)
  %3 = load %struct.arc***, %struct.arc**** %arcs_pointer_sorted.addr, l395 c9
  (w64 0x4006CDDCB5324181)
Collected value for `i`
  Assignment asm ln 3471, prod ln 395.29, live ln 396, enc 2
  %4 = load i64, i64* %i, l395 c29
  (w64 0x0)
[0;1;31mKLEE: ERROR: implicit.c:395: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all before instructions

🔔 Unable to execute all before program states

#### After values

Collected value for `net`
  Assignment asm ln 2584, prod ln 383.0, live ln 392, enc 0
  Concrete pointer resolves to calculate_max_redcost.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) calculate_max_redcost.net.deref)
  Replaced concrete pointer with hash (w64 0x69CE690E424A5C5C)
  %struct.network.2* %net
  (w64 0x69CE690E424A5C5C)
Collected value for `max_redcost`
  Assignment asm ln 2585, prod ln 383.0, live ln 392, enc 0
  Concrete pointer resolves to calculate_max_redcost.max_redcost.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) calculate_max_redcost.max_redcost.deref)
  Replaced concrete pointer with hash (w64 0x6EEFD0011507F589)
  i64* %max_redcost
  (w64 0x6EEFD0011507F589)
Collected value for `arcs_pointer_sorted`
  Assignment asm ln 2586, prod ln 383.0, live ln 392, enc 0
  Concrete pointer resolves to calculate_max_redcost.arcs_pointer_sorted.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x4006CDDCB5324181)
  %struct.arc.0*** %arcs_pointer_sorted
  (w64 0x4006CDDCB5324181)
Collected value for `num_threads`
  Assignment asm ln 2587, prod ln 383.0, live ln 392, enc 0
  i64 %num_threads
  (ReadLSB w64 (w32 0x0) calculate_max_redcost.num_threads)
Collected value for `i`
  Assignment asm ln 2589, prod ln 391.0, live ln 393, enc 0
  i64 0
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 2594, prod ln 393.33, live ln 394, enc 1
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  Block: 0
  (w64 0x0)
[0;1;31mKLEE: ERROR: implicit.c:395: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all after instructions

🔔 Unable to execute all after program states

### Assignments

#### Variables with single memory location

#### Collation

Filtering before assignments: `max_redcost` (decl src ln 383)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `max_redcost` (decl src ln 383) from
  assn asm ln 3478, prod ln 395.44, live ln 396, enc None
  %8 = load i64*, i64** %max_redcost.addr, l395 c44
and
  assn asm ln 3492, prod ln 396.8, live ln 397, enc None
  %15 = load i64*, i64** %max_redcost.addr, l396 c8
🔔 Removing: asm ln 3478, prod ln 395.44, live ln 396, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `max_redcost` (decl src ln 383) from
  assn asm ln 3451, prod ln 383.0, live ln 392, enc 0
  i64* %max_redcost
and
  assn asm ln 3492, prod ln 396.8, live ln 397, enc None
  %15 = load i64*, i64** %max_redcost.addr, l396 c8

Checking equivalence of `max_redcost` (decl src ln 383) from
  assn asm ln 3458, prod ln 392.4, live ln 393, enc 1
  %0 = load i64*, i64** %max_redcost.addr, l392 c4
  (w64 0x6EEFD0011507F589)
and
  assn asm ln 3451, prod ln 383.0, live ln 392, enc 0
  i64* %max_redcost
  (w64 0x6EEFD0011507F589)
🔔 Removing: asm ln 3458, prod ln 392.4, live ln 393, enc 1

Filtering before assignments: `arcs_pointer_sorted` (decl src ln 383)

Expected 1 symbolic value(s), got 0
Checking equivalence of `arcs_pointer_sorted` (decl src ln 383) from
  assn asm ln 3453, prod ln 383.0, live ln 392, enc 0
  %struct.arc*** %arcs_pointer_sorted
and
  assn asm ln 3484, prod ln 396.22, live ln 397, enc None
  %10 = load %struct.arc***, %struct.arc**** %arcs_pointer_sorted.addr, l396 c22

Checking equivalence of `arcs_pointer_sorted` (decl src ln 383) from
  assn asm ln 3470, prod ln 395.9, live ln 396, enc 1
  %3 = load %struct.arc***, %struct.arc**** %arcs_pointer_sorted.addr, l395 c9
  (w64 0x4006CDDCB5324181)
and
  assn asm ln 3453, prod ln 383.0, live ln 392, enc 0
  %struct.arc*** %arcs_pointer_sorted
  (w64 0x4006CDDCB5324181)
🔔 Removing: asm ln 3470, prod ln 395.9, live ln 396, enc 1

Filtering before assignments: `num_threads` (decl src ln 383)

Checking equivalence of `num_threads` (decl src ln 383) from
  assn asm ln 3465, prod ln 393.19, live ln 394, enc 1
  %2 = load i64, i64* %num_threads.addr, l393 c19
  (ReadLSB w64 (w32 0x0) calculate_max_redcost.num_threads)
and
  assn asm ln 3455, prod ln 383.0, live ln 392, enc 0
  i64 %num_threads
  (ReadLSB w64 (w32 0x0) calculate_max_redcost.num_threads)
Query to parse
array calculate_max_redcost.num_threads[8] : w32 -> w8 = symbolic
array calculate_max_redcost.num_threads[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) calculate_max_redcost.num_threads)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) calculate_max_redcost.num_threads)
     N0)
🔔 Removing: asm ln 3465, prod ln 393.19, live ln 394, enc 1

Filtering before assignments: `i` (decl src ln 391)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 391) from
  assn asm ln 3497, prod ln 393.33, live ln 394, enc None
  %16 = load i64, i64* %i, l393 c33
and
  assn asm ln 3499, prod ln 393.33, live ln 394, enc None
  %inc = add nsw i64 %16, 1, l393 c33
🔔 Removing: asm ln 3497, prod ln 393.33, live ln 394, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 391) from
  assn asm ln 3485, prod ln 396.42, live ln 397, enc None
  %11 = load i64, i64* %i, l396 c42
and
  assn asm ln 3499, prod ln 393.33, live ln 394, enc None
  %inc = add nsw i64 %16, 1, l393 c33
🔔 Removing: asm ln 3485, prod ln 396.42, live ln 397, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 391) from
  assn asm ln 3460, prod ln 393.10, live ln 394, enc 0
  i64 0
and
  assn asm ln 3499, prod ln 393.33, live ln 394, enc None
  %inc = add nsw i64 %16, 1, l393 c33

Checking equivalence of `i` (decl src ln 391) from
  assn asm ln 3464, prod ln 393.15, live ln 394, enc 1
  %1 = load i64, i64* %i, l393 c15
  (w64 0x0)
and
  assn asm ln 3460, prod ln 393.10, live ln 394, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 3464, prod ln 393.15, live ln 394, enc 1

Checking equivalence of `i` (decl src ln 391) from
  assn asm ln 3471, prod ln 395.29, live ln 396, enc 2
  %4 = load i64, i64* %i, l395 c29
  (w64 0x0)
and
  assn asm ln 3460, prod ln 393.10, live ln 394, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 3471, prod ln 395.29, live ln 396, enc 2

Filtering after assignments: `i` (decl src ln 391)

Expected 1 symbolic value(s), got 0
Checking equivalence of `i` (decl src ln 391) from
  assn asm ln 2589, prod ln 391.0, live ln 393, enc 0
  i64 0
and
  assn asm ln 2621, prod ln 393.33, live ln 394, enc None
  %inc = add nsw i64 %i.0, 1, l393 c33

Checking equivalence of `i` (decl src ln 391) from
  assn asm ln 2594, prod ln 393.33, live ln 394, enc 1
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  (w64 0x0)
and
  assn asm ln 2589, prod ln 391.0, live ln 393, enc 0
  i64 0
  (w64 0x0)
🔔 Removing: asm ln 2594, prod ln 393.33, live ln 394, enc 1

Collating encountered before assignments: `net` (decl src ln 383)
  asm ln 3449, prod ln 383.0, live ln 392, enc 0
Collating encountered before assignments: `max_redcost` (decl src ln 383)
❌ Assignment asm ln 3492, prod ln 396.8, live ln 397, enc None for `max_redcost` (decl src ln 383) was not encountered during execution
  asm ln 3451, prod ln 383.0, live ln 392, enc 0
Collating encountered before assignments: `arcs_pointer_sorted` (decl src ln 383)
❌ Assignment asm ln 3484, prod ln 396.22, live ln 397, enc None for `arcs_pointer_sorted` (decl src ln 383) was not encountered during execution
  asm ln 3453, prod ln 383.0, live ln 392, enc 0
Collating encountered before assignments: `num_threads` (decl src ln 383)
  asm ln 3455, prod ln 383.0, live ln 392, enc 0
Collating encountered before assignments: `i` (decl src ln 391)
❌ Assignment asm ln 3499, prod ln 393.33, live ln 394, enc None for `i` (decl src ln 391) was not encountered during execution
  asm ln 3460, prod ln 393.10, live ln 394, enc 0

Collating encountered after assignments: `net` (decl src ln 383)
  asm ln 2584, prod ln 383.0, live ln 392, enc 0
Collating encountered after assignments: `max_redcost` (decl src ln 383)
  asm ln 2585, prod ln 383.0, live ln 392, enc 0
Collating encountered after assignments: `arcs_pointer_sorted` (decl src ln 383)
  asm ln 2586, prod ln 383.0, live ln 392, enc 0
Collating encountered after assignments: `num_threads` (decl src ln 383)
  asm ln 2587, prod ln 383.0, live ln 392, enc 0
Collating encountered after assignments: `i` (decl src ln 391)
❌ Assignment asm ln 2621, prod ln 393.33, live ln 394, enc None for `i` (decl src ln 391) was not encountered during execution
  asm ln 2589, prod ln 391.0, live ln 393, enc 0

#### Check after using before as reference

❌ Before assn asm ln 3484, prod ln 396.22, live ln 397, enc None for `arcs_pointer_sorted` (decl src ln 383) was not encountered during execution

Checking equivalence of `arcs_pointer_sorted` (decl src ln 383) from
  assn asm ln 2586, prod ln 383.0, live ln 392, enc 0
  %struct.arc.0*** %arcs_pointer_sorted
  (w64 0x4006CDDCB5324181)
and
  assn asm ln 3453, prod ln 383.0, live ln 392, enc 0
  %struct.arc*** %arcs_pointer_sorted
  (w64 0x4006CDDCB5324181)
✅ Before `arcs_pointer_sorted` (decl src ln 383) assn asm ln 3453, prod ln 383.0, live ln 392, enc 0 symbolic value matches after assn asm ln 2586, prod ln 383.0, live ln 392, enc 0

❌ After `arcs_pointer_sorted` assns checked using before as reference
Assignments:         arcs_pointer_sorted
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 3499, prod ln 393.33, live ln 394, enc None for `i` (decl src ln 391) was not encountered during execution

❌ After assn asm ln 2621, prod ln 393.33, live ln 394, enc None for `i` (decl src ln 391) was not encountered during execution

❌ Before `i` (decl src ln 391) assn asm ln 3460, prod ln 393.10, live ln 394, enc 0 coordinates don't match after assn asm ln 2589, prod ln 391.0, live ln 393, enc 0
Checking equivalence of `i` (decl src ln 391) from
  assn asm ln 2589, prod ln 391.0, live ln 393, enc 0
  i64 0
  (w64 0x0)
and
  assn asm ln 3460, prod ln 393.10, live ln 394, enc 0
  i64 0
  (w64 0x0)
✅ Before `i` (decl src ln 391) assn asm ln 3460, prod ln 393.10, live ln 394, enc 0 symbolic value matches after assn asm ln 2589, prod ln 391.0, live ln 393, enc 0

❌ After `i` assns checked using before as reference
Assignments:         i
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 1
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 3492, prod ln 396.8, live ln 397, enc None for `max_redcost` (decl src ln 383) was not encountered during execution

Checking equivalence of `max_redcost` (decl src ln 383) from
  assn asm ln 2585, prod ln 383.0, live ln 392, enc 0
  i64* %max_redcost
  (w64 0x6EEFD0011507F589)
and
  assn asm ln 3451, prod ln 383.0, live ln 392, enc 0
  i64* %max_redcost
  (w64 0x6EEFD0011507F589)
✅ Before `max_redcost` (decl src ln 383) assn asm ln 3451, prod ln 383.0, live ln 392, enc 0 symbolic value matches after assn asm ln 2585, prod ln 383.0, live ln 392, enc 0

❌ After `max_redcost` assns checked using before as reference
Assignments:         max_redcost
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `net` (decl src ln 383) from
  assn asm ln 2584, prod ln 383.0, live ln 392, enc 0
  %struct.network.2* %net
  (w64 0x69CE690E424A5C5C)
and
  assn asm ln 3449, prod ln 383.0, live ln 392, enc 0
  %struct.network* %net
  (w64 0x69CE690E424A5C5C)
✅ Before `net` (decl src ln 383) assn asm ln 3449, prod ln 383.0, live ln 392, enc 0 symbolic value matches after assn asm ln 2584, prod ln 383.0, live ln 392, enc 0

✅ After `net` assns checked using before as reference
Assignments:         net
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `num_threads` (decl src ln 383) from
  assn asm ln 2587, prod ln 383.0, live ln 392, enc 0
  i64 %num_threads
  (ReadLSB w64 (w32 0x0) calculate_max_redcost.num_threads)
and
  assn asm ln 3455, prod ln 383.0, live ln 392, enc 0
  i64 %num_threads
  (ReadLSB w64 (w32 0x0) calculate_max_redcost.num_threads)
Query to parse
array calculate_max_redcost.num_threads[8] : w32 -> w8 = symbolic
array calculate_max_redcost.num_threads[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) calculate_max_redcost.num_threads)
     (ReadLSB w64 (w32 0x0) calculate_max_redcost.num_threads)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) calculate_max_redcost.num_threads)
     N0)
✅ Before `num_threads` (decl src ln 383) assn asm ln 3455, prod ln 383.0, live ln 392, enc 0 symbolic value matches after assn asm ln 2587, prod ln 383.0, live ln 392, enc 0

✅ After `num_threads` assns checked using before as reference
Assignments:         num_threads
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

## Function `switch_arcs`

✅ Before and after function names match

### Variable events

#### Before variables

Store to declared address of `net` (decl src ln 401), asm ln 3524
  arg 0
  @dbg.declare without read users, removable
  Added assignment asm ln 3524, prod ln 401.0, live ln 414, enc None
Load from declared address of `num_del_arcs` (decl src ln 401), asm ln 3570
  %7 = load i64*, i64** %num_del_arcs.addr, l422 c54, asm ln 3570
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3570, prod ln 422.54, live ln 423, enc None
Load from declared address of `num_del_arcs` (decl src ln 401), asm ln 3561
  %3 = load i64*, i64** %num_del_arcs.addr, l422 c24, asm ln 3561
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3561, prod ln 422.24, live ln 423, enc None
Store to declared address of `num_del_arcs` (decl src ln 401), asm ln 3526
  arg 1
  Added assignment asm ln 3526, prod ln 401.0, live ln 414, enc None
Load from declared address of `deleted_arcs` (decl src ln 401), asm ln 3593
  %13 = load %struct.arc**, %struct.arc*** %deleted_arcs.addr, l425 c20, asm ln 3593
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3593, prod ln 425.20, live ln 426, enc None
Store to declared address of `deleted_arcs` (decl src ln 401), asm ln 3528
  arg 2
  Added assignment asm ln 3528, prod ln 401.0, live ln 414, enc None
Load from declared address of `arcnew` (decl src ln 401), asm ln 3653
  %41 = load %struct.arc*, %struct.arc** %arcnew.addr, l434 c30, asm ln 3653
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3653, prod ln 434.30, live ln 435, enc None
Load from declared address of `arcnew` (decl src ln 401), asm ln 3648
  %37 = load %struct.arc*, %struct.arc** %arcnew.addr, l433 c22, asm ln 3648
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3648, prod ln 433.22, live ln 434, enc None
Load from declared address of `arcnew` (decl src ln 401), asm ln 3632
  %29 = load %struct.arc*, %struct.arc** %arcnew.addr, l429 c27, asm ln 3632
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3632, prod ln 429.27, live ln 430, enc None
Load from declared address of `arcnew` (decl src ln 401), asm ln 3621
  %25 = load %struct.arc*, %struct.arc** %arcnew.addr, l428 c89, asm ln 3621
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3621, prod ln 428.89, live ln 429, enc None
Load from declared address of `arcnew` (decl src ln 401), asm ln 3610
  %21 = load %struct.arc*, %struct.arc** %arcnew.addr, l428 c51, asm ln 3610
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3610, prod ln 428.51, live ln 429, enc None
Store to declared address of `arcnew` (decl src ln 401), asm ln 3530
  arg 3
  Added assignment asm ln 3530, prod ln 401.0, live ln 414, enc None
Load from declared address of `thread` (decl src ln 401), asm ln 3549
  %0 = load i32, i32* %thread.addr, l417 c20, asm ln 3549
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3549, prod ln 417.20, live ln 418, enc None
Store to declared address of `thread` (decl src ln 401), asm ln 3532
  arg 4
  Added assignment asm ln 3532, prod ln 401.0, live ln 414, enc None
Load from declared address of `max_new_par_residual_new_arcs` (decl src ln 401), asm ln 3662
  %46 = load i64, i64* %max_new_par_residual_new_arcs.addr, l434 c82, asm ln 3662
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3662, prod ln 434.82, live ln 435, enc None
Store to declared address of `max_new_par_residual_new_arcs` (decl src ln 401), asm ln 3534
  arg 5
  Added assignment asm ln 3534, prod ln 401.0, live ln 414, enc None
Load from declared address of `size_del` (decl src ln 401), asm ln 3577
  %10 = load i64, i64* %size_del.addr, l422 c72, asm ln 3577
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3577, prod ln 422.72, live ln 423, enc None
Load from declared address of `size_del` (decl src ln 401), asm ln 3565
  %6 = load i64, i64* %size_del.addr, l422 c42, asm ln 3565
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3565, prod ln 422.42, live ln 423, enc None
Store to declared address of `size_del` (decl src ln 401), asm ln 3536
  arg 6
  Added assignment asm ln 3536, prod ln 401.0, live ln 414, enc None
Load from declared address of `num_threads` (decl src ln 401), asm ln 3681
  %51 = load i64, i64* %num_threads.addr, l417 c64, asm ln 3681
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3681, prod ln 417.64, live ln 418, enc None
Load from declared address of `num_threads` (decl src ln 401), asm ln 3556
  %2 = load i64, i64* %num_threads.addr, l417 c32, asm ln 3556
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3556, prod ln 417.32, live ln 418, enc None
Store to declared address of `num_threads` (decl src ln 401), asm ln 3538
  arg 7
  Added assignment asm ln 3538, prod ln 401.0, live ln 414, enc None
Store to declared address of `i` (decl src ln 414), asm ln 3678
  %inc31 = add nsw i64 %49, 1, l417 c46, asm ln 3677
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3678, prod ln 417.46, live ln 418, enc None
Load from declared address of `i` (decl src ln 414), asm ln 3676
  %49 = load i64, i64* %i, l417 c46, asm ln 3676
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3676, prod ln 417.46, live ln 418, enc None
Load from declared address of `i` (decl src ln 414), asm ln 3555
  %1 = load i64, i64* %i, l417 c28, asm ln 3555
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3555, prod ln 417.28, live ln 418, enc None
Store to declared address of `i` (decl src ln 414), asm ln 3548
  const i64 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3548, prod ln 417.11, live ln 418, enc None
Store to declared address of `j` (decl src ln 414), asm ln 3684
  %rem = srem i64 %add, %51, !klee.check.div !501, l417 c62, asm ln 3683
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3684, prod ln 417.62, live ln 418, enc None
Load from declared address of `j` (decl src ln 414), asm ln 3679
  %50 = load i64, i64* %j, l417 c55, asm ln 3679
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3679, prod ln 417.55, live ln 418, enc None
Load from declared address of `j` (decl src ln 414), asm ln 3594
  %14 = load i64, i64* %j, l425 c33, asm ln 3594
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3594, prod ln 425.33, live ln 426, enc None
Load from declared address of `j` (decl src ln 414), asm ln 3571
  %8 = load i64, i64* %j, l422 c67, asm ln 3571
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3571, prod ln 422.67, live ln 423, enc None
Load from declared address of `j` (decl src ln 414), asm ln 3562
  %4 = load i64, i64* %j, l422 c37, asm ln 3562
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3562, prod ln 422.37, live ln 423, enc None
Store to declared address of `j` (decl src ln 414), asm ln 3551
  %conv = sext i32 %0 to i64, l417 c20, asm ln 3550
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3551, prod ln 417.20, live ln 418, enc None
Store to declared address of `h` (decl src ln 414), asm ln 3672
  %inc29 = add nsw i64 %48, 1, l423 c39, asm ln 3671
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3672, prod ln 423.39, live ln 424, enc None
Load from declared address of `h` (decl src ln 414), asm ln 3670
  %48 = load i64, i64* %h, l423 c39, asm ln 3670
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3670, prod ln 423.39, live ln 424, enc None
Load from declared address of `h` (decl src ln 414), asm ln 3597
  %16 = load i64, i64* %h, l425 c36, asm ln 3597
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3597, prod ln 425.36, live ln 426, enc None
Load from declared address of `h` (decl src ln 414), asm ln 3587
  %11 = load i64, i64* %h, l423 c18, asm ln 3587
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3587, prod ln 423.18, live ln 424, enc None
Store to declared address of `h` (decl src ln 414), asm ln 3583
  const i64 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3583, prod ln 423.13, live ln 424, enc None
Load from declared address of `number_of_arcs` (decl src ln 414), asm ln 3588
  %12 = load i64, i64* %number_of_arcs, l423 c22, asm ln 3588
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3588, prod ln 423.22, live ln 424, enc None
Store to declared address of `number_of_arcs` (decl src ln 414), asm ln 3582
  %cond = phi i64 [ %9, %cond.true ], [ %10, %cond.false ], l422 c23, asm ln 3581
  Added assignment asm ln 3582, prod ln 422.72, live ln 423, enc None
Load from declared address of `count` (decl src ln 414), asm ln 3688
  %52 = load i64, i64* %count, l440 c11, asm ln 3688
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3688, prod ln 440.11, live ln 441, enc None
Store to declared address of `count` (decl src ln 414), asm ln 3646
  %inc = add nsw i64 %35, 1, l432 c15, asm ln 3645
  Added assignment asm ln 3646, prod ln 432.15, live ln 433, enc None
Load from declared address of `count` (decl src ln 414), asm ln 3644
  %35 = load i64, i64* %count, l432 c15, asm ln 3644
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3644, prod ln 432.15, live ln 433, enc None
Store to declared address of `count` (decl src ln 414), asm ln 3545
  const i64 0
  Added assignment asm ln 3545, prod ln 414.35, live ln 417, enc None
Load from declared address of `test_arc` (decl src ln 415), asm ln 3647
  %36 = load %struct.arc*, %struct.arc** %test_arc, l433 c11, asm ln 3647
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3647, prod ln 433.11, live ln 434, enc None
Load from declared address of `test_arc` (decl src ln 415), asm ln 3640
  %31 = load %struct.arc*, %struct.arc** %test_arc, l431 c18, asm ln 3640
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3640, prod ln 431.18, live ln 432, enc None
Load from declared address of `test_arc` (decl src ln 415), asm ln 3629
  %27 = load %struct.arc*, %struct.arc** %test_arc, l429 c12, asm ln 3629
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3629, prod ln 429.12, live ln 430, enc None
Load from declared address of `test_arc` (decl src ln 415), asm ln 3618
  %23 = load %struct.arc*, %struct.arc** %test_arc, l428 c71, asm ln 3618
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3618, prod ln 428.71, live ln 429, enc None
Load from declared address of `test_arc` (decl src ln 415), asm ln 3607
  %19 = load %struct.arc*, %struct.arc** %test_arc, l428 c34, asm ln 3607
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3607, prod ln 428.34, live ln 429, enc None
Load from declared address of `test_arc` (decl src ln 415), asm ln 3600
  %17 = load %struct.arc*, %struct.arc** %test_arc, l428 c13, asm ln 3600
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3600, prod ln 428.13, live ln 429, enc None
Store to declared address of `test_arc` (decl src ln 415), asm ln 3599
  %arrayidx10 = getelementptr inbounds %struct.arc, %struct.arc* %15, i64 %16, l425 c20, asm ln 3598
  Added assignment asm ln 3599, prod ln 425.20, live ln 428, enc None
Load from declared address of `copy` (decl src ln 415), asm ln 3655
  %42 = load %struct.node*, %struct.node** %tail, l434 c43, asm ln 3655
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3655, prod ln 434.43, live ln 435, enc None
Load from declared address of `copy` (decl src ln 415), asm ln 3657
  %43 = load %struct.node*, %struct.node** %head, l434 c54, asm ln 3657
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3657, prod ln 434.54, live ln 435, enc None
Load from declared address of `copy` (decl src ln 415), asm ln 3659
  %44 = load i64, i64* %cost, l434 c65, asm ln 3659
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3659, prod ln 434.65, live ln 435, enc None
Load from declared address of `copy` (decl src ln 415), asm ln 3661
  %45 = load i64, i64* %flow26, l434 c76, asm ln 3661
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3661, prod ln 434.76, live ln 435, enc None
Load from declared address of `copy` (decl src ln 415), asm ln 3664
  %47 = load i32, i32* %id27, l434 c118, asm ln 3664
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 3664, prod ln 434.118, live ln 435, enc None

#### After variables

Value produced for `net` (decl src ln 401), asm ln 2632
  arg 0
  Added assignment asm ln 2632, prod ln 401.0, live ln 417, enc None
Value produced for `num_del_arcs` (decl src ln 401), asm ln 2633
  arg 1
  Added assignment asm ln 2633, prod ln 401.0, live ln 417, enc None
Value produced for `deleted_arcs` (decl src ln 401), asm ln 2634
  arg 2
  Added assignment asm ln 2634, prod ln 401.0, live ln 417, enc None
Value produced for `arcnew` (decl src ln 401), asm ln 2635
  arg 3
  Added assignment asm ln 2635, prod ln 401.0, live ln 417, enc None
Value produced for `thread` (decl src ln 401), asm ln 2636
  arg 4
  Added assignment asm ln 2636, prod ln 401.0, live ln 417, enc None
Value produced for `max_new_par_residual_new_arcs` (decl src ln 401), asm ln 2637
  arg 5
  Added assignment asm ln 2637, prod ln 401.0, live ln 417, enc None
Value produced for `size_del` (decl src ln 401), asm ln 2638
  arg 6
  Added assignment asm ln 2638, prod ln 401.0, live ln 417, enc None
Value produced for `num_threads` (decl src ln 401), asm ln 2639
  arg 7
  Added assignment asm ln 2639, prod ln 401.0, live ln 417, enc None
Value produced for `count` (decl src ln 414), asm ln 2640
  const i64 0
  Added assignment asm ln 2640, prod ln 414.0, live ln 417, enc None
Load from declared address of `copy` (decl src ln 415), asm ln 2730
  %16 = load %struct.node.1*, %struct.node.1** %tail, l434 c43, asm ln 2730
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2730, prod ln 434.43, live ln 435, enc None
Load from declared address of `copy` (decl src ln 415), asm ln 2732
  %17 = load %struct.node.1*, %struct.node.1** %head, l434 c54, asm ln 2732
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2732, prod ln 434.54, live ln 435, enc None
Load from declared address of `copy` (decl src ln 415), asm ln 2734
  %18 = load i64, i64* %cost, l434 c65, asm ln 2734
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2734, prod ln 434.65, live ln 435, enc None
Load from declared address of `copy` (decl src ln 415), asm ln 2736
  %19 = load i64, i64* %flow26, l434 c76, asm ln 2736
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2736, prod ln 434.76, live ln 435, enc None
Load from declared address of `copy` (decl src ln 415), asm ln 2738
  %20 = load i32, i32* %id27, l434 c118, asm ln 2738
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2738, prod ln 434.118, live ln 435, enc None
Value produced for `i` (decl src ln 414), asm ln 2642
  const i64 0
  Added assignment asm ln 2642, prod ln 414.0, live ln 417, enc None
Value produced for `j` (decl src ln 414), asm ln 2644
  %conv = sext i32 %thread to i64, l417 c20, asm ln 2643
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2644, prod ln 417.20, live ln 418, enc None
Value produced for `h` (decl src ln 414), asm ln 2671
  const i64 0
  Added assignment asm ln 2671, prod ln 414.0, live ln 423, enc None
Value produced for `test_arc` (decl src ln 415), asm ln 2686
  %arrayidx10 = getelementptr inbounds %struct.arc.0, %struct.arc.0* %2, i64 %h.0, l425 c20, asm ln 2685
  Added assignment asm ln 2686, prod ln 425.20, live ln 428, enc None
Value produced for `count` (decl src ln 414), asm ln 2724
  %inc = add nsw i64 %count.1, 1, l432 c15, asm ln 2723
  Added assignment asm ln 2724, prod ln 432.15, live ln 433, enc None
Value produced for `h` (decl src ln 414), asm ln 2747
  %inc29 = add nsw i64 %h.0, 1, l423 c39, asm ln 2746
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2747, prod ln 423.39, live ln 424, enc None
Value produced for `i` (decl src ln 414), asm ln 2752
  %inc31 = add nsw i64 %i.0, 1, l417 c46, asm ln 2751
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2752, prod ln 417.46, live ln 418, enc None
Value produced for `j` (decl src ln 414), asm ln 2756
  %rem = srem i64 %add, %num_threads, !klee.check.div !467, l417 c62, asm ln 2755
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2756, prod ln 417.62, live ln 418, enc None
Value produced for `count` (decl src ln 414), asm ln 2651
  %count.0 = phi i64 [ 0, %entry ], [ %count.1, %for.inc30 ], l414 c35, asm ln 2650
  Added assignment asm ln 2651, prod ln 414.35, live ln 417, enc None
Value produced for `j` (decl src ln 414), asm ln 2652
  %j.0 = phi i64 [ %conv, %entry ], [ %rem, %for.inc30 ], asm ln 2649
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2652, prod ln 417.62, live ln 418, enc None
Value produced for `i` (decl src ln 414), asm ln 2653
  %i.0 = phi i64 [ 0, %entry ], [ %inc31, %for.inc30 ], asm ln 2648
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2653, prod ln 417.46, live ln 418, enc None
Value produced for `number_of_arcs` (decl src ln 414), asm ln 2670
  %cond = phi i64 [ %1, %cond.true ], [ %size_del, %for.body ], l422 c23, asm ln 2669
  Added assignment asm ln 2670, prod ln 422.54, live ln 423, enc None
Value produced for `count` (decl src ln 414), asm ln 2677
  %count.1 = phi i64 [ %count.0, %cond.end ], [ %count.2, %for.inc ], l414 c35, asm ln 2676
  Added assignment asm ln 2677, prod ln 414.35, live ln 423, enc None
Value produced for `h` (decl src ln 414), asm ln 2678
  %h.0 = phi i64 [ 0, %cond.end ], [ %inc29, %for.inc ], asm ln 2675
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2678, prod ln 423.39, live ln 424, enc None
Value produced for `count` (decl src ln 414), asm ln 2745
  %count.2 = phi i64 [ %count.1, %for.body8 ], [ %inc, %if.then ], [ %count.1, %land.lhs.true20 ], [ %count.1, %lor.lhs.false ], asm ln 2744
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 2745, prod ln 432.35, live ln 433, enc None

#### Summary

✅ 15 before variables found, 15 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `net`
  Assignment asm ln 3524, prod ln 401.0, live ln 414, enc 0
  Concrete pointer resolves to switch_arcs.net.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) switch_arcs.net.deref)
  Replaced concrete pointer with hash (w64 0xE78ED5C6BAE0988C)
  %struct.network* %net
  (w64 0xE78ED5C6BAE0988C)
Collected value for `num_del_arcs`
  Assignment asm ln 3526, prod ln 401.0, live ln 414, enc 0
  Concrete pointer resolves to switch_arcs.num_del_arcs.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) switch_arcs.num_del_arcs.deref)
  Replaced concrete pointer with hash (w64 0xBEE5588C29E1EA18)
  i64* %num_del_arcs
  (w64 0xBEE5588C29E1EA18)
Collected value for `deleted_arcs`
  Assignment asm ln 3528, prod ln 401.0, live ln 414, enc 0
  Concrete pointer resolves to switch_arcs.deleted_arcs.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x4D5A0369A7DA48D)
  %struct.arc** %deleted_arcs
  (w64 0x4D5A0369A7DA48D)
Collected value for `arcnew`
  Assignment asm ln 3530, prod ln 401.0, live ln 414, enc 0
  Concrete pointer resolves to switch_arcs.arcnew.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) switch_arcs.arcnew.deref)
  Replaced concrete pointer with hash (w64 0xE5901DE0AEFB2154)
  %struct.arc* %arcnew
  (w64 0xE5901DE0AEFB2154)
Collected value for `thread`
  Assignment asm ln 3532, prod ln 401.0, live ln 414, enc 0
  i32 %thread
  (ReadLSB w32 (w32 0x0) switch_arcs.thread)
Collected value for `max_new_par_residual_new_arcs`
  Assignment asm ln 3534, prod ln 401.0, live ln 414, enc 0
  i64 %max_new_par_residual_new_arcs
  (ReadLSB w64 (w32 0x0) switch_arcs.max_new_par_residual_new_arcs)
Collected value for `size_del`
  Assignment asm ln 3536, prod ln 401.0, live ln 414, enc 0
  i64 %size_del
  (ReadLSB w64 (w32 0x0) switch_arcs.size_del)
Collected value for `num_threads`
  Assignment asm ln 3538, prod ln 401.0, live ln 414, enc 0
  i64 %num_threads
  (ReadLSB w64 (w32 0x0) switch_arcs.num_threads)
Collected value for `count`
  Assignment asm ln 3545, prod ln 414.35, live ln 417, enc 0
  i64 0
  (w64 0x0)
Collected value for `i`
  Assignment asm ln 3548, prod ln 417.11, live ln 418, enc 0
  i64 0
  (w64 0x0)
Collected value for `thread`
  Assignment asm ln 3549, prod ln 417.20, live ln 418, enc 1
  %0 = load i32, i32* %thread.addr, l417 c20
  (ReadLSB w32 (w32 0x0) switch_arcs.thread)
Collected value for `j`
  Assignment asm ln 3551, prod ln 417.20, live ln 418, enc 0
  %conv = sext i32 %0 to i64, l417 c20
  (SExt w64 (ReadLSB w32 (w32 0x0) switch_arcs.thread))
Collected value for `i`
  Assignment asm ln 3555, prod ln 417.28, live ln 418, enc 1
  %1 = load i64, i64* %i, l417 c28
  (w64 0x0)
Collected value for `num_threads`
  Assignment asm ln 3556, prod ln 417.32, live ln 418, enc 1
  %2 = load i64, i64* %num_threads.addr, l417 c32
  (ReadLSB w64 (w32 0x0) switch_arcs.num_threads)
Collected value for `count`
  Assignment asm ln 3688, prod ln 440.11, live ln 441, enc 1
  %52 = load i64, i64* %count, l440 c11
  (w64 0x0)
Collected value for `num_del_arcs`
  Assignment asm ln 3561, prod ln 422.24, live ln 423, enc 1
  Concrete pointer resolves to switch_arcs.num_del_arcs.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) switch_arcs.num_del_arcs.deref)
  Replaced concrete pointer with hash (w64 0xBEE5588C29E1EA18)
  %3 = load i64*, i64** %num_del_arcs.addr, l422 c24
  (w64 0xBEE5588C29E1EA18)
Collected value for `j`
  Assignment asm ln 3562, prod ln 422.37, live ln 423, enc 1
  %4 = load i64, i64* %j, l422 c37
  (SExt w64 (ReadLSB w32 (w32 0x0) switch_arcs.thread))
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /Users/jryans/Projects/klee/build-release-debug/bin/check-debug-info ../O0/mcf_r.bc mcf_r.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --disable-verify --max-forks=32 --max-time=5s --search=random-path --tsv
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x00000001034394d7 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 39
1  check-debug-info         0x0000000103438318 llvm::sys::RunSignalHandlers() + 248
2  check-debug-info         0x0000000103439b20 SignalHandler(int) + 288
3  libsystem_platform.dylib 0x00007ff800bb3fdd _sigtramp + 29
4  libsystem_platform.dylib 0x00007ff7be354318 _sigtramp + 18446744072593474392
5  check-debug-info         0x0000000101c18291 klee::ObjectState::getUpdates() const + 1105
6  check-debug-info         0x0000000101c191bc klee::ObjectState::read8(klee::ref<klee::Expr>) const + 188
7  check-debug-info         0x0000000101c197f1 klee::ObjectState::read(klee::ref<klee::Expr>, unsigned int) const + 465
8  check-debug-info         0x0000000101bebcc6 klee::Executor::executeMemoryOperation(klee::ExecutionState&, bool, klee::ref<klee::Expr>, klee::ref<klee::Expr>, klee::KInstruction*) + 2486
9  check-debug-info         0x0000000101befb7f klee::Executor::executeInstruction(klee::ExecutionState&, klee::KInstruction*) + 13615
10 check-debug-info         0x0000000101bf67de klee::Executor::run(klee::ExecutionState&) + 2142
11 check-debug-info         0x0000000101bfb278 klee::Executor::runFunction(llvm::Function*) + 376
12 check-debug-info         0x0000000101bcbfdf ValuesCollector::collect(llvm::StringRef, llvm::StringRef, llvm::SmallVector<std::__1::pair<Variable, Assignment*>, 1u>*) + 255
13 check-debug-info         0x0000000101bbcc40 checkFunction(llvm::SmallVector<ValuesCollector, 2u>&, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&, AssignmentStats&) + 3376
14 check-debug-info         0x0000000101bbe3f1 main + 2929
15 dyld                     0x00007ff8007f9366 start + 1942
./check.sh: line 23: 61782 Segmentation fault: 11  ${CHECK} ../O0/${TARGET_NAME}.bc ${TARGET_NAME}.bc ${CHECK_OPTS} "$@"
