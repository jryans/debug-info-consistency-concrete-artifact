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
^C