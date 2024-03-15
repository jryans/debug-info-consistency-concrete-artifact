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
++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-functions=10 --max-forks=4 --max-time=10s --search=random-path --tsv'
+ level=O1
+ version=13
+ echo '## Checking debug consistency of `git` (Clang 13, O1)'
## Checking debug consistency of `git` (Clang 13, O1)
+ /Users/jryans/Projects/klee/build-release-debug/bin/check-debug-info ../O0/git.bc git.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-functions=10 --max-forks=4 --max-time=10s --search=random-path --tsv
Checking ../O0/git.bc and git.bc for debug info consistency…

## Functions

❌ 12085 before defined functions(s), 11799 after defined functions(s)
🔔 Limited to first 10 functions (`--max-functions`)

[0;1;35mKLEE: WARNING ONCE: unsupported intrinsic llvm.load.relative.i64
[0minlinable function call in a function with debug info must have a !dbg location
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64)
LLVM ERROR: Broken module found, compilation aborted!
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /Users/jryans/Projects/klee/build-release-debug/bin/check-debug-info ../O0/git.bc git.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-functions=10 --max-forks=4 --max-time=10s --search=random-path --tsv
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x0000000102bced17 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 39
1  check-debug-info         0x0000000102bcdb58 llvm::sys::RunSignalHandlers() + 248
2  check-debug-info         0x0000000102bcf360 SignalHandler(int) + 288
3  libsystem_platform.dylib 0x00007ff800bb3fdd _sigtramp + 29
4  libsystem_platform.dylib 0x0000000106a0a3c0 _sigtramp + 18446603374974821376
5  libsystem_c.dylib        0x00007ff800aaaa39 abort + 126
6  check-debug-info         0x0000000102b167bd llvm::report_fatal_error(llvm::Twine const&, bool) + 445
7  check-debug-info         0x0000000102b165f9 llvm::report_fatal_error(char const*, bool) + 41
8  check-debug-info         0x0000000102a1ee44 (anonymous namespace)::VerifierLegacyPass::doFinalization(llvm::Module&) + 180
9  check-debug-info         0x00000001029a9ae6 llvm::FPPassManager::doFinalization(llvm::Module&) + 54
10 check-debug-info         0x00000001029a3977 llvm::legacy::PassManagerImpl::run(llvm::Module&) + 1351
11 check-debug-info         0x0000000101b9763b klee::KModule::checkModule() + 139
12 check-debug-info         0x00000001013720fa klee::Executor::setModule(std::__1::vector<std::__1::unique_ptr<llvm::Module, std::__1::default_delete<llvm::Module> >, std::__1::allocator<std::__1::unique_ptr<llvm::Module, std::__1::default_delete<llvm::Module> > > >&, klee::Interpreter::ModuleOptions const&) + 3722
13 check-debug-info         0x000000010136188f ValuesCollector::prepare(llvm::StringRef, llvm::StringRef, std::__1::unique_ptr<llvm::Module, std::__1::default_delete<llvm::Module> >) + 2047
14 check-debug-info         0x0000000101354877 main + 2487
15 dyld                     0x00007ff8007f9366 start + 1942
./check.sh: line 23: 65386 Abort trap: 6           ${CHECK} ../O0/${TARGET_NAME}.bc ${TARGET_NAME}.bc ${CHECK_OPTS} "$@"
