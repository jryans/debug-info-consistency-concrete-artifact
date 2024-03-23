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
Assertion failed: (Ty->isSized() && "Cannot getTypeInfo() on a type that is unsized!"), function getTypeSizeInBits, file DataLayout.h, line 656.
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /Users/jryans/Projects/klee/build-release-debug/bin/check-debug-info ../O0/mcf_r.bc mcf_r.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --disable-verify --max-forks=32 --max-time=5s --search=random-path --tsv
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x000000010a2d8567 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 39
1  check-debug-info         0x000000010a2d73a8 llvm::sys::RunSignalHandlers() + 248
2  check-debug-info         0x000000010a2d8bb0 SignalHandler(int) + 288
3  libsystem_platform.dylib 0x00007ff800bb3fdd _sigtramp + 29
4  libsystem_platform.dylib 0x000000010e189a68 _sigtramp + 18446603375100123816
5  libsystem_c.dylib        0x00007ff800aaaa39 abort + 126
6  libsystem_c.dylib        0x00007ff800aa9d1c err + 0
7  check-debug-info         0x000000010a30d023 llvm::DataLayout::getTypeSizeInBits(llvm::Type*) const (.cold.7) + 35
8  check-debug-info         0x0000000108b09ef1 llvm::DataLayout::getTypeSizeInBits(llvm::Type*) const + 561
9  check-debug-info         0x0000000108a88615 klee::Executor::buildSymbolicValue(klee::ExecutionState&, llvm::Value const*, llvm::Type*, llvm::Twine const&, unsigned int, unsigned int) + 117
10 check-debug-info         0x0000000108a88c4c klee::Executor::buildSymbolicValue(klee::ExecutionState&, llvm::Value const*, llvm::Type*, llvm::Twine const&, unsigned int, unsigned int) + 1708
11 check-debug-info         0x0000000108a88dce klee::Executor::buildSymbolicValue(klee::ExecutionState&, llvm::Value const*, llvm::Type*, llvm::Twine const&, unsigned int, unsigned int) + 2094
12 check-debug-info         0x0000000108a85c50 klee::Executor::executeCall(klee::ExecutionState&, klee::KInstruction*, llvm::Function*, std::__1::vector<klee::ref<klee::Expr>, std::__1::allocator<klee::ref<klee::Expr> > >&) + 1488
13 check-debug-info         0x0000000108a8f0ca klee::Executor::executeInstruction(klee::ExecutionState&, klee::KInstruction*) + 14826
14 check-debug-info         0x0000000108a9586e klee::Executor::run(klee::ExecutionState&) + 2142
15 check-debug-info         0x0000000108a9a308 klee::Executor::runFunction(llvm::Function*) + 376
16 check-debug-info         0x0000000108a6b1cf ValuesCollector::collect(llvm::StringRef, llvm::StringRef, llvm::SmallVector<std::__1::pair<Variable, Assignment*>, 1u>*) + 255
17 check-debug-info         0x0000000108a5be30 checkFunction(llvm::SmallVector<ValuesCollector, 2u>&, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&, AssignmentStats&) + 3376
18 check-debug-info         0x0000000108a5d5e1 main + 2929
19 dyld                     0x00007ff8007f9366 start + 1942
./check.sh: line 23: 25266 Abort trap: 6           ${CHECK} ../O0/${TARGET_NAME}.bc ${TARGET_NAME}.bc ${CHECK_OPTS} "$@"
