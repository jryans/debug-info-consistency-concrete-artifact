Analysing divergences…

Divergence analysis complete!

## Divergences by source coordinates

CoordinatesRemoved
  Before events:
    CF: decode_xform at list.c:96:19
  After events:
    CF: decode_xform at list.c:0:3
  Occurrences: 3

CoordinatesRemoved
  Before events:
    CF: name_gather at names.c:1214:3
  After events:
    CF: name_gather at names.c:0:0
  Occurrences: 1

CoordinatesRemoved
  Before events:
    CF: name_next_elt at names.c:1112:4
  After events:
    CF: name_next_elt at names.c:0:0
  Occurrences: 1

CoordinatesRemoved
  Before events:
    CF: parse_opt at tar.c:1773:7
  After events:
    CF: parse_opt at tar.c:0:0
  Occurrences: 1

CoordinatesRemoved
  Before events:
    CF: parser_parse_opt at argp-parse.c:736:21
  After events:
    CF: parser_parse_opt at argp-parse.c:0:0
  Occurrences: 4

LibraryCallReplaced
  Before events:
    CF: copy_name at names.c:1089:3
    CT: Jump to external code for ___strcpy_chk
    CF: Jump to external code for ___strcpy_chk
    CT: External code
    RF: Jump to external code for ___strcpy_chk
  After events:
    CF: copy_name at names.c:1089:3
    CT: Jump to external code for _strcpy
    CF: Jump to external code for _strcpy
    CT: External code
    RF: Jump to external code for _strcpy
  Occurrences: 1

LibraryCallReplaced
  Before events:
    CF: parser_init at argp-parse.c:506:3
    CT: Jump to external code for ___memset_chk
    CF: Jump to external code for ___memset_chk
    CT: External code
    RF: Jump to external code for ___memset_chk
  After events:
    CF: parser_init at argp-parse.c:506:3
    CT: Jump to external code for ___bzero
    CF: Jump to external code for ___bzero
    CT: External code
    RF: Jump to external code for ___bzero
  Occurrences: 1

LibraryCallReplaced
  Before events:
    CF: tar_stat_destroy at tar.c:2919:3
    CT: Jump to external code for ___memset_chk
    CF: Jump to external code for ___memset_chk
    CT: External code
    RF: Jump to external code for ___memset_chk
  After events:
    CF: tar_stat_destroy at tar.c:2919:3
    CT: Jump to external code for ___bzero
    CF: Jump to external code for ___bzero
    CT: External code
    RF: Jump to external code for ___bzero
  Occurrences: 6

LibraryCallRemoved
  Before events:
    CF: argp_parse at argp-parse.c:905:7
    CT: Jump to external code for ___memset_chk
    CF: Jump to external code for ___memset_chk
    CT: External code
    RF: Jump to external code for ___memset_chk
  Occurrences: 1

LibraryCallRemoved
  Before events:
    CF: argp_parse at argp-parse.c:908:7
    CT: Jump to external code for ___memset_chk
    CF: Jump to external code for ___memset_chk
    CT: External code
    RF: Jump to external code for ___memset_chk
  Occurrences: 1

LibraryCallRemoved
  Before events:
    CF: base64_init at list.c:71:3
    CT: Jump to external code for _memset
    CF: Jump to external code for _memset
    CT: External code
    RF: Jump to external code for _memset
  Occurrences: 1

LibraryCallRemoved
  Before events:
    CF: decode_options at tar.c:2284:19
    CT: Jump to external code for _memset
    CF: Jump to external code for _memset
    CT: External code
    RF: Jump to external code for _memset
  Occurrences: 1

LibraryCallRemoved
  Before events:
    CF: parser_init at argp-parse.c:464:23
    CT: Jump to external code for _memset
    CF: Jump to external code for _memset
    CT: External code
    RF: Jump to external code for _memset
  Occurrences: 1

LibraryCallRemoved
  Before events:
    CF: parser_init at argp-parse.c:504:22
    CT: Jump to external code for _memcpy
    CF: Jump to external code for _memcpy
    CT: External code
    RF: Jump to external code for _memcpy
  Occurrences: 1

LibraryCallRemoved
  Before events:
    CF: parser_init at argp-parse.c:509:3
    CT: Jump to external code for ___memset_chk
    CF: Jump to external code for ___memset_chk
    CT: External code
    RF: Jump to external code for ___memset_chk
  Occurrences: 1

LibraryCallRemoved
  Before events:
    CF: read_header at list.c:572:8
    CT: Jump to external code for ___memcpy_chk
    CF: Jump to external code for ___memcpy_chk
    CT: External code
    RF: Jump to external code for ___memcpy_chk
  Occurrences: 3

LibraryCallRemoved
  Before events:
    CF: read_header at list.c:593:8
    CT: Jump to external code for _memcpy
    CF: Jump to external code for _memcpy
    CT: External code
    RF: Jump to external code for _memcpy
  Occurrences: 3

LibraryCallRemoved
  Before events:
    CF: tar_sparse_init at sparse.c:105:3
    CT: Jump to external code for ___memset_chk
    CF: Jump to external code for ___memset_chk
    CT: External code
    RF: Jump to external code for ___memset_chk
  Occurrences: 6

LibraryCallRemoved
  Before events:
    CF: xattr_map_init at xattrs.c:51:3
    CT: Jump to external code for ___memset_chk
    CF: Jump to external code for ___memset_chk
    CT: External code
    RF: Jump to external code for ___memset_chk
  Occurrences: 3

ProgramCallRemoved
  Before events:
    CF: extract_file at extract.c:1281:31
    CT: set_xattr at extract.c:916:0
    RF: set_xattr at extract.c:928:3
  Occurrences: 3

ProgramCallRemoved
  Before events:
    CF: xcalloc at xmalloc.c:298:10
    CT: nonnull at xmalloc.c:34:0
    RF: nonnull at xmalloc.c:37:3
  Occurrences: 2

ProgramCallRemoved
  Before events:
    CF: xmalloc at xmalloc.c:45:10
    CT: nonnull at xmalloc.c:34:0
    RF: nonnull at xmalloc.c:37:3
  Occurrences: 28

Uncategorised
  Before events:
    CT: Jump to external code for ___memcpy_chk
    CF: Jump to external code for ___memcpy_chk
  After events:
    CT: Jump to external code for _memcpy
    CF: Jump to external code for _memcpy
  Occurrences: 22

Uncategorised
  Before events:
    RF: Jump to external code for ___memcpy_chk
  After events:
    RF: Jump to external code for _memcpy
  Occurrences: 22

## Divergences with unique coordinates by type

CoordinatesRemoved
  Unique divergence coordinates: 5

LibraryCallReplaced
  Unique divergence coordinates: 3

LibraryCallRemoved
  Unique divergence coordinates: 11

ProgramCallRemoved
  Unique divergence coordinates: 3

Uncategorised
  Unique divergence coordinates: 2

## Summary

24 unique divergence coordinates
117 divergence occurrences
