+++ dirname ./check.sh
++ cd .
++ pwd
+ SCRIPT_DIR=/Users/jryans/Research/Papers/debug-info-consistency/data/git/file
+ '[' /Users/jryans/Research/Papers/debug-info-consistency/data/git/file '!=' /Users/jryans/Research/Papers/debug-info-consistency/data/git/file ']'
+ TARGET_NAME=git.o
+ source /Users/jryans/Research/Papers/debug-info-consistency/data/git/file/../../vars.sh
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
++ SYM_CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++ SYM_CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --max-forks=4 --tsv'
+ level=O0-mem2reg
+ version=13
+ echo '## Checking symbolic debug consistency of `git.o` (Clang 13, O0-mem2reg)'
## Checking symbolic debug consistency of `git.o` (Clang 13, O0-mem2reg)
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info clang/13/O0/git.o.bc clang/13/O0-mem2reg/git.o.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --max-forks=4 --tsv
Checking clang/13/O0/git.o.bc and clang/13/O0-mem2reg/git.o.bc for debug info consistency…

## Functions

✅ 25 before defined functions(s), 25 after defined functions(s)

## Function `setup_auto_pager`

✅ Before and after function names match

### Variables

Before variable `cmd` (decl src ln 125)
Store to declared address of `cmd` (decl src ln 125), asm ln 340
  arg 0
  Added assignment asm ln 340, prod ln 125.0, live ln 127, enc None
Before variable `def` (decl src ln 125)
Store to declared address of `def` (decl src ln 125), asm ln 342
  arg 1
  Added assignment asm ln 342, prod ln 125.0, live ln 127, enc None

After variable `cmd` (decl src ln 125)
Value produced for `cmd` (decl src ln 125), asm ln 338
  arg 0
  Added assignment asm ln 338, prod ln 125.0, live ln 127, enc None
After variable `def` (decl src ln 125)
Value produced for `def` (decl src ln 125), asm ln 339
  arg 1
  Added assignment asm ln 339, prod ln 125.0, live ln 127, enc None

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to find size for global variable: empty_strvec (use will result in out of bounds access)
[0m[0;35mKLEE: WARNING: Unable to find size for global variable: strbuf_slopbuf (use will result in out of bounds access)
[0m[0;1;31mKLEE: ERROR: Unable to load symbol(startup_info) while initializing globals
[0m
