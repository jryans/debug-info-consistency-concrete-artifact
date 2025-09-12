## Divergences by source coordinates

Coordinates removed
  Before events:
    CF: sqlite3_free at src/malloc.c:420:5
  After events:
    CF: sqlite3_free at src/malloc.c:0:5
  Occurrences: 1

Coordinates removed
  Before events:
    CF: sqlite3_str_vappendf at src/printf.c:938:7
  After events:
    ICF: sqlite3_str_vappendf at src/printf.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: Sqlite3_Init at src/tclsqlite.c:4006:3
  After events:
    IRF: Sqlite3_Init at src/tclsqlite.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: SqlitetestOnefile_Init at src/test_onefile.c:830:33
  After events:
    RF: SqlitetestOnefile_Init at src/test_onefile.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: fs_register at src/test_onefile.c:827:1
  After events:
    IRF: fs_register at src/test_onefile.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: mallocWithAlarm at src/malloc.c:290:1
  After events:
    IRF: mallocWithAlarm at src/malloc.c:0:5
  Occurrences: 2

Coordinates removed
  Before events:
    RF: set_options at src/test_config.c:843:1
  After events:
    IRF: set_options at src/test_config.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: sqlite3AlterFunctions at src/alter.c:2328:1
  After events:
    RF: sqlite3AlterFunctions at src/alter.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: sqlite3FunctionSearch at src/callback.c:353:1
  After events:
    IRF: sqlite3FunctionSearch at src/callback.c:0:0
  Occurrences: 168

Coordinates removed
  Before events:
    RF: sqlite3MallocSize at src/malloc.c:367:3
  After events:
    IRF: sqlite3MallocSize at src/malloc.c:0:0
  Occurrences: 4

Coordinates removed
  Before events:
    RF: sqlite3MallocSize at src/malloc.c:367:3
  After events:
    IRF: sqlite3MallocSize at src/malloc.c:0:10
  Occurrences: 1

Coordinates removed
  Before events:
    RF: sqlite3MemFree at src/mem1.c:171:1
  After events:
    RF: sqlite3MemFree at src/mem1.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: sqlite3MemSetDefault at src/mem1.c:289:1
  After events:
    RF: sqlite3MemSetDefault at src/mem1.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: sqlite3MemdbInit at src/memdb.c:935:1
  After events:
    RF: sqlite3MemdbInit at src/memdb.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: sqlite3OsInit at src/os.c:350:1
  After events:
    RF: sqlite3OsInit at src/os.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: sqlite3PCacheSetDefault at src/pcache1.c:1209:1
  After events:
    RF: sqlite3PCacheSetDefault at src/pcache1.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: sqlite3PcacheInitialize at src/pcache.c:307:3
  After events:
    RF: sqlite3PcacheInitialize at src/pcache.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: sqlite3Realloc at src/malloc.c:578:1
  After events:
    RF: sqlite3Realloc at src/malloc.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: sqlite3RegisterBuiltinFunctions at src/func.c:2945:1
  After events:
    RF: sqlite3RegisterBuiltinFunctions at src/func.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: sqlite3RegisterDateTimeFunctions at src/date.c:1818:1
  After events:
    RF: sqlite3RegisterDateTimeFunctions at src/date.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: sqlite3RegisterJsonFunctions at src/json.c:5585:1
  After events:
    RF: sqlite3RegisterJsonFunctions at src/json.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: sqlite3WindowFunctions at src/window.c:629:1
  After events:
    RF: sqlite3WindowFunctions at src/window.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: sqlite3_free at src/malloc.c:425:1
  After events:
    RF: sqlite3_free at src/malloc.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: sqlite3_malloc at src/malloc.c:342:1
  After events:
    RF: sqlite3_malloc at src/malloc.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: sqlite3_realloc64 at src/malloc.c:596:1
  After events:
    RF: sqlite3_realloc64 at src/malloc.c:0:0
  Occurrences: 2

Coordinates removed
  Before events:
    RF: sqlite3_str_append at src/printf.c:1084:1
  After events:
    IRF: sqlite3_str_append at src/printf.c:0:0
  Occurrences: 1

Coordinates removed
  Before events:
    RF: vfsUnlink at src/os.c:401:1
  After events:
    IRF: vfsUnlink at src/os.c:0:0
  Occurrences: 6

Coordinates changed (small)
  Before events:
    CT: Fts5tcl_Init at ext/fts5/fts5_tcl.c:1737:0
  After events:
    CT: Fts5tcl_Init at ext/fts5/fts5_tcl.c:1738:3
  Occurrences: 1

Coordinates changed (small)
  Before events:
    CT: SqliteRbu_Init at ext/rbu/test_rbu.c:429:0
  After events:
    CT: SqliteRbu_Init at ext/rbu/test_rbu.c:429:41
  Occurrences: 1

Coordinates changed (small)
  Before events:
    CT: Sqlitetest4_Init at src/test4.c:736:0
  After events:
    CT: Sqlitetest4_Init at src/test4.c:736:43
  Occurrences: 1

Coordinates changed (small)
  Before events:
    CT: SqlitetestThread_Init at src/test_thread.c:660:0
  After events:
    CT: SqlitetestThread_Init at src/test_thread.c:661:3
  Occurrences: 1

Coordinates changed (small)
  Before events:
    CT: Sqlitetest_demovfs_Init at src/test_demovfs.c:680:0
  After events:
    CT: Sqlitetest_demovfs_Init at src/test_demovfs.c:680:50
  Occurrences: 1

Coordinates changed (small)
  Before events:
    CT: pcache1Init at src/pcache1.c:695:0
  After events:
    CT: pcache1Init at src/pcache1.c:698:3
  Occurrences: 1

Coordinates changed (small)
  Before events:
    CT: sqlite3FunctionSearch at src/callback.c:344:0
  After events:
    ICT: sqlite3FunctionSearch at src/callback.c:341:0
  Occurrences: 168

Coordinates changed (small)
  Before events:
    CT: sqlite3InsertBuiltinFuncs at src/callback.c:361:0
  After events:
    CT: sqlite3InsertBuiltinFuncs at src/callback.c:363:13
  Occurrences: 5

Coordinates changed (small)
  Before events:
    CT: sqlite3MemRoundup at src/mem1.c:232:0
  After events:
    CT: sqlite3MemRoundup at src/mem1.c:233:10
  Occurrences: 3

Coordinates changed (small)
  Before events:
    CT: sqlite3PCacheBufferSetup at src/pcache1.c:271:0
  After events:
    CT: sqlite3PCacheBufferSetup at src/pcache1.c:272:7
  Occurrences: 1

Coordinates changed (small)
  Before events:
    CT: sqlite3Strlen30 at src/util.c:92:0
  After events:
    CT: sqlite3Strlen30 at src/util.c:93:8
  Occurrences: 168

Coordinates changed (small)
  Before events:
    RF: sqlite3StrAccumInit at src/printf.c:1213:1
  After events:
    IRF: sqlite3StrAccumInit at src/printf.c:1210:12
  Occurrences: 1

Coordinates changed (small)
  Before events:
    RF: unixTempFileInit at src/os_unix.c:5990:1
  After events:
    IRF: unixTempFileInit at src/os_unix.c:5989:17
  Occurrences: 1

Coordinates changed (large)
  Before events:
    CT: Sqlitetestrtreedoc_Init at ext/rtree/test_rtreedoc.c:338:0
  After events:
    CT: Sqlitetestrtreedoc_Init at ext/rtree/test_rtreedoc.c:343:3
  Occurrences: 1

Coordinates changed (large)
  Before events:
    CT: Sqlitetestvdbecov_Init at src/test_vdbecov.c:109:0
  After events:
    CT: Sqlitetestvdbecov_Init at src/test_vdbecov.c:113:3
  Occurrences: 1

Coordinates changed (large)
  Before events:
    CT: sqlite3AlterFunctions at src/alter.c:2319:0
  After events:
    CT: sqlite3AlterFunctions at src/alter.c:2327:3
  Occurrences: 1

Coordinates changed (large)
  Before events:
    CT: sqlite3MemFree at src/mem1.c:162:0
  After events:
    CT: sqlite3MemFree at src/mem1.c:168:4
  Occurrences: 1

Coordinates changed (large)
  Before events:
    CT: sqlite3MemInit at src/mem1.c:239:0
  After events:
    CT: sqlite3MemInit at src/mem1.c:260:3
  Occurrences: 1

Coordinates changed (large)
  Before events:
    CT: sqlite3MemSetDefault at src/mem1.c:277:0
  After events:
    CT: sqlite3MemSetDefault at src/mem1.c:288:3
  Occurrences: 1

Coordinates changed (large)
  Before events:
    CT: sqlite3MemSize at src/mem1.c:177:0
  After events:
    CT: sqlite3MemSize at src/mem1.c:186:15
  Occurrences: 5

Coordinates changed (large)
  Before events:
    CT: sqlite3PCacheSetDefault at src/pcache1.c:1192:0
  After events:
    CT: sqlite3PCacheSetDefault at src/pcache1.c:1208:3
  Occurrences: 1

Coordinates changed (large)
  Before events:
    CT: sqlite3RegisterDateTimeFunctions at src/date.c:1795:0
  After events:
    CT: sqlite3RegisterDateTimeFunctions at src/date.c:1817:3
  Occurrences: 1

Coordinates changed (large)
  Before events:
    CT: sqlite3RegisterJsonFunctions at src/json.c:5526:0
  After events:
    CT: sqlite3RegisterJsonFunctions at src/json.c:5583:3
  Occurrences: 1

Coordinates changed (large)
  Before events:
    CT: sqlite3StatusDown at src/status.c:100:0
  After events:
    CT: sqlite3StatusDown at src/status.c:107:27
  Occurrences: 2

Coordinates changed (large)
  Before events:
    CT: sqlite3StatusHighwater at src/status.c:114:0
  After events:
    CT: sqlite3StatusHighwater at src/status.c:118:14
  Occurrences: 3

Coordinates changed (large)
  Before events:
    CT: sqlite3StatusUp at src/status.c:89:0
  After events:
    CT: sqlite3StatusUp at src/status.c:95:27
  Occurrences: 5

Coordinates changed (large)
  Before events:
    CT: sqlite3StatusValue at src/status.c:69:0
  After events:
    CT: sqlite3StatusValue at src/status.c:75:10
  Occurrences: 1

Coordinates changed (large)
  Before events:
    CT: sqlite3WindowFunctions at src/window.c:610:0
  After events:
    CT: sqlite3WindowFunctions at src/window.c:628:3
  Occurrences: 1

Library call removed
  Before events:
    CF: TestRecover_Init at ext/recover/test_recover.c:296:5
    CT: Jump to external code for memcpy
    RF: Jump to external code for memcpy
  Occurrences: 1

Library call removed
  Before events:
    CF: pcache1Init at src/pcache1.c:698:3
    CT: Jump to external code for memset
    RF: Jump to external code for memset
  Occurrences: 1

Library call removed
  Before events:
    CF: sqlite3_config at src/main.c:503:31
    CT: Jump to external code for memcpy
    RF: Jump to external code for memcpy
  Occurrences: 1

Library call removed
  Before events:
    CF: sqlite3_config at src/main.c:564:37
    CT: Jump to external code for memcpy
    RF: Jump to external code for memcpy
  Occurrences: 1

Library call removed
  Before events:
    CF: sqlite3_initialize at src/main.c:289:5
    CT: Jump to external code for memset
    RF: Jump to external code for memset
  Occurrences: 1

Program call removed
  Before events:
    CF: main at src/tclsqlite.c:4150:15
    CT: tclsh_main_loop at src/tclsqlite.c:4050:0
    RF: tclsh_main_loop at src/tclsqlite.c:4096:3
  Occurrences: 1

Program call removed
  Before events:
    CF: sqlite3Realloc at src/malloc.c:554:7
    CT: sqlite3MallocAlarm at src/malloc.c:217:0
    RF: sqlite3MallocAlarm at src/malloc.c:222:1
  Occurrences: 1

Uncategorised
  After events:
    ICT: fs_register at src/test_onefile.c:821:0
  Occurrences: 1

Uncategorised
  After events:
    IRF: fs_register at src/test_onefile.c:0:0
  Occurrences: 1

## Divergences with unique coordinates by type

Coordinates removed
  Unique divergence coordinates: 27
  Divergence countable events: 27

Coordinates changed (small)
  Unique divergence coordinates: 13
  Divergence countable events: 13

Coordinates changed (large)
  Unique divergence coordinates: 15
  Divergence countable events: 15

Library call removed
  Unique divergence coordinates: 5
  Divergence countable events: 15

Program call removed
  Unique divergence coordinates: 2
  Divergence countable events: 6

Uncategorised
  Unique divergence coordinates: 2
  Divergence countable events: 2

## Summary

64 unique divergence coordinates
592 divergence occurrences
