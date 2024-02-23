+++ dirname ./check.sh
++ cd .
++ pwd
+ SCRIPT_DIR=/Users/jryans/Research/Papers/debug-info-consistency/data/git/program
+ '[' /Users/jryans/Research/Papers/debug-info-consistency/data/git/program '!=' /Users/jryans/Research/Papers/debug-info-consistency/data/git/program ']'
+ TARGET_NAME=git
+ source /Users/jryans/Research/Papers/debug-info-consistency/data/git/program/../../vars.sh
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
+++ klee debug check-debug-info
+++ local build=debug
+++ local program=check-debug-info
+++ local program=check-debug-info
+++ '[' -z check-debug-info ']'
+++ echo /Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --max-functions=10 --max-forks=4 --tsv'
+ level=O0-mem2reg
+ version=13
+ echo '## Checking debug consistency of `git` (Clang 13, O0-mem2reg)'
## Checking debug consistency of `git` (Clang 13, O0-mem2reg)
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info clang/13/O0/git.bc clang/13/O0-mem2reg/git.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --max-functions=10 --max-forks=4 --tsv
Checking clang/13/O0/git.bc and clang/13/O0-mem2reg/git.bc for debug info consistency…

^C