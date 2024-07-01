+++ dirname ./trace.sh
++ cd .
++ pwd
+ SCRIPT_DIR=/Users/jryans/Research/Papers/debug-info-consistency/data/spec-cpu-2017/505.mcf_r/clang/13/O1
+ '[' /Users/jryans/Research/Papers/debug-info-consistency/data/spec-cpu-2017/505.mcf_r/clang/13/O1 '!=' /Users/jryans/Research/Papers/debug-info-consistency/data/spec-cpu-2017/505.mcf_r/clang/13/O1 ']'
+ TARGET_NAME=mcf_r
+ source /Users/jryans/Research/Papers/debug-info-consistency/data/spec-cpu-2017/505.mcf_r/clang/13/O1/../../../../../vars.sh
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
+++ klee release-debug klee
+++ local build=release-debug
+++ local program=klee
+++ local program=klee
+++ '[' -z klee ']'
+++ echo /Users/jryans/Projects/klee/build-release-debug/bin/klee
++ KLEE=/Users/jryans/Projects/klee/build-release-debug/bin/klee
++ KLEE_COMMON_OPTS='--use-color=false --debug-execution-trace --disable-verify --output-source --search=random-path'
+++ klee release-debug check-debug-info
+++ local build=release-debug
+++ local program=check-debug-info
+++ local program=check-debug-info
+++ '[' -z check-debug-info ']'
+++ echo /Users/jryans/Projects/klee/build-release-debug/bin/check-debug-info
++ CHECK=/Users/jryans/Projects/klee/build-release-debug/bin/check-debug-info
++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --disable-verify --output-stats=false --max-forks=32 --max-solver-time=5s --max-time=5s --search=random-path --tsv'
+ level=O1
+ version=13
+ find ./symbolic-trace -type d
+ xargs rm -rf
+ echo '## Build symbolic traces for `mcf_r` (Clang 13, O1)'
## Build symbolic traces for `mcf_r` (Clang 13, O1)
+ KLEE_TRACE_OPTS='--independent-functions --output-dir=symbolic-trace --write-no-tests --use-call-paths=false --exit-on-function-coverage --max-solver-time=30s --max-time=30s'
+ /Users/jryans/Projects/klee/build-release-debug/bin/klee --use-color=false --debug-execution-trace --disable-verify --output-source --search=random-path --independent-functions --output-dir=symbolic-trace --write-no-tests --use-call-paths=false --exit-on-function-coverage --max-solver-time=30s --max-time=30s mcf_r.bc
KLEE: WARNING: Module and host target triples do not match: 'x86_64-apple-macosx14.0.0' != 'x86_64-apple-darwin23.5.0'
This may cause unexpected crashes or assertion violations.
KLEE: output directory is "/Users/jryans/Research/Papers/debug-info-consistency/data/spec-cpu-2017/505.mcf_r/clang/13/O1/symbolic-trace"
inlinable function call in a function with debug info must have a !dbg location
  call void @klee_div_zero_check(i64 %int_cast_to_i64)
warning: ignoring invalid debug info in <string>
KLEE: WARNING: undefined reference to function: _fopen
KLEE: WARNING: undefined reference to function: __sprintf_chk
KLEE: WARNING: undefined reference to variable: __stderrp
KLEE: WARNING: undefined reference to variable: __stdoutp
KLEE: WARNING: undefined reference to function: __strcpy_chk
KLEE: WARNING: undefined reference to function: atoi
KLEE: WARNING: undefined reference to function: fclose
KLEE: WARNING: undefined reference to function: fflush
KLEE: WARNING: undefined reference to function: fgets
KLEE: WARNING: undefined reference to function: fprintf
KLEE: WARNING: undefined reference to function: fwrite
KLEE: WARNING: undefined reference to function: printf
KLEE: WARNING: undefined reference to function: putchar
KLEE: WARNING: undefined reference to function: puts
KLEE: WARNING: undefined reference to function: sscanf

## Running `global_opt` in independent function mode
KLEE: WARNING: Unable to load source file `mcf.c`
KLEE: ERROR: mcf.c:77: reached "unreachable" instruction
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcf.c:103: reached "unreachable" instruction
KLEE: NOTE: now ignoring this error at this location
KLEE: Function covered, halting execution
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 85
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 9
KLEE: done: generated tests = 0

## Running `refresh_neighbour_lists` in independent function mode
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING ONCE: flushing 20736 bytes on read, may be slow and/or crash: MO154[20736] allocated at value: %struct.network* %net
KLEE: ERROR: mcfutil.c:39: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:40: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:48: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:47: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:50: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:50: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 202
KLEE: done: completed paths = 4
KLEE: done: partially completed paths = 148
KLEE: done: generated tests = 0

## Running `flow_cost` in independent function mode
KLEE: ERROR: mcfutil.c:75: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:61: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:61: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: WARNING ONCE: silently concretizing (reason: floating point) expression (ReadLSB w64 N0:(Extract w32 0 (Add w64 0x210
                                         (Sub w64 (ReadLSB w64 0x0 flow_cost.net)
                                                  0x1089878C0))) const_arr37) to value 0x0 (mcfutil.c:118)
KLEE: ERROR: mcfutil.c:81: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:81: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 175
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 142
KLEE: done: generated tests = 0

## Running `start` in independent function mode
KLEE: Function covered, halting execution

KLEE: done: total instructions = 1
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0

## Running `getArcPosition` in independent function mode
KLEE: ERROR: mcfutil.c:145: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: ERROR: mcfutil.c:145: divide by zero
KLEE: NOTE: now ignoring this error at this location
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: ERROR: mcfutil.c:146: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: ERROR: mcfutil.c:146: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `mcfutil.c`
KLEE: Function covered, halting execution
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 192
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 45
KLEE: done: generated tests = 0

## Running `getOriginalArcPosition` in independent function mode
KLEE: Function covered, halting execution

KLEE: done: total instructions = 3
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0

## Running `flow_org_cost` in independent function mode
KLEE: ERROR: mcfutil.c:184: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:171: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:171: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:190: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:190: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:201: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 144
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 179
KLEE: done: generated tests = 0

## Running `primal_feasible` in independent function mode
KLEE: ERROR: mcfutil.c:243: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:244: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:249: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:0: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:250: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:254: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 135
KLEE: done: completed paths = 3
KLEE: done: partially completed paths = 139
KLEE: done: generated tests = 0

## Running `dual_feasible` in independent function mode
KLEE: ERROR: mcfutil.c:300: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:306: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:308: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:308: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 102
KLEE: done: completed paths = 4
KLEE: done: partially completed paths = 165
KLEE: done: generated tests = 0

## Running `getfree` in independent function mode
KLEE: ERROR: mcfutil.c:374: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:375: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: mcfutil.c:376: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: Function covered, halting execution
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 258
KLEE: done: completed paths = 4
KLEE: done: partially completed paths = 74
KLEE: done: generated tests = 0

## Running `read_min` in independent function mode
KLEE: WARNING: Unable to load source file `readmin.c`
KLEE: ERROR: readmin.c:53: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: readmin.c:53: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: readmin.c:54: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: readmin.c:55: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: readmin.c:58: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 35882
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 53
KLEE: done: generated tests = 0

## Running `refreshArcPointers` in independent function mode
KLEE: WARNING: Unable to load source file `implicit.c`
KLEE: ERROR: implicit.c:62: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:63: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:64: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 62
KLEE: done: completed paths = 3
KLEE: done: partially completed paths = 134
KLEE: done: generated tests = 0

## Running `refreshPositions` in independent function mode
KLEE: ERROR: implicit.c:88: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:102: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:95: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:96: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: Function covered, halting execution
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 151
KLEE: done: completed paths = 3
KLEE: done: partially completed paths = 105
KLEE: done: generated tests = 0

## Running `marc_arcs` in independent function mode
KLEE: ERROR: implicit.c:138: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:138: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:143: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:143: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:147: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:148: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:148: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:148: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:149: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:149: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 127
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 1545
KLEE: done: generated tests = 0

## Running `resize_prob` in independent function mode
KLEE: ERROR: implicit.c:217: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:217: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:217: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:229: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:240: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:250: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:244: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 195
KLEE: done: completed paths = 3
KLEE: done: partially completed paths = 95
KLEE: done: generated tests = 0

## Running `insert_new_arc` in independent function mode
KLEE: ERROR: implicit.c:279: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:279: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:280: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:281: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 22
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 52
KLEE: done: generated tests = 0

## Running `replace_weaker_arc` in independent function mode
KLEE: ERROR: implicit.c:331: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:331: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:332: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:333: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:334: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:336: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:339: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:339: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:340: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 103
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 67
KLEE: done: generated tests = 0

## Running `calculate_max_redcost` in independent function mode
KLEE: ERROR: implicit.c:392: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:392: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:395: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:395: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 35
KLEE: done: completed paths = 3
KLEE: done: partially completed paths = 180
KLEE: done: generated tests = 0

## Running `switch_arcs` in independent function mode
KLEE: ERROR: implicit.c:422: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `implicit.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `implicit.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `implicit.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `implicit.c`
KLEE: ERROR: implicit.c:422: Query timed out (resolve).
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 111
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 53
KLEE: done: generated tests = 0

## Running `price_out_impl` in independent function mode
KLEE: ERROR: implicit.c:471: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:501: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:535: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:556: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:556: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:557: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:557: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 340
KLEE: done: completed paths = 5
KLEE: done: partially completed paths = 278
KLEE: done: generated tests = 0

## Running `arc_compare` in independent function mode
KLEE: ERROR: implicit.c:37: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:37: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:37: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 22
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 292
KLEE: done: generated tests = 0

## Running `suspend_impl` in independent function mode
KLEE: ERROR: implicit.c:801: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:801: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: implicit.c:802: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 250
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 51
KLEE: done: generated tests = 0

## Running `primal_start_artificial` in independent function mode
KLEE: WARNING: Unable to load source file `pstart.c`
KLEE: ERROR: pstart.c:40: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pstart.c:41: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pstart.c:41: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pstart.c:42: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 44
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 80
KLEE: done: generated tests = 0

## Running `write_circulations` in independent function mode
KLEE: WARNING: Unable to load source file `output.c`
KLEE: ERROR: output.c:45: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: output.c:45: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: output.c:52: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: output.c:52: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 72
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 92
KLEE: done: generated tests = 0

## Running `write_objective_value` in independent function mode
KLEE: Function covered, halting execution
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 13
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0

## Running `update_tree` in independent function mode
KLEE: WARNING: Unable to load source file `treeup.c`
KLEE: ERROR: treeup.c:72: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: treeup.c:0: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: treeup.c:81: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: treeup.c:0: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: treeup.c:104: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: treeup.c:0: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 506
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 703
KLEE: done: generated tests = 0

## Running `primal_iminus` in independent function mode
KLEE: WARNING: Unable to load source file `pbla.c`
KLEE: ERROR: pbla.c:78: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pbla.c:78: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pbla.c:60: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pbla.c:60: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pbla.c:70: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pbla.c:62: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 78
KLEE: done: completed paths = 18
KLEE: done: partially completed paths = 359
KLEE: done: generated tests = 0

## Running `primal_update_flow` in independent function mode
KLEE: WARNING: Unable to load source file `pflowup.c`
KLEE: ERROR: pflowup.c:43: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pflowup.c:51: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pflowup.c:43: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pflowup.c:51: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: Function covered, halting execution
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 113
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 99
KLEE: done: generated tests = 0

## Running `markBaskets` in independent function mode
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: ERROR: psimplex.c:46: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location

KLEE: done: total instructions = 17
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0

## Running `worker` in independent function mode
KLEE: ERROR: psimplex.c:95: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: psimplex.c:96: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: psimplex.c:97: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: psimplex.c:103: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: psimplex.c:103: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: ERROR: psimplex.c:104: divide by zero
KLEE: NOTE: now ignoring this error at this location
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: ERROR: psimplex.c:108: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: ERROR: psimplex.c:108: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
KLEE: WARNING: Unable to load source file `psimplex.c`
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 706
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 122
KLEE: done: generated tests = 0

## Running `master` in independent function mode
KLEE: ERROR: psimplex.c:143: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: psimplex.c:144: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: psimplex.c:146: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: psimplex.c:162: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 225
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 67
KLEE: done: generated tests = 0

## Running `primal_net_simplex` in independent function mode
KLEE: ERROR: psimplex.c:318: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: Function covered, halting execution
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 46
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 43
KLEE: done: generated tests = 0

## Running `set_static_vars` in independent function mode
KLEE: WARNING: Unable to load source file `pbeampp.c`
KLEE: ERROR: pbeampp.c:40: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pbeampp.c:40: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: Function covered, halting execution
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 17
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 44
KLEE: done: generated tests = 0

## Running `bea_is_dual_infeasible` in independent function mode
KLEE: ERROR: pbeampp.c:53: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pbeampp.c:54: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: Function covered, halting execution
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 24
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 95
KLEE: done: generated tests = 0

## Running `cost_compare` in independent function mode
KLEE: ERROR: pbeampp.c:68: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pbeampp.c:68: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pbeampp.c:68: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 22
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 166
KLEE: done: generated tests = 0

## Running `primal_bea_mpp` in independent function mode
KLEE: ERROR: pbeampp.c:100: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pbeampp.c:102: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: pbeampp.c:102: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 36
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 102
KLEE: done: generated tests = 0

## Running `spec_qsort` in independent function mode
KLEE: WARNING: Unable to load source file `spec_qsort/spec_qsort.c`
KLEE: ERROR: spec_qsort/spec_qsort.c:145: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: spec_qsort/spec_qsort.c:130: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: spec_qsort/spec_qsort.c:145: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: spec_qsort/spec_qsort.c:145: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: spec_qsort/spec_qsort.c:130: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: spec_qsort/spec_qsort.c:145: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: spec_qsort/spec_qsort.c:130: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: WARNING: STP timed out
KLEE: ERROR: spec_qsort/spec_qsort.c:126: Query timed out (fork).
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 236
KLEE: done: completed paths = 4
KLEE: done: partially completed paths = 238
KLEE: done: generated tests = 0

## Running `swapfunc` in independent function mode
KLEE: ERROR: spec_qsort/spec_qsort.c:88: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: spec_qsort/spec_qsort.c:88: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: spec_qsort/spec_qsort.c:84: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: spec_qsort/spec_qsort.c:84: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: spec_qsort/spec_qsort.c:88: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: spec_qsort/spec_qsort.c:84: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: spec_qsort/spec_qsort.c:86: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: spec_qsort/spec_qsort.c:86: memory error: out of bound pointer
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: spec_qsort/spec_qsort.c:86: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: ERROR: spec_qsort/spec_qsort.c:84: memory error: object read only
KLEE: NOTE: now ignoring this error at this location
KLEE: HaltTimer invoked
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 3613
KLEE: done: completed paths = 18
KLEE: done: partially completed paths = 1986
KLEE: done: generated tests = 0

## Running `med3` in independent function mode
KLEE: Function covered, halting execution
KLEE: halting execution, dumping remaining states

KLEE: done: total instructions = 26
KLEE: done: completed paths = 3
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0

+ ./check-coverage.js ./symbolic-trace
## Coverage for `refreshArcPointers`

Warnings present, coverage may be invalid!
Asm line 1340, src line 64 not covered
Asm line 1343, src line 64 not covered
Asm line 1344, src line 64 not covered
Asm line 1345, src line 64 not covered
Asm line 1346, src line 64 not covered
Asm line 1349, src line 65 not covered
Asm line 1350, src line 65 not covered
Asm line 1351, src line 65 not covered
Asm line 1352, src line 65 not covered
Asm line 1353, src line 65 not covered
Asm line 1356, src line 66 not covered
Asm line 1357, src line 66 not covered
Asm line 1358, src line 66 not covered
Asm line 1359, src line 66 not covered
Asm line 1362, src line 66 not covered
Asm line 1363, src line 66 not covered
Asm line 1364, src line 66 not covered
Asm line 1365, src line 66 not covered
Asm line 1368, src line 67 not covered
Asm line 1369, src line 67 not covered
Asm line 1370, src line 67 not covered
Asm line 1371, src line 67 not covered
Asm line 1372, src line 67 not covered
Asm line 1375, src line 68 not covered
Asm line 1376, src line 68 not covered
Asm line 1377, src line 68 not covered
Asm line 1378, src line 68 not covered
Asm line 1381, src line 68 not covered
Asm line 1382, src line 68 not covered
Asm line 1383, src line 68 not covered
Asm line 1384, src line 68 not covered
Asm line 1387, src line 69 not covered
Asm line 1388, src line 69 not covered
Asm line 1389, src line 69 not covered
Asm line 1390, src line 69 not covered
Asm line 1391, src line 69 not covered
Asm line 1394, src line 62 not covered
Asm line 1395, src line 0 not covered
Asm line 1396, src line 62 not covered
Asm line 1397, src line 62 not covered
Asm line 1398, src line 62 not covered
18 / 59 (30.508474576271187%) asm lines covered

## Coverage for `primal_iminus`

Warnings present, coverage may be invalid!
Asm line 3498, src line 62 not covered
Asm line 3501, src line 63 not covered
Asm line 3502, src line 63 not covered
Asm line 3503, src line 63 not covered
Asm line 3504, src line 63 not covered
Asm line 3505, src line 63 not covered
Asm line 3508, src line 64 not covered
Asm line 3509, src line 64 not covered
Asm line 3510, src line 64 not covered
Asm line 3511, src line 64 not covered
Asm line 3512, src line 64 not covered
Asm line 3513, src line 64 not covered
Asm line 3516, src line 65 not covered
Asm line 3517, src line 65 not covered
Asm line 3518, src line 65 not covered
Asm line 3519, src line 65 not covered
Asm line 3520, src line 65 not covered
Asm line 3521, src line 65 not covered
Asm line 3524, src line 40 not covered
Asm line 3525, src line 62 not covered
Asm line 3526, src line 62 not covered
Asm line 3527, src line 66 not covered
Asm line 3530, src line 0 not covered
Asm line 3531, src line 0 not covered
Asm line 3532, src line 66 not covered
Asm line 3533, src line 66 not covered
Asm line 3534, src line 0 not covered
Asm line 3535, src line 67 not covered
Asm line 3540, src line 70 not covered
Asm line 3541, src line 70 not covered
Asm line 3544, src line 71 not covered
Asm line 3545, src line 71 not covered
Asm line 3546, src line 71 not covered
Asm line 3547, src line 71 not covered
Asm line 3548, src line 71 not covered
Asm line 3551, src line 72 not covered
Asm line 3552, src line 72 not covered
Asm line 3553, src line 72 not covered
Asm line 3554, src line 72 not covered
Asm line 3555, src line 72 not covered
Asm line 3556, src line 72 not covered
Asm line 3559, src line 73 not covered
Asm line 3560, src line 73 not covered
Asm line 3561, src line 73 not covered
Asm line 3562, src line 73 not covered
Asm line 3563, src line 73 not covered
Asm line 3564, src line 73 not covered
Asm line 3567, src line 40 not covered
Asm line 3568, src line 70 not covered
Asm line 3569, src line 70 not covered
Asm line 3570, src line 74 not covered
Asm line 3573, src line 0 not covered
Asm line 3574, src line 0 not covered
Asm line 3575, src line 74 not covered
Asm line 3576, src line 74 not covered
Asm line 3577, src line 0 not covered
Asm line 3578, src line 40 not covered
Asm line 3581, src line 40 not covered
Asm line 3582, src line 40 not covered
Asm line 3583, src line 60 not covered
Asm line 3584, src line 0 not covered
Asm line 3585, src line 0 not covered
Asm line 3586, src line 0 not covered
Asm line 3587, src line 58 not covered
Asm line 3588, src line 58 not covered
29 / 94 (30.851063829787233%) asm lines covered

## Coverage for `spec_qsort`

Warnings present, coverage may be invalid!
Asm line 4564, src line 130 not covered
Asm line 4565, src line 130 not covered
Asm line 4566, src line 130 not covered
Asm line 4574, src line 130 not covered
Asm line 4575, src line 130 not covered
Asm line 4576, src line 130 not covered
Asm line 4577, src line 130 not covered
Asm line 4578, src line 130 not covered
Asm line 4579, src line 130 not covered
Asm line 4583, src line 115 not covered
Asm line 4586, src line 0 not covered
Asm line 4587, src line 128 not covered
Asm line 4588, src line 128 not covered
Asm line 4665, src line 145 not covered
Asm line 4666, src line 145 not covered
Asm line 4667, src line 145 not covered
Asm line 4679, src line 145 not covered
Asm line 4680, src line 145 not covered
Asm line 4681, src line 145 not covered
Asm line 4697, src line 115 not covered
Asm line 4698, src line 115 not covered
Asm line 4699, src line 149 not covered
Asm line 4702, src line 0 not covered
Asm line 4703, src line 148 not covered
Asm line 4704, src line 0 not covered
Asm line 4705, src line 0 not covered
Asm line 4706, src line 146 not covered
Asm line 4707, src line 0 not covered
Asm line 4708, src line 0 not covered
Asm line 4709, src line 0 not covered
Asm line 4710, src line 0 not covered
Asm line 4711, src line 0 not covered
Asm line 4712, src line 0 not covered
Asm line 4713, src line 0 not covered
Asm line 4714, src line 0 not covered
Asm line 4715, src line 150 not covered
Asm line 4716, src line 150 not covered
Asm line 4719, src line 115 not covered
Asm line 4720, src line 115 not covered
Asm line 4721, src line 115 not covered
Asm line 4722, src line 0 not covered
Asm line 4723, src line 0 not covered
Asm line 4724, src line 0 not covered
Asm line 4725, src line 150 not covered
Asm line 4726, src line 0 not covered
Asm line 4727, src line 150 not covered
Asm line 4728, src line 150 not covered
Asm line 4731, src line 151 not covered
Asm line 4732, src line 151 not covered
Asm line 4735, src line 0 not covered
Asm line 4736, src line 153 not covered
Asm line 4739, src line 153 not covered
Asm line 4740, src line 153 not covered
Asm line 4741, src line 153 not covered
Asm line 4742, src line 153 not covered
Asm line 4743, src line 153 not covered
Asm line 4744, src line 153 not covered
Asm line 4745, src line 153 not covered
Asm line 4746, src line 153 not covered
Asm line 4749, src line 153 not covered
Asm line 4752, src line 153 not covered
Asm line 4753, src line 153 not covered
Asm line 4754, src line 153 not covered
Asm line 4755, src line 153 not covered
Asm line 4756, src line 153 not covered
Asm line 4757, src line 153 not covered
Asm line 4758, src line 153 not covered
Asm line 4759, src line 153 not covered
Asm line 4762, src line 153 not covered
Asm line 4763, src line 115 not covered
Asm line 4766, src line 154 not covered
Asm line 4767, src line 0 not covered
Asm line 4768, src line 155 not covered
Asm line 4771, src line 0 not covered
Asm line 4772, src line 0 not covered
Asm line 4773, src line 0 not covered
Asm line 4774, src line 0 not covered
Asm line 4775, src line 156 not covered
Asm line 4776, src line 0 not covered
Asm line 4777, src line 150 not covered
Asm line 4778, src line 150 not covered
Asm line 4781, src line 0 not covered
Asm line 4782, src line 0 not covered
Asm line 4783, src line 0 not covered
Asm line 4784, src line 0 not covered
Asm line 4785, src line 0 not covered
Asm line 4786, src line 0 not covered
Asm line 4787, src line 158 not covered
Asm line 4788, src line 158 not covered
Asm line 4791, src line 0 not covered
Asm line 4792, src line 0 not covered
Asm line 4793, src line 0 not covered
Asm line 4794, src line 158 not covered
Asm line 4795, src line 0 not covered
Asm line 4796, src line 158 not covered
Asm line 4797, src line 158 not covered
Asm line 4800, src line 0 not covered
Asm line 4801, src line 0 not covered
Asm line 4802, src line 0 not covered
Asm line 4803, src line 158 not covered
Asm line 4804, src line 0 not covered
Asm line 4805, src line 158 not covered
Asm line 4806, src line 158 not covered
Asm line 4809, src line 115 not covered
Asm line 4810, src line 115 not covered
Asm line 4811, src line 115 not covered
Asm line 4812, src line 115 not covered
Asm line 4813, src line 0 not covered
Asm line 4814, src line 0 not covered
Asm line 4815, src line 0 not covered
Asm line 4816, src line 159 not covered
Asm line 4817, src line 159 not covered
Asm line 4820, src line 0 not covered
Asm line 4821, src line 161 not covered
Asm line 4824, src line 161 not covered
Asm line 4825, src line 161 not covered
Asm line 4826, src line 161 not covered
Asm line 4827, src line 161 not covered
Asm line 4828, src line 161 not covered
Asm line 4829, src line 161 not covered
Asm line 4830, src line 161 not covered
Asm line 4831, src line 161 not covered
Asm line 4834, src line 161 not covered
Asm line 4837, src line 161 not covered
Asm line 4838, src line 161 not covered
Asm line 4839, src line 161 not covered
Asm line 4840, src line 161 not covered
Asm line 4841, src line 161 not covered
Asm line 4842, src line 161 not covered
Asm line 4843, src line 161 not covered
Asm line 4844, src line 161 not covered
Asm line 4847, src line 161 not covered
Asm line 4848, src line 115 not covered
Asm line 4851, src line 162 not covered
Asm line 4852, src line 0 not covered
Asm line 4853, src line 163 not covered
Asm line 4856, src line 0 not covered
Asm line 4857, src line 0 not covered
Asm line 4858, src line 0 not covered
Asm line 4859, src line 0 not covered
Asm line 4860, src line 164 not covered
Asm line 4861, src line 0 not covered
Asm line 4862, src line 158 not covered
Asm line 4863, src line 158 not covered
Asm line 4866, src line 115 not covered
Asm line 4867, src line 115 not covered
Asm line 4868, src line 115 not covered
Asm line 4869, src line 115 not covered
Asm line 4870, src line 166 not covered
Asm line 4873, src line 168 not covered
Asm line 4876, src line 168 not covered
Asm line 4877, src line 168 not covered
Asm line 4878, src line 168 not covered
Asm line 4879, src line 168 not covered
Asm line 4880, src line 168 not covered
Asm line 4881, src line 168 not covered
Asm line 4882, src line 168 not covered
Asm line 4883, src line 168 not covered
Asm line 4886, src line 168 not covered
Asm line 4889, src line 168 not covered
Asm line 4890, src line 168 not covered
Asm line 4891, src line 168 not covered
Asm line 4892, src line 168 not covered
Asm line 4893, src line 168 not covered
Asm line 4894, src line 168 not covered
Asm line 4895, src line 168 not covered
Asm line 4896, src line 168 not covered
Asm line 4899, src line 168 not covered
Asm line 4900, src line 115 not covered
Asm line 4903, src line 0 not covered
Asm line 4904, src line 170 not covered
Asm line 4905, src line 0 not covered
Asm line 4906, src line 171 not covered
Asm line 4907, src line 0 not covered
Asm line 4908, src line 149 not covered
Asm line 4911, src line 115 not covered
Asm line 4912, src line 115 not covered
Asm line 4913, src line 115 not covered
Asm line 4914, src line 173 not covered
Asm line 4915, src line 115 not covered
Asm line 4916, src line 115 not covered
Asm line 4917, src line 173 not covered
Asm line 4920, src line 115 not covered
Asm line 4921, src line 115 not covered
Asm line 4922, src line 115 not covered
Asm line 4923, src line 0 not covered
Asm line 4924, src line 174 not covered
Asm line 4925, src line 174 not covered
Asm line 4928, src line 115 not covered
Asm line 4929, src line 0 not covered
Asm line 4930, src line 0 not covered
Asm line 4931, src line 176 not covered
Asm line 4932, src line 176 not covered
Asm line 4935, src line 115 not covered
Asm line 4936, src line 0 not covered
Asm line 4937, src line 176 not covered
Asm line 4938, src line 176 not covered
Asm line 4939, src line 176 not covered
Asm line 4940, src line 175 not covered
Asm line 4943, src line 178 not covered
Asm line 4946, src line 178 not covered
Asm line 4947, src line 178 not covered
Asm line 4948, src line 178 not covered
Asm line 4949, src line 178 not covered
Asm line 4950, src line 178 not covered
Asm line 4951, src line 178 not covered
Asm line 4952, src line 178 not covered
Asm line 4953, src line 178 not covered
Asm line 4956, src line 178 not covered
Asm line 4959, src line 178 not covered
Asm line 4960, src line 178 not covered
Asm line 4961, src line 178 not covered
Asm line 4962, src line 178 not covered
Asm line 4963, src line 178 not covered
Asm line 4964, src line 178 not covered
Asm line 4965, src line 178 not covered
Asm line 4966, src line 178 not covered
Asm line 4969, src line 178 not covered
Asm line 4970, src line 115 not covered
Asm line 4973, src line 0 not covered
Asm line 4974, src line 176 not covered
Asm line 4975, src line 176 not covered
Asm line 4978, src line 174 not covered
Asm line 4979, src line 0 not covered
Asm line 4980, src line 174 not covered
Asm line 4981, src line 174 not covered
Asm line 4984, src line 0 not covered
Asm line 4985, src line 183 not covered
Asm line 4986, src line 183 not covered
Asm line 4987, src line 183 not covered
Asm line 4988, src line 183 not covered
Asm line 4989, src line 183 not covered
Asm line 4990, src line 183 not covered
Asm line 4991, src line 0 not covered
Asm line 4992, src line 184 not covered
Asm line 4993, src line 184 not covered
Asm line 4996, src line 184 not covered
Asm line 4997, src line 184 not covered
Asm line 4998, src line 184 not covered
Asm line 4999, src line 184 not covered
Asm line 5000, src line 184 not covered
Asm line 5003, src line 185 not covered
Asm line 5004, src line 185 not covered
Asm line 5005, src line 185 not covered
Asm line 5006, src line 185 not covered
Asm line 5007, src line 185 not covered
Asm line 5008, src line 185 not covered
Asm line 5009, src line 185 not covered
Asm line 5010, src line 185 not covered
Asm line 5011, src line 0 not covered
Asm line 5012, src line 186 not covered
Asm line 5013, src line 186 not covered
Asm line 5016, src line 186 not covered
Asm line 5017, src line 186 not covered
Asm line 5018, src line 186 not covered
Asm line 5019, src line 186 not covered
Asm line 5020, src line 186 not covered
Asm line 5023, src line 0 not covered
Asm line 5024, src line 187 not covered
Asm line 5025, src line 187 not covered
Asm line 5028, src line 188 not covered
Asm line 5029, src line 188 not covered
Asm line 5030, src line 188 not covered
Asm line 5031, src line 188 not covered
Asm line 5034, src line 0 not covered
Asm line 5035, src line 189 not covered
Asm line 5036, src line 189 not covered
Asm line 5039, src line 191 not covered
Asm line 5040, src line 191 not covered
Asm line 5041, src line 0 not covered
Asm line 5042, src line 192 not covered
Asm line 5043, src line 192 not covered
Asm line 5044, src line 0 not covered
Asm line 5045, src line 122 not covered
Asm line 5046, src line 122 not covered
Asm line 5047, src line 122 not covered
Asm line 5048, src line 122 not covered
Asm line 5049, src line 122 not covered
Asm line 5050, src line 122 not covered
Asm line 5051, src line 0 not covered
Asm line 5052, src line 123 not covered
Asm line 5053, src line 123 not covered
Asm line 5054, src line 123 not covered
Asm line 5055, src line 123 not covered
Asm line 5056, src line 0 not covered
Asm line 5057, src line 0 not covered
Asm line 5058, src line 125 not covered
Asm line 5059, src line 125 not covered
153 / 441 (34.69387755102041%) asm lines covered

## Coverage for `swapfunc`

Asm line 5134, src line 86 not covered
Asm line 5135, src line 86 not covered
Asm line 5136, src line 86 not covered
Asm line 5137, src line 86 not covered
Asm line 5138, src line 86 not covered
Asm line 5139, src line 86 not covered
Asm line 5140, src line 86 not covered
Asm line 5156, src line 88 not covered
Asm line 5157, src line 88 not covered
Asm line 5158, src line 88 not covered
Asm line 5159, src line 88 not covered
Asm line 5160, src line 88 not covered
Asm line 5161, src line 88 not covered
70 / 83 (84.33734939759037%) asm lines covered

## Coverage for `price_out_impl`

Asm line 2171, src line 558 not covered
Asm line 2172, src line 559 not covered
Asm line 2173, src line 559 not covered
Asm line 2174, src line 0 not covered
Asm line 2175, src line 0 not covered
Asm line 2176, src line 0 not covered
Asm line 2177, src line 0 not covered
Asm line 2178, src line 563 not covered
Asm line 2179, src line 563 not covered
Asm line 2180, src line 563 not covered
Asm line 2181, src line 0 not covered
Asm line 2182, src line 566 not covered
Asm line 2183, src line 566 not covered
Asm line 2186, src line 444 not covered
Asm line 2187, src line 566 not covered
Asm line 2190, src line 444 not covered
Asm line 2191, src line 0 not covered
Asm line 2192, src line 567 not covered
Asm line 2193, src line 567 not covered
Asm line 2194, src line 567 not covered
Asm line 2195, src line 566 not covered
Asm line 2196, src line 0 not covered
Asm line 2197, src line 566 not covered
Asm line 2198, src line 566 not covered
Asm line 2201, src line 570 not covered
Asm line 2202, src line 570 not covered
Asm line 2203, src line 0 not covered
Asm line 2204, src line 0 not covered
Asm line 2205, src line 571 not covered
Asm line 2206, src line 571 not covered
Asm line 2209, src line 571 not covered
Asm line 2210, src line 571 not covered
Asm line 2211, src line 571 not covered
Asm line 2214, src line 444 not covered
Asm line 2215, src line 444 not covered
Asm line 2216, src line 0 not covered
Asm line 2217, src line 0 not covered
Asm line 2218, src line 571 not covered
Asm line 2219, src line 571 not covered
Asm line 2220, src line 571 not covered
Asm line 2221, src line 571 not covered
Asm line 2224, src line 571 not covered
Asm line 2225, src line 0 not covered
Asm line 2226, src line 571 not covered
Asm line 2227, src line 0 not covered
Asm line 2228, src line 571 not covered
Asm line 2229, src line 571 not covered
Asm line 2232, src line 544 not covered
Asm line 2233, src line 571 not covered
Asm line 2234, src line 0 not covered
Asm line 2235, src line 444 not covered
Asm line 2236, src line 444 not covered
Asm line 2237, src line 444 not covered
Asm line 2238, src line 0 not covered
Asm line 2239, src line 0 not covered
Asm line 2240, src line 0 not covered
Asm line 2241, src line 0 not covered
Asm line 2242, src line 0 not covered
Asm line 2243, src line 0 not covered
Asm line 2244, src line 0 not covered
Asm line 2245, src line 0 not covered
Asm line 2246, src line 574 not covered
Asm line 2247, src line 574 not covered
Asm line 2250, src line 444 not covered
Asm line 2251, src line 444 not covered
Asm line 2252, src line 444 not covered
Asm line 2253, src line 444 not covered
Asm line 2254, src line 444 not covered
Asm line 2255, src line 444 not covered
Asm line 2256, src line 444 not covered
Asm line 2257, src line 444 not covered
Asm line 2258, src line 0 not covered
Asm line 2259, src line 0 not covered
Asm line 2260, src line 0 not covered
Asm line 2261, src line 0 not covered
Asm line 2262, src line 0 not covered
Asm line 2263, src line 0 not covered
Asm line 2264, src line 0 not covered
Asm line 2265, src line 0 not covered
Asm line 2266, src line 576 not covered
Asm line 2267, src line 576 not covered
Asm line 2270, src line 0 not covered
Asm line 2271, src line 577 not covered
Asm line 2272, src line 578 not covered
Asm line 2275, src line 580 not covered
Asm line 2276, src line 580 not covered
Asm line 2277, src line 580 not covered
Asm line 2278, src line 580 not covered
Asm line 2281, src line 0 not covered
Asm line 2282, src line 584 not covered
Asm line 2283, src line 585 not covered
Asm line 2286, src line 587 not covered
Asm line 2287, src line 588 not covered
Asm line 2288, src line 0 not covered
Asm line 2289, src line 590 not covered
Asm line 2290, src line 591 not covered
Asm line 2293, src line 544 not covered
Asm line 2294, src line 0 not covered
Asm line 2295, src line 594 not covered
Asm line 2296, src line 594 not covered
Asm line 2297, src line 594 not covered
Asm line 2298, src line 594 not covered
Asm line 2301, src line 594 not covered
Asm line 2302, src line 596 not covered
Asm line 2303, src line 596 not covered
Asm line 2304, src line 0 not covered
Asm line 2305, src line 597 not covered
Asm line 2306, src line 597 not covered
Asm line 2307, src line 598 not covered
Asm line 2308, src line 598 not covered
Asm line 2309, src line 0 not covered
Asm line 2310, src line 600 not covered
Asm line 2311, src line 0 not covered
Asm line 2312, src line 601 not covered
Asm line 2315, src line 544 not covered
Asm line 2316, src line 544 not covered
Asm line 2317, src line 0 not covered
Asm line 2318, src line 0 not covered
Asm line 2319, src line 603 not covered
Asm line 2320, src line 603 not covered
Asm line 2321, src line 603 not covered
Asm line 2322, src line 603 not covered
Asm line 2325, src line 605 not covered
Asm line 2326, src line 0 not covered
Asm line 2327, src line 606 not covered
Asm line 2330, src line 609 not covered
Asm line 2331, src line 609 not covered
Asm line 2332, src line 0 not covered
Asm line 2333, src line 610 not covered
Asm line 2334, src line 610 not covered
Asm line 2335, src line 610 not covered
Asm line 2336, src line 610 not covered
Asm line 2337, src line 610 not covered
Asm line 2338, src line 497 not covered
Asm line 2339, src line 611 not covered
Asm line 2340, src line 0 not covered
Asm line 2341, src line 613 not covered
Asm line 2342, src line 0 not covered
Asm line 2343, src line 615 not covered
Asm line 2344, src line 0 not covered
Asm line 2345, src line 444 not covered
Asm line 2346, src line 575 not covered
Asm line 2347, src line 0 not covered
Asm line 2348, src line 0 not covered
Asm line 2349, src line 0 not covered
Asm line 2350, src line 0 not covered
Asm line 2351, src line 0 not covered
Asm line 2352, src line 616 not covered
Asm line 2353, src line 616 not covered
Asm line 2356, src line 444 not covered
Asm line 2357, src line 444 not covered
Asm line 2358, src line 444 not covered
Asm line 2359, src line 444 not covered
Asm line 2360, src line 444 not covered
Asm line 2361, src line 0 not covered
Asm line 2362, src line 0 not covered
Asm line 2363, src line 0 not covered
Asm line 2364, src line 0 not covered
Asm line 2365, src line 616 not covered
Asm line 2368, src line 444 not covered
Asm line 2369, src line 444 not covered
Asm line 2370, src line 0 not covered
Asm line 2371, src line 619 not covered
Asm line 2372, src line 619 not covered
Asm line 2373, src line 0 not covered
Asm line 2374, src line 620 not covered
Asm line 2375, src line 620 not covered
Asm line 2376, src line 0 not covered
Asm line 2377, src line 622 not covered
Asm line 2378, src line 622 not covered
Asm line 2379, src line 622 not covered
Asm line 2380, src line 622 not covered
Asm line 2381, src line 622 not covered
Asm line 2382, src line 622 not covered
Asm line 2383, src line 622 not covered
Asm line 2384, src line 622 not covered
Asm line 2387, src line 624 not covered
Asm line 2388, src line 0 not covered
Asm line 2389, src line 625 not covered
Asm line 2390, src line 0 not covered
Asm line 2391, src line 575 not covered
Asm line 2392, src line 0 not covered
Asm line 2393, src line 0 not covered
Asm line 2394, src line 0 not covered
Asm line 2395, src line 0 not covered
Asm line 2396, src line 616 not covered
Asm line 2397, src line 616 not covered
Asm line 2400, src line 629 not covered
Asm line 2401, src line 629 not covered
Asm line 2402, src line 629 not covered
Asm line 2403, src line 629 not covered
Asm line 2404, src line 629 not covered
Asm line 2405, src line 0 not covered
Asm line 2406, src line 631 not covered
Asm line 2407, src line 631 not covered
Asm line 2410, src line 634 not covered
Asm line 2411, src line 634 not covered
Asm line 2412, src line 634 not covered
Asm line 2415, src line 636 not covered
Asm line 2416, src line 638 not covered
Asm line 2417, src line 638 not covered
Asm line 2418, src line 639 not covered
Asm line 2421, src line 640 not covered
Asm line 2422, src line 640 not covered
Asm line 2423, src line 640 not covered
Asm line 2426, src line 641 not covered
Asm line 2427, src line 641 not covered
Asm line 2428, src line 0 not covered
Asm line 2429, src line 0 not covered
Asm line 2430, src line 646 not covered
Asm line 2431, src line 646 not covered
Asm line 2432, src line 646 not covered
Asm line 2433, src line 646 not covered
Asm line 2434, src line 647 not covered
Asm line 2435, src line 647 not covered
Asm line 2436, src line 648 not covered
Asm line 2437, src line 0 not covered
Asm line 2438, src line 649 not covered
Asm line 2439, src line 650 not covered
Asm line 2442, src line 0 not covered
Asm line 2443, src line 651 not covered
Asm line 2444, src line 651 not covered
Asm line 2447, src line 652 not covered
Asm line 2448, src line 652 not covered
Asm line 2449, src line 652 not covered
Asm line 2450, src line 0 not covered
Asm line 2451, src line 653 not covered
Asm line 2452, src line 653 not covered
Asm line 2453, src line 654 not covered
Asm line 2454, src line 654 not covered
Asm line 2455, src line 655 not covered
Asm line 2456, src line 655 not covered
Asm line 2457, src line 656 not covered
Asm line 2458, src line 656 not covered
Asm line 2459, src line 657 not covered
Asm line 2460, src line 657 not covered
Asm line 2461, src line 658 not covered
Asm line 2462, src line 658 not covered
Asm line 2463, src line 658 not covered
Asm line 2464, src line 659 not covered
Asm line 2465, src line 0 not covered
Asm line 2466, src line 660 not covered
Asm line 2469, src line 544 not covered
Asm line 2470, src line 544 not covered
Asm line 2471, src line 0 not covered
Asm line 2472, src line 0 not covered
Asm line 2473, src line 0 not covered
Asm line 2474, src line 0 not covered
Asm line 2475, src line 661 not covered
Asm line 2476, src line 661 not covered
Asm line 2477, src line 661 not covered
Asm line 2480, src line 663 not covered
Asm line 2481, src line 664 not covered
Asm line 2484, src line 548 not covered
Asm line 2485, src line 546 not covered
Asm line 2486, src line 539 not covered
Asm line 2487, src line 0 not covered
Asm line 2488, src line 0 not covered
Asm line 2489, src line 0 not covered
Asm line 2490, src line 667 not covered
Asm line 2491, src line 0 not covered
Asm line 2492, src line 668 not covered
Asm line 2493, src line 0 not covered
Asm line 2494, src line 575 not covered
Asm line 2495, src line 0 not covered
Asm line 2496, src line 616 not covered
Asm line 2497, src line 616 not covered
Asm line 2500, src line 548 not covered
Asm line 2501, src line 546 not covered
Asm line 2502, src line 539 not covered
Asm line 2503, src line 544 not covered
Asm line 2504, src line 0 not covered
Asm line 2505, src line 0 not covered
Asm line 2506, src line 0 not covered
Asm line 2507, src line 0 not covered
Asm line 2508, src line 574 not covered
Asm line 2509, src line 0 not covered
Asm line 2510, src line 574 not covered
Asm line 2511, src line 0 not covered
Asm line 2512, src line 0 not covered
Asm line 2513, src line 0 not covered
Asm line 2514, src line 574 not covered
Asm line 2515, src line 574 not covered
Asm line 2518, src line 544 not covered
Asm line 2519, src line 548 not covered
Asm line 2520, src line 539 not covered
Asm line 2521, src line 673 not covered
Asm line 2522, src line 0 not covered
Asm line 2523, src line 674 not covered
Asm line 2524, src line 674 not covered
Asm line 2527, src line 0 not covered
Asm line 2528, src line 689 not covered
Asm line 2529, src line 689 not covered
Asm line 2530, src line 689 not covered
Asm line 2531, src line 689 not covered
Asm line 2534, src line 0 not covered
Asm line 2535, src line 680 not covered
Asm line 2536, src line 0 not covered
Asm line 2537, src line 682 not covered
Asm line 2538, src line 0 not covered
Asm line 2539, src line 674 not covered
Asm line 2542, src line 444 not covered
Asm line 2543, src line 444 not covered
Asm line 2544, src line 0 not covered
Asm line 2545, src line 0 not covered
Asm line 2546, src line 692 not covered
Asm line 2547, src line 692 not covered
Asm line 2548, src line 689 not covered
Asm line 2549, src line 689 not covered
Asm line 2550, src line 689 not covered
Asm line 2551, src line 444 not covered
Asm line 2552, src line 689 not covered
Asm line 2555, src line 544 not covered
Asm line 2556, src line 694 not covered
Asm line 2557, src line 694 not covered
Asm line 2558, src line 697 not covered
Asm line 2559, src line 697 not covered
Asm line 2560, src line 697 not covered
Asm line 2561, src line 0 not covered
Asm line 2562, src line 709 not covered
Asm line 2563, src line 715 not covered
Asm line 2564, src line 716 not covered
Asm line 2565, src line 716 not covered
Asm line 2568, src line 718 not covered
Asm line 2569, src line 0 not covered
Asm line 2570, src line 719 not covered
Asm line 2571, src line 0 not covered
Asm line 2572, src line 720 not covered
Asm line 2575, src line 444 not covered
Asm line 2576, src line 0 not covered
Asm line 2577, src line 724 not covered
Asm line 2578, src line 724 not covered
Asm line 2579, src line 724 not covered
Asm line 2580, src line 724 not covered
Asm line 2583, src line 725 not covered
Asm line 2584, src line 726 not covered
Asm line 2585, src line 726 not covered
Asm line 2586, src line 730 not covered
Asm line 2587, src line 730 not covered
Asm line 2588, src line 730 not covered
Asm line 2589, src line 730 not covered
Asm line 2590, src line 730 not covered
Asm line 2591, src line 730 not covered
Asm line 2592, src line 730 not covered
Asm line 2593, src line 730 not covered
Asm line 2594, src line 731 not covered
Asm line 2597, src line 722 not covered
Asm line 2598, src line 0 not covered
Asm line 2599, src line 722 not covered
Asm line 2600, src line 722 not covered
Asm line 2603, src line 444 not covered
Asm line 2604, src line 0 not covered
Asm line 2605, src line 738 not covered
Asm line 2606, src line 738 not covered
Asm line 2607, src line 738 not covered
Asm line 2608, src line 738 not covered
Asm line 2611, src line 739 not covered
Asm line 2612, src line 740 not covered
Asm line 2613, src line 740 not covered
Asm line 2614, src line 741 not covered
Asm line 2615, src line 741 not covered
Asm line 2616, src line 741 not covered
Asm line 2617, src line 741 not covered
Asm line 2618, src line 741 not covered
Asm line 2619, src line 741 not covered
Asm line 2620, src line 742 not covered
Asm line 2621, src line 743 not covered
Asm line 2622, src line 743 not covered
Asm line 2623, src line 743 not covered
Asm line 2624, src line 743 not covered
Asm line 2625, src line 743 not covered
Asm line 2626, src line 743 not covered
Asm line 2627, src line 744 not covered
Asm line 2628, src line 748 not covered
Asm line 2629, src line 748 not covered
Asm line 2630, src line 748 not covered
Asm line 2631, src line 748 not covered
Asm line 2632, src line 748 not covered
Asm line 2633, src line 748 not covered
Asm line 2634, src line 748 not covered
Asm line 2635, src line 748 not covered
Asm line 2636, src line 749 not covered
Asm line 2639, src line 736 not covered
Asm line 2640, src line 0 not covered
Asm line 2641, src line 736 not covered
Asm line 2642, src line 736 not covered
Asm line 2645, src line 755 not covered
Asm line 2646, src line 0 not covered
Asm line 2647, src line 755 not covered
Asm line 2648, src line 755 not covered
Asm line 2649, src line 755 not covered
Asm line 2650, src line 755 not covered
Asm line 2651, src line 0 not covered
Asm line 2652, src line 756 not covered
Asm line 2653, src line 756 not covered
Asm line 2654, src line 756 not covered
Asm line 2655, src line 757 not covered
Asm line 2656, src line 757 not covered
Asm line 2657, src line 757 not covered
Asm line 2658, src line 758 not covered
Asm line 2659, src line 0 not covered
Asm line 2660, src line 758 not covered
Asm line 2661, src line 758 not covered
Asm line 2662, src line 759 not covered
Asm line 2663, src line 759 not covered
Asm line 2664, src line 759 not covered
Asm line 2665, src line 775 not covered
Asm line 2666, src line 776 not covered
Asm line 2667, src line 777 not covered
Asm line 2668, src line 778 not covered
Asm line 2669, src line 0 not covered
Asm line 2670, src line 780 not covered
90 / 502 (17.928286852589643%) asm lines covered

## Coverage for `med3`

22 / 22 (100%) asm lines covered

## Coverage for `getfree`

32 / 32 (100%) asm lines covered

## Coverage for `global_opt`

Warnings present, coverage may be invalid!
47 / 47 (100%) asm lines covered

## Coverage for `update_tree`

Warnings present, coverage may be invalid!
Asm line 3241, src line 30 not covered
Asm line 3242, src line 0 not covered
Asm line 3243, src line 92 not covered
Asm line 3244, src line 92 not covered
Asm line 3245, src line 0 not covered
Asm line 3246, src line 93 not covered
Asm line 3247, src line 93 not covered
Asm line 3250, src line 95 not covered
Asm line 3251, src line 95 not covered
Asm line 3252, src line 0 not covered
Asm line 3253, src line 89 not covered
Asm line 3254, src line 90 not covered
Asm line 3255, src line 90 not covered
Asm line 3287, src line 0 not covered
Asm line 3288, src line 0 not covered
Asm line 3289, src line 0 not covered
Asm line 3290, src line 0 not covered
Asm line 3291, src line 0 not covered
Asm line 3292, src line 0 not covered
Asm line 3293, src line 109 not covered
Asm line 3294, src line 109 not covered
Asm line 3295, src line 109 not covered
Asm line 3296, src line 109 not covered
Asm line 3299, src line 110 not covered
Asm line 3300, src line 110 not covered
Asm line 3301, src line 110 not covered
Asm line 3302, src line 110 not covered
Asm line 3303, src line 110 not covered
Asm line 3306, src line 111 not covered
Asm line 3307, src line 111 not covered
Asm line 3308, src line 111 not covered
Asm line 3309, src line 111 not covered
Asm line 3310, src line 111 not covered
Asm line 3311, src line 111 not covered
Asm line 3312, src line 111 not covered
Asm line 3313, src line 116 not covered
Asm line 3314, src line 117 not covered
Asm line 3315, src line 117 not covered
Asm line 3316, src line 117 not covered
Asm line 3317, src line 118 not covered
Asm line 3318, src line 118 not covered
Asm line 3321, src line 119 not covered
Asm line 3322, src line 119 not covered
Asm line 3323, src line 119 not covered
Asm line 3326, src line 120 not covered
Asm line 3327, src line 121 not covered
Asm line 3328, src line 123 not covered
Asm line 3329, src line 123 not covered
Asm line 3330, src line 123 not covered
Asm line 3331, src line 123 not covered
Asm line 3332, src line 0 not covered
Asm line 3333, src line 124 not covered
Asm line 3334, src line 124 not covered
Asm line 3335, src line 124 not covered
Asm line 3336, src line 124 not covered
Asm line 3337, src line 124 not covered
Asm line 3338, src line 0 not covered
Asm line 3339, src line 128 not covered
Asm line 3340, src line 128 not covered
Asm line 3341, src line 0 not covered
Asm line 3342, src line 129 not covered
Asm line 3343, src line 129 not covered
Asm line 3344, src line 0 not covered
Asm line 3345, src line 131 not covered
Asm line 3346, src line 131 not covered
Asm line 3347, src line 132 not covered
Asm line 3348, src line 132 not covered
Asm line 3349, src line 133 not covered
Asm line 3350, src line 134 not covered
Asm line 3351, src line 0 not covered
Asm line 3352, src line 0 not covered
Asm line 3353, src line 0 not covered
Asm line 3354, src line 0 not covered
Asm line 3355, src line 140 not covered
Asm line 3356, src line 0 not covered
Asm line 3357, src line 0 not covered
Asm line 3358, src line 0 not covered
Asm line 3359, src line 0 not covered
Asm line 3360, src line 107 not covered
Asm line 3361, src line 107 not covered
Asm line 3381, src line 0 not covered
Asm line 3382, src line 155 not covered
Asm line 3383, src line 155 not covered
Asm line 3386, src line 30 not covered
Asm line 3387, src line 155 not covered
Asm line 3391, src line 0 not covered
Asm line 3392, src line 149 not covered
Asm line 3393, src line 149 not covered
Asm line 3394, src line 149 not covered
Asm line 3395, src line 149 not covered
Asm line 3396, src line 150 not covered
Asm line 3397, src line 150 not covered
Asm line 3398, src line 150 not covered
Asm line 3399, src line 150 not covered
Asm line 3400, src line 150 not covered
Asm line 3401, src line 150 not covered
Asm line 3402, src line 150 not covered
Asm line 3403, src line 150 not covered
Asm line 3404, src line 150 not covered
Asm line 3405, src line 147 not covered
Asm line 3406, src line 147 not covered
Asm line 3407, src line 0 not covered
Asm line 3408, src line 147 not covered
Asm line 3409, src line 147 not covered
Asm line 3412, src line 30 not covered
Asm line 3413, src line 0 not covered
Asm line 3414, src line 157 not covered
Asm line 3415, src line 157 not covered
Asm line 3416, src line 157 not covered
Asm line 3417, src line 157 not covered
Asm line 3418, src line 158 not covered
Asm line 3419, src line 158 not covered
Asm line 3420, src line 158 not covered
Asm line 3421, src line 158 not covered
Asm line 3422, src line 158 not covered
Asm line 3423, src line 158 not covered
Asm line 3424, src line 158 not covered
Asm line 3425, src line 158 not covered
Asm line 3426, src line 158 not covered
Asm line 3427, src line 155 not covered
Asm line 3428, src line 155 not covered
Asm line 3429, src line 0 not covered
Asm line 3430, src line 155 not covered
Asm line 3431, src line 155 not covered
Asm line 3435, src line 168 not covered
Asm line 3436, src line 168 not covered
Asm line 3439, src line 30 not covered
Asm line 3440, src line 0 not covered
Asm line 3441, src line 167 not covered
Asm line 3442, src line 167 not covered
Asm line 3443, src line 167 not covered
Asm line 3444, src line 167 not covered
Asm line 3445, src line 166 not covered
Asm line 3446, src line 166 not covered
Asm line 3447, src line 0 not covered
Asm line 3448, src line 166 not covered
Asm line 3449, src line 166 not covered
Asm line 3452, src line 30 not covered
Asm line 3453, src line 0 not covered
Asm line 3454, src line 169 not covered
Asm line 3455, src line 169 not covered
Asm line 3456, src line 169 not covered
Asm line 3457, src line 169 not covered
Asm line 3458, src line 168 not covered
Asm line 3459, src line 168 not covered
Asm line 3460, src line 0 not covered
Asm line 3461, src line 168 not covered
Asm line 3462, src line 168 not covered
Asm line 3465, src line 172 not covered
87 / 236 (36.86440677966102%) asm lines covered

## Coverage for `marc_arcs`

Asm line 1496, src line 153 not covered
Asm line 1497, src line 0 not covered
Asm line 1498, src line 0 not covered
Asm line 1499, src line 0 not covered
Asm line 1500, src line 154 not covered
Asm line 1501, src line 154 not covered
Asm line 1502, src line 154 not covered
Asm line 1503, src line 154 not covered
Asm line 1506, src line 153 not covered
Asm line 1507, src line 0 not covered
Asm line 1508, src line 111 not covered
Asm line 1509, src line 111 not covered
Asm line 1510, src line 154 not covered
Asm line 1513, src line 0 not covered
Asm line 1514, src line 0 not covered
Asm line 1515, src line 111 not covered
Asm line 1516, src line 111 not covered
Asm line 1517, src line 0 not covered
Asm line 1518, src line 0 not covered
Asm line 1519, src line 156 not covered
Asm line 1520, src line 0 not covered
Asm line 1521, src line 0 not covered
Asm line 1522, src line 0 not covered
Asm line 1523, src line 170 not covered
Asm line 1524, src line 0 not covered
Asm line 1525, src line 170 not covered
Asm line 1526, src line 170 not covered
Asm line 1527, src line 170 not covered
Asm line 1528, src line 171 not covered
Asm line 1529, src line 171 not covered
Asm line 1530, src line 172 not covered
Asm line 1531, src line 0 not covered
Asm line 1532, src line 173 not covered
Asm line 1533, src line 174 not covered
Asm line 1534, src line 154 not covered
Asm line 1535, src line 154 not covered
Asm line 1536, src line 154 not covered
Asm line 1537, src line 154 not covered
Asm line 1538, src line 154 not covered
Asm line 1541, src line 154 not covered
Asm line 1542, src line 154 not covered
Asm line 1543, src line 154 not covered
Asm line 1546, src line 0 not covered
Asm line 1547, src line 0 not covered
Asm line 1548, src line 185 not covered
Asm line 1549, src line 0 not covered
Asm line 1550, src line 0 not covered
Asm line 1551, src line 0 not covered
Asm line 1552, src line 187 not covered
Asm line 1553, src line 187 not covered
Asm line 1554, src line 188 not covered
Asm line 1555, src line 188 not covered
Asm line 1556, src line 188 not covered
Asm line 1557, src line 188 not covered
Asm line 1558, src line 188 not covered
Asm line 1559, src line 188 not covered
Asm line 1560, src line 188 not covered
Asm line 1561, src line 188 not covered
Asm line 1562, src line 189 not covered
Asm line 1563, src line 189 not covered
Asm line 1564, src line 189 not covered
Asm line 1565, src line 189 not covered
Asm line 1566, src line 189 not covered
Asm line 1567, src line 189 not covered
Asm line 1568, src line 189 not covered
Asm line 1569, src line 189 not covered
Asm line 1570, src line 189 not covered
Asm line 1571, src line 111 not covered
Asm line 1572, src line 193 not covered
Asm line 1573, src line 193 not covered
Asm line 1576, src line 111 not covered
Asm line 1577, src line 193 not covered
Asm line 1580, src line 194 not covered
Asm line 1581, src line 111 not covered
Asm line 1582, src line 194 not covered
Asm line 1583, src line 195 not covered
Asm line 1584, src line 193 not covered
Asm line 1585, src line 193 not covered
Asm line 1588, src line 0 not covered
Asm line 1589, src line 195 not covered
Asm line 1590, src line 193 not covered
Asm line 1593, src line 198 not covered
Asm line 1594, src line 199 not covered
Asm line 1595, src line 201 not covered
31 / 115 (26.956521739130434%) asm lines covered

## Coverage for `flow_cost`

Warnings present, coverage may be invalid!
Asm line 341, src line 0 not covered
Asm line 342, src line 79 not covered
Asm line 343, src line 79 not covered
Asm line 368, src line 93 not covered
Asm line 369, src line 93 not covered
Asm line 370, src line 93 not covered
Asm line 371, src line 93 not covered
Asm line 372, src line 93 not covered
Asm line 373, src line 92 not covered
Asm line 374, src line 0 not covered
Asm line 375, src line 92 not covered
Asm line 376, src line 92 not covered
Asm line 379, src line 61 not covered
Asm line 380, src line 61 not covered
Asm line 381, src line 61 not covered
Asm line 382, src line 0 not covered
Asm line 383, src line 0 not covered
Asm line 384, src line 0 not covered
Asm line 385, src line 102 not covered
Asm line 386, src line 102 not covered
Asm line 387, src line 102 not covered
Asm line 388, src line 102 not covered
Asm line 391, src line 104 not covered
Asm line 392, src line 104 not covered
Asm line 393, src line 104 not covered
Asm line 394, src line 104 not covered
Asm line 395, src line 104 not covered
Asm line 396, src line 104 not covered
Asm line 399, src line 104 not covered
Asm line 400, src line 104 not covered
Asm line 401, src line 104 not covered
Asm line 402, src line 104 not covered
Asm line 403, src line 104 not covered
Asm line 404, src line 104 not covered
Asm line 407, src line 106 not covered
Asm line 408, src line 106 not covered
Asm line 409, src line 106 not covered
Asm line 410, src line 106 not covered
Asm line 413, src line 108 not covered
Asm line 414, src line 108 not covered
Asm line 415, src line 108 not covered
Asm line 416, src line 0 not covered
Asm line 417, src line 109 not covered
Asm line 418, src line 0 not covered
Asm line 419, src line 110 not covered
Asm line 422, src line 112 not covered
Asm line 423, src line 0 not covered
Asm line 424, src line 61 not covered
Asm line 427, src line 0 not covered
Asm line 428, src line 0 not covered
Asm line 429, src line 0 not covered
Asm line 430, src line 0 not covered
Asm line 431, src line 100 not covered
Asm line 432, src line 0 not covered
Asm line 433, src line 100 not covered
Asm line 434, src line 100 not covered
49 / 105 (46.666666666666664%) asm lines covered

## Coverage for `dual_feasible`

Asm line 753, src line 308 not covered
Asm line 754, src line 308 not covered
Asm line 755, src line 308 not covered
Asm line 756, src line 309 not covered
Asm line 757, src line 309 not covered
Asm line 758, src line 309 not covered
Asm line 759, src line 309 not covered
Asm line 760, src line 309 not covered
Asm line 761, src line 0 not covered
Asm line 762, src line 310 not covered
Asm line 763, src line 310 not covered
Asm line 764, src line 310 not covered
Asm line 765, src line 310 not covered
Asm line 772, src line 326 not covered
Asm line 773, src line 326 not covered
Asm line 774, src line 326 not covered
Asm line 775, src line 326 not covered
Asm line 778, src line 336 not covered
Asm line 779, src line 336 not covered
Asm line 780, src line 336 not covered
Asm line 783, src line 306 not covered
Asm line 784, src line 0 not covered
Asm line 785, src line 0 not covered
Asm line 786, src line 306 not covered
Asm line 787, src line 306 not covered
Asm line 790, src line 353 not covered
Asm line 791, src line 354 not covered
Asm line 792, src line 354 not covered
Asm line 793, src line 355 not covered
Asm line 794, src line 355 not covered
Asm line 795, src line 356 not covered
23 / 54 (42.592592592592595%) asm lines covered

## Coverage for `getArcPosition`

Warnings present, coverage may be invalid!
30 / 30 (100%) asm lines covered

## Coverage for `switch_arcs`

Warnings present, coverage may be invalid!
Asm line 1984, src line 401 not covered
Asm line 1985, src line 0 not covered
Asm line 1986, src line 0 not covered
Asm line 1987, src line 425 not covered
Asm line 1988, src line 425 not covered
Asm line 1989, src line 0 not covered
Asm line 1990, src line 428 not covered
Asm line 1991, src line 428 not covered
Asm line 1992, src line 428 not covered
Asm line 1993, src line 428 not covered
Asm line 1996, src line 428 not covered
Asm line 1997, src line 428 not covered
Asm line 1998, src line 428 not covered
Asm line 1999, src line 428 not covered
Asm line 2000, src line 428 not covered
Asm line 2003, src line 428 not covered
Asm line 2004, src line 428 not covered
Asm line 2007, src line 429 not covered
Asm line 2008, src line 429 not covered
Asm line 2009, src line 429 not covered
Asm line 2010, src line 429 not covered
Asm line 2011, src line 428 not covered
Asm line 2014, src line 431 not covered
Asm line 2015, src line 431 not covered
Asm line 2016, src line 431 not covered
Asm line 2017, src line 0 not covered
Asm line 2018, src line 0 not covered
Asm line 2019, src line 431 not covered
Asm line 2020, src line 431 not covered
Asm line 2021, src line 0 not covered
Asm line 2022, src line 431 not covered
Asm line 2023, src line 431 not covered
Asm line 2024, src line 0 not covered
Asm line 2025, src line 431 not covered
Asm line 2026, src line 431 not covered
Asm line 2027, src line 0 not covered
Asm line 2028, src line 0 not covered
Asm line 2029, src line 0 not covered
Asm line 2030, src line 432 not covered
Asm line 2031, src line 0 not covered
Asm line 2032, src line 433 not covered
Asm line 2033, src line 434 not covered
Asm line 2034, src line 434 not covered
Asm line 2035, src line 435 not covered
Asm line 2038, src line 0 not covered
Asm line 2039, src line 0 not covered
Asm line 2040, src line 423 not covered
Asm line 2041, src line 0 not covered
Asm line 2042, src line 423 not covered
Asm line 2043, src line 423 not covered
52 / 102 (50.98039215686274%) asm lines covered

## Coverage for `start`

1 / 1 (100%) asm lines covered

## Coverage for `write_circulations`

Warnings present, coverage may be invalid!
Asm line 3059, src line 0 not covered
Asm line 3060, src line 52 not covered
Asm line 3061, src line 52 not covered
Asm line 3064, src line 31 not covered
Asm line 3065, src line 54 not covered
Asm line 3066, src line 54 not covered
Asm line 3067, src line 54 not covered
Asm line 3068, src line 54 not covered
Asm line 3071, src line 56 not covered
Asm line 3072, src line 0 not covered
Asm line 3073, src line 0 not covered
Asm line 3074, src line 59 not covered
Asm line 3077, src line 31 not covered
Asm line 3078, src line 0 not covered
Asm line 3079, src line 61 not covered
Asm line 3080, src line 61 not covered
Asm line 3083, src line 62 not covered
Asm line 3084, src line 62 not covered
Asm line 3087, src line 64 not covered
Asm line 3088, src line 64 not covered
Asm line 3089, src line 64 not covered
Asm line 3090, src line 64 not covered
Asm line 3091, src line 64 not covered
Asm line 3092, src line 64 not covered
Asm line 3093, src line 65 not covered
Asm line 3094, src line 65 not covered
Asm line 3095, src line 65 not covered
Asm line 3096, src line 0 not covered
Asm line 3097, src line 60 not covered
Asm line 3098, src line 0 not covered
Asm line 3099, src line 66 not covered
Asm line 3100, src line 66 not covered
Asm line 3103, src line 31 not covered
Asm line 3104, src line 67 not covered
Asm line 3105, src line 67 not covered
Asm line 3106, src line 67 not covered
Asm line 3107, src line 67 not covered
Asm line 3110, src line 66 not covered
Asm line 3111, src line 0 not covered
Asm line 3112, src line 60 not covered
Asm line 3113, src line 0 not covered
Asm line 3114, src line 66 not covered
Asm line 3115, src line 66 not covered
Asm line 3118, src line 75 not covered
Asm line 3119, src line 75 not covered
Asm line 3120, src line 75 not covered
Asm line 3121, src line 75 not covered
Asm line 3122, src line 75 not covered
Asm line 3123, src line 31 not covered
Asm line 3124, src line 0 not covered
Asm line 3125, src line 59 not covered
Asm line 3126, src line 59 not covered
Asm line 3129, src line 52 not covered
Asm line 3130, src line 0 not covered
Asm line 3131, src line 52 not covered
Asm line 3132, src line 0 not covered
Asm line 3133, src line 52 not covered
Asm line 3134, src line 52 not covered
Asm line 3137, src line 31 not covered
Asm line 3138, src line 0 not covered
Asm line 3139, src line 87 not covered
25 / 86 (29.069767441860467%) asm lines covered

## Coverage for `suspend_impl`

Asm line 2780, src line 819 not covered
Asm line 2781, src line 819 not covered
Asm line 2787, src line 820 not covered
Asm line 2788, src line 820 not covered
Asm line 2789, src line 820 not covered
Asm line 2790, src line 820 not covered
Asm line 2791, src line 820 not covered
Asm line 2792, src line 820 not covered
Asm line 2793, src line 820 not covered
Asm line 2794, src line 821 not covered
Asm line 2795, src line 821 not covered
Asm line 2796, src line 821 not covered
Asm line 2797, src line 821 not covered
Asm line 2798, src line 821 not covered
Asm line 2799, src line 0 not covered
Asm line 2800, src line 820 not covered
Asm line 2803, src line 828 not covered
Asm line 2804, src line 828 not covered
Asm line 2805, src line 828 not covered
Asm line 2806, src line 828 not covered
Asm line 2807, src line 828 not covered
Asm line 2808, src line 828 not covered
Asm line 2811, src line 829 not covered
Asm line 2812, src line 829 not covered
Asm line 2813, src line 829 not covered
Asm line 2814, src line 829 not covered
Asm line 2815, src line 829 not covered
Asm line 2818, src line 819 not covered
Asm line 2819, src line 0 not covered
Asm line 2820, src line 833 not covered
Asm line 2821, src line 833 not covered
Asm line 2824, src line 834 not covered
Asm line 2825, src line 0 not covered
Asm line 2826, src line 835 not covered
Asm line 2827, src line 835 not covered
Asm line 2828, src line 836 not covered
Asm line 2831, src line 839 not covered
Asm line 2832, src line 839 not covered
Asm line 2833, src line 839 not covered
Asm line 2834, src line 840 not covered
Asm line 2835, src line 0 not covered
Asm line 2836, src line 787 not covered
Asm line 2839, src line 816 not covered
Asm line 2840, src line 813 not covered
Asm line 2841, src line 0 not covered
Asm line 2842, src line 0 not covered
Asm line 2843, src line 816 not covered
Asm line 2844, src line 0 not covered
Asm line 2845, src line 816 not covered
Asm line 2846, src line 816 not covered
Asm line 2847, src line 816 not covered
Asm line 2873, src line 858 not covered
Asm line 2874, src line 858 not covered
Asm line 2875, src line 858 not covered
Asm line 2876, src line 858 not covered
Asm line 2877, src line 858 not covered
Asm line 2878, src line 862 not covered
Asm line 2879, src line 862 not covered
Asm line 2882, src line 787 not covered
Asm line 2883, src line 862 not covered
Asm line 2886, src line 863 not covered
Asm line 2887, src line 787 not covered
Asm line 2888, src line 863 not covered
Asm line 2889, src line 864 not covered
Asm line 2890, src line 862 not covered
Asm line 2891, src line 862 not covered
Asm line 2894, src line 852 not covered
Asm line 2895, src line 864 not covered
Asm line 2896, src line 862 not covered
Asm line 2899, src line 866 not covered
Asm line 2900, src line 867 not covered
Asm line 2901, src line 867 not covered
Asm line 2902, src line 867 not covered
Asm line 2903, src line 868 not covered
Asm line 2904, src line 868 not covered
Asm line 2905, src line 868 not covered
Asm line 2906, src line 868 not covered
Asm line 2907, src line 868 not covered
Asm line 2908, src line 869 not covered
Asm line 2909, src line 870 not covered
78 / 158 (49.36708860759494%) asm lines covered

## Coverage for `cost_compare`

Asm line 4206, src line 68 not covered
Asm line 4207, src line 68 not covered
Asm line 4208, src line 68 not covered
Asm line 4209, src line 68 not covered
Asm line 4212, src line 70 not covered
Asm line 4213, src line 70 not covered
Asm line 4216, src line 72 not covered
Asm line 4217, src line 72 not covered
Asm line 4218, src line 72 not covered
Asm line 4219, src line 72 not covered
Asm line 4220, src line 72 not covered
Asm line 4221, src line 72 not covered
Asm line 4222, src line 72 not covered
Asm line 4223, src line 72 not covered
Asm line 4224, src line 72 not covered
Asm line 4225, src line 72 not covered
Asm line 4226, src line 72 not covered
Asm line 4229, src line 0 not covered
Asm line 4230, src line 76 not covered
6 / 25 (24%) asm lines covered

## Coverage for `write_objective_value`

13 / 13 (100%) asm lines covered

## Coverage for `refreshPositions`

42 / 42 (100%) asm lines covered

## Coverage for `resize_prob`

Asm line 1661, src line 244 not covered
Asm line 1662, src line 244 not covered
Asm line 1665, src line 244 not covered
Asm line 1666, src line 244 not covered
Asm line 1667, src line 244 not covered
Asm line 1668, src line 244 not covered
Asm line 1671, src line 245 not covered
Asm line 1672, src line 245 not covered
Asm line 1673, src line 245 not covered
Asm line 1674, src line 0 not covered
Asm line 1675, src line 246 not covered
Asm line 1676, src line 246 not covered
Asm line 1677, src line 246 not covered
Asm line 1678, src line 247 not covered
Asm line 1681, src line 0 not covered
Asm line 1682, src line 243 not covered
Asm line 1683, src line 0 not covered
Asm line 1684, src line 243 not covered
Asm line 1685, src line 203 not covered
Asm line 1686, src line 243 not covered
62 / 82 (75.60975609756098%) asm lines covered

## Coverage for `primal_net_simplex`

27 / 27 (100%) asm lines covered

## Coverage for `master`

Asm line 3892, src line 0 not covered
Asm line 3893, src line 0 not covered
Asm line 3894, src line 124 not covered
Asm line 3895, src line 124 not covered
Asm line 3896, src line 124 not covered
Asm line 3897, src line 124 not covered
Asm line 3898, src line 0 not covered
Asm line 3899, src line 0 not covered
Asm line 3900, src line 163 not covered
Asm line 3901, src line 163 not covered
Asm line 3904, src line 124 not covered
Asm line 3905, src line 163 not covered
Asm line 3906, src line 163 not covered
Asm line 3907, src line 163 not covered
Asm line 3910, src line 124 not covered
Asm line 3911, src line 124 not covered
Asm line 3912, src line 124 not covered
Asm line 3913, src line 124 not covered
Asm line 3914, src line 124 not covered
Asm line 3915, src line 124 not covered
Asm line 3916, src line 124 not covered
Asm line 3917, src line 0 not covered
Asm line 3918, src line 169 not covered
Asm line 3919, src line 169 not covered
Asm line 3922, src line 124 not covered
Asm line 3923, src line 0 not covered
Asm line 3924, src line 0 not covered
Asm line 3925, src line 164 not covered
Asm line 3926, src line 164 not covered
Asm line 3927, src line 164 not covered
Asm line 3928, src line 163 not covered
Asm line 3929, src line 0 not covered
Asm line 3930, src line 0 not covered
Asm line 3931, src line 163 not covered
Asm line 3932, src line 163 not covered
Asm line 3935, src line 124 not covered
Asm line 3936, src line 0 not covered
Asm line 3937, src line 176 not covered
Asm line 3938, src line 176 not covered
Asm line 3939, src line 176 not covered
Asm line 3940, src line 176 not covered
Asm line 3941, src line 176 not covered
Asm line 3942, src line 0 not covered
Asm line 3943, src line 176 not covered
Asm line 3944, src line 176 not covered
Asm line 3945, src line 176 not covered
Asm line 3946, src line 182 not covered
Asm line 3947, src line 182 not covered
Asm line 3948, src line 0 not covered
Asm line 3949, src line 187 not covered
Asm line 3950, src line 0 not covered
Asm line 3951, src line 188 not covered
Asm line 3954, src line 124 not covered
Asm line 3955, src line 0 not covered
Asm line 3956, src line 189 not covered
Asm line 3957, src line 0 not covered
Asm line 3958, src line 189 not covered
Asm line 3959, src line 189 not covered
Asm line 3962, src line 189 not covered
Asm line 3963, src line 189 not covered
Asm line 3964, src line 189 not covered
Asm line 3965, src line 189 not covered
Asm line 3966, src line 189 not covered
Asm line 3969, src line 189 not covered
Asm line 3970, src line 189 not covered
Asm line 3971, src line 189 not covered
Asm line 3972, src line 189 not covered
Asm line 3973, src line 189 not covered
Asm line 3976, src line 0 not covered
Asm line 3977, src line 189 not covered
Asm line 3978, src line 189 not covered
Asm line 3979, src line 189 not covered
Asm line 3982, src line 190 not covered
Asm line 3983, src line 190 not covered
Asm line 3984, src line 190 not covered
Asm line 3985, src line 0 not covered
Asm line 3986, src line 190 not covered
Asm line 3987, src line 191 not covered
Asm line 3990, src line 188 not covered
Asm line 3991, src line 0 not covered
Asm line 3992, src line 188 not covered
Asm line 3993, src line 188 not covered
Asm line 3996, src line 193 not covered
Asm line 3997, src line 0 not covered
Asm line 3998, src line 193 not covered
Asm line 3999, src line 193 not covered
Asm line 4002, src line 198 not covered
Asm line 4003, src line 198 not covered
Asm line 4004, src line 0 not covered
Asm line 4005, src line 199 not covered
Asm line 4006, src line 199 not covered
Asm line 4007, src line 0 not covered
Asm line 4008, src line 201 not covered
Asm line 4011, src line 202 not covered
Asm line 4012, src line 202 not covered
Asm line 4015, src line 124 not covered
Asm line 4016, src line 193 not covered
Asm line 4017, src line 0 not covered
Asm line 4018, src line 0 not covered
Asm line 4019, src line 206 not covered
Asm line 4020, src line 206 not covered
Asm line 4023, src line 208 not covered
Asm line 4024, src line 208 not covered
Asm line 4025, src line 208 not covered
Asm line 4026, src line 216 not covered
Asm line 4027, src line 216 not covered
Asm line 4028, src line 216 not covered
Asm line 4029, src line 216 not covered
Asm line 4030, src line 216 not covered
Asm line 4031, src line 216 not covered
Asm line 4032, src line 216 not covered
Asm line 4033, src line 0 not covered
Asm line 4034, src line 0 not covered
Asm line 4035, src line 0 not covered
Asm line 4036, src line 227 not covered
Asm line 4037, src line 0 not covered
Asm line 4038, src line 0 not covered
Asm line 4039, src line 0 not covered
Asm line 4040, src line 228 not covered
Asm line 4041, src line 0 not covered
Asm line 4042, src line 231 not covered
Asm line 4043, src line 231 not covered
Asm line 4046, src line 233 not covered
Asm line 4047, src line 233 not covered
Asm line 4048, src line 233 not covered
Asm line 4049, src line 235 not covered
Asm line 4050, src line 235 not covered
Asm line 4051, src line 235 not covered
Asm line 4052, src line 124 not covered
Asm line 4053, src line 235 not covered
Asm line 4054, src line 240 not covered
Asm line 4055, src line 0 not covered
Asm line 4056, src line 240 not covered
Asm line 4057, src line 240 not covered
Asm line 4060, src line 241 not covered
Asm line 4061, src line 0 not covered
Asm line 4062, src line 241 not covered
Asm line 4063, src line 241 not covered
Asm line 4066, src line 245 not covered
Asm line 4067, src line 0 not covered
Asm line 4068, src line 245 not covered
Asm line 4069, src line 245 not covered
Asm line 4070, src line 245 not covered
Asm line 4071, src line 0 not covered
Asm line 4072, src line 0 not covered
Asm line 4073, src line 252 not covered
Asm line 4074, src line 252 not covered
Asm line 4075, src line 0 not covered
Asm line 4076, src line 254 not covered
Asm line 4077, src line 254 not covered
Asm line 4078, src line 0 not covered
Asm line 4079, src line 0 not covered
Asm line 4080, src line 256 not covered
Asm line 4081, src line 256 not covered
Asm line 4082, src line 256 not covered
Asm line 4083, src line 256 not covered
Asm line 4084, src line 256 not covered
Asm line 4085, src line 0 not covered
Asm line 4086, src line 261 not covered
Asm line 4087, src line 261 not covered
Asm line 4088, src line 261 not covered
Asm line 4089, src line 0 not covered
Asm line 4090, src line 266 not covered
Asm line 4091, src line 266 not covered
Asm line 4092, src line 124 not covered
Asm line 4093, src line 0 not covered
Asm line 4094, src line 0 not covered
Asm line 4095, src line 271 not covered
Asm line 4096, src line 0 not covered
Asm line 4097, src line 273 not covered
Asm line 4098, src line 0 not covered
Asm line 4099, src line 274 not covered
Asm line 4100, src line 271 not covered
Asm line 4101, src line 276 not covered
Asm line 4102, src line 276 not covered
Asm line 4103, src line 277 not covered
Asm line 4104, src line 277 not covered
Asm line 4105, src line 124 not covered
Asm line 4108, src line 281 not covered
Asm line 4109, src line 124 not covered
Asm line 4112, src line 0 not covered
Asm line 4113, src line 169 not covered
Asm line 4114, src line 169 not covered
Asm line 4117, src line 297 not covered
32 / 216 (14.814814814814813%) asm lines covered

## Coverage for `getOriginalArcPosition`

3 / 3 (100%) asm lines covered

## Coverage for `bea_is_dual_infeasible`

17 / 17 (100%) asm lines covered

## Coverage for `set_static_vars`

Warnings present, coverage may be invalid!
10 / 10 (100%) asm lines covered

## Coverage for `primal_start_artificial`

Warnings present, coverage may be invalid!
Asm line 2930, src line 43 not covered
Asm line 2931, src line 44 not covered
Asm line 2932, src line 46 not covered
Asm line 2933, src line 46 not covered
Asm line 2934, src line 45 not covered
Asm line 2935, src line 46 not covered
Asm line 2936, src line 46 not covered
Asm line 2937, src line 46 not covered
Asm line 2938, src line 46 not covered
Asm line 2939, src line 47 not covered
Asm line 2940, src line 47 not covered
Asm line 2941, src line 48 not covered
Asm line 2942, src line 48 not covered
Asm line 2943, src line 49 not covered
Asm line 2944, src line 49 not covered
Asm line 2945, src line 51 not covered
Asm line 2946, src line 51 not covered
Asm line 2947, src line 0 not covered
Asm line 2948, src line 0 not covered
Asm line 2949, src line 30 not covered
Asm line 2950, src line 30 not covered
Asm line 2951, src line 0 not covered
Asm line 2952, src line 55 not covered
Asm line 2953, src line 55 not covered
Asm line 2956, src line 30 not covered
Asm line 2957, src line 0 not covered
Asm line 2958, src line 56 not covered
Asm line 2959, src line 56 not covered
Asm line 2960, src line 56 not covered
Asm line 2961, src line 56 not covered
Asm line 2964, src line 57 not covered
Asm line 2965, src line 57 not covered
Asm line 2968, src line 55 not covered
Asm line 2969, src line 0 not covered
Asm line 2970, src line 55 not covered
Asm line 2971, src line 55 not covered
Asm line 2974, src line 59 not covered
Asm line 2975, src line 59 not covered
Asm line 2976, src line 0 not covered
Asm line 2977, src line 0 not covered
Asm line 2978, src line 63 not covered
Asm line 2979, src line 63 not covered
Asm line 2982, src line 30 not covered
Asm line 2983, src line 0 not covered
Asm line 2984, src line 66 not covered
Asm line 2985, src line 66 not covered
Asm line 2986, src line 66 not covered
Asm line 2987, src line 66 not covered
Asm line 2988, src line 67 not covered
Asm line 2989, src line 67 not covered
Asm line 2990, src line 68 not covered
Asm line 2991, src line 68 not covered
Asm line 2992, src line 69 not covered
Asm line 2993, src line 69 not covered
Asm line 2994, src line 69 not covered
Asm line 2995, src line 69 not covered
Asm line 2996, src line 70 not covered
Asm line 2997, src line 70 not covered
Asm line 2998, src line 70 not covered
Asm line 2999, src line 71 not covered
Asm line 3000, src line 71 not covered
Asm line 3001, src line 73 not covered
Asm line 3002, src line 73 not covered
Asm line 3003, src line 74 not covered
Asm line 3004, src line 74 not covered
Asm line 3005, src line 76 not covered
Asm line 3006, src line 76 not covered
Asm line 3007, src line 77 not covered
Asm line 3008, src line 77 not covered
Asm line 3009, src line 78 not covered
Asm line 3010, src line 78 not covered
Asm line 3011, src line 79 not covered
Asm line 3012, src line 79 not covered
Asm line 3013, src line 80 not covered
Asm line 3014, src line 80 not covered
Asm line 3015, src line 81 not covered
Asm line 3016, src line 81 not covered
Asm line 3017, src line 0 not covered
Asm line 3018, src line 63 not covered
Asm line 3019, src line 63 not covered
Asm line 3022, src line 0 not covered
Asm line 3023, src line 0 not covered
Asm line 3024, src line 87 not covered
Asm line 3025, src line 87 not covered
Asm line 3026, src line 88 not covered
Asm line 3027, src line 88 not covered
Asm line 3028, src line 90 not covered
12 / 99 (12.121212121212121%) asm lines covered

## Coverage for `primal_feasible`

Asm line 674, src line 255 not covered
Asm line 675, src line 0 not covered
Asm line 676, src line 256 not covered
Asm line 677, src line 235 not covered
Asm line 678, src line 256 not covered
Asm line 679, src line 256 not covered
Asm line 682, src line 258 not covered
Asm line 683, src line 258 not covered
Asm line 684, src line 258 not covered
Asm line 685, src line 258 not covered
Asm line 688, src line 260 not covered
Asm line 689, src line 262 not covered
Asm line 690, src line 262 not covered
Asm line 691, src line 261 not covered
Asm line 692, src line 263 not covered
Asm line 695, src line 267 not covered
Asm line 696, src line 267 not covered
Asm line 697, src line 267 not covered
Asm line 698, src line 235 not covered
Asm line 699, src line 235 not covered
Asm line 700, src line 268 not covered
Asm line 701, src line 268 not covered
Asm line 704, src line 270 not covered
Asm line 705, src line 271 not covered
Asm line 706, src line 273 not covered
Asm line 709, src line 0 not covered
Asm line 710, src line 252 not covered
Asm line 711, src line 0 not covered
Asm line 712, src line 252 not covered
Asm line 713, src line 235 not covered
Asm line 714, src line 252 not covered
31 / 62 (50%) asm lines covered

## Coverage for `refresh_neighbour_lists`

Warnings present, coverage may be invalid!
Asm line 291, src line 50 not covered
Asm line 292, src line 50 not covered
Asm line 293, src line 51 not covered
Asm line 294, src line 52 not covered
Asm line 295, src line 52 not covered
Asm line 296, src line 52 not covered
Asm line 297, src line 52 not covered
Asm line 298, src line 52 not covered
Asm line 299, src line 52 not covered
Asm line 300, src line 53 not covered
Asm line 301, src line 48 not covered
Asm line 302, src line 0 not covered
Asm line 303, src line 48 not covered
Asm line 304, src line 48 not covered
Asm line 305, src line 48 not covered
Asm line 306, src line 0 not covered
Asm line 307, src line 48 not covered
Asm line 308, src line 48 not covered
Asm line 309, src line 48 not covered
41 / 60 (68.33333333333333%) asm lines covered

## Coverage for `calculate_max_redcost`

Asm line 1915, src line 395 not covered
Asm line 1916, src line 395 not covered
Asm line 1917, src line 395 not covered
Asm line 1918, src line 395 not covered
Asm line 1919, src line 395 not covered
Asm line 1922, src line 396 not covered
Asm line 1923, src line 396 not covered
Asm line 1926, src line 393 not covered
Asm line 1927, src line 0 not covered
Asm line 1928, src line 393 not covered
Asm line 1929, src line 393 not covered
14 / 25 (56.00000000000001%) asm lines covered

## Coverage for `replace_weaker_arc`

Asm line 1835, src line 340 not covered
Asm line 1836, src line 340 not covered
Asm line 1839, src line 342 not covered
Asm line 1840, src line 342 not covered
Asm line 1841, src line 342 not covered
Asm line 1842, src line 342 not covered
Asm line 1843, src line 342 not covered
Asm line 1844, src line 343 not covered
Asm line 1845, src line 343 not covered
Asm line 1846, src line 343 not covered
Asm line 1847, src line 343 not covered
Asm line 1848, src line 344 not covered
Asm line 1849, src line 344 not covered
Asm line 1850, src line 344 not covered
Asm line 1851, src line 344 not covered
Asm line 1852, src line 345 not covered
Asm line 1853, src line 345 not covered
Asm line 1854, src line 345 not covered
Asm line 1855, src line 346 not covered
Asm line 1856, src line 346 not covered
Asm line 1857, src line 347 not covered
Asm line 1858, src line 347 not covered
Asm line 1859, src line 347 not covered
Asm line 1860, src line 347 not covered
Asm line 1861, src line 349 not covered
Asm line 1862, src line 350 not covered
Asm line 1863, src line 351 not covered
Asm line 1864, src line 352 not covered
Asm line 1865, src line 352 not covered
Asm line 1866, src line 353 not covered
Asm line 1867, src line 354 not covered
Asm line 1868, src line 0 not covered
Asm line 1869, src line 356 not covered
Asm line 1870, src line 0 not covered
Asm line 1871, src line 357 not covered
Asm line 1872, src line 357 not covered
Asm line 1873, src line 357 not covered
Asm line 1876, src line 358 not covered
Asm line 1877, src line 358 not covered
Asm line 1878, src line 358 not covered
Asm line 1879, src line 358 not covered
Asm line 1880, src line 358 not covered
Asm line 1881, src line 358 not covered
Asm line 1882, src line 358 not covered
Asm line 1883, src line 358 not covered
Asm line 1886, src line 341 not covered
Asm line 1887, src line 0 not covered
Asm line 1888, src line 0 not covered
Asm line 1889, src line 340 not covered
Asm line 1890, src line 314 not covered
Asm line 1891, src line 340 not covered
39 / 90 (43.333333333333336%) asm lines covered

## Coverage for `worker`

Warnings present, coverage may be invalid!
Asm line 3843, src line 114 not covered
Asm line 3844, src line 114 not covered
Asm line 3851, src line 121 not covered
84 / 87 (96.55172413793103%) asm lines covered

## Coverage for `insert_new_arc`

Asm line 1728, src line 282 not covered
Asm line 1729, src line 283 not covered
Asm line 1730, src line 283 not covered
Asm line 1731, src line 284 not covered
Asm line 1732, src line 284 not covered
Asm line 1733, src line 284 not covered
Asm line 1734, src line 0 not covered
Asm line 1735, src line 287 not covered
Asm line 1736, src line 287 not covered
Asm line 1739, src line 286 not covered
Asm line 1740, src line 0 not covered
Asm line 1741, src line 287 not covered
Asm line 1744, src line 263 not covered
Asm line 1745, src line 263 not covered
Asm line 1746, src line 0 not covered
Asm line 1747, src line 287 not covered
Asm line 1748, src line 287 not covered
Asm line 1749, src line 287 not covered
Asm line 1750, src line 287 not covered
Asm line 1751, src line 287 not covered
Asm line 1752, src line 287 not covered
Asm line 1755, src line 289 not covered
Asm line 1756, src line 289 not covered
Asm line 1757, src line 289 not covered
Asm line 1758, src line 289 not covered
Asm line 1759, src line 290 not covered
Asm line 1760, src line 290 not covered
Asm line 1761, src line 290 not covered
Asm line 1762, src line 290 not covered
Asm line 1763, src line 291 not covered
Asm line 1764, src line 291 not covered
Asm line 1765, src line 291 not covered
Asm line 1766, src line 291 not covered
Asm line 1767, src line 292 not covered
Asm line 1768, src line 292 not covered
Asm line 1769, src line 292 not covered
Asm line 1770, src line 293 not covered
Asm line 1771, src line 293 not covered
Asm line 1772, src line 294 not covered
Asm line 1773, src line 294 not covered
Asm line 1774, src line 294 not covered
Asm line 1775, src line 294 not covered
Asm line 1776, src line 0 not covered
Asm line 1777, src line 297 not covered
Asm line 1778, src line 298 not covered
Asm line 1779, src line 299 not covered
Asm line 1780, src line 300 not covered
Asm line 1781, src line 300 not covered
Asm line 1782, src line 301 not covered
Asm line 1783, src line 302 not covered
Asm line 1784, src line 287 not covered
Asm line 1785, src line 287 not covered
Asm line 1786, src line 287 not covered
Asm line 1789, src line 306 not covered
15 / 69 (21.73913043478261%) asm lines covered

## Coverage for `markBaskets`

Warnings present, coverage may be invalid!
Asm line 3667, src line 46 not covered
Asm line 3668, src line 46 not covered
Asm line 3669, src line 46 not covered
Asm line 3670, src line 46 not covered
Asm line 3671, src line 36 not covered
Asm line 3672, src line 36 not covered
Asm line 3673, src line 46 not covered
Asm line 3674, src line 0 not covered
Asm line 3675, src line 0 not covered
Asm line 3676, src line 53 not covered
Asm line 3679, src line 36 not covered
Asm line 3680, src line 36 not covered
Asm line 3681, src line 0 not covered
Asm line 3682, src line 0 not covered
Asm line 3683, src line 54 not covered
Asm line 3684, src line 54 not covered
Asm line 3685, src line 54 not covered
Asm line 3686, src line 54 not covered
Asm line 3687, src line 0 not covered
Asm line 3688, src line 54 not covered
Asm line 3689, src line 55 not covered
Asm line 3690, src line 55 not covered
Asm line 3691, src line 55 not covered
Asm line 3692, src line 55 not covered
Asm line 3695, src line 56 not covered
Asm line 3696, src line 0 not covered
Asm line 3697, src line 56 not covered
Asm line 3698, src line 56 not covered
Asm line 3701, src line 0 not covered
Asm line 3702, src line 0 not covered
Asm line 3703, src line 56 not covered
Asm line 3704, src line 56 not covered
Asm line 3705, src line 56 not covered
Asm line 3708, src line 57 not covered
Asm line 3709, src line 0 not covered
Asm line 3710, src line 0 not covered
Asm line 3711, src line 57 not covered
Asm line 3712, src line 0 not covered
Asm line 3713, src line 59 not covered
Asm line 3716, src line 45 not covered
Asm line 3717, src line 0 not covered
Asm line 3718, src line 53 not covered
Asm line 3719, src line 0 not covered
Asm line 3720, src line 53 not covered
Asm line 3721, src line 53 not covered
Asm line 3724, src line 45 not covered
Asm line 3725, src line 63 not covered
Asm line 3726, src line 0 not covered
Asm line 3727, src line 63 not covered
Asm line 3728, src line 63 not covered
Asm line 3731, src line 67 not covered
Asm line 3732, src line 67 not covered
Asm line 3733, src line 68 not covered
Asm line 3734, src line 68 not covered
Asm line 3735, src line 68 not covered
Asm line 3736, src line 68 not covered
Asm line 3737, src line 68 not covered
Asm line 3738, src line 45 not covered
Asm line 3739, src line 0 not covered
Asm line 3740, src line 0 not covered
Asm line 3741, src line 45 not covered
Asm line 3742, src line 45 not covered
Asm line 3745, src line 70 not covered
17 / 80 (21.25%) asm lines covered

## Coverage for `arc_compare`

Asm line 2687, src line 37 not covered
Asm line 2688, src line 37 not covered
Asm line 2689, src line 37 not covered
Asm line 2692, src line 39 not covered
Asm line 2693, src line 39 not covered
Asm line 2696, src line 41 not covered
Asm line 2697, src line 41 not covered
Asm line 2698, src line 41 not covered
Asm line 2699, src line 41 not covered
Asm line 2700, src line 41 not covered
Asm line 2701, src line 0 not covered
Asm line 2702, src line 0 not covered
Asm line 2705, src line 0 not covered
Asm line 2706, src line 45 not covered
7 / 21 (33.33333333333333%) asm lines covered

## Coverage for `flow_org_cost`

Asm line 529, src line 188 not covered
Asm line 530, src line 0 not covered
Asm line 531, src line 188 not covered
Asm line 532, src line 188 not covered
Asm line 558, src line 201 not covered
Asm line 559, src line 201 not covered
Asm line 560, src line 201 not covered
Asm line 561, src line 201 not covered
Asm line 562, src line 200 not covered
Asm line 563, src line 0 not covered
Asm line 564, src line 200 not covered
Asm line 565, src line 200 not covered
Asm line 568, src line 171 not covered
Asm line 569, src line 171 not covered
Asm line 570, src line 171 not covered
Asm line 571, src line 0 not covered
Asm line 572, src line 0 not covered
Asm line 573, src line 0 not covered
Asm line 574, src line 206 not covered
Asm line 575, src line 206 not covered
Asm line 576, src line 206 not covered
Asm line 577, src line 206 not covered
Asm line 580, src line 208 not covered
Asm line 581, src line 208 not covered
Asm line 582, src line 208 not covered
Asm line 583, src line 208 not covered
Asm line 584, src line 208 not covered
Asm line 585, src line 208 not covered
Asm line 588, src line 208 not covered
Asm line 589, src line 208 not covered
Asm line 590, src line 208 not covered
Asm line 591, src line 208 not covered
Asm line 592, src line 208 not covered
Asm line 593, src line 208 not covered
Asm line 596, src line 210 not covered
Asm line 597, src line 210 not covered
Asm line 598, src line 210 not covered
Asm line 599, src line 210 not covered
Asm line 602, src line 212 not covered
Asm line 603, src line 212 not covered
Asm line 604, src line 212 not covered
Asm line 605, src line 0 not covered
Asm line 606, src line 213 not covered
Asm line 607, src line 0 not covered
Asm line 608, src line 214 not covered
Asm line 611, src line 216 not covered
Asm line 612, src line 0 not covered
Asm line 613, src line 171 not covered
Asm line 616, src line 0 not covered
Asm line 617, src line 0 not covered
Asm line 618, src line 0 not covered
Asm line 619, src line 0 not covered
Asm line 620, src line 204 not covered
Asm line 621, src line 0 not covered
Asm line 622, src line 204 not covered
Asm line 623, src line 204 not covered
54 / 110 (49.09090909090909%) asm lines covered

## Coverage for `read_min`

Warnings present, coverage may be invalid!
Asm line 944, src line 0 not covered
Asm line 945, src line 66 not covered
Asm line 946, src line 64 not covered
Asm line 949, src line 69 not covered
Asm line 950, src line 69 not covered
Asm line 953, src line 71 not covered
Asm line 954, src line 71 not covered
Asm line 955, src line 72 not covered
Asm line 956, src line 72 not covered
Asm line 957, src line 73 not covered
Asm line 958, src line 73 not covered
Asm line 959, src line 75 not covered
Asm line 962, src line 78 not covered
Asm line 963, src line 78 not covered
Asm line 964, src line 78 not covered
Asm line 965, src line 78 not covered
Asm line 966, src line 78 not covered
Asm line 967, src line 78 not covered
Asm line 968, src line 78 not covered
Asm line 969, src line 78 not covered
Asm line 970, src line 78 not covered
Asm line 971, src line 78 not covered
Asm line 972, src line 78 not covered
Asm line 973, src line 79 not covered
Asm line 974, src line 79 not covered
Asm line 975, src line 27 not covered
Asm line 978, src line 87 not covered
Asm line 979, src line 87 not covered
Asm line 980, src line 87 not covered
Asm line 981, src line 87 not covered
Asm line 982, src line 87 not covered
Asm line 983, src line 88 not covered
Asm line 984, src line 88 not covered
Asm line 985, src line 88 not covered
Asm line 986, src line 88 not covered
Asm line 987, src line 89 not covered
Asm line 988, src line 89 not covered
Asm line 989, src line 89 not covered
Asm line 990, src line 89 not covered
Asm line 991, src line 89 not covered
Asm line 992, src line 89 not covered
Asm line 993, src line 90 not covered
Asm line 994, src line 90 not covered
Asm line 995, src line 90 not covered
Asm line 996, src line 90 not covered
Asm line 997, src line 92 not covered
Asm line 998, src line 92 not covered
Asm line 999, src line 27 not covered
Asm line 1000, src line 92 not covered
Asm line 1001, src line 92 not covered
Asm line 1004, src line 92 not covered
Asm line 1005, src line 92 not covered
Asm line 1006, src line 92 not covered
Asm line 1009, src line 92 not covered
Asm line 1010, src line 92 not covered
Asm line 1011, src line 92 not covered
Asm line 1014, src line 94 not covered
Asm line 1015, src line 95 not covered
Asm line 1016, src line 96 not covered
Asm line 1019, src line 118 not covered
Asm line 1020, src line 118 not covered
Asm line 1021, src line 118 not covered
Asm line 1022, src line 119 not covered
Asm line 1023, src line 119 not covered
Asm line 1024, src line 119 not covered
Asm line 1025, src line 119 not covered
Asm line 1026, src line 120 not covered
Asm line 1027, src line 120 not covered
Asm line 1028, src line 120 not covered
Asm line 1029, src line 0 not covered
Asm line 1030, src line 0 not covered
Asm line 1031, src line 0 not covered
Asm line 1032, src line 27 not covered
Asm line 1033, src line 0 not covered
Asm line 1034, src line 0 not covered
Asm line 1035, src line 0 not covered
Asm line 1036, src line 127 not covered
Asm line 1037, src line 127 not covered
Asm line 1038, src line 127 not covered
Asm line 1041, src line 27 not covered
Asm line 1042, src line 27 not covered
Asm line 1043, src line 27 not covered
Asm line 1044, src line 0 not covered
Asm line 1045, src line 0 not covered
Asm line 1046, src line 0 not covered
Asm line 1047, src line 129 not covered
Asm line 1048, src line 0 not covered
Asm line 1049, src line 0 not covered
Asm line 1050, src line 131 not covered
Asm line 1051, src line 131 not covered
Asm line 1052, src line 131 not covered
Asm line 1055, src line 131 not covered
Asm line 1056, src line 0 not covered
Asm line 1057, src line 131 not covered
Asm line 1058, src line 0 not covered
Asm line 1059, src line 131 not covered
Asm line 1060, src line 131 not covered
Asm line 1063, src line 137 not covered
Asm line 1064, src line 137 not covered
Asm line 1065, src line 137 not covered
Asm line 1066, src line 137 not covered
Asm line 1067, src line 137 not covered
Asm line 1068, src line 138 not covered
Asm line 1069, src line 138 not covered
Asm line 1070, src line 140 not covered
Asm line 1071, src line 140 not covered
Asm line 1072, src line 140 not covered
Asm line 1073, src line 140 not covered
Asm line 1074, src line 141 not covered
Asm line 1075, src line 141 not covered
Asm line 1076, src line 143 not covered
Asm line 1077, src line 0 not covered
Asm line 1078, src line 143 not covered
Asm line 1079, src line 143 not covered
Asm line 1080, src line 143 not covered
Asm line 1081, src line 144 not covered
Asm line 1082, src line 0 not covered
Asm line 1083, src line 144 not covered
Asm line 1084, src line 144 not covered
Asm line 1085, src line 144 not covered
Asm line 1086, src line 146 not covered
Asm line 1087, src line 146 not covered
Asm line 1088, src line 146 not covered
Asm line 1089, src line 147 not covered
Asm line 1090, src line 147 not covered
Asm line 1091, src line 147 not covered
Asm line 1092, src line 147 not covered
Asm line 1093, src line 148 not covered
Asm line 1094, src line 148 not covered
Asm line 1095, src line 149 not covered
Asm line 1096, src line 149 not covered
Asm line 1097, src line 149 not covered
Asm line 1098, src line 149 not covered
Asm line 1099, src line 149 not covered
Asm line 1100, src line 149 not covered
Asm line 1101, src line 150 not covered
Asm line 1102, src line 150 not covered
Asm line 1103, src line 150 not covered
Asm line 1104, src line 150 not covered
Asm line 1105, src line 151 not covered
Asm line 1106, src line 152 not covered
Asm line 1107, src line 152 not covered
Asm line 1108, src line 152 not covered
Asm line 1109, src line 152 not covered
Asm line 1110, src line 153 not covered
Asm line 1111, src line 154 not covered
Asm line 1112, src line 154 not covered
Asm line 1113, src line 0 not covered
Asm line 1114, src line 154 not covered
Asm line 1115, src line 154 not covered
Asm line 1116, src line 0 not covered
Asm line 1117, src line 156 not covered
Asm line 1118, src line 156 not covered
Asm line 1119, src line 156 not covered
Asm line 1120, src line 157 not covered
Asm line 1121, src line 157 not covered
Asm line 1122, src line 157 not covered
Asm line 1123, src line 157 not covered
Asm line 1124, src line 157 not covered
Asm line 1125, src line 158 not covered
Asm line 1126, src line 158 not covered
Asm line 1127, src line 158 not covered
Asm line 1128, src line 158 not covered
Asm line 1129, src line 159 not covered
Asm line 1130, src line 159 not covered
Asm line 1131, src line 159 not covered
Asm line 1132, src line 159 not covered
Asm line 1133, src line 160 not covered
Asm line 1134, src line 160 not covered
Asm line 1135, src line 160 not covered
Asm line 1136, src line 160 not covered
Asm line 1137, src line 161 not covered
Asm line 1138, src line 162 not covered
Asm line 1139, src line 162 not covered
Asm line 1140, src line 162 not covered
Asm line 1141, src line 162 not covered
Asm line 1142, src line 163 not covered
Asm line 1143, src line 164 not covered
Asm line 1144, src line 164 not covered
Asm line 1145, src line 0 not covered
Asm line 1146, src line 164 not covered
Asm line 1147, src line 164 not covered
Asm line 1148, src line 0 not covered
Asm line 1149, src line 166 not covered
Asm line 1150, src line 166 not covered
Asm line 1151, src line 166 not covered
Asm line 1152, src line 167 not covered
Asm line 1153, src line 167 not covered
Asm line 1154, src line 168 not covered
Asm line 1155, src line 168 not covered
Asm line 1156, src line 168 not covered
Asm line 1157, src line 168 not covered
Asm line 1158, src line 168 not covered
Asm line 1159, src line 169 not covered
Asm line 1160, src line 169 not covered
Asm line 1161, src line 169 not covered
Asm line 1162, src line 169 not covered
Asm line 1163, src line 169 not covered
Asm line 1164, src line 169 not covered
Asm line 1165, src line 169 not covered
Asm line 1166, src line 169 not covered
Asm line 1167, src line 170 not covered
Asm line 1168, src line 170 not covered
Asm line 1169, src line 170 not covered
Asm line 1170, src line 170 not covered
Asm line 1171, src line 171 not covered
Asm line 1172, src line 172 not covered
Asm line 1173, src line 172 not covered
Asm line 1174, src line 172 not covered
Asm line 1175, src line 172 not covered
Asm line 1176, src line 173 not covered
Asm line 1177, src line 174 not covered
Asm line 1178, src line 174 not covered
Asm line 1179, src line 0 not covered
Asm line 1180, src line 174 not covered
Asm line 1181, src line 174 not covered
Asm line 1182, src line 0 not covered
Asm line 1183, src line 127 not covered
Asm line 1184, src line 0 not covered
Asm line 1185, src line 127 not covered
Asm line 1186, src line 127 not covered
Asm line 1187, src line 127 not covered
Asm line 1190, src line 127 not covered
Asm line 1191, src line 0 not covered
Asm line 1192, src line 0 not covered
Asm line 1193, src line 127 not covered
Asm line 1194, src line 177 not covered
Asm line 1195, src line 177 not covered
Asm line 1196, src line 177 not covered
Asm line 1199, src line 0 not covered
Asm line 1200, src line 0 not covered
Asm line 1201, src line 0 not covered
Asm line 1202, src line 181 not covered
Asm line 1203, src line 181 not covered
Asm line 1204, src line 181 not covered
Asm line 1207, src line 27 not covered
Asm line 1208, src line 27 not covered
Asm line 1209, src line 27 not covered
Asm line 1210, src line 0 not covered
Asm line 1211, src line 0 not covered
Asm line 1212, src line 0 not covered
Asm line 1213, src line 183 not covered
Asm line 1214, src line 0 not covered
Asm line 1215, src line 0 not covered
Asm line 1216, src line 0 not covered
Asm line 1217, src line 186 not covered
Asm line 1218, src line 186 not covered
Asm line 1219, src line 186 not covered
Asm line 1222, src line 192 not covered
Asm line 1223, src line 192 not covered
Asm line 1224, src line 192 not covered
Asm line 1225, src line 193 not covered
Asm line 1226, src line 0 not covered
Asm line 1227, src line 193 not covered
Asm line 1228, src line 193 not covered
Asm line 1229, src line 193 not covered
Asm line 1230, src line 193 not covered
Asm line 1231, src line 193 not covered
Asm line 1232, src line 194 not covered
Asm line 1233, src line 0 not covered
Asm line 1234, src line 194 not covered
Asm line 1235, src line 194 not covered
Asm line 1236, src line 194 not covered
Asm line 1237, src line 195 not covered
Asm line 1238, src line 0 not covered
Asm line 1239, src line 195 not covered
Asm line 1240, src line 195 not covered
Asm line 1241, src line 196 not covered
Asm line 1242, src line 196 not covered
Asm line 1243, src line 197 not covered
Asm line 1244, src line 197 not covered
Asm line 1245, src line 197 not covered
Asm line 1246, src line 197 not covered
Asm line 1247, src line 198 not covered
Asm line 1248, src line 199 not covered
Asm line 1249, src line 199 not covered
Asm line 1250, src line 199 not covered
Asm line 1251, src line 199 not covered
Asm line 1252, src line 200 not covered
Asm line 1253, src line 181 not covered
Asm line 1254, src line 0 not covered
Asm line 1255, src line 181 not covered
Asm line 1256, src line 181 not covered
Asm line 1257, src line 0 not covered
Asm line 1258, src line 181 not covered
Asm line 1259, src line 181 not covered
Asm line 1260, src line 0 not covered
Asm line 1261, src line 181 not covered
Asm line 1262, src line 181 not covered
Asm line 1263, src line 181 not covered
Asm line 1266, src line 0 not covered
Asm line 1267, src line 213 not covered
Asm line 1268, src line 225 not covered
Asm line 1269, src line 225 not covered
Asm line 1270, src line 0 not covered
Asm line 1271, src line 27 not covered
Asm line 1272, src line 0 not covered
Asm line 1273, src line 226 not covered
Asm line 1274, src line 226 not covered
Asm line 1275, src line 226 not covered
Asm line 1278, src line 27 not covered
Asm line 1279, src line 0 not covered
Asm line 1280, src line 228 not covered
Asm line 1281, src line 228 not covered
Asm line 1282, src line 228 not covered
Asm line 1283, src line 228 not covered
Asm line 1284, src line 0 not covered
Asm line 1285, src line 230 not covered
Asm line 1286, src line 230 not covered
Asm line 1287, src line 230 not covered
Asm line 1288, src line 230 not covered
Asm line 1289, src line 229 not covered
Asm line 1290, src line 229 not covered
Asm line 1291, src line 231 not covered
Asm line 1292, src line 231 not covered
Asm line 1293, src line 226 not covered
Asm line 1294, src line 0 not covered
Asm line 1295, src line 226 not covered
Asm line 1296, src line 226 not covered
Asm line 1297, src line 226 not covered
69 / 389 (17.737789203084834%) asm lines covered

## Coverage for `primal_bea_mpp`

Asm line 4268, src line 0 not covered
Asm line 4269, src line 103 not covered
Asm line 4270, src line 103 not covered
Asm line 4271, src line 0 not covered
Asm line 4272, src line 104 not covered
Asm line 4273, src line 104 not covered
Asm line 4274, src line 104 not covered
Asm line 4275, src line 104 not covered
Asm line 4276, src line 104 not covered
Asm line 4277, src line 104 not covered
Asm line 4278, src line 104 not covered
Asm line 4279, src line 104 not covered
Asm line 4280, src line 104 not covered
Asm line 4281, src line 104 not covered
Asm line 4282, src line 104 not covered
Asm line 4283, src line 104 not covered
Asm line 4284, src line 0 not covered
Asm line 4285, src line 105 not covered
Asm line 4286, src line 105 not covered
Asm line 4289, src line 105 not covered
Asm line 4290, src line 105 not covered
Asm line 4293, src line 105 not covered
Asm line 4294, src line 105 not covered
Asm line 4295, src line 105 not covered
Asm line 4296, src line 106 not covered
Asm line 4299, src line 106 not covered
Asm line 4300, src line 106 not covered
Asm line 4303, src line 106 not covered
Asm line 4304, src line 106 not covered
Asm line 4305, src line 106 not covered
Asm line 4306, src line 105 not covered
Asm line 4309, src line 108 not covered
Asm line 4310, src line 0 not covered
Asm line 4311, src line 109 not covered
Asm line 4312, src line 109 not covered
Asm line 4313, src line 109 not covered
Asm line 4314, src line 109 not covered
Asm line 4315, src line 110 not covered
Asm line 4316, src line 110 not covered
Asm line 4317, src line 110 not covered
Asm line 4318, src line 111 not covered
Asm line 4319, src line 111 not covered
Asm line 4320, src line 111 not covered
Asm line 4321, src line 112 not covered
Asm line 4322, src line 112 not covered
Asm line 4323, src line 113 not covered
Asm line 4326, src line 100 not covered
Asm line 4327, src line 0 not covered
Asm line 4328, src line 100 not covered
Asm line 4329, src line 0 not covered
Asm line 4330, src line 100 not covered
Asm line 4331, src line 100 not covered
Asm line 4334, src line 100 not covered
Asm line 4335, src line 116 not covered
Asm line 4336, src line 116 not covered
Asm line 4337, src line 116 not covered
Asm line 4338, src line 118 not covered
Asm line 4339, src line 0 not covered
Asm line 4340, src line 80 not covered
Asm line 4341, src line 80 not covered
Asm line 4342, src line 118 not covered
Asm line 4345, src line 120 not covered
Asm line 4346, src line 123 not covered
Asm line 4347, src line 0 not covered
Asm line 4348, src line 125 not covered
Asm line 4349, src line 125 not covered
Asm line 4350, src line 125 not covered
Asm line 4351, src line 125 not covered
Asm line 4352, src line 125 not covered
Asm line 4353, src line 0 not covered
Asm line 4354, src line 131 not covered
Asm line 4355, src line 131 not covered
Asm line 4358, src line 123 not covered
Asm line 4359, src line 0 not covered
Asm line 4360, src line 131 not covered
Asm line 4363, src line 80 not covered
Asm line 4364, src line 0 not covered
Asm line 4365, src line 132 not covered
Asm line 4366, src line 132 not covered
Asm line 4367, src line 132 not covered
Asm line 4368, src line 132 not covered
Asm line 4371, src line 135 not covered
Asm line 4372, src line 135 not covered
Asm line 4373, src line 135 not covered
Asm line 4374, src line 135 not covered
Asm line 4375, src line 135 not covered
Asm line 4376, src line 135 not covered
Asm line 4377, src line 135 not covered
Asm line 4378, src line 135 not covered
Asm line 4379, src line 135 not covered
Asm line 4380, src line 135 not covered
Asm line 4381, src line 135 not covered
Asm line 4382, src line 135 not covered
Asm line 4383, src line 0 not covered
Asm line 4384, src line 136 not covered
Asm line 4385, src line 136 not covered
Asm line 4386, src line 136 not covered
Asm line 4389, src line 138 not covered
Asm line 4390, src line 138 not covered
Asm line 4391, src line 138 not covered
Asm line 4392, src line 139 not covered
Asm line 4393, src line 139 not covered
Asm line 4394, src line 139 not covered
Asm line 4395, src line 139 not covered
Asm line 4396, src line 140 not covered
Asm line 4397, src line 140 not covered
Asm line 4398, src line 140 not covered
Asm line 4399, src line 141 not covered
Asm line 4400, src line 141 not covered
Asm line 4401, src line 141 not covered
Asm line 4402, src line 141 not covered
Asm line 4403, src line 141 not covered
Asm line 4404, src line 141 not covered
Asm line 4405, src line 142 not covered
Asm line 4406, src line 142 not covered
Asm line 4407, src line 142 not covered
Asm line 4408, src line 142 not covered
Asm line 4409, src line 142 not covered
Asm line 4410, src line 143 not covered
Asm line 4413, src line 131 not covered
Asm line 4414, src line 0 not covered
Asm line 4415, src line 131 not covered
Asm line 4416, src line 131 not covered
Asm line 4417, src line 131 not covered
Asm line 4420, src line 131 not covered
Asm line 4421, src line 147 not covered
Asm line 4422, src line 147 not covered
Asm line 4425, src line 148 not covered
Asm line 4426, src line 149 not covered
Asm line 4429, src line 152 not covered
Asm line 4430, src line 152 not covered
Asm line 4431, src line 152 not covered
Asm line 4434, src line 0 not covered
Asm line 4435, src line 0 not covered
Asm line 4436, src line 158 not covered
Asm line 4439, src line 80 not covered
Asm line 4440, src line 80 not covered
Asm line 4441, src line 0 not covered
Asm line 4442, src line 0 not covered
Asm line 4443, src line 159 not covered
Asm line 4444, src line 159 not covered
Asm line 4445, src line 159 not covered
Asm line 4446, src line 0 not covered
Asm line 4447, src line 158 not covered
Asm line 4448, src line 0 not covered
Asm line 4449, src line 158 not covered
Asm line 4450, src line 158 not covered
Asm line 4453, src line 152 not covered
Asm line 4454, src line 161 not covered
Asm line 4455, src line 161 not covered
Asm line 4458, src line 170 not covered
Asm line 4459, src line 172 not covered
Asm line 4460, src line 172 not covered
Asm line 4461, src line 172 not covered
Asm line 4462, src line 172 not covered
Asm line 4463, src line 172 not covered
Asm line 4464, src line 172 not covered
Asm line 4465, src line 174 not covered
Asm line 4466, src line 174 not covered
Asm line 4467, src line 174 not covered
Asm line 4470, src line 179 not covered
Asm line 4471, src line 179 not covered
Asm line 4472, src line 179 not covered
Asm line 4473, src line 186 not covered
Asm line 4474, src line 186 not covered
Asm line 4477, src line 0 not covered
Asm line 4478, src line 188 not covered
28 / 195 (14.358974358974358%) asm lines covered

## Coverage for `primal_update_flow`

Warnings present, coverage may be invalid!
35 / 35 (100%) asm lines covered

## Summary

1495 / 3924 (38.098878695208974%) asm lines covered
