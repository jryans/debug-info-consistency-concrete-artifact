Analysing divergences…

Divergence analysis complete!

## Divergences by source coordinates

CoordinatesRemoved
  Before events:
    CF: _tr_flush_block at trees.c:979:9
  After events:
    CF: _tr_flush_block at trees.c:0:0
  Occurrences: 6

CoordinatesRemoved
  Before events:
    CF: _tr_flush_block at trees.c:988:9
  After events:
    CF: _tr_flush_block at trees.c:0:0
  Occurrences: 2

CoordinatesChangedSmall
  Before events:
    CT: bi_flush at trees.c:1175:0
  After events:
    CT: bi_flush at trees.c:1176:12
  Occurrences: 40

CoordinatesChangedSmall
  Before events:
    CT: bi_reverse at trees.c:1161:0
  After events:
    CT: bi_reverse at trees.c:1163:5
  Occurrences: 139

CoordinatesChangedSmall
  Before events:
    CT: bi_windup at trees.c:1192:0
  After events:
    CT: bi_windup at trees.c:1193:12
  Occurrences: 8

CoordinatesChangedSmall
  Before events:
    CT: crc32_z at crc32.c:206:0
  After events:
    CT: crc32_z at crc32.c:207:13
  Occurrences: 13

CoordinatesChangedSmall
  Before events:
    CT: slide_hash at deflate.c:203:0
  After events:
    CT: slide_hash at deflate.c:206:21
  Occurrences: 2

CoordinatesChangedSmall
  Before events:
    CT: zlibVersion at zutil.c:28:0
  After events:
    CT: zlibVersion at zutil.c:29:5
  Occurrences: 2

CoordinatesChangedSmall
  Before events:
    RF: inflate_fast at inffast.c:306:5
  After events:
    RF: inflate_fast at inffast.c:307:1
  Occurrences: 11

CoordinatesChangedLarge
  Before events:
    CT: fixedtables at inflate.c:280:0
  After events:
    CT: fixedtables at inflate.c:315:20
  Occurrences: 6

CoordinatesChangedLarge
  Before events:
    CT: zlibCompileFlags at zutil.c:33:0
  After events:
    CT: zlibCompileFlags at zutil.c:112:5
  Occurrences: 1

LibraryCallReplaced
  Before events:
    CF: test_large_inflate at example.c:368:9
    CT: Jump to external code for printf
    CF: Jump to external code for printf
    CT: External code
    RF: Jump to external code for printf
  After events:
    CF: test_large_inflate at example.c:368:9
    CT: Jump to external code for puts
    CF: Jump to external code for puts
    CT: External code
    RF: Jump to external code for puts
  Occurrences: 1

LibraryCallRemoved
  Before events:
    CF: test_compress at example.c:98:5
    CT: Jump to external code for strcpy
    CF: Jump to external code for strcpy
    CT: External code
    RF: Jump to external code for strcpy
  Occurrences: 1

LibraryCallRemoved
  Before events:
    CF: test_dict_inflate at example.c:501:5
    CT: Jump to external code for strcpy
    CF: Jump to external code for strcpy
    CT: External code
    RF: Jump to external code for strcpy
  Occurrences: 1

LibraryCallRemoved
  Before events:
    CF: test_gzio at example.c:149:5
    CT: Jump to external code for strcpy
    CF: Jump to external code for strcpy
    CT: External code
    RF: Jump to external code for strcpy
  Occurrences: 1

LibraryCallRemoved
  Before events:
    CF: test_inflate at example.c:245:5
    CT: Jump to external code for strcpy
    CF: Jump to external code for strcpy
    CT: External code
    RF: Jump to external code for strcpy
  Occurrences: 1

LibraryCallRemoved
  Before events:
    CF: test_large_inflate at example.c:341:5
    CT: Jump to external code for strcpy
    CF: Jump to external code for strcpy
    CT: External code
    RF: Jump to external code for strcpy
  Occurrences: 1

LibraryCallRemoved
  Before events:
    CF: test_sync at example.c:420:5
    CT: Jump to external code for strcpy
    CF: Jump to external code for strcpy
    CT: External code
    RF: Jump to external code for strcpy
  Occurrences: 1

ProgramCallRemoved
  Before events:
    CF: _tr_init at trees.c:382:5
    CT: tr_static_init at trees.c:233:0
    RF: tr_static_init at trees.c:312:1
  Occurrences: 7

## Divergences with unique coordinates by type

CoordinatesRemoved
  Unique divergence coordinates: 2

CoordinatesChangedSmall
  Unique divergence coordinates: 7

CoordinatesChangedLarge
  Unique divergence coordinates: 2

LibraryCallReplaced
  Unique divergence coordinates: 1

LibraryCallRemoved
  Unique divergence coordinates: 6

ProgramCallRemoved
  Unique divergence coordinates: 1

## Summary

19 unique divergence coordinates
244 divergence occurrences
