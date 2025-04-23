Checking ../O0/git.bc and git.bc for debug info consistency…

## Functions

🔔 Only checking function named `cmd_main` (`--function-name`)
✅ 1 before defined functions(s), 1 after defined functions(s)
🔔 Limited to first 10 functions (`--max-functions`)

[0;1;35mKLEE: WARNING ONCE: unsupported intrinsic llvm.load.relative.i64
[0m## Function `cmd_main`

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
Address %argc.addr = alloca i32 for variable `argc` (decl src ln 864) already seen, skipping
Address %argv.addr = alloca i8** for variable `argv` (decl src ln 864) already seen, skipping
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
Collected value for `argv`
  Assignment asm ln 24197, prod ln 864.0, live ln 866, enc 0
  Concrete pointer resolves to cmd_main.argv.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x92BA4A64DEC532FD)
  i8** %argv
  (w64 0x92BA4A64DEC532FD)
Collected value for `done_help`
  Assignment asm ln 24200, prod ln 867.0, live ln 869, enc 0
  i32 0
  (w32 0x0)
Collected value for `argv`
  Assignment asm ln 24201, prod ln 864.0, live ln 869, enc 1
  Concrete pointer resolves to cmd_main.argv.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x92BA4A64DEC532FD)
  i8** %argv
  (w64 0x92BA4A64DEC532FD)
Collected value for `cmd`
  Assignment asm ln 24203, prod ln 869.8, live ln 870, enc 0
  Concrete pointer resolves to cmd_main.argv.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) cmd_main.argv.deref.deref)
  Replaced concrete pointer with hash (w64 0xD1B2B1C57EF5C232)
  %1 = load i8*, i8** %argv, !tbaa !97220, l869 c8
  (w64 0xD1B2B1C57EF5C232)
Collected value for `slash`
  Assignment asm ln 24215, prod ln 873.23, live ln 874, enc 0
  Concrete pointer resolves to git_find_last_dir_sep.return.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) git_find_last_dir_sep.return.deref)
  Replaced concrete pointer with hash (w64 0xCBA2640A075FC758)
  %call = call fastcc i8* @git_find_last_dir_sep(i8* nonnull %1), l873 c23
  (w64 0xCBA2640A075FC758)
Collected value for `cmd`
  Assignment asm ln 24221, prod ln 875.16, live ln 876, enc 1
  Concrete pointer resolves to git_find_last_dir_sep.return.deref, offset (w64 0x1)
  Created deref expr (ReadLSB w64 (w32 0x1) git_find_last_dir_sep.return.deref)
  Replaced concrete pointer with hash (w64 0x3EFC1907150DE6ED)
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1, l875 c16
  (w64 0x3EFC1907150DE6ED)
Collected value for `argv`
  Assignment asm ln 24226, prod ln 864.0, live ln 878, enc 2
  Concrete pointer resolves to cmd_main.argv.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x92BA4A64DEC532FD)
  i8** %argv
  (w64 0x92BA4A64DEC532FD)
Collected value for `cmd`
  Assignment asm ln 24235, prod ln 891.13, live ln 892, enc 2
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %3 = load i8*, i8** %cmd, !tbaa !97220, l891 c13
  (w64 0x8467E337196AF796)
Collected value for `cmd`
  Assignment asm ln 24236, prod ln 891.13, live ln 892, enc 3
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %3 = load i8*, i8** %cmd, !tbaa !97220, l891 c13
  (w64 0x8467E337196AF796)
Collected value for `argv`
  Assignment asm ln 24252, prod ln 897.6, live ln 898, enc 3
  Concrete pointer resolves to cmd_main.argv.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x92BA4A64DEC532FD)
  %7 = load i8**, i8*** %argv.addr, !tbaa !97220, l897 c6
  (w64 0x92BA4A64DEC532FD)
Collected value for `argv`
  Assignment asm ln 24238, prod ln 891.3, live ln 892, enc 4
  Concrete pointer resolves to cmd_main.argv.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x92BA4A64DEC532FD)
  %4 = load i8**, i8*** %argv.addr, !tbaa !97220, l891 c3
  (w64 0x92BA4A64DEC532FD)
Collected value for `argv`
  Assignment asm ln 24254, prod ln 897.6, live ln 898, enc 5
  Concrete pointer resolves to cmd_main.argv.deref, offset (w64 0x8)
  Created deref expr (ReadLSB w64 (w32 0x8) cmd_main.argv.deref)
  Replaced concrete pointer with hash (w64 0x14B219BE57D389F1)
  %incdec.ptr = getelementptr inbounds i8*, i8** %7, i64 1, l897 c6
  (w64 0x14B219BE57D389F1)
Collected value for `argc`
  Assignment asm ln 24241, prod ln 892.18, live ln 893, enc 1
  %5 = load i32, i32* %argc.addr, !tbaa !97216, l892 c18
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
Collected value for `argc`
  Assignment asm ln 24257, prod ln 898.6, live ln 899, enc 2
  %8 = load i32, i32* %argc.addr, !tbaa !97216, l898 c6
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
Collected value for `argv`
  Assignment asm ln 24243, prod ln 892.24, live ln 893, enc 6
  Concrete pointer resolves to cmd_main.argv.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x92BA4A64DEC532FD)
  %6 = load i8**, i8*** %argv.addr, !tbaa !97220, l892 c24
  (w64 0x92BA4A64DEC532FD)
Collected value for `cmd`
  Assignment asm ln 24246, prod ln 891.13, live ln 893, enc 4
  Concrete pointer resolves to skip_prefix.out.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.out.deref.deref)
  Replaced concrete pointer with hash (w64 0x8467E337196AF796)
  %3 = load i8*, i8** %cmd, !tbaa !97220, l891 c13
  (w64 0x8467E337196AF796)
[0;1;31mKLEE: ERROR: git.c:893: reached "unreachable" instruction
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `argc`
  Assignment asm ln 24259, prod ln 898.6, live ln 899, enc 3
  %dec = add nsw i32 %8, -1, l898 c6
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) cmd_main.argc))
Collected value for `argc`
  Assignment asm ln 24264, prod ln 901.7, live ln 902, enc 4
  %9 = load i32, i32* %argc.addr, !tbaa !97216, l901 c7
  (ReadLSB w32 (w32 0x0) handle_options.argc.deref)
Collected value for `argc`
  Assignment asm ln 24265, prod ln 901.7, live ln 902, enc 5
  %9 = load i32, i32* %argc.addr, !tbaa !97216, l901 c7
  (ReadLSB w32 (w32 0x0) handle_options.argc.deref)
Collected value for `argv`
  Assignment asm ln 24281, prod ln 910.27, live ln 911, enc 7
  Concrete pointer resolves to handle_options.argv.deref.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x2CBE786E7EDBF201)
  %10 = load i8**, i8*** %argv.addr, !tbaa !97220, l910 c27
  (w64 0x2CBE786E7EDBF201)
Collected value for `argv`
  Assignment asm ln 24282, prod ln 910.27, live ln 911, enc 8
  Concrete pointer resolves to handle_options.argv.deref.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x2CBE786E7EDBF201)
  %10 = load i8**, i8*** %argv.addr, !tbaa !97220, l910 c27
  (w64 0x2CBE786E7EDBF201)
[0;1;31mKLEE: ERROR: git.c:907: reached "unreachable" instruction
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `argv`
  Assignment asm ln 24310, prod ln 915.8, live ln 916, enc 9
  Concrete pointer resolves to handle_options.argv.deref.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0x2CBE786E7EDBF201)
  %12 = load i8**, i8*** %argv.addr, !tbaa !97220, l915 c8
  (w64 0x2CBE786E7EDBF201)
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0mCollected value for `cmd`
  Assignment asm ln 24312, prod ln 915.8, live ln 916, enc 5
  Concrete pointer resolves to .str.9, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xB003E4C9E55B68A4)
  %13 = load i8*, i8** %12, !tbaa !97220, l915 c8
  (w64 0xB003E4C9E55B68A4)
Collected value for `done_help`
  Assignment asm ln 24320, prod ln 867.0, live ln 926, enc 1
  %done_help.0 = phi i32 [ 0, %if.end38 ], [ %done_help.1, %cleanup ], l867 c6
  Block: 0
  (w32 0x0)
Collected value for `was_alias`
  Assignment asm ln 24324, prod ln 926.19, live ln 927, enc 0
  %call40 = call fastcc i32 @run_argv(i32* nonnull %argc.addr, i8*** nonnull %argv.addr), l926 c19
  (ReadLSB w32 (w32 0x0) run_argv.return)
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0mCollected value for `cmd`
  Assignment asm ln 24338, prod ln 915.8, live ln 932, enc 6
  Concrete pointer resolves to .str.9, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xB003E4C9E55B68A4)
  %call5369 = phi i8* [ %13, %if.end38 ], [ %call5368, %cleanup ]
  Block: 0
  (w64 0xB003E4C9E55B68A4)
Collected value for `argv`
  Assignment asm ln 24340, prod ln 932.10, live ln 933, enc 10
  Concrete pointer resolves to run_argv.argv.deref.deref, offset (w64 0x0)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xAACFA374FFB4242E)
  %16 = load i8**, i8*** %argv.addr, !tbaa !97220, l932 c10
  (w64 0xAACFA374FFB4242E)
[0;1;31mKLEE: ERROR: git.c:933: reached "unreachable" instruction
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mKLEE: HaltTimer invoked
[0mKLEE: halting execution, dumping remaining states
[0m
🔔 Unable to execute all after instructions

🔔 Unable to execute all after program states

### Assignments

#### Collation

Filtering before assignments: `argc` (decl src ln 864)

Checking equivalence of `argc` (decl src ln 864) from
  assn asm ln 25756, prod ln 898.6, live ln 899, enc 1
  %14 = load i32, i32* %argc.addr, l898 c6
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
and
  assn asm ln 25697, prod ln 864.0, live ln 867, enc 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
Query to parse
array cmd_main.argc[4] : w32 -> w8 = symbolic
array cmd_main.argc[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) cmd_main.argc)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) cmd_main.argc)
     N0)
🔔 Removing: asm ln 25756, prod ln 898.6, live ln 899, enc 1

Checking equivalence of `argc` (decl src ln 864) from
  assn asm ln 25758, prod ln 898.6, live ln 899, enc 2
  %dec = add nsw i32 %14, -1, l898 c6
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) cmd_main.argc))
and
  assn asm ln 25697, prod ln 864.0, live ln 867, enc 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
Query to parse
array cmd_main.argc[4] : w32 -> w8 = symbolic
array cmd_main.argc[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0xFFFFFFFF)
              N0:(ReadLSB w32 (w32 0x0) cmd_main.argc))
     N0))
Parsed query
(Eq (Add w32 (w32 0xFFFFFFFF)
              N0:(ReadLSB w32 (w32 0x0) cmd_main.argc))
     N0)

Checking equivalence of `argc` (decl src ln 864) from
  assn asm ln 25744, prod ln 892.18, live ln 893, enc 3
  %10 = load i32, i32* %argc.addr, l892 c18
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
and
  assn asm ln 25758, prod ln 898.6, live ln 899, enc 2
  %dec = add nsw i32 %14, -1, l898 c6
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) cmd_main.argc))
Query to parse
array cmd_main.argc[4] : w32 -> w8 = symbolic
array cmd_main.argc[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) cmd_main.argc)
     (Add w32 (w32 0xFFFFFFFF) N0)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) cmd_main.argc)
     (Add w32 (w32 0xFFFFFFFF) N0))

Checking equivalence of `argc` (decl src ln 864) from
  assn asm ln 25760, prod ln 901.7, live ln 902, enc 4
  %15 = load i32, i32* %argc.addr, l901 c7
  (ReadLSB w32 (w32 0x0) handle_options.argc.deref)
and
  assn asm ln 25744, prod ln 892.18, live ln 893, enc 3
  %10 = load i32, i32* %argc.addr, l892 c18
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
Query to parse
array handle_options.argc.deref[4] : w32 -> w8 = symbolic
array cmd_main.argc[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) handle_options.argc.deref)
     (ReadLSB w32 (w32 0x0) cmd_main.argc)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) handle_options.argc.deref)
     (ReadLSB w32 (w32 0x0) cmd_main.argc))

Filtering before assignments: `argv` (decl src ln 864)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `argv` (decl src ln 864) assn asm ln 25814, prod ln 913.3, live ln 914, enc None has no symbolic value from %25 = load i8**, i8*** %argv.addr, l913 c3

Expected 1 symbolic value(s), got 0
❌ Before `argv` (decl src ln 864) assn asm ln 25814, prod ln 913.3, live ln 914, enc None has no symbolic value from %25 = load i8**, i8*** %argv.addr, l913 c3

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 25704, prod ln 869.8, live ln 870, enc 1
  %0 = load i8**, i8*** %argv.addr, l869 c8
  (w64 0x92BA4A64DEC532FD)
and
  assn asm ln 25699, prod ln 864.0, live ln 867, enc 0
  i8** %argv
  (w64 0x92BA4A64DEC532FD)
🔔 Removing: asm ln 25704, prod ln 869.8, live ln 870, enc 1

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 25732, prod ln 878.28, live ln 879, enc 2
  %6 = load i8**, i8*** %argv.addr, l878 c28
  (w64 0x92BA4A64DEC532FD)
and
  assn asm ln 25699, prod ln 864.0, live ln 867, enc 0
  i8** %argv
  (w64 0x92BA4A64DEC532FD)
🔔 Removing: asm ln 25732, prod ln 878.28, live ln 879, enc 2

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 25753, prod ln 897.6, live ln 898, enc 3
  %13 = load i8**, i8*** %argv.addr, l897 c6
  (w64 0x92BA4A64DEC532FD)
and
  assn asm ln 25699, prod ln 864.0, live ln 867, enc 0
  i8** %argv
  (w64 0x92BA4A64DEC532FD)
🔔 Removing: asm ln 25753, prod ln 897.6, live ln 898, enc 3

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 25755, prod ln 897.6, live ln 898, enc 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %13, i32 1, l897 c6
  (w64 0x14B219BE57D389F1)
and
  assn asm ln 25699, prod ln 864.0, live ln 867, enc 0
  i8** %argv
  (w64 0x92BA4A64DEC532FD)

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 25741, prod ln 891.3, live ln 892, enc 5
  %9 = load i8**, i8*** %argv.addr, l891 c3
  (w64 0x92BA4A64DEC532FD)
and
  assn asm ln 25755, prod ln 897.6, live ln 898, enc 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %13, i32 1, l897 c6
  (w64 0x14B219BE57D389F1)

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 25745, prod ln 892.24, live ln 893, enc 6
  %11 = load i8**, i8*** %argv.addr, l892 c24
  (w64 0x92BA4A64DEC532FD)
and
  assn asm ln 25741, prod ln 891.3, live ln 892, enc 5
  %9 = load i8**, i8*** %argv.addr, l891 c3
  (w64 0x92BA4A64DEC532FD)
🔔 Removing: asm ln 25745, prod ln 892.24, live ln 893, enc 6

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 25776, prod ln 910.27, live ln 911, enc 7
  %16 = load i8**, i8*** %argv.addr, l910 c27
  (w64 0x2CBE786E7EDBF201)
and
  assn asm ln 25741, prod ln 891.3, live ln 892, enc 5
  %9 = load i8**, i8*** %argv.addr, l891 c3
  (w64 0x92BA4A64DEC532FD)

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 25792, prod ln 911.3, live ln 912, enc 8
  %20 = load i8**, i8*** %argv.addr, l911 c3
  (w64 0x2CBE786E7EDBF201)
and
  assn asm ln 25776, prod ln 910.27, live ln 911, enc 7
  %16 = load i8**, i8*** %argv.addr, l910 c27
  (w64 0x2CBE786E7EDBF201)
🔔 Removing: asm ln 25792, prod ln 911.3, live ln 912, enc 8

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 25820, prod ln 915.8, live ln 916, enc 9
  %26 = load i8**, i8*** %argv.addr, l915 c8
  (w64 0x2CBE786E7EDBF201)
and
  assn asm ln 25776, prod ln 910.27, live ln 911, enc 7
  %16 = load i8**, i8*** %argv.addr, l910 c27
  (w64 0x2CBE786E7EDBF201)
🔔 Removing: asm ln 25820, prod ln 915.8, live ln 916, enc 9

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 25784, prod ln 910.53, live ln 911, enc 10
  %18 = load i8**, i8*** %argv.addr, l910 c53
  (w64 0x2CBE786E7EDBF201)
and
  assn asm ln 25776, prod ln 910.27, live ln 911, enc 7
  %16 = load i8**, i8*** %argv.addr, l910 c27
  (w64 0x2CBE786E7EDBF201)
🔔 Removing: asm ln 25784, prod ln 910.53, live ln 911, enc 10

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 25798, prod ln 912.29, live ln 913, enc 11
  %21 = load i8**, i8*** %argv.addr, l912 c29
  (w64 0x2CBE786E7EDBF201)
and
  assn asm ln 25776, prod ln 910.27, live ln 911, enc 7
  %16 = load i8**, i8*** %argv.addr, l910 c27
  (w64 0x2CBE786E7EDBF201)
🔔 Removing: asm ln 25798, prod ln 912.29, live ln 913, enc 11

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 25806, prod ln 912.55, live ln 913, enc 12
  %23 = load i8**, i8*** %argv.addr, l912 c55
  (w64 0x2CBE786E7EDBF201)
and
  assn asm ln 25776, prod ln 910.27, live ln 911, enc 7
  %16 = load i8**, i8*** %argv.addr, l910 c27
  (w64 0x2CBE786E7EDBF201)
🔔 Removing: asm ln 25806, prod ln 912.55, live ln 913, enc 12

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 25861, prod ln 936.10, live ln 937, enc 13
  %36 = load i8**, i8*** %argv.addr, l936 c10
  (w64 0xAACFA374FFB4242E)
and
  assn asm ln 25776, prod ln 910.27, live ln 911, enc 7
  %16 = load i8**, i8*** %argv.addr, l910 c27
  (w64 0x2CBE786E7EDBF201)

Filtering before assignments: `cmd` (decl src ln 866)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `cmd` (decl src ln 866) assn asm ln 25713, prod ln 871.7, live ln 872, enc None has no symbolic value from i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)

Expected 1 symbolic value(s), got 0
❌ Before `cmd` (decl src ln 866) assn asm ln 25713, prod ln 871.7, live ln 872, enc None has no symbolic value from i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 25708, prod ln 870.7, live ln 871, enc 1
  %2 = load i8*, i8** %cmd, l870 c7
  (w64 0xD1B2B1C57EF5C232)
and
  assn asm ln 25707, prod ln 869.8, live ln 870, enc 0
  %1 = load i8*, i8** %arrayidx, l869 c8
  (w64 0xD1B2B1C57EF5C232)
🔔 Removing: asm ln 25708, prod ln 870.7, live ln 871, enc 1

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 25718, prod ln 873.41, live ln 874, enc 2
  %3 = load i8*, i8** %cmd, l873 c41
  (w64 0xD1B2B1C57EF5C232)
and
  assn asm ln 25707, prod ln 869.8, live ln 870, enc 0
  %1 = load i8*, i8** %arrayidx, l869 c8
  (w64 0xD1B2B1C57EF5C232)
🔔 Removing: asm ln 25718, prod ln 873.41, live ln 874, enc 2

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 25728, prod ln 875.16, live ln 876, enc 3
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1, l875 c16
  (w64 0x3EFC1907150DE6ED)
and
  assn asm ln 25707, prod ln 869.8, live ln 870, enc 0
  %1 = load i8*, i8** %arrayidx, l869 c8
  (w64 0xD1B2B1C57EF5C232)

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 25734, prod ln 890.18, live ln 891, enc 4
  %7 = load i8*, i8** %cmd, l890 c18
  (w64 0x3EFC1907150DE6ED)
and
  assn asm ln 25728, prod ln 875.16, live ln 876, enc 3
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1, l875 c16
  (w64 0x3EFC1907150DE6ED)
🔔 Removing: asm ln 25734, prod ln 890.18, live ln 891, enc 4

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 25740, prod ln 891.13, live ln 892, enc 5
  %8 = load i8*, i8** %cmd, l891 c13
  (w64 0x8467E337196AF796)
and
  assn asm ln 25728, prod ln 875.16, live ln 876, enc 3
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1, l875 c16
  (w64 0x3EFC1907150DE6ED)

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 25748, prod ln 893.43, live ln 894, enc 6
  %12 = load i8*, i8** %cmd, l893 c43
  (w64 0x8467E337196AF796)
and
  assn asm ln 25740, prod ln 891.13, live ln 892, enc 5
  %8 = load i8*, i8** %cmd, l891 c13
  (w64 0x8467E337196AF796)
🔔 Removing: asm ln 25748, prod ln 893.43, live ln 894, enc 6

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 25823, prod ln 915.8, live ln 923, enc 7
  %27 = load i8*, i8** %arrayidx39, l915 c8
  (w64 0xB003E4C9E55B68A4)
and
  assn asm ln 25740, prod ln 891.13, live ln 892, enc 5
  %8 = load i8*, i8** %cmd, l891 c13
  (w64 0x8467E337196AF796)

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 25871, prod ln 943.3, live ln 944, enc 8
  %38 = load i8*, i8** %cmd, l943 c3
  (w64 0xB003E4C9E55B68A4)
and
  assn asm ln 25823, prod ln 915.8, live ln 923, enc 7
  %27 = load i8*, i8** %arrayidx39, l915 c8
  (w64 0xB003E4C9E55B68A4)
🔔 Removing: asm ln 25871, prod ln 943.3, live ln 944, enc 8

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 25859, prod ln 936.37, live ln 937, enc 9
  %35 = load i8*, i8** %cmd, l936 c37
  (w64 0xB003E4C9E55B68A4)
and
  assn asm ln 25823, prod ln 915.8, live ln 923, enc 7
  %27 = load i8*, i8** %arrayidx39, l915 c8
  (w64 0xB003E4C9E55B68A4)
🔔 Removing: asm ln 25859, prod ln 936.37, live ln 937, enc 9

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 25864, prod ln 936.20, live ln 937, enc 10
  %call53 = call i8* @help_unknown_cmd(i8* %35), l936 c20
  (w64 0xBBAED580D38F1CDC)
and
  assn asm ln 25823, prod ln 915.8, live ln 923, enc 7
  %27 = load i8*, i8** %arrayidx39, l915 c8
  (w64 0xB003E4C9E55B68A4)

Filtering before assignments: `done_help` (decl src ln 867)

Checking equivalence of `done_help` (decl src ln 867) from
  assn asm ln 25854, prod ln 935.8, live ln 936, enc 1
  %34 = load i32, i32* %done_help, l935 c8
  (w32 0x0)
and
  assn asm ln 25703, prod ln 867.6, live ln 869, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 25854, prod ln 935.8, live ln 936, enc 1

Checking equivalence of `done_help` (decl src ln 867) from
  assn asm ln 25865, prod ln 937.14, live ln 938, enc 2
  i32 1
  (w32 0x1)
and
  assn asm ln 25703, prod ln 867.6, live ln 869, enc 0
  i32 0
  (w32 0x0)

Filtering before assignments: `slash` (decl src ln 873)

Checking equivalence of `slash` (decl src ln 873) from
  assn asm ln 25721, prod ln 874.7, live ln 875, enc 1
  %4 = load i8*, i8** %slash, l874 c7
  (w64 0xCBA2640A075FC758)
and
  assn asm ln 25720, prod ln 873.23, live ln 874, enc 0
  %call = call i8* @git_find_last_dir_sep(i8* %3), l873 c23
  (w64 0xCBA2640A075FC758)
🔔 Removing: asm ln 25721, prod ln 874.7, live ln 875, enc 1

Checking equivalence of `slash` (decl src ln 873) from
  assn asm ln 25726, prod ln 875.10, live ln 876, enc 2
  %5 = load i8*, i8** %slash, l875 c10
  (w64 0xCBA2640A075FC758)
and
  assn asm ln 25720, prod ln 873.23, live ln 874, enc 0
  %call = call i8* @git_find_last_dir_sep(i8* %3), l873 c23
  (w64 0xCBA2640A075FC758)
🔔 Removing: asm ln 25726, prod ln 875.10, live ln 876, enc 2

Filtering before assignments: `was_alias` (decl src ln 926)

Checking equivalence of `was_alias` (decl src ln 926) from
  assn asm ln 25837, prod ln 929.7, live ln 930, enc 1
  %29 = load i32, i32* %was_alias, l929 c7
  (ReadLSB w32 (w32 0x0) run_argv.return)
and
  assn asm ln 25830, prod ln 926.19, live ln 927, enc 0
  %call40 = call i32 @run_argv(i32* %argc.addr, i8*** %argv.addr), l926 c19
  (ReadLSB w32 (w32 0x0) run_argv.return)
Query to parse
array run_argv.return[4] : w32 -> w8 = symbolic
array run_argv.return[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) run_argv.return)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) run_argv.return)
     N0)
🔔 Removing: asm ln 25837, prod ln 929.7, live ln 930, enc 1

Filtering after assignments: `argc` (decl src ln 864)

🔔 After `argc` (decl src ln 864) assn asm ln 24260, prod ln 898.6, live ln 899, enc None not debug meaningful, removing

🔔 After `argc` (decl src ln 864) assn asm ln 24196, prod ln 864.0, live ln 866, enc None not debug meaningful, removing

🔔 After `argc` (decl src ln 864) assn asm ln 24240, prod ln 892.18, live ln 893, enc None not debug meaningful, removing

🔔 After `argc` (decl src ln 864) assn asm ln 24256, prod ln 898.6, live ln 899, enc None not debug meaningful, removing

Checking equivalence of `argc` (decl src ln 864) from
  assn asm ln 24241, prod ln 892.18, live ln 893, enc 1
  %5 = load i32, i32* %argc.addr, !tbaa !97216, l892 c18
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
and
  assn asm ln 24195, prod ln 864.0, live ln 866, enc 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
Query to parse
array cmd_main.argc[4] : w32 -> w8 = symbolic
array cmd_main.argc[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) cmd_main.argc)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) cmd_main.argc)
     N0)
🔔 Removing: asm ln 24241, prod ln 892.18, live ln 893, enc 1

Checking equivalence of `argc` (decl src ln 864) from
  assn asm ln 24257, prod ln 898.6, live ln 899, enc 2
  %8 = load i32, i32* %argc.addr, !tbaa !97216, l898 c6
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
and
  assn asm ln 24195, prod ln 864.0, live ln 866, enc 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
Query to parse
array cmd_main.argc[4] : w32 -> w8 = symbolic
array cmd_main.argc[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) cmd_main.argc)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) cmd_main.argc)
     N0)
🔔 Removing: asm ln 24257, prod ln 898.6, live ln 899, enc 2

Checking equivalence of `argc` (decl src ln 864) from
  assn asm ln 24259, prod ln 898.6, live ln 899, enc 3
  %dec = add nsw i32 %8, -1, l898 c6
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) cmd_main.argc))
and
  assn asm ln 24195, prod ln 864.0, live ln 866, enc 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
Query to parse
array cmd_main.argc[4] : w32 -> w8 = symbolic
array cmd_main.argc[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0xFFFFFFFF)
              N0:(ReadLSB w32 (w32 0x0) cmd_main.argc))
     N0))
Parsed query
(Eq (Add w32 (w32 0xFFFFFFFF)
              N0:(ReadLSB w32 (w32 0x0) cmd_main.argc))
     N0)

Checking equivalence of `argc` (decl src ln 864) from
  assn asm ln 24264, prod ln 901.7, live ln 902, enc 4
  %9 = load i32, i32* %argc.addr, !tbaa !97216, l901 c7
  (ReadLSB w32 (w32 0x0) handle_options.argc.deref)
and
  assn asm ln 24259, prod ln 898.6, live ln 899, enc 3
  %dec = add nsw i32 %8, -1, l898 c6
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) cmd_main.argc))
Query to parse
array handle_options.argc.deref[4] : w32 -> w8 = symbolic
array cmd_main.argc[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) handle_options.argc.deref)
     (Add w32 (w32 0xFFFFFFFF)
              (ReadLSB w32 (w32 0x0) cmd_main.argc))))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) handle_options.argc.deref)
     (Add w32 (w32 0xFFFFFFFF)
              (ReadLSB w32 (w32 0x0) cmd_main.argc)))

Checking equivalence of `argc` (decl src ln 864) from
  assn asm ln 24265, prod ln 901.7, live ln 902, enc 5
  %9 = load i32, i32* %argc.addr, !tbaa !97216, l901 c7
  (ReadLSB w32 (w32 0x0) handle_options.argc.deref)
and
  assn asm ln 24264, prod ln 901.7, live ln 902, enc 4
  %9 = load i32, i32* %argc.addr, !tbaa !97216, l901 c7
  (ReadLSB w32 (w32 0x0) handle_options.argc.deref)
Query to parse
array handle_options.argc.deref[4] : w32 -> w8 = symbolic
array handle_options.argc.deref[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) handle_options.argc.deref)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) handle_options.argc.deref)
     N0)
🔔 Removing: asm ln 24265, prod ln 901.7, live ln 902, enc 5

Filtering after assignments: `argv` (decl src ln 864)

🔔 After `argv` (decl src ln 864) assn asm ln 24198, prod ln 864.0, live ln 866, enc None not debug meaningful, removing

🔔 After `argv` (decl src ln 864) assn asm ln 24237, prod ln 891.3, live ln 892, enc None not debug meaningful, removing

🔔 After `argv` (decl src ln 864) assn asm ln 24242, prod ln 892.24, live ln 893, enc None not debug meaningful, removing

🔔 After `argv` (decl src ln 864) assn asm ln 24251, prod ln 897.6, live ln 898, enc None not debug meaningful, removing

🔔 After `argv` (decl src ln 864) assn asm ln 24255, prod ln 897.6, live ln 898, enc None not debug meaningful, removing

🔔 After `argv` (decl src ln 864) assn asm ln 24309, prod ln 915.8, live ln 916, enc None not debug meaningful, removing

🔔 After `argv` (decl src ln 864) assn asm ln 24339, prod ln 932.10, live ln 933, enc None not debug meaningful, removing

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `argv` (decl src ln 864) assn asm ln 24354, prod ln 936.10, live ln 937, enc None has no symbolic value from %18 = load i8**, i8*** %argv.addr, !tbaa !97220, l936 c10

Expected 1 symbolic value(s), got 0
❌ After `argv` (decl src ln 864) assn asm ln 24354, prod ln 936.10, live ln 937, enc None has no symbolic value from %18 = load i8**, i8*** %argv.addr, !tbaa !97220, l936 c10

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 24201, prod ln 864.0, live ln 869, enc 1
  i8** %argv
  (w64 0x92BA4A64DEC532FD)
and
  assn asm ln 24197, prod ln 864.0, live ln 866, enc 0
  i8** %argv
  (w64 0x92BA4A64DEC532FD)
🔔 Removing: asm ln 24201, prod ln 864.0, live ln 869, enc 1

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 24226, prod ln 864.0, live ln 878, enc 2
  i8** %argv
  (w64 0x92BA4A64DEC532FD)
and
  assn asm ln 24197, prod ln 864.0, live ln 866, enc 0
  i8** %argv
  (w64 0x92BA4A64DEC532FD)
🔔 Removing: asm ln 24226, prod ln 864.0, live ln 878, enc 2

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 24252, prod ln 897.6, live ln 898, enc 3
  %7 = load i8**, i8*** %argv.addr, !tbaa !97220, l897 c6
  (w64 0x92BA4A64DEC532FD)
and
  assn asm ln 24197, prod ln 864.0, live ln 866, enc 0
  i8** %argv
  (w64 0x92BA4A64DEC532FD)
🔔 Removing: asm ln 24252, prod ln 897.6, live ln 898, enc 3

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 24238, prod ln 891.3, live ln 892, enc 4
  %4 = load i8**, i8*** %argv.addr, !tbaa !97220, l891 c3
  (w64 0x92BA4A64DEC532FD)
and
  assn asm ln 24197, prod ln 864.0, live ln 866, enc 0
  i8** %argv
  (w64 0x92BA4A64DEC532FD)
🔔 Removing: asm ln 24238, prod ln 891.3, live ln 892, enc 4

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 24254, prod ln 897.6, live ln 898, enc 5
  %incdec.ptr = getelementptr inbounds i8*, i8** %7, i64 1, l897 c6
  (w64 0x14B219BE57D389F1)
and
  assn asm ln 24197, prod ln 864.0, live ln 866, enc 0
  i8** %argv
  (w64 0x92BA4A64DEC532FD)

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 24243, prod ln 892.24, live ln 893, enc 6
  %6 = load i8**, i8*** %argv.addr, !tbaa !97220, l892 c24
  (w64 0x92BA4A64DEC532FD)
and
  assn asm ln 24254, prod ln 897.6, live ln 898, enc 5
  %incdec.ptr = getelementptr inbounds i8*, i8** %7, i64 1, l897 c6
  (w64 0x14B219BE57D389F1)

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 24281, prod ln 910.27, live ln 911, enc 7
  %10 = load i8**, i8*** %argv.addr, !tbaa !97220, l910 c27
  (w64 0x2CBE786E7EDBF201)
and
  assn asm ln 24243, prod ln 892.24, live ln 893, enc 6
  %6 = load i8**, i8*** %argv.addr, !tbaa !97220, l892 c24
  (w64 0x92BA4A64DEC532FD)

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 24282, prod ln 910.27, live ln 911, enc 8
  %10 = load i8**, i8*** %argv.addr, !tbaa !97220, l910 c27
  (w64 0x2CBE786E7EDBF201)
and
  assn asm ln 24281, prod ln 910.27, live ln 911, enc 7
  %10 = load i8**, i8*** %argv.addr, !tbaa !97220, l910 c27
  (w64 0x2CBE786E7EDBF201)
🔔 Removing: asm ln 24282, prod ln 910.27, live ln 911, enc 8

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 24310, prod ln 915.8, live ln 916, enc 9
  %12 = load i8**, i8*** %argv.addr, !tbaa !97220, l915 c8
  (w64 0x2CBE786E7EDBF201)
and
  assn asm ln 24281, prod ln 910.27, live ln 911, enc 7
  %10 = load i8**, i8*** %argv.addr, !tbaa !97220, l910 c27
  (w64 0x2CBE786E7EDBF201)
🔔 Removing: asm ln 24310, prod ln 915.8, live ln 916, enc 9

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 24340, prod ln 932.10, live ln 933, enc 10
  %16 = load i8**, i8*** %argv.addr, !tbaa !97220, l932 c10
  (w64 0xAACFA374FFB4242E)
and
  assn asm ln 24281, prod ln 910.27, live ln 911, enc 7
  %10 = load i8**, i8*** %argv.addr, !tbaa !97220, l910 c27
  (w64 0x2CBE786E7EDBF201)

Filtering after assignments: `done_help` (decl src ln 867)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `done_help` (decl src ln 867) assn asm ln 24365, prod ln 867.6, live ln 868, enc None has no symbolic value from %done_help.1 = phi i32 [ 1, %if.then52 ], [ %done_help.0, %while.cond ], [ 1, %if.end50 ]

Expected 1 symbolic value(s), got 0
❌ After `done_help` (decl src ln 867) assn asm ln 24365, prod ln 867.6, live ln 868, enc None has no symbolic value from %done_help.1 = phi i32 [ 1, %if.then52 ], [ %done_help.0, %while.cond ], [ 1, %if.end50 ]

Checking equivalence of `done_help` (decl src ln 867) from
  assn asm ln 24320, prod ln 867.0, live ln 926, enc 1
  %done_help.0 = phi i32 [ 0, %if.end38 ], [ %done_help.1, %cleanup ], l867 c6
  (w32 0x0)
and
  assn asm ln 24200, prod ln 867.0, live ln 869, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 24320, prod ln 867.0, live ln 926, enc 1

Filtering after assignments: `cmd` (decl src ln 866)

🔔 After `cmd` (decl src ln 866) assn asm ln 24335, prod ln 915.8, live ln 930, enc None not debug meaningful, removing

🔔 After `cmd` (decl src ln 866) assn asm ln 24313, prod ln 915.8, live ln 923, enc None not debug meaningful, removing

🔔 After `cmd` (decl src ln 866) assn asm ln 24228, prod ln 890.18, live ln 891, enc None not debug meaningful, removing

🔔 After `cmd` (decl src ln 866) assn asm ln 24222, prod ln 875.16, live ln 876, enc None not debug meaningful, removing

🔔 After `cmd` (decl src ln 866) assn asm ln 24204, prod ln 869.8, live ln 870, enc None not debug meaningful, removing

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `cmd` (decl src ln 866) assn asm ln 24209, prod ln 866.0, live ln 871, enc None has no symbolic value from i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `cmd` (decl src ln 866) assn asm ln 24352, prod ln 915.8, live ln 936, enc None has no symbolic value from %call5369 = phi i8* [ %13, %if.end38 ], [ %call5368, %cleanup ]

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `cmd` (decl src ln 866) assn asm ln 24369, prod ln 936.20, live ln 942, enc None has no symbolic value from %call5368 = phi i8* [ %call53, %if.then52 ], [ %call5369, %while.cond ], [ %call5369, %if.end50 ]

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `cmd` (decl src ln 866) assn asm ln 24357, prod ln 936.20, live ln 940, enc None has no symbolic value from %call53 = call i8* @help_unknown_cmd(i8* %call5369) #46, l936 c20

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `cmd` (decl src ln 866) assn asm ln 24372, prod ln 936.20, live ln 943, enc None has no symbolic value from %call5368 = phi i8* [ %call53, %if.then52 ], [ %call5369, %while.cond ], [ %call5369, %if.end50 ]

Expected 1 symbolic value(s), got 0
❌ After `cmd` (decl src ln 866) assn asm ln 24372, prod ln 936.20, live ln 943, enc None has no symbolic value from %call5368 = phi i8* [ %call53, %if.then52 ], [ %call5369, %while.cond ], [ %call5369, %if.end50 ]

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 24221, prod ln 875.16, live ln 876, enc 1
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1, l875 c16
  (w64 0x3EFC1907150DE6ED)
and
  assn asm ln 24203, prod ln 869.8, live ln 870, enc 0
  %1 = load i8*, i8** %argv, !tbaa !97220, l869 c8
  (w64 0xD1B2B1C57EF5C232)

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 24235, prod ln 891.13, live ln 892, enc 2
  %3 = load i8*, i8** %cmd, !tbaa !97220, l891 c13
  (w64 0x8467E337196AF796)
and
  assn asm ln 24221, prod ln 875.16, live ln 876, enc 1
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1, l875 c16
  (w64 0x3EFC1907150DE6ED)

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 24236, prod ln 891.13, live ln 892, enc 3
  %3 = load i8*, i8** %cmd, !tbaa !97220, l891 c13
  (w64 0x8467E337196AF796)
and
  assn asm ln 24235, prod ln 891.13, live ln 892, enc 2
  %3 = load i8*, i8** %cmd, !tbaa !97220, l891 c13
  (w64 0x8467E337196AF796)
🔔 Removing: asm ln 24236, prod ln 891.13, live ln 892, enc 3

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 24246, prod ln 891.13, live ln 893, enc 4
  %3 = load i8*, i8** %cmd, !tbaa !97220, l891 c13
  (w64 0x8467E337196AF796)
and
  assn asm ln 24235, prod ln 891.13, live ln 892, enc 2
  %3 = load i8*, i8** %cmd, !tbaa !97220, l891 c13
  (w64 0x8467E337196AF796)
🔔 Removing: asm ln 24246, prod ln 891.13, live ln 893, enc 4

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 24312, prod ln 915.8, live ln 916, enc 5
  %13 = load i8*, i8** %12, !tbaa !97220, l915 c8
  (w64 0xB003E4C9E55B68A4)
and
  assn asm ln 24235, prod ln 891.13, live ln 892, enc 2
  %3 = load i8*, i8** %cmd, !tbaa !97220, l891 c13
  (w64 0x8467E337196AF796)

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 24338, prod ln 915.8, live ln 932, enc 6
  %call5369 = phi i8* [ %13, %if.end38 ], [ %call5368, %cleanup ]
  (w64 0xB003E4C9E55B68A4)
and
  assn asm ln 24312, prod ln 915.8, live ln 916, enc 5
  %13 = load i8*, i8** %12, !tbaa !97220, l915 c8
  (w64 0xB003E4C9E55B68A4)
🔔 Removing: asm ln 24338, prod ln 915.8, live ln 932, enc 6

Collating encountered before assignments: `argc` (decl src ln 864)
  asm ln 25697, prod ln 864.0, live ln 867, enc 0
  asm ln 25758, prod ln 898.6, live ln 899, enc 1
  asm ln 25744, prod ln 892.18, live ln 893, enc 2
  asm ln 25760, prod ln 901.7, live ln 902, enc 3
Collating encountered before assignments: `argv` (decl src ln 864)
❌ Assignment asm ln 25845, prod ln 932.10, live ln 933, enc None for `argv` (decl src ln 864) was not encountered during execution
❌ Assignment asm ln 25814, prod ln 913.3, live ln 914, enc None for `argv` (decl src ln 864) was not encountered during execution
  asm ln 25699, prod ln 864.0, live ln 867, enc 0
  asm ln 25755, prod ln 897.6, live ln 898, enc 1
  asm ln 25741, prod ln 891.3, live ln 892, enc 2
  asm ln 25776, prod ln 910.27, live ln 911, enc 3
  asm ln 25861, prod ln 936.10, live ln 937, enc 4
Collating encountered before assignments: `cmd` (decl src ln 866)
❌ Assignment asm ln 25844, prod ln 932.5, live ln 933, enc None for `cmd` (decl src ln 866) was not encountered during execution
❌ Assignment asm ln 25713, prod ln 871.7, live ln 872, enc None for `cmd` (decl src ln 866) was not encountered during execution
  asm ln 25707, prod ln 869.8, live ln 870, enc 0
  asm ln 25728, prod ln 875.16, live ln 876, enc 1
  asm ln 25740, prod ln 891.13, live ln 892, enc 2
  asm ln 25823, prod ln 915.8, live ln 923, enc 3
  asm ln 25864, prod ln 936.20, live ln 937, enc 4
Collating encountered before assignments: `done_help` (decl src ln 867)
  asm ln 25703, prod ln 867.6, live ln 869, enc 0
  asm ln 25865, prod ln 937.14, live ln 938, enc 1
Collating encountered before assignments: `slash` (decl src ln 873)
  asm ln 25720, prod ln 873.23, live ln 874, enc 0
Collating encountered before assignments: `was_alias` (decl src ln 926)
  asm ln 25830, prod ln 926.19, live ln 927, enc 0

Collating encountered after assignments: `argc` (decl src ln 864)
  asm ln 24195, prod ln 864.0, live ln 866, enc 0
  asm ln 24259, prod ln 898.6, live ln 899, enc 1
  asm ln 24264, prod ln 901.7, live ln 902, enc 2
Collating encountered after assignments: `argv` (decl src ln 864)
❌ Assignment asm ln 24355, prod ln 936.10, live ln 937, enc None for `argv` (decl src ln 864) was not encountered during execution
❌ Assignment asm ln 24354, prod ln 936.10, live ln 937, enc None for `argv` (decl src ln 864) was not encountered during execution
  asm ln 24197, prod ln 864.0, live ln 866, enc 0
  asm ln 24254, prod ln 897.6, live ln 898, enc 1
  asm ln 24243, prod ln 892.24, live ln 893, enc 2
  asm ln 24281, prod ln 910.27, live ln 911, enc 3
  asm ln 24340, prod ln 932.10, live ln 933, enc 4
Collating encountered after assignments: `done_help` (decl src ln 867)
❌ Assignment asm ln 24358, prod ln 867.0, live ln 940, enc None for `done_help` (decl src ln 867) was not encountered during execution
❌ Assignment asm ln 24365, prod ln 867.6, live ln 868, enc None for `done_help` (decl src ln 867) was not encountered during execution
  asm ln 24200, prod ln 867.0, live ln 869, enc 0
Collating encountered after assignments: `cmd` (decl src ln 866)
❌ Assignment asm ln 24210, prod ln 871.7, live ln 872, enc None for `cmd` (decl src ln 866) was not encountered during execution
❌ Assignment asm ln 24209, prod ln 866.0, live ln 871, enc None for `cmd` (decl src ln 866) was not encountered during execution
❌ Assignment asm ln 24352, prod ln 915.8, live ln 936, enc None for `cmd` (decl src ln 866) was not encountered during execution
❌ Assignment asm ln 24369, prod ln 936.20, live ln 942, enc None for `cmd` (decl src ln 866) was not encountered during execution
❌ Assignment asm ln 24357, prod ln 936.20, live ln 940, enc None for `cmd` (decl src ln 866) was not encountered during execution
❌ Assignment asm ln 24372, prod ln 936.20, live ln 943, enc None for `cmd` (decl src ln 866) was not encountered during execution
  asm ln 24203, prod ln 869.8, live ln 870, enc 0
  asm ln 24221, prod ln 875.16, live ln 876, enc 1
  asm ln 24235, prod ln 891.13, live ln 892, enc 2
  asm ln 24312, prod ln 915.8, live ln 916, enc 3
Collating encountered after assignments: `slash` (decl src ln 873)
  asm ln 24215, prod ln 873.23, live ln 874, enc 0
Collating encountered after assignments: `was_alias` (decl src ln 926)
  asm ln 24324, prod ln 926.19, live ln 927, enc 0

#### Check after using before as reference

❌ Before encountered assn for `argc` (decl src ln 864) at asm ln 25760, prod ln 901.7, live ln 902, enc 3 not found in after

❌ Before `argc` (decl src ln 864) assn asm ln 25697, prod ln 864.0, live ln 867, enc 0 coordinates don't match after assn asm ln 24195, prod ln 864.0, live ln 866, enc 0
Checking equivalence of `argc` (decl src ln 864) from
  assn asm ln 24195, prod ln 864.0, live ln 866, enc 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
and
  assn asm ln 25697, prod ln 864.0, live ln 867, enc 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
Query to parse
array cmd_main.argc[4] : w32 -> w8 = symbolic
array cmd_main.argc[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) cmd_main.argc)
     (ReadLSB w32 (w32 0x0) cmd_main.argc)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) cmd_main.argc)
     N0)
✅ Before `argc` (decl src ln 864) assn asm ln 25697, prod ln 864.0, live ln 867, enc 0 symbolic value matches after assn asm ln 24195, prod ln 864.0, live ln 866, enc 0

Checking equivalence of `argc` (decl src ln 864) from
  assn asm ln 24259, prod ln 898.6, live ln 899, enc 1
  %dec = add nsw i32 %8, -1, l898 c6
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) cmd_main.argc))
and
  assn asm ln 25758, prod ln 898.6, live ln 899, enc 1
  %dec = add nsw i32 %14, -1, l898 c6
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) cmd_main.argc))
Query to parse
array cmd_main.argc[4] : w32 -> w8 = symbolic
array cmd_main.argc[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0xFFFFFFFF)
              (ReadLSB w32 (w32 0x0) cmd_main.argc))
     (Add w32 (w32 0xFFFFFFFF)
              (ReadLSB w32 (w32 0x0) cmd_main.argc))))
Parsed query
(Eq N0:(Add w32 (w32 0xFFFFFFFF)
                 (ReadLSB w32 (w32 0x0) cmd_main.argc))
     N0)
✅ Before `argc` (decl src ln 864) assn asm ln 25758, prod ln 898.6, live ln 899, enc 1 symbolic value matches after assn asm ln 24259, prod ln 898.6, live ln 899, enc 1

❌ Before `argc` (decl src ln 864) assn asm ln 25744, prod ln 892.18, live ln 893, enc 2 coordinates don't match after assn asm ln 24264, prod ln 901.7, live ln 902, enc 2
Checking equivalence of `argc` (decl src ln 864) from
  assn asm ln 24264, prod ln 901.7, live ln 902, enc 2
  %9 = load i32, i32* %argc.addr, !tbaa !97216, l901 c7
  (ReadLSB w32 (w32 0x0) handle_options.argc.deref)
and
  assn asm ln 25744, prod ln 892.18, live ln 893, enc 2
  %10 = load i32, i32* %argc.addr, l892 c18
  (ReadLSB w32 (w32 0x0) cmd_main.argc)
Query to parse
array handle_options.argc.deref[4] : w32 -> w8 = symbolic
array cmd_main.argc[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) handle_options.argc.deref)
     (ReadLSB w32 (w32 0x0) cmd_main.argc)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) handle_options.argc.deref)
     (ReadLSB w32 (w32 0x0) cmd_main.argc))
❌ Before `argc` (decl src ln 864) assn asm ln 25744, prod ln 892.18, live ln 893, enc 2 symbolic value doesn't match after assn asm ln 24264, prod ln 901.7, live ln 902, enc 2

❌ After `argc` assns checked using before as reference
Assignments:         argc
  Reference:         4
  Test:              3
Matching:
  Matching Coords:   1
  Matching Value:    2
Consistency Errors:
  Mismatched Coords: 2
  Mismatched Value:  1
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   1
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
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: false

❌ Before assn asm ln 25845, prod ln 932.10, live ln 933, enc None for `argv` (decl src ln 864) was not encountered during execution

❌ Before assn asm ln 25814, prod ln 913.3, live ln 914, enc None for `argv` (decl src ln 864) was not encountered during execution

❌ After assn asm ln 24355, prod ln 936.10, live ln 937, enc None for `argv` (decl src ln 864) was not encountered during execution

❌ After assn asm ln 24354, prod ln 936.10, live ln 937, enc None for `argv` (decl src ln 864) was not encountered during execution

❌ Before `argv` (decl src ln 864) assn asm ln 25699, prod ln 864.0, live ln 867, enc 0 coordinates don't match after assn asm ln 24197, prod ln 864.0, live ln 866, enc 0
Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 24197, prod ln 864.0, live ln 866, enc 0
  i8** %argv
  (w64 0x92BA4A64DEC532FD)
and
  assn asm ln 25699, prod ln 864.0, live ln 867, enc 0
  i8** %argv
  (w64 0x92BA4A64DEC532FD)
✅ Before `argv` (decl src ln 864) assn asm ln 25699, prod ln 864.0, live ln 867, enc 0 symbolic value matches after assn asm ln 24197, prod ln 864.0, live ln 866, enc 0

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 24254, prod ln 897.6, live ln 898, enc 1
  %incdec.ptr = getelementptr inbounds i8*, i8** %7, i64 1, l897 c6
  (w64 0x14B219BE57D389F1)
and
  assn asm ln 25755, prod ln 897.6, live ln 898, enc 1
  %incdec.ptr = getelementptr inbounds i8*, i8** %13, i32 1, l897 c6
  (w64 0x14B219BE57D389F1)
✅ Before `argv` (decl src ln 864) assn asm ln 25755, prod ln 897.6, live ln 898, enc 1 symbolic value matches after assn asm ln 24254, prod ln 897.6, live ln 898, enc 1

❌ Before `argv` (decl src ln 864) assn asm ln 25741, prod ln 891.3, live ln 892, enc 2 coordinates don't match after assn asm ln 24243, prod ln 892.24, live ln 893, enc 2
Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 24243, prod ln 892.24, live ln 893, enc 2
  %6 = load i8**, i8*** %argv.addr, !tbaa !97220, l892 c24
  (w64 0x92BA4A64DEC532FD)
and
  assn asm ln 25741, prod ln 891.3, live ln 892, enc 2
  %9 = load i8**, i8*** %argv.addr, l891 c3
  (w64 0x92BA4A64DEC532FD)
✅ Before `argv` (decl src ln 864) assn asm ln 25741, prod ln 891.3, live ln 892, enc 2 symbolic value matches after assn asm ln 24243, prod ln 892.24, live ln 893, enc 2

Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 24281, prod ln 910.27, live ln 911, enc 3
  %10 = load i8**, i8*** %argv.addr, !tbaa !97220, l910 c27
  (w64 0x2CBE786E7EDBF201)
and
  assn asm ln 25776, prod ln 910.27, live ln 911, enc 3
  %16 = load i8**, i8*** %argv.addr, l910 c27
  (w64 0x2CBE786E7EDBF201)
✅ Before `argv` (decl src ln 864) assn asm ln 25776, prod ln 910.27, live ln 911, enc 3 symbolic value matches after assn asm ln 24281, prod ln 910.27, live ln 911, enc 3

❌ Before `argv` (decl src ln 864) assn asm ln 25861, prod ln 936.10, live ln 937, enc 4 coordinates don't match after assn asm ln 24340, prod ln 932.10, live ln 933, enc 4
Checking equivalence of `argv` (decl src ln 864) from
  assn asm ln 24340, prod ln 932.10, live ln 933, enc 4
  %16 = load i8**, i8*** %argv.addr, !tbaa !97220, l932 c10
  (w64 0xAACFA374FFB4242E)
and
  assn asm ln 25861, prod ln 936.10, live ln 937, enc 4
  %36 = load i8**, i8*** %argv.addr, l936 c10
  (w64 0xAACFA374FFB4242E)
✅ Before `argv` (decl src ln 864) assn asm ln 25861, prod ln 936.10, live ln 937, enc 4 symbolic value matches after assn asm ln 24340, prod ln 932.10, live ln 933, enc 4

❌ After `argv` assns checked using before as reference
Assignments:         argv
  Reference:         7
  Test:              7
Matching:
  Matching Coords:   2
  Matching Value:    5
Consistency Errors:
  Mismatched Coords: 3
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  2
  Ref Not in Test:   0
  Test Not Encount.: 2
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
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: false

❌ Before assn asm ln 25844, prod ln 932.5, live ln 933, enc None for `cmd` (decl src ln 866) was not encountered during execution

❌ Before assn asm ln 25713, prod ln 871.7, live ln 872, enc None for `cmd` (decl src ln 866) was not encountered during execution

❌ Before encountered assn for `cmd` (decl src ln 866) at asm ln 25864, prod ln 936.20, live ln 937, enc 4 not found in after

❌ After assn asm ln 24210, prod ln 871.7, live ln 872, enc None for `cmd` (decl src ln 866) was not encountered during execution

❌ After assn asm ln 24209, prod ln 866.0, live ln 871, enc None for `cmd` (decl src ln 866) was not encountered during execution

❌ After assn asm ln 24352, prod ln 915.8, live ln 936, enc None for `cmd` (decl src ln 866) was not encountered during execution

❌ After assn asm ln 24369, prod ln 936.20, live ln 942, enc None for `cmd` (decl src ln 866) was not encountered during execution

❌ After assn asm ln 24357, prod ln 936.20, live ln 940, enc None for `cmd` (decl src ln 866) was not encountered during execution

❌ After assn asm ln 24372, prod ln 936.20, live ln 943, enc None for `cmd` (decl src ln 866) was not encountered during execution

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 24203, prod ln 869.8, live ln 870, enc 0
  %1 = load i8*, i8** %argv, !tbaa !97220, l869 c8
  (w64 0xD1B2B1C57EF5C232)
and
  assn asm ln 25707, prod ln 869.8, live ln 870, enc 0
  %1 = load i8*, i8** %arrayidx, l869 c8
  (w64 0xD1B2B1C57EF5C232)
✅ Before `cmd` (decl src ln 866) assn asm ln 25707, prod ln 869.8, live ln 870, enc 0 symbolic value matches after assn asm ln 24203, prod ln 869.8, live ln 870, enc 0

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 24221, prod ln 875.16, live ln 876, enc 1
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1, l875 c16
  (w64 0x3EFC1907150DE6ED)
and
  assn asm ln 25728, prod ln 875.16, live ln 876, enc 1
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1, l875 c16
  (w64 0x3EFC1907150DE6ED)
✅ Before `cmd` (decl src ln 866) assn asm ln 25728, prod ln 875.16, live ln 876, enc 1 symbolic value matches after assn asm ln 24221, prod ln 875.16, live ln 876, enc 1

Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 24235, prod ln 891.13, live ln 892, enc 2
  %3 = load i8*, i8** %cmd, !tbaa !97220, l891 c13
  (w64 0x8467E337196AF796)
and
  assn asm ln 25740, prod ln 891.13, live ln 892, enc 2
  %8 = load i8*, i8** %cmd, l891 c13
  (w64 0x8467E337196AF796)
✅ Before `cmd` (decl src ln 866) assn asm ln 25740, prod ln 891.13, live ln 892, enc 2 symbolic value matches after assn asm ln 24235, prod ln 891.13, live ln 892, enc 2

❌ Before `cmd` (decl src ln 866) assn asm ln 25823, prod ln 915.8, live ln 923, enc 3 coordinates don't match after assn asm ln 24312, prod ln 915.8, live ln 916, enc 3
Checking equivalence of `cmd` (decl src ln 866) from
  assn asm ln 24312, prod ln 915.8, live ln 916, enc 3
  %13 = load i8*, i8** %12, !tbaa !97220, l915 c8
  (w64 0xB003E4C9E55B68A4)
and
  assn asm ln 25823, prod ln 915.8, live ln 923, enc 3
  %27 = load i8*, i8** %arrayidx39, l915 c8
  (w64 0xB003E4C9E55B68A4)
✅ Before `cmd` (decl src ln 866) assn asm ln 25823, prod ln 915.8, live ln 923, enc 3 symbolic value matches after assn asm ln 24312, prod ln 915.8, live ln 916, enc 3

❌ After `cmd` assns checked using before as reference
Assignments:         cmd
  Reference:         7
  Test:              10
Matching:
  Matching Coords:   3
  Matching Value:    4
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  2
  Ref Not in Test:   1
  Test Not Encount.: 6
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
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: false

❌ Before encountered assn for `done_help` (decl src ln 867) at asm ln 25865, prod ln 937.14, live ln 938, enc 1 not found in after

❌ After assn asm ln 24358, prod ln 867.0, live ln 940, enc None for `done_help` (decl src ln 867) was not encountered during execution

❌ After assn asm ln 24365, prod ln 867.6, live ln 868, enc None for `done_help` (decl src ln 867) was not encountered during execution

Checking equivalence of `done_help` (decl src ln 867) from
  assn asm ln 24200, prod ln 867.0, live ln 869, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 25703, prod ln 867.6, live ln 869, enc 0
  i32 0
  (w32 0x0)
✅ Before `done_help` (decl src ln 867) assn asm ln 25703, prod ln 867.6, live ln 869, enc 0 symbolic value matches after assn asm ln 24200, prod ln 867.0, live ln 869, enc 0

❌ After `done_help` assns checked using before as reference
Assignments:         done_help
  Reference:         2
  Test:              3
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   1
  Test Not Encount.: 2
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
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: false

Checking equivalence of `slash` (decl src ln 873) from
  assn asm ln 24215, prod ln 873.23, live ln 874, enc 0
  %call = call fastcc i8* @git_find_last_dir_sep(i8* nonnull %1), l873 c23
  (w64 0xCBA2640A075FC758)
and
  assn asm ln 25720, prod ln 873.23, live ln 874, enc 0
  %call = call i8* @git_find_last_dir_sep(i8* %3), l873 c23
  (w64 0xCBA2640A075FC758)
✅ Before `slash` (decl src ln 873) assn asm ln 25720, prod ln 873.23, live ln 874, enc 0 symbolic value matches after assn asm ln 24215, prod ln 873.23, live ln 874, enc 0

✅ After `slash` assns checked using before as reference
Assignments:         slash
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
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: false

Checking equivalence of `was_alias` (decl src ln 926) from
  assn asm ln 24324, prod ln 926.19, live ln 927, enc 0
  %call40 = call fastcc i32 @run_argv(i32* nonnull %argc.addr, i8*** nonnull %argv.addr), l926 c19
  (ReadLSB w32 (w32 0x0) run_argv.return)
and
  assn asm ln 25830, prod ln 926.19, live ln 927, enc 0
  %call40 = call i32 @run_argv(i32* %argc.addr, i8*** %argv.addr), l926 c19
  (ReadLSB w32 (w32 0x0) run_argv.return)
Query to parse
array run_argv.return[4] : w32 -> w8 = symbolic
array run_argv.return[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) run_argv.return)
     (ReadLSB w32 (w32 0x0) run_argv.return)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) run_argv.return)
     N0)
✅ Before `was_alias` (decl src ln 926) assn asm ln 25830, prod ln 926.19, live ln 927, enc 0 symbolic value matches after assn asm ln 24324, prod ln 926.19, live ln 927, enc 0

✅ After `was_alias` assns checked using before as reference
Assignments:         was_alias
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
  Function Covered:  false
  Complete:          false
  Within Time Limit: false
  Within Fork Limit: false

## Summary

Assignments:
  Reference:                22
  Test:                     25 (113.64% of ref )
Matching:
  Matching Coords:           9 ( 40.91% of ref )
  Matching Value:           14 ( 63.64% of ref )
Consistency Errors:
  Mismatched Coords:         6 ( 27.27% of ref )
  Mismatched Value:          1 (  4.55% of ref )
Availability Errors:
  Ref Not Encount.:          4 ( 18.18% of ref )
  Ref Not in Test:           3 ( 13.64% of ref )
  Test Not Encount.:        10 ( 40.00% of test)
  Test Not in Ref:           0 (  0.00% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:          0 (  0.00% of ref )
  Complete:                  0 (  0.00% of ref )
  Within Time Limit:        22 (100.00% of ref )
  Within Fork Limit:         0 (  0.00% of ref )
Test Execution:
  Function Covered:          0 (  0.00% of test)
  Complete:                  0 (  0.00% of test)
  Within Time Limit:         0 (  0.00% of test)
  Within Fork Limit:         0 (  0.00% of test)

❌ Some consistency checks failed
