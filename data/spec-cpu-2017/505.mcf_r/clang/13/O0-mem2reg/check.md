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
Assertion failed: (state.addressSpace.resolveOne(address, op) && "Concrete pointer not bound to MemoryObject"), function resolvePointers, file ValuesCollector.cpp, line 224.
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /Users/jryans/Projects/klee/build-release-debug/bin/check-debug-info ../O0/mcf_r.bc mcf_r.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --disable-verify --max-forks=32 --max-time=5s --search=random-path --tsv
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x0000000106a1a4d7 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 39
1  check-debug-info         0x0000000106a19318 llvm::sys::RunSignalHandlers() + 248
2  check-debug-info         0x0000000106a1ab20 SignalHandler(int) + 288
3  libsystem_platform.dylib 0x00007ff800bb3fdd _sigtramp + 29
4  libsystem_platform.dylib 0x00007ff700000000 _sigtramp + 18446744069402312768
5  libsystem_c.dylib        0x00007ff800aaaa39 abort + 126
6  libsystem_c.dylib        0x00007ff800aa9d1c err + 0
7  check-debug-info         0x0000000106a36ef3 VCHandler::resolvePointers(klee::ExecutionState&, llvm::Value const*, klee::ref<klee::Expr>, llvm::DbgVariableIntrinsic const*) (.cold.7) + 35
8  check-debug-info         0x00000001051ac385 VCHandler::resolvePointers(klee::ExecutionState&, llvm::Value const*, klee::ref<klee::Expr>, llvm::DbgVariableIntrinsic const*) + 1269
9  check-debug-info         0x00000001051ab8ed VCHandler::recordValue(klee::ExecutionState&, klee::ExecutionEvent&, llvm::Instruction const*, llvm::Value const*, klee::ref<klee::Expr>) + 1165
10 check-debug-info         0x00000001051ab2ae VCHandler::visitBeforeExecution(klee::ExecutionState&, klee::ExecutionEvent&, klee::KInstruction*) + 414
11 check-debug-info         0x00000001051d77d0 klee::Executor::run(klee::ExecutionState&) + 2128
12 check-debug-info         0x00000001051dc278 klee::Executor::runFunction(llvm::Function*) + 376
13 check-debug-info         0x00000001051ad13f ValuesCollector::collect(llvm::StringRef, llvm::StringRef, llvm::SmallVector<std::__1::pair<Variable, Assignment*>, 1u>*) + 255
14 check-debug-info         0x000000010519dd90 checkFunction(llvm::SmallVector<ValuesCollector, 2u>&, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&, AssignmentStats&) + 3376
15 check-debug-info         0x000000010519f541 main + 2929
16 dyld                     0x00007ff8007f9366 start + 1942
./check.sh: line 23: 20064 Abort trap: 6           ${CHECK} ../O0/${TARGET_NAME}.bc ${TARGET_NAME}.bc ${CHECK_OPTS} "$@"
