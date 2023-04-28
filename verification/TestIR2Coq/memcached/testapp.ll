; ModuleID = 'testapp.c'
source_filename = "testapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testcase = type { i8*, i32 ()* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.conn = type { i32, i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, i8*, i64)* }
%struct.cache_t = type { %union.pthread_mutex_t, i8*, %struct.cache_head, i64, i32, i32, i32, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.cache_head = type { %struct.cache_free_s*, %struct.cache_free_s** }
%struct.cache_free_s = type { %struct.anon }
%struct.anon = type { %struct.cache_free_s* }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct._prefix_stats = type { i8*, i64, i64, i64, i64, i64, %struct._prefix_stats* }
%union.anon.10 = type { %union.protocol_binary_request_no_extras, [1000 x i8] }
%union.protocol_binary_request_no_extras = type { %struct.anon.11 }
%struct.anon.11 = type { %union.protocol_binary_request_header }
%union.protocol_binary_request_header = type { %struct.anon.12 }
%struct.anon.12 = type { i8, i8, i16, i8, i8, i16, i32, i32, i64 }
%union.protocol_binary_response_no_extras = type { %struct.anon.13 }
%struct.anon.13 = type { %union.protocol_binary_response_header }
%union.protocol_binary_response_header = type { %struct.anon.14 }
%struct.anon.14 = type { i8, i8, i16, i8, i8, i16, i32, i32, i64 }
%union.anon.31 = type { %union.protocol_binary_request_no_extras, [1000 x i8] }
%union.anon.36 = type { %union.protocol_binary_request_no_extras, [1000 x i8] }
%union.anon.37 = type { %union.protocol_binary_request_no_extras, [1000 x i8] }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%union.anon.15 = type { %union.protocol_binary_request_no_extras, [1000 x i8] }
%union.anon.16 = type { %union.protocol_binary_request_no_extras, [1000 x i8] }
%union.anon.19 = type { %union.protocol_binary_request_no_extras, [1000 x i8] }
%union.anon.20 = type { %union.protocol_binary_request_no_extras, [1000 x i8] }
%union.anon.21 = type { %union.protocol_binary_request_no_extras, [1000 x i8] }
%union.anon.22 = type { %union.protocol_binary_request_no_extras, [1000 x i8] }
%union.anon.23 = type { %union.protocol_binary_request_no_extras, [1000 x i8] }
%union.anon.24 = type { %union.protocol_binary_request_no_extras, [1000 x i8] }
%union.anon.25 = type { %union.protocol_binary_response_incr, [992 x i8] }
%union.protocol_binary_response_incr = type { %struct.anon.26 }
%struct.anon.26 = type { %union.protocol_binary_response_header, %struct.anon.27 }
%struct.anon.27 = type { i64 }
%union.anon.30 = type { %union.protocol_binary_response_incr, [992 x i8] }
%union.anon.32 = type { %union.protocol_binary_request_no_extras, [1000 x i8] }
%union.anon.35 = type { %union.protocol_binary_request_no_extras, [1000 x i8] }
%union.anon.38 = type { %union.protocol_binary_request_no_extras, [66536 x i8] }

@.str = private unnamed_addr constant [13 x i8] c"cache_create\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cache_reuse\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"cache_redzone\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"cache_limit_revised_downward\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"stats_prefix_find\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"stats_prefix_record_get\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"stats_prefix_record_delete\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"stats_prefix_record_set\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"stats_prefix_dump\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"issue_161\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"strtol\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"strtoll\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"strtoul\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"strtoull\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"issue_44\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"vperror\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"issue_101\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"crc32c\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"start_server\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"issue_92\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"issue_102\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"binary_noop\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"binary_quit\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"binary_quitq\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"binary_set\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"binary_setq\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"binary_add\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"binary_addq\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"binary_replace\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"binary_replaceq\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"binary_delete\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"binary_deleteq\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"binary_get\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"binary_getq\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"binary_getk\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"binary_getkq\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"binary_gat\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"binary_gatq\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"binary_gatk\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"binary_gatkq\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"binary_incr\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"binary_incrq\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"binary_decr\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"binary_decrq\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"binary_version\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"binary_flush\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"binary_flushq\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"binary_append\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"binary_appendq\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"binary_prepend\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"binary_prependq\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"binary_stat\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"binary_illegal\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"binary_pipeline_hickup\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"stop_server\00", align 1
@testcases = dso_local local_unnamed_addr global [57 x %struct.testcase] [%struct.testcase { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 ()* @cache_create_test }, %struct.testcase { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 ()* @cache_reuse_test }, %struct.testcase { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 ()* @cache_redzone_test }, %struct.testcase { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i32 ()* @cache_limit_revised_downward_test }, %struct.testcase { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 ()* @test_stats_prefix_find }, %struct.testcase { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i32 ()* @test_stats_prefix_record_get }, %struct.testcase { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 ()* @test_stats_prefix_record_delete }, %struct.testcase { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i32 ()* @test_stats_prefix_record_set }, %struct.testcase { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 ()* @test_stats_prefix_dump }, %struct.testcase { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 ()* @test_issue_161 }, %struct.testcase { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 ()* @test_safe_strtol }, %struct.testcase { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 ()* @test_safe_strtoll }, %struct.testcase { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 ()* @test_safe_strtoul }, %struct.testcase { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 ()* @test_safe_strtoull }, %struct.testcase { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 ()* @test_issue_44 }, %struct.testcase { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 ()* @test_vperror }, %struct.testcase { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 ()* @test_issue_101 }, %struct.testcase { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 ()* @test_crc32c }, %struct.testcase { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 ()* @start_memcached_server }, %struct.testcase { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 ()* @test_issue_92 }, %struct.testcase { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 ()* @test_issue_102 }, %struct.testcase { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 ()* @test_binary_noop }, %struct.testcase { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 ()* @test_binary_quit }, %struct.testcase { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i32 ()* @test_binary_quitq }, %struct.testcase { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 ()* @test_binary_set }, %struct.testcase { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 ()* @test_binary_setq }, %struct.testcase { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 ()* @test_binary_add }, %struct.testcase { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 ()* @test_binary_addq }, %struct.testcase { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i32 ()* @test_binary_replace }, %struct.testcase { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i32 ()* @test_binary_replaceq }, %struct.testcase { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 ()* @test_binary_delete }, %struct.testcase { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 ()* @test_binary_deleteq }, %struct.testcase { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 ()* @test_binary_get }, %struct.testcase { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 ()* @test_binary_getq }, %struct.testcase { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i32 ()* @test_binary_getk }, %struct.testcase { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 ()* @test_binary_getkq }, %struct.testcase { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 ()* @test_binary_gat }, %struct.testcase { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 ()* @test_binary_gatq }, %struct.testcase { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i32 ()* @test_binary_gatk }, %struct.testcase { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i32 ()* @test_binary_gatkq }, %struct.testcase { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i32 ()* @test_binary_incr }, %struct.testcase { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i32 ()* @test_binary_incrq }, %struct.testcase { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i32 ()* @test_binary_decr }, %struct.testcase { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i32 ()* @test_binary_decrq }, %struct.testcase { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i32 ()* @test_binary_version }, %struct.testcase { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i32 ()* @test_binary_flush }, %struct.testcase { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), i32 ()* @test_binary_flushq }, %struct.testcase { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i32 ()* @test_binary_append }, %struct.testcase { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i32 ()* @test_binary_appendq }, %struct.testcase { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i32 ()* @test_binary_prepend }, %struct.testcase { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i32 ()* @test_binary_prependq }, %struct.testcase { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i32 ()* @test_binary_stat }, %struct.testcase { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i32 ()* @test_binary_illegal }, %struct.testcase { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i32 0, i32 0), i32 ()* @test_binary_pipeline_hickup }, %struct.testcase { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 ()* @shutdown_memcached_server }, %struct.testcase { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i32 ()* @stop_memcached_server }, %struct.testcase zeroinitializer], align 16, !dbg !0
@hash = dso_local local_unnamed_addr global i32 (i8*, i64)* null, align 8, !dbg !157
@.str.56 = private unnamed_addr constant [7 x i8] c"1..%d\0A\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.57 = private unnamed_addr constant [19 x i8] c"ok # SKIP %d - %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"ok %d - %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"not ok %d - %s\0A\00", align 1
@hickup_thread_running = dso_local global i8 0, align 1, !dbg !166
@.str.60 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"cache != NULL\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"testapp.c\00", align 1
@__PRETTY_FUNCTION__.cache_create_test = private unnamed_addr constant [41 x i8] c"enum test_return cache_create_test(void)\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"p == ptr\00", align 1
@__PRETTY_FUNCTION__.cache_reuse_test = private unnamed_addr constant [40 x i8] c"enum test_return cache_reuse_test(void)\00", align 1
@cache_error = external dso_local local_unnamed_addr global i32, align 4
@.str.64 = private unnamed_addr constant [18 x i8] c"cache_error == -1\00", align 1
@__PRETTY_FUNCTION__.cache_redzone_test = private unnamed_addr constant [42 x i8] c"enum test_return cache_redzone_test(void)\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"cache_error == 1\00", align 1
@__PRETTY_FUNCTION__.cache_limit_revised_downward_test = private unnamed_addr constant [57 x i8] c"enum test_return cache_limit_revised_downward_test(void)\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"alloc_objs[i] != NULL\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"cache->total == allocated_num\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"cache->total == allocated_num-1\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"pfs1 == NULL\00", align 1
@__PRETTY_FUNCTION__.test_stats_prefix_find = private unnamed_addr constant [46 x i8] c"enum test_return test_stats_prefix_find(void)\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"abc|\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"abc:\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"pfs1 != NULL\00", align 1
@.str.74 = private unnamed_addr constant [79 x i8] c"0ULL == (pfs1->num_gets + pfs1->num_sets + pfs1->num_deletes + pfs1->num_hits)\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"pfs1 == pfs2\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"abc:d\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"xyz123:\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"pfs1 != pfs2\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"ab:\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"abc:123\00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"1 == pfs->num_gets\00", align 1
@__PRETTY_FUNCTION__.test_stats_prefix_record_get = private unnamed_addr constant [52 x i8] c"enum test_return test_stats_prefix_record_get(void)\00", align 1
@.str.82 = private unnamed_addr constant [19 x i8] c"0 == pfs->num_hits\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"abc:456\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"2 == pfs->num_gets\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"3 == pfs->num_gets\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"1 == pfs->num_hits\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"def:\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"0 == pfs->num_gets\00", align 1
@__PRETTY_FUNCTION__.test_stats_prefix_record_delete = private unnamed_addr constant [55 x i8] c"enum test_return test_stats_prefix_record_delete(void)\00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"1 == pfs->num_deletes\00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c"0 == pfs->num_sets\00", align 1
@__PRETTY_FUNCTION__.test_stats_prefix_record_set = private unnamed_addr constant [52 x i8] c"enum test_return test_stats_prefix_record_set(void)\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"0 == pfs->num_deletes\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"1 == pfs->num_sets\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"END\0D\0A\00", align 1
@.str.94 = private unnamed_addr constant [59 x i8] c"strcmp(\22END\\r\\n\22, (buf = stats_prefix_dump(&length))) == 0\00", align 1
@__PRETTY_FUNCTION__.test_stats_prefix_dump = private unnamed_addr constant [46 x i8] c"enum test_return test_stats_prefix_dump(void)\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"5 == length\00", align 1
@.str.96 = private unnamed_addr constant [42 x i8] c"PREFIX abc get 0 hit 0 set 1 del 0\0D\0AEND\0D\0A\00", align 1
@.str.97 = private unnamed_addr constant [58 x i8] c"strcmp(expected, (buf = stats_prefix_dump(&length))) == 0\00", align 1
@.str.98 = private unnamed_addr constant [27 x i8] c"strlen(expected) == length\00", align 1
@.str.99 = private unnamed_addr constant [42 x i8] c"PREFIX abc get 1 hit 0 set 1 del 0\0D\0AEND\0D\0A\00", align 1
@.str.100 = private unnamed_addr constant [42 x i8] c"PREFIX abc get 2 hit 1 set 1 del 0\0D\0AEND\0D\0A\00", align 1
@.str.101 = private unnamed_addr constant [42 x i8] c"PREFIX abc get 2 hit 1 set 1 del 1\0D\0AEND\0D\0A\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"def:123\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"PREFIX abc get 2 hit 1 set 1 del 1\0D\0A\00", align 1
@.str.104 = private unnamed_addr constant [62 x i8] c"strstr(buf, \22PREFIX abc get 2 hit 1 set 1 del 1\\r\\n\22) != NULL\00", align 1
@.str.105 = private unnamed_addr constant [37 x i8] c"PREFIX def get 0 hit 0 set 0 del 1\0D\0A\00", align 1
@.str.106 = private unnamed_addr constant [62 x i8] c"strstr(buf, \22PREFIX def get 0 hit 0 set 0 del 1\\r\\n\22) != NULL\00", align 1
@.str.107 = private unnamed_addr constant [31 x i8] c"strstr(buf, \22END\\r\\n\22) != NULL\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"found_match\00", align 1
@.str.110 = private unnamed_addr constant [36 x i8] c"PREFIX %d get 0 hit 0 set 1 del 0\0D\0A\00", align 1
@.str.111 = private unnamed_addr constant [25 x i8] c"strstr(buf, tmp) != NULL\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"ptr[ii] != 0\00", align 1
@__PRETTY_FUNCTION__.cache_bulkalloc = private unnamed_addr constant [41 x i8] c"enum test_return cache_bulkalloc(size_t)\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.114 = private unnamed_addr constant [25 x i8] c"safe_strtol(\22123\22, &val)\00", align 1
@__PRETTY_FUNCTION__.test_safe_strtol = private unnamed_addr constant [40 x i8] c"enum test_return test_safe_strtol(void)\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"val == 123\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"+123\00", align 1
@.str.117 = private unnamed_addr constant [26 x i8] c"safe_strtol(\22+123\22, &val)\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"-123\00", align 1
@.str.119 = private unnamed_addr constant [26 x i8] c"safe_strtol(\22-123\22, &val)\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"val == -123\00", align 1
@.str.121 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.122 = private unnamed_addr constant [23 x i8] c"!safe_strtol(\22\22, &val)\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"123BOGUS\00", align 1
@.str.124 = private unnamed_addr constant [31 x i8] c"!safe_strtol(\22123BOGUS\22, &val)\00", align 1
@.str.125 = private unnamed_addr constant [27 x i8] c"92837498237498237498029383\00", align 1
@.str.126 = private unnamed_addr constant [49 x i8] c"!safe_strtol(\2292837498237498237498029383\22, &val)\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c" issue221\00", align 1
@.str.128 = private unnamed_addr constant [32 x i8] c"!safe_strtol(\22 issue221\22, &val)\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"2147483647\00", align 1
@.str.130 = private unnamed_addr constant [32 x i8] c"safe_strtol(\222147483647\22, &val)\00", align 1
@.str.131 = private unnamed_addr constant [19 x i8] c"val == 2147483647L\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c" 123 foo\00", align 1
@.str.133 = private unnamed_addr constant [30 x i8] c"safe_strtol(\22 123 foo\22, &val)\00", align 1
@.str.134 = private unnamed_addr constant [26 x i8] c"safe_strtoll(\22123\22, &val)\00", align 1
@__PRETTY_FUNCTION__.test_safe_strtoll = private unnamed_addr constant [41 x i8] c"enum test_return test_safe_strtoll(void)\00", align 1
@.str.135 = private unnamed_addr constant [27 x i8] c"safe_strtoll(\22+123\22, &val)\00", align 1
@.str.136 = private unnamed_addr constant [27 x i8] c"safe_strtoll(\22-123\22, &val)\00", align 1
@.str.137 = private unnamed_addr constant [24 x i8] c"!safe_strtoll(\22\22, &val)\00", align 1
@.str.138 = private unnamed_addr constant [32 x i8] c"!safe_strtoll(\22123BOGUS\22, &val)\00", align 1
@.str.139 = private unnamed_addr constant [50 x i8] c"!safe_strtoll(\2292837498237498237498029383\22, &val)\00", align 1
@.str.140 = private unnamed_addr constant [33 x i8] c"!safe_strtoll(\22 issue221\22, &val)\00", align 1
@.str.141 = private unnamed_addr constant [21 x i8] c"18446744073709551615\00", align 1
@.str.142 = private unnamed_addr constant [44 x i8] c"!safe_strtoll(\2218446744073709551615\22, &val)\00", align 1
@.str.143 = private unnamed_addr constant [20 x i8] c"9223372036854775807\00", align 1
@.str.144 = private unnamed_addr constant [42 x i8] c"safe_strtoll(\229223372036854775807\22, &val)\00", align 1
@.str.145 = private unnamed_addr constant [29 x i8] c"val == 9223372036854775807LL\00", align 1
@.str.146 = private unnamed_addr constant [21 x i8] c"-9223372036854775809\00", align 1
@.str.147 = private unnamed_addr constant [44 x i8] c"!safe_strtoll(\22-9223372036854775809\22, &val)\00", align 1
@.str.148 = private unnamed_addr constant [31 x i8] c"safe_strtoll(\22 123 foo\22, &val)\00", align 1
@.str.149 = private unnamed_addr constant [26 x i8] c"safe_strtoul(\22123\22, &val)\00", align 1
@__PRETTY_FUNCTION__.test_safe_strtoul = private unnamed_addr constant [41 x i8] c"enum test_return test_safe_strtoul(void)\00", align 1
@.str.150 = private unnamed_addr constant [27 x i8] c"safe_strtoul(\22+123\22, &val)\00", align 1
@.str.151 = private unnamed_addr constant [24 x i8] c"!safe_strtoul(\22\22, &val)\00", align 1
@.str.152 = private unnamed_addr constant [32 x i8] c"!safe_strtoul(\22123BOGUS\22, &val)\00", align 1
@.str.153 = private unnamed_addr constant [33 x i8] c"!safe_strtoul(\22 issue221\22, &val)\00", align 1
@.str.154 = private unnamed_addr constant [11 x i8] c"4294967295\00", align 1
@.str.155 = private unnamed_addr constant [33 x i8] c"safe_strtoul(\224294967295\22, &val)\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"val == 4294967295L\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.158 = private unnamed_addr constant [26 x i8] c"!safe_strtoul(\22-1\22, &val)\00", align 1
@.str.159 = private unnamed_addr constant [27 x i8] c"safe_strtoull(\22123\22, &val)\00", align 1
@__PRETTY_FUNCTION__.test_safe_strtoull = private unnamed_addr constant [42 x i8] c"enum test_return test_safe_strtoull(void)\00", align 1
@.str.160 = private unnamed_addr constant [28 x i8] c"safe_strtoull(\22+123\22, &val)\00", align 1
@.str.161 = private unnamed_addr constant [25 x i8] c"!safe_strtoull(\22\22, &val)\00", align 1
@.str.162 = private unnamed_addr constant [33 x i8] c"!safe_strtoull(\22123BOGUS\22, &val)\00", align 1
@.str.163 = private unnamed_addr constant [51 x i8] c"!safe_strtoull(\2292837498237498237498029383\22, &val)\00", align 1
@.str.164 = private unnamed_addr constant [34 x i8] c"!safe_strtoull(\22 issue221\22, &val)\00", align 1
@.str.165 = private unnamed_addr constant [44 x i8] c"safe_strtoull(\2218446744073709551615\22, &val)\00", align 1
@.str.166 = private unnamed_addr constant [31 x i8] c"val == 18446744073709551615ULL\00", align 1
@.str.167 = private unnamed_addr constant [21 x i8] c"18446744073709551616\00", align 1
@.str.168 = private unnamed_addr constant [45 x i8] c"!safe_strtoull(\2218446744073709551616\22, &val)\00", align 1
@.str.169 = private unnamed_addr constant [27 x i8] c"!safe_strtoull(\22-1\22, &val)\00", align 1
@.str.170 = private unnamed_addr constant [23 x i8] c"kill(pid, SIGHUP) == 0\00", align 1
@__PRETTY_FUNCTION__.test_issue_44 = private unnamed_addr constant [37 x i8] c"enum test_return test_issue_44(void)\00", align 1
@.str.171 = private unnamed_addr constant [24 x i8] c"kill(pid, SIGTERM) == 0\00", align 1
@.str.172 = private unnamed_addr constant [39 x i8] c"MEMCACHED_PORT_FILENAME=/tmp/ports.%lu\00", align 1
@.str.173 = private unnamed_addr constant [25 x i8] c"MEMCACHED_PORT_FILENAME=\00", align 1
@.str.174 = private unnamed_addr constant [13 x i8] c"/tmp/pid.%lu\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"pid != -1\00", align 1
@__PRETTY_FUNCTION__.start_server = private unnamed_addr constant [44 x i8] c"pid_t start_server(in_port_t *, _Bool, int)\00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"./timedrun\00", align 1
@.str.178 = private unnamed_addr constant [18 x i8] c"./memcached-debug\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c"-U\00", align 1
@.str.182 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.183 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.184 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.185 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.186 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.187 = private unnamed_addr constant [27 x i8] c"execv(argv[0], argv) != -1\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.188 = private unnamed_addr constant [39 x i8] c"Failed to start the memcached server.\0A\00", align 1
@.str.189 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.190 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.191 = private unnamed_addr constant [53 x i8] c"Failed to open the file containing port numbers: %s\0A\00", align 1
@.str.192 = private unnamed_addr constant [11 x i8] c"TCP INET: \00", align 1
@.str.193 = private unnamed_addr constant [31 x i8] c"safe_strtol(buffer + 10, &val)\00", align 1
@.str.194 = private unnamed_addr constant [22 x i8] c"remove(filename) == 0\00", align 1
@.str.195 = private unnamed_addr constant [29 x i8] c"Failed to open pid file: %s\0A\00", align 1
@.str.196 = private unnamed_addr constant [26 x i8] c"safe_strtol(buffer, &val)\00", align 1
@.str.197 = private unnamed_addr constant [15 x i8] c"oldstderr >= 0\00", align 1
@__PRETTY_FUNCTION__.test_vperror = private unnamed_addr constant [36 x i8] c"enum test_return test_vperror(void)\00", align 1
@.str.198 = private unnamed_addr constant [23 x i8] c"/tmp/test_file.XXXXXXX\00", align 1
@.str.199 = private unnamed_addr constant [12 x i8] c"newfile > 0\00", align 1
@.str.200 = private unnamed_addr constant [20 x i8] c"rv == STDERR_FILENO\00", align 1
@.str.201 = private unnamed_addr constant [8 x i8] c"rv == 0\00", align 1
@.str.202 = private unnamed_addr constant [29 x i8] c"Old McDonald had a farm.  %s\00", align 1
@.str.203 = private unnamed_addr constant [7 x i8] c"EI EIO\00", align 1
@.str.204 = private unnamed_addr constant [6 x i8] c"efile\00", align 1
@.str.205 = private unnamed_addr constant [4 x i8] c"prv\00", align 1
@.str.206 = private unnamed_addr constant [38 x i8] c"Old McDonald had a farm.  EI EIO: %s\0A\00", align 1
@.str.207 = private unnamed_addr constant [14 x i8] c"SKIP_TEST_101\00", align 1
@.str.208 = private unnamed_addr constant [36 x i8] c"stats\0D\0Astats\0D\0Astats\0D\0Astats\0D\0Astats\0D\0A\00", align 1
@port = internal global i16 0, align 2, !dbg !169
@server_pid = internal unnamed_addr global i32 0, align 4, !dbg !171
@.str.209 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.210 = private unnamed_addr constant [10 x i8] c"conns[ii]\00", align 1
@__PRETTY_FUNCTION__.test_issue_101 = private unnamed_addr constant [38 x i8] c"enum test_return test_issue_101(void)\00", align 1
@.str.211 = private unnamed_addr constant [20 x i8] c"conns[ii]->sock > 0\00", align 1
@.str.212 = private unnamed_addr constant [11 x i8] c"c == child\00", align 1
@.str.213 = private unnamed_addr constant [10 x i8] c"stat == 0\00", align 1
@con = internal unnamed_addr global %struct.conn* null, align 8, !dbg !175
@.str.214 = private unnamed_addr constant [4 x i8] c"con\00", align 1
@.str.215 = private unnamed_addr constant [31 x i8] c"kill(server_pid, SIGTERM) == 0\00", align 1
@.str.216 = private unnamed_addr constant [46 x i8] c"Failed to allocate the client connection: %s\0A\00", align 1
@.str.217 = private unnamed_addr constant [30 x i8] c"Failed to connect socket: %s\0A\00", align 1
@.str.218 = private unnamed_addr constant [39 x i8] c"Failed to enable nonblocking mode: %s\0A\00", align 1
@.str.219 = private unnamed_addr constant [29 x i8] c"Failed to create socket: %s\0A\00", align 1
@.str.220 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.221 = private unnamed_addr constant [19 x i8] c"getaddrinfo(): %s\0A\00", align 1
@.str.222 = private unnamed_addr constant [14 x i8] c"getaddrinfo()\00", align 1
@.str.223 = private unnamed_addr constant [10 x i8] c"c != NULL\00", align 1
@__PRETTY_FUNCTION__.tcp_read = private unnamed_addr constant [48 x i8] c"ssize_t tcp_read(struct conn *, void *, size_t)\00", align 1
@__PRETTY_FUNCTION__.tcp_write = private unnamed_addr constant [55 x i8] c"ssize_t tcp_write(struct conn *, const void *, size_t)\00", align 1
@crc32c = external dso_local local_unnamed_addr global i32 (i32, i8*, i64)*, align 8
@.str.224 = private unnamed_addr constant [21 x i8] c"crc_hw == 0x9c44184b\00", align 1
@__PRETTY_FUNCTION__.test_crc32c = private unnamed_addr constant [35 x i8] c"enum test_return test_crc32c(void)\00", align 1
@.str.225 = private unnamed_addr constant [21 x i8] c"crc_sw == 0x9c44184b\00", align 1
@.str.226 = private unnamed_addr constant [21 x i8] c"crc_hw == 0xae10ee5a\00", align 1
@.str.227 = private unnamed_addr constant [21 x i8] c"crc_sw == 0xae10ee5a\00", align 1
@.str.228 = private unnamed_addr constant [21 x i8] c"crc_hw == 0xed37b906\00", align 1
@.str.229 = private unnamed_addr constant [21 x i8] c"crc_sw == 0xed37b906\00", align 1
@__PRETTY_FUNCTION__.start_memcached_server = private unnamed_addr constant [46 x i8] c"enum test_return start_memcached_server(void)\00", align 1
@__PRETTY_FUNCTION__.test_issue_92 = private unnamed_addr constant [37 x i8] c"enum test_return test_issue_92(void)\00", align 1
@.str.230 = private unnamed_addr constant [24 x i8] c"stats cachedump 1 0 0\0D\0A\00", align 1
@.str.231 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.232 = private unnamed_addr constant [43 x i8] c"strncmp(buffer, \22END\22, strlen(\22END\22)) == 0\00", align 1
@.str.233 = private unnamed_addr constant [26 x i8] c"stats cachedump 200 0 0\0D\0A\00", align 1
@.str.234 = private unnamed_addr constant [13 x i8] c"CLIENT_ERROR\00", align 1
@.str.235 = private unnamed_addr constant [61 x i8] c"strncmp(buffer, \22CLIENT_ERROR\22, strlen(\22CLIENT_ERROR\22)) == 0\00", align 1
@.str.236 = private unnamed_addr constant [21 x i8] c"Failed to write: %s\0A\00", align 1
@.str.237 = private unnamed_addr constant [20 x i8] c"Failed to read: %s\0A\00", align 1
@.str.238 = private unnamed_addr constant [8 x i8] c"nr == 1\00", align 1
@__PRETTY_FUNCTION__.read_ascii_response = private unnamed_addr constant [41 x i8] c"void read_ascii_response(char *, size_t)\00", align 1
@.str.239 = private unnamed_addr constant [18 x i8] c"offset + 1 < size\00", align 1
@__PRETTY_FUNCTION__.test_issue_102 = private unnamed_addr constant [38 x i8] c"enum test_return test_issue_102(void)\00", align 1
@.str.240 = private unnamed_addr constant [44 x i8] c"con->read(con, buffer, sizeof(buffer)) == 0\00", align 1
@.str.241 = private unnamed_addr constant [6 x i8] c"gets \00", align 1
@.str.242 = private unnamed_addr constant [7 x i8] c"%010u \00", align 1
@.str.243 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.244 = private unnamed_addr constant [40 x i8] c"strncmp(rsp, \22END\22, strlen(\22END\22)) == 0\00", align 1
@.str.245 = private unnamed_addr constant [9 x i8] c"gets foo\00", align 1
@.str.246 = private unnamed_addr constant [52 x i8] c"bufsz > sizeof(*request) + extlen + keylen + dtalen\00", align 1
@__PRETTY_FUNCTION__.ext_command = private unnamed_addr constant [109 x i8] c"off_t ext_command(char *, size_t, uint8_t, const void *, size_t, const void *, size_t, const void *, size_t)\00", align 1
@allow_closed_read = internal unnamed_addr global i1 false, align 1, !dbg !188
@.str.248 = private unnamed_addr constant [8 x i8] c"nr != 0\00", align 1
@__PRETTY_FUNCTION__.safe_recv = private unnamed_addr constant [32 x i8] c"_Bool safe_recv(void *, size_t)\00", align 1
@.str.249 = private unnamed_addr constant [63 x i8] c"response->message.header.response.magic == PROTOCOL_BINARY_RES\00", align 1
@__PRETTY_FUNCTION__.validate_response_header = private unnamed_addr constant [87 x i8] c"void validate_response_header(protocol_binary_response_no_extras *, uint8_t, uint16_t)\00", align 1
@.str.250 = private unnamed_addr constant [48 x i8] c"response->message.header.response.opcode == cmd\00", align 1
@.str.251 = private unnamed_addr constant [72 x i8] c"response->message.header.response.datatype == PROTOCOL_BINARY_RAW_BYTES\00", align 1
@.str.252 = private unnamed_addr constant [51 x i8] c"response->message.header.response.status == status\00", align 1
@.str.253 = private unnamed_addr constant [55 x i8] c"response->message.header.response.opaque == 0xdeadbeef\00", align 1
@.str.254 = private unnamed_addr constant [52 x i8] c"\22Quiet command shouldn't return on success\22 == NULL\00", align 1
@.str.255 = private unnamed_addr constant [46 x i8] c"response->message.header.response.keylen == 0\00", align 1
@.str.256 = private unnamed_addr constant [46 x i8] c"response->message.header.response.extlen == 0\00", align 1
@.str.257 = private unnamed_addr constant [47 x i8] c"response->message.header.response.bodylen == 0\00", align 1
@.str.258 = private unnamed_addr constant [43 x i8] c"response->message.header.response.cas != 0\00", align 1
@.str.259 = private unnamed_addr constant [43 x i8] c"response->message.header.response.cas == 0\00", align 1
@.str.260 = private unnamed_addr constant [47 x i8] c"response->message.header.response.bodylen == 8\00", align 1
@.str.261 = private unnamed_addr constant [47 x i8] c"response->message.header.response.bodylen != 0\00", align 1
@.str.262 = private unnamed_addr constant [46 x i8] c"response->message.header.response.extlen == 4\00", align 1
@.str.263 = private unnamed_addr constant [46 x i8] c"response->message.header.response.keylen != 0\00", align 1
@.str.264 = private unnamed_addr constant [56 x i8] c"con->read(con, buffer.bytes, sizeof(buffer.bytes)) == 0\00", align 1
@__PRETTY_FUNCTION__.test_binary_quit_impl = private unnamed_addr constant [48 x i8] c"enum test_return test_binary_quit_impl(uint8_t)\00", align 1
@.str.265 = private unnamed_addr constant [16 x i8] c"test_binary_set\00", align 1
@.str.266 = private unnamed_addr constant [88 x i8] c"receive.response.message.header.response.cas != send.request.message.header.request.cas\00", align 1
@__PRETTY_FUNCTION__.test_binary_set_impl = private unnamed_addr constant [61 x i8] c"enum test_return test_binary_set_impl(const char *, uint8_t)\00", align 1
@.str.267 = private unnamed_addr constant [43 x i8] c"bufsz > sizeof(*request) + keylen + dtalen\00", align 1
@__PRETTY_FUNCTION__.storage_command = private unnamed_addr constant [111 x i8] c"off_t storage_command(char *, size_t, uint8_t, const void *, size_t, const void *, size_t, uint32_t, uint32_t)\00", align 1
@.str.268 = private unnamed_addr constant [17 x i8] c"test_binary_setq\00", align 1
@.str.269 = private unnamed_addr constant [16 x i8] c"test_binary_add\00", align 1
@.str.270 = private unnamed_addr constant [17 x i8] c"test_binary_addq\00", align 1
@.str.271 = private unnamed_addr constant [20 x i8] c"test_binary_replace\00", align 1
@.str.272 = private unnamed_addr constant [21 x i8] c"test_binary_replaceq\00", align 1
@.str.273 = private unnamed_addr constant [19 x i8] c"test_binary_delete\00", align 1
@.str.274 = private unnamed_addr constant [20 x i8] c"test_binary_deleteq\00", align 1
@.str.275 = private unnamed_addr constant [16 x i8] c"test_binary_get\00", align 1
@.str.276 = private unnamed_addr constant [17 x i8] c"test_binary_getq\00", align 1
@.str.277 = private unnamed_addr constant [25 x i8] c"test_binary_getq_missing\00", align 1
@.str.278 = private unnamed_addr constant [17 x i8] c"test_binary_getk\00", align 1
@.str.279 = private unnamed_addr constant [18 x i8] c"test_binary_getkq\00", align 1
@.str.280 = private unnamed_addr constant [16 x i8] c"test_binary_gat\00", align 1
@.str.281 = private unnamed_addr constant [17 x i8] c"test_binary_gatq\00", align 1
@.str.282 = private unnamed_addr constant [17 x i8] c"test_binary_gatk\00", align 1
@.str.283 = private unnamed_addr constant [18 x i8] c"test_binary_gatkq\00", align 1
@.str.284 = private unnamed_addr constant [17 x i8] c"test_binary_incr\00", align 1
@.str.285 = private unnamed_addr constant [50 x i8] c"ntohll(receive.response.message.body.value) == ii\00", align 1
@__PRETTY_FUNCTION__.test_binary_incr_impl = private unnamed_addr constant [62 x i8] c"enum test_return test_binary_incr_impl(const char *, uint8_t)\00", align 1
@.str.286 = private unnamed_addr constant [34 x i8] c"bufsz > sizeof(*request) + keylen\00", align 1
@__PRETTY_FUNCTION__.arithmetic_command = private unnamed_addr constant [102 x i8] c"off_t arithmetic_command(char *, size_t, uint8_t, const void *, size_t, uint64_t, uint64_t, uint32_t)\00", align 1
@.str.287 = private unnamed_addr constant [18 x i8] c"test_binary_incrq\00", align 1
@.str.288 = private unnamed_addr constant [17 x i8] c"test_binary_decr\00", align 1
@__PRETTY_FUNCTION__.test_binary_decr_impl = private unnamed_addr constant [62 x i8] c"enum test_return test_binary_decr_impl(const char *, uint8_t)\00", align 1
@.str.289 = private unnamed_addr constant [49 x i8] c"ntohll(receive.response.message.body.value) == 0\00", align 1
@.str.290 = private unnamed_addr constant [18 x i8] c"test_binary_decrq\00", align 1
@.str.291 = private unnamed_addr constant [18 x i8] c"test_binary_flush\00", align 1
@.str.293 = private unnamed_addr constant [19 x i8] c"test_binary_flushq\00", align 1
@.str.294 = private unnamed_addr constant [19 x i8] c"test_binary_append\00", align 1
@.str.295 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.296 = private unnamed_addr constant [63 x i8] c"receive.response.message.header.response.keylen == strlen(key)\00", align 1
@__PRETTY_FUNCTION__.test_binary_concat_impl = private unnamed_addr constant [64 x i8] c"enum test_return test_binary_concat_impl(const char *, uint8_t)\00", align 1
@.str.297 = private unnamed_addr constant [88 x i8] c"receive.response.message.header.response.bodylen == (strlen(key) + 2*strlen(value) + 4)\00", align 1
@.str.298 = private unnamed_addr constant [35 x i8] c"memcmp(ptr, key, strlen(key)) == 0\00", align 1
@.str.299 = private unnamed_addr constant [39 x i8] c"memcmp(ptr, value, strlen(value)) == 0\00", align 1
@.str.300 = private unnamed_addr constant [20 x i8] c"test_binary_appendq\00", align 1
@.str.301 = private unnamed_addr constant [20 x i8] c"test_binary_prepend\00", align 1
@.str.302 = private unnamed_addr constant [21 x i8] c"test_binary_prependq\00", align 1
@.str.303 = private unnamed_addr constant [25 x i8] c"Can't create thread: %s\0A\00", align 1
@__PRETTY_FUNCTION__.shutdown_memcached_server = private unnamed_addr constant [49 x i8] c"enum test_return shutdown_memcached_server(void)\00", align 1
@.str.304 = private unnamed_addr constant [11 x i8] c"shutdown\0D\0A\00", align 1
@__PRETTY_FUNCTION__.stop_memcached_server = private unnamed_addr constant [45 x i8] c"enum test_return stop_memcached_server(void)\00", align 1

; Function Attrs: noinline nounwind uwtable
define internal i32 @cache_create_test() #0 !dbg !194 {
entry:
  %call = tail call %struct.cache_t* @cache_create(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i64 noundef 4, i64 noundef 8) #12, !dbg !251
  call void @llvm.dbg.value(metadata %struct.cache_t* %call, metadata !196, metadata !DIExpression()), !dbg !252
  %cmp.not = icmp eq %struct.cache_t* %call, null, !dbg !253
  br i1 %cmp.not, label %if.else, label %if.end, !dbg !256

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.cache_create_test, i64 0, i64 0)) #13, !dbg !253
  unreachable, !dbg !253

if.end:                                           ; preds = %entry
  tail call void @cache_destroy(%struct.cache_t* noundef nonnull %call) #12, !dbg !257
  ret i32 1, !dbg !258
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cache_reuse_test() #0 !dbg !259 {
entry:
  %call = tail call %struct.cache_t* @cache_create(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i64 noundef 4, i64 noundef 8) #12, !dbg !268
  call void @llvm.dbg.value(metadata %struct.cache_t* %call, metadata !262, metadata !DIExpression()), !dbg !269
  %cmp = icmp eq %struct.cache_t* %call, null, !dbg !270
  br i1 %cmp, label %cleanup, label %if.end, !dbg !272

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @cache_alloc(%struct.cache_t* noundef nonnull %call) #12, !dbg !273
  call void @llvm.dbg.value(metadata i8* %call1, metadata !263, metadata !DIExpression()), !dbg !269
  tail call void @cache_free(%struct.cache_t* noundef nonnull %call, i8* noundef %call1) #12, !dbg !274
  call void @llvm.dbg.value(metadata i32 0, metadata !261, metadata !DIExpression()), !dbg !269
  br label %for.body, !dbg !275

for.body:                                         ; preds = %if.end, %if.end6
  %ii.020 = phi i32 [ 0, %if.end ], [ %inc, %if.end6 ]
  call void @llvm.dbg.value(metadata i32 %ii.020, metadata !261, metadata !DIExpression()), !dbg !269
  %call3 = tail call i8* @cache_alloc(%struct.cache_t* noundef nonnull %call) #12, !dbg !276
  call void @llvm.dbg.value(metadata i8* %call3, metadata !264, metadata !DIExpression()), !dbg !277
  %cmp4 = icmp eq i8* %call3, %call1, !dbg !278
  br i1 %cmp4, label %if.end6, label %if.else, !dbg !281

if.else:                                          ; preds = %for.body
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.cache_reuse_test, i64 0, i64 0)) #13, !dbg !278
  unreachable, !dbg !278

if.end6:                                          ; preds = %for.body
  tail call void @cache_free(%struct.cache_t* noundef nonnull %call, i8* noundef %call1) #12, !dbg !282
  %inc = add nuw nsw i32 %ii.020, 1, !dbg !283
  call void @llvm.dbg.value(metadata i32 %inc, metadata !261, metadata !DIExpression()), !dbg !269
  %exitcond.not = icmp eq i32 %inc, 100, !dbg !284
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !275, !llvm.loop !285

for.end:                                          ; preds = %if.end6
  tail call void @cache_destroy(%struct.cache_t* noundef nonnull %call) #12, !dbg !288
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 2, %entry ], !dbg !269
  ret i32 %retval.0, !dbg !289
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cache_redzone_test() #0 !dbg !290 {
entry:
  %old_action = alloca %struct.sigaction, align 8
  %action = alloca %struct.sigaction, align 8
  %call = tail call %struct.cache_t* @cache_create(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i64 noundef 4, i64 noundef 8) #12, !dbg !401
  call void @llvm.dbg.value(metadata %struct.cache_t* %call, metadata !292, metadata !DIExpression()), !dbg !402
  %cmp = icmp eq %struct.cache_t* %call, null, !dbg !403
  br i1 %cmp, label %cleanup, label %if.end, !dbg !405

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.sigaction* %old_action to i8*, !dbg !406
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %0) #14, !dbg !406
  call void @llvm.dbg.declare(metadata %struct.sigaction* %old_action, metadata !293, metadata !DIExpression()), !dbg !407
  %1 = bitcast %struct.sigaction* %action to i8*, !dbg !408
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %1) #14, !dbg !408
  call void @llvm.dbg.declare(metadata %struct.sigaction* %action, metadata !398, metadata !DIExpression()), !dbg !409
  %2 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i64 0, i32 1, !dbg !409
  %3 = bitcast %struct.__sigset_t* %2 to i8*, !dbg !409
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 144, i1 false), !dbg !409
  %4 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i64 0, i32 0, i32 0, !dbg !409
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %4, align 8, !dbg !409
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i64 0, i32 1, !dbg !410
  %call1 = call i32 @sigemptyset(%struct.__sigset_t* noundef nonnull %sa_mask) #12, !dbg !411
  %call2 = call i32 @sigaction(i32 noundef 6, %struct.sigaction* noundef nonnull %action, %struct.sigaction* noundef nonnull %old_action) #12, !dbg !412
  %call3 = call i8* @cache_alloc(%struct.cache_t* noundef nonnull %call) #12, !dbg !413
  call void @llvm.dbg.value(metadata i8* %call3, metadata !399, metadata !DIExpression()), !dbg !402
  %add.ptr = getelementptr inbounds i8, i8* %call3, i64 -1, !dbg !414
  %5 = load i8, i8* %add.ptr, align 1, !dbg !415, !tbaa !416
  call void @llvm.dbg.value(metadata i8 %5, metadata !400, metadata !DIExpression()), !dbg !402
  store i8 0, i8* %add.ptr, align 1, !dbg !419, !tbaa !416
  call void @cache_free(%struct.cache_t* noundef nonnull %call, i8* noundef %call3) #12, !dbg !420
  %6 = load i32, i32* @cache_error, align 4, !dbg !421, !tbaa !424
  %cmp5 = icmp eq i32 %6, -1, !dbg !421
  br i1 %cmp5, label %if.end7, label %if.else, !dbg !426

if.else:                                          ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.cache_redzone_test, i64 0, i64 0)) #13, !dbg !421
  unreachable, !dbg !421

if.end7:                                          ; preds = %if.end
  store i8 %5, i8* %add.ptr, align 1, !dbg !427, !tbaa !416
  %arrayidx = getelementptr inbounds i8, i8* %call3, i64 4, !dbg !428
  store i8 0, i8* %arrayidx, align 1, !dbg !429, !tbaa !416
  call void @cache_free(%struct.cache_t* noundef nonnull %call, i8* noundef nonnull %call3) #12, !dbg !430
  %7 = load i32, i32* @cache_error, align 4, !dbg !431, !tbaa !424
  %cmp9 = icmp eq i32 %7, 1, !dbg !431
  br i1 %cmp9, label %if.end12, label %if.else11, !dbg !434

if.else11:                                        ; preds = %if.end7
  call void @__assert_fail(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.cache_redzone_test, i64 0, i64 0)) #13, !dbg !431
  unreachable, !dbg !431

if.end12:                                         ; preds = %if.end7
  %call13 = call i32 @sigaction(i32 noundef 6, %struct.sigaction* noundef nonnull %old_action, %struct.sigaction* noundef null) #12, !dbg !435
  call void @cache_destroy(%struct.cache_t* noundef nonnull %call) #12, !dbg !436
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %1) #14, !dbg !437
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %0) #14, !dbg !437
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12
  %retval.0 = phi i32 [ 1, %if.end12 ], [ 2, %entry ], !dbg !402
  ret i32 %retval.0, !dbg !437
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cache_limit_revised_downward_test() #0 !dbg !438 {
entry:
  call void @llvm.dbg.value(metadata i32 10, metadata !440, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i32 11, metadata !441, metadata !DIExpression()), !dbg !446
  %call = tail call noalias i8* @calloc(i64 noundef 11, i64 noundef 8) #12, !dbg !447
  call void @llvm.dbg.value(metadata i8* %call, metadata !443, metadata !DIExpression()), !dbg !446
  %call1 = tail call %struct.cache_t* @cache_create(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i64 noundef 4, i64 noundef 8) #12, !dbg !448
  call void @llvm.dbg.value(metadata %struct.cache_t* %call1, metadata !445, metadata !DIExpression()), !dbg !446
  %cmp.not = icmp eq %struct.cache_t* %call1, null, !dbg !449
  br i1 %cmp.not, label %if.else, label %for.body.preheader, !dbg !452

for.body.preheader:                               ; preds = %entry
  %0 = bitcast i8* %call to i8**, !dbg !447
  call void @llvm.dbg.value(metadata i8** %0, metadata !443, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i64 0, metadata !442, metadata !DIExpression()), !dbg !446
  %call5 = tail call i8* @cache_alloc(%struct.cache_t* noundef nonnull %call1) #12, !dbg !453
  store i8* %call5, i8** %0, align 8, !dbg !457, !tbaa !458
  %cmp8.not = icmp eq i8* %call5, null, !dbg !460
  call void @llvm.dbg.value(metadata i64 0, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  br i1 %cmp8.not, label %if.else11, label %for.cond, !dbg !463

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.cache_limit_revised_downward_test, i64 0, i64 0)) #13, !dbg !449
  unreachable, !dbg !449

for.cond:                                         ; preds = %for.body.preheader
  call void @llvm.dbg.value(metadata i64 1, metadata !442, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i64 0, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  call void @llvm.dbg.value(metadata i64 1, metadata !442, metadata !DIExpression()), !dbg !446
  %call5.1 = tail call i8* @cache_alloc(%struct.cache_t* noundef nonnull %call1) #12, !dbg !453
  %arrayidx.1 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !464
  %1 = bitcast i8* %arrayidx.1 to i8**, !dbg !464
  store i8* %call5.1, i8** %1, align 8, !dbg !457, !tbaa !458
  %cmp8.not.1 = icmp eq i8* %call5.1, null, !dbg !460
  call void @llvm.dbg.value(metadata i64 1, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  br i1 %cmp8.not.1, label %if.else11, label %for.cond.1, !dbg !463

for.cond.1:                                       ; preds = %for.cond
  call void @llvm.dbg.value(metadata i64 2, metadata !442, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i64 1, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  call void @llvm.dbg.value(metadata i64 2, metadata !442, metadata !DIExpression()), !dbg !446
  %call5.2 = tail call i8* @cache_alloc(%struct.cache_t* noundef nonnull %call1) #12, !dbg !453
  %arrayidx.2 = getelementptr inbounds i8, i8* %call, i64 16, !dbg !464
  %2 = bitcast i8* %arrayidx.2 to i8**, !dbg !464
  store i8* %call5.2, i8** %2, align 8, !dbg !457, !tbaa !458
  %cmp8.not.2 = icmp eq i8* %call5.2, null, !dbg !460
  call void @llvm.dbg.value(metadata i64 2, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  br i1 %cmp8.not.2, label %if.else11, label %for.cond.2, !dbg !463

for.cond.2:                                       ; preds = %for.cond.1
  call void @llvm.dbg.value(metadata i64 3, metadata !442, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i64 2, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  call void @llvm.dbg.value(metadata i64 3, metadata !442, metadata !DIExpression()), !dbg !446
  %call5.3 = tail call i8* @cache_alloc(%struct.cache_t* noundef nonnull %call1) #12, !dbg !453
  %arrayidx.3 = getelementptr inbounds i8, i8* %call, i64 24, !dbg !464
  %3 = bitcast i8* %arrayidx.3 to i8**, !dbg !464
  store i8* %call5.3, i8** %3, align 8, !dbg !457, !tbaa !458
  %cmp8.not.3 = icmp eq i8* %call5.3, null, !dbg !460
  call void @llvm.dbg.value(metadata i64 3, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  br i1 %cmp8.not.3, label %if.else11, label %for.cond.3, !dbg !463

for.cond.3:                                       ; preds = %for.cond.2
  call void @llvm.dbg.value(metadata i64 4, metadata !442, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i64 3, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  call void @llvm.dbg.value(metadata i64 4, metadata !442, metadata !DIExpression()), !dbg !446
  %call5.4 = tail call i8* @cache_alloc(%struct.cache_t* noundef nonnull %call1) #12, !dbg !453
  %arrayidx.4 = getelementptr inbounds i8, i8* %call, i64 32, !dbg !464
  %4 = bitcast i8* %arrayidx.4 to i8**, !dbg !464
  store i8* %call5.4, i8** %4, align 8, !dbg !457, !tbaa !458
  %cmp8.not.4 = icmp eq i8* %call5.4, null, !dbg !460
  call void @llvm.dbg.value(metadata i64 4, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  br i1 %cmp8.not.4, label %if.else11, label %for.cond.4, !dbg !463

for.cond.4:                                       ; preds = %for.cond.3
  call void @llvm.dbg.value(metadata i64 5, metadata !442, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i64 4, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  call void @llvm.dbg.value(metadata i64 5, metadata !442, metadata !DIExpression()), !dbg !446
  %call5.5 = tail call i8* @cache_alloc(%struct.cache_t* noundef nonnull %call1) #12, !dbg !453
  %arrayidx.5 = getelementptr inbounds i8, i8* %call, i64 40, !dbg !464
  %5 = bitcast i8* %arrayidx.5 to i8**, !dbg !464
  store i8* %call5.5, i8** %5, align 8, !dbg !457, !tbaa !458
  %cmp8.not.5 = icmp eq i8* %call5.5, null, !dbg !460
  call void @llvm.dbg.value(metadata i64 5, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  br i1 %cmp8.not.5, label %if.else11, label %for.cond.5, !dbg !463

for.cond.5:                                       ; preds = %for.cond.4
  call void @llvm.dbg.value(metadata i64 6, metadata !442, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i64 5, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  call void @llvm.dbg.value(metadata i64 6, metadata !442, metadata !DIExpression()), !dbg !446
  %call5.6 = tail call i8* @cache_alloc(%struct.cache_t* noundef nonnull %call1) #12, !dbg !453
  %arrayidx.6 = getelementptr inbounds i8, i8* %call, i64 48, !dbg !464
  %6 = bitcast i8* %arrayidx.6 to i8**, !dbg !464
  store i8* %call5.6, i8** %6, align 8, !dbg !457, !tbaa !458
  %cmp8.not.6 = icmp eq i8* %call5.6, null, !dbg !460
  call void @llvm.dbg.value(metadata i64 6, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  br i1 %cmp8.not.6, label %if.else11, label %for.cond.6, !dbg !463

for.cond.6:                                       ; preds = %for.cond.5
  call void @llvm.dbg.value(metadata i64 7, metadata !442, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i64 6, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  call void @llvm.dbg.value(metadata i64 7, metadata !442, metadata !DIExpression()), !dbg !446
  %call5.7 = tail call i8* @cache_alloc(%struct.cache_t* noundef nonnull %call1) #12, !dbg !453
  %arrayidx.7 = getelementptr inbounds i8, i8* %call, i64 56, !dbg !464
  %7 = bitcast i8* %arrayidx.7 to i8**, !dbg !464
  store i8* %call5.7, i8** %7, align 8, !dbg !457, !tbaa !458
  %cmp8.not.7 = icmp eq i8* %call5.7, null, !dbg !460
  call void @llvm.dbg.value(metadata i64 7, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  br i1 %cmp8.not.7, label %if.else11, label %for.cond.7, !dbg !463

for.cond.7:                                       ; preds = %for.cond.6
  call void @llvm.dbg.value(metadata i64 8, metadata !442, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i64 7, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  call void @llvm.dbg.value(metadata i64 8, metadata !442, metadata !DIExpression()), !dbg !446
  %call5.8 = tail call i8* @cache_alloc(%struct.cache_t* noundef nonnull %call1) #12, !dbg !453
  %arrayidx.8 = getelementptr inbounds i8, i8* %call, i64 64, !dbg !464
  %8 = bitcast i8* %arrayidx.8 to i8**, !dbg !464
  store i8* %call5.8, i8** %8, align 8, !dbg !457, !tbaa !458
  %cmp8.not.8 = icmp eq i8* %call5.8, null, !dbg !460
  call void @llvm.dbg.value(metadata i64 8, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  br i1 %cmp8.not.8, label %if.else11, label %for.cond.8, !dbg !463

for.cond.8:                                       ; preds = %for.cond.7
  call void @llvm.dbg.value(metadata i64 9, metadata !442, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i64 8, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  call void @llvm.dbg.value(metadata i64 9, metadata !442, metadata !DIExpression()), !dbg !446
  %call5.9 = tail call i8* @cache_alloc(%struct.cache_t* noundef nonnull %call1) #12, !dbg !453
  %arrayidx.9 = getelementptr inbounds i8, i8* %call, i64 72, !dbg !464
  %9 = bitcast i8* %arrayidx.9 to i8**, !dbg !464
  store i8* %call5.9, i8** %9, align 8, !dbg !457, !tbaa !458
  %cmp8.not.9 = icmp eq i8* %call5.9, null, !dbg !460
  call void @llvm.dbg.value(metadata i64 9, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  br i1 %cmp8.not.9, label %if.else11, label %for.cond.9, !dbg !463

for.cond.9:                                       ; preds = %for.cond.8
  call void @llvm.dbg.value(metadata i64 10, metadata !442, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i64 9, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  call void @llvm.dbg.value(metadata i64 10, metadata !442, metadata !DIExpression()), !dbg !446
  %call5.10 = tail call i8* @cache_alloc(%struct.cache_t* noundef nonnull %call1) #12, !dbg !453
  %arrayidx.10 = getelementptr inbounds i8, i8* %call, i64 80, !dbg !464
  %10 = bitcast i8* %arrayidx.10 to i8**, !dbg !464
  store i8* %call5.10, i8** %10, align 8, !dbg !457, !tbaa !458
  %cmp8.not.10 = icmp eq i8* %call5.10, null, !dbg !460
  call void @llvm.dbg.value(metadata i64 10, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  br i1 %cmp8.not.10, label %if.else11, label %for.cond.10, !dbg !463

for.cond.10:                                      ; preds = %for.cond.9
  call void @llvm.dbg.value(metadata i64 11, metadata !442, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i64 10, metadata !442, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  %total = getelementptr inbounds %struct.cache_t, %struct.cache_t* %call1, i64 0, i32 5, !dbg !465
  %11 = load i32, i32* %total, align 4, !dbg !465, !tbaa !468
  %cmp13 = icmp eq i32 %11, 11, !dbg !465
  br i1 %cmp13, label %if.end17, label %if.else16, !dbg !472

if.else11:                                        ; preds = %for.cond.9, %for.cond.8, %for.cond.7, %for.cond.6, %for.cond.5, %for.cond.4, %for.cond.3, %for.cond.2, %for.cond.1, %for.cond, %for.body.preheader
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.cache_limit_revised_downward_test, i64 0, i64 0)) #13, !dbg !460
  unreachable, !dbg !460

if.else16:                                        ; preds = %for.cond.10
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.cache_limit_revised_downward_test, i64 0, i64 0)) #13, !dbg !465
  unreachable, !dbg !465

if.end17:                                         ; preds = %for.cond.10
  tail call void @cache_set_limit(%struct.cache_t* noundef nonnull %call1, i32 noundef 10) #12, !dbg !473
  tail call void @cache_free(%struct.cache_t* noundef nonnull %call1, i8* noundef nonnull %call5) #12, !dbg !474
  %12 = load i32, i32* %total, align 4, !dbg !475, !tbaa !468
  %cmp20 = icmp eq i32 %12, 10, !dbg !475
  br i1 %cmp20, label %if.end24, label %if.else23, !dbg !478

if.else23:                                        ; preds = %if.end17
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.cache_limit_revised_downward_test, i64 0, i64 0)) #13, !dbg !475
  unreachable, !dbg !475

if.end24:                                         ; preds = %if.end17
  tail call void @cache_destroy(%struct.cache_t* noundef nonnull %call1) #12, !dbg !479
  tail call void @free(i8* noundef nonnull %call) #12, !dbg !480
  ret i32 1, !dbg !481
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_stats_prefix_find() #0 !dbg !482 {
entry:
  tail call void @stats_prefix_clear() #12, !dbg !500
  %call = tail call %struct._prefix_stats* @stats_prefix_find(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i64 noundef 3) #12, !dbg !501
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %call, metadata !484, metadata !DIExpression()), !dbg !502
  %cmp = icmp eq %struct._prefix_stats* %call, null, !dbg !503
  br i1 %cmp, label %if.end, label %if.else, !dbg !506

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_find, i64 0, i64 0)) #13, !dbg !503
  unreachable, !dbg !503

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._prefix_stats* @stats_prefix_find(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0), i64 noundef 4) #12, !dbg !507
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %call1, metadata !484, metadata !DIExpression()), !dbg !502
  %cmp2 = icmp eq %struct._prefix_stats* %call1, null, !dbg !508
  br i1 %cmp2, label %if.end5, label %if.else4, !dbg !511

if.else4:                                         ; preds = %if.end
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_find, i64 0, i64 0)) #13, !dbg !508
  unreachable, !dbg !508

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct._prefix_stats* @stats_prefix_find(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), i64 noundef 4) #12, !dbg !512
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %call6, metadata !484, metadata !DIExpression()), !dbg !502
  %cmp7.not = icmp eq %struct._prefix_stats* %call6, null, !dbg !513
  br i1 %cmp7.not, label %if.else9, label %if.end10, !dbg !516

if.else9:                                         ; preds = %if.end5
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_find, i64 0, i64 0)) #13, !dbg !513
  unreachable, !dbg !513

if.end10:                                         ; preds = %if.end5
  %num_gets = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call6, i64 0, i32 2, !dbg !517
  %0 = load i64, i64* %num_gets, align 8, !dbg !517, !tbaa !520
  %num_sets = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call6, i64 0, i32 3, !dbg !517
  %1 = load i64, i64* %num_sets, align 8, !dbg !517, !tbaa !522
  %add = add i64 %1, %0, !dbg !517
  %num_deletes = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call6, i64 0, i32 4, !dbg !517
  %2 = load i64, i64* %num_deletes, align 8, !dbg !517, !tbaa !523
  %add11 = add i64 %add, %2, !dbg !517
  %num_hits = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call6, i64 0, i32 5, !dbg !517
  %3 = load i64, i64* %num_hits, align 8, !dbg !517, !tbaa !524
  %add12 = sub i64 0, %3, !dbg !517
  %cmp13 = icmp eq i64 %add11, %add12, !dbg !517
  br i1 %cmp13, label %if.end16, label %if.else15, !dbg !525

if.else15:                                        ; preds = %if.end10
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 236, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_find, i64 0, i64 0)) #13, !dbg !517
  unreachable, !dbg !517

if.end16:                                         ; preds = %if.end10
  %call17 = tail call %struct._prefix_stats* @stats_prefix_find(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), i64 noundef 4) #12, !dbg !526
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %call17, metadata !499, metadata !DIExpression()), !dbg !502
  %cmp18 = icmp eq %struct._prefix_stats* %call6, %call17, !dbg !527
  br i1 %cmp18, label %if.end21, label %if.else20, !dbg !530

if.else20:                                        ; preds = %if.end16
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_find, i64 0, i64 0)) #13, !dbg !527
  unreachable, !dbg !527

if.end21:                                         ; preds = %if.end16
  %call22 = tail call %struct._prefix_stats* @stats_prefix_find(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), i64 noundef 5) #12, !dbg !531
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %call22, metadata !499, metadata !DIExpression()), !dbg !502
  %cmp23 = icmp eq %struct._prefix_stats* %call6, %call22, !dbg !532
  br i1 %cmp23, label %if.end26, label %if.else25, !dbg !535

if.else25:                                        ; preds = %if.end21
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_find, i64 0, i64 0)) #13, !dbg !532
  unreachable, !dbg !532

if.end26:                                         ; preds = %if.end21
  %call27 = tail call %struct._prefix_stats* @stats_prefix_find(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0), i64 noundef 6) #12, !dbg !536
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %call27, metadata !499, metadata !DIExpression()), !dbg !502
  %cmp28.not = icmp eq %struct._prefix_stats* %call6, %call27, !dbg !537
  br i1 %cmp28.not, label %if.else30, label %if.end31, !dbg !540

if.else30:                                        ; preds = %if.end26
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_find, i64 0, i64 0)) #13, !dbg !537
  unreachable, !dbg !537

if.end31:                                         ; preds = %if.end26
  %call32 = tail call %struct._prefix_stats* @stats_prefix_find(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0), i64 noundef 3) #12, !dbg !541
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %call32, metadata !499, metadata !DIExpression()), !dbg !502
  %cmp33.not = icmp eq %struct._prefix_stats* %call6, %call32, !dbg !542
  br i1 %cmp33.not, label %if.else35, label %if.end36, !dbg !545

if.else35:                                        ; preds = %if.end31
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 244, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_find, i64 0, i64 0)) #13, !dbg !542
  unreachable, !dbg !542

if.end36:                                         ; preds = %if.end31
  ret i32 1, !dbg !546
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_stats_prefix_record_get() #0 !dbg !547 {
entry:
  tail call void @stats_prefix_clear() #12, !dbg !550
  tail call void @stats_prefix_record_get(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i64 noundef 7, i1 noundef zeroext false) #12, !dbg !551
  %call = tail call %struct._prefix_stats* @stats_prefix_find(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i64 noundef 7) #12, !dbg !552
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %call, metadata !549, metadata !DIExpression()), !dbg !553
  %cmp = icmp eq %struct._prefix_stats* %call, null, !dbg !554
  br i1 %cmp, label %cleanup, label %if.end, !dbg !556

if.end:                                           ; preds = %entry
  %num_gets = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call, i64 0, i32 2, !dbg !557
  %0 = load i64, i64* %num_gets, align 8, !dbg !557, !tbaa !520
  %cmp1 = icmp eq i64 %0, 1, !dbg !557
  br i1 %cmp1, label %if.end3, label %if.else, !dbg !560

if.else:                                          ; preds = %if.end
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_get, i64 0, i64 0)) #13, !dbg !557
  unreachable, !dbg !557

if.end3:                                          ; preds = %if.end
  %num_hits = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call, i64 0, i32 5, !dbg !561
  %1 = load i64, i64* %num_hits, align 8, !dbg !561, !tbaa !524
  %cmp4 = icmp eq i64 %1, 0, !dbg !561
  br i1 %cmp4, label %if.end7, label %if.else6, !dbg !564

if.else6:                                         ; preds = %if.end3
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_get, i64 0, i64 0)) #13, !dbg !561
  unreachable, !dbg !561

if.end7:                                          ; preds = %if.end3
  tail call void @stats_prefix_record_get(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i64 0, i64 0), i64 noundef 7, i1 noundef zeroext false) #12, !dbg !565
  %2 = load i64, i64* %num_gets, align 8, !dbg !566, !tbaa !520
  %cmp9 = icmp eq i64 %2, 2, !dbg !566
  br i1 %cmp9, label %if.end12, label %if.else11, !dbg !569

if.else11:                                        ; preds = %if.end7
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_get, i64 0, i64 0)) #13, !dbg !566
  unreachable, !dbg !566

if.end12:                                         ; preds = %if.end7
  %3 = load i64, i64* %num_hits, align 8, !dbg !570, !tbaa !524
  %cmp14 = icmp eq i64 %3, 0, !dbg !570
  br i1 %cmp14, label %if.end17, label %if.else16, !dbg !573

if.else16:                                        ; preds = %if.end12
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_get, i64 0, i64 0)) #13, !dbg !570
  unreachable, !dbg !570

if.end17:                                         ; preds = %if.end12
  tail call void @stats_prefix_record_get(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i64 0, i64 0), i64 noundef 7, i1 noundef zeroext true) #12, !dbg !574
  %4 = load i64, i64* %num_gets, align 8, !dbg !575, !tbaa !520
  %cmp19 = icmp eq i64 %4, 3, !dbg !575
  br i1 %cmp19, label %if.end22, label %if.else21, !dbg !578

if.else21:                                        ; preds = %if.end17
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 263, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_get, i64 0, i64 0)) #13, !dbg !575
  unreachable, !dbg !575

if.end22:                                         ; preds = %if.end17
  %5 = load i64, i64* %num_hits, align 8, !dbg !579, !tbaa !524
  %cmp24 = icmp eq i64 %5, 1, !dbg !579
  br i1 %cmp24, label %if.end27, label %if.else26, !dbg !582

if.else26:                                        ; preds = %if.end22
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_get, i64 0, i64 0)) #13, !dbg !579
  unreachable, !dbg !579

if.end27:                                         ; preds = %if.end22
  tail call void @stats_prefix_record_get(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0), i64 noundef 4, i1 noundef zeroext true) #12, !dbg !583
  %6 = load i64, i64* %num_gets, align 8, !dbg !584, !tbaa !520
  %cmp29 = icmp eq i64 %6, 3, !dbg !584
  br i1 %cmp29, label %if.end32, label %if.else31, !dbg !587

if.else31:                                        ; preds = %if.end27
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 266, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_get, i64 0, i64 0)) #13, !dbg !584
  unreachable, !dbg !584

if.end32:                                         ; preds = %if.end27
  %7 = load i64, i64* %num_hits, align 8, !dbg !588, !tbaa !524
  %cmp34 = icmp eq i64 %7, 1, !dbg !588
  br i1 %cmp34, label %cleanup, label %if.else36, !dbg !591

if.else36:                                        ; preds = %if.end32
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_get, i64 0, i64 0)) #13, !dbg !588
  unreachable, !dbg !588

cleanup:                                          ; preds = %if.end32, %entry
  %retval.0 = phi i32 [ 2, %entry ], [ 1, %if.end32 ], !dbg !553
  ret i32 %retval.0, !dbg !592
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_stats_prefix_record_delete() #0 !dbg !593 {
entry:
  tail call void @stats_prefix_clear() #12, !dbg !596
  tail call void @stats_prefix_record_delete(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i64 noundef 7) #12, !dbg !597
  %call = tail call %struct._prefix_stats* @stats_prefix_find(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i64 noundef 7) #12, !dbg !598
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %call, metadata !595, metadata !DIExpression()), !dbg !599
  %cmp = icmp eq %struct._prefix_stats* %call, null, !dbg !600
  br i1 %cmp, label %cleanup, label %if.end, !dbg !602

if.end:                                           ; preds = %entry
  %num_gets = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call, i64 0, i32 2, !dbg !603
  %0 = load i64, i64* %num_gets, align 8, !dbg !603, !tbaa !520
  %cmp1 = icmp eq i64 %0, 0, !dbg !603
  br i1 %cmp1, label %if.end3, label %if.else, !dbg !606

if.else:                                          ; preds = %if.end
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_delete, i64 0, i64 0)) #13, !dbg !603
  unreachable, !dbg !603

if.end3:                                          ; preds = %if.end
  %num_hits = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call, i64 0, i32 5, !dbg !607
  %1 = load i64, i64* %num_hits, align 8, !dbg !607, !tbaa !524
  %cmp4 = icmp eq i64 %1, 0, !dbg !607
  br i1 %cmp4, label %if.end7, label %if.else6, !dbg !610

if.else6:                                         ; preds = %if.end3
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_delete, i64 0, i64 0)) #13, !dbg !607
  unreachable, !dbg !607

if.end7:                                          ; preds = %if.end3
  %num_deletes = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call, i64 0, i32 4, !dbg !611
  %2 = load i64, i64* %num_deletes, align 8, !dbg !611, !tbaa !523
  %cmp8 = icmp eq i64 %2, 1, !dbg !611
  br i1 %cmp8, label %if.end11, label %if.else10, !dbg !614

if.else10:                                        ; preds = %if.end7
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 282, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_delete, i64 0, i64 0)) #13, !dbg !611
  unreachable, !dbg !611

if.end11:                                         ; preds = %if.end7
  %num_sets = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call, i64 0, i32 3, !dbg !615
  %3 = load i64, i64* %num_sets, align 8, !dbg !615, !tbaa !522
  %cmp12 = icmp eq i64 %3, 0, !dbg !615
  br i1 %cmp12, label %if.end15, label %if.else14, !dbg !618

if.else14:                                        ; preds = %if.end11
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 283, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_delete, i64 0, i64 0)) #13, !dbg !615
  unreachable, !dbg !615

if.end15:                                         ; preds = %if.end11
  tail call void @stats_prefix_record_delete(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0), i64 noundef 4) #12, !dbg !619
  %4 = load i64, i64* %num_deletes, align 8, !dbg !620, !tbaa !523
  %cmp17 = icmp eq i64 %4, 1, !dbg !620
  br i1 %cmp17, label %cleanup, label %if.else19, !dbg !623

if.else19:                                        ; preds = %if.end15
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 285, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_delete, i64 0, i64 0)) #13, !dbg !620
  unreachable, !dbg !620

cleanup:                                          ; preds = %if.end15, %entry
  %retval.0 = phi i32 [ 2, %entry ], [ 1, %if.end15 ], !dbg !599
  ret i32 %retval.0, !dbg !624
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_stats_prefix_record_set() #0 !dbg !625 {
entry:
  tail call void @stats_prefix_clear() #12, !dbg !628
  tail call void @stats_prefix_record_set(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i64 noundef 7) #12, !dbg !629
  %call = tail call %struct._prefix_stats* @stats_prefix_find(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i64 noundef 7) #12, !dbg !630
  call void @llvm.dbg.value(metadata %struct._prefix_stats* %call, metadata !627, metadata !DIExpression()), !dbg !631
  %cmp = icmp eq %struct._prefix_stats* %call, null, !dbg !632
  br i1 %cmp, label %cleanup, label %if.end, !dbg !634

if.end:                                           ; preds = %entry
  %num_gets = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call, i64 0, i32 2, !dbg !635
  %0 = load i64, i64* %num_gets, align 8, !dbg !635, !tbaa !520
  %cmp1 = icmp eq i64 %0, 0, !dbg !635
  br i1 %cmp1, label %if.end3, label %if.else, !dbg !638

if.else:                                          ; preds = %if.end
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 298, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_set, i64 0, i64 0)) #13, !dbg !635
  unreachable, !dbg !635

if.end3:                                          ; preds = %if.end
  %num_hits = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call, i64 0, i32 5, !dbg !639
  %1 = load i64, i64* %num_hits, align 8, !dbg !639, !tbaa !524
  %cmp4 = icmp eq i64 %1, 0, !dbg !639
  br i1 %cmp4, label %if.end7, label %if.else6, !dbg !642

if.else6:                                         ; preds = %if.end3
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 299, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_set, i64 0, i64 0)) #13, !dbg !639
  unreachable, !dbg !639

if.end7:                                          ; preds = %if.end3
  %num_deletes = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call, i64 0, i32 4, !dbg !643
  %2 = load i64, i64* %num_deletes, align 8, !dbg !643, !tbaa !523
  %cmp8 = icmp eq i64 %2, 0, !dbg !643
  br i1 %cmp8, label %if.end11, label %if.else10, !dbg !646

if.else10:                                        ; preds = %if.end7
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_set, i64 0, i64 0)) #13, !dbg !643
  unreachable, !dbg !643

if.end11:                                         ; preds = %if.end7
  %num_sets = getelementptr inbounds %struct._prefix_stats, %struct._prefix_stats* %call, i64 0, i32 3, !dbg !647
  %3 = load i64, i64* %num_sets, align 8, !dbg !647, !tbaa !522
  %cmp12 = icmp eq i64 %3, 1, !dbg !647
  br i1 %cmp12, label %if.end15, label %if.else14, !dbg !650

if.else14:                                        ; preds = %if.end11
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.92, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 301, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_set, i64 0, i64 0)) #13, !dbg !647
  unreachable, !dbg !647

if.end15:                                         ; preds = %if.end11
  tail call void @stats_prefix_record_delete(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0), i64 noundef 4) #12, !dbg !651
  %4 = load i64, i64* %num_sets, align 8, !dbg !652, !tbaa !522
  %cmp17 = icmp eq i64 %4, 1, !dbg !652
  br i1 %cmp17, label %cleanup, label %if.else19, !dbg !655

if.else19:                                        ; preds = %if.end15
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.92, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_record_set, i64 0, i64 0)) #13, !dbg !652
  unreachable, !dbg !652

cleanup:                                          ; preds = %if.end15, %entry
  %retval.0 = phi i32 [ 2, %entry ], [ 1, %if.end15 ], !dbg !631
  ret i32 %retval.0, !dbg !656
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_stats_prefix_dump() #0 !dbg !657 {
entry:
  %tmp = alloca [500 x i8], align 16
  %length = alloca i32, align 4
  %0 = load i32 (i8*, i64)*, i32 (i8*, i64)** @hash, align 8, !dbg !669, !tbaa !458
  %call = tail call i32 %0(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i64 noundef 3) #12, !dbg !669
  call void @llvm.dbg.value(metadata i32 %call, metadata !659, metadata !DIExpression(DW_OP_constu, 255, DW_OP_and, DW_OP_stack_value)), !dbg !670
  %1 = getelementptr inbounds [500 x i8], [500 x i8]* %tmp, i64 0, i64 0, !dbg !671
  call void @llvm.lifetime.start.p0i8(i64 500, i8* nonnull %1) #14, !dbg !671
  call void @llvm.dbg.declare(metadata [500 x i8]* %tmp, metadata !660, metadata !DIExpression()), !dbg !672
  %2 = bitcast i32* %length to i8*, !dbg !673
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14, !dbg !673
  tail call void @stats_prefix_clear() #12, !dbg !674
  call void @llvm.dbg.value(metadata i32* %length, metadata !667, metadata !DIExpression(DW_OP_deref)), !dbg !670
  %call1 = call i8* @stats_prefix_dump(i32* noundef nonnull %length) #12, !dbg !675
  call void @llvm.dbg.value(metadata i8* %call1, metadata !664, metadata !DIExpression()), !dbg !670
  %call2 = call i32 @strcmp(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i8* noundef %call1) #15, !dbg !675
  %cmp = icmp eq i32 %call2, 0, !dbg !675
  br i1 %cmp, label %if.end, label %if.else, !dbg !678

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.94, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 317, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !675
  unreachable, !dbg !675

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %length, align 4, !dbg !679, !tbaa !424
  call void @llvm.dbg.value(metadata i32 %3, metadata !667, metadata !DIExpression()), !dbg !670
  %cmp3 = icmp eq i32 %3, 5, !dbg !679
  br i1 %cmp3, label %if.end6, label %if.else5, !dbg !682

if.else5:                                         ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !679
  unreachable, !dbg !679

if.end6:                                          ; preds = %if.end
  call void @stats_prefix_record_set(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i64 noundef 7) #12, !dbg !683
  call void @free(i8* noundef %call1) #12, !dbg !684
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.96, i64 0, i64 0), metadata !665, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i32* %length, metadata !667, metadata !DIExpression(DW_OP_deref)), !dbg !670
  %call7 = call i8* @stats_prefix_dump(i32* noundef nonnull %length) #12, !dbg !685
  call void @llvm.dbg.value(metadata i8* %call7, metadata !664, metadata !DIExpression()), !dbg !670
  %call8 = call i32 @strcmp(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.96, i64 0, i64 0), i8* noundef %call7) #15, !dbg !685
  %cmp9 = icmp eq i32 %call8, 0, !dbg !685
  br i1 %cmp9, label %if.end12, label %if.else11, !dbg !688

if.else11:                                        ; preds = %if.end6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 322, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !685
  unreachable, !dbg !685

if.end12:                                         ; preds = %if.end6
  %call13 = call i64 @strlen(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.96, i64 0, i64 0)) #15, !dbg !689
  %4 = load i32, i32* %length, align 4, !dbg !689, !tbaa !424
  call void @llvm.dbg.value(metadata i32 %4, metadata !667, metadata !DIExpression()), !dbg !670
  %conv = sext i32 %4 to i64, !dbg !689
  %cmp14 = icmp eq i64 %call13, %conv, !dbg !689
  br i1 %cmp14, label %if.end18, label %if.else17, !dbg !692

if.else17:                                        ; preds = %if.end12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !689
  unreachable, !dbg !689

if.end18:                                         ; preds = %if.end12
  call void @stats_prefix_record_get(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i64 noundef 7, i1 noundef zeroext false) #12, !dbg !693
  call void @free(i8* noundef %call7) #12, !dbg !694
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.99, i64 0, i64 0), metadata !665, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i32* %length, metadata !667, metadata !DIExpression(DW_OP_deref)), !dbg !670
  %call19 = call i8* @stats_prefix_dump(i32* noundef nonnull %length) #12, !dbg !695
  call void @llvm.dbg.value(metadata i8* %call19, metadata !664, metadata !DIExpression()), !dbg !670
  %call20 = call i32 @strcmp(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.99, i64 0, i64 0), i8* noundef %call19) #15, !dbg !695
  %cmp21 = icmp eq i32 %call20, 0, !dbg !695
  br i1 %cmp21, label %if.end25, label %if.else24, !dbg !698

if.else24:                                        ; preds = %if.end18
  call void @__assert_fail(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 327, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !695
  unreachable, !dbg !695

if.end25:                                         ; preds = %if.end18
  %call26 = call i64 @strlen(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.99, i64 0, i64 0)) #15, !dbg !699
  %5 = load i32, i32* %length, align 4, !dbg !699, !tbaa !424
  call void @llvm.dbg.value(metadata i32 %5, metadata !667, metadata !DIExpression()), !dbg !670
  %conv27 = sext i32 %5 to i64, !dbg !699
  %cmp28 = icmp eq i64 %call26, %conv27, !dbg !699
  br i1 %cmp28, label %if.end32, label %if.else31, !dbg !702

if.else31:                                        ; preds = %if.end25
  call void @__assert_fail(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !699
  unreachable, !dbg !699

if.end32:                                         ; preds = %if.end25
  call void @stats_prefix_record_get(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i64 noundef 7, i1 noundef zeroext true) #12, !dbg !703
  call void @free(i8* noundef %call19) #12, !dbg !704
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.100, i64 0, i64 0), metadata !665, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i32* %length, metadata !667, metadata !DIExpression(DW_OP_deref)), !dbg !670
  %call33 = call i8* @stats_prefix_dump(i32* noundef nonnull %length) #12, !dbg !705
  call void @llvm.dbg.value(metadata i8* %call33, metadata !664, metadata !DIExpression()), !dbg !670
  %call34 = call i32 @strcmp(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.100, i64 0, i64 0), i8* noundef %call33) #15, !dbg !705
  %cmp35 = icmp eq i32 %call34, 0, !dbg !705
  br i1 %cmp35, label %if.end39, label %if.else38, !dbg !708

if.else38:                                        ; preds = %if.end32
  call void @__assert_fail(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 332, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !705
  unreachable, !dbg !705

if.end39:                                         ; preds = %if.end32
  %call40 = call i64 @strlen(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.100, i64 0, i64 0)) #15, !dbg !709
  %6 = load i32, i32* %length, align 4, !dbg !709, !tbaa !424
  call void @llvm.dbg.value(metadata i32 %6, metadata !667, metadata !DIExpression()), !dbg !670
  %conv41 = sext i32 %6 to i64, !dbg !709
  %cmp42 = icmp eq i64 %call40, %conv41, !dbg !709
  br i1 %cmp42, label %if.end46, label %if.else45, !dbg !712

if.else45:                                        ; preds = %if.end39
  call void @__assert_fail(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 333, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !709
  unreachable, !dbg !709

if.end46:                                         ; preds = %if.end39
  call void @stats_prefix_record_delete(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i64 noundef 7) #12, !dbg !713
  call void @free(i8* noundef %call33) #12, !dbg !714
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.101, i64 0, i64 0), metadata !665, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i32* %length, metadata !667, metadata !DIExpression(DW_OP_deref)), !dbg !670
  %call47 = call i8* @stats_prefix_dump(i32* noundef nonnull %length) #12, !dbg !715
  call void @llvm.dbg.value(metadata i8* %call47, metadata !664, metadata !DIExpression()), !dbg !670
  %call48 = call i32 @strcmp(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.101, i64 0, i64 0), i8* noundef %call47) #15, !dbg !715
  %cmp49 = icmp eq i32 %call48, 0, !dbg !715
  br i1 %cmp49, label %if.end53, label %if.else52, !dbg !718

if.else52:                                        ; preds = %if.end46
  call void @__assert_fail(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 337, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !715
  unreachable, !dbg !715

if.end53:                                         ; preds = %if.end46
  %call54 = call i64 @strlen(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.101, i64 0, i64 0)) #15, !dbg !719
  %7 = load i32, i32* %length, align 4, !dbg !719, !tbaa !424
  call void @llvm.dbg.value(metadata i32 %7, metadata !667, metadata !DIExpression()), !dbg !670
  %conv55 = sext i32 %7 to i64, !dbg !719
  %cmp56 = icmp eq i64 %call54, %conv55, !dbg !719
  br i1 %cmp56, label %if.end60, label %if.else59, !dbg !722

if.else59:                                        ; preds = %if.end53
  call void @__assert_fail(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !719
  unreachable, !dbg !719

if.end60:                                         ; preds = %if.end53
  call void @stats_prefix_record_delete(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i64 0, i64 0), i64 noundef 7) #12, !dbg !723
  call void @free(i8* noundef %call47) #12, !dbg !724
  call void @llvm.dbg.value(metadata i32* %length, metadata !667, metadata !DIExpression(DW_OP_deref)), !dbg !670
  %call61 = call i8* @stats_prefix_dump(i32* noundef nonnull %length) #12, !dbg !725
  call void @llvm.dbg.value(metadata i8* %call61, metadata !664, metadata !DIExpression()), !dbg !670
  %call62 = call i8* @strstr(i8* noundef %call61, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.103, i64 0, i64 0)) #15, !dbg !726
  %cmp63.not = icmp eq i8* %call62, null, !dbg !726
  br i1 %cmp63.not, label %if.else66, label %if.end67, !dbg !729

if.else66:                                        ; preds = %if.end60
  call void @__assert_fail(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 345, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !726
  unreachable, !dbg !726

if.end67:                                         ; preds = %if.end60
  %call68 = call i8* @strstr(i8* noundef %call61, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.105, i64 0, i64 0)) #15, !dbg !730
  %cmp69.not = icmp eq i8* %call68, null, !dbg !730
  br i1 %cmp69.not, label %if.else72, label %if.end73, !dbg !733

if.else72:                                        ; preds = %if.end67
  call void @__assert_fail(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !730
  unreachable, !dbg !730

if.end73:                                         ; preds = %if.end67
  %call74 = call i8* @strstr(i8* noundef %call61, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0)) #15, !dbg !734
  %cmp75.not = icmp eq i8* %call74, null, !dbg !734
  br i1 %cmp75.not, label %if.else78, label %if.end79, !dbg !737

if.else78:                                        ; preds = %if.end73
  call void @__assert_fail(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 347, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !734
  unreachable, !dbg !734

if.end79:                                         ; preds = %if.end73
  call void @free(i8* noundef %call61) #12, !dbg !738
  call void @llvm.dbg.value(metadata i8 0, metadata !668, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i32 0, metadata !666, metadata !DIExpression()), !dbg !670
  br label %for.body, !dbg !739

for.body:                                         ; preds = %if.end79, %for.inc
  %keynum.0154 = phi i32 [ 0, %if.end79 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %keynum.0154, metadata !666, metadata !DIExpression()), !dbg !670
  %call82 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %1, i64 noundef 500, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0), i32 noundef %keynum.0154) #12, !dbg !741
  %8 = load i32 (i8*, i64)*, i32 (i8*, i64)** @hash, align 8, !dbg !744, !tbaa !458
  %call85 = call i64 @strlen(i8* noundef nonnull %1) #15, !dbg !746
  %sub = add i64 %call85, -1, !dbg !747
  %call86 = call i32 %8(i8* noundef nonnull %1, i64 noundef %sub) #12, !dbg !744
  %9 = xor i32 %call86, %call, !dbg !748
  %10 = and i32 %9, 255, !dbg !748
  %cmp88 = icmp eq i32 %10, 0, !dbg !748
  br i1 %cmp88, label %if.end94, label %for.inc, !dbg !749

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %keynum.0154, 1, !dbg !750
  call void @llvm.dbg.value(metadata i32 %inc, metadata !666, metadata !DIExpression()), !dbg !670
  %exitcond.not = icmp eq i32 %inc, 25600, !dbg !751
  br i1 %exitcond.not, label %if.else93, label %for.body, !dbg !739, !llvm.loop !752

if.else93:                                        ; preds = %for.inc
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !754
  unreachable, !dbg !754

if.end94:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i8 undef, metadata !668, metadata !DIExpression()), !dbg !670
  %call97 = call i64 @strlen(i8* noundef nonnull %1) #15, !dbg !757
  call void @stats_prefix_record_set(i8* noundef nonnull %1, i64 noundef %call97) #12, !dbg !758
  call void @llvm.dbg.value(metadata i32* %length, metadata !667, metadata !DIExpression(DW_OP_deref)), !dbg !670
  %call98 = call i8* @stats_prefix_dump(i32* noundef nonnull %length) #12, !dbg !759
  call void @llvm.dbg.value(metadata i8* %call98, metadata !664, metadata !DIExpression()), !dbg !670
  %call99 = call i8* @strstr(i8* noundef %call98, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.103, i64 0, i64 0)) #15, !dbg !760
  %cmp100.not = icmp eq i8* %call99, null, !dbg !760
  br i1 %cmp100.not, label %if.else103, label %if.end104, !dbg !763

if.else103:                                       ; preds = %if.end94
  call void @__assert_fail(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.104, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !760
  unreachable, !dbg !760

if.end104:                                        ; preds = %if.end94
  %call105 = call i8* @strstr(i8* noundef %call98, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.105, i64 0, i64 0)) #15, !dbg !764
  %cmp106.not = icmp eq i8* %call105, null, !dbg !764
  br i1 %cmp106.not, label %if.else109, label %if.end110, !dbg !767

if.else109:                                       ; preds = %if.end104
  call void @__assert_fail(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 364, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !764
  unreachable, !dbg !764

if.end110:                                        ; preds = %if.end104
  %call111 = call i8* @strstr(i8* noundef %call98, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0)) #15, !dbg !768
  %cmp112.not = icmp eq i8* %call111, null, !dbg !768
  br i1 %cmp112.not, label %if.else115, label %if.end116, !dbg !771

if.else115:                                       ; preds = %if.end110
  call void @__assert_fail(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !768
  unreachable, !dbg !768

if.end116:                                        ; preds = %if.end110
  %call118 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %1, i64 noundef 500, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.110, i64 0, i64 0), i32 noundef %keynum.0154) #12, !dbg !772
  %call120 = call i8* @strstr(i8* noundef %call98, i8* noundef nonnull %1) #15, !dbg !773
  %cmp121.not = icmp eq i8* %call120, null, !dbg !773
  br i1 %cmp121.not, label %if.else124, label %if.end125, !dbg !776

if.else124:                                       ; preds = %if.end116
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.111, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.test_stats_prefix_dump, i64 0, i64 0)) #13, !dbg !773
  unreachable, !dbg !773

if.end125:                                        ; preds = %if.end116
  call void @free(i8* noundef %call98) #12, !dbg !777
  call void @stats_prefix_clear() #12, !dbg !778
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14, !dbg !779
  call void @llvm.lifetime.end.p0i8(i64 500, i8* nonnull %1) #14, !dbg !779
  ret i32 1, !dbg !780
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_issue_161() #0 !dbg !781 {
entry:
  %call = tail call fastcc i32 @cache_bulkalloc(i64 noundef 1) #16, !dbg !784
  call void @llvm.dbg.value(metadata i32 %call, metadata !783, metadata !DIExpression()), !dbg !785
  %cmp = icmp eq i32 %call, 1, !dbg !786
  br i1 %cmp, label %if.then, label %if.end, !dbg !788

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @cache_bulkalloc(i64 noundef 512) #16, !dbg !789
  call void @llvm.dbg.value(metadata i32 %call1, metadata !783, metadata !DIExpression()), !dbg !785
  br label %if.end, !dbg !791

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call, %entry ], !dbg !785
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !783, metadata !DIExpression()), !dbg !785
  ret i32 %ret.0, !dbg !792
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_safe_strtol() #0 !dbg !793 {
entry:
  %val = alloca i32, align 4
  %0 = bitcast i32* %val to i8*, !dbg !799
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14, !dbg !799
  call void @llvm.dbg.value(metadata i32* %val, metadata !795, metadata !DIExpression(DW_OP_deref)), !dbg !800
  %call = call zeroext i1 @safe_strtol(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0), i32* noundef nonnull %val) #12, !dbg !801
  br i1 %call, label %if.end, label %if.else, !dbg !804

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 450, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.test_safe_strtol, i64 0, i64 0)) #13, !dbg !801
  unreachable, !dbg !801

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %val, align 4, !dbg !805, !tbaa !424
  call void @llvm.dbg.value(metadata i32 %1, metadata !795, metadata !DIExpression()), !dbg !800
  %cmp = icmp eq i32 %1, 123, !dbg !805
  br i1 %cmp, label %if.end3, label %if.else2, !dbg !808

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 451, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.test_safe_strtol, i64 0, i64 0)) #13, !dbg !805
  unreachable, !dbg !805

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32* %val, metadata !795, metadata !DIExpression(DW_OP_deref)), !dbg !800
  %call4 = call zeroext i1 @safe_strtol(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i64 0, i64 0), i32* noundef nonnull %val) #12, !dbg !809
  br i1 %call4, label %if.end7, label %if.else6, !dbg !812

if.else6:                                         ; preds = %if.end3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.117, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 452, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.test_safe_strtol, i64 0, i64 0)) #13, !dbg !809
  unreachable, !dbg !809

if.end7:                                          ; preds = %if.end3
  %2 = load i32, i32* %val, align 4, !dbg !813, !tbaa !424
  call void @llvm.dbg.value(metadata i32 %2, metadata !795, metadata !DIExpression()), !dbg !800
  %cmp8 = icmp eq i32 %2, 123, !dbg !813
  br i1 %cmp8, label %if.end11, label %if.else10, !dbg !816

if.else10:                                        ; preds = %if.end7
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 453, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.test_safe_strtol, i64 0, i64 0)) #13, !dbg !813
  unreachable, !dbg !813

if.end11:                                         ; preds = %if.end7
  call void @llvm.dbg.value(metadata i32* %val, metadata !795, metadata !DIExpression(DW_OP_deref)), !dbg !800
  %call12 = call zeroext i1 @safe_strtol(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i64 0, i64 0), i32* noundef nonnull %val) #12, !dbg !817
  br i1 %call12, label %if.end15, label %if.else14, !dbg !820

if.else14:                                        ; preds = %if.end11
  call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 454, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.test_safe_strtol, i64 0, i64 0)) #13, !dbg !817
  unreachable, !dbg !817

if.end15:                                         ; preds = %if.end11
  %3 = load i32, i32* %val, align 4, !dbg !821, !tbaa !424
  call void @llvm.dbg.value(metadata i32 %3, metadata !795, metadata !DIExpression()), !dbg !800
  %cmp16 = icmp eq i32 %3, -123, !dbg !821
  br i1 %cmp16, label %if.end19, label %if.else18, !dbg !824

if.else18:                                        ; preds = %if.end15
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 455, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.test_safe_strtol, i64 0, i64 0)) #13, !dbg !821
  unreachable, !dbg !821

if.end19:                                         ; preds = %if.end15
  call void @llvm.dbg.value(metadata i32* %val, metadata !795, metadata !DIExpression(DW_OP_deref)), !dbg !800
  %call20 = call zeroext i1 @safe_strtol(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.121, i64 0, i64 0), i32* noundef nonnull %val) #12, !dbg !825
  br i1 %call20, label %if.else22, label %if.end23, !dbg !828

if.else22:                                        ; preds = %if.end19
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 456, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.test_safe_strtol, i64 0, i64 0)) #13, !dbg !825
  unreachable, !dbg !825

if.end23:                                         ; preds = %if.end19
  call void @llvm.dbg.value(metadata i32* %val, metadata !795, metadata !DIExpression(DW_OP_deref)), !dbg !800
  %call24 = call zeroext i1 @safe_strtol(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i32* noundef nonnull %val) #12, !dbg !829
  br i1 %call24, label %if.else26, label %if.end27, !dbg !832

if.else26:                                        ; preds = %if.end23
  call void @__assert_fail(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 457, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.test_safe_strtol, i64 0, i64 0)) #13, !dbg !829
  unreachable, !dbg !829

if.end27:                                         ; preds = %if.end23
  call void @llvm.dbg.value(metadata i32* %val, metadata !795, metadata !DIExpression(DW_OP_deref)), !dbg !800
  %call28 = call zeroext i1 @safe_strtol(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.125, i64 0, i64 0), i32* noundef nonnull %val) #12, !dbg !833
  br i1 %call28, label %if.else30, label %if.end31, !dbg !836

if.else30:                                        ; preds = %if.end27
  call void @__assert_fail(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 458, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.test_safe_strtol, i64 0, i64 0)) #13, !dbg !833
  unreachable, !dbg !833

if.end31:                                         ; preds = %if.end27
  call void @llvm.dbg.value(metadata i32* %val, metadata !795, metadata !DIExpression(DW_OP_deref)), !dbg !800
  %call32 = call zeroext i1 @safe_strtol(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.127, i64 0, i64 0), i32* noundef nonnull %val) #12, !dbg !837
  br i1 %call32, label %if.else34, label %if.end35, !dbg !840

if.else34:                                        ; preds = %if.end31
  call void @__assert_fail(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.128, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 459, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.test_safe_strtol, i64 0, i64 0)) #13, !dbg !837
  unreachable, !dbg !837

if.end35:                                         ; preds = %if.end31
  call void @llvm.dbg.value(metadata i32* %val, metadata !795, metadata !DIExpression(DW_OP_deref)), !dbg !800
  %call36 = call zeroext i1 @safe_strtol(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.129, i64 0, i64 0), i32* noundef nonnull %val) #12, !dbg !841
  br i1 %call36, label %if.end39, label %if.else38, !dbg !844

if.else38:                                        ; preds = %if.end35
  call void @__assert_fail(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 465, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.test_safe_strtol, i64 0, i64 0)) #13, !dbg !841
  unreachable, !dbg !841

if.end39:                                         ; preds = %if.end35
  %4 = load i32, i32* %val, align 4, !dbg !845, !tbaa !424
  call void @llvm.dbg.value(metadata i32 %4, metadata !795, metadata !DIExpression()), !dbg !800
  %cmp40 = icmp eq i32 %4, 2147483647, !dbg !845
  br i1 %cmp40, label %if.end44, label %if.else43, !dbg !848

if.else43:                                        ; preds = %if.end39
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 466, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.test_safe_strtol, i64 0, i64 0)) #13, !dbg !845
  unreachable, !dbg !845

if.end44:                                         ; preds = %if.end39
  call void @llvm.dbg.value(metadata i32* %val, metadata !795, metadata !DIExpression(DW_OP_deref)), !dbg !800
  %call45 = call zeroext i1 @safe_strtol(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i64 0, i64 0), i32* noundef nonnull %val) #12, !dbg !849
  br i1 %call45, label %if.end48, label %if.else47, !dbg !852

if.else47:                                        ; preds = %if.end44
  call void @__assert_fail(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 472, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.test_safe_strtol, i64 0, i64 0)) #13, !dbg !849
  unreachable, !dbg !849

if.end48:                                         ; preds = %if.end44
  %5 = load i32, i32* %val, align 4, !dbg !853, !tbaa !424
  call void @llvm.dbg.value(metadata i32 %5, metadata !795, metadata !DIExpression()), !dbg !800
  %cmp49 = icmp eq i32 %5, 123, !dbg !853
  br i1 %cmp49, label %if.end53, label %if.else52, !dbg !856

if.else52:                                        ; preds = %if.end48
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 473, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.test_safe_strtol, i64 0, i64 0)) #13, !dbg !853
  unreachable, !dbg !853

if.end53:                                         ; preds = %if.end48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14, !dbg !857
  ret i32 1, !dbg !858
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_safe_strtoll() #0 !dbg !859 {
entry:
  %val = alloca i64, align 8
  %0 = bitcast i64* %val to i8*, !dbg !864
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14, !dbg !864
  call void @llvm.dbg.value(metadata i64* %val, metadata !861, metadata !DIExpression(DW_OP_deref)), !dbg !865
  %call = call zeroext i1 @safe_strtoll(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !866
  br i1 %call, label %if.end, label %if.else, !dbg !869

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.134, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 421, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoll, i64 0, i64 0)) #13, !dbg !866
  unreachable, !dbg !866

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %val, align 8, !dbg !870, !tbaa !873
  call void @llvm.dbg.value(metadata i64 %1, metadata !861, metadata !DIExpression()), !dbg !865
  %cmp = icmp eq i64 %1, 123, !dbg !870
  br i1 %cmp, label %if.end3, label %if.else2, !dbg !874

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 422, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoll, i64 0, i64 0)) #13, !dbg !870
  unreachable, !dbg !870

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %val, metadata !861, metadata !DIExpression(DW_OP_deref)), !dbg !865
  %call4 = call zeroext i1 @safe_strtoll(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !875
  br i1 %call4, label %if.end7, label %if.else6, !dbg !878

if.else6:                                         ; preds = %if.end3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.135, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 423, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoll, i64 0, i64 0)) #13, !dbg !875
  unreachable, !dbg !875

if.end7:                                          ; preds = %if.end3
  %2 = load i64, i64* %val, align 8, !dbg !879, !tbaa !873
  call void @llvm.dbg.value(metadata i64 %2, metadata !861, metadata !DIExpression()), !dbg !865
  %cmp8 = icmp eq i64 %2, 123, !dbg !879
  br i1 %cmp8, label %if.end11, label %if.else10, !dbg !882

if.else10:                                        ; preds = %if.end7
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 424, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoll, i64 0, i64 0)) #13, !dbg !879
  unreachable, !dbg !879

if.end11:                                         ; preds = %if.end7
  call void @llvm.dbg.value(metadata i64* %val, metadata !861, metadata !DIExpression(DW_OP_deref)), !dbg !865
  %call12 = call zeroext i1 @safe_strtoll(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !883
  br i1 %call12, label %if.end15, label %if.else14, !dbg !886

if.else14:                                        ; preds = %if.end11
  call void @__assert_fail(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 425, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoll, i64 0, i64 0)) #13, !dbg !883
  unreachable, !dbg !883

if.end15:                                         ; preds = %if.end11
  %3 = load i64, i64* %val, align 8, !dbg !887, !tbaa !873
  call void @llvm.dbg.value(metadata i64 %3, metadata !861, metadata !DIExpression()), !dbg !865
  %cmp16 = icmp eq i64 %3, -123, !dbg !887
  br i1 %cmp16, label %if.end19, label %if.else18, !dbg !890

if.else18:                                        ; preds = %if.end15
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 426, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoll, i64 0, i64 0)) #13, !dbg !887
  unreachable, !dbg !887

if.end19:                                         ; preds = %if.end15
  call void @llvm.dbg.value(metadata i64* %val, metadata !861, metadata !DIExpression(DW_OP_deref)), !dbg !865
  %call20 = call zeroext i1 @safe_strtoll(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.121, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !891
  br i1 %call20, label %if.else22, label %if.end23, !dbg !894

if.else22:                                        ; preds = %if.end19
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.137, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 427, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoll, i64 0, i64 0)) #13, !dbg !891
  unreachable, !dbg !891

if.end23:                                         ; preds = %if.end19
  call void @llvm.dbg.value(metadata i64* %val, metadata !861, metadata !DIExpression(DW_OP_deref)), !dbg !865
  %call24 = call zeroext i1 @safe_strtoll(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !895
  br i1 %call24, label %if.else26, label %if.end27, !dbg !898

if.else26:                                        ; preds = %if.end23
  call void @__assert_fail(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.138, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 428, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoll, i64 0, i64 0)) #13, !dbg !895
  unreachable, !dbg !895

if.end27:                                         ; preds = %if.end23
  call void @llvm.dbg.value(metadata i64* %val, metadata !861, metadata !DIExpression(DW_OP_deref)), !dbg !865
  %call28 = call zeroext i1 @safe_strtoll(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.125, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !899
  br i1 %call28, label %if.else30, label %if.end31, !dbg !902

if.else30:                                        ; preds = %if.end27
  call void @__assert_fail(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.139, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 429, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoll, i64 0, i64 0)) #13, !dbg !899
  unreachable, !dbg !899

if.end31:                                         ; preds = %if.end27
  call void @llvm.dbg.value(metadata i64* %val, metadata !861, metadata !DIExpression(DW_OP_deref)), !dbg !865
  %call32 = call zeroext i1 @safe_strtoll(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.127, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !903
  br i1 %call32, label %if.else34, label %if.end35, !dbg !906

if.else34:                                        ; preds = %if.end31
  call void @__assert_fail(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.140, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 430, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoll, i64 0, i64 0)) #13, !dbg !903
  unreachable, !dbg !903

if.end35:                                         ; preds = %if.end31
  call void @llvm.dbg.value(metadata i64* %val, metadata !861, metadata !DIExpression(DW_OP_deref)), !dbg !865
  %call36 = call zeroext i1 @safe_strtoll(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.141, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !907
  br i1 %call36, label %if.else38, label %if.end39, !dbg !910

if.else38:                                        ; preds = %if.end35
  call void @__assert_fail(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 433, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoll, i64 0, i64 0)) #13, !dbg !907
  unreachable, !dbg !907

if.end39:                                         ; preds = %if.end35
  call void @llvm.dbg.value(metadata i64* %val, metadata !861, metadata !DIExpression(DW_OP_deref)), !dbg !865
  %call40 = call zeroext i1 @safe_strtoll(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.143, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !911
  br i1 %call40, label %if.end43, label %if.else42, !dbg !914

if.else42:                                        ; preds = %if.end39
  call void @__assert_fail(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.144, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 434, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoll, i64 0, i64 0)) #13, !dbg !911
  unreachable, !dbg !911

if.end43:                                         ; preds = %if.end39
  %4 = load i64, i64* %val, align 8, !dbg !915, !tbaa !873
  call void @llvm.dbg.value(metadata i64 %4, metadata !861, metadata !DIExpression()), !dbg !865
  %cmp44 = icmp eq i64 %4, 9223372036854775807, !dbg !915
  br i1 %cmp44, label %if.end47, label %if.else46, !dbg !918

if.else46:                                        ; preds = %if.end43
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.145, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 435, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoll, i64 0, i64 0)) #13, !dbg !915
  unreachable, !dbg !915

if.end47:                                         ; preds = %if.end43
  call void @llvm.dbg.value(metadata i64* %val, metadata !861, metadata !DIExpression(DW_OP_deref)), !dbg !865
  %call48 = call zeroext i1 @safe_strtoll(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.146, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !919
  br i1 %call48, label %if.else50, label %if.end51, !dbg !922

if.else50:                                        ; preds = %if.end47
  call void @__assert_fail(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 440, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoll, i64 0, i64 0)) #13, !dbg !919
  unreachable, !dbg !919

if.end51:                                         ; preds = %if.end47
  call void @llvm.dbg.value(metadata i64* %val, metadata !861, metadata !DIExpression(DW_OP_deref)), !dbg !865
  %call52 = call zeroext i1 @safe_strtoll(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !923
  br i1 %call52, label %if.end55, label %if.else54, !dbg !926

if.else54:                                        ; preds = %if.end51
  call void @__assert_fail(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 443, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoll, i64 0, i64 0)) #13, !dbg !923
  unreachable, !dbg !923

if.end55:                                         ; preds = %if.end51
  %5 = load i64, i64* %val, align 8, !dbg !927, !tbaa !873
  call void @llvm.dbg.value(metadata i64 %5, metadata !861, metadata !DIExpression()), !dbg !865
  %cmp56 = icmp eq i64 %5, 123, !dbg !927
  br i1 %cmp56, label %if.end59, label %if.else58, !dbg !930

if.else58:                                        ; preds = %if.end55
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 444, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoll, i64 0, i64 0)) #13, !dbg !927
  unreachable, !dbg !927

if.end59:                                         ; preds = %if.end55
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14, !dbg !931
  ret i32 1, !dbg !932
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_safe_strtoul() #0 !dbg !933 {
entry:
  %val = alloca i32, align 4
  %0 = bitcast i32* %val to i8*, !dbg !936
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14, !dbg !936
  call void @llvm.dbg.value(metadata i32* %val, metadata !935, metadata !DIExpression(DW_OP_deref)), !dbg !937
  %call = call zeroext i1 @safe_strtoul(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0), i32* noundef nonnull %val) #12, !dbg !938
  br i1 %call, label %if.end, label %if.else, !dbg !941

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.149, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 378, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoul, i64 0, i64 0)) #13, !dbg !938
  unreachable, !dbg !938

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %val, align 4, !dbg !942, !tbaa !424
  call void @llvm.dbg.value(metadata i32 %1, metadata !935, metadata !DIExpression()), !dbg !937
  %cmp = icmp eq i32 %1, 123, !dbg !942
  br i1 %cmp, label %if.end3, label %if.else2, !dbg !945

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 379, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoul, i64 0, i64 0)) #13, !dbg !942
  unreachable, !dbg !942

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32* %val, metadata !935, metadata !DIExpression(DW_OP_deref)), !dbg !937
  %call4 = call zeroext i1 @safe_strtoul(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i64 0, i64 0), i32* noundef nonnull %val) #12, !dbg !946
  br i1 %call4, label %if.end7, label %if.else6, !dbg !949

if.else6:                                         ; preds = %if.end3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.150, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 380, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoul, i64 0, i64 0)) #13, !dbg !946
  unreachable, !dbg !946

if.end7:                                          ; preds = %if.end3
  %2 = load i32, i32* %val, align 4, !dbg !950, !tbaa !424
  call void @llvm.dbg.value(metadata i32 %2, metadata !935, metadata !DIExpression()), !dbg !937
  %cmp8 = icmp eq i32 %2, 123, !dbg !950
  br i1 %cmp8, label %if.end11, label %if.else10, !dbg !953

if.else10:                                        ; preds = %if.end7
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 381, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoul, i64 0, i64 0)) #13, !dbg !950
  unreachable, !dbg !950

if.end11:                                         ; preds = %if.end7
  call void @llvm.dbg.value(metadata i32* %val, metadata !935, metadata !DIExpression(DW_OP_deref)), !dbg !937
  %call12 = call zeroext i1 @safe_strtoul(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.121, i64 0, i64 0), i32* noundef nonnull %val) #12, !dbg !954
  br i1 %call12, label %if.else14, label %if.end15, !dbg !957

if.else14:                                        ; preds = %if.end11
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.151, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 382, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoul, i64 0, i64 0)) #13, !dbg !954
  unreachable, !dbg !954

if.end15:                                         ; preds = %if.end11
  call void @llvm.dbg.value(metadata i32* %val, metadata !935, metadata !DIExpression(DW_OP_deref)), !dbg !937
  %call16 = call zeroext i1 @safe_strtoul(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i32* noundef nonnull %val) #12, !dbg !958
  br i1 %call16, label %if.else18, label %if.end19, !dbg !961

if.else18:                                        ; preds = %if.end15
  call void @__assert_fail(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 383, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoul, i64 0, i64 0)) #13, !dbg !958
  unreachable, !dbg !958

if.end19:                                         ; preds = %if.end15
  call void @llvm.dbg.value(metadata i32* %val, metadata !935, metadata !DIExpression(DW_OP_deref)), !dbg !937
  %call20 = call zeroext i1 @safe_strtoul(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.127, i64 0, i64 0), i32* noundef nonnull %val) #12, !dbg !962
  br i1 %call20, label %if.else22, label %if.end23, !dbg !965

if.else22:                                        ; preds = %if.end19
  call void @__assert_fail(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.153, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 384, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoul, i64 0, i64 0)) #13, !dbg !962
  unreachable, !dbg !962

if.end23:                                         ; preds = %if.end19
  call void @llvm.dbg.value(metadata i32* %val, metadata !935, metadata !DIExpression(DW_OP_deref)), !dbg !937
  %call24 = call zeroext i1 @safe_strtoul(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.154, i64 0, i64 0), i32* noundef nonnull %val) #12, !dbg !966
  br i1 %call24, label %if.end27, label %if.else26, !dbg !969

if.else26:                                        ; preds = %if.end23
  call void @__assert_fail(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.155, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 390, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoul, i64 0, i64 0)) #13, !dbg !966
  unreachable, !dbg !966

if.end27:                                         ; preds = %if.end23
  %3 = load i32, i32* %val, align 4, !dbg !970, !tbaa !424
  call void @llvm.dbg.value(metadata i32 %3, metadata !935, metadata !DIExpression()), !dbg !937
  %cmp28 = icmp eq i32 %3, -1, !dbg !970
  br i1 %cmp28, label %if.end32, label %if.else31, !dbg !973

if.else31:                                        ; preds = %if.end27
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 391, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoul, i64 0, i64 0)) #13, !dbg !970
  unreachable, !dbg !970

if.end32:                                         ; preds = %if.end27
  call void @llvm.dbg.value(metadata i32* %val, metadata !935, metadata !DIExpression(DW_OP_deref)), !dbg !937
  %call33 = call zeroext i1 @safe_strtoul(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i64 0, i64 0), i32* noundef nonnull %val) #12, !dbg !974
  br i1 %call33, label %if.else35, label %if.end36, !dbg !977

if.else35:                                        ; preds = %if.end32
  call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 395, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoul, i64 0, i64 0)) #13, !dbg !974
  unreachable, !dbg !974

if.end36:                                         ; preds = %if.end32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14, !dbg !978
  ret i32 1, !dbg !979
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_safe_strtoull() #0 !dbg !980 {
entry:
  %val = alloca i64, align 8
  %0 = bitcast i64* %val to i8*, !dbg !983
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14, !dbg !983
  call void @llvm.dbg.value(metadata i64* %val, metadata !982, metadata !DIExpression(DW_OP_deref)), !dbg !984
  %call = call zeroext i1 @safe_strtoull(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !985
  br i1 %call, label %if.end, label %if.else, !dbg !988

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.159, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 402, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoull, i64 0, i64 0)) #13, !dbg !985
  unreachable, !dbg !985

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %val, align 8, !dbg !989, !tbaa !873
  call void @llvm.dbg.value(metadata i64 %1, metadata !982, metadata !DIExpression()), !dbg !984
  %cmp = icmp eq i64 %1, 123, !dbg !989
  br i1 %cmp, label %if.end3, label %if.else2, !dbg !992

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 403, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoull, i64 0, i64 0)) #13, !dbg !989
  unreachable, !dbg !989

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %val, metadata !982, metadata !DIExpression(DW_OP_deref)), !dbg !984
  %call4 = call zeroext i1 @safe_strtoull(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !993
  br i1 %call4, label %if.end7, label %if.else6, !dbg !996

if.else6:                                         ; preds = %if.end3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 404, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoull, i64 0, i64 0)) #13, !dbg !993
  unreachable, !dbg !993

if.end7:                                          ; preds = %if.end3
  %2 = load i64, i64* %val, align 8, !dbg !997, !tbaa !873
  call void @llvm.dbg.value(metadata i64 %2, metadata !982, metadata !DIExpression()), !dbg !984
  %cmp8 = icmp eq i64 %2, 123, !dbg !997
  br i1 %cmp8, label %if.end11, label %if.else10, !dbg !1000

if.else10:                                        ; preds = %if.end7
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 405, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoull, i64 0, i64 0)) #13, !dbg !997
  unreachable, !dbg !997

if.end11:                                         ; preds = %if.end7
  call void @llvm.dbg.value(metadata i64* %val, metadata !982, metadata !DIExpression(DW_OP_deref)), !dbg !984
  %call12 = call zeroext i1 @safe_strtoull(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.121, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !1001
  br i1 %call12, label %if.else14, label %if.end15, !dbg !1004

if.else14:                                        ; preds = %if.end11
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.161, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 406, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoull, i64 0, i64 0)) #13, !dbg !1001
  unreachable, !dbg !1001

if.end15:                                         ; preds = %if.end11
  call void @llvm.dbg.value(metadata i64* %val, metadata !982, metadata !DIExpression(DW_OP_deref)), !dbg !984
  %call16 = call zeroext i1 @safe_strtoull(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !1005
  br i1 %call16, label %if.else18, label %if.end19, !dbg !1008

if.else18:                                        ; preds = %if.end15
  call void @__assert_fail(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.162, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 407, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoull, i64 0, i64 0)) #13, !dbg !1005
  unreachable, !dbg !1005

if.end19:                                         ; preds = %if.end15
  call void @llvm.dbg.value(metadata i64* %val, metadata !982, metadata !DIExpression(DW_OP_deref)), !dbg !984
  %call20 = call zeroext i1 @safe_strtoull(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.125, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !1009
  br i1 %call20, label %if.else22, label %if.end23, !dbg !1012

if.else22:                                        ; preds = %if.end19
  call void @__assert_fail(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.163, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 408, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoull, i64 0, i64 0)) #13, !dbg !1009
  unreachable, !dbg !1009

if.end23:                                         ; preds = %if.end19
  call void @llvm.dbg.value(metadata i64* %val, metadata !982, metadata !DIExpression(DW_OP_deref)), !dbg !984
  %call24 = call zeroext i1 @safe_strtoull(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.127, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !1013
  br i1 %call24, label %if.else26, label %if.end27, !dbg !1016

if.else26:                                        ; preds = %if.end23
  call void @__assert_fail(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.164, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 409, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoull, i64 0, i64 0)) #13, !dbg !1013
  unreachable, !dbg !1013

if.end27:                                         ; preds = %if.end23
  call void @llvm.dbg.value(metadata i64* %val, metadata !982, metadata !DIExpression(DW_OP_deref)), !dbg !984
  %call28 = call zeroext i1 @safe_strtoull(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.141, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !1017
  br i1 %call28, label %if.end31, label %if.else30, !dbg !1020

if.else30:                                        ; preds = %if.end27
  call void @__assert_fail(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.165, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 412, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoull, i64 0, i64 0)) #13, !dbg !1017
  unreachable, !dbg !1017

if.end31:                                         ; preds = %if.end27
  %3 = load i64, i64* %val, align 8, !dbg !1021, !tbaa !873
  call void @llvm.dbg.value(metadata i64 %3, metadata !982, metadata !DIExpression()), !dbg !984
  %cmp32 = icmp eq i64 %3, -1, !dbg !1021
  br i1 %cmp32, label %if.end35, label %if.else34, !dbg !1024

if.else34:                                        ; preds = %if.end31
  call void @__assert_fail(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.166, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 413, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoull, i64 0, i64 0)) #13, !dbg !1021
  unreachable, !dbg !1021

if.end35:                                         ; preds = %if.end31
  call void @llvm.dbg.value(metadata i64* %val, metadata !982, metadata !DIExpression(DW_OP_deref)), !dbg !984
  %call36 = call zeroext i1 @safe_strtoull(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.167, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !1025
  br i1 %call36, label %if.else38, label %if.end39, !dbg !1028

if.else38:                                        ; preds = %if.end35
  call void @__assert_fail(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 414, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoull, i64 0, i64 0)) #13, !dbg !1025
  unreachable, !dbg !1025

if.end39:                                         ; preds = %if.end35
  call void @llvm.dbg.value(metadata i64* %val, metadata !982, metadata !DIExpression(DW_OP_deref)), !dbg !984
  %call40 = call zeroext i1 @safe_strtoull(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i64 0, i64 0), i64* noundef nonnull %val) #12, !dbg !1029
  br i1 %call40, label %if.else42, label %if.end43, !dbg !1032

if.else42:                                        ; preds = %if.end39
  call void @__assert_fail(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.169, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 415, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.test_safe_strtoull, i64 0, i64 0)) #13, !dbg !1029
  unreachable, !dbg !1029

if.end43:                                         ; preds = %if.end39
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14, !dbg !1033
  ret i32 1, !dbg !1034
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_issue_44() #0 !dbg !1035 {
entry:
  %port = alloca i16, align 2
  %0 = bitcast i16* %port to i8*, !dbg !1039
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %0) #14, !dbg !1039
  call void @llvm.dbg.value(metadata i16* %port, metadata !1037, metadata !DIExpression(DW_OP_deref)), !dbg !1040
  %call = call fastcc i32 @start_server(i16* noundef nonnull %port, i1 noundef zeroext true, i32 noundef 600) #16, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %call, metadata !1038, metadata !DIExpression()), !dbg !1040
  %call1 = tail call i32 @kill(i32 noundef %call, i32 noundef 1) #12, !dbg !1042
  %cmp = icmp eq i32 %call1, 0, !dbg !1042
  br i1 %cmp, label %if.end, label %if.else, !dbg !1045

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.170, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 627, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.test_issue_44, i64 0, i64 0)) #13, !dbg !1042
  unreachable, !dbg !1042

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @sleep(i32 noundef 1) #12, !dbg !1046
  %call3 = tail call i32 @kill(i32 noundef %call, i32 noundef 15) #12, !dbg !1047
  %cmp4 = icmp eq i32 %call3, 0, !dbg !1047
  br i1 %cmp4, label %if.end7, label %if.else6, !dbg !1050

if.else6:                                         ; preds = %if.end
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.171, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 629, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.test_issue_44, i64 0, i64 0)) #13, !dbg !1047
  unreachable, !dbg !1047

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %0) #14, !dbg !1051
  ret i32 1, !dbg !1052
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_vperror() #0 !dbg !1053 {
entry:
  %tmpl = alloca [24 x i8], align 16
  %buf = alloca [80 x i8], align 16
  %expected = alloca [80 x i8], align 16
  call void @llvm.dbg.value(metadata i32 0, metadata !1055, metadata !DIExpression()), !dbg !1122
  %call = tail call i32 @dup(i32 noundef 2) #12, !dbg !1123
  call void @llvm.dbg.value(metadata i32 %call, metadata !1056, metadata !DIExpression()), !dbg !1122
  %cmp = icmp sgt i32 %call, -1, !dbg !1124
  br i1 %cmp, label %if.end, label %if.else, !dbg !1127

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.197, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.test_vperror, i64 0, i64 0)) #13, !dbg !1124
  unreachable, !dbg !1124

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds [24 x i8], [24 x i8]* %tmpl, i64 0, i64 0, !dbg !1128
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #14, !dbg !1128
  call void @llvm.dbg.declare(metadata [24 x i8]* %tmpl, metadata !1057, metadata !DIExpression()), !dbg !1129
  %call1 = call i8* @strncpy(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.198, i64 0, i64 0), i64 noundef 24) #12, !dbg !1130
  %call3 = call i32 @mkstemp(i8* noundef nonnull %0) #12, !dbg !1131
  call void @llvm.dbg.value(metadata i32 %call3, metadata !1061, metadata !DIExpression()), !dbg !1122
  %cmp4 = icmp sgt i32 %call3, 0, !dbg !1132
  br i1 %cmp4, label %if.end7, label %if.else6, !dbg !1135

if.else6:                                         ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.199, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.test_vperror, i64 0, i64 0)) #13, !dbg !1132
  unreachable, !dbg !1132

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @dup2(i32 noundef %call3, i32 noundef 2) #12, !dbg !1136
  call void @llvm.dbg.value(metadata i32 %call8, metadata !1055, metadata !DIExpression()), !dbg !1122
  %cmp9 = icmp eq i32 %call8, 2, !dbg !1137
  br i1 %cmp9, label %if.end12, label %if.else11, !dbg !1140

if.else11:                                        ; preds = %if.end7
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.200, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.test_vperror, i64 0, i64 0)) #13, !dbg !1137
  unreachable, !dbg !1137

if.end12:                                         ; preds = %if.end7
  %call13 = call i32 @close(i32 noundef %call3) #12, !dbg !1141
  call void @llvm.dbg.value(metadata i32 %call13, metadata !1055, metadata !DIExpression()), !dbg !1122
  %cmp14 = icmp eq i32 %call13, 0, !dbg !1142
  br i1 %cmp14, label %if.end17, label %if.else16, !dbg !1145

if.else16:                                        ; preds = %if.end12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.201, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.test_vperror, i64 0, i64 0)) #13, !dbg !1142
  unreachable, !dbg !1142

if.end17:                                         ; preds = %if.end12
  %call18 = tail call i32* @__errno_location() #17, !dbg !1146
  store i32 5, i32* %call18, align 4, !dbg !1147, !tbaa !424
  call void (i8*, ...) @vperror(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.202, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.203, i64 0, i64 0)) #12, !dbg !1148
  %call19 = call i32 @dup2(i32 noundef %call, i32 noundef 2) #12, !dbg !1149
  call void @llvm.dbg.value(metadata i32 %call19, metadata !1055, metadata !DIExpression()), !dbg !1122
  %cmp20 = icmp eq i32 %call19, 2, !dbg !1150
  br i1 %cmp20, label %if.end23, label %if.else22, !dbg !1153

if.else22:                                        ; preds = %if.end17
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.200, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 748, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.test_vperror, i64 0, i64 0)) #13, !dbg !1150
  unreachable, !dbg !1150

if.end23:                                         ; preds = %if.end17
  %1 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0, !dbg !1154
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #14, !dbg !1154
  call void @llvm.dbg.declare(metadata [80 x i8]* %buf, metadata !1062, metadata !DIExpression()), !dbg !1155
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false), !dbg !1155
  %call25 = call %struct._IO_FILE* @fopen(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.190, i64 0, i64 0)) #12, !dbg !1156
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call25, metadata !1066, metadata !DIExpression()), !dbg !1122
  %tobool.not = icmp eq %struct._IO_FILE* %call25, null, !dbg !1157
  br i1 %tobool.not, label %if.else27, label %if.end28, !dbg !1160

if.else27:                                        ; preds = %if.end23
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.204, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.test_vperror, i64 0, i64 0)) #13, !dbg !1157
  unreachable, !dbg !1157

if.end28:                                         ; preds = %if.end23
  %call30 = call i8* @fgets(i8* noundef nonnull %1, i32 noundef 80, %struct._IO_FILE* noundef nonnull %call25) #12, !dbg !1161
  call void @llvm.dbg.value(metadata i8* %call30, metadata !1120, metadata !DIExpression()), !dbg !1122
  %tobool31.not = icmp eq i8* %call30, null, !dbg !1162
  br i1 %tobool31.not, label %if.else33, label %if.end34, !dbg !1165

if.else33:                                        ; preds = %if.end28
  call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 756, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.test_vperror, i64 0, i64 0)) #13, !dbg !1162
  unreachable, !dbg !1162

if.end34:                                         ; preds = %if.end28
  %call35 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call25) #12, !dbg !1166
  %call37 = call i32 @unlink(i8* noundef nonnull %0) #12, !dbg !1167
  %2 = getelementptr inbounds [80 x i8], [80 x i8]* %expected, i64 0, i64 0, !dbg !1168
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #14, !dbg !1168
  call void @llvm.dbg.declare(metadata [80 x i8]* %expected, metadata !1121, metadata !DIExpression()), !dbg !1169
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %2, i8 0, i64 80, i1 false), !dbg !1169
  %call39 = call i8* @strerror(i32 noundef 5) #12, !dbg !1170
  %call40 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %2, i64 noundef 80, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.206, i64 0, i64 0), i8* noundef %call39) #12, !dbg !1171
  %call43 = call i32 @strcmp(i8* noundef nonnull %2, i8* noundef nonnull %1) #15, !dbg !1172
  %cmp44 = icmp eq i32 %call43, 0, !dbg !1173
  %cond = select i1 %cmp44, i32 1, i32 2, !dbg !1172
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #14, !dbg !1174
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #14, !dbg !1174
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #14, !dbg !1174
  ret i32 %cond, !dbg !1175
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_issue_101() #0 !dbg !12 {
entry:
  %stat = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 1, metadata !16, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i32 0, metadata !46, metadata !DIExpression()), !dbg !1176
  %call = tail call i8* @getenv(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.207, i64 0, i64 0)) #12, !dbg !1177
  %cmp.not = icmp eq i8* %call, null, !dbg !1179
  br i1 %cmp.not, label %if.end, label %cleanup98, !dbg !1180

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.208, i64 0, i64 0), metadata !50, metadata !DIExpression()), !dbg !1176
  %call1 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.208, i64 0, i64 0)) #15, !dbg !1181
  call void @llvm.dbg.value(metadata i64 %call1, metadata !54, metadata !DIExpression()), !dbg !1176
  %call2 = tail call fastcc i32 @start_server(i16* noundef nonnull @port, i1 noundef zeroext false, i32 noundef 1000) #16, !dbg !1182
  store i32 %call2, i32* @server_pid, align 4, !dbg !1183, !tbaa !424
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i64 0, metadata !45, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata %struct.conn* null, metadata !17, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1176
  %0 = load i16, i16* @port, align 2, !dbg !1184, !tbaa !1188
  %call4 = tail call fastcc %struct.conn* @connect_server(i16 noundef zeroext %0, i1 noundef zeroext true) #16, !dbg !1190
  call void @llvm.dbg.value(metadata %struct.conn* %call4, metadata !17, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1176
  %tobool9.not = icmp eq %struct.conn* %call4, null, !dbg !1191
  br i1 %tobool9.not, label %if.else, label %if.end11, !dbg !1194

for.cond:                                         ; preds = %if.end11
  call void @llvm.dbg.value(metadata i64 1, metadata !45, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i64 0, metadata !45, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1176
  call void @llvm.dbg.value(metadata i64 1, metadata !45, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata %struct.conn* null, metadata !17, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1176
  %1 = load i16, i16* @port, align 2, !dbg !1184, !tbaa !1188
  %call4.1 = tail call fastcc %struct.conn* @connect_server(i16 noundef zeroext %1, i1 noundef zeroext true) #16, !dbg !1190
  call void @llvm.dbg.value(metadata %struct.conn* %call4.1, metadata !17, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1176
  %tobool9.not.1 = icmp eq %struct.conn* %call4.1, null, !dbg !1191
  br i1 %tobool9.not.1, label %if.else, label %if.end11.1, !dbg !1194

if.end11.1:                                       ; preds = %for.cond
  %sock.1 = getelementptr inbounds %struct.conn, %struct.conn* %call4.1, i64 0, i32 0, !dbg !1195
  %2 = load i32, i32* %sock.1, align 8, !dbg !1195, !tbaa !1198
  %cmp14.1 = icmp sgt i32 %2, 0, !dbg !1195
  call void @llvm.dbg.value(metadata i64 1, metadata !45, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1176
  br i1 %cmp14.1, label %for.cond.1, label %if.else16, !dbg !1200

for.cond.1:                                       ; preds = %if.end11.1
  call void @llvm.dbg.value(metadata i64 2, metadata !45, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i64 1, metadata !45, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1176
  call void @llvm.dbg.value(metadata i64 0, metadata !45, metadata !DIExpression()), !dbg !1176
  %write = getelementptr inbounds %struct.conn, %struct.conn* %call4, i64 0, i32 2
  br label %do.body, !dbg !1201

if.else:                                          ; preds = %for.cond, %if.end
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.210, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 2177, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.test_issue_101, i64 0, i64 0)) #13, !dbg !1191
  unreachable, !dbg !1191

if.end11:                                         ; preds = %if.end
  %sock = getelementptr inbounds %struct.conn, %struct.conn* %call4, i64 0, i32 0, !dbg !1195
  %3 = load i32, i32* %sock, align 8, !dbg !1195, !tbaa !1198
  %cmp14 = icmp sgt i32 %3, 0, !dbg !1195
  call void @llvm.dbg.value(metadata i64 0, metadata !45, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1176
  br i1 %cmp14, label %for.cond, label %if.else16, !dbg !1200

if.else16:                                        ; preds = %if.end11.1, %if.end11
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.211, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 2178, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.test_issue_101, i64 0, i64 0)) #13, !dbg !1195
  unreachable, !dbg !1195

do.body:                                          ; preds = %do.body.backedge, %for.cond.1
  call void @llvm.dbg.value(metadata i32 1, metadata !16, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8 1, metadata !55, metadata !DIExpression()), !dbg !1202
  %4 = load i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, i8*, i64)** %write, align 8, !dbg !1203, !tbaa !1204
  %call25 = tail call i64 %4(%struct.conn* noundef nonnull %call4, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.208, i64 0, i64 0), i64 noundef %call1) #12, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %call25, metadata !60, metadata !DIExpression()), !dbg !1206
  %cmp26 = icmp eq i64 %call25, -1, !dbg !1207
  br i1 %cmp26, label %if.then27, label %do.body.backedge, !dbg !1209

do.body.backedge:                                 ; preds = %do.body, %if.then27
  br label %do.body, !dbg !1176, !llvm.loop !1210

if.then27:                                        ; preds = %do.body
  %call28 = tail call i32* @__errno_location() #17, !dbg !1212
  %5 = load i32, i32* %call28, align 4, !dbg !1212, !tbaa !424
  switch i32 %5, label %if.end74 [
    i32 4, label %do.body.backedge
    i32 12, label %for.inc34
    i32 11, label %for.inc34
  ], !dbg !1214

for.inc34:                                        ; preds = %if.then27, %if.then27
  call void @llvm.dbg.value(metadata i32 1, metadata !16, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i64 1, metadata !45, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i64 1, metadata !45, metadata !DIExpression()), !dbg !1176
  %write.1 = getelementptr inbounds %struct.conn, %struct.conn* %call4.1, i64 0, i32 2
  br label %do.body.1, !dbg !1201

do.body.1:                                        ; preds = %do.body.1.backedge, %for.inc34
  call void @llvm.dbg.value(metadata i32 1, metadata !16, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8 1, metadata !55, metadata !DIExpression()), !dbg !1202
  %6 = load i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, i8*, i64)** %write.1, align 8, !dbg !1203, !tbaa !1204
  %call25.1 = tail call i64 %6(%struct.conn* noundef nonnull %call4.1, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.208, i64 0, i64 0), i64 noundef %call1) #12, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %call25.1, metadata !60, metadata !DIExpression()), !dbg !1206
  %cmp26.1 = icmp eq i64 %call25.1, -1, !dbg !1207
  br i1 %cmp26.1, label %if.then27.1, label %do.body.1.backedge, !dbg !1209

if.then27.1:                                      ; preds = %do.body.1
  %7 = load i32, i32* %call28, align 4, !dbg !1212, !tbaa !424
  switch i32 %7, label %if.end74 [
    i32 4, label %do.body.1.backedge
    i32 12, label %for.inc34.1
    i32 11, label %for.inc34.1
  ], !dbg !1214

do.body.1.backedge:                               ; preds = %if.then27.1, %do.body.1
  br label %do.body.1, !dbg !1176, !llvm.loop !1210

for.inc34.1:                                      ; preds = %if.then27.1, %if.then27.1
  call void @llvm.dbg.value(metadata i32 1, metadata !16, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i64 2, metadata !45, metadata !DIExpression()), !dbg !1176
  %call37 = tail call i32 @fork() #12, !dbg !1215
  call void @llvm.dbg.value(metadata i32 %call37, metadata !46, metadata !DIExpression()), !dbg !1176
  %cmp38 = icmp eq i32 %call37, -1, !dbg !1216
  br i1 %cmp38, label %if.then39, label %if.else40, !dbg !1217

if.then39:                                        ; preds = %for.inc34.1
  tail call void @abort() #13, !dbg !1218
  unreachable, !dbg !1218

if.else40:                                        ; preds = %for.inc34.1
  %cmp41 = icmp sgt i32 %call37, 0, !dbg !1220
  br i1 %cmp41, label %if.then42, label %if.else55, !dbg !1221

if.then42:                                        ; preds = %if.else40
  %8 = bitcast i32* %stat to i8*, !dbg !1222
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #14, !dbg !1222
  br label %while.cond, !dbg !1223

while.cond:                                       ; preds = %land.rhs, %if.then42
  call void @llvm.dbg.value(metadata i32* %stat, metadata !62, metadata !DIExpression(DW_OP_deref)), !dbg !1224
  %call43 = call i32 @waitpid(i32 noundef %call37, i32* noundef nonnull %stat, i32 noundef 0) #12, !dbg !1225
  call void @llvm.dbg.value(metadata i32 %call43, metadata !66, metadata !DIExpression()), !dbg !1224
  %cmp44 = icmp eq i32 %call43, -1, !dbg !1226
  br i1 %cmp44, label %land.rhs, label %while.end, !dbg !1227

land.rhs:                                         ; preds = %while.cond
  %9 = load i32, i32* %call28, align 4, !dbg !1228, !tbaa !424
  %cmp46 = icmp eq i32 %9, 4, !dbg !1229
  br i1 %cmp46, label %while.cond, label %while.end, !dbg !1223, !llvm.loop !1230

while.end:                                        ; preds = %while.cond, %land.rhs
  %cmp47 = icmp eq i32 %call43, %call37, !dbg !1232
  br i1 %cmp47, label %if.end50, label %if.else49, !dbg !1235

if.else49:                                        ; preds = %while.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.212, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 2209, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.test_issue_101, i64 0, i64 0)) #13, !dbg !1232
  unreachable, !dbg !1232

if.end50:                                         ; preds = %while.end
  %10 = load i32, i32* %stat, align 4, !dbg !1236, !tbaa !424
  call void @llvm.dbg.value(metadata i32 %10, metadata !62, metadata !DIExpression()), !dbg !1224
  %cmp51 = icmp eq i32 %10, 0, !dbg !1236
  br i1 %cmp51, label %if.end54, label %if.else53, !dbg !1239

if.else53:                                        ; preds = %if.end50
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.213, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 2210, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.test_issue_101, i64 0, i64 0)) #13, !dbg !1236
  unreachable, !dbg !1236

if.end54:                                         ; preds = %if.end50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #14, !dbg !1240
  br label %if.end74, !dbg !1241

if.else55:                                        ; preds = %if.else40
  %11 = load i16, i16* @port, align 2, !dbg !1242, !tbaa !1188
  %call57 = tail call fastcc %struct.conn* @connect_server(i16 noundef zeroext %11, i1 noundef zeroext false) #16, !dbg !1244
  store %struct.conn* %call57, %struct.conn** @con, align 8, !dbg !1245, !tbaa !458
  %tobool58.not = icmp eq %struct.conn* %call57, null, !dbg !1246
  br i1 %tobool58.not, label %if.else60, label %if.end61, !dbg !1249

if.else60:                                        ; preds = %if.else55
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.214, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 2213, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.test_issue_101, i64 0, i64 0)) #13, !dbg !1246
  unreachable, !dbg !1246

if.end61:                                         ; preds = %if.else55
  %call62 = tail call i32 @test_binary_noop() #16, !dbg !1250
  call void @llvm.dbg.value(metadata i32 1, metadata !16, metadata !DIExpression()), !dbg !1176
  tail call fastcc void @close_conn() #16, !dbg !1251
  tail call void @exit(i32 noundef 0) #13, !dbg !1252
  unreachable, !dbg !1252

if.end74:                                         ; preds = %if.then27, %if.then27.1, %if.end54
  %ret.3 = phi i32 [ 1, %if.end54 ], [ 2, %if.then27.1 ], [ 2, %if.then27 ], !dbg !1176
  call void @llvm.dbg.value(metadata i32 %ret.3, metadata !16, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.label(metadata !71), !dbg !1253
  call void @llvm.dbg.value(metadata i64 0, metadata !45, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata %struct.conn* %call4, metadata !67, metadata !DIExpression()), !dbg !1254
  %12 = load i32, i32* %sock, align 8, !dbg !1255, !tbaa !1198
  %cmp76 = icmp sgt i32 %12, 0, !dbg !1257
  br i1 %cmp76, label %if.then77, label %if.end74.1, !dbg !1258

if.then77:                                        ; preds = %if.end74
  %call79 = call i32 @close(i32 noundef %12) #12, !dbg !1259
  br label %if.end74.1, !dbg !1259

if.end74.1:                                       ; preds = %if.then77, %if.end74
  %13 = bitcast %struct.conn* %call4 to i8*, !dbg !1260
  call void @free(i8* noundef nonnull %13) #12, !dbg !1261
  call void @llvm.dbg.value(metadata %struct.conn* null, metadata !17, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1176
  call void @llvm.dbg.value(metadata i64 1, metadata !45, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata %struct.conn* %call4.1, metadata !67, metadata !DIExpression()), !dbg !1254
  %14 = load i32, i32* %sock.1, align 8, !dbg !1255, !tbaa !1198
  %cmp76.1 = icmp sgt i32 %14, 0, !dbg !1257
  br i1 %cmp76.1, label %if.then77.1, label %cleanup85.1, !dbg !1258

if.then77.1:                                      ; preds = %if.end74.1
  %call79.1 = call i32 @close(i32 noundef %14) #12, !dbg !1259
  br label %cleanup85.1, !dbg !1259

cleanup85.1:                                      ; preds = %if.end74.1, %if.then77.1
  %15 = bitcast %struct.conn* %call4.1 to i8*, !dbg !1260
  call void @free(i8* noundef nonnull %15) #12, !dbg !1261
  call void @llvm.dbg.value(metadata %struct.conn* null, metadata !17, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1176
  call void @llvm.dbg.value(metadata i64 2, metadata !45, metadata !DIExpression()), !dbg !1176
  %16 = load i32, i32* @server_pid, align 4, !dbg !1262, !tbaa !424
  %call91 = call i32 @kill(i32 noundef %16, i32 noundef 15) #12, !dbg !1262
  %cmp92 = icmp eq i32 %call91, 0, !dbg !1262
  br i1 %cmp92, label %cleanup98, label %if.else94, !dbg !1265

if.else94:                                        ; preds = %cleanup85.1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.215, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 2237, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.test_issue_101, i64 0, i64 0)) #13, !dbg !1262
  unreachable, !dbg !1262

cleanup98:                                        ; preds = %cleanup85.1, %entry
  %retval.1 = phi i32 [ 0, %entry ], [ %ret.3, %cleanup85.1 ]
  ret i32 %retval.1, !dbg !1266
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_crc32c() #0 !dbg !1267 {
entry:
  %buffer = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 0, !dbg !1277
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #14, !dbg !1277
  call void @llvm.dbg.declare(metadata [256 x i8]* %buffer, metadata !1271, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata i32 0, metadata !1275, metadata !DIExpression()), !dbg !1279
  %1 = bitcast [256 x i8]* %buffer to <16 x i8>*, !dbg !1280
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, <16 x i8>* %1, align 16, !dbg !1280, !tbaa !416
  %2 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 16, !dbg !1282
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !1280
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, <16 x i8>* %3, align 16, !dbg !1280, !tbaa !416
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 32, !dbg !1282
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !1280
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, <16 x i8>* %5, align 16, !dbg !1280, !tbaa !416
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 48, !dbg !1282
  %7 = bitcast i8* %6 to <16 x i8>*, !dbg !1280
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <16 x i8>* %7, align 16, !dbg !1280, !tbaa !416
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 64, !dbg !1282
  %9 = bitcast i8* %8 to <16 x i8>*, !dbg !1280
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, <16 x i8>* %9, align 16, !dbg !1280, !tbaa !416
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 80, !dbg !1282
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !1280
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, <16 x i8>* %11, align 16, !dbg !1280, !tbaa !416
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 96, !dbg !1282
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !1280
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, <16 x i8>* %13, align 16, !dbg !1280, !tbaa !416
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 112, !dbg !1282
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !1280
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, <16 x i8>* %15, align 16, !dbg !1280, !tbaa !416
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 128, !dbg !1282
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !1280
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, <16 x i8>* %17, align 16, !dbg !1280, !tbaa !416
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 144, !dbg !1282
  %19 = bitcast i8* %18 to <16 x i8>*, !dbg !1280
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, <16 x i8>* %19, align 16, !dbg !1280, !tbaa !416
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 160, !dbg !1282
  %21 = bitcast i8* %20 to <16 x i8>*, !dbg !1280
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, <16 x i8>* %21, align 16, !dbg !1280, !tbaa !416
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 176, !dbg !1282
  %23 = bitcast i8* %22 to <16 x i8>*, !dbg !1280
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, <16 x i8>* %23, align 16, !dbg !1280, !tbaa !416
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 192, !dbg !1282
  %25 = bitcast i8* %24 to <16 x i8>*, !dbg !1280
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, <16 x i8>* %25, align 16, !dbg !1280, !tbaa !416
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 208, !dbg !1282
  %27 = bitcast i8* %26 to <16 x i8>*, !dbg !1280
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, <16 x i8>* %27, align 16, !dbg !1280, !tbaa !416
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 224, !dbg !1282
  %29 = bitcast i8* %28 to <16 x i8>*, !dbg !1280
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, <16 x i8>* %29, align 16, !dbg !1280, !tbaa !416
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 240, !dbg !1282
  %31 = bitcast i8* %30 to <16 x i8>*, !dbg !1280
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <16 x i8>* %31, align 16, !dbg !1280, !tbaa !416
  %32 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** @crc32c, align 8, !dbg !1283, !tbaa !458
  %call = call i32 %32(i32 noundef 0, i8* noundef nonnull %0, i64 noundef 256) #12, !dbg !1283
  call void @llvm.dbg.value(metadata i32 %call, metadata !1269, metadata !DIExpression()), !dbg !1284
  %call2 = call i32 @crc32c_sw(i32 noundef 0, i8* noundef nonnull %0, i64 noundef 256) #12, !dbg !1285
  call void @llvm.dbg.value(metadata i32 %call2, metadata !1270, metadata !DIExpression()), !dbg !1284
  %cmp3 = icmp eq i32 %call, -1673258933, !dbg !1286
  br i1 %cmp3, label %if.end, label %if.else, !dbg !1289

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.224, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 852, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.test_crc32c, i64 0, i64 0)) #13, !dbg !1286
  unreachable, !dbg !1286

if.end:                                           ; preds = %entry
  %cmp5 = icmp eq i32 %call2, -1673258933, !dbg !1290
  br i1 %cmp5, label %if.end9, label %if.else8, !dbg !1293

if.else8:                                         ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.225, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 853, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.test_crc32c, i64 0, i64 0)) #13, !dbg !1290
  unreachable, !dbg !1290

if.end9:                                          ; preds = %if.end
  %33 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** @crc32c, align 8, !dbg !1294, !tbaa !458
  %call11 = call i32 %33(i32 noundef -1673258933, i8* noundef nonnull %0, i64 noundef 256) #12, !dbg !1294
  call void @llvm.dbg.value(metadata i32 %call11, metadata !1269, metadata !DIExpression()), !dbg !1284
  %call13 = call i32 @crc32c_sw(i32 noundef -1673258933, i8* noundef nonnull %0, i64 noundef 256) #12, !dbg !1295
  call void @llvm.dbg.value(metadata i32 %call13, metadata !1270, metadata !DIExpression()), !dbg !1284
  %cmp14 = icmp eq i32 %call11, -1374622118, !dbg !1296
  br i1 %cmp14, label %if.end18, label %if.else17, !dbg !1299

if.else17:                                        ; preds = %if.end9
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.226, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 858, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.test_crc32c, i64 0, i64 0)) #13, !dbg !1296
  unreachable, !dbg !1296

if.end18:                                         ; preds = %if.end9
  %cmp19 = icmp eq i32 %call13, -1374622118, !dbg !1300
  br i1 %cmp19, label %if.end23, label %if.else22, !dbg !1303

if.else22:                                        ; preds = %if.end18
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 859, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.test_crc32c, i64 0, i64 0)) #13, !dbg !1300
  unreachable, !dbg !1300

if.end23:                                         ; preds = %if.end18
  %34 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** @crc32c, align 8, !dbg !1304, !tbaa !458
  %add.ptr = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 1, !dbg !1305
  %call25 = call i32 %34(i32 noundef -1374622118, i8* noundef nonnull %add.ptr, i64 noundef 254) #12, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %call25, metadata !1269, metadata !DIExpression()), !dbg !1284
  %call28 = call i32 @crc32c_sw(i32 noundef -1374622118, i8* noundef nonnull %add.ptr, i64 noundef 254) #12, !dbg !1306
  call void @llvm.dbg.value(metadata i32 %call28, metadata !1270, metadata !DIExpression()), !dbg !1284
  %cmp29 = icmp eq i32 %call25, -315115258, !dbg !1307
  br i1 %cmp29, label %if.end33, label %if.else32, !dbg !1310

if.else32:                                        ; preds = %if.end23
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.228, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 864, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.test_crc32c, i64 0, i64 0)) #13, !dbg !1307
  unreachable, !dbg !1307

if.end33:                                         ; preds = %if.end23
  %cmp34 = icmp eq i32 %call28, -315115258, !dbg !1311
  br i1 %cmp34, label %if.end38, label %if.else37, !dbg !1314

if.else37:                                        ; preds = %if.end33
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.229, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 865, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.test_crc32c, i64 0, i64 0)) #13, !dbg !1311
  unreachable, !dbg !1311

if.end38:                                         ; preds = %if.end33
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #14, !dbg !1315
  ret i32 1, !dbg !1316
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @start_memcached_server() #0 !dbg !1317 {
entry:
  %call = tail call fastcc i32 @start_server(i16* noundef nonnull @port, i1 noundef zeroext false, i32 noundef 600) #16, !dbg !1319
  store i32 %call, i32* @server_pid, align 4, !dbg !1320, !tbaa !424
  tail call fastcc void @close_conn() #16, !dbg !1321
  %0 = load i16, i16* @port, align 2, !dbg !1322, !tbaa !1188
  %call1 = tail call fastcc %struct.conn* @connect_server(i16 noundef zeroext %0, i1 noundef zeroext false) #16, !dbg !1323
  store %struct.conn* %call1, %struct.conn** @con, align 8, !dbg !1324, !tbaa !458
  %tobool2.not = icmp eq %struct.conn* %call1, null, !dbg !1325
  br i1 %tobool2.not, label %if.else, label %if.end, !dbg !1328

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.214, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 927, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.start_memcached_server, i64 0, i64 0)) #13, !dbg !1325
  unreachable, !dbg !1325

if.end:                                           ; preds = %entry
  ret i32 1, !dbg !1329
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_issue_92() #0 !dbg !1330 {
entry:
  %buffer = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0, !dbg !1336
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !1336
  call void @llvm.dbg.declare(metadata [1024 x i8]* %buffer, metadata !1332, metadata !DIExpression()), !dbg !1337
  tail call fastcc void @close_conn() #16, !dbg !1338
  %1 = load i16, i16* @port, align 2, !dbg !1339, !tbaa !1188
  %call = tail call fastcc %struct.conn* @connect_server(i16 noundef zeroext %1, i1 noundef zeroext false) #16, !dbg !1340
  store %struct.conn* %call, %struct.conn** @con, align 8, !dbg !1341, !tbaa !458
  %tobool1.not = icmp eq %struct.conn* %call, null, !dbg !1342
  br i1 %tobool1.not, label %if.else, label %if.end, !dbg !1345

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.214, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 825, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.test_issue_92, i64 0, i64 0)) #13, !dbg !1342
  unreachable, !dbg !1342

if.end:                                           ; preds = %entry
  tail call fastcc void @send_ascii_command(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.230, i64 0, i64 0)) #16, !dbg !1346
  call fastcc void @read_ascii_response(i8* noundef nonnull %0, i64 noundef 1024) #16, !dbg !1347
  %call3 = call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i64 0, i64 0)) #15, !dbg !1348
  %call4 = call i32 @strncmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i64 0, i64 0), i64 noundef %call3) #15, !dbg !1348
  %cmp = icmp eq i32 %call4, 0, !dbg !1348
  br i1 %cmp, label %if.end7, label %if.else6, !dbg !1351

if.else6:                                         ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.232, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 830, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.test_issue_92, i64 0, i64 0)) #13, !dbg !1348
  unreachable, !dbg !1348

if.end7:                                          ; preds = %if.end
  call fastcc void @send_ascii_command(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.233, i64 0, i64 0)) #16, !dbg !1352
  call fastcc void @read_ascii_response(i8* noundef nonnull %0, i64 noundef 1024) #16, !dbg !1353
  %call10 = call i64 @strlen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.234, i64 0, i64 0)) #15, !dbg !1354
  %call11 = call i32 @strncmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.234, i64 0, i64 0), i64 noundef %call10) #15, !dbg !1354
  %cmp12 = icmp eq i32 %call11, 0, !dbg !1354
  br i1 %cmp12, label %if.end15, label %if.else14, !dbg !1357

if.else14:                                        ; preds = %if.end7
  call void @__assert_fail(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.235, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 834, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.test_issue_92, i64 0, i64 0)) #13, !dbg !1354
  unreachable, !dbg !1354

if.end15:                                         ; preds = %if.end7
  call fastcc void @close_conn() #16, !dbg !1358
  %2 = load i16, i16* @port, align 2, !dbg !1359, !tbaa !1188
  %call17 = call fastcc %struct.conn* @connect_server(i16 noundef zeroext %2, i1 noundef zeroext false) #16, !dbg !1360
  store %struct.conn* %call17, %struct.conn** @con, align 8, !dbg !1361, !tbaa !458
  %tobool18.not = icmp eq %struct.conn* %call17, null, !dbg !1362
  br i1 %tobool18.not, label %if.else20, label %if.end21, !dbg !1365

if.else20:                                        ; preds = %if.end15
  call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.214, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 838, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.test_issue_92, i64 0, i64 0)) #13, !dbg !1362
  unreachable, !dbg !1362

if.end21:                                         ; preds = %if.end15
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !1366
  ret i32 1, !dbg !1367
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_issue_102() #0 !dbg !1368 {
entry:
  %buffer = alloca [4096 x i8], align 16
  %rsp = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i64 0, i64 0, !dbg !1377
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %0) #14, !dbg !1377
  call void @llvm.dbg.declare(metadata [4096 x i8]* %buffer, metadata !1370, metadata !DIExpression()), !dbg !1378
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 32, i64 noundef 4096) #12, !dbg !1379
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i64 0, i64 4095, !dbg !1380
  store i8 0, i8* %arrayidx, align 1, !dbg !1381, !tbaa !416
  call fastcc void @close_conn() #16, !dbg !1382
  %1 = load i16, i16* @port, align 2, !dbg !1383, !tbaa !1188
  %call1 = call fastcc %struct.conn* @connect_server(i16 noundef zeroext %1, i1 noundef zeroext false) #16, !dbg !1384
  store %struct.conn* %call1, %struct.conn** @con, align 8, !dbg !1385, !tbaa !458
  %tobool2.not = icmp eq %struct.conn* %call1, null, !dbg !1386
  br i1 %tobool2.not, label %if.else, label %if.end, !dbg !1389

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.214, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 877, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.test_issue_102, i64 0, i64 0)) #13, !dbg !1386
  unreachable, !dbg !1386

if.end:                                           ; preds = %entry
  call fastcc void @send_ascii_command(i8* noundef nonnull %0) #16, !dbg !1390
  %2 = load %struct.conn*, %struct.conn** @con, align 8, !dbg !1391, !tbaa !458
  %read = getelementptr inbounds %struct.conn, %struct.conn* %2, i64 0, i32 1, !dbg !1391
  %3 = load i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, i8*, i64)** %read, align 8, !dbg !1391, !tbaa !1394
  %call5 = call i64 %3(%struct.conn* noundef %2, i8* noundef nonnull %0, i64 noundef 4096) #12, !dbg !1391
  %cmp = icmp eq i64 %call5, 0, !dbg !1391
  br i1 %cmp, label %if.end8, label %if.else7, !dbg !1395

if.else7:                                         ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.240, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 881, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.test_issue_102, i64 0, i64 0)) #13, !dbg !1391
  unreachable, !dbg !1391

if.end8:                                          ; preds = %if.end
  call fastcc void @close_conn() #16, !dbg !1396
  %4 = load i16, i16* @port, align 2, !dbg !1397, !tbaa !1188
  %call10 = call fastcc %struct.conn* @connect_server(i16 noundef zeroext %4, i1 noundef zeroext false) #16, !dbg !1398
  store %struct.conn* %call10, %struct.conn** @con, align 8, !dbg !1399, !tbaa !458
  %tobool11.not = icmp eq %struct.conn* %call10, null, !dbg !1400
  br i1 %tobool11.not, label %if.else13, label %if.end14, !dbg !1403

if.else13:                                        ; preds = %if.end8
  call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.214, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 885, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.test_issue_102, i64 0, i64 0)) #13, !dbg !1400
  unreachable, !dbg !1400

if.end14:                                         ; preds = %if.end8
  %call16 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 4096, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.241, i64 0, i64 0)) #12, !dbg !1404
  call void @llvm.dbg.value(metadata i64 5, metadata !1374, metadata !DIExpression()), !dbg !1405
  br label %while.body, !dbg !1406

while.body:                                       ; preds = %if.end14, %while.body
  %offset.073 = phi i64 [ 5, %if.end14 ], [ %add, %while.body ]
  call void @llvm.dbg.value(metadata i64 %offset.073, metadata !1374, metadata !DIExpression()), !dbg !1405
  %add.ptr = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i64 0, i64 %offset.073, !dbg !1407
  %sub = sub nuw nsw i64 4096, %offset.073, !dbg !1409
  %conv = trunc i64 %offset.073 to i32, !dbg !1410
  %call19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %add.ptr, i64 noundef %sub, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.242, i64 0, i64 0), i32 noundef %conv) #12, !dbg !1411
  %conv20 = sext i32 %call19 to i64, !dbg !1411
  %add = add nsw i64 %offset.073, %conv20, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %add, metadata !1374, metadata !DIExpression()), !dbg !1405
  %cmp17 = icmp ult i64 %add, 4000, !dbg !1413
  br i1 %cmp17, label %while.body, label %while.end, !dbg !1406, !llvm.loop !1414

while.end:                                        ; preds = %while.body
  call fastcc void @send_ascii_command(i8* noundef nonnull %0) #16, !dbg !1416
  %call22 = call i32 @usleep(i32 noundef 250) #12, !dbg !1417
  call fastcc void @send_ascii_command(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.243, i64 0, i64 0)) #16, !dbg !1418
  %5 = getelementptr inbounds [80 x i8], [80 x i8]* %rsp, i64 0, i64 0, !dbg !1419
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #14, !dbg !1419
  call void @llvm.dbg.declare(metadata [80 x i8]* %rsp, metadata !1375, metadata !DIExpression()), !dbg !1420
  call fastcc void @read_ascii_response(i8* noundef nonnull %5, i64 noundef 80) #16, !dbg !1421
  %call25 = call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i64 0, i64 0)) #15, !dbg !1422
  %call26 = call i32 @strncmp(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i64 0, i64 0), i64 noundef %call25) #15, !dbg !1422
  %cmp27 = icmp eq i32 %call26, 0, !dbg !1422
  br i1 %cmp27, label %if.end31, label %if.else30, !dbg !1425

if.else30:                                        ; preds = %while.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.244, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 900, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.test_issue_102, i64 0, i64 0)) #13, !dbg !1422
  unreachable, !dbg !1422

if.end31:                                         ; preds = %while.end
  %arrayidx32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i64 0, i64 3, !dbg !1426
  store i8 32, i8* %arrayidx32, align 1, !dbg !1427, !tbaa !416
  call fastcc void @send_ascii_command(i8* noundef nonnull %0) #16, !dbg !1428
  %call34 = call i32 @usleep(i32 noundef 250) #12, !dbg !1429
  call fastcc void @send_ascii_command(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.243, i64 0, i64 0)) #16, !dbg !1430
  call fastcc void @read_ascii_response(i8* noundef nonnull %5, i64 noundef 80) #16, !dbg !1431
  %call37 = call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i64 0, i64 0)) #15, !dbg !1432
  %call38 = call i32 @strncmp(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i64 0, i64 0), i64 noundef %call37) #15, !dbg !1432
  %cmp39 = icmp eq i32 %call38, 0, !dbg !1432
  br i1 %cmp39, label %if.end43, label %if.else42, !dbg !1435

if.else42:                                        ; preds = %if.end31
  call void @__assert_fail(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.244, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 906, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.test_issue_102, i64 0, i64 0)) #13, !dbg !1432
  unreachable, !dbg !1432

if.end43:                                         ; preds = %if.end31
  %call45 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 32, i64 noundef 4096) #12, !dbg !1436
  %add.ptr47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i64 0, i64 101, !dbg !1437
  %call48 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %add.ptr47, i64 noundef 3995, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.245, i64 0, i64 0)) #12, !dbg !1438
  call void @llvm.dbg.value(metadata i32 %call48, metadata !1376, metadata !DIExpression()), !dbg !1405
  %add49 = add nsw i32 %call48, 101, !dbg !1439
  %idxprom = sext i32 %add49 to i64, !dbg !1440
  %arrayidx50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i64 0, i64 %idxprom, !dbg !1440
  store i8 32, i8* %arrayidx50, align 1, !dbg !1441, !tbaa !416
  store i8 0, i8* %arrayidx, align 1, !dbg !1442, !tbaa !416
  call fastcc void @send_ascii_command(i8* noundef nonnull %0) #16, !dbg !1443
  %6 = load %struct.conn*, %struct.conn** @con, align 8, !dbg !1444, !tbaa !458
  %read53 = getelementptr inbounds %struct.conn, %struct.conn* %6, i64 0, i32 1, !dbg !1444
  %7 = load i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, i8*, i64)** %read53, align 8, !dbg !1444, !tbaa !1394
  %call55 = call i64 %7(%struct.conn* noundef %6, i8* noundef nonnull %0, i64 noundef 4096) #12, !dbg !1444
  %cmp56 = icmp eq i64 %call55, 0, !dbg !1444
  br i1 %cmp56, label %if.end60, label %if.else59, !dbg !1447

if.else59:                                        ; preds = %if.end43
  call void @__assert_fail(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.240, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 914, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.test_issue_102, i64 0, i64 0)) #13, !dbg !1444
  unreachable, !dbg !1444

if.end60:                                         ; preds = %if.end43
  call fastcc void @close_conn() #16, !dbg !1448
  %8 = load i16, i16* @port, align 2, !dbg !1449, !tbaa !1188
  %call62 = call fastcc %struct.conn* @connect_server(i16 noundef zeroext %8, i1 noundef zeroext false) #16, !dbg !1450
  store %struct.conn* %call62, %struct.conn** @con, align 8, !dbg !1451, !tbaa !458
  %tobool63.not = icmp eq %struct.conn* %call62, null, !dbg !1452
  br i1 %tobool63.not, label %if.else65, label %if.end66, !dbg !1455

if.else65:                                        ; preds = %if.end60
  call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.214, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 918, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.test_issue_102, i64 0, i64 0)) #13, !dbg !1452
  unreachable, !dbg !1452

if.end66:                                         ; preds = %if.end60
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #14, !dbg !1456
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %0) #14, !dbg !1456
  ret i32 1, !dbg !1457
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_noop() #0 !dbg !1458 {
entry:
  %buffer = alloca %union.anon.10, align 8
  %0 = getelementptr inbounds %union.anon.10, %union.anon.10* %buffer, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1516
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !1516
  call void @llvm.dbg.declare(metadata %union.anon.10* %buffer, metadata !1460, metadata !DIExpression()), !dbg !1517
  %call = call fastcc i64 @raw_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext 10, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #16, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %call, metadata !1515, metadata !DIExpression()), !dbg !1519
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call, i1 noundef zeroext false) #16, !dbg !1520
  %1 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %0) #16, !dbg !1521
  %response = bitcast %union.anon.10* %buffer to %union.protocol_binary_response_no_extras*, !dbg !1522
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 10, i16 noundef zeroext 0) #16, !dbg !1523
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !1524
  ret i32 1, !dbg !1525
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_quit() #0 !dbg !1526 {
entry:
  tail call fastcc void @test_binary_quit_impl(i8 noundef zeroext 7) #16, !dbg !1527
  ret i32 1, !dbg !1528
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_quitq() #0 !dbg !1529 {
entry:
  tail call fastcc void @test_binary_quit_impl(i8 noundef zeroext 23) #16, !dbg !1530
  ret i32 1, !dbg !1531
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_set() #0 !dbg !1532 {
entry:
  tail call fastcc void @test_binary_set_impl(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.265, i64 0, i64 0), i8 noundef zeroext 1) #16, !dbg !1533
  ret i32 1, !dbg !1534
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_setq() #0 !dbg !1535 {
entry:
  tail call fastcc void @test_binary_set_impl(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.268, i64 0, i64 0), i8 noundef zeroext 17) #16, !dbg !1536
  ret i32 1, !dbg !1537
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_add() #0 !dbg !1538 {
entry:
  tail call fastcc void @test_binary_add_impl(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.269, i64 0, i64 0), i8 noundef zeroext 2) #16, !dbg !1539
  ret i32 1, !dbg !1540
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_addq() #0 !dbg !1541 {
entry:
  tail call fastcc void @test_binary_add_impl(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.270, i64 0, i64 0), i8 noundef zeroext 18) #16, !dbg !1542
  ret i32 1, !dbg !1543
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_replace() #0 !dbg !1544 {
entry:
  tail call fastcc void @test_binary_replace_impl(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.271, i64 0, i64 0), i8 noundef zeroext 3) #16, !dbg !1545
  ret i32 1, !dbg !1546
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_replaceq() #0 !dbg !1547 {
entry:
  tail call fastcc void @test_binary_replace_impl(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.272, i64 0, i64 0), i8 noundef zeroext 19) #16, !dbg !1548
  ret i32 1, !dbg !1549
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_delete() #0 !dbg !1550 {
entry:
  tail call fastcc void @test_binary_delete_impl(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.273, i64 0, i64 0), i8 noundef zeroext 4) #16, !dbg !1551
  ret i32 1, !dbg !1552
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_deleteq() #0 !dbg !1553 {
entry:
  tail call fastcc void @test_binary_delete_impl(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.274, i64 0, i64 0), i8 noundef zeroext 20) #16, !dbg !1554
  ret i32 1, !dbg !1555
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_get() #0 !dbg !1556 {
entry:
  tail call fastcc void @test_binary_get_impl(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.275, i64 0, i64 0), i8 noundef zeroext 0) #16, !dbg !1557
  ret i32 1, !dbg !1558
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_getq() #0 !dbg !1559 {
entry:
  tail call fastcc void @test_binary_getq_impl(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.276, i64 0, i64 0), i8 noundef zeroext 9) #16, !dbg !1560
  ret i32 1, !dbg !1561
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_getk() #0 !dbg !1562 {
entry:
  tail call fastcc void @test_binary_get_impl(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.278, i64 0, i64 0), i8 noundef zeroext 12) #16, !dbg !1563
  ret i32 1, !dbg !1564
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_getkq() #0 !dbg !1565 {
entry:
  tail call fastcc void @test_binary_getq_impl(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.279, i64 0, i64 0), i8 noundef zeroext 13) #16, !dbg !1566
  ret i32 1, !dbg !1567
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_gat() #0 !dbg !1568 {
entry:
  tail call fastcc void @test_binary_get_impl(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.280, i64 0, i64 0), i8 noundef zeroext 29) #16, !dbg !1569
  ret i32 1, !dbg !1570
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_gatq() #0 !dbg !1571 {
entry:
  tail call fastcc void @test_binary_getq_impl(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.281, i64 0, i64 0), i8 noundef zeroext 30) #16, !dbg !1572
  ret i32 1, !dbg !1573
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_gatk() #0 !dbg !1574 {
entry:
  tail call fastcc void @test_binary_get_impl(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.282, i64 0, i64 0), i8 noundef zeroext 35) #16, !dbg !1575
  ret i32 1, !dbg !1576
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_gatkq() #0 !dbg !1577 {
entry:
  tail call fastcc void @test_binary_getq_impl(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.283, i64 0, i64 0), i8 noundef zeroext 36) #16, !dbg !1578
  ret i32 1, !dbg !1579
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_incr() #0 !dbg !1580 {
entry:
  tail call fastcc void @test_binary_incr_impl(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.284, i64 0, i64 0), i8 noundef zeroext 5) #16, !dbg !1581
  ret i32 1, !dbg !1582
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_incrq() #0 !dbg !1583 {
entry:
  tail call fastcc void @test_binary_incr_impl(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.287, i64 0, i64 0), i8 noundef zeroext 21) #16, !dbg !1584
  ret i32 1, !dbg !1585
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_decr() #0 !dbg !1586 {
entry:
  tail call fastcc void @test_binary_decr_impl(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.288, i64 0, i64 0), i8 noundef zeroext 6) #16, !dbg !1587
  ret i32 1, !dbg !1588
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_decrq() #0 !dbg !1589 {
entry:
  tail call fastcc void @test_binary_decr_impl(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.290, i64 0, i64 0), i8 noundef zeroext 22) #16, !dbg !1590
  ret i32 1, !dbg !1591
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_version() #0 !dbg !1592 {
entry:
  %buffer = alloca %union.anon.31, align 8
  %0 = getelementptr inbounds %union.anon.31, %union.anon.31* %buffer, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1601
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !1601
  call void @llvm.dbg.declare(metadata %union.anon.31* %buffer, metadata !1594, metadata !DIExpression()), !dbg !1602
  %call = call fastcc i64 @raw_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext 11, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #16, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %call, metadata !1600, metadata !DIExpression()), !dbg !1604
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call, i1 noundef zeroext false) #16, !dbg !1605
  %1 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %0) #16, !dbg !1606
  %response = bitcast %union.anon.31* %buffer to %union.protocol_binary_response_no_extras*, !dbg !1607
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 11, i16 noundef zeroext 0) #16, !dbg !1608
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !1609
  ret i32 1, !dbg !1610
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_flush() #0 !dbg !1611 {
entry:
  tail call fastcc void @test_binary_flush_impl(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.291, i64 0, i64 0), i8 noundef zeroext 8) #16, !dbg !1612
  ret i32 1, !dbg !1613
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_flushq() #0 !dbg !1614 {
entry:
  tail call fastcc void @test_binary_flush_impl(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.293, i64 0, i64 0), i8 noundef zeroext 24) #16, !dbg !1615
  ret i32 1, !dbg !1616
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_append() #0 !dbg !1617 {
entry:
  tail call fastcc void @test_binary_concat_impl(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.294, i64 0, i64 0), i8 noundef zeroext 14) #16, !dbg !1618
  ret i32 1, !dbg !1619
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_appendq() #0 !dbg !1620 {
entry:
  tail call fastcc void @test_binary_concat_impl(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.300, i64 0, i64 0), i8 noundef zeroext 25) #16, !dbg !1621
  ret i32 1, !dbg !1622
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_prepend() #0 !dbg !1623 {
entry:
  tail call fastcc void @test_binary_concat_impl(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.301, i64 0, i64 0), i8 noundef zeroext 15) #16, !dbg !1624
  ret i32 1, !dbg !1625
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_prependq() #0 !dbg !1626 {
entry:
  tail call fastcc void @test_binary_concat_impl(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.302, i64 0, i64 0), i8 noundef zeroext 26) #16, !dbg !1627
  ret i32 1, !dbg !1628
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_stat() #0 !dbg !1629 {
entry:
  %buffer = alloca %union.anon.36, align 8
  %0 = getelementptr inbounds %union.anon.36, %union.anon.36* %buffer, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1638
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !1638
  call void @llvm.dbg.declare(metadata %union.anon.36* %buffer, metadata !1631, metadata !DIExpression()), !dbg !1639
  %call = call fastcc i64 @raw_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext 16, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #16, !dbg !1640
  call void @llvm.dbg.value(metadata i64 %call, metadata !1637, metadata !DIExpression()), !dbg !1641
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call, i1 noundef zeroext false) #16, !dbg !1642
  %response = bitcast %union.anon.36* %buffer to %union.protocol_binary_response_no_extras*
  %1 = getelementptr inbounds %union.anon.36, %union.anon.36* %buffer, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2
  br label %do.body, !dbg !1643

do.body:                                          ; preds = %do.body, %entry
  %2 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %0) #16, !dbg !1644
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 16, i16 noundef zeroext 0) #16, !dbg !1646
  %3 = load i16, i16* %1, align 2, !dbg !1647, !tbaa !416
  %cmp.not = icmp eq i16 %3, 0, !dbg !1648
  br i1 %cmp.not, label %do.end, label %do.body, !dbg !1649, !llvm.loop !1650

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !1652
  ret i32 1, !dbg !1653
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_illegal() #0 !dbg !1654 {
entry:
  %buffer = alloca %union.anon.37, align 8
  call void @llvm.dbg.value(metadata i8 37, metadata !1656, metadata !DIExpression()), !dbg !1665
  %0 = getelementptr inbounds %union.anon.37, %union.anon.37* %buffer, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.dbg.value(metadata i8 37, metadata !1656, metadata !DIExpression()), !dbg !1665
  %response = bitcast %union.anon.37* %buffer to %union.protocol_binary_response_no_extras*
  br label %while.body, !dbg !1666

while.body:                                       ; preds = %entry, %while.body
  %cmd.011 = phi i8 [ 37, %entry ], [ %inc, %while.body ]
  call void @llvm.dbg.value(metadata i8 %cmd.011, metadata !1656, metadata !DIExpression()), !dbg !1665
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !1667
  call void @llvm.dbg.declare(metadata %union.anon.37* %buffer, metadata !1657, metadata !DIExpression()), !dbg !1668
  %call = call fastcc i64 @raw_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext %cmd.011, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #16, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %call, metadata !1664, metadata !DIExpression()), !dbg !1670
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call, i1 noundef zeroext false) #16, !dbg !1671
  %1 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %0) #16, !dbg !1672
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd.011, i16 noundef zeroext 129) #16, !dbg !1673
  %inc = add i8 %cmd.011, 1, !dbg !1674
  call void @llvm.dbg.value(metadata i8 %inc, metadata !1656, metadata !DIExpression()), !dbg !1665
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !1675
  %cmp.not = icmp eq i8 %inc, 0, !dbg !1676
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !1666, !llvm.loop !1677

while.end:                                        ; preds = %while.body
  ret i32 1, !dbg !1678
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_binary_pipeline_hickup() #0 !dbg !1679 {
entry:
  %tid = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 66560, metadata !1681, metadata !DIExpression()), !dbg !1688
  %call = tail call noalias i8* @malloc(i64 noundef 66560) #12, !dbg !1689
  call void @llvm.dbg.value(metadata i8* %call, metadata !1682, metadata !DIExpression()), !dbg !1688
  %0 = bitcast i64* %tid to i8*, !dbg !1690
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14, !dbg !1690
  store i1 true, i1* @allow_closed_read, align 1, !dbg !1691
  store volatile i8 1, i8* @hickup_thread_running, align 1, !dbg !1692, !tbaa !1693
  call void @llvm.dbg.value(metadata i64* %tid, metadata !1684, metadata !DIExpression(DW_OP_deref)), !dbg !1688
  %call1 = call i32 @pthread_create(i64* noundef nonnull %tid, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @binary_hickup_recv_verification_thread, i8* noundef null) #12, !dbg !1695
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1686, metadata !DIExpression()), !dbg !1688
  %cmp.not = icmp eq i32 %call1, 0, !dbg !1697
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1698

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1699, !tbaa !458
  %call2 = call i8* @strerror(i32 noundef %call1) #12, !dbg !1701
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.303, i64 0, i64 0), i8* noundef %call2) #12, !dbg !1702
  br label %cleanup, !dbg !1703

if.end:                                           ; preds = %entry
  %call4 = call i32 @usleep(i32 noundef 250) #12, !dbg !1704
  %call5 = call i64 @time(i64* noundef null) #12, !dbg !1705
  %conv = trunc i64 %call5 to i32, !dbg !1706
  call void @srand(i32 noundef %conv) #12, !dbg !1707
  call void @llvm.dbg.value(metadata i32 0, metadata !1683, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i32 0, metadata !1683, metadata !DIExpression()), !dbg !1688
  call fastcc void @test_binary_pipeline_hickup_chunk(i8* noundef %call) #16, !dbg !1708
  call void @llvm.dbg.value(metadata i32 1, metadata !1683, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i32 1, metadata !1683, metadata !DIExpression()), !dbg !1688
  call fastcc void @test_binary_pipeline_hickup_chunk(i8* noundef %call) #16, !dbg !1708
  call void @llvm.dbg.value(metadata i32 2, metadata !1683, metadata !DIExpression()), !dbg !1688
  %call9 = call fastcc i64 @raw_command(i8* noundef %call, i64 noundef 66560, i8 noundef zeroext 23, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #16, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %call9, metadata !1687, metadata !DIExpression()), !dbg !1688
  call fastcc void @safe_send(i8* noundef %call, i64 noundef %call9, i1 noundef zeroext false) #16, !dbg !1713
  %2 = load i64, i64* %tid, align 8, !dbg !1714, !tbaa !873
  call void @llvm.dbg.value(metadata i64 %2, metadata !1684, metadata !DIExpression()), !dbg !1688
  %call10 = call i32 @pthread_join(i64 noundef %2, i8** noundef null) #12, !dbg !1715
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 2, %if.then ], [ 1, %if.end ], !dbg !1688
  call void @free(i8* noundef %call) #12, !dbg !1688
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14, !dbg !1716
  ret i32 %retval.0, !dbg !1716
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @shutdown_memcached_server() #0 !dbg !1717 {
entry:
  %buffer = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i64 0, i64 0, !dbg !1720
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !1720
  call void @llvm.dbg.declare(metadata [1024 x i8]* %buffer, metadata !1719, metadata !DIExpression()), !dbg !1721
  tail call fastcc void @close_conn() #16, !dbg !1722
  %1 = load i16, i16* @port, align 2, !dbg !1723, !tbaa !1188
  %call = tail call fastcc %struct.conn* @connect_server(i16 noundef zeroext %1, i1 noundef zeroext false) #16, !dbg !1724
  store %struct.conn* %call, %struct.conn** @con, align 8, !dbg !1725, !tbaa !458
  %tobool1.not = icmp eq %struct.conn* %call, null, !dbg !1726
  br i1 %tobool1.not, label %if.else, label %if.end, !dbg !1729

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.214, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 945, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.shutdown_memcached_server, i64 0, i64 0)) #13, !dbg !1726
  unreachable, !dbg !1726

if.end:                                           ; preds = %entry
  tail call fastcc void @send_ascii_command(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.304, i64 0, i64 0)) #16, !dbg !1730
  %2 = load %struct.conn*, %struct.conn** @con, align 8, !dbg !1731, !tbaa !458
  %read = getelementptr inbounds %struct.conn, %struct.conn* %2, i64 0, i32 1, !dbg !1731
  %3 = load i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, i8*, i64)** %read, align 8, !dbg !1731, !tbaa !1394
  %call2 = call i64 %3(%struct.conn* noundef %2, i8* noundef nonnull %0, i64 noundef 1024) #12, !dbg !1731
  %cmp = icmp eq i64 %call2, 0, !dbg !1731
  br i1 %cmp, label %if.end5, label %if.else4, !dbg !1734

if.else4:                                         ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.240, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 949, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.shutdown_memcached_server, i64 0, i64 0)) #13, !dbg !1731
  unreachable, !dbg !1731

if.end5:                                          ; preds = %if.end
  call fastcc void @close_conn() #16, !dbg !1735
  %4 = load i32, i32* @server_pid, align 4, !dbg !1736, !tbaa !424
  %call6 = call i32 @kill(i32 noundef %4, i32 noundef 0) #12, !dbg !1738
  %cmp7 = icmp eq i32 %call6, 0, !dbg !1739
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1740

if.then8:                                         ; preds = %if.end5
  store i32 -1, i32* @server_pid, align 4, !dbg !1741, !tbaa !424
  br label %if.end9, !dbg !1743

if.end9:                                          ; preds = %if.then8, %if.end5
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !1744
  ret i32 1, !dbg !1745
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @stop_memcached_server() #0 !dbg !1746 {
entry:
  tail call fastcc void @close_conn() #16, !dbg !1747
  %0 = load i32, i32* @server_pid, align 4, !dbg !1748, !tbaa !424
  %cmp.not = icmp eq i32 %0, -1, !dbg !1750
  br i1 %cmp.not, label %if.end3, label %if.then, !dbg !1751

if.then:                                          ; preds = %entry
  %call = tail call i32 @kill(i32 noundef %0, i32 noundef 15) #12, !dbg !1752
  %cmp1 = icmp eq i32 %call, 0, !dbg !1752
  br i1 %cmp1, label %if.end3, label %if.else, !dbg !1756

if.else:                                          ; preds = %if.then
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.215, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 934, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.stop_memcached_server, i64 0, i64 0)) #13, !dbg !1752
  unreachable, !dbg !1752

if.end3:                                          ; preds = %if.then, %entry
  ret i32 1, !dbg !1757
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @STATS_LOCK() local_unnamed_addr #1 !dbg !1758 {
entry:
  ret void, !dbg !1759
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @STATS_UNLOCK() local_unnamed_addr #1 !dbg !1760 {
entry:
  ret void, !dbg !1761
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readnone %argv) local_unnamed_addr #0 !dbg !1762 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !1766, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1767, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i32 0, metadata !1768, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i32 0, metadata !1769, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i32 0, metadata !1770, metadata !DIExpression()), !dbg !1775
  store i32 (i8*, i64)* @jenkins_hash, i32 (i8*, i64)** @hash, align 8, !dbg !1776, !tbaa !458
  tail call void @stats_prefix_init(i8 noundef signext 58) #12, !dbg !1777
  tail call void @crc32c_init() #12, !dbg !1778
  call void @llvm.dbg.value(metadata i32 0, metadata !1770, metadata !DIExpression()), !dbg !1775
  br label %for.cond, !dbg !1779

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ], !dbg !1781
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1770, metadata !DIExpression()), !dbg !1775
  %description = getelementptr inbounds [57 x %struct.testcase], [57 x %struct.testcase]* @testcases, i64 0, i64 %indvars.iv, i32 0, !dbg !1782
  %0 = load i8*, i8** %description, align 16, !dbg !1782, !tbaa !1784
  %tobool.not = icmp eq i8* %0, null, !dbg !1786
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1770, metadata !DIExpression()), !dbg !1775
  br i1 %tobool.not, label %for.end, label %for.cond, !dbg !1786, !llvm.loop !1788

for.end:                                          ; preds = %for.cond
  %1 = trunc i64 %indvars.iv to i32, !dbg !1790
  %call = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i32 noundef %1) #12, !dbg !1790
  call void @llvm.dbg.value(metadata i32 0, metadata !1769, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i32 0, metadata !1768, metadata !DIExpression()), !dbg !1775
  %2 = load i8*, i8** getelementptr inbounds ([57 x %struct.testcase], [57 x %struct.testcase]* @testcases, i64 0, i64 0, i32 0), align 16, !dbg !1791, !tbaa !1784
  %cmp.not49 = icmp eq i8* %2, null, !dbg !1792
  br i1 %cmp.not49, label %for.end33, label %for.body5, !dbg !1793

for.body5:                                        ; preds = %for.end, %if.end29
  %indvars.iv56 = phi i64 [ %indvars.iv.next57.pre-phi, %if.end29 ], [ 0, %for.end ]
  %description454 = phi i8** [ %description4, %if.end29 ], [ getelementptr inbounds ([57 x %struct.testcase], [57 x %struct.testcase]* @testcases, i64 0, i64 0, i32 0), %for.end ]
  %exitcode.052 = phi i32 [ %exitcode.1, %if.end29 ], [ 0, %for.end ]
  call void @llvm.dbg.value(metadata i32 %exitcode.052, metadata !1768, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %indvars.iv56, metadata !1769, metadata !DIExpression()), !dbg !1775
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1794, !tbaa !458
  %call6 = tail call i32 @fflush(%struct._IO_FILE* noundef %3) #12, !dbg !1795
  %call7 = tail call i32 @alarm(i32 noundef 600) #12, !dbg !1796
  %function = getelementptr inbounds [57 x %struct.testcase], [57 x %struct.testcase]* @testcases, i64 0, i64 %indvars.iv56, i32 1, !dbg !1797
  %4 = load i32 ()*, i32 ()** %function, align 8, !dbg !1797, !tbaa !1798
  %call10 = tail call i32 %4() #12, !dbg !1799
  call void @llvm.dbg.value(metadata i32 %call10, metadata !1771, metadata !DIExpression()), !dbg !1800
  switch i32 %call10, label %if.else23 [
    i32 0, label %if.then
    i32 1, label %if.then17
  ], !dbg !1801

if.then:                                          ; preds = %for.body5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1802, !tbaa !458
  %6 = add nuw i64 %indvars.iv56, 1, !dbg !1805
  %7 = load i8*, i8** %description454, align 16, !dbg !1806, !tbaa !1784
  %8 = trunc i64 %6 to i32, !dbg !1807
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0), i32 noundef %8, i8* noundef %7) #12, !dbg !1807
  br label %if.end29, !dbg !1808

if.then17:                                        ; preds = %for.body5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1809, !tbaa !458
  %10 = add nuw i64 %indvars.iv56, 1, !dbg !1812
  %11 = load i8*, i8** %description454, align 16, !dbg !1813, !tbaa !1784
  %12 = trunc i64 %10 to i32, !dbg !1814
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i32 noundef %12, i8* noundef %11) #12, !dbg !1814
  br label %if.end29, !dbg !1815

if.else23:                                        ; preds = %for.body5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1816, !tbaa !458
  %14 = add nuw i64 %indvars.iv56, 1, !dbg !1818
  %15 = load i8*, i8** %description454, align 16, !dbg !1819, !tbaa !1784
  %16 = trunc i64 %14 to i32, !dbg !1820
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0), i32 noundef %16, i8* noundef %15) #12, !dbg !1820
  call void @llvm.dbg.value(metadata i32 1, metadata !1768, metadata !DIExpression()), !dbg !1775
  br label %if.end29

if.end29:                                         ; preds = %if.then17, %if.else23, %if.then
  %indvars.iv.next57.pre-phi = phi i64 [ %10, %if.then17 ], [ %14, %if.else23 ], [ %6, %if.then ], !dbg !1821
  %exitcode.1 = phi i32 [ %exitcode.052, %if.then17 ], [ 1, %if.else23 ], [ %exitcode.052, %if.then ], !dbg !1775
  call void @llvm.dbg.value(metadata i32 %exitcode.1, metadata !1768, metadata !DIExpression()), !dbg !1775
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1822, !tbaa !458
  %call30 = tail call i32 @fflush(%struct._IO_FILE* noundef %17) #12, !dbg !1823
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next57.pre-phi, metadata !1769, metadata !DIExpression()), !dbg !1775
  %description4 = getelementptr inbounds [57 x %struct.testcase], [57 x %struct.testcase]* @testcases, i64 0, i64 %indvars.iv.next57.pre-phi, i32 0, !dbg !1791
  %18 = load i8*, i8** %description4, align 16, !dbg !1791, !tbaa !1784
  %cmp.not = icmp eq i8* %18, null, !dbg !1792
  br i1 %cmp.not, label %for.end33, label %for.body5, !dbg !1793, !llvm.loop !1824

for.end33:                                        ; preds = %if.end29, %for.end
  %exitcode.0.lcssa = phi i32 [ 0, %for.end ], [ %exitcode.1, %if.end29 ], !dbg !1826
  ret i32 %exitcode.0.lcssa, !dbg !1827
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local i32 @jenkins_hash(i8* noundef, i64 noundef) #4

declare !dbg !1828 dso_local void @stats_prefix_init(i8 noundef signext) local_unnamed_addr #4

declare !dbg !1831 dso_local void @crc32c_init() local_unnamed_addr #4

declare !dbg !1833 dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #4

declare !dbg !1838 dso_local i32 @fflush(%struct._IO_FILE* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1841 dso_local i32 @alarm(i32 noundef) local_unnamed_addr #5

declare !dbg !1845 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare !dbg !1849 dso_local %struct.cache_t* @cache_create(i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #6

declare !dbg !1852 dso_local void @cache_destroy(%struct.cache_t* noundef) local_unnamed_addr #4

declare !dbg !1855 dso_local i8* @cache_alloc(%struct.cache_t* noundef) local_unnamed_addr #4

declare !dbg !1858 dso_local void @cache_free(%struct.cache_t* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare !dbg !1861 dso_local i32 @sigemptyset(%struct.__sigset_t* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !1867 dso_local i32 @sigaction(i32 noundef, %struct.sigaction* noundef, %struct.sigaction* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !1875 dso_local noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !1879 dso_local void @cache_set_limit(%struct.cache_t* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1882 dso_local void @free(i8* noundef) local_unnamed_addr #5

declare !dbg !1885 dso_local void @stats_prefix_clear() local_unnamed_addr #4

declare !dbg !1886 dso_local %struct._prefix_stats* @stats_prefix_find(i8* noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1890 dso_local void @stats_prefix_record_get(i8* noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare !dbg !1894 dso_local void @stats_prefix_record_delete(i8* noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1897 dso_local void @stats_prefix_record_set(i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !1898 dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #8

declare !dbg !1902 dso_local i8* @stats_prefix_dump(i32* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !1906 dso_local i64 @strlen(i8* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !1909 dso_local i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !1912 dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cache_bulkalloc(i64 noundef %datasize) unnamed_addr #0 !dbg !1916 {
entry:
  %ptr = alloca [1024 x i8*], align 16
  call void @llvm.dbg.value(metadata i64 %datasize, metadata !1920, metadata !DIExpression()), !dbg !1928
  %call = tail call %struct.cache_t* @cache_create(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i64 noundef %datasize, i64 noundef 8) #12, !dbg !1929
  call void @llvm.dbg.value(metadata %struct.cache_t* %call, metadata !1921, metadata !DIExpression()), !dbg !1928
  %cmp = icmp eq %struct.cache_t* %call, null, !dbg !1930
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1932

if.end:                                           ; preds = %entry
  %0 = bitcast [1024 x i8*]* %ptr to i8*, !dbg !1933
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %0) #14, !dbg !1933
  call void @llvm.dbg.declare(metadata [1024 x i8*]* %ptr, metadata !1922, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i32 0, metadata !1924, metadata !DIExpression()), !dbg !1935
  br label %for.body, !dbg !1936

for.body:                                         ; preds = %if.end, %if.end7
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %if.end7 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1924, metadata !DIExpression()), !dbg !1935
  %call2 = tail call i8* @cache_alloc(%struct.cache_t* noundef nonnull %call) #12, !dbg !1937
  %arrayidx = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %ptr, i64 0, i64 %indvars.iv, !dbg !1940
  store i8* %call2, i8** %arrayidx, align 8, !dbg !1941, !tbaa !458
  %cmp5.not = icmp eq i8* %call2, null, !dbg !1942
  br i1 %cmp5.not, label %if.else, label %if.end7, !dbg !1945

if.else:                                          ; preds = %for.body
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.cache_bulkalloc, i64 0, i64 0)) #13, !dbg !1942
  unreachable, !dbg !1942

if.end7:                                          ; preds = %for.body
  %call10 = tail call i8* @memset(i8* noundef nonnull %call2, i32 noundef 255, i64 noundef %datasize) #12, !dbg !1946
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1924, metadata !DIExpression()), !dbg !1935
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1024, !dbg !1948
  br i1 %exitcond.not, label %for.body15, label %for.body, !dbg !1936, !llvm.loop !1949

for.cond.cleanup14:                               ; preds = %for.body15
  tail call void @cache_destroy(%struct.cache_t* noundef nonnull %call) #12, !dbg !1951
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %0) #14, !dbg !1952
  br label %cleanup

for.body15:                                       ; preds = %if.end7, %for.body15
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.body15 ], [ 0, %if.end7 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37, metadata !1926, metadata !DIExpression()), !dbg !1953
  %arrayidx17 = getelementptr inbounds [1024 x i8*], [1024 x i8*]* %ptr, i64 0, i64 %indvars.iv37, !dbg !1954
  %1 = load i8*, i8** %arrayidx17, align 8, !dbg !1954, !tbaa !458
  tail call void @cache_free(%struct.cache_t* noundef nonnull %call, i8* noundef %1) #12, !dbg !1957
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38, metadata !1926, metadata !DIExpression()), !dbg !1953
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, 1024, !dbg !1959
  br i1 %exitcond40.not, label %for.cond.cleanup14, label %for.body15, !dbg !1960, !llvm.loop !1961

cleanup:                                          ; preds = %entry, %for.cond.cleanup14
  %retval.0 = phi i32 [ 1, %for.cond.cleanup14 ], [ 2, %entry ], !dbg !1928
  ret i32 %retval.0, !dbg !1952
}

; Function Attrs: nounwind
declare !dbg !1963 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !1966 dso_local zeroext i1 @safe_strtol(i8* noundef, i32* noundef) local_unnamed_addr #4

declare !dbg !1971 dso_local zeroext i1 @safe_strtoll(i8* noundef, i64* noundef) local_unnamed_addr #4

declare !dbg !1975 dso_local zeroext i1 @safe_strtoul(i8* noundef, i32* noundef) local_unnamed_addr #4

declare !dbg !1979 dso_local zeroext i1 @safe_strtoull(i8* noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @start_server(i16* nocapture noundef writeonly %port_out, i1 noundef zeroext %daemon, i32 noundef %timeout) unnamed_addr #0 !dbg !1983 {
entry:
  %environment = alloca [80 x i8], align 16
  %pid_file = alloca [80 x i8], align 16
  %argv = alloca [24 x i8*], align 16
  %tmo = alloca [24 x i8], align 16
  %buffer = alloca [80 x i8], align 16
  %val = alloca i32, align 4
  %val159 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i16* %port_out, metadata !1988, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i1 %daemon, metadata !1989, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2016
  call void @llvm.dbg.value(metadata i32 %timeout, metadata !1990, metadata !DIExpression()), !dbg !2016
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %environment, i64 0, i64 0, !dbg !2017
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #14, !dbg !2017
  call void @llvm.dbg.declare(metadata [80 x i8]* %environment, metadata !1991, metadata !DIExpression()), !dbg !2018
  %call = tail call i32 @getpid() #12, !dbg !2019
  %conv = sext i32 %call to i64, !dbg !2020
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 80, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.172, i64 0, i64 0), i64 noundef %conv) #12, !dbg !2021
  %call3 = call i64 @strlen(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.173, i64 0, i64 0)) #15, !dbg !2022
  %add.ptr = getelementptr inbounds [80 x i8], [80 x i8]* %environment, i64 0, i64 %call3, !dbg !2023
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1992, metadata !DIExpression()), !dbg !2016
  %1 = getelementptr inbounds [80 x i8], [80 x i8]* %pid_file, i64 0, i64 0, !dbg !2024
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #14, !dbg !2024
  call void @llvm.dbg.declare(metadata [80 x i8]* %pid_file, metadata !1993, metadata !DIExpression()), !dbg !2025
  %call5 = call i32 @getpid() #12, !dbg !2026
  %conv6 = sext i32 %call5 to i64, !dbg !2027
  %call7 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %1, i64 noundef 80, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.174, i64 0, i64 0), i64 noundef %conv6) #12, !dbg !2028
  %call8 = call i32 @remove(i8* noundef nonnull %add.ptr) #12, !dbg !2029
  %call10 = call i32 @remove(i8* noundef nonnull %1) #12, !dbg !2030
  %call11 = call i32 @fork() #12, !dbg !2031
  call void @llvm.dbg.value(metadata i32 %call11, metadata !1994, metadata !DIExpression()), !dbg !2016
  switch i32 %call11, label %if.end79 [
    i32 -1, label %if.else
    i32 0, label %if.then15
  ], !dbg !2032

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 508, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.start_server, i64 0, i64 0)) #13, !dbg !2034
  unreachable, !dbg !2034

if.then15:                                        ; preds = %entry
  %2 = bitcast [24 x i8*]* %argv to i8*, !dbg !2036
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %2) #14, !dbg !2036
  call void @llvm.dbg.declare(metadata [24 x i8*]* %argv, metadata !1995, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 0, metadata !1999, metadata !DIExpression()), !dbg !2038
  %3 = getelementptr inbounds [24 x i8], [24 x i8]* %tmo, i64 0, i64 0, !dbg !2039
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #14, !dbg !2039
  call void @llvm.dbg.declare(metadata [24 x i8]* %tmo, metadata !2000, metadata !DIExpression()), !dbg !2040
  %call17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.176, i64 0, i64 0), i32 noundef %timeout) #12, !dbg !2041
  %call19 = call i32 @putenv(i8* noundef nonnull %0) #12, !dbg !2042
  br i1 %daemon, label %if.end25, label %if.then20, !dbg !2043

if.then20:                                        ; preds = %if.then15
  call void @llvm.dbg.value(metadata i32 1, metadata !1999, metadata !DIExpression()), !dbg !2038
  %arrayidx = getelementptr inbounds [24 x i8*], [24 x i8*]* %argv, i64 0, i64 0, !dbg !2044
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.177, i64 0, i64 0), i8** %arrayidx, align 16, !dbg !2047, !tbaa !458
  call void @llvm.dbg.value(metadata i32 2, metadata !1999, metadata !DIExpression()), !dbg !2038
  %arrayidx24 = getelementptr inbounds [24 x i8*], [24 x i8*]* %argv, i64 0, i64 1, !dbg !2048
  store i8* %3, i8** %arrayidx24, align 8, !dbg !2049, !tbaa !458
  br label %if.end25, !dbg !2050

if.end25:                                         ; preds = %if.then20, %if.then15
  %arg.0 = phi i32 [ 0, %if.then15 ], [ 2, %if.then20 ], !dbg !2038
  call void @llvm.dbg.value(metadata i32 %arg.0, metadata !1999, metadata !DIExpression()), !dbg !2038
  %inc26 = or i32 %arg.0, 1, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %inc26, metadata !1999, metadata !DIExpression()), !dbg !2038
  %4 = zext i32 %arg.0 to i64
  %arrayidx28 = getelementptr inbounds [24 x i8*], [24 x i8*]* %argv, i64 0, i64 %4, !dbg !2052
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.178, i64 0, i64 0), i8** %arrayidx28, align 16, !dbg !2053, !tbaa !458
  %inc29 = add nuw nsw i32 %arg.0, 2, !dbg !2054
  call void @llvm.dbg.value(metadata i32 %inc29, metadata !1999, metadata !DIExpression()), !dbg !2038
  %5 = zext i32 %inc26 to i64
  %arrayidx31 = getelementptr inbounds [24 x i8*], [24 x i8*]* %argv, i64 0, i64 %5, !dbg !2055
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.179, i64 0, i64 0), i8** %arrayidx31, align 8, !dbg !2056, !tbaa !458
  %inc32 = add nuw nsw i32 %arg.0, 3, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %inc32, metadata !1999, metadata !DIExpression()), !dbg !2038
  %6 = zext i32 %inc29 to i64
  %arrayidx34 = getelementptr inbounds [24 x i8*], [24 x i8*]* %argv, i64 0, i64 %6, !dbg !2058
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.180, i64 0, i64 0), i8** %arrayidx34, align 16, !dbg !2059, !tbaa !458
  %inc35 = or i32 %arg.0, 4, !dbg !2060
  call void @llvm.dbg.value(metadata i32 %inc35, metadata !1999, metadata !DIExpression()), !dbg !2038
  %7 = zext i32 %inc32 to i64
  %arrayidx37 = getelementptr inbounds [24 x i8*], [24 x i8*]* %argv, i64 0, i64 %7, !dbg !2061
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i64 0, i64 0), i8** %arrayidx37, align 8, !dbg !2062, !tbaa !458
  %inc38 = or i32 %arg.0, 5, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %inc38, metadata !1999, metadata !DIExpression()), !dbg !2038
  %8 = zext i32 %inc35 to i64
  %arrayidx40 = getelementptr inbounds [24 x i8*], [24 x i8*]* %argv, i64 0, i64 %8, !dbg !2064
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.181, i64 0, i64 0), i8** %arrayidx40, align 16, !dbg !2065, !tbaa !458
  %inc41 = add nuw nsw i32 %arg.0, 6, !dbg !2066
  call void @llvm.dbg.value(metadata i32 %inc41, metadata !1999, metadata !DIExpression()), !dbg !2038
  %9 = zext i32 %inc38 to i64
  %arrayidx43 = getelementptr inbounds [24 x i8*], [24 x i8*]* %argv, i64 0, i64 %9, !dbg !2067
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.182, i64 0, i64 0), i8** %arrayidx43, align 8, !dbg !2068, !tbaa !458
  %call44 = call i32 @getuid() #12, !dbg !2069
  %cmp45 = icmp eq i32 %call44, 0, !dbg !2071
  br i1 %cmp45, label %if.then47, label %if.end54, !dbg !2072

if.then47:                                        ; preds = %if.end25
  %inc48 = add nuw nsw i32 %arg.0, 7, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %inc48, metadata !1999, metadata !DIExpression()), !dbg !2038
  %10 = zext i32 %inc41 to i64
  %arrayidx50 = getelementptr inbounds [24 x i8*], [24 x i8*]* %argv, i64 0, i64 %10, !dbg !2075
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.183, i64 0, i64 0), i8** %arrayidx50, align 16, !dbg !2076, !tbaa !458
  %inc51 = or i32 %arg.0, 8, !dbg !2077
  call void @llvm.dbg.value(metadata i32 %inc51, metadata !1999, metadata !DIExpression()), !dbg !2038
  %11 = zext i32 %inc48 to i64
  %arrayidx53 = getelementptr inbounds [24 x i8*], [24 x i8*]* %argv, i64 0, i64 %11, !dbg !2078
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.184, i64 0, i64 0), i8** %arrayidx53, align 8, !dbg !2079, !tbaa !458
  br label %if.end54, !dbg !2080

if.end54:                                         ; preds = %if.then47, %if.end25
  %arg.1 = phi i32 [ %inc51, %if.then47 ], [ %inc41, %if.end25 ], !dbg !2038
  call void @llvm.dbg.value(metadata i32 %arg.1, metadata !1999, metadata !DIExpression()), !dbg !2038
  br i1 %daemon, label %if.then56, label %if.end67, !dbg !2081

if.then56:                                        ; preds = %if.end54
  %inc57 = add nsw i32 %arg.1, 1, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %inc57, metadata !1999, metadata !DIExpression()), !dbg !2038
  %12 = zext i32 %arg.1 to i64
  %arrayidx59 = getelementptr inbounds [24 x i8*], [24 x i8*]* %argv, i64 0, i64 %12, !dbg !2085
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.185, i64 0, i64 0), i8** %arrayidx59, align 8, !dbg !2086, !tbaa !458
  %inc60 = add nsw i32 %arg.1, 2, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %inc60, metadata !1999, metadata !DIExpression()), !dbg !2038
  %13 = zext i32 %inc57 to i64
  %arrayidx62 = getelementptr inbounds [24 x i8*], [24 x i8*]* %argv, i64 0, i64 %13, !dbg !2088
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.186, i64 0, i64 0), i8** %arrayidx62, align 8, !dbg !2089, !tbaa !458
  %inc64 = add nsw i32 %arg.1, 3, !dbg !2090
  call void @llvm.dbg.value(metadata i32 %inc64, metadata !1999, metadata !DIExpression()), !dbg !2038
  %14 = zext i32 %inc60 to i64
  %arrayidx66 = getelementptr inbounds [24 x i8*], [24 x i8*]* %argv, i64 0, i64 %14, !dbg !2091
  store i8* %1, i8** %arrayidx66, align 8, !dbg !2092, !tbaa !458
  br label %if.end67, !dbg !2093

if.end67:                                         ; preds = %if.then56, %if.end54
  %arg.2 = phi i32 [ %inc64, %if.then56 ], [ %arg.1, %if.end54 ], !dbg !2038
  call void @llvm.dbg.value(metadata i32 %arg.2, metadata !1999, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2038
  %15 = zext i32 %arg.2 to i64
  %arrayidx70 = getelementptr inbounds [24 x i8*], [24 x i8*]* %argv, i64 0, i64 %15, !dbg !2094
  store i8* null, i8** %arrayidx70, align 8, !dbg !2095, !tbaa !458
  %arrayidx71 = getelementptr inbounds [24 x i8*], [24 x i8*]* %argv, i64 0, i64 0, !dbg !2096
  %16 = load i8*, i8** %arrayidx71, align 16, !dbg !2096, !tbaa !458
  %call73 = call i32 @execv(i8* noundef %16, i8** noundef nonnull %arrayidx71) #12, !dbg !2096
  %cmp74.not = icmp eq i32 %call73, -1, !dbg !2096
  br i1 %cmp74.not, label %if.else77, label %if.end78, !dbg !2099

if.else77:                                        ; preds = %if.end67
  call void @__assert_fail(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.187, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 559, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.start_server, i64 0, i64 0)) #13, !dbg !2096
  unreachable, !dbg !2096

if.end78:                                         ; preds = %if.end67
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #14, !dbg !2100
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %2) #14, !dbg !2100
  br label %if.end79, !dbg !2101

if.end79:                                         ; preds = %entry, %if.end78
  call void @llvm.dbg.value(metadata i32 10000000, metadata !2001, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i32 1000, metadata !2004, metadata !DIExpression()), !dbg !2016
  %call80206 = call i32 @access(i8* noundef nonnull %add.ptr, i32 noundef 0) #12, !dbg !2102
  %cmp81207 = icmp eq i32 %call80206, -1, !dbg !2103
  br i1 %cmp81207, label %while.body, label %while.end, !dbg !2104

while.body:                                       ; preds = %if.end79, %while.body
  %wait_timeout.0208 = phi i32 [ %17, %while.body ], [ 10000000, %if.end79 ]
  call void @llvm.dbg.value(metadata i32 %wait_timeout.0208, metadata !2001, metadata !DIExpression()), !dbg !2016
  %call85 = call i32 @usleep(i32 noundef 1000) #12, !dbg !2105
  %17 = call i32 @llvm.usub.sat.i32(i32 %wait_timeout.0208, i32 1000), !dbg !2107
  call void @llvm.dbg.value(metadata i32 %17, metadata !2001, metadata !DIExpression()), !dbg !2016
  %call80 = call i32 @access(i8* noundef nonnull %add.ptr, i32 noundef 0) #12, !dbg !2102
  %cmp81 = icmp eq i32 %call80, -1, !dbg !2103
  %cmp83 = icmp ugt i32 %wait_timeout.0208, 1000, !dbg !2108
  %18 = select i1 %cmp81, i1 %cmp83, i1 false, !dbg !2108
  br i1 %18, label %while.body, label %while.end, !dbg !2104, !llvm.loop !2109

while.end:                                        ; preds = %while.body, %if.end79
  %call88 = call i32 @access(i8* noundef nonnull %add.ptr, i32 noundef 0) #12, !dbg !2111
  %cmp89 = icmp eq i32 %call88, -1, !dbg !2113
  br i1 %cmp89, label %if.then91, label %if.end93, !dbg !2114

if.then91:                                        ; preds = %while.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2115, !tbaa !458
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.188, i64 0, i64 0)) #12, !dbg !2117
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.189, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 572, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.start_server, i64 0, i64 0)) #13, !dbg !2118
  unreachable, !dbg !2118

if.end93:                                         ; preds = %while.end
  %call94 = call %struct._IO_FILE* @fopen(i8* noundef nonnull %add.ptr, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.190, i64 0, i64 0)) #12, !dbg !2121
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call94, metadata !2005, metadata !DIExpression()), !dbg !2016
  %cmp95 = icmp eq %struct._IO_FILE* %call94, null, !dbg !2122
  br i1 %cmp95, label %if.then97, label %if.end101, !dbg !2124

if.then97:                                        ; preds = %if.end93
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2125, !tbaa !458
  %call98 = tail call i32* @__errno_location() #17, !dbg !2127
  %21 = load i32, i32* %call98, align 4, !dbg !2127, !tbaa !424
  %call99 = call i8* @strerror(i32 noundef %21) #12, !dbg !2128
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.191, i64 0, i64 0), i8* noundef %call99) #12, !dbg !2129
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.189, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 579, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.start_server, i64 0, i64 0)) #13, !dbg !2130
  unreachable, !dbg !2130

if.end101:                                        ; preds = %if.end93
  store i16 -1, i16* %port_out, align 2, !dbg !2133, !tbaa !1188
  %22 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i64 0, i64 0, !dbg !2134
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %22) #14, !dbg !2134
  call void @llvm.dbg.declare(metadata [80 x i8]* %buffer, metadata !2006, metadata !DIExpression()), !dbg !2135
  %call104209 = call i8* @fgets(i8* noundef nonnull %22, i32 noundef 80, %struct._IO_FILE* noundef nonnull %call94) #12, !dbg !2136
  %cmp105.not210 = icmp eq i8* %call104209, null, !dbg !2137
  br i1 %cmp105.not210, label %while.end121, label %while.body107.lr.ph, !dbg !2138

while.body107.lr.ph:                              ; preds = %if.end101
  %23 = bitcast i32* %val to i8*
  %add.ptr114 = getelementptr inbounds [80 x i8], [80 x i8]* %buffer, i64 0, i64 10
  br label %while.body107, !dbg !2138

while.body107:                                    ; preds = %while.body107.lr.ph, %if.end120
  %call109 = call i32 @strncmp(i8* noundef nonnull %22, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.192, i64 0, i64 0), i64 noundef 10) #15, !dbg !2139
  %cmp110 = icmp eq i32 %call109, 0, !dbg !2140
  br i1 %cmp110, label %if.then112, label %if.end120, !dbg !2141

if.then112:                                       ; preds = %while.body107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #14, !dbg !2142
  call void @llvm.dbg.value(metadata i32* %val, metadata !2007, metadata !DIExpression(DW_OP_deref)), !dbg !2143
  %call115 = call zeroext i1 @safe_strtol(i8* noundef nonnull %add.ptr114, i32* noundef nonnull %val) #12, !dbg !2144
  br i1 %call115, label %if.end118, label %if.else117, !dbg !2147

if.else117:                                       ; preds = %if.then112
  call void @__assert_fail(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.193, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 587, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.start_server, i64 0, i64 0)) #13, !dbg !2144
  unreachable, !dbg !2144

if.end118:                                        ; preds = %if.then112
  %24 = load i32, i32* %val, align 4, !dbg !2148, !tbaa !424
  call void @llvm.dbg.value(metadata i32 %24, metadata !2007, metadata !DIExpression()), !dbg !2143
  %conv119 = trunc i32 %24 to i16, !dbg !2149
  store i16 %conv119, i16* %port_out, align 2, !dbg !2150, !tbaa !1188
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #14, !dbg !2151
  br label %if.end120, !dbg !2152

if.end120:                                        ; preds = %if.end118, %while.body107
  %call104 = call i8* @fgets(i8* noundef nonnull %22, i32 noundef 80, %struct._IO_FILE* noundef nonnull %call94) #12, !dbg !2136
  %cmp105.not = icmp eq i8* %call104, null, !dbg !2137
  br i1 %cmp105.not, label %while.end121, label %while.body107, !dbg !2138, !llvm.loop !2153

while.end121:                                     ; preds = %if.end120, %if.end101
  %call122 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call94) #12, !dbg !2155
  %call123 = call i32 @remove(i8* noundef nonnull %add.ptr) #12, !dbg !2156
  %cmp124 = icmp eq i32 %call123, 0, !dbg !2156
  br i1 %cmp124, label %if.end128, label %if.else127, !dbg !2159

if.else127:                                       ; preds = %while.end121
  call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.194, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 592, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.start_server, i64 0, i64 0)) #13, !dbg !2156
  unreachable, !dbg !2156

if.end128:                                        ; preds = %while.end121
  br i1 %daemon, label %while.cond131.preheader, label %if.end165, !dbg !2160

while.cond131.preheader:                          ; preds = %if.end128
  %call133211 = call i32 @access(i8* noundef nonnull %1, i32 noundef 0) #12, !dbg !2161
  %cmp134212 = icmp eq i32 %call133211, -1, !dbg !2162
  br i1 %cmp134212, label %while.body136, label %while.end138, !dbg !2163

while.body136:                                    ; preds = %while.cond131.preheader, %while.body136
  %call137 = call i32 @usleep(i32 noundef 10) #12, !dbg !2164
  %call133 = call i32 @access(i8* noundef nonnull %1, i32 noundef 0) #12, !dbg !2161
  %cmp134 = icmp eq i32 %call133, -1, !dbg !2162
  br i1 %cmp134, label %while.body136, label %while.end138, !dbg !2163, !llvm.loop !2166

while.end138:                                     ; preds = %while.body136, %while.cond131.preheader
  %call140 = call %struct._IO_FILE* @fopen(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.190, i64 0, i64 0)) #12, !dbg !2168
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call140, metadata !2005, metadata !DIExpression()), !dbg !2016
  %cmp141 = icmp eq %struct._IO_FILE* %call140, null, !dbg !2169
  br i1 %cmp141, label %if.then143, label %land.rhs150, !dbg !2171

if.then143:                                       ; preds = %while.end138
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2172, !tbaa !458
  %call144 = tail call i32* @__errno_location() #17, !dbg !2174
  %26 = load i32, i32* %call144, align 4, !dbg !2174, !tbaa !424
  %call145 = call i8* @strerror(i32 noundef %26) #12, !dbg !2175
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.195, i64 0, i64 0), i8* noundef %call145) #12, !dbg !2176
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.189, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 607, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.start_server, i64 0, i64 0)) #13, !dbg !2177
  unreachable, !dbg !2177

land.rhs150:                                      ; preds = %while.end138, %for.body
  %x.0213 = phi i32 [ %inc157, %for.body ], [ 0, %while.end138 ]
  call void @llvm.dbg.value(metadata i32 %x.0213, metadata !2011, metadata !DIExpression()), !dbg !2180
  %call152 = call i8* @fgets(i8* noundef nonnull %22, i32 noundef 80, %struct._IO_FILE* noundef nonnull %call140) #12, !dbg !2181
  %cmp153 = icmp eq i8* %call152, null, !dbg !2183
  br i1 %cmp153, label %for.body, label %for.cond.cleanup, !dbg !2184

for.cond.cleanup:                                 ; preds = %for.body, %land.rhs150
  %call158 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call140) #12, !dbg !2185
  %27 = bitcast i32* %val159 to i8*, !dbg !2186
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #14, !dbg !2186
  call void @llvm.dbg.value(metadata i32* %val159, metadata !2015, metadata !DIExpression(DW_OP_deref)), !dbg !2187
  %call161 = call zeroext i1 @safe_strtol(i8* noundef nonnull %22, i32* noundef nonnull %val159) #12, !dbg !2188
  br i1 %call161, label %if.end164, label %if.else163, !dbg !2191

for.body:                                         ; preds = %land.rhs150
  %call156 = call i32 @usleep(i32 noundef 10) #12, !dbg !2192
  %inc157 = add nuw nsw i32 %x.0213, 1, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %inc157, metadata !2011, metadata !DIExpression()), !dbg !2180
  %exitcond.not = icmp eq i32 %inc157, 20, !dbg !2195
  br i1 %exitcond.not, label %for.cond.cleanup, label %land.rhs150, !dbg !2196, !llvm.loop !2197

if.else163:                                       ; preds = %for.cond.cleanup
  call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.196, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 617, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.start_server, i64 0, i64 0)) #13, !dbg !2188
  unreachable, !dbg !2188

if.end164:                                        ; preds = %for.cond.cleanup
  %28 = load i32, i32* %val159, align 4, !dbg !2199, !tbaa !424
  call void @llvm.dbg.value(metadata i32 %28, metadata !2015, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i32 %28, metadata !1994, metadata !DIExpression()), !dbg !2016
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #14, !dbg !2200
  br label %if.end165, !dbg !2201

if.end165:                                        ; preds = %if.end164, %if.end128
  %pid.0 = phi i32 [ %28, %if.end164 ], [ %call11, %if.end128 ], !dbg !2016
  call void @llvm.dbg.value(metadata i32 %pid.0, metadata !1994, metadata !DIExpression()), !dbg !2016
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %22) #14, !dbg !2202
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #14, !dbg !2202
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #14, !dbg !2202
  ret i32 %pid.0, !dbg !2203
}

; Function Attrs: nounwind
declare !dbg !2204 dso_local i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #5

declare !dbg !2207 dso_local i32 @sleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2208 dso_local i32 @getpid() local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2211 dso_local i32 @remove(i8* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2214 dso_local i32 @fork() local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2215 dso_local i32 @putenv(i8* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2218 dso_local i32 @getuid() local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2221 dso_local i32 @execv(i8* noundef, i8** noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2226 dso_local i32 @access(i8* noundef, i32 noundef) local_unnamed_addr #5

declare !dbg !2229 dso_local i32 @usleep(i32 noundef) local_unnamed_addr #4

declare !dbg !2232 dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2235 dso_local i8* @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #9

declare !dbg !2238 dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !2241 dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

declare !dbg !2244 dso_local i32 @fclose(%struct._IO_FILE* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2245 dso_local i32 @dup(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2248 dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !2251 dso_local i32 @mkstemp(i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2252 dso_local i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #5

declare !dbg !2255 dso_local i32 @close(i32 noundef) local_unnamed_addr #4

declare !dbg !2256 dso_local void @vperror(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2259 dso_local i32 @unlink(i8* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2260 dso_local i8* @getenv(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc noalias %struct.conn* @connect_server(i16 noundef zeroext %port, i1 noundef zeroext %nonblock) unnamed_addr #0 !dbg !2263 {
entry:
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.209, i64 0, i64 0), metadata !2267, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i16 %port, metadata !2268, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i1 %nonblock, metadata !2269, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2307
  call void @llvm.dbg.value(metadata i1 undef, metadata !2270, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2307
  %call = tail call noalias i8* @calloc(i64 noundef 1, i64 noundef 24) #12, !dbg !2308
  %0 = bitcast i8* %call to %struct.conn*, !dbg !2310
  call void @llvm.dbg.value(metadata %struct.conn* %0, metadata !2271, metadata !DIExpression()), !dbg !2307
  %tobool.not = icmp eq i8* %call, null, !dbg !2311
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !2312

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2313, !tbaa !458
  %call2 = tail call i32* @__errno_location() #17, !dbg !2315
  %2 = load i32, i32* %call2, align 4, !dbg !2315, !tbaa !424
  %call3 = tail call i8* @strerror(i32 noundef %2) #12, !dbg !2316
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.216, i64 0, i64 0), i8* noundef %call3) #12, !dbg !2317
  br label %cleanup, !dbg !2318

if.end:                                           ; preds = %entry
  %call5 = tail call fastcc %struct.addrinfo* @lookuphost(i16 noundef zeroext %port) #16, !dbg !2319
  call void @llvm.dbg.value(metadata %struct.addrinfo* %call5, metadata !2272, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i32 -1, metadata !2298, metadata !DIExpression()), !dbg !2307
  %cmp.not = icmp eq %struct.addrinfo* %call5, null, !dbg !2320
  br i1 %cmp.not, label %if.end36, label %if.then6, !dbg !2321

if.then6:                                         ; preds = %if.end
  %ai_family = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %call5, i64 0, i32 1, !dbg !2322
  %3 = load i32, i32* %ai_family, align 4, !dbg !2322, !tbaa !2323
  %ai_socktype = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %call5, i64 0, i32 2, !dbg !2325
  %4 = load i32, i32* %ai_socktype, align 8, !dbg !2325, !tbaa !2326
  %ai_protocol = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %call5, i64 0, i32 3, !dbg !2327
  %5 = load i32, i32* %ai_protocol, align 4, !dbg !2327, !tbaa !2328
  %call7 = tail call i32 @socket(i32 noundef %3, i32 noundef %4, i32 noundef %5) #12, !dbg !2329
  call void @llvm.dbg.value(metadata i32 %call7, metadata !2298, metadata !DIExpression()), !dbg !2307
  %cmp8.not = icmp eq i32 %call7, -1, !dbg !2330
  br i1 %cmp8.not, label %if.else31, label %if.then9, !dbg !2331

if.then9:                                         ; preds = %if.then6
  %ai_addr = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %call5, i64 0, i32 5, !dbg !2332
  %6 = load %struct.sockaddr*, %struct.sockaddr** %ai_addr, align 8, !dbg !2332, !tbaa !2333
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %call5, i64 0, i32 4, !dbg !2334
  %7 = load i32, i32* %ai_addrlen, align 8, !dbg !2334, !tbaa !2335
  %call10 = tail call i32 @connect(i32 noundef %call7, %struct.sockaddr* noundef %6, i32 noundef %7) #12, !dbg !2336
  %cmp11 = icmp eq i32 %call10, -1, !dbg !2337
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !2338

if.then12:                                        ; preds = %if.then9
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2339, !tbaa !458
  %call13 = tail call i32* @__errno_location() #17, !dbg !2341
  %9 = load i32, i32* %call13, align 4, !dbg !2341, !tbaa !424
  %call14 = tail call i8* @strerror(i32 noundef %9) #12, !dbg !2342
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.217, i64 0, i64 0), i8* noundef %call14) #12, !dbg !2343
  %call16 = tail call i32 @close(i32 noundef %call7) #12, !dbg !2344
  call void @llvm.dbg.value(metadata i32 -1, metadata !2298, metadata !DIExpression()), !dbg !2307
  br label %if.end35, !dbg !2345

if.else:                                          ; preds = %if.then9
  br i1 %nonblock, label %if.then18, label %if.end35, !dbg !2346

if.then18:                                        ; preds = %if.else
  %call19 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %call7, i32 noundef 3, i32 noundef 0) #12, !dbg !2347
  call void @llvm.dbg.value(metadata i32 %call19, metadata !2299, metadata !DIExpression()), !dbg !2348
  %cmp20 = icmp slt i32 %call19, 0, !dbg !2349
  br i1 %cmp20, label %if.then23, label %lor.lhs.false, !dbg !2351

lor.lhs.false:                                    ; preds = %if.then18
  %or = or i32 %call19, 2048, !dbg !2352
  %call21 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %call7, i32 noundef 4, i32 noundef %or) #12, !dbg !2353
  %cmp22 = icmp slt i32 %call21, 0, !dbg !2354
  br i1 %cmp22, label %if.then23, label %if.end35, !dbg !2355

if.then23:                                        ; preds = %lor.lhs.false, %if.then18
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2356, !tbaa !458
  %call24 = tail call i32* @__errno_location() #17, !dbg !2358
  %11 = load i32, i32* %call24, align 4, !dbg !2358, !tbaa !424
  %call25 = tail call i8* @strerror(i32 noundef %11) #12, !dbg !2359
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.218, i64 0, i64 0), i8* noundef %call25) #12, !dbg !2360
  %call27 = tail call i32 @close(i32 noundef %call7) #12, !dbg !2361
  call void @llvm.dbg.value(metadata i32 -1, metadata !2298, metadata !DIExpression()), !dbg !2307
  br label %if.end35, !dbg !2362

if.else31:                                        ; preds = %if.then6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2363, !tbaa !458
  %call32 = tail call i32* @__errno_location() #17, !dbg !2365
  %13 = load i32, i32* %call32, align 4, !dbg !2365, !tbaa !424
  %call33 = tail call i8* @strerror(i32 noundef %13) #12, !dbg !2366
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.219, i64 0, i64 0), i8* noundef %call33) #12, !dbg !2367
  br label %if.end35

if.end35:                                         ; preds = %lor.lhs.false, %if.then23, %if.then12, %if.else, %if.else31
  %sock.1 = phi i32 [ -1, %if.then12 ], [ %call7, %if.else ], [ -1, %if.else31 ], [ -1, %if.then23 ], [ %call7, %lor.lhs.false ], !dbg !2368
  call void @llvm.dbg.value(metadata i32 %sock.1, metadata !2298, metadata !DIExpression()), !dbg !2307
  tail call void @freeaddrinfo(%struct.addrinfo* noundef nonnull %call5) #12, !dbg !2369
  br label %if.end36, !dbg !2370

if.end36:                                         ; preds = %if.end35, %if.end
  %sock.2 = phi i32 [ %sock.1, %if.end35 ], [ -1, %if.end ], !dbg !2307
  call void @llvm.dbg.value(metadata i32 %sock.2, metadata !2298, metadata !DIExpression()), !dbg !2307
  %sock37 = bitcast i8* %call to i32*, !dbg !2371
  store i32 %sock.2, i32* %sock37, align 8, !dbg !2372, !tbaa !1198
  %read = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2373
  %14 = bitcast i8* %read to i64 (%struct.conn*, i8*, i64)**, !dbg !2373
  store i64 (%struct.conn*, i8*, i64)* @tcp_read, i64 (%struct.conn*, i8*, i64)** %14, align 8, !dbg !2375, !tbaa !1394
  %write = getelementptr inbounds i8, i8* %call, i64 16, !dbg !2376
  %15 = bitcast i8* %write to i64 (%struct.conn*, i8*, i64)**, !dbg !2376
  store i64 (%struct.conn*, i8*, i64)* @tcp_write, i64 (%struct.conn*, i8*, i64)** %15, align 8, !dbg !2377, !tbaa !1204
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then
  %retval.0 = phi %struct.conn* [ %0, %if.end36 ], [ null, %if.then ], !dbg !2307
  ret %struct.conn* %retval.0, !dbg !2378
}

; Function Attrs: noreturn nounwind
declare !dbg !2379 dso_local void @abort() local_unnamed_addr #6

declare !dbg !2380 dso_local i32 @waitpid(i32 noundef, i32* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare !dbg !2384 dso_local void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.addrinfo* @lookuphost(i16 noundef zeroext %port) unnamed_addr #0 !dbg !2385 {
entry:
  %ai = alloca %struct.addrinfo*, align 8
  %hints = alloca %struct.addrinfo, align 8
  %service = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.209, i64 0, i64 0), metadata !2389, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i16 %port, metadata !2390, metadata !DIExpression()), !dbg !2398
  %0 = bitcast %struct.addrinfo** %ai to i8*, !dbg !2399
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14, !dbg !2399
  call void @llvm.dbg.value(metadata %struct.addrinfo* null, metadata !2391, metadata !DIExpression()), !dbg !2398
  store %struct.addrinfo* null, %struct.addrinfo** %ai, align 8, !dbg !2400, !tbaa !458
  %1 = bitcast %struct.addrinfo* %hints to i8*, !dbg !2401
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #14, !dbg !2401
  call void @llvm.dbg.declare(metadata %struct.addrinfo* %hints, metadata !2392, metadata !DIExpression()), !dbg !2402
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false), !dbg !2402
  %2 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i64 0, i32 2, !dbg !2402
  store i32 1, i32* %2, align 8, !dbg !2402
  %3 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i64 0, i32 3, !dbg !2402
  store i32 6, i32* %3, align 4, !dbg !2402
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %service, i64 0, i64 0, !dbg !2403
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #14, !dbg !2403
  call void @llvm.dbg.declare(metadata [32 x i8]* %service, metadata !2393, metadata !DIExpression()), !dbg !2404
  %conv = zext i16 %port to i32, !dbg !2405
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.220, i64 0, i64 0), i32 noundef %conv) #12, !dbg !2406
  call void @llvm.dbg.value(metadata %struct.addrinfo** %ai, metadata !2391, metadata !DIExpression(DW_OP_deref)), !dbg !2398
  %call2 = call i32 @getaddrinfo(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.209, i64 0, i64 0), i8* noundef nonnull %4, %struct.addrinfo* noundef nonnull %hints, %struct.addrinfo** noundef nonnull %ai) #12, !dbg !2407
  call void @llvm.dbg.value(metadata i32 %call2, metadata !2397, metadata !DIExpression()), !dbg !2398
  switch i32 %call2, label %if.then6 [
    i32 0, label %if.end9
    i32 -11, label %if.else
  ], !dbg !2409

if.then6:                                         ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2410, !tbaa !458
  %call7 = call i8* @gai_strerror(i32 noundef %call2) #12, !dbg !2414
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.221, i64 0, i64 0), i8* noundef %call7) #12, !dbg !2415
  br label %if.end9, !dbg !2416

if.else:                                          ; preds = %entry
  call void @perror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.222, i64 0, i64 0)) #12, !dbg !2417
  br label %if.end9

if.end9:                                          ; preds = %entry, %if.then6, %if.else
  %6 = load %struct.addrinfo*, %struct.addrinfo** %ai, align 8, !dbg !2419, !tbaa !458
  call void @llvm.dbg.value(metadata %struct.addrinfo* %6, metadata !2391, metadata !DIExpression()), !dbg !2398
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #14, !dbg !2420
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #14, !dbg !2420
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14, !dbg !2420
  ret %struct.addrinfo* %6, !dbg !2421
}

; Function Attrs: nounwind
declare !dbg !2422 dso_local i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare !dbg !2426 dso_local i32 @connect(i32 noundef, %struct.sockaddr* noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2431 dso_local i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2435 dso_local void @freeaddrinfo(%struct.addrinfo* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal i64 @tcp_read(%struct.conn* noundef readonly %c, i8* noundef %buf, i64 noundef %count) #0 !dbg !2438 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !2440, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2441, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %count, metadata !2442, metadata !DIExpression()), !dbg !2443
  %cmp.not = icmp eq %struct.conn* %c, null, !dbg !2444
  br i1 %cmp.not, label %if.else, label %if.end, !dbg !2447

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.223, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.tcp_read, i64 0, i64 0)) #13, !dbg !2444
  unreachable, !dbg !2444

if.end:                                           ; preds = %entry
  %sock = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 0, !dbg !2448
  %0 = load i32, i32* %sock, align 8, !dbg !2448, !tbaa !1198
  %call = tail call i64 @read(i32 noundef %0, i8* noundef %buf, i64 noundef %count) #12, !dbg !2449
  ret i64 %call, !dbg !2450
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @tcp_write(%struct.conn* noundef readonly %c, i8* noundef %buf, i64 noundef %count) #0 !dbg !2451 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !2453, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2454, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i64 %count, metadata !2455, metadata !DIExpression()), !dbg !2456
  %cmp.not = icmp eq %struct.conn* %c, null, !dbg !2457
  br i1 %cmp.not, label %if.else, label %if.end, !dbg !2460

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.223, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.tcp_write, i64 0, i64 0)) #13, !dbg !2457
  unreachable, !dbg !2457

if.end:                                           ; preds = %entry
  %sock = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 0, !dbg !2461
  %0 = load i32, i32* %sock, align 8, !dbg !2461, !tbaa !1198
  %call = tail call i64 @write(i32 noundef %0, i8* noundef %buf, i64 noundef %count) #12, !dbg !2462
  ret i64 %call, !dbg !2463
}

declare !dbg !2464 dso_local i32 @getaddrinfo(i8* noundef, i8* noundef, %struct.addrinfo* noundef, %struct.addrinfo** noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2472 dso_local i8* @gai_strerror(i32 noundef) local_unnamed_addr #5

declare !dbg !2475 dso_local void @perror(i8* noundef) local_unnamed_addr #4

declare !dbg !2478 dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2481 dso_local i64 @write(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @close_conn() unnamed_addr #0 !dbg !2484 {
entry:
  %0 = load %struct.conn*, %struct.conn** @con, align 8, !dbg !2485, !tbaa !458
  %cmp = icmp eq %struct.conn* %0, null, !dbg !2487
  br i1 %cmp, label %return, label %if.end, !dbg !2488

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.conn* %0 to i8*, !dbg !2488
  %sock = getelementptr inbounds %struct.conn, %struct.conn* %0, i64 0, i32 0, !dbg !2489
  %2 = load i32, i32* %sock, align 8, !dbg !2489, !tbaa !1198
  %cmp1 = icmp sgt i32 %2, 0, !dbg !2491
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !2492

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @close(i32 noundef %2) #12, !dbg !2493
  %.pre = load i8*, i8** bitcast (%struct.conn** @con to i8**), align 8, !dbg !2494, !tbaa !458
  br label %if.end4, !dbg !2493

if.end4:                                          ; preds = %if.then2, %if.end
  %3 = phi i8* [ %.pre, %if.then2 ], [ %1, %if.end ], !dbg !2494
  tail call void @free(i8* noundef %3) #12, !dbg !2495
  store %struct.conn* null, %struct.conn** @con, align 8, !dbg !2496, !tbaa !458
  br label %return, !dbg !2497

return:                                           ; preds = %entry, %if.end4
  ret void, !dbg !2497
}

declare !dbg !2498 dso_local i32 @crc32c_sw(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @send_ascii_command(i8* noundef %buf) unnamed_addr #0 !dbg !2501 {
entry:
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2503, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i64 0, metadata !2504, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2506, metadata !DIExpression()), !dbg !2510
  %call = tail call i64 @strlen(i8* noundef %buf) #15, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %call, metadata !2507, metadata !DIExpression()), !dbg !2510
  br label %do.body, !dbg !2512

do.body:                                          ; preds = %if.end8, %entry
  %offset.0 = phi i64 [ 0, %entry ], [ %offset.1, %if.end8 ], !dbg !2513
  call void @llvm.dbg.value(metadata i64 %offset.0, metadata !2504, metadata !DIExpression()), !dbg !2510
  %0 = load %struct.conn*, %struct.conn** @con, align 8, !dbg !2514, !tbaa !458
  %write = getelementptr inbounds %struct.conn, %struct.conn* %0, i64 0, i32 2, !dbg !2515
  %1 = load i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, i8*, i64)** %write, align 8, !dbg !2515, !tbaa !1204
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 %offset.0, !dbg !2516
  %sub = sub i64 %call, %offset.0, !dbg !2517
  %call1 = tail call i64 %1(%struct.conn* noundef %0, i8* noundef %add.ptr, i64 noundef %sub) #12, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %call1, metadata !2508, metadata !DIExpression()), !dbg !2518
  %cmp = icmp eq i64 %call1, -1, !dbg !2519
  br i1 %cmp, label %if.then, label %if.else, !dbg !2521

if.then:                                          ; preds = %do.body
  %call2 = tail call i32* @__errno_location() #17, !dbg !2522
  %2 = load i32, i32* %call2, align 4, !dbg !2522, !tbaa !424
  %cmp3.not = icmp eq i32 %2, 4, !dbg !2525
  br i1 %cmp3.not, label %if.end8, label %if.then4, !dbg !2526

if.then4:                                         ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2527, !tbaa !458
  %call6 = tail call i8* @strerror(i32 noundef %2) #12, !dbg !2529
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.236, i64 0, i64 0), i8* noundef %call6) #12, !dbg !2530
  tail call void @abort() #13, !dbg !2531
  unreachable, !dbg !2531

if.else:                                          ; preds = %do.body
  %add = add nsw i64 %call1, %offset.0, !dbg !2532
  call void @llvm.dbg.value(metadata i64 %add, metadata !2504, metadata !DIExpression()), !dbg !2510
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.else
  %offset.1 = phi i64 [ %offset.0, %if.then ], [ %add, %if.else ], !dbg !2510
  call void @llvm.dbg.value(metadata i64 %offset.1, metadata !2504, metadata !DIExpression()), !dbg !2510
  %cmp9 = icmp ult i64 %offset.1, %call, !dbg !2534
  br i1 %cmp9, label %do.body, label %do.end, !dbg !2535, !llvm.loop !2536

do.end:                                           ; preds = %if.end8
  ret void, !dbg !2538
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @read_ascii_response(i8* noundef %buffer, i64 noundef %size) unnamed_addr #0 !dbg !2539 {
entry:
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !2543, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 %size, metadata !2544, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 0, metadata !2545, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 1, metadata !2546, metadata !DIExpression()), !dbg !2549
  br label %do.body, !dbg !2550

do.body:                                          ; preds = %if.end23, %entry
  %need_more.0 = phi i8 [ 1, %entry ], [ %need_more.2, %if.end23 ], !dbg !2551
  %offset.0 = phi i64 [ 0, %entry ], [ %offset.1, %if.end23 ], !dbg !2552
  call void @llvm.dbg.value(metadata i64 %offset.0, metadata !2545, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 %need_more.0, metadata !2546, metadata !DIExpression()), !dbg !2549
  %0 = load %struct.conn*, %struct.conn** @con, align 8, !dbg !2553, !tbaa !458
  %read = getelementptr inbounds %struct.conn, %struct.conn* %0, i64 0, i32 1, !dbg !2554
  %1 = load i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, i8*, i64)** %read, align 8, !dbg !2554, !tbaa !1394
  %add.ptr = getelementptr inbounds i8, i8* %buffer, i64 %offset.0, !dbg !2555
  %call = tail call i64 %1(%struct.conn* noundef %0, i8* noundef %add.ptr, i64 noundef 1) #12, !dbg !2553
  call void @llvm.dbg.value(metadata i64 %call, metadata !2547, metadata !DIExpression()), !dbg !2556
  switch i64 %call, label %if.else9 [
    i64 -1, label %if.then
    i64 1, label %if.end10
  ], !dbg !2557

if.then:                                          ; preds = %do.body
  %call1 = tail call i32* @__errno_location() #17, !dbg !2558
  %2 = load i32, i32* %call1, align 4, !dbg !2558, !tbaa !424
  %cmp2.not = icmp eq i32 %2, 4, !dbg !2562
  br i1 %cmp2.not, label %if.end23, label %if.then3, !dbg !2563

if.then3:                                         ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2564, !tbaa !458
  %call5 = tail call i8* @strerror(i32 noundef %2) #12, !dbg !2566
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.237, i64 0, i64 0), i8* noundef %call5) #12, !dbg !2567
  tail call void @abort() #13, !dbg !2568
  unreachable, !dbg !2568

if.else9:                                         ; preds = %do.body
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.238, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 809, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.read_ascii_response, i64 0, i64 0)) #13, !dbg !2569
  unreachable, !dbg !2569

if.end10:                                         ; preds = %do.body
  %4 = load i8, i8* %add.ptr, align 1, !dbg !2573, !tbaa !416
  %cmp11 = icmp eq i8 %4, 10, !dbg !2575
  %add = add nsw i64 %offset.0, 1, !dbg !2576
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !2577

if.then13:                                        ; preds = %if.end10
  call void @llvm.dbg.value(metadata i8 0, metadata !2546, metadata !DIExpression()), !dbg !2549
  %arrayidx14 = getelementptr inbounds i8, i8* %buffer, i64 %add, !dbg !2578
  store i8 0, i8* %arrayidx14, align 1, !dbg !2580, !tbaa !416
  br label %if.end15, !dbg !2581

if.end15:                                         ; preds = %if.end10, %if.then13
  %need_more.1 = phi i8 [ 0, %if.then13 ], [ %need_more.0, %if.end10 ], !dbg !2549
  call void @llvm.dbg.value(metadata i8 %need_more.1, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 %add, metadata !2545, metadata !DIExpression()), !dbg !2549
  %add17 = add nsw i64 %offset.0, 2, !dbg !2582
  %cmp18 = icmp ult i64 %add17, %size, !dbg !2582
  br i1 %cmp18, label %if.end23, label %if.else21, !dbg !2585

if.else21:                                        ; preds = %if.end15
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.239, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 815, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.read_ascii_response, i64 0, i64 0)) #13, !dbg !2582
  unreachable, !dbg !2582

if.end23:                                         ; preds = %if.end15, %if.then
  %need_more.2 = phi i8 [ %need_more.0, %if.then ], [ %need_more.1, %if.end15 ], !dbg !2549
  %offset.1 = phi i64 [ %offset.0, %if.then ], [ %add, %if.end15 ], !dbg !2549
  call void @llvm.dbg.value(metadata i64 %offset.1, metadata !2545, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 %need_more.2, metadata !2546, metadata !DIExpression()), !dbg !2549
  %5 = and i8 %need_more.2, 1, !dbg !2586
  %tobool.not = icmp eq i8 %5, 0, !dbg !2586
  br i1 %tobool.not, label %do.end, label %do.body, !dbg !2587, !llvm.loop !2588

do.end:                                           ; preds = %if.end23
  ret void, !dbg !2590
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @raw_command(i8* noundef %buf, i64 noundef %bufsz, i8 noundef zeroext %cmd, i8* noundef %key, i64 noundef %keylen, i8* noundef %dta, i64 noundef %dtalen) unnamed_addr #0 !dbg !2591 {
entry:
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2595, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i64 %bufsz, metadata !2596, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !2597, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8* %key, metadata !2598, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i64 %keylen, metadata !2599, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8* %dta, metadata !2600, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i64 %dtalen, metadata !2601, metadata !DIExpression()), !dbg !2602
  %call = tail call fastcc i64 @ext_command(i8* noundef %buf, i64 noundef %bufsz, i8 noundef zeroext %cmd, i8* noundef null, i64 noundef 0, i8* noundef %key, i64 noundef %keylen, i8* noundef %dta, i64 noundef %dtalen) #16, !dbg !2603
  ret i64 %call, !dbg !2604
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @safe_send(i8* noundef %buf, i64 noundef %len, i1 noundef zeroext %hickup) unnamed_addr #0 !dbg !2605 {
entry:
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2609, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i64 %len, metadata !2610, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i1 %hickup, metadata !2611, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2617
  call void @llvm.dbg.value(metadata i64 0, metadata !2612, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2613, metadata !DIExpression()), !dbg !2617
  br label %do.body, !dbg !2618

do.body:                                          ; preds = %if.end20, %entry
  %offset.0 = phi i64 [ 0, %entry ], [ %offset.1, %if.end20 ], !dbg !2619
  call void @llvm.dbg.value(metadata i64 %offset.0, metadata !2612, metadata !DIExpression()), !dbg !2617
  %sub = sub i64 %len, %offset.0, !dbg !2620
  call void @llvm.dbg.value(metadata i64 %sub, metadata !2614, metadata !DIExpression()), !dbg !2621
  %cmp = icmp ugt i64 %sub, 1024
  %or.cond = select i1 %hickup, i1 %cmp, i1 false, !dbg !2622
  br i1 %or.cond, label %if.then1, label %if.end2, !dbg !2622

if.then1:                                         ; preds = %do.body
  %call = tail call i32 @rand() #12, !dbg !2623
  %rem = srem i32 %call, 1023, !dbg !2628
  %add = add nsw i32 %rem, 1, !dbg !2629
  %conv = sext i32 %add to i64, !dbg !2630
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2614, metadata !DIExpression()), !dbg !2621
  br label %if.end2, !dbg !2631

if.end2:                                          ; preds = %if.then1, %do.body
  %num_bytes.0 = phi i64 [ %conv, %if.then1 ], [ %sub, %do.body ], !dbg !2621
  call void @llvm.dbg.value(metadata i64 %num_bytes.0, metadata !2614, metadata !DIExpression()), !dbg !2621
  %0 = load %struct.conn*, %struct.conn** @con, align 8, !dbg !2632, !tbaa !458
  %write = getelementptr inbounds %struct.conn, %struct.conn* %0, i64 0, i32 2, !dbg !2633
  %1 = load i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, i8*, i64)** %write, align 8, !dbg !2633, !tbaa !1204
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 %offset.0, !dbg !2634
  %call3 = tail call i64 %1(%struct.conn* noundef %0, i8* noundef %add.ptr, i64 noundef %num_bytes.0) #12, !dbg !2632
  call void @llvm.dbg.value(metadata i64 %call3, metadata !2616, metadata !DIExpression()), !dbg !2621
  %cmp4 = icmp eq i64 %call3, -1, !dbg !2635
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !2637

if.then6:                                         ; preds = %if.end2
  %call7 = tail call i32* @__errno_location() #17, !dbg !2638
  %2 = load i32, i32* %call7, align 4, !dbg !2638, !tbaa !424
  %cmp8.not = icmp eq i32 %2, 4, !dbg !2641
  br i1 %cmp8.not, label %if.end20, label %if.then10, !dbg !2642

if.then10:                                        ; preds = %if.then6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2643, !tbaa !458
  %call12 = tail call i8* @strerror(i32 noundef %2) #12, !dbg !2645
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.236, i64 0, i64 0), i8* noundef %call12) #12, !dbg !2646
  tail call void @abort() #13, !dbg !2647
  unreachable, !dbg !2647

if.else:                                          ; preds = %if.end2
  br i1 %hickup, label %if.then16, label %if.end18, !dbg !2648

if.then16:                                        ; preds = %if.else
  %call17 = tail call i32 @usleep(i32 noundef 100) #12, !dbg !2650
  br label %if.end18, !dbg !2653

if.end18:                                         ; preds = %if.then16, %if.else
  %add19 = add nsw i64 %call3, %offset.0, !dbg !2654
  call void @llvm.dbg.value(metadata i64 %add19, metadata !2612, metadata !DIExpression()), !dbg !2617
  br label %if.end20

if.end20:                                         ; preds = %if.then6, %if.end18
  %offset.1 = phi i64 [ %offset.0, %if.then6 ], [ %add19, %if.end18 ], !dbg !2617
  call void @llvm.dbg.value(metadata i64 %offset.1, metadata !2612, metadata !DIExpression()), !dbg !2617
  %cmp21 = icmp ult i64 %offset.1, %len, !dbg !2655
  br i1 %cmp21, label %do.body, label %do.end, !dbg !2656, !llvm.loop !2657

do.end:                                           ; preds = %if.end20
  ret void, !dbg !2659
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @safe_recv_packet(i8* noundef %buf) unnamed_addr #0 !dbg !2660 {
entry:
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2664, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i64 undef, metadata !2665, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2666, metadata !DIExpression()), !dbg !2670
  %call = tail call fastcc zeroext i1 @safe_recv(i8* noundef %buf, i64 noundef 24) #16, !dbg !2671
  br i1 %call, label %if.end2, label %cleanup33, !dbg !2673

if.end2:                                          ; preds = %entry
  %keylen = getelementptr inbounds i8, i8* %buf, i64 2, !dbg !2674
  %0 = bitcast i8* %keylen to i16*, !dbg !2674
  %1 = load i16, i16* %0, align 2, !dbg !2674, !tbaa !416
  %call4 = tail call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %1) #16, !dbg !2674
  store i16 %call4, i16* %0, align 2, !dbg !2675, !tbaa !416
  %status = getelementptr inbounds i8, i8* %buf, i64 6, !dbg !2676
  %2 = bitcast i8* %status to i16*, !dbg !2676
  %3 = load i16, i16* %2, align 2, !dbg !2676, !tbaa !416
  %call12 = tail call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %3) #16, !dbg !2676
  store i16 %call12, i16* %2, align 2, !dbg !2677, !tbaa !416
  %bodylen = getelementptr inbounds i8, i8* %buf, i64 8, !dbg !2678
  %4 = bitcast i8* %bodylen to i32*, !dbg !2678
  %5 = load i32, i32* %4, align 8, !dbg !2678, !tbaa !416
  %call20 = tail call fastcc i32 @__bswap_32(i32 noundef %5) #16, !dbg !2678
  store i32 %call20, i32* %4, align 8, !dbg !2679, !tbaa !416
  call void @llvm.dbg.value(metadata i64 24, metadata !2668, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2669, metadata !DIExpression()), !dbg !2670
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 24, !dbg !2680
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2669, metadata !DIExpression()), !dbg !2670
  %conv = zext i32 %call20 to i64, !dbg !2681
  %call29 = tail call fastcc zeroext i1 @safe_recv(i8* noundef nonnull %add.ptr, i64 noundef %conv) #16, !dbg !2683
  br label %cleanup33

cleanup33:                                        ; preds = %entry, %if.end2
  %retval.1 = phi i1 [ %call29, %if.end2 ], [ false, %entry ], !dbg !2670
  ret i1 %retval.1, !dbg !2684
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef readonly %response, i8 noundef zeroext %cmd, i16 noundef zeroext %status) unnamed_addr #0 !dbg !2685 {
entry:
  call void @llvm.dbg.value(metadata %union.protocol_binary_response_no_extras* %response, metadata !2689, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !2690, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i16 %status, metadata !2691, metadata !DIExpression()), !dbg !2692
  %magic = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2693
  %0 = load i8, i8* %magic, align 8, !dbg !2693, !tbaa !416
  %cmp = icmp eq i8 %0, -127, !dbg !2693
  br i1 %cmp, label %if.end, label %if.else, !dbg !2696

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.249, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1223, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2693
  unreachable, !dbg !2693

if.end:                                           ; preds = %entry
  %opcode = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2697
  %1 = load i8, i8* %opcode, align 1, !dbg !2697, !tbaa !416
  %cmp8 = icmp eq i8 %1, %cmd, !dbg !2697
  br i1 %cmp8, label %if.end12, label %if.else11, !dbg !2700

if.else11:                                        ; preds = %if.end
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.250, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1224, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2697
  unreachable, !dbg !2697

if.end12:                                         ; preds = %if.end
  %datatype = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !2701
  %2 = load i8, i8* %datatype, align 1, !dbg !2701, !tbaa !416
  %cmp17 = icmp eq i8 %2, 0, !dbg !2701
  br i1 %cmp17, label %if.end21, label %if.else20, !dbg !2704

if.else20:                                        ; preds = %if.end12
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.251, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1225, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2701
  unreachable, !dbg !2701

if.end21:                                         ; preds = %if.end12
  %status25 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 5, !dbg !2705
  %3 = load i16, i16* %status25, align 2, !dbg !2705, !tbaa !416
  %cmp28 = icmp eq i16 %3, %status, !dbg !2705
  br i1 %cmp28, label %if.end32, label %if.else31, !dbg !2708

if.else31:                                        ; preds = %if.end21
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.252, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1226, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2705
  unreachable, !dbg !2705

if.end32:                                         ; preds = %if.end21
  %opaque = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 7, !dbg !2709
  %4 = load i32, i32* %opaque, align 4, !dbg !2709, !tbaa !416
  %cmp36 = icmp eq i32 %4, -559038737, !dbg !2709
  br i1 %cmp36, label %if.end40, label %if.else39, !dbg !2712

if.else39:                                        ; preds = %if.end32
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.253, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1227, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2709
  unreachable, !dbg !2709

if.end40:                                         ; preds = %if.end32
  %cmp42 = icmp eq i16 %status, 0, !dbg !2713
  br i1 %cmp42, label %if.then44, label %if.else281, !dbg !2715

if.then44:                                        ; preds = %if.end40
  %cmd.off = add i8 %cmd, -17, !dbg !2716
  %switch = icmp ult i8 %cmd.off, 10, !dbg !2716
  br i1 %switch, label %sw.bb, label %sw.epilog, !dbg !2716

sw.bb:                                            ; preds = %if.then44
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.254, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1241, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2718
  unreachable, !dbg !2718

sw.epilog:                                        ; preds = %if.then44
  switch i8 %cmd, label %if.end319 [
    i8 2, label %sw.bb47
    i8 3, label %sw.bb47
    i8 1, label %sw.bb47
    i8 14, label %sw.bb47
    i8 15, label %sw.bb47
    i8 8, label %sw.bb82
    i8 10, label %sw.bb82
    i8 7, label %sw.bb82
    i8 4, label %sw.bb82
    i8 6, label %sw.bb121
    i8 5, label %sw.bb121
    i8 16, label %sw.bb160
    i8 11, label %sw.bb180
    i8 0, label %sw.bb219
    i8 9, label %sw.bb219
    i8 29, label %sw.bb219
    i8 30, label %sw.bb219
    i8 12, label %sw.bb249
    i8 13, label %sw.bb249
    i8 35, label %sw.bb249
    i8 36, label %sw.bb249
  ], !dbg !2722

sw.bb47:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %keylen = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2723
  %5 = load i16, i16* %keylen, align 2, !dbg !2723, !tbaa !416
  %cmp52 = icmp eq i16 %5, 0, !dbg !2723
  br i1 %cmp52, label %if.end56, label %if.else55, !dbg !2727

if.else55:                                        ; preds = %sw.bb47
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.255, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1252, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2723
  unreachable, !dbg !2723

if.end56:                                         ; preds = %sw.bb47
  %extlen = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2728
  %6 = load i8, i8* %extlen, align 4, !dbg !2728, !tbaa !416
  %cmp61 = icmp eq i8 %6, 0, !dbg !2728
  br i1 %cmp61, label %if.end65, label %if.else64, !dbg !2731

if.else64:                                        ; preds = %if.end56
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.256, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1253, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2728
  unreachable, !dbg !2728

if.end65:                                         ; preds = %if.end56
  %bodylen = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2732
  %7 = load i32, i32* %bodylen, align 8, !dbg !2732, !tbaa !416
  %cmp69 = icmp eq i32 %7, 0, !dbg !2732
  br i1 %cmp69, label %if.end73, label %if.else72, !dbg !2735

if.else72:                                        ; preds = %if.end65
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.257, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1254, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2732
  unreachable, !dbg !2732

if.end73:                                         ; preds = %if.end65
  %cas = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 8, !dbg !2736
  %8 = load i64, i64* %cas, align 8, !dbg !2736, !tbaa !416
  %cmp77.not = icmp eq i64 %8, 0, !dbg !2736
  br i1 %cmp77.not, label %if.else80, label %if.end319, !dbg !2739

if.else80:                                        ; preds = %if.end73
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.258, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1255, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2736
  unreachable, !dbg !2736

sw.bb82:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %keylen86 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2740
  %9 = load i16, i16* %keylen86, align 2, !dbg !2740, !tbaa !416
  %cmp88 = icmp eq i16 %9, 0, !dbg !2740
  br i1 %cmp88, label %if.end92, label %if.else91, !dbg !2743

if.else91:                                        ; preds = %sw.bb82
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.255, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1261, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2740
  unreachable, !dbg !2740

if.end92:                                         ; preds = %sw.bb82
  %extlen96 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2744
  %10 = load i8, i8* %extlen96, align 4, !dbg !2744, !tbaa !416
  %cmp98 = icmp eq i8 %10, 0, !dbg !2744
  br i1 %cmp98, label %if.end102, label %if.else101, !dbg !2747

if.else101:                                       ; preds = %if.end92
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.256, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1262, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2744
  unreachable, !dbg !2744

if.end102:                                        ; preds = %if.end92
  %bodylen106 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2748
  %11 = load i32, i32* %bodylen106, align 8, !dbg !2748, !tbaa !416
  %cmp107 = icmp eq i32 %11, 0, !dbg !2748
  br i1 %cmp107, label %if.end111, label %if.else110, !dbg !2751

if.else110:                                       ; preds = %if.end102
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.257, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1263, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2748
  unreachable, !dbg !2748

if.end111:                                        ; preds = %if.end102
  %cas115 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 8, !dbg !2752
  %12 = load i64, i64* %cas115, align 8, !dbg !2752, !tbaa !416
  %cmp116 = icmp eq i64 %12, 0, !dbg !2752
  br i1 %cmp116, label %if.end319, label %if.else119, !dbg !2755

if.else119:                                       ; preds = %if.end111
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.259, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1264, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2752
  unreachable, !dbg !2752

sw.bb121:                                         ; preds = %sw.epilog, %sw.epilog
  %keylen125 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2756
  %13 = load i16, i16* %keylen125, align 2, !dbg !2756, !tbaa !416
  %cmp127 = icmp eq i16 %13, 0, !dbg !2756
  br i1 %cmp127, label %if.end131, label %if.else130, !dbg !2759

if.else130:                                       ; preds = %sw.bb121
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.255, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1269, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2756
  unreachable, !dbg !2756

if.end131:                                        ; preds = %sw.bb121
  %extlen135 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2760
  %14 = load i8, i8* %extlen135, align 4, !dbg !2760, !tbaa !416
  %cmp137 = icmp eq i8 %14, 0, !dbg !2760
  br i1 %cmp137, label %if.end141, label %if.else140, !dbg !2763

if.else140:                                       ; preds = %if.end131
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.256, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1270, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2760
  unreachable, !dbg !2760

if.end141:                                        ; preds = %if.end131
  %bodylen145 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2764
  %15 = load i32, i32* %bodylen145, align 8, !dbg !2764, !tbaa !416
  %cmp146 = icmp eq i32 %15, 8, !dbg !2764
  br i1 %cmp146, label %if.end150, label %if.else149, !dbg !2767

if.else149:                                       ; preds = %if.end141
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.260, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1271, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2764
  unreachable, !dbg !2764

if.end150:                                        ; preds = %if.end141
  %cas154 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 8, !dbg !2768
  %16 = load i64, i64* %cas154, align 8, !dbg !2768, !tbaa !416
  %cmp155.not = icmp eq i64 %16, 0, !dbg !2768
  br i1 %cmp155.not, label %if.else158, label %if.end319, !dbg !2771

if.else158:                                       ; preds = %if.end150
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.258, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1272, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2768
  unreachable, !dbg !2768

sw.bb160:                                         ; preds = %sw.epilog
  %extlen164 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2772
  %17 = load i8, i8* %extlen164, align 4, !dbg !2772, !tbaa !416
  %cmp166 = icmp eq i8 %17, 0, !dbg !2772
  br i1 %cmp166, label %if.end170, label %if.else169, !dbg !2775

if.else169:                                       ; preds = %sw.bb160
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.256, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1276, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2772
  unreachable, !dbg !2772

if.end170:                                        ; preds = %sw.bb160
  %cas174 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 8, !dbg !2776
  %18 = load i64, i64* %cas174, align 8, !dbg !2776, !tbaa !416
  %cmp175 = icmp eq i64 %18, 0, !dbg !2776
  br i1 %cmp175, label %if.end319, label %if.else178, !dbg !2779

if.else178:                                       ; preds = %if.end170
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.259, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1278, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2776
  unreachable, !dbg !2776

sw.bb180:                                         ; preds = %sw.epilog
  %keylen184 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2780
  %19 = load i16, i16* %keylen184, align 2, !dbg !2780, !tbaa !416
  %cmp186 = icmp eq i16 %19, 0, !dbg !2780
  br i1 %cmp186, label %if.end190, label %if.else189, !dbg !2783

if.else189:                                       ; preds = %sw.bb180
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.255, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1282, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2780
  unreachable, !dbg !2780

if.end190:                                        ; preds = %sw.bb180
  %extlen194 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2784
  %20 = load i8, i8* %extlen194, align 4, !dbg !2784, !tbaa !416
  %cmp196 = icmp eq i8 %20, 0, !dbg !2784
  br i1 %cmp196, label %if.end200, label %if.else199, !dbg !2787

if.else199:                                       ; preds = %if.end190
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.256, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1283, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2784
  unreachable, !dbg !2784

if.end200:                                        ; preds = %if.end190
  %bodylen204 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2788
  %21 = load i32, i32* %bodylen204, align 8, !dbg !2788, !tbaa !416
  %cmp205.not = icmp eq i32 %21, 0, !dbg !2788
  br i1 %cmp205.not, label %if.else208, label %if.end209, !dbg !2791

if.else208:                                       ; preds = %if.end200
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.261, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1284, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2788
  unreachable, !dbg !2788

if.end209:                                        ; preds = %if.end200
  %cas213 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 8, !dbg !2792
  %22 = load i64, i64* %cas213, align 8, !dbg !2792, !tbaa !416
  %cmp214 = icmp eq i64 %22, 0, !dbg !2792
  br i1 %cmp214, label %if.end319, label %if.else217, !dbg !2795

if.else217:                                       ; preds = %if.end209
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.259, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1285, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2792
  unreachable, !dbg !2792

sw.bb219:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %keylen223 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2796
  %23 = load i16, i16* %keylen223, align 2, !dbg !2796, !tbaa !416
  %cmp225 = icmp eq i16 %23, 0, !dbg !2796
  br i1 %cmp225, label %if.end229, label %if.else228, !dbg !2799

if.else228:                                       ; preds = %sw.bb219
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.255, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1292, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2796
  unreachable, !dbg !2796

if.end229:                                        ; preds = %sw.bb219
  %extlen233 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2800
  %24 = load i8, i8* %extlen233, align 4, !dbg !2800, !tbaa !416
  %cmp235 = icmp eq i8 %24, 4, !dbg !2800
  br i1 %cmp235, label %if.end239, label %if.else238, !dbg !2803

if.else238:                                       ; preds = %if.end229
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.262, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1293, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2800
  unreachable, !dbg !2800

if.end239:                                        ; preds = %if.end229
  %cas243 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 8, !dbg !2804
  %25 = load i64, i64* %cas243, align 8, !dbg !2804, !tbaa !416
  %cmp244.not = icmp eq i64 %25, 0, !dbg !2804
  br i1 %cmp244.not, label %if.else247, label %if.end319, !dbg !2807

if.else247:                                       ; preds = %if.end239
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.258, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1294, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2804
  unreachable, !dbg !2804

sw.bb249:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %keylen253 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2808
  %26 = load i16, i16* %keylen253, align 2, !dbg !2808, !tbaa !416
  %cmp255.not = icmp eq i16 %26, 0, !dbg !2808
  br i1 %cmp255.not, label %if.else258, label %if.end259, !dbg !2811

if.else258:                                       ; preds = %sw.bb249
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1301, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2808
  unreachable, !dbg !2808

if.end259:                                        ; preds = %sw.bb249
  %extlen263 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2812
  %27 = load i8, i8* %extlen263, align 4, !dbg !2812, !tbaa !416
  %cmp265 = icmp eq i8 %27, 4, !dbg !2812
  br i1 %cmp265, label %if.end269, label %if.else268, !dbg !2815

if.else268:                                       ; preds = %if.end259
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.262, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1302, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2812
  unreachable, !dbg !2812

if.end269:                                        ; preds = %if.end259
  %cas273 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 8, !dbg !2816
  %28 = load i64, i64* %cas273, align 8, !dbg !2816, !tbaa !416
  %cmp274.not = icmp eq i64 %28, 0, !dbg !2816
  br i1 %cmp274.not, label %if.else277, label %if.end319, !dbg !2819

if.else277:                                       ; preds = %if.end269
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.258, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1303, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2816
  unreachable, !dbg !2816

if.else281:                                       ; preds = %if.end40
  %cas285 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 8, !dbg !2820
  %29 = load i64, i64* %cas285, align 8, !dbg !2820, !tbaa !416
  %cmp286 = icmp eq i64 %29, 0, !dbg !2820
  br i1 %cmp286, label %if.end290, label %if.else289, !dbg !2824

if.else289:                                       ; preds = %if.else281
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.259, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1311, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2820
  unreachable, !dbg !2820

if.end290:                                        ; preds = %if.else281
  %extlen294 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2825
  %30 = load i8, i8* %extlen294, align 4, !dbg !2825, !tbaa !416
  %cmp296 = icmp eq i8 %30, 0, !dbg !2825
  br i1 %cmp296, label %if.end300, label %if.else299, !dbg !2828

if.else299:                                       ; preds = %if.end290
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.256, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1312, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2825
  unreachable, !dbg !2825

if.end300:                                        ; preds = %if.end290
  switch i8 %cmd, label %if.then307 [
    i8 35, label %if.end319
    i8 12, label %if.end319
  ], !dbg !2829

if.then307:                                       ; preds = %if.end300
  %keylen311 = getelementptr inbounds %union.protocol_binary_response_no_extras, %union.protocol_binary_response_no_extras* %response, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2831
  %31 = load i16, i16* %keylen311, align 2, !dbg !2831, !tbaa !416
  %cmp313 = icmp eq i16 %31, 0, !dbg !2831
  br i1 %cmp313, label %if.end319, label %if.else316, !dbg !2835

if.else316:                                       ; preds = %if.then307
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.255, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1315, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.validate_response_header, i64 0, i64 0)) #13, !dbg !2831
  unreachable, !dbg !2831

if.end319:                                        ; preds = %if.end300, %if.end300, %if.then307, %if.end73, %if.end111, %if.end150, %if.end170, %if.end209, %if.end239, %if.end269, %sw.epilog
  ret void, !dbg !2836
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @ext_command(i8* noundef %buf, i64 noundef %bufsz, i8 noundef zeroext %cmd, i8* noundef %ext, i64 noundef %extlen, i8* noundef %key, i64 noundef %keylen, i8* noundef %dta, i64 noundef %dtalen) unnamed_addr #0 !dbg !2837 {
entry:
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2841, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %bufsz, metadata !2842, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !2843, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %ext, metadata !2844, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %extlen, metadata !2845, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %key, metadata !2846, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %keylen, metadata !2847, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %dta, metadata !2848, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %dtalen, metadata !2849, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2850, metadata !DIExpression()), !dbg !2855
  %add = add i64 %extlen, 24, !dbg !2856
  %add1 = add i64 %add, %keylen, !dbg !2856
  %add2 = add i64 %add1, %dtalen, !dbg !2856
  %cmp = icmp ult i64 %add2, %bufsz, !dbg !2856
  br i1 %cmp, label %if.end, label %if.else, !dbg !2859

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.246, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1106, i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @__PRETTY_FUNCTION__.ext_command, i64 0, i64 0)) #13, !dbg !2856
  unreachable, !dbg !2856

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2850, metadata !DIExpression()), !dbg !2855
  %call = tail call i8* @memset(i8* noundef %buf, i32 noundef 0, i64 noundef 24) #12, !dbg !2860
  store i8 -128, i8* %buf, align 8, !dbg !2861, !tbaa !416
  %0 = getelementptr inbounds i8, i8* %buf, i64 1, !dbg !2862
  store i8 %cmd, i8* %0, align 1, !dbg !2863, !tbaa !416
  %conv = trunc i64 %extlen to i8, !dbg !2864
  %1 = getelementptr inbounds i8, i8* %buf, i64 4, !dbg !2865
  store i8 %conv, i8* %1, align 4, !dbg !2866, !tbaa !416
  %conv11 = trunc i64 %keylen to i16, !dbg !2867
  %call12 = tail call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %conv11) #16, !dbg !2867
  %keylen16 = getelementptr inbounds i8, i8* %buf, i64 2, !dbg !2868
  %2 = bitcast i8* %keylen16 to i16*, !dbg !2868
  store i16 %call12, i16* %2, align 2, !dbg !2869, !tbaa !416
  %add17 = add i64 %keylen, %extlen, !dbg !2870
  %add18 = add i64 %add17, %dtalen, !dbg !2870
  %conv19 = trunc i64 %add18 to i32, !dbg !2870
  %call20 = tail call fastcc i32 @__bswap_32(i32 noundef %conv19) #16, !dbg !2870
  %bodylen = getelementptr inbounds i8, i8* %buf, i64 8, !dbg !2871
  %3 = bitcast i8* %bodylen to i32*, !dbg !2871
  store i32 %call20, i32* %3, align 8, !dbg !2872, !tbaa !416
  %opaque = getelementptr inbounds i8, i8* %buf, i64 12, !dbg !2873
  %4 = bitcast i8* %opaque to i32*, !dbg !2873
  store i32 -559038737, i32* %4, align 4, !dbg !2874, !tbaa !416
  call void @llvm.dbg.value(metadata i64 24, metadata !2852, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %add, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %add1, metadata !2854, metadata !DIExpression()), !dbg !2855
  %cmp29.not = icmp eq i8* %ext, null, !dbg !2875
  br i1 %cmp29.not, label %if.end33, label %if.then31, !dbg !2877

if.then31:                                        ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 24, !dbg !2878
  %call32 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef nonnull %ext, i64 noundef %extlen) #12, !dbg !2880
  br label %if.end33, !dbg !2881

if.end33:                                         ; preds = %if.then31, %if.end
  %cmp34.not = icmp eq i8* %key, null, !dbg !2882
  br i1 %cmp34.not, label %if.end39, label %if.then36, !dbg !2884

if.then36:                                        ; preds = %if.end33
  %add.ptr37 = getelementptr inbounds i8, i8* %buf, i64 %add, !dbg !2885
  %call38 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr37, i8* noundef nonnull %key, i64 noundef %keylen) #12, !dbg !2887
  br label %if.end39, !dbg !2888

if.end39:                                         ; preds = %if.then36, %if.end33
  %cmp40.not = icmp eq i8* %dta, null, !dbg !2889
  br i1 %cmp40.not, label %if.end45, label %if.then42, !dbg !2891

if.then42:                                        ; preds = %if.end39
  %add.ptr43 = getelementptr inbounds i8, i8* %buf, i64 %add1, !dbg !2892
  %call44 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr43, i8* noundef nonnull %dta, i64 noundef %dtalen) #12, !dbg !2894
  br label %if.end45, !dbg !2895

if.end45:                                         ; preds = %if.then42, %if.end39
  ret i64 %add2, !dbg !2896
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %__bsx) unnamed_addr #10 !dbg !2897 {
entry:
  call void @llvm.dbg.value(metadata i16 %__bsx, metadata !2902, metadata !DIExpression()), !dbg !2903
  %rev = tail call i16 @llvm.bswap.i16(i16 %__bsx)
  ret i16 %rev, !dbg !2904
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @__bswap_32(i32 noundef %__bsx) unnamed_addr #10 !dbg !2905 {
entry:
  call void @llvm.dbg.value(metadata i32 %__bsx, metadata !2909, metadata !DIExpression()), !dbg !2910
  %or7 = tail call i32 @llvm.bswap.i32(i32 %__bsx), !dbg !2911
  ret i32 %or7, !dbg !2912
}

; Function Attrs: nounwind
declare !dbg !2913 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2918 dso_local i32 @rand() local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @safe_recv(i8* noundef %buf, i64 noundef %len) unnamed_addr #0 !dbg !2921 {
entry:
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2923, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i64 %len, metadata !2924, metadata !DIExpression()), !dbg !2928
  %cmp = icmp eq i64 %len, 0, !dbg !2929
  br i1 %cmp, label %return, label %do.body, !dbg !2931

do.body:                                          ; preds = %entry, %cleanup
  %offset.0 = phi i64 [ %offset.2, %cleanup ], [ 0, %entry ], !dbg !2932
  call void @llvm.dbg.value(metadata i64 %offset.0, metadata !2925, metadata !DIExpression()), !dbg !2928
  %0 = load %struct.conn*, %struct.conn** @con, align 8, !dbg !2933, !tbaa !458
  %read = getelementptr inbounds %struct.conn, %struct.conn* %0, i64 0, i32 1, !dbg !2934
  %1 = load i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, i8*, i64)** %read, align 8, !dbg !2934, !tbaa !1394
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 %offset.0, !dbg !2935
  %sub = sub i64 %len, %offset.0, !dbg !2936
  %call = tail call i64 %1(%struct.conn* noundef %0, i8* noundef %add.ptr, i64 noundef %sub) #12, !dbg !2933
  call void @llvm.dbg.value(metadata i64 %call, metadata !2926, metadata !DIExpression()), !dbg !2937
  switch i64 %call, label %if.end16 [
    i64 -1, label %if.then2
    i64 0, label %land.lhs.true
  ], !dbg !2938

if.then2:                                         ; preds = %do.body
  %call3 = tail call i32* @__errno_location() #17, !dbg !2939
  %2 = load i32, i32* %call3, align 4, !dbg !2939, !tbaa !424
  %cmp4.not = icmp eq i32 %2, 4, !dbg !2943
  br i1 %cmp4.not, label %cleanup, label %if.then5, !dbg !2944

if.then5:                                         ; preds = %if.then2
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2945, !tbaa !458
  %call7 = tail call i8* @strerror(i32 noundef %2) #12, !dbg !2947
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.237, i64 0, i64 0), i8* noundef %call7) #12, !dbg !2948
  tail call void @abort() #13, !dbg !2949
  unreachable, !dbg !2949

land.lhs.true:                                    ; preds = %do.body
  %.b30 = load i1, i1* @allow_closed_read, align 1, !dbg !2950
  br i1 %.b30, label %return, label %if.else15, !dbg !2953

if.else15:                                        ; preds = %land.lhs.true
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.248, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1018, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.safe_recv, i64 0, i64 0)) #13, !dbg !2954
  unreachable, !dbg !2954

if.end16:                                         ; preds = %do.body
  %add = add nsw i64 %call, %offset.0, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %add, metadata !2925, metadata !DIExpression()), !dbg !2928
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then2
  %offset.2 = phi i64 [ %offset.0, %if.then2 ], [ %add, %if.end16 ], !dbg !2932
  call void @llvm.dbg.value(metadata i64 %offset.2, metadata !2925, metadata !DIExpression()), !dbg !2928
  %cmp18 = icmp ult i64 %offset.2, %len
  br i1 %cmp18, label %do.body, label %return, !llvm.loop !2958

return:                                           ; preds = %cleanup, %land.lhs.true, %entry
  %retval.3 = phi i1 [ true, %entry ], [ false, %land.lhs.true ], [ true, %cleanup ], !dbg !2928
  ret i1 %retval.3, !dbg !2961
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @test_binary_quit_impl(i8 noundef zeroext %cmd) unnamed_addr #0 !dbg !2962 {
entry:
  %buffer = alloca %union.anon.15, align 8
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !2966, metadata !DIExpression()), !dbg !2974
  %0 = getelementptr inbounds %union.anon.15, %union.anon.15* %buffer, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2975
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !2975
  call void @llvm.dbg.declare(metadata %union.anon.15* %buffer, metadata !2967, metadata !DIExpression()), !dbg !2976
  %call = call fastcc i64 @raw_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext %cmd, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #16, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %call, metadata !2973, metadata !DIExpression()), !dbg !2974
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call, i1 noundef zeroext false) #16, !dbg !2978
  %cmp = icmp eq i8 %cmd, 7, !dbg !2979
  br i1 %cmp, label %if.then, label %if.end, !dbg !2981

if.then:                                          ; preds = %entry
  %1 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %0) #16, !dbg !2982
  %response = bitcast %union.anon.15* %buffer to %union.protocol_binary_response_no_extras*, !dbg !2984
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 7, i16 noundef zeroext 0) #16, !dbg !2985
  br label %if.end, !dbg !2986

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.conn*, %struct.conn** @con, align 8, !dbg !2987, !tbaa !458
  %read = getelementptr inbounds %struct.conn, %struct.conn* %2, i64 0, i32 1, !dbg !2987
  %3 = load i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, i8*, i64)** %read, align 8, !dbg !2987, !tbaa !1394
  %call9 = call i64 %3(%struct.conn* noundef %2, i8* noundef nonnull %0, i64 noundef 1024) #12, !dbg !2987
  %cmp10 = icmp eq i64 %call9, 0, !dbg !2987
  br i1 %cmp10, label %if.end13, label %if.else, !dbg !2990

if.else:                                          ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.264, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1356, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.test_binary_quit_impl, i64 0, i64 0)) #13, !dbg !2987
  unreachable, !dbg !2987

if.end13:                                         ; preds = %if.end
  call fastcc void @close_conn() #16, !dbg !2991
  %4 = load i16, i16* @port, align 2, !dbg !2992, !tbaa !1188
  %call14 = call fastcc %struct.conn* @connect_server(i16 noundef zeroext %4, i1 noundef zeroext false) #16, !dbg !2993
  store %struct.conn* %call14, %struct.conn** @con, align 8, !dbg !2994, !tbaa !458
  %tobool15.not = icmp eq %struct.conn* %call14, null, !dbg !2995
  br i1 %tobool15.not, label %if.else17, label %if.end18, !dbg !2998

if.else17:                                        ; preds = %if.end13
  call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.214, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.test_binary_quit_impl, i64 0, i64 0)) #13, !dbg !2995
  unreachable, !dbg !2995

if.end18:                                         ; preds = %if.end13
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !2999
  ret void, !dbg !3000
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @test_binary_set_impl(i8* noundef %key, i8 noundef zeroext %cmd) unnamed_addr #0 !dbg !3001 {
entry:
  %send = alloca %union.anon.16, align 8
  %receive = alloca %union.anon.16, align 8
  %value = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %key, metadata !3005, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !3006, metadata !DIExpression()), !dbg !3017
  %0 = getelementptr inbounds %union.anon.16, %union.anon.16* %send, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3018
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !3018
  call void @llvm.dbg.declare(metadata %union.anon.16* %send, metadata !3007, metadata !DIExpression()), !dbg !3019
  %1 = getelementptr inbounds %union.anon.16, %union.anon.16* %receive, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3018
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3018
  call void @llvm.dbg.declare(metadata %union.anon.16* %receive, metadata !3013, metadata !DIExpression()), !dbg !3020
  %2 = bitcast i64* %value to i8*, !dbg !3021
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14, !dbg !3021
  call void @llvm.dbg.value(metadata i64 -2401053088876213506, metadata !3014, metadata !DIExpression()), !dbg !3017
  store i64 -2401053088876213506, i64* %value, align 8, !dbg !3022, !tbaa !873
  %call = tail call i64 @strlen(i8* noundef %key) #15, !dbg !3023
  call void @llvm.dbg.value(metadata i64* %value, metadata !3014, metadata !DIExpression(DW_OP_deref)), !dbg !3017
  %call1 = call fastcc i64 @storage_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext %cmd, i8* noundef %key, i64 noundef %call, i8* noundef nonnull %2, i64 noundef 8) #16, !dbg !3024
  call void @llvm.dbg.value(metadata i64 %call1, metadata !3015, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 0, metadata !3016, metadata !DIExpression()), !dbg !3017
  %cmp4 = icmp eq i8 %cmd, 1
  %response = bitcast %union.anon.16* %receive to %union.protocol_binary_response_no_extras*
  call void @llvm.dbg.value(metadata i32 0, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  br i1 %cmp4, label %if.then26, label %for.inc.9, !dbg !3029

for.inc.9:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  call void @llvm.dbg.value(metadata i32 2, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  call void @llvm.dbg.value(metadata i32 3, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  call void @llvm.dbg.value(metadata i32 4, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  call void @llvm.dbg.value(metadata i32 5, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  call void @llvm.dbg.value(metadata i32 6, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  call void @llvm.dbg.value(metadata i32 7, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  call void @llvm.dbg.value(metadata i32 8, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  call void @llvm.dbg.value(metadata i32 9, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  call void @llvm.dbg.value(metadata i32 10, metadata !3016, metadata !DIExpression()), !dbg !3017
  %cmp10 = icmp eq i8 %cmd, 17, !dbg !3030
  br i1 %cmp10, label %cleanup.sink.split, label %if.else45, !dbg !3032

if.then26:                                        ; preds = %entry
  %3 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3033
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 1, i16 noundef zeroext 0) #16, !dbg !3036
  call void @llvm.dbg.value(metadata i32 1, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  %4 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3033
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 1, i16 noundef zeroext 0) #16, !dbg !3036
  call void @llvm.dbg.value(metadata i32 2, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  %5 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3033
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 1, i16 noundef zeroext 0) #16, !dbg !3036
  call void @llvm.dbg.value(metadata i32 3, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  %6 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3033
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 1, i16 noundef zeroext 0) #16, !dbg !3036
  call void @llvm.dbg.value(metadata i32 4, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  %7 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3033
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 1, i16 noundef zeroext 0) #16, !dbg !3036
  call void @llvm.dbg.value(metadata i32 5, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  %8 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3033
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 1, i16 noundef zeroext 0) #16, !dbg !3036
  call void @llvm.dbg.value(metadata i32 6, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  %9 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3033
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 1, i16 noundef zeroext 0) #16, !dbg !3036
  call void @llvm.dbg.value(metadata i32 7, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  %10 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3033
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 1, i16 noundef zeroext 0) #16, !dbg !3036
  call void @llvm.dbg.value(metadata i32 8, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  %11 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3033
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 1, i16 noundef zeroext 0) #16, !dbg !3036
  call void @llvm.dbg.value(metadata i32 9, metadata !3016, metadata !DIExpression()), !dbg !3017
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3025
  %12 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3033
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 1, i16 noundef zeroext 0) #16, !dbg !3036
  call void @llvm.dbg.value(metadata i32 10, metadata !3016, metadata !DIExpression()), !dbg !3017
  %13 = getelementptr inbounds %union.anon.16, %union.anon.16* %receive, i64 0, i32 0, i32 0, i32 0, i32 0, i32 8, !dbg !3037
  %14 = load i64, i64* %13, align 8, !dbg !3037, !tbaa !416
  %cas203 = getelementptr inbounds %union.anon.16, %union.anon.16* %send, i64 0, i32 0, i32 0, i32 0, i32 0, i32 8, !dbg !3038
  store i64 %14, i64* %cas203, align 8, !dbg !3039, !tbaa !416
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3040
  %15 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3041
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 1, i16 noundef zeroext 0) #16, !dbg !3044
  %16 = load i64, i64* %13, align 8, !dbg !3045, !tbaa !416
  %17 = load i64, i64* %cas203, align 8, !dbg !3045, !tbaa !416
  %cmp41.not = icmp eq i64 %16, %17, !dbg !3045
  br i1 %cmp41.not, label %if.else, label %cleanup, !dbg !3048

if.else:                                          ; preds = %if.then26
  call void @__assert_fail(i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.266, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1404, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.test_binary_set_impl, i64 0, i64 0)) #13, !dbg !3045
  unreachable, !dbg !3045

if.else45:                                        ; preds = %for.inc.9
  %18 = getelementptr inbounds %union.anon.16, %union.anon.16* %receive, i64 0, i32 0, i32 0, i32 0, i32 0, i32 8, !dbg !3037
  %19 = load i64, i64* %18, align 8, !dbg !3037, !tbaa !416
  %cas20 = getelementptr inbounds %union.anon.16, %union.anon.16* %send, i64 0, i32 0, i32 0, i32 0, i32 0, i32 8, !dbg !3038
  store i64 %19, i64* %cas20, align 8, !dbg !3039, !tbaa !416
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3040
  br label %cleanup.sink.split, !dbg !3049

cleanup.sink.split:                               ; preds = %for.inc.9, %if.else45
  %call46 = call i32 @test_binary_noop() #16, !dbg !3017
  br label %cleanup, !dbg !3051

cleanup:                                          ; preds = %cleanup.sink.split, %if.then26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14, !dbg !3051
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3051
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !3051
  ret void, !dbg !3051
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @storage_command(i8* noundef %buf, i64 noundef %bufsz, i8 noundef zeroext %cmd, i8* noundef %key, i64 noundef %keylen, i8* noundef %dta, i64 noundef %dtalen) unnamed_addr #0 !dbg !3052 {
entry:
  call void @llvm.dbg.value(metadata i8* %buf, metadata !3056, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %bufsz, metadata !3057, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !3058, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i8* %key, metadata !3059, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %keylen, metadata !3060, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i8* %dta, metadata !3061, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %dtalen, metadata !3062, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i32 0, metadata !3063, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i32 0, metadata !3064, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i8* %buf, metadata !3065, metadata !DIExpression()), !dbg !3082
  %add = add i64 %dtalen, %keylen, !dbg !3083
  %add1 = add i64 %add, 32, !dbg !3083
  %cmp = icmp ult i64 %add1, %bufsz, !dbg !3083
  br i1 %cmp, label %if.end, label %if.else, !dbg !3086

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.267, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1074, i8* noundef getelementptr inbounds ([111 x i8], [111 x i8]* @__PRETTY_FUNCTION__.storage_command, i64 0, i64 0)) #13, !dbg !3083
  unreachable, !dbg !3083

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %buf, metadata !3065, metadata !DIExpression()), !dbg !3082
  %call = tail call i8* @memset(i8* noundef %buf, i32 noundef 0, i64 noundef 32) #12, !dbg !3087
  store i8 -128, i8* %buf, align 8, !dbg !3088, !tbaa !416
  %0 = getelementptr inbounds i8, i8* %buf, i64 1, !dbg !3089
  store i8 %cmd, i8* %0, align 1, !dbg !3090, !tbaa !416
  %conv = trunc i64 %keylen to i16, !dbg !3091
  %call6 = tail call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %conv) #16, !dbg !3091
  %keylen10 = getelementptr inbounds i8, i8* %buf, i64 2, !dbg !3092
  %1 = bitcast i8* %keylen10 to i16*, !dbg !3092
  store i16 %call6, i16* %1, align 2, !dbg !3093, !tbaa !416
  %2 = getelementptr inbounds i8, i8* %buf, i64 4, !dbg !3094
  store i8 8, i8* %2, align 4, !dbg !3095, !tbaa !416
  %3 = trunc i64 %add to i32, !dbg !3096
  %conv16 = add i32 %3, 8, !dbg !3096
  %call17 = tail call fastcc i32 @__bswap_32(i32 noundef %conv16) #16, !dbg !3096
  %bodylen = getelementptr inbounds i8, i8* %buf, i64 8, !dbg !3097
  %4 = bitcast i8* %bodylen to i32*, !dbg !3097
  store i32 %call17, i32* %4, align 8, !dbg !3098, !tbaa !416
  %opaque = getelementptr inbounds i8, i8* %buf, i64 12, !dbg !3099
  %5 = bitcast i8* %opaque to i32*, !dbg !3099
  store i32 -559038737, i32* %5, align 4, !dbg !3100, !tbaa !416
  %body = getelementptr inbounds i8, i8* %buf, i64 24, !dbg !3101
  %flags25 = bitcast i8* %body to i32*, !dbg !3102
  store i32 0, i32* %flags25, align 8, !dbg !3103, !tbaa !416
  %expiration = getelementptr inbounds i8, i8* %buf, i64 28, !dbg !3104
  %6 = bitcast i8* %expiration to i32*, !dbg !3104
  store i32 0, i32* %6, align 4, !dbg !3105, !tbaa !416
  call void @llvm.dbg.value(metadata i64 32, metadata !3081, metadata !DIExpression()), !dbg !3082
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 32, !dbg !3106
  %call28 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %key, i64 noundef %keylen) #12, !dbg !3107
  %cmp29.not = icmp eq i8* %dta, null, !dbg !3108
  br i1 %cmp29.not, label %if.end35, label %if.then31, !dbg !3110

if.then31:                                        ; preds = %if.end
  %add.ptr33 = getelementptr inbounds i8, i8* %add.ptr, i64 %keylen, !dbg !3111
  %call34 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr33, i8* noundef nonnull %dta, i64 noundef %dtalen) #12, !dbg !3113
  br label %if.end35, !dbg !3114

if.end35:                                         ; preds = %if.then31, %if.end
  ret i64 %add1, !dbg !3115
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @test_binary_add_impl(i8* noundef %key, i8 noundef zeroext %cmd) unnamed_addr #0 !dbg !3116 {
if.then.peel:
  %value = alloca i64, align 8
  %send = alloca %union.anon.19, align 8
  %receive = alloca %union.anon.19, align 8
  call void @llvm.dbg.value(metadata i8* %key, metadata !3118, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !3119, metadata !DIExpression()), !dbg !3130
  %0 = bitcast i64* %value to i8*, !dbg !3131
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14, !dbg !3131
  call void @llvm.dbg.value(metadata i64 -2401053088876213506, metadata !3120, metadata !DIExpression()), !dbg !3130
  store i64 -2401053088876213506, i64* %value, align 8, !dbg !3132, !tbaa !873
  %1 = getelementptr inbounds %union.anon.19, %union.anon.19* %send, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3133
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3133
  call void @llvm.dbg.declare(metadata %union.anon.19* %send, metadata !3121, metadata !DIExpression()), !dbg !3134
  %2 = getelementptr inbounds %union.anon.19, %union.anon.19* %receive, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3133
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %2) #14, !dbg !3133
  call void @llvm.dbg.declare(metadata %union.anon.19* %receive, metadata !3127, metadata !DIExpression()), !dbg !3135
  %call = tail call i64 @strlen(i8* noundef %key) #15, !dbg !3136
  call void @llvm.dbg.value(metadata i64* %value, metadata !3120, metadata !DIExpression(DW_OP_deref)), !dbg !3130
  %call1 = call fastcc i64 @storage_command(i8* noundef nonnull %1, i64 noundef 1024, i8 noundef zeroext %cmd, i8* noundef %key, i64 noundef %call, i8* noundef nonnull %0, i64 noundef 8) #16, !dbg !3137
  call void @llvm.dbg.value(metadata i64 %call1, metadata !3128, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 0, metadata !3129, metadata !DIExpression()), !dbg !3130
  %response14 = bitcast %union.anon.19* %receive to %union.protocol_binary_response_no_extras*
  %cmp5 = icmp eq i8 %cmd, 2
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3138
  br i1 %cmp5, label %if.then7.peel, label %for.inc, !dbg !3142

if.then7.peel:                                    ; preds = %if.then.peel
  %3 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3145
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response14, i8 noundef zeroext 2, i16 noundef zeroext 0) #16, !dbg !3148
  br label %for.inc, !dbg !3149

for.inc:                                          ; preds = %if.then7.peel, %if.then.peel
  call void @llvm.dbg.value(metadata i32 1, metadata !3129, metadata !DIExpression()), !dbg !3130
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3138
  %4 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3150
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response14, i8 noundef zeroext %cmd, i16 noundef zeroext 2) #16, !dbg !3152
  call void @llvm.dbg.value(metadata i32 2, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 2, metadata !3129, metadata !DIExpression()), !dbg !3130
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3138
  %5 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3150
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response14, i8 noundef zeroext %cmd, i16 noundef zeroext 2) #16, !dbg !3152
  call void @llvm.dbg.value(metadata i32 3, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 3, metadata !3129, metadata !DIExpression()), !dbg !3130
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3138
  %6 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3150
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response14, i8 noundef zeroext %cmd, i16 noundef zeroext 2) #16, !dbg !3152
  call void @llvm.dbg.value(metadata i32 4, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 4, metadata !3129, metadata !DIExpression()), !dbg !3130
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3138
  %7 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3150
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response14, i8 noundef zeroext %cmd, i16 noundef zeroext 2) #16, !dbg !3152
  call void @llvm.dbg.value(metadata i32 5, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 5, metadata !3129, metadata !DIExpression()), !dbg !3130
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3138
  %8 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3150
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response14, i8 noundef zeroext %cmd, i16 noundef zeroext 2) #16, !dbg !3152
  call void @llvm.dbg.value(metadata i32 6, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 6, metadata !3129, metadata !DIExpression()), !dbg !3130
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3138
  %9 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3150
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response14, i8 noundef zeroext %cmd, i16 noundef zeroext 2) #16, !dbg !3152
  call void @llvm.dbg.value(metadata i32 7, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 7, metadata !3129, metadata !DIExpression()), !dbg !3130
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3138
  %10 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3150
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response14, i8 noundef zeroext %cmd, i16 noundef zeroext 2) #16, !dbg !3152
  call void @llvm.dbg.value(metadata i32 8, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 8, metadata !3129, metadata !DIExpression()), !dbg !3130
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3138
  %11 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3150
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response14, i8 noundef zeroext %cmd, i16 noundef zeroext 2) #16, !dbg !3152
  call void @llvm.dbg.value(metadata i32 9, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 9, metadata !3129, metadata !DIExpression()), !dbg !3130
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3138
  %12 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3150
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response14, i8 noundef zeroext %cmd, i16 noundef zeroext 2) #16, !dbg !3152
  call void @llvm.dbg.value(metadata i32 10, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #14, !dbg !3153
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3153
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14, !dbg !3153
  ret void, !dbg !3154
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @test_binary_replace_impl(i8* noundef %key, i8 noundef zeroext %cmd) unnamed_addr #0 !dbg !3155 {
entry:
  %value = alloca i64, align 8
  %send = alloca %union.anon.20, align 8
  %receive = alloca %union.anon.20, align 8
  call void @llvm.dbg.value(metadata i8* %key, metadata !3157, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !3158, metadata !DIExpression()), !dbg !3169
  %0 = bitcast i64* %value to i8*, !dbg !3170
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14, !dbg !3170
  call void @llvm.dbg.value(metadata i64 -2401053088876213506, metadata !3159, metadata !DIExpression()), !dbg !3169
  store i64 -2401053088876213506, i64* %value, align 8, !dbg !3171, !tbaa !873
  %1 = getelementptr inbounds %union.anon.20, %union.anon.20* %send, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3172
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3172
  call void @llvm.dbg.declare(metadata %union.anon.20* %send, metadata !3160, metadata !DIExpression()), !dbg !3173
  %2 = getelementptr inbounds %union.anon.20, %union.anon.20* %receive, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3172
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %2) #14, !dbg !3172
  call void @llvm.dbg.declare(metadata %union.anon.20* %receive, metadata !3166, metadata !DIExpression()), !dbg !3174
  %call = tail call i64 @strlen(i8* noundef %key) #15, !dbg !3175
  call void @llvm.dbg.value(metadata i64* %value, metadata !3159, metadata !DIExpression(DW_OP_deref)), !dbg !3169
  %call1 = call fastcc i64 @storage_command(i8* noundef nonnull %1, i64 noundef 1024, i8 noundef zeroext %cmd, i8* noundef %key, i64 noundef %call, i8* noundef nonnull %0, i64 noundef 8) #16, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %call1, metadata !3167, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3177
  %3 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3178
  %response = bitcast %union.anon.20* %receive to %union.protocol_binary_response_no_extras*, !dbg !3179
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd, i16 noundef zeroext 1) #16, !dbg !3180
  %call9 = call i64 @strlen(i8* noundef %key) #15, !dbg !3181
  %call10 = call fastcc i64 @storage_command(i8* noundef nonnull %1, i64 noundef 1024, i8 noundef zeroext 2, i8* noundef %key, i64 noundef %call9, i8* noundef nonnull %0, i64 noundef 8) #16, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %call10, metadata !3167, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call10, i1 noundef zeroext false) #16, !dbg !3183
  %4 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3184
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 2, i16 noundef zeroext 0) #16, !dbg !3185
  %call19 = call i64 @strlen(i8* noundef %key) #15, !dbg !3186
  %call20 = call fastcc i64 @storage_command(i8* noundef nonnull %1, i64 noundef 1024, i8 noundef zeroext %cmd, i8* noundef %key, i64 noundef %call19, i8* noundef nonnull %0, i64 noundef 8) #16, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %call20, metadata !3167, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 0, metadata !3168, metadata !DIExpression()), !dbg !3169
  %cmp23 = icmp eq i8 %cmd, 3
  call void @llvm.dbg.value(metadata i32 0, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  br i1 %cmp23, label %for.inc.9.thread, label %for.inc.9, !dbg !3192

for.inc.9.thread:                                 ; preds = %entry
  %5 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3193
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 3, i16 noundef zeroext 0) #16, !dbg !3196
  call void @llvm.dbg.value(metadata i32 1, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  %6 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3193
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 3, i16 noundef zeroext 0) #16, !dbg !3196
  call void @llvm.dbg.value(metadata i32 2, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  %7 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3193
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 3, i16 noundef zeroext 0) #16, !dbg !3196
  call void @llvm.dbg.value(metadata i32 3, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  %8 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3193
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 3, i16 noundef zeroext 0) #16, !dbg !3196
  call void @llvm.dbg.value(metadata i32 4, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  %9 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3193
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 3, i16 noundef zeroext 0) #16, !dbg !3196
  call void @llvm.dbg.value(metadata i32 5, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  %10 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3193
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 3, i16 noundef zeroext 0) #16, !dbg !3196
  call void @llvm.dbg.value(metadata i32 6, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  %11 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3193
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 3, i16 noundef zeroext 0) #16, !dbg !3196
  call void @llvm.dbg.value(metadata i32 7, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  %12 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3193
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 3, i16 noundef zeroext 0) #16, !dbg !3196
  call void @llvm.dbg.value(metadata i32 8, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  %13 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3193
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 3, i16 noundef zeroext 0) #16, !dbg !3196
  call void @llvm.dbg.value(metadata i32 9, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  %14 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3193
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 3, i16 noundef zeroext 0) #16, !dbg !3196
  call void @llvm.dbg.value(metadata i32 10, metadata !3168, metadata !DIExpression()), !dbg !3169
  br label %if.end34, !dbg !3197

for.inc.9:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  call void @llvm.dbg.value(metadata i32 2, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  call void @llvm.dbg.value(metadata i32 3, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  call void @llvm.dbg.value(metadata i32 4, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  call void @llvm.dbg.value(metadata i32 5, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  call void @llvm.dbg.value(metadata i32 6, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  call void @llvm.dbg.value(metadata i32 7, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  call void @llvm.dbg.value(metadata i32 8, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  call void @llvm.dbg.value(metadata i32 9, metadata !3168, metadata !DIExpression()), !dbg !3169
  call fastcc void @safe_send(i8* noundef nonnull %1, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3188
  call void @llvm.dbg.value(metadata i32 10, metadata !3168, metadata !DIExpression()), !dbg !3169
  %cmp30 = icmp eq i8 %cmd, 19, !dbg !3198
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !3197

if.then32:                                        ; preds = %for.inc.9
  %call33 = call i32 @test_binary_noop() #16, !dbg !3200
  br label %if.end34, !dbg !3202

if.end34:                                         ; preds = %for.inc.9.thread, %if.then32, %for.inc.9
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #14, !dbg !3203
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3203
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14, !dbg !3203
  ret void, !dbg !3204
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @test_binary_delete_impl(i8* noundef %key, i8 noundef zeroext %cmd) unnamed_addr #0 !dbg !3205 {
entry:
  %send = alloca %union.anon.21, align 8
  %receive = alloca %union.anon.21, align 8
  call void @llvm.dbg.value(metadata i8* %key, metadata !3207, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !3208, metadata !DIExpression()), !dbg !3217
  %0 = getelementptr inbounds %union.anon.21, %union.anon.21* %send, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3218
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !3218
  call void @llvm.dbg.declare(metadata %union.anon.21* %send, metadata !3209, metadata !DIExpression()), !dbg !3219
  %1 = getelementptr inbounds %union.anon.21, %union.anon.21* %receive, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3218
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3218
  call void @llvm.dbg.declare(metadata %union.anon.21* %receive, metadata !3215, metadata !DIExpression()), !dbg !3220
  %call = tail call i64 @strlen(i8* noundef %key) #15, !dbg !3221
  %call1 = call fastcc i64 @raw_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext %cmd, i8* noundef %key, i64 noundef %call, i8* noundef null, i64 noundef 0) #16, !dbg !3222
  call void @llvm.dbg.value(metadata i64 %call1, metadata !3216, metadata !DIExpression()), !dbg !3217
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3223
  %2 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3224
  %response = bitcast %union.anon.21* %receive to %union.protocol_binary_response_no_extras*, !dbg !3225
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd, i16 noundef zeroext 1) #16, !dbg !3226
  %call9 = call i64 @strlen(i8* noundef %key) #15, !dbg !3227
  %call10 = call fastcc i64 @storage_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext 2, i8* noundef %key, i64 noundef %call9, i8* noundef null, i64 noundef 0) #16, !dbg !3228
  call void @llvm.dbg.value(metadata i64 %call10, metadata !3216, metadata !DIExpression()), !dbg !3217
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call10, i1 noundef zeroext false) #16, !dbg !3229
  %3 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3230
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 2, i16 noundef zeroext 0) #16, !dbg !3231
  %call19 = call i64 @strlen(i8* noundef %key) #15, !dbg !3232
  %call20 = call fastcc i64 @raw_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext %cmd, i8* noundef %key, i64 noundef %call19, i8* noundef null, i64 noundef 0) #16, !dbg !3233
  call void @llvm.dbg.value(metadata i64 %call20, metadata !3216, metadata !DIExpression()), !dbg !3217
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3234
  %cmp = icmp eq i8 %cmd, 4, !dbg !3235
  br i1 %cmp, label %if.then, label %if.end, !dbg !3237

if.then:                                          ; preds = %entry
  %4 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3238
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 4, i16 noundef zeroext 0) #16, !dbg !3240
  br label %if.end, !dbg !3241

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3242
  %5 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3243
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd, i16 noundef zeroext 1) #16, !dbg !3244
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3245
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !3245
  ret void, !dbg !3246
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @test_binary_get_impl(i8* noundef %key, i8 noundef zeroext %cmd) unnamed_addr #0 !dbg !3247 {
entry:
  %send = alloca %union.anon.22, align 8
  %receive = alloca %union.anon.22, align 8
  %expiration = alloca i32, align 4
  %temp = alloca %union.anon.23, align 8
  call void @llvm.dbg.value(metadata i8* %key, metadata !3249, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !3250, metadata !DIExpression()), !dbg !3271
  %0 = getelementptr inbounds %union.anon.22, %union.anon.22* %send, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3272
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !3272
  call void @llvm.dbg.declare(metadata %union.anon.22* %send, metadata !3251, metadata !DIExpression()), !dbg !3273
  %1 = getelementptr inbounds %union.anon.22, %union.anon.22* %receive, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3272
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3272
  call void @llvm.dbg.declare(metadata %union.anon.22* %receive, metadata !3257, metadata !DIExpression()), !dbg !3274
  %2 = bitcast i32* %expiration to i8*, !dbg !3275
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14, !dbg !3275
  %call = tail call fastcc i32 @__bswap_32(i32 noundef 3600) #16, !dbg !3276
  call void @llvm.dbg.value(metadata i32 %call, metadata !3258, metadata !DIExpression()), !dbg !3271
  store i32 %call, i32* %expiration, align 4, !dbg !3277, !tbaa !424
  call void @llvm.dbg.value(metadata i64 0, metadata !3259, metadata !DIExpression()), !dbg !3271
  %cmp = icmp eq i8 %cmd, 29, !dbg !3278
  %cmp3 = icmp eq i8 %cmd, 35
  %or.cond = or i1 %cmp, %cmp3, !dbg !3280
  %spec.store.select = select i1 %or.cond, i64 4, i64 0, !dbg !3280
  call void @llvm.dbg.value(metadata i64 %spec.store.select, metadata !3259, metadata !DIExpression()), !dbg !3271
  %3 = select i1 %or.cond, i8* %2, i8* null, !dbg !3281
  %call5 = tail call i64 @strlen(i8* noundef %key) #15, !dbg !3282
  %call6 = call fastcc i64 @ext_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext %cmd, i8* noundef %3, i64 noundef %spec.store.select, i8* noundef %key, i64 noundef %call5, i8* noundef null, i64 noundef 0) #16, !dbg !3283
  call void @llvm.dbg.value(metadata i64 %call6, metadata !3260, metadata !DIExpression()), !dbg !3271
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call6, i1 noundef zeroext false) #16, !dbg !3284
  %4 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3285
  %response = bitcast %union.anon.22* %receive to %union.protocol_binary_response_no_extras*, !dbg !3286
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd, i16 noundef zeroext 1) #16, !dbg !3287
  %call14 = call i64 @strlen(i8* noundef %key) #15, !dbg !3288
  %call15 = call fastcc i64 @storage_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext 2, i8* noundef %key, i64 noundef %call14, i8* noundef null, i64 noundef 0) #16, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %call15, metadata !3260, metadata !DIExpression()), !dbg !3271
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call15, i1 noundef zeroext false) #16, !dbg !3290
  %5 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3291
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 2, i16 noundef zeroext 0) #16, !dbg !3292
  call void @llvm.dbg.value(metadata i64 0, metadata !3260, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 0, metadata !3261, metadata !DIExpression()), !dbg !3271
  %6 = getelementptr inbounds %union.anon.23, %union.anon.23* %temp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.dbg.value(metadata i32 0, metadata !3261, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 0, metadata !3260, metadata !DIExpression()), !dbg !3271
  br label %for.body, !dbg !3293

for.body:                                         ; preds = %entry, %for.body
  %ii.02 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %len.01 = phi i64 [ 0, %entry ], [ %add, %for.body ]
  call void @llvm.dbg.value(metadata i32 %ii.02, metadata !3261, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %len.01, metadata !3260, metadata !DIExpression()), !dbg !3271
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %6) #14, !dbg !3294
  call void @llvm.dbg.declare(metadata %union.anon.23* %temp, metadata !3262, metadata !DIExpression()), !dbg !3295
  %call31 = call i64 @strlen(i8* noundef %key) #15, !dbg !3296
  %call32 = call fastcc i64 @ext_command(i8* noundef nonnull %6, i64 noundef 1024, i8 noundef zeroext %cmd, i8* noundef %3, i64 noundef %spec.store.select, i8* noundef %key, i64 noundef %call31, i8* noundef null, i64 noundef 0) #16, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %call32, metadata !3270, metadata !DIExpression()), !dbg !3298
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len.01, !dbg !3299
  %call37 = call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef nonnull %6, i64 noundef %call32) #12, !dbg !3300
  %add = add i64 %call32, %len.01, !dbg !3301
  call void @llvm.dbg.value(metadata i64 %add, metadata !3260, metadata !DIExpression()), !dbg !3271
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %6) #14, !dbg !3302
  %inc = add nuw nsw i32 %ii.02, 1, !dbg !3303
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3261, metadata !DIExpression()), !dbg !3271
  %exitcond.not = icmp eq i32 %inc, 10, !dbg !3304
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !3293, !llvm.loop !3305

for.end:                                          ; preds = %for.body
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %add, i1 noundef zeroext false) #16, !dbg !3307
  call void @llvm.dbg.value(metadata i32 0, metadata !3261, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 0, metadata !3261, metadata !DIExpression()), !dbg !3271
  %7 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3308
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd, i16 noundef zeroext 0) #16, !dbg !3312
  call void @llvm.dbg.value(metadata i32 1, metadata !3261, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 1, metadata !3261, metadata !DIExpression()), !dbg !3271
  %8 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3308
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd, i16 noundef zeroext 0) #16, !dbg !3312
  call void @llvm.dbg.value(metadata i32 2, metadata !3261, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 2, metadata !3261, metadata !DIExpression()), !dbg !3271
  %9 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3308
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd, i16 noundef zeroext 0) #16, !dbg !3312
  call void @llvm.dbg.value(metadata i32 3, metadata !3261, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 3, metadata !3261, metadata !DIExpression()), !dbg !3271
  %10 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3308
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd, i16 noundef zeroext 0) #16, !dbg !3312
  call void @llvm.dbg.value(metadata i32 4, metadata !3261, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 4, metadata !3261, metadata !DIExpression()), !dbg !3271
  %11 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3308
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd, i16 noundef zeroext 0) #16, !dbg !3312
  call void @llvm.dbg.value(metadata i32 5, metadata !3261, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 5, metadata !3261, metadata !DIExpression()), !dbg !3271
  %12 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3308
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd, i16 noundef zeroext 0) #16, !dbg !3312
  call void @llvm.dbg.value(metadata i32 6, metadata !3261, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 6, metadata !3261, metadata !DIExpression()), !dbg !3271
  %13 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3308
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd, i16 noundef zeroext 0) #16, !dbg !3312
  call void @llvm.dbg.value(metadata i32 7, metadata !3261, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 7, metadata !3261, metadata !DIExpression()), !dbg !3271
  %14 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3308
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd, i16 noundef zeroext 0) #16, !dbg !3312
  call void @llvm.dbg.value(metadata i32 8, metadata !3261, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 8, metadata !3261, metadata !DIExpression()), !dbg !3271
  %15 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3308
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd, i16 noundef zeroext 0) #16, !dbg !3312
  call void @llvm.dbg.value(metadata i32 9, metadata !3261, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 9, metadata !3261, metadata !DIExpression()), !dbg !3271
  %16 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3308
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd, i16 noundef zeroext 0) #16, !dbg !3312
  call void @llvm.dbg.value(metadata i32 10, metadata !3261, metadata !DIExpression()), !dbg !3271
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14, !dbg !3313
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3313
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !3313
  ret void, !dbg !3314
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @test_binary_getq_impl(i8* noundef %key, i8 noundef zeroext %cmd) unnamed_addr #0 !dbg !3315 {
entry:
  %send = alloca %union.anon.24, align 8
  %temp = alloca %union.anon.24, align 8
  %receive = alloca %union.anon.24, align 8
  %expiration = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %key, metadata !3317, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !3318, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.277, i64 0, i64 0), metadata !3319, metadata !DIExpression()), !dbg !3332
  %0 = getelementptr inbounds %union.anon.24, %union.anon.24* %send, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3333
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !3333
  call void @llvm.dbg.declare(metadata %union.anon.24* %send, metadata !3320, metadata !DIExpression()), !dbg !3334
  %1 = getelementptr inbounds %union.anon.24, %union.anon.24* %temp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3333
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3333
  call void @llvm.dbg.declare(metadata %union.anon.24* %temp, metadata !3326, metadata !DIExpression()), !dbg !3335
  %2 = getelementptr inbounds %union.anon.24, %union.anon.24* %receive, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3333
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %2) #14, !dbg !3333
  call void @llvm.dbg.declare(metadata %union.anon.24* %receive, metadata !3327, metadata !DIExpression()), !dbg !3336
  %3 = bitcast i32* %expiration to i8*, !dbg !3337
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #14, !dbg !3337
  %call = tail call fastcc i32 @__bswap_32(i32 noundef 3600) #16, !dbg !3338
  call void @llvm.dbg.value(metadata i32 %call, metadata !3328, metadata !DIExpression()), !dbg !3332
  store i32 %call, i32* %expiration, align 4, !dbg !3339, !tbaa !424
  call void @llvm.dbg.value(metadata i64 0, metadata !3329, metadata !DIExpression()), !dbg !3332
  %cmp = icmp eq i8 %cmd, 30, !dbg !3340
  %cmp3 = icmp eq i8 %cmd, 36
  %or.cond = or i1 %cmp, %cmp3, !dbg !3342
  %spec.store.select = select i1 %or.cond, i64 4, i64 0, !dbg !3342
  call void @llvm.dbg.value(metadata i64 %spec.store.select, metadata !3329, metadata !DIExpression()), !dbg !3332
  %call5 = tail call i64 @strlen(i8* noundef %key) #15, !dbg !3343
  %call6 = call fastcc i64 @storage_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext 2, i8* noundef %key, i64 noundef %call5, i8* noundef null, i64 noundef 0) #16, !dbg !3344
  call void @llvm.dbg.value(metadata i64 %call6, metadata !3330, metadata !DIExpression()), !dbg !3332
  %4 = select i1 %or.cond, i8* %3, i8* null, !dbg !3345
  %call9 = call i64 @strlen(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.277, i64 0, i64 0)) #15, !dbg !3346
  %call10 = call fastcc i64 @ext_command(i8* noundef nonnull %1, i64 noundef 1024, i8 noundef zeroext %cmd, i8* noundef %4, i64 noundef %spec.store.select, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.277, i64 0, i64 0), i64 noundef %call9, i8* noundef null, i64 noundef 0) #16, !dbg !3347
  call void @llvm.dbg.value(metadata i64 %call10, metadata !3331, metadata !DIExpression()), !dbg !3332
  %opaque = getelementptr inbounds %union.anon.24, %union.anon.24* %temp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 7, !dbg !3348
  store i32 -17958194, i32* %opaque, align 4, !dbg !3349, !tbaa !416
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %call6, !dbg !3350
  %call16 = call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef nonnull %1, i64 noundef %call10) #12, !dbg !3351
  %add = add i64 %call10, %call6, !dbg !3352
  call void @llvm.dbg.value(metadata i64 %add, metadata !3330, metadata !DIExpression()), !dbg !3332
  %call24 = call i64 @strlen(i8* noundef %key) #15, !dbg !3353
  %call25 = call fastcc i64 @ext_command(i8* noundef nonnull %1, i64 noundef 1024, i8 noundef zeroext %cmd, i8* noundef %4, i64 noundef %spec.store.select, i8* noundef %key, i64 noundef %call24, i8* noundef null, i64 noundef 0) #16, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %call25, metadata !3331, metadata !DIExpression()), !dbg !3332
  %add.ptr28 = getelementptr inbounds i8, i8* %0, i64 %add, !dbg !3355
  %call31 = call i8* @memcpy(i8* noundef nonnull %add.ptr28, i8* noundef nonnull %1, i64 noundef %call25) #12, !dbg !3356
  %add32 = add i64 %call25, %add, !dbg !3357
  call void @llvm.dbg.value(metadata i64 %add32, metadata !3330, metadata !DIExpression()), !dbg !3332
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %add32, i1 noundef zeroext false) #16, !dbg !3358
  %5 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3359
  %response = bitcast %union.anon.24* %receive to %union.protocol_binary_response_no_extras*, !dbg !3360
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 2, i16 noundef zeroext 0) #16, !dbg !3361
  %6 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %2) #16, !dbg !3362
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd, i16 noundef zeroext 0) #16, !dbg !3363
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #14, !dbg !3364
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #14, !dbg !3364
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3364
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !3364
  ret void, !dbg !3365
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @test_binary_incr_impl(i8* noundef %key, i8 noundef zeroext %cmd) unnamed_addr #0 !dbg !3366 {
entry:
  %send = alloca %union.anon.25, align 8
  %receive = alloca %union.anon.25, align 8
  call void @llvm.dbg.value(metadata i8* %key, metadata !3368, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !3369, metadata !DIExpression()), !dbg !3392
  %0 = getelementptr inbounds %union.anon.25, %union.anon.25* %send, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3393
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !3393
  call void @llvm.dbg.declare(metadata %union.anon.25* %send, metadata !3370, metadata !DIExpression()), !dbg !3394
  %1 = getelementptr inbounds %union.anon.25, %union.anon.25* %receive, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3393
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3393
  call void @llvm.dbg.declare(metadata %union.anon.25* %receive, metadata !3389, metadata !DIExpression()), !dbg !3395
  %call = tail call i64 @strlen(i8* noundef %key) #15, !dbg !3396
  %call1 = call fastcc i64 @arithmetic_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext %cmd, i8* noundef %key, i64 noundef %call, i64 noundef 0) #16, !dbg !3397
  call void @llvm.dbg.value(metadata i64 %call1, metadata !3390, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i32 0, metadata !3391, metadata !DIExpression()), !dbg !3392
  %cmp4 = icmp eq i8 %cmd, 5
  %response_header = bitcast %union.anon.25* %receive to %union.protocol_binary_response_no_extras*
  %value = getelementptr inbounds %union.anon.25, %union.anon.25* %receive, i64 0, i32 0, i32 0, i32 1, i32 0
  br label %for.body, !dbg !3398

for.body:                                         ; preds = %for.body.backedge, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.be, %for.body.backedge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3391, metadata !DIExpression()), !dbg !3392
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3400
  br i1 %cmp4, label %if.then, label %for.inc, !dbg !3403

if.then:                                          ; preds = %for.body
  %2 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3404
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response_header, i8 noundef zeroext 5, i16 noundef zeroext 0) #16, !dbg !3407
  %3 = load i64, i64* %value, align 8, !dbg !3408, !tbaa !416
  %call9 = call i64 @ntohll(i64 noundef %3) #12, !dbg !3408
  %cmp11 = icmp eq i64 %call9, %indvars.iv, !dbg !3408
  br i1 %cmp11, label %for.inc.thread, label %if.else, !dbg !3411

if.else:                                          ; preds = %if.then
  call void @__assert_fail(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.285, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1709, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.test_binary_incr_impl, i64 0, i64 0)) #13, !dbg !3408
  unreachable, !dbg !3408

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3412
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3391, metadata !DIExpression()), !dbg !3392
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10, !dbg !3413
  br i1 %exitcond.not, label %for.end, label %for.body.backedge, !dbg !3398

for.body.backedge:                                ; preds = %for.inc, %for.inc.thread
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.next4, %for.inc.thread ]
  br label %for.body, !dbg !3392, !llvm.loop !3414

for.inc.thread:                                   ; preds = %if.then
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv, 1, !dbg !3412
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3391, metadata !DIExpression()), !dbg !3392
  %exitcond.not5 = icmp eq i64 %indvars.iv.next4, 10, !dbg !3413
  br i1 %exitcond.not5, label %if.end20, label %for.body.backedge, !dbg !3398

for.end:                                          ; preds = %for.inc
  %cmp16 = icmp eq i8 %cmd, 21, !dbg !3416
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !3418

if.then18:                                        ; preds = %for.end
  %call19 = call i32 @test_binary_noop() #16, !dbg !3419
  br label %if.end20, !dbg !3421

if.end20:                                         ; preds = %for.inc.thread, %if.then18, %for.end
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3422
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !3422
  ret void, !dbg !3423
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @arithmetic_command(i8* noundef %buf, i64 noundef %bufsz, i8 noundef zeroext %cmd, i8* noundef %key, i64 noundef %keylen, i64 noundef %initial) unnamed_addr #0 !dbg !3424 {
entry:
  call void @llvm.dbg.value(metadata i8* %buf, metadata !3428, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %bufsz, metadata !3429, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !3430, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8* %key, metadata !3431, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %keylen, metadata !3432, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 1, metadata !3433, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %initial, metadata !3434, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 0, metadata !3435, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8* %buf, metadata !3436, metadata !DIExpression()), !dbg !3456
  %add = add i64 %keylen, 48, !dbg !3457
  %cmp = icmp ult i64 %add, %bufsz, !dbg !3457
  br i1 %cmp, label %if.end, label %if.else, !dbg !3460

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.286, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1201, i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @__PRETTY_FUNCTION__.arithmetic_command, i64 0, i64 0)) #13, !dbg !3457
  unreachable, !dbg !3457

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %buf, metadata !3436, metadata !DIExpression()), !dbg !3456
  %call = tail call i8* @memset(i8* noundef %buf, i32 noundef 0, i64 noundef 48) #12, !dbg !3461
  store i8 -128, i8* %buf, align 8, !dbg !3462, !tbaa !416
  %0 = getelementptr inbounds i8, i8* %buf, i64 1, !dbg !3463
  store i8 %cmd, i8* %0, align 1, !dbg !3464, !tbaa !416
  %conv = trunc i64 %keylen to i16, !dbg !3465
  %call5 = tail call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %conv) #16, !dbg !3465
  %keylen9 = getelementptr inbounds i8, i8* %buf, i64 2, !dbg !3466
  %1 = bitcast i8* %keylen9 to i16*, !dbg !3466
  store i16 %call5, i16* %1, align 2, !dbg !3467, !tbaa !416
  %2 = getelementptr inbounds i8, i8* %buf, i64 4, !dbg !3468
  store i8 20, i8* %2, align 4, !dbg !3469, !tbaa !416
  %3 = trunc i64 %keylen to i32, !dbg !3470
  %conv14 = add i32 %3, 20, !dbg !3470
  %call15 = tail call fastcc i32 @__bswap_32(i32 noundef %conv14) #16, !dbg !3470
  %bodylen = getelementptr inbounds i8, i8* %buf, i64 8, !dbg !3471
  %4 = bitcast i8* %bodylen to i32*, !dbg !3471
  store i32 %call15, i32* %4, align 8, !dbg !3472, !tbaa !416
  %opaque = getelementptr inbounds i8, i8* %buf, i64 12, !dbg !3473
  %5 = bitcast i8* %opaque to i32*, !dbg !3473
  store i32 -559038737, i32* %5, align 4, !dbg !3474, !tbaa !416
  %call22 = tail call i64 @htonll(i64 noundef 1) #12, !dbg !3475
  %body = getelementptr inbounds i8, i8* %buf, i64 24, !dbg !3476
  %delta24 = bitcast i8* %body to i64*, !dbg !3477
  store i64 %call22, i64* %delta24, align 8, !dbg !3478, !tbaa !416
  %call25 = tail call i64 @htonll(i64 noundef %initial) #12, !dbg !3479
  %initial28 = getelementptr inbounds i8, i8* %buf, i64 32, !dbg !3480
  %6 = bitcast i8* %initial28 to i64*, !dbg !3480
  store i64 %call25, i64* %6, align 8, !dbg !3481, !tbaa !416
  %call29 = tail call fastcc i32 @__bswap_32(i32 noundef 0) #16, !dbg !3482
  %expiration = getelementptr inbounds i8, i8* %buf, i64 40, !dbg !3483
  %7 = bitcast i8* %expiration to i32*, !dbg !3483
  store i32 %call29, i32* %7, align 8, !dbg !3484, !tbaa !416
  call void @llvm.dbg.value(metadata i64 44, metadata !3455, metadata !DIExpression()), !dbg !3456
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 44, !dbg !3485
  %call32 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %key, i64 noundef %keylen) #12, !dbg !3486
  %add33 = add i64 %keylen, 44, !dbg !3487
  ret i64 %add33, !dbg !3488
}

declare !dbg !3489 dso_local i64 @ntohll(i64 noundef) local_unnamed_addr #4

declare !dbg !3492 dso_local i64 @htonll(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @test_binary_decr_impl(i8* noundef %key, i8 noundef zeroext %cmd) unnamed_addr #0 !dbg !3493 {
entry:
  %send = alloca %union.anon.30, align 8
  %receive = alloca %union.anon.30, align 8
  call void @llvm.dbg.value(metadata i8* %key, metadata !3495, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !3496, metadata !DIExpression()), !dbg !3508
  %0 = getelementptr inbounds %union.anon.30, %union.anon.30* %send, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3509
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !3509
  call void @llvm.dbg.declare(metadata %union.anon.30* %send, metadata !3497, metadata !DIExpression()), !dbg !3510
  %1 = getelementptr inbounds %union.anon.30, %union.anon.30* %receive, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3509
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3509
  call void @llvm.dbg.declare(metadata %union.anon.30* %receive, metadata !3505, metadata !DIExpression()), !dbg !3511
  %call = tail call i64 @strlen(i8* noundef %key) #15, !dbg !3512
  %call1 = call fastcc i64 @arithmetic_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext %cmd, i8* noundef %key, i64 noundef %call, i64 noundef 9) #16, !dbg !3513
  call void @llvm.dbg.value(metadata i64 %call1, metadata !3506, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i32 9, metadata !3507, metadata !DIExpression()), !dbg !3508
  %cmp4 = icmp eq i8 %cmd, 6
  %response_header = bitcast %union.anon.30* %receive to %union.protocol_binary_response_no_extras*
  %value = getelementptr inbounds %union.anon.30, %union.anon.30* %receive, i64 0, i32 0, i32 0, i32 1, i32 0
  br label %for.body, !dbg !3514

for.body:                                         ; preds = %for.body.backedge, %entry
  %indvars.iv = phi i64 [ 9, %entry ], [ %indvars.iv.be, %for.body.backedge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3507, metadata !DIExpression()), !dbg !3508
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3516
  br i1 %cmp4, label %if.then, label %for.inc.thread, !dbg !3519

if.then:                                          ; preds = %for.body
  %2 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3520
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response_header, i8 noundef zeroext 6, i16 noundef zeroext 0) #16, !dbg !3523
  %3 = load i64, i64* %value, align 8, !dbg !3524, !tbaa !416
  %call9 = call i64 @ntohll(i64 noundef %3) #12, !dbg !3524
  %cmp11 = icmp eq i64 %call9, %indvars.iv, !dbg !3524
  br i1 %cmp11, label %for.inc, label %if.else, !dbg !3527

if.else:                                          ; preds = %if.then
  call void @__assert_fail(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.285, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1746, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.test_binary_decr_impl, i64 0, i64 0)) #13, !dbg !3524
  unreachable, !dbg !3524

for.inc:                                          ; preds = %if.then
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3507, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3508
  %cmp.not = icmp eq i64 %indvars.iv, 0, !dbg !3528
  br i1 %cmp.not, label %if.then20, label %for.body.backedge, !dbg !3514

for.body.backedge:                                ; preds = %for.inc, %for.inc.thread
  %indvars.iv.be = add nsw i64 %indvars.iv, -1, !dbg !3529
  br label %for.body, !dbg !3508, !llvm.loop !3530

for.inc.thread:                                   ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3507, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3508
  %cmp.not6 = icmp eq i64 %indvars.iv, 0, !dbg !3528
  br i1 %cmp.not6, label %if.else35, label %for.body.backedge, !dbg !3514

if.then20:                                        ; preds = %for.inc
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3532
  %4 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3533
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response_header, i8 noundef zeroext 6, i16 noundef zeroext 0) #16, !dbg !3536
  %5 = load i64, i64* %value, align 8, !dbg !3537, !tbaa !416
  %call29 = call i64 @ntohll(i64 noundef %5) #12, !dbg !3537
  %cmp30 = icmp eq i64 %call29, 0, !dbg !3537
  br i1 %cmp30, label %if.end37, label %if.else33, !dbg !3540

if.else33:                                        ; preds = %if.then20
  call void @__assert_fail(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.289, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1756, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.test_binary_decr_impl, i64 0, i64 0)) #13, !dbg !3537
  unreachable, !dbg !3537

if.else35:                                        ; preds = %for.inc.thread
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3532
  %call36 = call i32 @test_binary_noop() #16, !dbg !3541
  br label %if.end37

if.end37:                                         ; preds = %if.then20, %if.else35
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3543
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !3543
  ret void, !dbg !3544
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @test_binary_flush_impl(i8* noundef %key, i8 noundef zeroext %cmd) unnamed_addr #0 !dbg !3545 {
entry:
  %send = alloca %union.anon.32, align 8
  %receive = alloca %union.anon.32, align 8
  call void @llvm.dbg.value(metadata i8* %key, metadata !3547, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !3548, metadata !DIExpression()), !dbg !3558
  %0 = getelementptr inbounds %union.anon.32, %union.anon.32* %send, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3559
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !3559
  call void @llvm.dbg.declare(metadata %union.anon.32* %send, metadata !3549, metadata !DIExpression()), !dbg !3560
  %1 = getelementptr inbounds %union.anon.32, %union.anon.32* %receive, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3559
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3559
  call void @llvm.dbg.declare(metadata %union.anon.32* %receive, metadata !3555, metadata !DIExpression()), !dbg !3561
  %call = tail call i64 @strlen(i8* noundef %key) #15, !dbg !3562
  %call1 = call fastcc i64 @storage_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext 2, i8* noundef %key, i64 noundef %call, i8* noundef null, i64 noundef 0) #16, !dbg !3563
  call void @llvm.dbg.value(metadata i64 %call1, metadata !3556, metadata !DIExpression()), !dbg !3558
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call1, i1 noundef zeroext false) #16, !dbg !3564
  %2 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3565
  %response = bitcast %union.anon.32* %receive to %union.protocol_binary_response_no_extras*, !dbg !3566
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 2, i16 noundef zeroext 0) #16, !dbg !3567
  %call9 = call fastcc i64 @flush_command(i8* noundef nonnull %0, i8 noundef zeroext %cmd, i32 noundef 2, i1 noundef zeroext true) #16, !dbg !3568
  call void @llvm.dbg.value(metadata i64 %call9, metadata !3556, metadata !DIExpression()), !dbg !3558
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call9, i1 noundef zeroext false) #16, !dbg !3569
  %cmp = icmp eq i8 %cmd, 8, !dbg !3570
  br i1 %cmp, label %if.then, label %if.end, !dbg !3572

if.then:                                          ; preds = %entry
  %3 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3573
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 8, i16 noundef zeroext 0) #16, !dbg !3575
  br label %if.end, !dbg !3576

if.end:                                           ; preds = %if.then, %entry
  %call19 = call i64 @strlen(i8* noundef %key) #15, !dbg !3577
  %call20 = call fastcc i64 @raw_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext 0, i8* noundef %key, i64 noundef %call19, i8* noundef null, i64 noundef 0) #16, !dbg !3578
  call void @llvm.dbg.value(metadata i64 %call20, metadata !3556, metadata !DIExpression()), !dbg !3558
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3579
  %4 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3580
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 0, i16 noundef zeroext 0) #16, !dbg !3581
  %call27 = call i32 @sleep(i32 noundef 2) #12, !dbg !3582
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call20, i1 noundef zeroext false) #16, !dbg !3583
  %5 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3584
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 0, i16 noundef zeroext 1) #16, !dbg !3585
  call void @llvm.dbg.value(metadata i32 0, metadata !3557, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i32 0, metadata !3557, metadata !DIExpression()), !dbg !3558
  %call38 = call i64 @strlen(i8* noundef %key) #15, !dbg !3586
  %call39 = call fastcc i64 @storage_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext 2, i8* noundef %key, i64 noundef %call38, i8* noundef null, i64 noundef 0) #16, !dbg !3590
  call void @llvm.dbg.value(metadata i64 %call39, metadata !3556, metadata !DIExpression()), !dbg !3558
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call39, i1 noundef zeroext false) #16, !dbg !3591
  %6 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3592
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 2, i16 noundef zeroext 0) #16, !dbg !3593
  %call50 = call fastcc i64 @flush_command(i8* noundef nonnull %0, i8 noundef zeroext %cmd, i32 noundef 0, i1 noundef zeroext true) #16, !dbg !3594
  call void @llvm.dbg.value(metadata i64 %call50, metadata !3556, metadata !DIExpression()), !dbg !3558
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call50, i1 noundef zeroext false) #16, !dbg !3595
  br i1 %cmp, label %if.then56, label %if.end61, !dbg !3596

if.then56:                                        ; preds = %if.end
  %7 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3597
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 8, i16 noundef zeroext 0) #16, !dbg !3600
  br label %if.end61, !dbg !3601

if.end61:                                         ; preds = %if.then56, %if.end
  %call64 = call i64 @strlen(i8* noundef %key) #15, !dbg !3602
  %call65 = call fastcc i64 @raw_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext 0, i8* noundef %key, i64 noundef %call64, i8* noundef null, i64 noundef 0) #16, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %call65, metadata !3556, metadata !DIExpression()), !dbg !3558
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call65, i1 noundef zeroext false) #16, !dbg !3604
  %8 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3605
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 0, i16 noundef zeroext 1) #16, !dbg !3606
  call void @llvm.dbg.value(metadata i32 1, metadata !3557, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i32 1, metadata !3557, metadata !DIExpression()), !dbg !3558
  %call38.1 = call i64 @strlen(i8* noundef %key) #15, !dbg !3586
  %call39.1 = call fastcc i64 @storage_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext 2, i8* noundef %key, i64 noundef %call38.1, i8* noundef null, i64 noundef 0) #16, !dbg !3590
  call void @llvm.dbg.value(metadata i64 %call39.1, metadata !3556, metadata !DIExpression()), !dbg !3558
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call39.1, i1 noundef zeroext false) #16, !dbg !3591
  %9 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3592
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 2, i16 noundef zeroext 0) #16, !dbg !3593
  %call50.1 = call fastcc i64 @flush_command(i8* noundef nonnull %0, i8 noundef zeroext %cmd, i32 noundef 0, i1 noundef zeroext false) #16, !dbg !3594
  call void @llvm.dbg.value(metadata i64 %call50.1, metadata !3556, metadata !DIExpression()), !dbg !3558
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call50.1, i1 noundef zeroext false) #16, !dbg !3595
  br i1 %cmp, label %if.then56.1, label %if.end61.1, !dbg !3596

if.then56.1:                                      ; preds = %if.end61
  %10 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3597
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 8, i16 noundef zeroext 0) #16, !dbg !3600
  br label %if.end61.1, !dbg !3601

if.end61.1:                                       ; preds = %if.then56.1, %if.end61
  %call64.1 = call i64 @strlen(i8* noundef %key) #15, !dbg !3602
  %call65.1 = call fastcc i64 @raw_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext 0, i8* noundef %key, i64 noundef %call64.1, i8* noundef null, i64 noundef 0) #16, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %call65.1, metadata !3556, metadata !DIExpression()), !dbg !3558
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call65.1, i1 noundef zeroext false) #16, !dbg !3604
  %11 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3605
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 0, i16 noundef zeroext 1) #16, !dbg !3606
  call void @llvm.dbg.value(metadata i32 2, metadata !3557, metadata !DIExpression()), !dbg !3558
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3607
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !3607
  ret void, !dbg !3608
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @flush_command(i8* noundef %buf, i8 noundef zeroext %cmd, i32 noundef %exptime, i1 noundef zeroext %use_extra) unnamed_addr #0 !dbg !3609 {
entry:
  call void @llvm.dbg.value(metadata i8* %buf, metadata !3613, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i64 1024, metadata !3614, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !3615, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i32 %exptime, metadata !3616, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i1 %use_extra, metadata !3617, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3634
  call void @llvm.dbg.value(metadata i8* %buf, metadata !3618, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i8* %buf, metadata !3618, metadata !DIExpression()), !dbg !3634
  %call = tail call i8* @memset(i8* noundef %buf, i32 noundef 0, i64 noundef 32) #12, !dbg !3635
  store i8 -128, i8* %buf, align 8, !dbg !3636, !tbaa !416
  %0 = getelementptr inbounds i8, i8* %buf, i64 1, !dbg !3637
  store i8 %cmd, i8* %0, align 1, !dbg !3638, !tbaa !416
  call void @llvm.dbg.value(metadata i64 24, metadata !3633, metadata !DIExpression()), !dbg !3634
  br i1 %use_extra, label %if.then5, label %if.end15, !dbg !3639

if.then5:                                         ; preds = %entry
  %1 = getelementptr inbounds i8, i8* %buf, i64 4, !dbg !3640
  store i8 4, i8* %1, align 4, !dbg !3643, !tbaa !416
  %call9 = tail call fastcc i32 @__bswap_32(i32 noundef %exptime) #16, !dbg !3644
  %body = getelementptr inbounds i8, i8* %buf, i64 24, !dbg !3645
  %expiration = bitcast i8* %body to i32*, !dbg !3646
  store i32 %call9, i32* %expiration, align 8, !dbg !3647, !tbaa !416
  %call11 = tail call fastcc i32 @__bswap_32(i32 noundef 4) #16, !dbg !3648
  %bodylen = getelementptr inbounds i8, i8* %buf, i64 8, !dbg !3649
  %2 = bitcast i8* %bodylen to i32*, !dbg !3649
  store i32 %call11, i32* %2, align 8, !dbg !3650, !tbaa !416
  call void @llvm.dbg.value(metadata i64 28, metadata !3633, metadata !DIExpression()), !dbg !3634
  br label %if.end15, !dbg !3651

if.end15:                                         ; preds = %if.then5, %entry
  %size.0 = phi i64 [ 28, %if.then5 ], [ 24, %entry ], !dbg !3634
  call void @llvm.dbg.value(metadata i64 %size.0, metadata !3633, metadata !DIExpression()), !dbg !3634
  %opaque = getelementptr inbounds i8, i8* %buf, i64 12, !dbg !3652
  %3 = bitcast i8* %opaque to i32*, !dbg !3652
  store i32 -559038737, i32* %3, align 4, !dbg !3653, !tbaa !416
  ret i64 %size.0, !dbg !3654
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @test_binary_concat_impl(i8* noundef %key, i8 noundef zeroext %cmd) unnamed_addr #0 !dbg !3655 {
entry:
  %send = alloca %union.anon.35, align 8
  %receive = alloca %union.anon.35, align 8
  call void @llvm.dbg.value(metadata i8* %key, metadata !3657, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !3658, metadata !DIExpression()), !dbg !3669
  %0 = getelementptr inbounds %union.anon.35, %union.anon.35* %send, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3670
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !3670
  call void @llvm.dbg.declare(metadata %union.anon.35* %send, metadata !3659, metadata !DIExpression()), !dbg !3671
  %1 = getelementptr inbounds %union.anon.35, %union.anon.35* %receive, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3670
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3670
  call void @llvm.dbg.declare(metadata %union.anon.35* %receive, metadata !3665, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.295, i64 0, i64 0), metadata !3666, metadata !DIExpression()), !dbg !3669
  %call = tail call i64 @strlen(i8* noundef %key) #15, !dbg !3673
  %call1 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.295, i64 0, i64 0)) #15, !dbg !3674
  %call2 = call fastcc i64 @raw_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext %cmd, i8* noundef %key, i64 noundef %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.295, i64 0, i64 0), i64 noundef %call1) #16, !dbg !3675
  call void @llvm.dbg.value(metadata i64 %call2, metadata !3667, metadata !DIExpression()), !dbg !3669
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call2, i1 noundef zeroext false) #16, !dbg !3676
  %2 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3677
  %response = bitcast %union.anon.35* %receive to %union.protocol_binary_response_no_extras*, !dbg !3678
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %cmd, i16 noundef zeroext 5) #16, !dbg !3679
  %call10 = call i64 @strlen(i8* noundef %key) #15, !dbg !3680
  %call11 = call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.295, i64 0, i64 0)) #15, !dbg !3681
  %call12 = call fastcc i64 @storage_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext 2, i8* noundef %key, i64 noundef %call10, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.295, i64 0, i64 0), i64 noundef %call11) #16, !dbg !3682
  call void @llvm.dbg.value(metadata i64 %call12, metadata !3667, metadata !DIExpression()), !dbg !3669
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call12, i1 noundef zeroext false) #16, !dbg !3683
  %3 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3684
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 2, i16 noundef zeroext 0) #16, !dbg !3685
  %call21 = call i64 @strlen(i8* noundef %key) #15, !dbg !3686
  %call22 = call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.295, i64 0, i64 0)) #15, !dbg !3687
  %call23 = call fastcc i64 @raw_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext %cmd, i8* noundef %key, i64 noundef %call21, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.295, i64 0, i64 0), i64 noundef %call22) #16, !dbg !3688
  call void @llvm.dbg.value(metadata i64 %call23, metadata !3667, metadata !DIExpression()), !dbg !3669
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call23, i1 noundef zeroext false) #16, !dbg !3689
  %4 = and i8 %cmd, -2, !dbg !3690
  %5 = icmp eq i8 %4, 14, !dbg !3690
  br i1 %5, label %if.end, label %if.else, !dbg !3690

if.else:                                          ; preds = %entry
  %call36 = call fastcc i64 @raw_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext 10, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #16, !dbg !3692
  call void @llvm.dbg.value(metadata i64 %call36, metadata !3667, metadata !DIExpression()), !dbg !3669
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call36, i1 noundef zeroext false) #16, !dbg !3694
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %.sink = phi i8 [ 10, %if.else ], [ %cmd, %entry ]
  %6 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3695
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext %.sink, i16 noundef zeroext 0) #16, !dbg !3695
  %call45 = call i64 @strlen(i8* noundef %key) #15, !dbg !3696
  %call46 = call fastcc i64 @raw_command(i8* noundef nonnull %0, i64 noundef 1024, i8 noundef zeroext 12, i8* noundef %key, i64 noundef %call45, i8* noundef null, i64 noundef 0) #16, !dbg !3697
  call void @llvm.dbg.value(metadata i64 %call46, metadata !3667, metadata !DIExpression()), !dbg !3669
  call fastcc void @safe_send(i8* noundef nonnull %0, i64 noundef %call46, i1 noundef zeroext false) #16, !dbg !3698
  %7 = call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %1) #16, !dbg !3699
  call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %response, i8 noundef zeroext 12, i16 noundef zeroext 0) #16, !dbg !3700
  %8 = getelementptr inbounds %union.anon.35, %union.anon.35* %receive, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3701
  %9 = load i16, i16* %8, align 2, !dbg !3701, !tbaa !416
  %conv55 = zext i16 %9 to i64, !dbg !3701
  %call56 = call i64 @strlen(i8* noundef %key) #15, !dbg !3701
  %cmp57 = icmp eq i64 %call56, %conv55, !dbg !3701
  br i1 %cmp57, label %if.end61, label %if.else60, !dbg !3704

if.else60:                                        ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.296, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1919, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.test_binary_concat_impl, i64 0, i64 0)) #13, !dbg !3701
  unreachable, !dbg !3701

if.end61:                                         ; preds = %if.end
  %10 = getelementptr inbounds %union.anon.35, %union.anon.35* %receive, i64 0, i32 0, i32 0, i32 0, i32 0, i32 6, !dbg !3705
  %11 = load i32, i32* %10, align 8, !dbg !3705, !tbaa !416
  %conv66 = zext i32 %11 to i64, !dbg !3705
  %call68 = call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.295, i64 0, i64 0)) #15, !dbg !3705
  %mul = shl i64 %call68, 1, !dbg !3705
  %add = add nuw nsw i64 %conv55, 4, !dbg !3705
  %add69 = add i64 %add, %mul, !dbg !3705
  %cmp70 = icmp eq i64 %add69, %conv66, !dbg !3705
  br i1 %cmp70, label %if.end74, label %if.else73, !dbg !3708

if.else73:                                        ; preds = %if.end61
  call void @__assert_fail(i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.297, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1920, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.test_binary_concat_impl, i64 0, i64 0)) #13, !dbg !3705
  unreachable, !dbg !3705

if.end74:                                         ; preds = %if.end61
  call void @llvm.dbg.value(metadata i8* %1, metadata !3668, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i8* %1, metadata !3668, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !3669
  %add.ptr77 = getelementptr inbounds i8, i8* %1, i64 28, !dbg !3709
  call void @llvm.dbg.value(metadata i8* %add.ptr77, metadata !3668, metadata !DIExpression()), !dbg !3669
  %call79 = call i32 @memcmp(i8* noundef nonnull %add.ptr77, i8* noundef %key, i64 noundef %conv55) #15, !dbg !3710
  %cmp80 = icmp eq i32 %call79, 0, !dbg !3710
  br i1 %cmp80, label %if.end84, label %if.else83, !dbg !3713

if.else83:                                        ; preds = %if.end74
  call void @__assert_fail(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.298, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1926, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.test_binary_concat_impl, i64 0, i64 0)) #13, !dbg !3710
  unreachable, !dbg !3710

if.end84:                                         ; preds = %if.end74
  %add.ptr86 = getelementptr inbounds i8, i8* %add.ptr77, i64 %conv55, !dbg !3714
  call void @llvm.dbg.value(metadata i8* %add.ptr86, metadata !3668, metadata !DIExpression()), !dbg !3669
  %call88 = call i32 @memcmp(i8* noundef nonnull %add.ptr86, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.295, i64 0, i64 0), i64 noundef %call68) #15, !dbg !3715
  %cmp89 = icmp eq i32 %call88, 0, !dbg !3715
  br i1 %cmp89, label %if.end93, label %if.else92, !dbg !3718

if.else92:                                        ; preds = %if.end84
  call void @__assert_fail(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.299, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1928, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.test_binary_concat_impl, i64 0, i64 0)) #13, !dbg !3715
  unreachable, !dbg !3715

if.end93:                                         ; preds = %if.end84
  %add.ptr95 = getelementptr inbounds i8, i8* %add.ptr86, i64 %call68, !dbg !3719
  call void @llvm.dbg.value(metadata i8* %add.ptr95, metadata !3668, metadata !DIExpression()), !dbg !3669
  %call97 = call i32 @memcmp(i8* noundef nonnull %add.ptr95, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.295, i64 0, i64 0), i64 noundef %call68) #15, !dbg !3720
  %cmp98 = icmp eq i32 %call97, 0, !dbg !3720
  br i1 %cmp98, label %if.end102, label %if.else101, !dbg !3723

if.else101:                                       ; preds = %if.end93
  call void @__assert_fail(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.299, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32 noundef 1930, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.test_binary_concat_impl, i64 0, i64 0)) #13, !dbg !3720
  unreachable, !dbg !3720

if.end102:                                        ; preds = %if.end93
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #14, !dbg !3724
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #14, !dbg !3724
  ret void, !dbg !3725
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3726 dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !3729 dso_local noalias i8* @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !3732 dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @binary_hickup_recv_verification_thread(i8* nocapture noundef readnone %arg) #0 !dbg !3752 {
entry:
  call void @llvm.dbg.value(metadata i8* %arg, metadata !3754, metadata !DIExpression()), !dbg !3756
  %call = tail call noalias i8* @malloc(i64 noundef 66560) #12, !dbg !3757
  %0 = bitcast i8* %call to %union.protocol_binary_response_no_extras*, !dbg !3757
  call void @llvm.dbg.value(metadata %union.protocol_binary_response_no_extras* %0, metadata !3755, metadata !DIExpression()), !dbg !3756
  %cmp.not = icmp eq i8* %call, null, !dbg !3758
  br i1 %cmp.not, label %if.end, label %while.cond.preheader, !dbg !3760

while.cond.preheader:                             ; preds = %entry
  %call112 = tail call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %call) #16, !dbg !3761
  br i1 %call112, label %while.body.lr.ph, label %while.end, !dbg !3763

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %1 = getelementptr inbounds i8, i8* %call, i64 1
  %status = getelementptr inbounds i8, i8* %call, i64 6
  %2 = bitcast i8* %status to i16*
  br label %while.body, !dbg !3763

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %3 = load i8, i8* %1, align 1, !dbg !3764, !tbaa !416
  %4 = load i16, i16* %2, align 2, !dbg !3766, !tbaa !416
  tail call fastcc void @validate_response_header(%union.protocol_binary_response_no_extras* noundef nonnull %0, i8 noundef zeroext %3, i16 noundef zeroext %4) #16, !dbg !3767
  %call1 = tail call fastcc zeroext i1 @safe_recv_packet(i8* noundef nonnull %call) #16, !dbg !3761
  br i1 %call1, label %while.body, label %while.end, !dbg !3763, !llvm.loop !3768

while.end:                                        ; preds = %while.body, %while.cond.preheader
  tail call void @free(i8* noundef nonnull %call) #12, !dbg !3770
  br label %if.end, !dbg !3771

if.end:                                           ; preds = %while.end, %entry
  store volatile i8 0, i8* @hickup_thread_running, align 1, !dbg !3772, !tbaa !1693
  store i1 false, i1* @allow_closed_read, align 1, !dbg !3773
  ret i8* null, !dbg !3774
}

; Function Attrs: nounwind
declare !dbg !3775 dso_local void @srand(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !3778 dso_local i64 @time(i64* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @test_binary_pipeline_hickup_chunk(i8* noundef %buffer) unnamed_addr #0 !dbg !3786 {
entry:
  %key = alloca [256 x i8*], align 16
  %value = alloca i64, align 8
  %command = alloca %union.anon.38, align 8
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !3790, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 66560, metadata !3791, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 0, metadata !3792, metadata !DIExpression()), !dbg !3808
  %0 = bitcast [256 x i8*]* %key to i8*, !dbg !3809
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %0) #14, !dbg !3809
  call void @llvm.dbg.declare(metadata [256 x i8*]* %key, metadata !3793, metadata !DIExpression()), !dbg !3810
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) %0, i8 0, i64 2048, i1 false), !dbg !3810
  %1 = bitcast i64* %value to i8*, !dbg !3811
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14, !dbg !3811
  call void @llvm.dbg.value(metadata i64 -77129852189294865, metadata !3795, metadata !DIExpression()), !dbg !3808
  store i64 -77129852189294865, i64* %value, align 8, !dbg !3812, !tbaa !873
  call void @llvm.dbg.value(metadata i64 0, metadata !3792, metadata !DIExpression()), !dbg !3808
  %2 = load volatile i8, i8* @hickup_thread_running, align 1, !dbg !3813, !tbaa !1693, !range !3814
  %tobool6.not = icmp eq i8 %2, 0, !dbg !3813
  br i1 %tobool6.not, label %while.end, label %while.body.lr.ph, !dbg !3815

while.body.lr.ph:                                 ; preds = %entry
  %3 = getelementptr inbounds %union.anon.38, %union.anon.38* %command, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  br label %while.body, !dbg !3815

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %offset.07 = phi i64 [ 0, %while.body.lr.ph ], [ %add54, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %offset.07, metadata !3792, metadata !DIExpression()), !dbg !3808
  call void @llvm.lifetime.start.p0i8(i64 66560, i8* nonnull %3) #14, !dbg !3816
  call void @llvm.dbg.declare(metadata %union.anon.38* %command, metadata !3796, metadata !DIExpression()), !dbg !3817
  %call = call i32 @rand() #12, !dbg !3818
  %conv = trunc i32 %call to i8, !dbg !3819
  call void @llvm.dbg.value(metadata i8 %conv, metadata !3805, metadata !DIExpression()), !dbg !3820
  %call1 = call i32 @rand() #12, !dbg !3821
  %rem = srem i32 %call1, 250, !dbg !3822
  %add2 = add nsw i32 %rem, 1, !dbg !3823
  %conv3 = sext i32 %add2 to i64, !dbg !3824
  call void @llvm.dbg.value(metadata i64 %conv3, metadata !3807, metadata !DIExpression()), !dbg !3820
  switch i8 %conv, label %sw.default [
    i8 2, label %sw.bb
    i8 18, label %sw.bb
    i8 3, label %sw.bb
    i8 19, label %sw.bb
    i8 1, label %sw.bb
    i8 17, label %sw.bb
    i8 14, label %sw.bb7
    i8 25, label %sw.bb7
    i8 15, label %sw.bb7
    i8 26, label %sw.bb7
    i8 8, label %sw.bb12
    i8 24, label %sw.bb12
    i8 10, label %sw.bb16
    i8 4, label %sw.bb20
    i8 20, label %sw.bb20
    i8 6, label %sw.bb25
    i8 22, label %sw.bb25
    i8 5, label %sw.bb25
    i8 21, label %sw.bb25
    i8 11, label %sw.bb30
    i8 0, label %sw.bb34
    i8 12, label %sw.bb34
    i8 13, label %sw.bb34
    i8 9, label %sw.bb34
    i8 28, label %sw.bb39
    i8 29, label %sw.bb39
    i8 30, label %sw.bb39
    i8 35, label %sw.bb39
    i8 36, label %sw.bb39
    i8 16, label %sw.bb44
    i8 32, label %sw.bb48
    i8 33, label %sw.bb48
    i8 34, label %sw.bb48
    i8 23, label %sw.bb48
    i8 7, label %sw.bb48
  ], !dbg !3825

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  call void @llvm.dbg.value(metadata i64* %value, metadata !3795, metadata !DIExpression(DW_OP_deref)), !dbg !3808
  %call6 = call fastcc i64 @storage_command(i8* noundef nonnull %3, i64 noundef 66560, i8 noundef zeroext %conv, i8* noundef nonnull %0, i64 noundef %conv3, i8* noundef nonnull %1, i64 noundef 8) #16, !dbg !3826
  call void @llvm.dbg.value(metadata i64 %call6, metadata !3806, metadata !DIExpression()), !dbg !3820
  br label %sw.epilog, !dbg !3828

sw.bb7:                                           ; preds = %while.body, %while.body, %while.body, %while.body
  call void @llvm.dbg.value(metadata i64* %value, metadata !3795, metadata !DIExpression(DW_OP_deref)), !dbg !3808
  %call11 = call fastcc i64 @raw_command(i8* noundef nonnull %3, i64 noundef 66560, i8 noundef zeroext %conv, i8* noundef nonnull %0, i64 noundef %conv3, i8* noundef nonnull %1, i64 noundef 8) #16, !dbg !3829
  call void @llvm.dbg.value(metadata i64 %call11, metadata !3806, metadata !DIExpression()), !dbg !3820
  br label %sw.epilog, !dbg !3830

sw.bb12:                                          ; preds = %while.body, %while.body
  %call15 = call fastcc i64 @raw_command(i8* noundef nonnull %3, i64 noundef 66560, i8 noundef zeroext %conv, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #16, !dbg !3831
  call void @llvm.dbg.value(metadata i64 %call15, metadata !3806, metadata !DIExpression()), !dbg !3820
  br label %sw.epilog, !dbg !3832

sw.bb16:                                          ; preds = %while.body
  %call19 = call fastcc i64 @raw_command(i8* noundef nonnull %3, i64 noundef 66560, i8 noundef zeroext 10, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #16, !dbg !3833
  call void @llvm.dbg.value(metadata i64 %call19, metadata !3806, metadata !DIExpression()), !dbg !3820
  br label %sw.epilog, !dbg !3834

sw.bb20:                                          ; preds = %while.body, %while.body
  %call24 = call fastcc i64 @raw_command(i8* noundef nonnull %3, i64 noundef 66560, i8 noundef zeroext %conv, i8* noundef nonnull %0, i64 noundef %conv3, i8* noundef null, i64 noundef 0) #16, !dbg !3835
  call void @llvm.dbg.value(metadata i64 %call24, metadata !3806, metadata !DIExpression()), !dbg !3820
  br label %sw.epilog, !dbg !3836

sw.bb25:                                          ; preds = %while.body, %while.body, %while.body, %while.body
  %call29 = call fastcc i64 @arithmetic_command(i8* noundef nonnull %3, i64 noundef 66560, i8 noundef zeroext %conv, i8* noundef nonnull %0, i64 noundef %conv3, i64 noundef 0) #16, !dbg !3837
  call void @llvm.dbg.value(metadata i64 %call29, metadata !3806, metadata !DIExpression()), !dbg !3820
  br label %sw.epilog, !dbg !3838

sw.bb30:                                          ; preds = %while.body
  %call33 = call fastcc i64 @raw_command(i8* noundef nonnull %3, i64 noundef 66560, i8 noundef zeroext 11, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #16, !dbg !3839
  call void @llvm.dbg.value(metadata i64 %call33, metadata !3806, metadata !DIExpression()), !dbg !3820
  br label %sw.epilog, !dbg !3840

sw.bb34:                                          ; preds = %while.body, %while.body, %while.body, %while.body
  %call38 = call fastcc i64 @raw_command(i8* noundef nonnull %3, i64 noundef 66560, i8 noundef zeroext %conv, i8* noundef nonnull %0, i64 noundef %conv3, i8* noundef null, i64 noundef 0) #16, !dbg !3841
  call void @llvm.dbg.value(metadata i64 %call38, metadata !3806, metadata !DIExpression()), !dbg !3820
  br label %sw.epilog, !dbg !3842

sw.bb39:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body
  %call43 = call fastcc i64 @touch_command(i8* noundef nonnull %3, i8 noundef zeroext %conv, i8* noundef nonnull %0, i64 noundef %conv3) #16, !dbg !3843
  call void @llvm.dbg.value(metadata i64 %call43, metadata !3806, metadata !DIExpression()), !dbg !3820
  br label %sw.epilog, !dbg !3844

sw.bb44:                                          ; preds = %while.body
  %call47 = call fastcc i64 @raw_command(i8* noundef nonnull %3, i64 noundef 66560, i8 noundef zeroext 16, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #16, !dbg !3845
  call void @llvm.dbg.value(metadata i64 %call47, metadata !3806, metadata !DIExpression()), !dbg !3820
  br label %sw.epilog, !dbg !3846

sw.bb48:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body
  %conv50 = or i8 %conv, -16, !dbg !3847
  call void @llvm.dbg.value(metadata i8 %conv50, metadata !3805, metadata !DIExpression()), !dbg !3820
  br label %sw.default, !dbg !3848

sw.default:                                       ; preds = %while.body, %sw.bb48
  %cmd.0 = phi i8 [ %conv, %while.body ], [ %conv50, %sw.bb48 ], !dbg !3820
  call void @llvm.dbg.value(metadata i8 %cmd.0, metadata !3805, metadata !DIExpression()), !dbg !3820
  %call53 = call fastcc i64 @raw_command(i8* noundef nonnull %3, i64 noundef 66560, i8 noundef zeroext %cmd.0, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #16, !dbg !3849
  call void @llvm.dbg.value(metadata i64 %call53, metadata !3806, metadata !DIExpression()), !dbg !3820
  br label %sw.epilog, !dbg !3850

sw.epilog:                                        ; preds = %sw.default, %sw.bb44, %sw.bb39, %sw.bb34, %sw.bb30, %sw.bb25, %sw.bb20, %sw.bb16, %sw.bb12, %sw.bb7, %sw.bb
  %len.0 = phi i64 [ %call53, %sw.default ], [ %call47, %sw.bb44 ], [ %call43, %sw.bb39 ], [ %call38, %sw.bb34 ], [ %call33, %sw.bb30 ], [ %call29, %sw.bb25 ], [ %call24, %sw.bb20 ], [ %call19, %sw.bb16 ], [ %call15, %sw.bb12 ], [ %call11, %sw.bb7 ], [ %call6, %sw.bb ], !dbg !3851
  call void @llvm.dbg.value(metadata i64 %len.0, metadata !3806, metadata !DIExpression()), !dbg !3820
  %add54 = add i64 %len.0, %offset.07, !dbg !3852
  %cmp55 = icmp ult i64 %add54, 66560, !dbg !3854
  br i1 %cmp55, label %cleanup, label %cleanup.thread, !dbg !3855

cleanup.thread:                                   ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata i64 undef, metadata !3792, metadata !DIExpression()), !dbg !3808
  call void @llvm.lifetime.end.p0i8(i64 66560, i8* nonnull %3) #14, !dbg !3856
  br label %while.end

cleanup:                                          ; preds = %sw.epilog
  %add.ptr = getelementptr inbounds i8, i8* %buffer, i64 %offset.07, !dbg !3857
  %call59 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef nonnull %3, i64 noundef %len.0) #12, !dbg !3859
  call void @llvm.dbg.value(metadata i64 %add54, metadata !3792, metadata !DIExpression()), !dbg !3808
  call void @llvm.lifetime.end.p0i8(i64 66560, i8* nonnull %3) #14, !dbg !3856
  %4 = load volatile i8, i8* @hickup_thread_running, align 1, !dbg !3813, !tbaa !1693, !range !3814
  %tobool = icmp ne i8 %4, 0, !dbg !3813
  %cmp = icmp ult i64 %add54, 66536, !dbg !3860
  %5 = select i1 %tobool, i1 %cmp, i1 false, !dbg !3860
  br i1 %5, label %while.body, label %while.end, !dbg !3815

while.end:                                        ; preds = %cleanup, %entry, %cleanup.thread
  %offset.05 = phi i64 [ %offset.07, %cleanup.thread ], [ 0, %entry ], [ %add54, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %offset.05, metadata !3792, metadata !DIExpression()), !dbg !3808
  call fastcc void @safe_send(i8* noundef %buffer, i64 noundef %offset.05, i1 noundef zeroext true) #16, !dbg !3861
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14, !dbg !3862
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %0) #14, !dbg !3862
  ret void, !dbg !3863
}

declare !dbg !3864 dso_local i32 @pthread_join(i64 noundef, i8** noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @touch_command(i8* noundef %buf, i8 noundef zeroext %cmd, i8* noundef %key, i64 noundef %keylen) unnamed_addr #0 !dbg !3868 {
entry:
  call void @llvm.dbg.value(metadata i8* %buf, metadata !3872, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i64 66560, metadata !3873, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8 %cmd, metadata !3874, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8* %key, metadata !3875, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i64 %keylen, metadata !3876, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i32 10, metadata !3877, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8* %buf, metadata !3878, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8* %buf, metadata !3878, metadata !DIExpression()), !dbg !3893
  %call = tail call i8* @memset(i8* noundef %buf, i32 noundef 0, i64 noundef 32) #12, !dbg !3894
  store i8 -128, i8* %buf, align 8, !dbg !3895, !tbaa !416
  %0 = getelementptr inbounds i8, i8* %buf, i64 1, !dbg !3896
  store i8 %cmd, i8* %0, align 1, !dbg !3897, !tbaa !416
  %conv = trunc i64 %keylen to i16, !dbg !3898
  %call5 = tail call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %conv) #16, !dbg !3898
  %keylen9 = getelementptr inbounds i8, i8* %buf, i64 2, !dbg !3899
  %1 = bitcast i8* %keylen9 to i16*, !dbg !3899
  store i16 %call5, i16* %1, align 2, !dbg !3900, !tbaa !416
  %2 = getelementptr inbounds i8, i8* %buf, i64 4, !dbg !3901
  store i8 4, i8* %2, align 4, !dbg !3902, !tbaa !416
  %call13 = tail call fastcc i32 @__bswap_32(i32 noundef 10) #16, !dbg !3903
  %body = getelementptr inbounds i8, i8* %buf, i64 24, !dbg !3904
  %expiration = bitcast i8* %body to i32*, !dbg !3905
  store i32 %call13, i32* %expiration, align 8, !dbg !3906, !tbaa !416
  %3 = trunc i64 %keylen to i32, !dbg !3907
  %conv15 = add i32 %3, 4, !dbg !3907
  %call16 = tail call fastcc i32 @__bswap_32(i32 noundef %conv15) #16, !dbg !3907
  %bodylen = getelementptr inbounds i8, i8* %buf, i64 8, !dbg !3908
  %4 = bitcast i8* %bodylen to i32*, !dbg !3908
  store i32 %call16, i32* %4, align 8, !dbg !3909, !tbaa !416
  %opaque = getelementptr inbounds i8, i8* %buf, i64 12, !dbg !3910
  %5 = bitcast i8* %opaque to i32*, !dbg !3910
  store i32 -559038737, i32* %5, align 4, !dbg !3911, !tbaa !416
  call void @llvm.dbg.value(metadata i64 28, metadata !3892, metadata !DIExpression()), !dbg !3893
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 28, !dbg !3912
  %call23 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %key, i64 noundef %keylen) #12, !dbg !3913
  %add24 = add i64 %keylen, 28, !dbg !3914
  ret i64 %add24, !dbg !3915
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "testcases", scope: !2, file: !3, line: 2248, type: !179, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !145, globals: !156, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "testapp.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "17d65064597a8305c334fe76bc0da477")
!4 = !{!5, !11, !74, !125, !138, !142}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "test_return", file: !3, line: 35, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "TEST_SKIP", value: 0)
!9 = !DIEnumerator(name: "TEST_PASS", value: 1)
!10 = !DIEnumerator(name: "TEST_FAIL", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !12, file: !3, line: 2159, baseType: !6, size: 32, elements: !72)
!12 = distinct !DISubprogram(name: "test_issue_101", scope: !3, file: !3, line: 2158, type: !13, scopeLine: 2158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !15)
!13 = !DISubroutineType(types: !14)
!14 = !{!5}
!15 = !{!16, !17, !45, !46, !50, !54, !55, !60, !62, !66, !67, !71}
!16 = !DILocalVariable(name: "ret", scope: !12, file: !3, line: 2160, type: !5)
!17 = !DILocalVariable(name: "conns", scope: !12, file: !3, line: 2161, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !43)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn", file: !3, line: 37, size: 192, elements: !21)
!21 = !{!22, !24, !37}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !20, file: !3, line: 38, baseType: !23, size: 32)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !20, file: !3, line: 43, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !19, !33, !34}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !29, line: 108, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !31, line: 193, baseType: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!32 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !20, file: !3, line: 44, baseType: !38, size: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!28, !19, !41, !34}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!43 = !{!44}
!44 = !DISubrange(count: 2)
!45 = !DILocalVariable(name: "ii", scope: !12, file: !3, line: 2162, type: !23)
!46 = !DILocalVariable(name: "child", scope: !12, file: !3, line: 2163, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !48, line: 38, baseType: !49)
!48 = !DIFile(filename: "/usr/include/sched.h", directory: "", checksumkind: CSK_MD5, checksum: "58e12bcb11143fdc5cf2ef5376462456")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !31, line: 154, baseType: !23)
!50 = !DILocalVariable(name: "command", scope: !12, file: !3, line: 2169, type: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DILocalVariable(name: "cmdlen", scope: !12, file: !3, line: 2170, type: !34)
!55 = !DILocalVariable(name: "more", scope: !56, file: !3, line: 2183, type: !59)
!56 = distinct !DILexicalBlock(scope: !57, file: !3, line: 2182, column: 34)
!57 = distinct !DILexicalBlock(scope: !58, file: !3, line: 2182, column: 5)
!58 = distinct !DILexicalBlock(scope: !12, file: !3, line: 2182, column: 5)
!59 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!60 = !DILocalVariable(name: "err", scope: !61, file: !3, line: 2185, type: !28)
!61 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2184, column: 12)
!62 = !DILocalVariable(name: "stat", scope: !63, file: !3, line: 2206, type: !23)
!63 = distinct !DILexicalBlock(scope: !64, file: !3, line: 2205, column: 27)
!64 = distinct !DILexicalBlock(scope: !65, file: !3, line: 2205, column: 16)
!65 = distinct !DILexicalBlock(scope: !12, file: !3, line: 2203, column: 9)
!66 = !DILocalVariable(name: "c", scope: !63, file: !3, line: 2207, type: !47)
!67 = !DILocalVariable(name: "c", scope: !68, file: !3, line: 2222, type: !19)
!68 = distinct !DILexicalBlock(scope: !69, file: !3, line: 2221, column: 34)
!69 = distinct !DILexicalBlock(scope: !70, file: !3, line: 2221, column: 5)
!70 = distinct !DILexicalBlock(scope: !12, file: !3, line: 2221, column: 5)
!71 = !DILabel(scope: !12, name: "cleanup", file: !3, line: 2219)
!72 = !{!73}
!73 = !DIEnumerator(name: "max", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 80, baseType: !6, size: 32, elements: !76)
!75 = !DIFile(filename: "./protocol_binary.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "7a322a65fa8661e9a597acbeeeb23107")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124}
!77 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_GET", value: 0)
!78 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_SET", value: 1)
!79 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_ADD", value: 2)
!80 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_REPLACE", value: 3)
!81 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_DELETE", value: 4)
!82 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_INCREMENT", value: 5)
!83 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_DECREMENT", value: 6)
!84 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_QUIT", value: 7)
!85 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_FLUSH", value: 8)
!86 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_GETQ", value: 9)
!87 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_NOOP", value: 10)
!88 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_VERSION", value: 11)
!89 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_GETK", value: 12)
!90 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_GETKQ", value: 13)
!91 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_APPEND", value: 14)
!92 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_PREPEND", value: 15)
!93 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_STAT", value: 16)
!94 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_SETQ", value: 17)
!95 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_ADDQ", value: 18)
!96 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_REPLACEQ", value: 19)
!97 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_DELETEQ", value: 20)
!98 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_INCREMENTQ", value: 21)
!99 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_DECREMENTQ", value: 22)
!100 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_QUITQ", value: 23)
!101 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_FLUSHQ", value: 24)
!102 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_APPENDQ", value: 25)
!103 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_PREPENDQ", value: 26)
!104 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_TOUCH", value: 28)
!105 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_GAT", value: 29)
!106 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_GATQ", value: 30)
!107 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_GATK", value: 35)
!108 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_GATKQ", value: 36)
!109 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_SASL_LIST_MECHS", value: 32)
!110 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_SASL_AUTH", value: 33)
!111 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_SASL_STEP", value: 34)
!112 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RGET", value: 48)
!113 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RSET", value: 49)
!114 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RSETQ", value: 50)
!115 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RAPPEND", value: 51)
!116 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RAPPENDQ", value: 52)
!117 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RPREPEND", value: 53)
!118 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RPREPENDQ", value: 54)
!119 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RDELETE", value: 55)
!120 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RDELETEQ", value: 56)
!121 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RINCR", value: 57)
!122 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RINCRQ", value: 58)
!123 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RDECR", value: 59)
!124 = !DIEnumerator(name: "PROTOCOL_BINARY_CMD_RDECRQ", value: 60)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 62, baseType: !6, size: 32, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
!127 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_SUCCESS", value: 0)
!128 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_KEY_ENOENT", value: 1)
!129 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS", value: 2)
!130 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_E2BIG", value: 3)
!131 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_EINVAL", value: 4)
!132 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_NOT_STORED", value: 5)
!133 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_DELTA_BADVAL", value: 6)
!134 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_AUTH_ERROR", value: 32)
!135 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_AUTH_CONTINUE", value: 33)
!136 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND", value: 129)
!137 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_ENOMEM", value: 130)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 53, baseType: !6, size: 32, elements: !139)
!139 = !{!140, !141}
!140 = !DIEnumerator(name: "PROTOCOL_BINARY_REQ", value: 128)
!141 = !DIEnumerator(name: "PROTOCOL_BINARY_RES", value: 129)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 143, baseType: !6, size: 32, elements: !143)
!143 = !{!144}
!144 = !DIEnumerator(name: "PROTOCOL_BINARY_RAW_BYTES", value: 0)
!145 = !{!33, !32, !146, !47, !19, !6, !150, !152, !23, !153}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !147, line: 119, baseType: !148)
!147 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "6a5254a491bcdb8c3253de75bf3571c1")
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !149, line: 25, baseType: !150)
!149 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !31, line: 40, baseType: !151)
!151 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !149, line: 24, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !31, line: 38, baseType: !155)
!155 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!156 = !{!0, !157, !166, !169, !171, !173, !175, !177}
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "hash", scope: !2, file: !3, line: 47, type: !159, isLocal: false, isDefinition: true)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_func", file: !160, line: 4, baseType: !161)
!160 = !DIFile(filename: "./hash.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "7bf64ed462fb4e5d2a6ceb2b3243c634")
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !41, !34}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !149, line: 26, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !31, line: 42, baseType: !6)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "hickup_thread_running", scope: !2, file: !3, line: 1996, type: !168, isLocal: false, isDefinition: true)
!168 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !59)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "port", scope: !2, file: !3, line: 78, type: !146, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "server_pid", scope: !2, file: !3, line: 77, type: !47, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "enable_ssl", scope: !2, file: !3, line: 81, type: !59, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "con", scope: !2, file: !3, line: 79, type: !19, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "allow_closed_read", scope: !2, file: !3, line: 80, type: !59, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 7296, elements: !186)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "testcase", file: !3, line: 2243, size: 128, elements: !181)
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !180, file: !3, line: 2244, baseType: !51, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !180, file: !3, line: 2245, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEST_FUNC", file: !3, line: 2242, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!186 = !{!187}
!187 = !DISubrange(count: 57)
!188 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!189 = !{i32 7, !"Dwarf Version", i32 5}
!190 = !{i32 2, !"Debug Info Version", i32 3}
!191 = !{i32 1, !"wchar_size", i32 4}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{!"clang version 14.0.0"}
!194 = distinct !DISubprogram(name: "cache_create_test", scope: !3, file: !3, line: 98, type: !13, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !195)
!195 = !{!196}
!196 = !DILocalVariable(name: "cache", scope: !194, file: !3, line: 100, type: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_t", file: !199, line: 39, baseType: !200)
!199 = !DIFile(filename: "./cache.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d97639c8540587a19d8550d7d7156448")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 22, size: 704, elements: !201)
!201 = !{!202, !232, !233, !246, !247, !248, !249, !250}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !200, file: !199, line: 24, baseType: !203, size: 320)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !204, line: 72, baseType: !205)
!204 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !204, line: 67, size: 320, elements: !206)
!206 = !{!207, !227, !231}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !205, file: !204, line: 69, baseType: !208, size: 320)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !209, line: 22, size: 320, elements: !210)
!209 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!210 = !{!211, !212, !213, !214, !215, !216, !218, !219}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !208, file: !209, line: 24, baseType: !23, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !208, file: !209, line: 25, baseType: !6, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !208, file: !209, line: 26, baseType: !23, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !208, file: !209, line: 28, baseType: !6, size: 32, offset: 96)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !208, file: !209, line: 32, baseType: !23, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !208, file: !209, line: 34, baseType: !217, size: 16, offset: 160)
!217 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !208, file: !209, line: 35, baseType: !217, size: 16, offset: 176)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !208, file: !209, line: 36, baseType: !220, size: 128, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !221, line: 53, baseType: !222)
!221 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !221, line: 49, size: 128, elements: !223)
!223 = !{!224, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !222, file: !221, line: 51, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !222, file: !221, line: 52, baseType: !225, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !205, file: !204, line: 70, baseType: !228, size: 320)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 320, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 40)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !205, file: !204, line: 71, baseType: !32, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !199, line: 26, baseType: !152, size: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !200, file: !199, line: 28, baseType: !234, size: 128, offset: 384)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_head", file: !199, line: 28, size: 128, elements: !235)
!235 = !{!236, !244}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !234, file: !199, line: 28, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_free_s", file: !199, line: 12, size: 64, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "c_next", scope: !238, file: !199, line: 13, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !238, file: !199, line: 13, size: 64, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !241, file: !199, line: 13, baseType: !237, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !234, file: !199, line: 28, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !200, file: !199, line: 30, baseType: !34, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "freetotal", scope: !200, file: !199, line: 32, baseType: !23, size: 32, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !200, file: !199, line: 34, baseType: !23, size: 32, offset: 608)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "freecurr", scope: !200, file: !199, line: 36, baseType: !23, size: 32, offset: 640)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !200, file: !199, line: 38, baseType: !23, size: 32, offset: 672)
!251 = !DILocation(line: 100, column: 22, scope: !194)
!252 = !DILocation(line: 0, scope: !194)
!253 = !DILocation(line: 101, column: 5, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 101, column: 5)
!255 = distinct !DILexicalBlock(scope: !194, file: !3, line: 101, column: 5)
!256 = !DILocation(line: 101, column: 5, scope: !255)
!257 = !DILocation(line: 102, column: 5, scope: !194)
!258 = !DILocation(line: 103, column: 5, scope: !194)
!259 = distinct !DISubprogram(name: "cache_reuse_test", scope: !3, file: !3, line: 106, type: !13, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !260)
!260 = !{!261, !262, !263, !264}
!261 = !DILocalVariable(name: "ii", scope: !259, file: !3, line: 108, type: !23)
!262 = !DILocalVariable(name: "cache", scope: !259, file: !3, line: 109, type: !197)
!263 = !DILocalVariable(name: "ptr", scope: !259, file: !3, line: 113, type: !152)
!264 = !DILocalVariable(name: "p", scope: !265, file: !3, line: 116, type: !152)
!265 = distinct !DILexicalBlock(scope: !266, file: !3, line: 115, column: 34)
!266 = distinct !DILexicalBlock(scope: !267, file: !3, line: 115, column: 5)
!267 = distinct !DILexicalBlock(scope: !259, file: !3, line: 115, column: 5)
!268 = !DILocation(line: 109, column: 22, scope: !259)
!269 = !DILocation(line: 0, scope: !259)
!270 = !DILocation(line: 110, column: 15, scope: !271)
!271 = distinct !DILexicalBlock(scope: !259, file: !3, line: 110, column: 9)
!272 = !DILocation(line: 110, column: 9, scope: !259)
!273 = !DILocation(line: 113, column: 17, scope: !259)
!274 = !DILocation(line: 114, column: 5, scope: !259)
!275 = !DILocation(line: 115, column: 5, scope: !267)
!276 = !DILocation(line: 116, column: 19, scope: !265)
!277 = !DILocation(line: 0, scope: !265)
!278 = !DILocation(line: 117, column: 9, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !3, line: 117, column: 9)
!280 = distinct !DILexicalBlock(scope: !265, file: !3, line: 117, column: 9)
!281 = !DILocation(line: 117, column: 9, scope: !280)
!282 = !DILocation(line: 118, column: 9, scope: !265)
!283 = !DILocation(line: 115, column: 28, scope: !266)
!284 = !DILocation(line: 115, column: 21, scope: !266)
!285 = distinct !{!285, !275, !286, !287}
!286 = !DILocation(line: 119, column: 5, scope: !267)
!287 = !{!"llvm.loop.mustprogress"}
!288 = !DILocation(line: 120, column: 5, scope: !259)
!289 = !DILocation(line: 122, column: 1, scope: !259)
!290 = distinct !DISubprogram(name: "cache_redzone_test", scope: !3, file: !3, line: 159, type: !13, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !291)
!291 = !{!292, !293, !398, !399, !400}
!292 = !DILocalVariable(name: "cache", scope: !290, file: !3, line: 162, type: !197)
!293 = !DILocalVariable(name: "old_action", scope: !290, file: !3, line: 168, type: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !295, line: 27, size: 1216, elements: !296)
!295 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "", checksumkind: CSK_MD5, checksum: "1805cae78f5d4b57699d05e93bbc6a62")
!296 = !{!297, !384, !393, !394}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !294, file: !295, line: 38, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !294, file: !295, line: 31, size: 64, elements: !299)
!299 = !{!300, !306}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !298, file: !295, line: 34, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !302, line: 72, baseType: !303)
!302 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ccc98b488c777571beae1a47763d91")
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !23}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !298, file: !295, line: 36, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !23, !310, !33}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !312, line: 124, baseType: !313)
!312 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h", directory: "", checksumkind: CSK_MD5, checksum: "023cf7b0ef843da262cf07900eda0ac5")
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !312, line: 36, size: 1024, elements: !314)
!314 = !{!315, !316, !317, !318, !319}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !313, file: !312, line: 38, baseType: !23, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !313, file: !312, line: 40, baseType: !23, size: 32, offset: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !313, file: !312, line: 42, baseType: !23, size: 32, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !313, file: !312, line: 48, baseType: !23, size: 32, offset: 96)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !313, file: !312, line: 123, baseType: !320, size: 896, offset: 128)
!320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !312, line: 51, size: 896, elements: !321)
!321 = !{!322, !326, !332, !344, !350, !359, !373, !378}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !320, file: !312, line: 53, baseType: !323, size: 896)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 896, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 28)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !320, file: !312, line: 60, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !312, line: 56, size: 64, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !327, file: !312, line: 58, baseType: !49, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !327, file: !312, line: 59, baseType: !331, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !31, line: 146, baseType: !6)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !320, file: !312, line: 68, baseType: !333, size: 128)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !312, line: 63, size: 128, elements: !334)
!334 = !{!335, !336, !337}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !333, file: !312, line: 65, baseType: !23, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !333, file: !312, line: 66, baseType: !23, size: 32, offset: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !333, file: !312, line: 67, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !339, line: 30, baseType: !340)
!339 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h", directory: "", checksumkind: CSK_MD5, checksum: "b8454a73bc9e55d1e2fd22e496f3e023")
!340 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !339, line: 24, size: 64, elements: !341)
!341 = !{!342, !343}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !340, file: !339, line: 26, baseType: !23, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !340, file: !339, line: 27, baseType: !33, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !320, file: !312, line: 76, baseType: !345, size: 128)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !312, line: 71, size: 128, elements: !346)
!346 = !{!347, !348, !349}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !345, file: !312, line: 73, baseType: !49, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !345, file: !312, line: 74, baseType: !331, size: 32, offset: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !345, file: !312, line: 75, baseType: !338, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !320, file: !312, line: 86, baseType: !351, size: 256)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !312, line: 79, size: 256, elements: !352)
!352 = !{!353, !354, !355, !356, !358}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !351, file: !312, line: 81, baseType: !49, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !351, file: !312, line: 82, baseType: !331, size: 32, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !351, file: !312, line: 83, baseType: !23, size: 32, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !351, file: !312, line: 84, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !31, line: 156, baseType: !32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !351, file: !312, line: 85, baseType: !357, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !320, file: !312, line: 105, baseType: !360, size: 256)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !312, line: 89, size: 256, elements: !361)
!361 = !{!362, !363, !364}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !360, file: !312, line: 91, baseType: !33, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !360, file: !312, line: 93, baseType: !217, size: 16, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !360, file: !312, line: 104, baseType: !365, size: 128, offset: 128)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !312, line: 94, size: 128, elements: !366)
!366 = !{!367, !372}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !365, file: !312, line: 101, baseType: !368, size: 128)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !365, file: !312, line: 97, size: 128, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !368, file: !312, line: 99, baseType: !33, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !368, file: !312, line: 100, baseType: !33, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !365, file: !312, line: 103, baseType: !165, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !320, file: !312, line: 112, baseType: !374, size: 128)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !312, line: 108, size: 128, elements: !375)
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !374, file: !312, line: 110, baseType: !32, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !374, file: !312, line: 111, baseType: !23, size: 32, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !320, file: !312, line: 121, baseType: !379, size: 128)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !312, line: 116, size: 128, elements: !380)
!380 = !{!381, !382, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !379, file: !312, line: 118, baseType: !33, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !379, file: !312, line: 119, baseType: !23, size: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !379, file: !312, line: 120, baseType: !6, size: 32, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !294, file: !295, line: 46, baseType: !385, size: 1024, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !386, line: 8, baseType: !387)
!386 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !386, line: 5, size: 1024, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !387, file: !386, line: 7, baseType: !390, size: 1024)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 1024, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 16)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !294, file: !295, line: 49, baseType: !23, size: 32, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !294, file: !295, line: 52, baseType: !395, size: 64, offset: 1152)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null}
!398 = !DILocalVariable(name: "action", scope: !290, file: !3, line: 169, type: !294)
!399 = !DILocalVariable(name: "p", scope: !290, file: !3, line: 174, type: !152)
!400 = !DILocalVariable(name: "old", scope: !290, file: !3, line: 175, type: !53)
!401 = !DILocation(line: 162, column: 22, scope: !290)
!402 = !DILocation(line: 0, scope: !290)
!403 = !DILocation(line: 164, column: 15, scope: !404)
!404 = distinct !DILexicalBlock(scope: !290, file: !3, line: 164, column: 9)
!405 = !DILocation(line: 164, column: 9, scope: !290)
!406 = !DILocation(line: 168, column: 5, scope: !290)
!407 = !DILocation(line: 168, column: 22, scope: !290)
!408 = !DILocation(line: 169, column: 5, scope: !290)
!409 = !DILocation(line: 169, column: 22, scope: !290)
!410 = !DILocation(line: 170, column: 25, scope: !290)
!411 = !DILocation(line: 170, column: 5, scope: !290)
!412 = !DILocation(line: 171, column: 5, scope: !290)
!413 = !DILocation(line: 174, column: 15, scope: !290)
!414 = !DILocation(line: 175, column: 20, scope: !290)
!415 = !DILocation(line: 175, column: 16, scope: !290)
!416 = !{!417, !417, i64 0}
!417 = !{!"omnipotent char", !418, i64 0}
!418 = !{!"Simple C/C++ TBAA"}
!419 = !DILocation(line: 176, column: 14, scope: !290)
!420 = !DILocation(line: 177, column: 5, scope: !290)
!421 = !DILocation(line: 178, column: 5, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !3, line: 178, column: 5)
!423 = distinct !DILexicalBlock(scope: !290, file: !3, line: 178, column: 5)
!424 = !{!425, !425, i64 0}
!425 = !{!"int", !417, i64 0}
!426 = !DILocation(line: 178, column: 5, scope: !423)
!427 = !DILocation(line: 179, column: 14, scope: !290)
!428 = !DILocation(line: 181, column: 5, scope: !290)
!429 = !DILocation(line: 181, column: 25, scope: !290)
!430 = !DILocation(line: 182, column: 5, scope: !290)
!431 = !DILocation(line: 183, column: 5, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !3, line: 183, column: 5)
!433 = distinct !DILexicalBlock(scope: !290, file: !3, line: 183, column: 5)
!434 = !DILocation(line: 183, column: 5, scope: !433)
!435 = !DILocation(line: 186, column: 5, scope: !290)
!436 = !DILocation(line: 188, column: 5, scope: !290)
!437 = !DILocation(line: 194, column: 1, scope: !290)
!438 = distinct !DISubprogram(name: "cache_limit_revised_downward_test", scope: !3, file: !3, line: 196, type: !13, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !439)
!439 = !{!440, !441, !442, !443, !445}
!440 = !DILocalVariable(name: "limit", scope: !438, file: !3, line: 198, type: !23)
!441 = !DILocalVariable(name: "allocated_num", scope: !438, file: !3, line: 198, type: !23)
!442 = !DILocalVariable(name: "i", scope: !438, file: !3, line: 198, type: !23)
!443 = !DILocalVariable(name: "alloc_objs", scope: !438, file: !3, line: 199, type: !444)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!445 = !DILocalVariable(name: "cache", scope: !438, file: !3, line: 201, type: !197)
!446 = !DILocation(line: 0, scope: !438)
!447 = !DILocation(line: 199, column: 26, scope: !438)
!448 = !DILocation(line: 201, column: 22, scope: !438)
!449 = !DILocation(line: 202, column: 5, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !3, line: 202, column: 5)
!451 = distinct !DILexicalBlock(scope: !438, file: !3, line: 202, column: 5)
!452 = !DILocation(line: 202, column: 5, scope: !451)
!453 = !DILocation(line: 206, column: 25, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !3, line: 205, column: 41)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 205, column: 5)
!456 = distinct !DILexicalBlock(scope: !438, file: !3, line: 205, column: 5)
!457 = !DILocation(line: 206, column: 23, scope: !454)
!458 = !{!459, !459, i64 0}
!459 = !{!"any pointer", !417, i64 0}
!460 = !DILocation(line: 207, column: 9, scope: !461)
!461 = distinct !DILexicalBlock(scope: !462, file: !3, line: 207, column: 9)
!462 = distinct !DILexicalBlock(scope: !454, file: !3, line: 207, column: 9)
!463 = !DILocation(line: 207, column: 9, scope: !462)
!464 = !DILocation(line: 206, column: 9, scope: !454)
!465 = !DILocation(line: 209, column: 5, scope: !466)
!466 = distinct !DILexicalBlock(scope: !467, file: !3, line: 209, column: 5)
!467 = distinct !DILexicalBlock(scope: !438, file: !3, line: 209, column: 5)
!468 = !{!469, !425, i64 76}
!469 = !{!"", !417, i64 0, !459, i64 40, !470, i64 48, !471, i64 64, !425, i64 72, !425, i64 76, !425, i64 80, !425, i64 84}
!470 = !{!"cache_head", !459, i64 0, !459, i64 8}
!471 = !{!"long", !417, i64 0}
!472 = !DILocation(line: 209, column: 5, scope: !467)
!473 = !DILocation(line: 212, column: 5, scope: !438)
!474 = !DILocation(line: 215, column: 5, scope: !438)
!475 = !DILocation(line: 217, column: 5, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !3, line: 217, column: 5)
!477 = distinct !DILexicalBlock(scope: !438, file: !3, line: 217, column: 5)
!478 = !DILocation(line: 217, column: 5, scope: !477)
!479 = !DILocation(line: 218, column: 5, scope: !438)
!480 = !DILocation(line: 220, column: 5, scope: !438)
!481 = !DILocation(line: 222, column: 5, scope: !438)
!482 = distinct !DISubprogram(name: "test_stats_prefix_find", scope: !3, file: !3, line: 225, type: !13, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !483)
!483 = !{!484, !499}
!484 = !DILocalVariable(name: "pfs1", scope: !482, file: !3, line: 226, type: !485)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "PREFIX_STATS", file: !487, line: 41, baseType: !488)
!487 = !DIFile(filename: "./stats_prefix.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "c26de3f3a40668b5f799218415be0cc4")
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_prefix_stats", file: !487, line: 42, size: 448, elements: !489)
!489 = !{!490, !491, !492, !495, !496, !497, !498}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !488, file: !487, line: 43, baseType: !152, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_len", scope: !488, file: !487, line: 44, baseType: !34, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "num_gets", scope: !488, file: !487, line: 45, baseType: !493, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !149, line: 27, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !31, line: 45, baseType: !36)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "num_sets", scope: !488, file: !487, line: 46, baseType: !493, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "num_deletes", scope: !488, file: !487, line: 47, baseType: !493, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "num_hits", scope: !488, file: !487, line: 48, baseType: !493, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !488, file: !487, line: 49, baseType: !485, size: 64, offset: 384)
!499 = !DILocalVariable(name: "pfs2", scope: !482, file: !3, line: 226, type: !485)
!500 = !DILocation(line: 228, column: 5, scope: !482)
!501 = !DILocation(line: 229, column: 12, scope: !482)
!502 = !DILocation(line: 0, scope: !482)
!503 = !DILocation(line: 230, column: 5, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !3, line: 230, column: 5)
!505 = distinct !DILexicalBlock(scope: !482, file: !3, line: 230, column: 5)
!506 = !DILocation(line: 230, column: 5, scope: !505)
!507 = !DILocation(line: 231, column: 12, scope: !482)
!508 = !DILocation(line: 232, column: 5, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !3, line: 232, column: 5)
!510 = distinct !DILexicalBlock(scope: !482, file: !3, line: 232, column: 5)
!511 = !DILocation(line: 232, column: 5, scope: !510)
!512 = !DILocation(line: 234, column: 12, scope: !482)
!513 = !DILocation(line: 235, column: 5, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !3, line: 235, column: 5)
!515 = distinct !DILexicalBlock(scope: !482, file: !3, line: 235, column: 5)
!516 = !DILocation(line: 235, column: 5, scope: !515)
!517 = !DILocation(line: 236, column: 5, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !3, line: 236, column: 5)
!519 = distinct !DILexicalBlock(scope: !482, file: !3, line: 236, column: 5)
!520 = !{!521, !471, i64 16}
!521 = !{!"_prefix_stats", !459, i64 0, !471, i64 8, !471, i64 16, !471, i64 24, !471, i64 32, !471, i64 40, !459, i64 48}
!522 = !{!521, !471, i64 24}
!523 = !{!521, !471, i64 32}
!524 = !{!521, !471, i64 40}
!525 = !DILocation(line: 236, column: 5, scope: !519)
!526 = !DILocation(line: 237, column: 12, scope: !482)
!527 = !DILocation(line: 238, column: 5, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !3, line: 238, column: 5)
!529 = distinct !DILexicalBlock(scope: !482, file: !3, line: 238, column: 5)
!530 = !DILocation(line: 238, column: 5, scope: !529)
!531 = !DILocation(line: 239, column: 12, scope: !482)
!532 = !DILocation(line: 240, column: 5, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !3, line: 240, column: 5)
!534 = distinct !DILexicalBlock(scope: !482, file: !3, line: 240, column: 5)
!535 = !DILocation(line: 240, column: 5, scope: !534)
!536 = !DILocation(line: 241, column: 12, scope: !482)
!537 = !DILocation(line: 242, column: 5, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !3, line: 242, column: 5)
!539 = distinct !DILexicalBlock(scope: !482, file: !3, line: 242, column: 5)
!540 = !DILocation(line: 242, column: 5, scope: !539)
!541 = !DILocation(line: 243, column: 12, scope: !482)
!542 = !DILocation(line: 244, column: 5, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !3, line: 244, column: 5)
!544 = distinct !DILexicalBlock(scope: !482, file: !3, line: 244, column: 5)
!545 = !DILocation(line: 244, column: 5, scope: !544)
!546 = !DILocation(line: 245, column: 5, scope: !482)
!547 = distinct !DISubprogram(name: "test_stats_prefix_record_get", scope: !3, file: !3, line: 248, type: !13, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !548)
!548 = !{!549}
!549 = !DILocalVariable(name: "pfs", scope: !547, file: !3, line: 249, type: !485)
!550 = !DILocation(line: 250, column: 5, scope: !547)
!551 = !DILocation(line: 252, column: 5, scope: !547)
!552 = !DILocation(line: 253, column: 11, scope: !547)
!553 = !DILocation(line: 0, scope: !547)
!554 = !DILocation(line: 254, column: 13, scope: !555)
!555 = distinct !DILexicalBlock(scope: !547, file: !3, line: 254, column: 9)
!556 = !DILocation(line: 254, column: 9, scope: !547)
!557 = !DILocation(line: 257, column: 5, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !3, line: 257, column: 5)
!559 = distinct !DILexicalBlock(scope: !547, file: !3, line: 257, column: 5)
!560 = !DILocation(line: 257, column: 5, scope: !559)
!561 = !DILocation(line: 258, column: 5, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !3, line: 258, column: 5)
!563 = distinct !DILexicalBlock(scope: !547, file: !3, line: 258, column: 5)
!564 = !DILocation(line: 258, column: 5, scope: !563)
!565 = !DILocation(line: 259, column: 5, scope: !547)
!566 = !DILocation(line: 260, column: 5, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 260, column: 5)
!568 = distinct !DILexicalBlock(scope: !547, file: !3, line: 260, column: 5)
!569 = !DILocation(line: 260, column: 5, scope: !568)
!570 = !DILocation(line: 261, column: 5, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !3, line: 261, column: 5)
!572 = distinct !DILexicalBlock(scope: !547, file: !3, line: 261, column: 5)
!573 = !DILocation(line: 261, column: 5, scope: !572)
!574 = !DILocation(line: 262, column: 5, scope: !547)
!575 = !DILocation(line: 263, column: 5, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !3, line: 263, column: 5)
!577 = distinct !DILexicalBlock(scope: !547, file: !3, line: 263, column: 5)
!578 = !DILocation(line: 263, column: 5, scope: !577)
!579 = !DILocation(line: 264, column: 5, scope: !580)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 264, column: 5)
!581 = distinct !DILexicalBlock(scope: !547, file: !3, line: 264, column: 5)
!582 = !DILocation(line: 264, column: 5, scope: !581)
!583 = !DILocation(line: 265, column: 5, scope: !547)
!584 = !DILocation(line: 266, column: 5, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !3, line: 266, column: 5)
!586 = distinct !DILexicalBlock(scope: !547, file: !3, line: 266, column: 5)
!587 = !DILocation(line: 266, column: 5, scope: !586)
!588 = !DILocation(line: 267, column: 5, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !3, line: 267, column: 5)
!590 = distinct !DILexicalBlock(scope: !547, file: !3, line: 267, column: 5)
!591 = !DILocation(line: 267, column: 5, scope: !590)
!592 = !DILocation(line: 269, column: 1, scope: !547)
!593 = distinct !DISubprogram(name: "test_stats_prefix_record_delete", scope: !3, file: !3, line: 271, type: !13, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !594)
!594 = !{!595}
!595 = !DILocalVariable(name: "pfs", scope: !593, file: !3, line: 272, type: !485)
!596 = !DILocation(line: 273, column: 5, scope: !593)
!597 = !DILocation(line: 275, column: 5, scope: !593)
!598 = !DILocation(line: 276, column: 11, scope: !593)
!599 = !DILocation(line: 0, scope: !593)
!600 = !DILocation(line: 277, column: 13, scope: !601)
!601 = distinct !DILexicalBlock(scope: !593, file: !3, line: 277, column: 9)
!602 = !DILocation(line: 277, column: 9, scope: !593)
!603 = !DILocation(line: 280, column: 5, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 280, column: 5)
!605 = distinct !DILexicalBlock(scope: !593, file: !3, line: 280, column: 5)
!606 = !DILocation(line: 280, column: 5, scope: !605)
!607 = !DILocation(line: 281, column: 5, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 281, column: 5)
!609 = distinct !DILexicalBlock(scope: !593, file: !3, line: 281, column: 5)
!610 = !DILocation(line: 281, column: 5, scope: !609)
!611 = !DILocation(line: 282, column: 5, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !3, line: 282, column: 5)
!613 = distinct !DILexicalBlock(scope: !593, file: !3, line: 282, column: 5)
!614 = !DILocation(line: 282, column: 5, scope: !613)
!615 = !DILocation(line: 283, column: 5, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !3, line: 283, column: 5)
!617 = distinct !DILexicalBlock(scope: !593, file: !3, line: 283, column: 5)
!618 = !DILocation(line: 283, column: 5, scope: !617)
!619 = !DILocation(line: 284, column: 5, scope: !593)
!620 = !DILocation(line: 285, column: 5, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 285, column: 5)
!622 = distinct !DILexicalBlock(scope: !593, file: !3, line: 285, column: 5)
!623 = !DILocation(line: 285, column: 5, scope: !622)
!624 = !DILocation(line: 287, column: 1, scope: !593)
!625 = distinct !DISubprogram(name: "test_stats_prefix_record_set", scope: !3, file: !3, line: 289, type: !13, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !626)
!626 = !{!627}
!627 = !DILocalVariable(name: "pfs", scope: !625, file: !3, line: 290, type: !485)
!628 = !DILocation(line: 291, column: 5, scope: !625)
!629 = !DILocation(line: 293, column: 5, scope: !625)
!630 = !DILocation(line: 294, column: 11, scope: !625)
!631 = !DILocation(line: 0, scope: !625)
!632 = !DILocation(line: 295, column: 13, scope: !633)
!633 = distinct !DILexicalBlock(scope: !625, file: !3, line: 295, column: 9)
!634 = !DILocation(line: 295, column: 9, scope: !625)
!635 = !DILocation(line: 298, column: 5, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 298, column: 5)
!637 = distinct !DILexicalBlock(scope: !625, file: !3, line: 298, column: 5)
!638 = !DILocation(line: 298, column: 5, scope: !637)
!639 = !DILocation(line: 299, column: 5, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !3, line: 299, column: 5)
!641 = distinct !DILexicalBlock(scope: !625, file: !3, line: 299, column: 5)
!642 = !DILocation(line: 299, column: 5, scope: !641)
!643 = !DILocation(line: 300, column: 5, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 300, column: 5)
!645 = distinct !DILexicalBlock(scope: !625, file: !3, line: 300, column: 5)
!646 = !DILocation(line: 300, column: 5, scope: !645)
!647 = !DILocation(line: 301, column: 5, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !3, line: 301, column: 5)
!649 = distinct !DILexicalBlock(scope: !625, file: !3, line: 301, column: 5)
!650 = !DILocation(line: 301, column: 5, scope: !649)
!651 = !DILocation(line: 302, column: 5, scope: !625)
!652 = !DILocation(line: 303, column: 5, scope: !653)
!653 = distinct !DILexicalBlock(scope: !654, file: !3, line: 303, column: 5)
!654 = distinct !DILexicalBlock(scope: !625, file: !3, line: 303, column: 5)
!655 = !DILocation(line: 303, column: 5, scope: !654)
!656 = !DILocation(line: 305, column: 1, scope: !625)
!657 = distinct !DISubprogram(name: "test_stats_prefix_dump", scope: !3, file: !3, line: 307, type: !13, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !658)
!658 = !{!659, !660, !664, !665, !666, !667, !668}
!659 = !DILocalVariable(name: "hashval", scope: !657, file: !3, line: 308, type: !23)
!660 = !DILocalVariable(name: "tmp", scope: !657, file: !3, line: 309, type: !661)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 4000, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 500)
!664 = !DILocalVariable(name: "buf", scope: !657, file: !3, line: 310, type: !152)
!665 = !DILocalVariable(name: "expected", scope: !657, file: !3, line: 311, type: !51)
!666 = !DILocalVariable(name: "keynum", scope: !657, file: !3, line: 312, type: !23)
!667 = !DILocalVariable(name: "length", scope: !657, file: !3, line: 313, type: !23)
!668 = !DILocalVariable(name: "found_match", scope: !657, file: !3, line: 351, type: !59)
!669 = !DILocation(line: 308, column: 19, scope: !657)
!670 = !DILocation(line: 0, scope: !657)
!671 = !DILocation(line: 309, column: 5, scope: !657)
!672 = !DILocation(line: 309, column: 10, scope: !657)
!673 = !DILocation(line: 313, column: 5, scope: !657)
!674 = !DILocation(line: 315, column: 5, scope: !657)
!675 = !DILocation(line: 317, column: 5, scope: !676)
!676 = distinct !DILexicalBlock(scope: !677, file: !3, line: 317, column: 5)
!677 = distinct !DILexicalBlock(scope: !657, file: !3, line: 317, column: 5)
!678 = !DILocation(line: 317, column: 5, scope: !677)
!679 = !DILocation(line: 318, column: 5, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !3, line: 318, column: 5)
!681 = distinct !DILexicalBlock(scope: !657, file: !3, line: 318, column: 5)
!682 = !DILocation(line: 318, column: 5, scope: !681)
!683 = !DILocation(line: 319, column: 5, scope: !657)
!684 = !DILocation(line: 320, column: 5, scope: !657)
!685 = !DILocation(line: 322, column: 5, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 322, column: 5)
!687 = distinct !DILexicalBlock(scope: !657, file: !3, line: 322, column: 5)
!688 = !DILocation(line: 322, column: 5, scope: !687)
!689 = !DILocation(line: 323, column: 5, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !3, line: 323, column: 5)
!691 = distinct !DILexicalBlock(scope: !657, file: !3, line: 323, column: 5)
!692 = !DILocation(line: 323, column: 5, scope: !691)
!693 = !DILocation(line: 324, column: 5, scope: !657)
!694 = !DILocation(line: 325, column: 5, scope: !657)
!695 = !DILocation(line: 327, column: 5, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 327, column: 5)
!697 = distinct !DILexicalBlock(scope: !657, file: !3, line: 327, column: 5)
!698 = !DILocation(line: 327, column: 5, scope: !697)
!699 = !DILocation(line: 328, column: 5, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 328, column: 5)
!701 = distinct !DILexicalBlock(scope: !657, file: !3, line: 328, column: 5)
!702 = !DILocation(line: 328, column: 5, scope: !701)
!703 = !DILocation(line: 329, column: 5, scope: !657)
!704 = !DILocation(line: 330, column: 5, scope: !657)
!705 = !DILocation(line: 332, column: 5, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 332, column: 5)
!707 = distinct !DILexicalBlock(scope: !657, file: !3, line: 332, column: 5)
!708 = !DILocation(line: 332, column: 5, scope: !707)
!709 = !DILocation(line: 333, column: 5, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !3, line: 333, column: 5)
!711 = distinct !DILexicalBlock(scope: !657, file: !3, line: 333, column: 5)
!712 = !DILocation(line: 333, column: 5, scope: !711)
!713 = !DILocation(line: 334, column: 5, scope: !657)
!714 = !DILocation(line: 335, column: 5, scope: !657)
!715 = !DILocation(line: 337, column: 5, scope: !716)
!716 = distinct !DILexicalBlock(scope: !717, file: !3, line: 337, column: 5)
!717 = distinct !DILexicalBlock(scope: !657, file: !3, line: 337, column: 5)
!718 = !DILocation(line: 337, column: 5, scope: !717)
!719 = !DILocation(line: 338, column: 5, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 338, column: 5)
!721 = distinct !DILexicalBlock(scope: !657, file: !3, line: 338, column: 5)
!722 = !DILocation(line: 338, column: 5, scope: !721)
!723 = !DILocation(line: 340, column: 5, scope: !657)
!724 = !DILocation(line: 341, column: 5, scope: !657)
!725 = !DILocation(line: 344, column: 11, scope: !657)
!726 = !DILocation(line: 345, column: 5, scope: !727)
!727 = distinct !DILexicalBlock(scope: !728, file: !3, line: 345, column: 5)
!728 = distinct !DILexicalBlock(scope: !657, file: !3, line: 345, column: 5)
!729 = !DILocation(line: 345, column: 5, scope: !728)
!730 = !DILocation(line: 346, column: 5, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !3, line: 346, column: 5)
!732 = distinct !DILexicalBlock(scope: !657, file: !3, line: 346, column: 5)
!733 = !DILocation(line: 346, column: 5, scope: !732)
!734 = !DILocation(line: 347, column: 5, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !3, line: 347, column: 5)
!736 = distinct !DILexicalBlock(scope: !657, file: !3, line: 347, column: 5)
!737 = !DILocation(line: 347, column: 5, scope: !736)
!738 = !DILocation(line: 348, column: 5, scope: !657)
!739 = !DILocation(line: 352, column: 5, scope: !740)
!740 = distinct !DILexicalBlock(scope: !657, file: !3, line: 352, column: 5)
!741 = !DILocation(line: 353, column: 9, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 352, column: 65)
!743 = distinct !DILexicalBlock(scope: !740, file: !3, line: 352, column: 5)
!744 = !DILocation(line: 355, column: 24, scope: !745)
!745 = distinct !DILexicalBlock(scope: !742, file: !3, line: 355, column: 13)
!746 = !DILocation(line: 355, column: 34, scope: !745)
!747 = !DILocation(line: 355, column: 46, scope: !745)
!748 = !DILocation(line: 355, column: 21, scope: !745)
!749 = !DILocation(line: 355, column: 13, scope: !742)
!750 = !DILocation(line: 352, column: 61, scope: !743)
!751 = !DILocation(line: 352, column: 29, scope: !743)
!752 = distinct !{!752, !739, !753, !287}
!753 = !DILocation(line: 359, column: 5, scope: !740)
!754 = !DILocation(line: 360, column: 5, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !3, line: 360, column: 5)
!756 = distinct !DILexicalBlock(scope: !657, file: !3, line: 360, column: 5)
!757 = !DILocation(line: 361, column: 34, scope: !657)
!758 = !DILocation(line: 361, column: 5, scope: !657)
!759 = !DILocation(line: 362, column: 11, scope: !657)
!760 = !DILocation(line: 363, column: 5, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 363, column: 5)
!762 = distinct !DILexicalBlock(scope: !657, file: !3, line: 363, column: 5)
!763 = !DILocation(line: 363, column: 5, scope: !762)
!764 = !DILocation(line: 364, column: 5, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 364, column: 5)
!766 = distinct !DILexicalBlock(scope: !657, file: !3, line: 364, column: 5)
!767 = !DILocation(line: 364, column: 5, scope: !766)
!768 = !DILocation(line: 365, column: 5, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 365, column: 5)
!770 = distinct !DILexicalBlock(scope: !657, file: !3, line: 365, column: 5)
!771 = !DILocation(line: 365, column: 5, scope: !770)
!772 = !DILocation(line: 366, column: 5, scope: !657)
!773 = !DILocation(line: 367, column: 5, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 367, column: 5)
!775 = distinct !DILexicalBlock(scope: !657, file: !3, line: 367, column: 5)
!776 = !DILocation(line: 367, column: 5, scope: !775)
!777 = !DILocation(line: 368, column: 5, scope: !657)
!778 = !DILocation(line: 371, column: 5, scope: !657)
!779 = !DILocation(line: 374, column: 1, scope: !657)
!780 = !DILocation(line: 373, column: 5, scope: !657)
!781 = distinct !DISubprogram(name: "test_issue_161", scope: !3, file: !3, line: 149, type: !13, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !782)
!782 = !{!783}
!783 = !DILocalVariable(name: "ret", scope: !781, file: !3, line: 151, type: !5)
!784 = !DILocation(line: 151, column: 28, scope: !781)
!785 = !DILocation(line: 0, scope: !781)
!786 = !DILocation(line: 152, column: 13, scope: !787)
!787 = distinct !DILexicalBlock(scope: !781, file: !3, line: 152, column: 9)
!788 = !DILocation(line: 152, column: 9, scope: !781)
!789 = !DILocation(line: 153, column: 15, scope: !790)
!790 = distinct !DILexicalBlock(scope: !787, file: !3, line: 152, column: 27)
!791 = !DILocation(line: 154, column: 5, scope: !790)
!792 = !DILocation(line: 156, column: 5, scope: !781)
!793 = distinct !DISubprogram(name: "test_safe_strtol", scope: !3, file: !3, line: 448, type: !13, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !794)
!794 = !{!795}
!795 = !DILocalVariable(name: "val", scope: !793, file: !3, line: 449, type: !796)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !797, line: 26, baseType: !798)
!797 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !31, line: 41, baseType: !23)
!799 = !DILocation(line: 449, column: 5, scope: !793)
!800 = !DILocation(line: 0, scope: !793)
!801 = !DILocation(line: 450, column: 5, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 450, column: 5)
!803 = distinct !DILexicalBlock(scope: !793, file: !3, line: 450, column: 5)
!804 = !DILocation(line: 450, column: 5, scope: !803)
!805 = !DILocation(line: 451, column: 5, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 451, column: 5)
!807 = distinct !DILexicalBlock(scope: !793, file: !3, line: 451, column: 5)
!808 = !DILocation(line: 451, column: 5, scope: !807)
!809 = !DILocation(line: 452, column: 5, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 452, column: 5)
!811 = distinct !DILexicalBlock(scope: !793, file: !3, line: 452, column: 5)
!812 = !DILocation(line: 452, column: 5, scope: !811)
!813 = !DILocation(line: 453, column: 5, scope: !814)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 453, column: 5)
!815 = distinct !DILexicalBlock(scope: !793, file: !3, line: 453, column: 5)
!816 = !DILocation(line: 453, column: 5, scope: !815)
!817 = !DILocation(line: 454, column: 5, scope: !818)
!818 = distinct !DILexicalBlock(scope: !819, file: !3, line: 454, column: 5)
!819 = distinct !DILexicalBlock(scope: !793, file: !3, line: 454, column: 5)
!820 = !DILocation(line: 454, column: 5, scope: !819)
!821 = !DILocation(line: 455, column: 5, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !3, line: 455, column: 5)
!823 = distinct !DILexicalBlock(scope: !793, file: !3, line: 455, column: 5)
!824 = !DILocation(line: 455, column: 5, scope: !823)
!825 = !DILocation(line: 456, column: 5, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 456, column: 5)
!827 = distinct !DILexicalBlock(scope: !793, file: !3, line: 456, column: 5)
!828 = !DILocation(line: 456, column: 5, scope: !827)
!829 = !DILocation(line: 457, column: 5, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 457, column: 5)
!831 = distinct !DILexicalBlock(scope: !793, file: !3, line: 457, column: 5)
!832 = !DILocation(line: 457, column: 5, scope: !831)
!833 = !DILocation(line: 458, column: 5, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 458, column: 5)
!835 = distinct !DILexicalBlock(scope: !793, file: !3, line: 458, column: 5)
!836 = !DILocation(line: 458, column: 5, scope: !835)
!837 = !DILocation(line: 459, column: 5, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 459, column: 5)
!839 = distinct !DILexicalBlock(scope: !793, file: !3, line: 459, column: 5)
!840 = !DILocation(line: 459, column: 5, scope: !839)
!841 = !DILocation(line: 465, column: 5, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 465, column: 5)
!843 = distinct !DILexicalBlock(scope: !793, file: !3, line: 465, column: 5)
!844 = !DILocation(line: 465, column: 5, scope: !843)
!845 = !DILocation(line: 466, column: 5, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 466, column: 5)
!847 = distinct !DILexicalBlock(scope: !793, file: !3, line: 466, column: 5)
!848 = !DILocation(line: 466, column: 5, scope: !847)
!849 = !DILocation(line: 472, column: 5, scope: !850)
!850 = distinct !DILexicalBlock(scope: !851, file: !3, line: 472, column: 5)
!851 = distinct !DILexicalBlock(scope: !793, file: !3, line: 472, column: 5)
!852 = !DILocation(line: 472, column: 5, scope: !851)
!853 = !DILocation(line: 473, column: 5, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 473, column: 5)
!855 = distinct !DILexicalBlock(scope: !793, file: !3, line: 473, column: 5)
!856 = !DILocation(line: 473, column: 5, scope: !855)
!857 = !DILocation(line: 475, column: 1, scope: !793)
!858 = !DILocation(line: 474, column: 5, scope: !793)
!859 = distinct !DISubprogram(name: "test_safe_strtoll", scope: !3, file: !3, line: 419, type: !13, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !860)
!860 = !{!861}
!861 = !DILocalVariable(name: "val", scope: !859, file: !3, line: 420, type: !862)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !797, line: 27, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !31, line: 44, baseType: !32)
!864 = !DILocation(line: 420, column: 5, scope: !859)
!865 = !DILocation(line: 0, scope: !859)
!866 = !DILocation(line: 421, column: 5, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 421, column: 5)
!868 = distinct !DILexicalBlock(scope: !859, file: !3, line: 421, column: 5)
!869 = !DILocation(line: 421, column: 5, scope: !868)
!870 = !DILocation(line: 422, column: 5, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 422, column: 5)
!872 = distinct !DILexicalBlock(scope: !859, file: !3, line: 422, column: 5)
!873 = !{!471, !471, i64 0}
!874 = !DILocation(line: 422, column: 5, scope: !872)
!875 = !DILocation(line: 423, column: 5, scope: !876)
!876 = distinct !DILexicalBlock(scope: !877, file: !3, line: 423, column: 5)
!877 = distinct !DILexicalBlock(scope: !859, file: !3, line: 423, column: 5)
!878 = !DILocation(line: 423, column: 5, scope: !877)
!879 = !DILocation(line: 424, column: 5, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 424, column: 5)
!881 = distinct !DILexicalBlock(scope: !859, file: !3, line: 424, column: 5)
!882 = !DILocation(line: 424, column: 5, scope: !881)
!883 = !DILocation(line: 425, column: 5, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 425, column: 5)
!885 = distinct !DILexicalBlock(scope: !859, file: !3, line: 425, column: 5)
!886 = !DILocation(line: 425, column: 5, scope: !885)
!887 = !DILocation(line: 426, column: 5, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 426, column: 5)
!889 = distinct !DILexicalBlock(scope: !859, file: !3, line: 426, column: 5)
!890 = !DILocation(line: 426, column: 5, scope: !889)
!891 = !DILocation(line: 427, column: 5, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 427, column: 5)
!893 = distinct !DILexicalBlock(scope: !859, file: !3, line: 427, column: 5)
!894 = !DILocation(line: 427, column: 5, scope: !893)
!895 = !DILocation(line: 428, column: 5, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !3, line: 428, column: 5)
!897 = distinct !DILexicalBlock(scope: !859, file: !3, line: 428, column: 5)
!898 = !DILocation(line: 428, column: 5, scope: !897)
!899 = !DILocation(line: 429, column: 5, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !3, line: 429, column: 5)
!901 = distinct !DILexicalBlock(scope: !859, file: !3, line: 429, column: 5)
!902 = !DILocation(line: 429, column: 5, scope: !901)
!903 = !DILocation(line: 430, column: 5, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 430, column: 5)
!905 = distinct !DILexicalBlock(scope: !859, file: !3, line: 430, column: 5)
!906 = !DILocation(line: 430, column: 5, scope: !905)
!907 = !DILocation(line: 433, column: 5, scope: !908)
!908 = distinct !DILexicalBlock(scope: !909, file: !3, line: 433, column: 5)
!909 = distinct !DILexicalBlock(scope: !859, file: !3, line: 433, column: 5)
!910 = !DILocation(line: 433, column: 5, scope: !909)
!911 = !DILocation(line: 434, column: 5, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 434, column: 5)
!913 = distinct !DILexicalBlock(scope: !859, file: !3, line: 434, column: 5)
!914 = !DILocation(line: 434, column: 5, scope: !913)
!915 = !DILocation(line: 435, column: 5, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !3, line: 435, column: 5)
!917 = distinct !DILexicalBlock(scope: !859, file: !3, line: 435, column: 5)
!918 = !DILocation(line: 435, column: 5, scope: !917)
!919 = !DILocation(line: 440, column: 5, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 440, column: 5)
!921 = distinct !DILexicalBlock(scope: !859, file: !3, line: 440, column: 5)
!922 = !DILocation(line: 440, column: 5, scope: !921)
!923 = !DILocation(line: 443, column: 5, scope: !924)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 443, column: 5)
!925 = distinct !DILexicalBlock(scope: !859, file: !3, line: 443, column: 5)
!926 = !DILocation(line: 443, column: 5, scope: !925)
!927 = !DILocation(line: 444, column: 5, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !3, line: 444, column: 5)
!929 = distinct !DILexicalBlock(scope: !859, file: !3, line: 444, column: 5)
!930 = !DILocation(line: 444, column: 5, scope: !929)
!931 = !DILocation(line: 446, column: 1, scope: !859)
!932 = !DILocation(line: 445, column: 5, scope: !859)
!933 = distinct !DISubprogram(name: "test_safe_strtoul", scope: !3, file: !3, line: 376, type: !13, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !934)
!934 = !{!935}
!935 = !DILocalVariable(name: "val", scope: !933, file: !3, line: 377, type: !164)
!936 = !DILocation(line: 377, column: 5, scope: !933)
!937 = !DILocation(line: 0, scope: !933)
!938 = !DILocation(line: 378, column: 5, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !3, line: 378, column: 5)
!940 = distinct !DILexicalBlock(scope: !933, file: !3, line: 378, column: 5)
!941 = !DILocation(line: 378, column: 5, scope: !940)
!942 = !DILocation(line: 379, column: 5, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 379, column: 5)
!944 = distinct !DILexicalBlock(scope: !933, file: !3, line: 379, column: 5)
!945 = !DILocation(line: 379, column: 5, scope: !944)
!946 = !DILocation(line: 380, column: 5, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 380, column: 5)
!948 = distinct !DILexicalBlock(scope: !933, file: !3, line: 380, column: 5)
!949 = !DILocation(line: 380, column: 5, scope: !948)
!950 = !DILocation(line: 381, column: 5, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 381, column: 5)
!952 = distinct !DILexicalBlock(scope: !933, file: !3, line: 381, column: 5)
!953 = !DILocation(line: 381, column: 5, scope: !952)
!954 = !DILocation(line: 382, column: 5, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !3, line: 382, column: 5)
!956 = distinct !DILexicalBlock(scope: !933, file: !3, line: 382, column: 5)
!957 = !DILocation(line: 382, column: 5, scope: !956)
!958 = !DILocation(line: 383, column: 5, scope: !959)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 383, column: 5)
!960 = distinct !DILexicalBlock(scope: !933, file: !3, line: 383, column: 5)
!961 = !DILocation(line: 383, column: 5, scope: !960)
!962 = !DILocation(line: 384, column: 5, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !3, line: 384, column: 5)
!964 = distinct !DILexicalBlock(scope: !933, file: !3, line: 384, column: 5)
!965 = !DILocation(line: 384, column: 5, scope: !964)
!966 = !DILocation(line: 390, column: 5, scope: !967)
!967 = distinct !DILexicalBlock(scope: !968, file: !3, line: 390, column: 5)
!968 = distinct !DILexicalBlock(scope: !933, file: !3, line: 390, column: 5)
!969 = !DILocation(line: 390, column: 5, scope: !968)
!970 = !DILocation(line: 391, column: 5, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !3, line: 391, column: 5)
!972 = distinct !DILexicalBlock(scope: !933, file: !3, line: 391, column: 5)
!973 = !DILocation(line: 391, column: 5, scope: !972)
!974 = !DILocation(line: 395, column: 5, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !3, line: 395, column: 5)
!976 = distinct !DILexicalBlock(scope: !933, file: !3, line: 395, column: 5)
!977 = !DILocation(line: 395, column: 5, scope: !976)
!978 = !DILocation(line: 397, column: 1, scope: !933)
!979 = !DILocation(line: 396, column: 5, scope: !933)
!980 = distinct !DISubprogram(name: "test_safe_strtoull", scope: !3, file: !3, line: 400, type: !13, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !981)
!981 = !{!982}
!982 = !DILocalVariable(name: "val", scope: !980, file: !3, line: 401, type: !493)
!983 = !DILocation(line: 401, column: 5, scope: !980)
!984 = !DILocation(line: 0, scope: !980)
!985 = !DILocation(line: 402, column: 5, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !3, line: 402, column: 5)
!987 = distinct !DILexicalBlock(scope: !980, file: !3, line: 402, column: 5)
!988 = !DILocation(line: 402, column: 5, scope: !987)
!989 = !DILocation(line: 403, column: 5, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !3, line: 403, column: 5)
!991 = distinct !DILexicalBlock(scope: !980, file: !3, line: 403, column: 5)
!992 = !DILocation(line: 403, column: 5, scope: !991)
!993 = !DILocation(line: 404, column: 5, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !3, line: 404, column: 5)
!995 = distinct !DILexicalBlock(scope: !980, file: !3, line: 404, column: 5)
!996 = !DILocation(line: 404, column: 5, scope: !995)
!997 = !DILocation(line: 405, column: 5, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !3, line: 405, column: 5)
!999 = distinct !DILexicalBlock(scope: !980, file: !3, line: 405, column: 5)
!1000 = !DILocation(line: 405, column: 5, scope: !999)
!1001 = !DILocation(line: 406, column: 5, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 406, column: 5)
!1003 = distinct !DILexicalBlock(scope: !980, file: !3, line: 406, column: 5)
!1004 = !DILocation(line: 406, column: 5, scope: !1003)
!1005 = !DILocation(line: 407, column: 5, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 407, column: 5)
!1007 = distinct !DILexicalBlock(scope: !980, file: !3, line: 407, column: 5)
!1008 = !DILocation(line: 407, column: 5, scope: !1007)
!1009 = !DILocation(line: 408, column: 5, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 408, column: 5)
!1011 = distinct !DILexicalBlock(scope: !980, file: !3, line: 408, column: 5)
!1012 = !DILocation(line: 408, column: 5, scope: !1011)
!1013 = !DILocation(line: 409, column: 5, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 409, column: 5)
!1015 = distinct !DILexicalBlock(scope: !980, file: !3, line: 409, column: 5)
!1016 = !DILocation(line: 409, column: 5, scope: !1015)
!1017 = !DILocation(line: 412, column: 5, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 412, column: 5)
!1019 = distinct !DILexicalBlock(scope: !980, file: !3, line: 412, column: 5)
!1020 = !DILocation(line: 412, column: 5, scope: !1019)
!1021 = !DILocation(line: 413, column: 5, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 413, column: 5)
!1023 = distinct !DILexicalBlock(scope: !980, file: !3, line: 413, column: 5)
!1024 = !DILocation(line: 413, column: 5, scope: !1023)
!1025 = !DILocation(line: 414, column: 5, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 414, column: 5)
!1027 = distinct !DILexicalBlock(scope: !980, file: !3, line: 414, column: 5)
!1028 = !DILocation(line: 414, column: 5, scope: !1027)
!1029 = !DILocation(line: 415, column: 5, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 415, column: 5)
!1031 = distinct !DILexicalBlock(scope: !980, file: !3, line: 415, column: 5)
!1032 = !DILocation(line: 415, column: 5, scope: !1031)
!1033 = !DILocation(line: 417, column: 1, scope: !980)
!1034 = !DILocation(line: 416, column: 5, scope: !980)
!1035 = distinct !DISubprogram(name: "test_issue_44", scope: !3, file: !3, line: 624, type: !13, scopeLine: 624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1036)
!1036 = !{!1037, !1038}
!1037 = !DILocalVariable(name: "port", scope: !1035, file: !3, line: 625, type: !146)
!1038 = !DILocalVariable(name: "pid", scope: !1035, file: !3, line: 626, type: !47)
!1039 = !DILocation(line: 625, column: 5, scope: !1035)
!1040 = !DILocation(line: 0, scope: !1035)
!1041 = !DILocation(line: 626, column: 17, scope: !1035)
!1042 = !DILocation(line: 627, column: 5, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 627, column: 5)
!1044 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 627, column: 5)
!1045 = !DILocation(line: 627, column: 5, scope: !1044)
!1046 = !DILocation(line: 628, column: 5, scope: !1035)
!1047 = !DILocation(line: 629, column: 5, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 629, column: 5)
!1049 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 629, column: 5)
!1050 = !DILocation(line: 629, column: 5, scope: !1049)
!1051 = !DILocation(line: 632, column: 1, scope: !1035)
!1052 = !DILocation(line: 631, column: 5, scope: !1035)
!1053 = distinct !DISubprogram(name: "test_vperror", scope: !3, file: !3, line: 729, type: !13, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1054)
!1054 = !{!1055, !1056, !1057, !1061, !1062, !1066, !1120, !1121}
!1055 = !DILocalVariable(name: "rv", scope: !1053, file: !3, line: 730, type: !23)
!1056 = !DILocalVariable(name: "oldstderr", scope: !1053, file: !3, line: 731, type: !23)
!1057 = !DILocalVariable(name: "tmpl", scope: !1053, file: !3, line: 733, type: !1058)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 192, elements: !1059)
!1059 = !{!1060}
!1060 = !DISubrange(count: 24)
!1061 = !DILocalVariable(name: "newfile", scope: !1053, file: !3, line: 736, type: !23)
!1062 = !DILocalVariable(name: "buf", scope: !1053, file: !3, line: 752, type: !1063)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 640, elements: !1064)
!1064 = !{!1065}
!1065 = !DISubrange(count: 80)
!1066 = !DILocalVariable(name: "efile", scope: !1053, file: !3, line: 753, type: !1067)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1069, line: 7, baseType: !1070)
!1069 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1071, line: 49, size: 1728, elements: !1072)
!1071 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1088, !1090, !1091, !1092, !1094, !1095, !1097, !1101, !1104, !1106, !1109, !1112, !1113, !1114, !1115, !1116}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1070, file: !1071, line: 51, baseType: !23, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1070, file: !1071, line: 54, baseType: !152, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1070, file: !1071, line: 55, baseType: !152, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1070, file: !1071, line: 56, baseType: !152, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1070, file: !1071, line: 57, baseType: !152, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1070, file: !1071, line: 58, baseType: !152, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1070, file: !1071, line: 59, baseType: !152, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1070, file: !1071, line: 60, baseType: !152, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1070, file: !1071, line: 61, baseType: !152, size: 64, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1070, file: !1071, line: 64, baseType: !152, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1070, file: !1071, line: 65, baseType: !152, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1070, file: !1071, line: 66, baseType: !152, size: 64, offset: 704)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1070, file: !1071, line: 68, baseType: !1086, size: 64, offset: 768)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1071, line: 36, flags: DIFlagFwdDecl)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1070, file: !1071, line: 70, baseType: !1089, size: 64, offset: 832)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1070, file: !1071, line: 72, baseType: !23, size: 32, offset: 896)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1070, file: !1071, line: 73, baseType: !23, size: 32, offset: 928)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1070, file: !1071, line: 74, baseType: !1093, size: 64, offset: 960)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !31, line: 152, baseType: !32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1070, file: !1071, line: 77, baseType: !151, size: 16, offset: 1024)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1070, file: !1071, line: 78, baseType: !1096, size: 8, offset: 1040)
!1096 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1070, file: !1071, line: 79, baseType: !1098, size: 8, offset: 1048)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 8, elements: !1099)
!1099 = !{!1100}
!1100 = !DISubrange(count: 1)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1070, file: !1071, line: 81, baseType: !1102, size: 64, offset: 1088)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1071, line: 43, baseType: null)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1070, file: !1071, line: 89, baseType: !1105, size: 64, offset: 1152)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !31, line: 153, baseType: !32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1070, file: !1071, line: 91, baseType: !1107, size: 64, offset: 1216)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1071, line: 37, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1070, file: !1071, line: 92, baseType: !1110, size: 64, offset: 1280)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1071, line: 38, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1070, file: !1071, line: 93, baseType: !1089, size: 64, offset: 1344)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1070, file: !1071, line: 94, baseType: !33, size: 64, offset: 1408)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1070, file: !1071, line: 95, baseType: !34, size: 64, offset: 1472)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1070, file: !1071, line: 96, baseType: !23, size: 32, offset: 1536)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1070, file: !1071, line: 98, baseType: !1117, size: 160, offset: 1568)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 160, elements: !1118)
!1118 = !{!1119}
!1119 = !DISubrange(count: 20)
!1120 = !DILocalVariable(name: "prv", scope: !1053, file: !3, line: 755, type: !152)
!1121 = !DILocalVariable(name: "expected", scope: !1053, file: !3, line: 761, type: !1063)
!1122 = !DILocation(line: 0, scope: !1053)
!1123 = !DILocation(line: 731, column: 21, scope: !1053)
!1124 = !DILocation(line: 732, column: 5, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 732, column: 5)
!1126 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 732, column: 5)
!1127 = !DILocation(line: 732, column: 5, scope: !1126)
!1128 = !DILocation(line: 733, column: 5, scope: !1053)
!1129 = !DILocation(line: 733, column: 10, scope: !1053)
!1130 = !DILocation(line: 734, column: 5, scope: !1053)
!1131 = !DILocation(line: 736, column: 19, scope: !1053)
!1132 = !DILocation(line: 737, column: 5, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 737, column: 5)
!1134 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 737, column: 5)
!1135 = !DILocation(line: 737, column: 5, scope: !1134)
!1136 = !DILocation(line: 738, column: 10, scope: !1053)
!1137 = !DILocation(line: 739, column: 5, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 739, column: 5)
!1139 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 739, column: 5)
!1140 = !DILocation(line: 739, column: 5, scope: !1139)
!1141 = !DILocation(line: 740, column: 10, scope: !1053)
!1142 = !DILocation(line: 741, column: 5, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 741, column: 5)
!1144 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 741, column: 5)
!1145 = !DILocation(line: 741, column: 5, scope: !1144)
!1146 = !DILocation(line: 743, column: 5, scope: !1053)
!1147 = !DILocation(line: 743, column: 11, scope: !1053)
!1148 = !DILocation(line: 744, column: 5, scope: !1053)
!1149 = !DILocation(line: 747, column: 10, scope: !1053)
!1150 = !DILocation(line: 748, column: 5, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 748, column: 5)
!1152 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 748, column: 5)
!1153 = !DILocation(line: 748, column: 5, scope: !1152)
!1154 = !DILocation(line: 752, column: 5, scope: !1053)
!1155 = !DILocation(line: 752, column: 10, scope: !1053)
!1156 = !DILocation(line: 753, column: 19, scope: !1053)
!1157 = !DILocation(line: 754, column: 5, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 754, column: 5)
!1159 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 754, column: 5)
!1160 = !DILocation(line: 754, column: 5, scope: !1159)
!1161 = !DILocation(line: 755, column: 17, scope: !1053)
!1162 = !DILocation(line: 756, column: 5, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 756, column: 5)
!1164 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 756, column: 5)
!1165 = !DILocation(line: 756, column: 5, scope: !1164)
!1166 = !DILocation(line: 757, column: 5, scope: !1053)
!1167 = !DILocation(line: 759, column: 5, scope: !1053)
!1168 = !DILocation(line: 761, column: 5, scope: !1053)
!1169 = !DILocation(line: 761, column: 10, scope: !1053)
!1170 = !DILocation(line: 763, column: 56, scope: !1053)
!1171 = !DILocation(line: 762, column: 5, scope: !1053)
!1172 = !DILocation(line: 771, column: 12, scope: !1053)
!1173 = !DILocation(line: 771, column: 34, scope: !1053)
!1174 = !DILocation(line: 772, column: 1, scope: !1053)
!1175 = !DILocation(line: 771, column: 5, scope: !1053)
!1176 = !DILocation(line: 0, scope: !12)
!1177 = !DILocation(line: 2165, column: 9, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !12, file: !3, line: 2165, column: 9)
!1179 = !DILocation(line: 2165, column: 33, scope: !1178)
!1180 = !DILocation(line: 2165, column: 9, scope: !12)
!1181 = !DILocation(line: 2170, column: 21, scope: !12)
!1182 = !DILocation(line: 2172, column: 18, scope: !12)
!1183 = !DILocation(line: 2172, column: 16, scope: !12)
!1184 = !DILocation(line: 2176, column: 49, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 2174, column: 34)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 2174, column: 5)
!1187 = distinct !DILexicalBlock(scope: !12, file: !3, line: 2174, column: 5)
!1188 = !{!1189, !1189, i64 0}
!1189 = !{!"short", !417, i64 0}
!1190 = !DILocation(line: 2176, column: 21, scope: !1185)
!1191 = !DILocation(line: 2177, column: 9, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 2177, column: 9)
!1193 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 2177, column: 9)
!1194 = !DILocation(line: 2177, column: 9, scope: !1193)
!1195 = !DILocation(line: 2178, column: 9, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 2178, column: 9)
!1197 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 2178, column: 9)
!1198 = !{!1199, !425, i64 0}
!1199 = !{!"conn", !425, i64 0, !459, i64 8, !459, i64 16}
!1200 = !DILocation(line: 2178, column: 9, scope: !1197)
!1201 = !DILocation(line: 2184, column: 9, scope: !56)
!1202 = !DILocation(line: 0, scope: !56)
!1203 = !DILocation(line: 2185, column: 38, scope: !61)
!1204 = !{!1199, !459, i64 16}
!1205 = !DILocation(line: 2185, column: 27, scope: !61)
!1206 = !DILocation(line: 0, scope: !61)
!1207 = !DILocation(line: 2186, column: 21, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !61, file: !3, line: 2186, column: 17)
!1209 = !DILocation(line: 2186, column: 17, scope: !61)
!1210 = distinct !{!1210, !1201, !1211, !287}
!1211 = !DILocation(line: 2199, column: 22, scope: !56)
!1212 = !DILocation(line: 2187, column: 25, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 2186, column: 28)
!1214 = !DILocation(line: 2187, column: 17, scope: !1213)
!1215 = !DILocation(line: 2202, column: 13, scope: !12)
!1216 = !DILocation(line: 2203, column: 15, scope: !65)
!1217 = !DILocation(line: 2203, column: 9, scope: !12)
!1218 = !DILocation(line: 2204, column: 9, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !65, file: !3, line: 2203, column: 29)
!1220 = !DILocation(line: 2205, column: 22, scope: !64)
!1221 = !DILocation(line: 2205, column: 16, scope: !65)
!1222 = !DILocation(line: 2206, column: 9, scope: !63)
!1223 = !DILocation(line: 2208, column: 9, scope: !63)
!1224 = !DILocation(line: 0, scope: !63)
!1225 = !DILocation(line: 2208, column: 21, scope: !63)
!1226 = !DILocation(line: 2208, column: 47, scope: !63)
!1227 = !DILocation(line: 2208, column: 60, scope: !63)
!1228 = !DILocation(line: 2208, column: 63, scope: !63)
!1229 = !DILocation(line: 2208, column: 69, scope: !63)
!1230 = distinct !{!1230, !1223, !1231, !287}
!1231 = !DILocation(line: 2208, column: 78, scope: !63)
!1232 = !DILocation(line: 2209, column: 9, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 2209, column: 9)
!1234 = distinct !DILexicalBlock(scope: !63, file: !3, line: 2209, column: 9)
!1235 = !DILocation(line: 2209, column: 9, scope: !1234)
!1236 = !DILocation(line: 2210, column: 9, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 2210, column: 9)
!1238 = distinct !DILexicalBlock(scope: !63, file: !3, line: 2210, column: 9)
!1239 = !DILocation(line: 2210, column: 9, scope: !1238)
!1240 = !DILocation(line: 2211, column: 5, scope: !64)
!1241 = !DILocation(line: 2203, column: 26, scope: !65)
!1242 = !DILocation(line: 2212, column: 43, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !64, file: !3, line: 2211, column: 12)
!1244 = !DILocation(line: 2212, column: 15, scope: !1243)
!1245 = !DILocation(line: 2212, column: 13, scope: !1243)
!1246 = !DILocation(line: 2213, column: 9, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 2213, column: 9)
!1248 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 2213, column: 9)
!1249 = !DILocation(line: 2213, column: 9, scope: !1248)
!1250 = !DILocation(line: 2214, column: 15, scope: !1243)
!1251 = !DILocation(line: 2215, column: 9, scope: !1243)
!1252 = !DILocation(line: 2216, column: 9, scope: !1243)
!1253 = !DILocation(line: 2219, column: 2, scope: !12)
!1254 = !DILocation(line: 0, scope: !68)
!1255 = !DILocation(line: 2232, column: 16, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !68, file: !3, line: 2232, column: 13)
!1257 = !DILocation(line: 2232, column: 21, scope: !1256)
!1258 = !DILocation(line: 2232, column: 13, scope: !68)
!1259 = !DILocation(line: 2232, column: 26, scope: !1256)
!1260 = !DILocation(line: 2233, column: 14, scope: !68)
!1261 = !DILocation(line: 2233, column: 9, scope: !68)
!1262 = !DILocation(line: 2237, column: 5, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 2237, column: 5)
!1264 = distinct !DILexicalBlock(scope: !12, file: !3, line: 2237, column: 5)
!1265 = !DILocation(line: 2237, column: 5, scope: !1264)
!1266 = !DILocation(line: 2240, column: 1, scope: !12)
!1267 = distinct !DISubprogram(name: "test_crc32c", scope: !3, file: !3, line: 842, type: !13, scopeLine: 842, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1268)
!1268 = !{!1269, !1270, !1271, !1275}
!1269 = !DILocalVariable(name: "crc_hw", scope: !1267, file: !3, line: 843, type: !164)
!1270 = !DILocalVariable(name: "crc_sw", scope: !1267, file: !3, line: 843, type: !164)
!1271 = !DILocalVariable(name: "buffer", scope: !1267, file: !3, line: 845, type: !1272)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 2048, elements: !1273)
!1273 = !{!1274}
!1274 = !DISubrange(count: 256)
!1275 = !DILocalVariable(name: "x", scope: !1276, file: !3, line: 846, type: !23)
!1276 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 846, column: 5)
!1277 = !DILocation(line: 845, column: 5, scope: !1267)
!1278 = !DILocation(line: 845, column: 10, scope: !1267)
!1279 = !DILocation(line: 0, scope: !1276)
!1280 = !DILocation(line: 847, column: 19, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 846, column: 5)
!1282 = !DILocation(line: 846, column: 31, scope: !1281)
!1283 = !DILocation(line: 850, column: 14, scope: !1267)
!1284 = !DILocation(line: 0, scope: !1267)
!1285 = !DILocation(line: 851, column: 14, scope: !1267)
!1286 = !DILocation(line: 852, column: 5, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 852, column: 5)
!1288 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 852, column: 5)
!1289 = !DILocation(line: 852, column: 5, scope: !1288)
!1290 = !DILocation(line: 853, column: 5, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 853, column: 5)
!1292 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 853, column: 5)
!1293 = !DILocation(line: 853, column: 5, scope: !1292)
!1294 = !DILocation(line: 856, column: 14, scope: !1267)
!1295 = !DILocation(line: 857, column: 14, scope: !1267)
!1296 = !DILocation(line: 858, column: 5, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 858, column: 5)
!1298 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 858, column: 5)
!1299 = !DILocation(line: 858, column: 5, scope: !1298)
!1300 = !DILocation(line: 859, column: 5, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 859, column: 5)
!1302 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 859, column: 5)
!1303 = !DILocation(line: 859, column: 5, scope: !1302)
!1304 = !DILocation(line: 862, column: 14, scope: !1267)
!1305 = !DILocation(line: 862, column: 36, scope: !1267)
!1306 = !DILocation(line: 863, column: 14, scope: !1267)
!1307 = !DILocation(line: 864, column: 5, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 864, column: 5)
!1309 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 864, column: 5)
!1310 = !DILocation(line: 864, column: 5, scope: !1309)
!1311 = !DILocation(line: 865, column: 5, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 865, column: 5)
!1313 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 865, column: 5)
!1314 = !DILocation(line: 865, column: 5, scope: !1313)
!1315 = !DILocation(line: 868, column: 1, scope: !1267)
!1316 = !DILocation(line: 867, column: 5, scope: !1267)
!1317 = distinct !DISubprogram(name: "start_memcached_server", scope: !3, file: !3, line: 923, type: !13, scopeLine: 923, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1318 = !{}
!1319 = !DILocation(line: 924, column: 18, scope: !1317)
!1320 = !DILocation(line: 924, column: 16, scope: !1317)
!1321 = !DILocation(line: 925, column: 5, scope: !1317)
!1322 = !DILocation(line: 926, column: 39, scope: !1317)
!1323 = !DILocation(line: 926, column: 11, scope: !1317)
!1324 = !DILocation(line: 926, column: 9, scope: !1317)
!1325 = !DILocation(line: 927, column: 5, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 927, column: 5)
!1327 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 927, column: 5)
!1328 = !DILocation(line: 927, column: 5, scope: !1327)
!1329 = !DILocation(line: 928, column: 5, scope: !1317)
!1330 = distinct !DISubprogram(name: "test_issue_92", scope: !3, file: !3, line: 820, type: !13, scopeLine: 820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1331)
!1331 = !{!1332}
!1332 = !DILocalVariable(name: "buffer", scope: !1330, file: !3, line: 821, type: !1333)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 8192, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: 1024)
!1336 = !DILocation(line: 821, column: 5, scope: !1330)
!1337 = !DILocation(line: 821, column: 10, scope: !1330)
!1338 = !DILocation(line: 823, column: 5, scope: !1330)
!1339 = !DILocation(line: 824, column: 39, scope: !1330)
!1340 = !DILocation(line: 824, column: 11, scope: !1330)
!1341 = !DILocation(line: 824, column: 9, scope: !1330)
!1342 = !DILocation(line: 825, column: 5, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 825, column: 5)
!1344 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 825, column: 5)
!1345 = !DILocation(line: 825, column: 5, scope: !1344)
!1346 = !DILocation(line: 827, column: 5, scope: !1330)
!1347 = !DILocation(line: 829, column: 5, scope: !1330)
!1348 = !DILocation(line: 830, column: 5, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 830, column: 5)
!1350 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 830, column: 5)
!1351 = !DILocation(line: 830, column: 5, scope: !1350)
!1352 = !DILocation(line: 832, column: 5, scope: !1330)
!1353 = !DILocation(line: 833, column: 5, scope: !1330)
!1354 = !DILocation(line: 834, column: 5, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 834, column: 5)
!1356 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 834, column: 5)
!1357 = !DILocation(line: 834, column: 5, scope: !1356)
!1358 = !DILocation(line: 836, column: 5, scope: !1330)
!1359 = !DILocation(line: 837, column: 39, scope: !1330)
!1360 = !DILocation(line: 837, column: 11, scope: !1330)
!1361 = !DILocation(line: 837, column: 9, scope: !1330)
!1362 = !DILocation(line: 838, column: 5, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 838, column: 5)
!1364 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 838, column: 5)
!1365 = !DILocation(line: 838, column: 5, scope: !1364)
!1366 = !DILocation(line: 840, column: 1, scope: !1330)
!1367 = !DILocation(line: 839, column: 5, scope: !1330)
!1368 = distinct !DISubprogram(name: "test_issue_102", scope: !3, file: !3, line: 870, type: !13, scopeLine: 870, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1369)
!1369 = !{!1370, !1374, !1375, !1376}
!1370 = !DILocalVariable(name: "buffer", scope: !1368, file: !3, line: 871, type: !1371)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 32768, elements: !1372)
!1372 = !{!1373}
!1373 = !DISubrange(count: 4096)
!1374 = !DILocalVariable(name: "offset", scope: !1368, file: !3, line: 888, type: !34)
!1375 = !DILocalVariable(name: "rsp", scope: !1368, file: !3, line: 898, type: !1063)
!1376 = !DILocalVariable(name: "len", scope: !1368, file: !3, line: 909, type: !23)
!1377 = !DILocation(line: 871, column: 5, scope: !1368)
!1378 = !DILocation(line: 871, column: 10, scope: !1368)
!1379 = !DILocation(line: 872, column: 5, scope: !1368)
!1380 = !DILocation(line: 873, column: 5, scope: !1368)
!1381 = !DILocation(line: 873, column: 32, scope: !1368)
!1382 = !DILocation(line: 875, column: 5, scope: !1368)
!1383 = !DILocation(line: 876, column: 39, scope: !1368)
!1384 = !DILocation(line: 876, column: 11, scope: !1368)
!1385 = !DILocation(line: 876, column: 9, scope: !1368)
!1386 = !DILocation(line: 877, column: 5, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 877, column: 5)
!1388 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 877, column: 5)
!1389 = !DILocation(line: 877, column: 5, scope: !1388)
!1390 = !DILocation(line: 879, column: 5, scope: !1368)
!1391 = !DILocation(line: 881, column: 5, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 881, column: 5)
!1393 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 881, column: 5)
!1394 = !{!1199, !459, i64 8}
!1395 = !DILocation(line: 881, column: 5, scope: !1393)
!1396 = !DILocation(line: 883, column: 5, scope: !1368)
!1397 = !DILocation(line: 884, column: 39, scope: !1368)
!1398 = !DILocation(line: 884, column: 11, scope: !1368)
!1399 = !DILocation(line: 884, column: 9, scope: !1368)
!1400 = !DILocation(line: 885, column: 5, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 885, column: 5)
!1402 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 885, column: 5)
!1403 = !DILocation(line: 885, column: 5, scope: !1402)
!1404 = !DILocation(line: 887, column: 5, scope: !1368)
!1405 = !DILocation(line: 0, scope: !1368)
!1406 = !DILocation(line: 889, column: 5, scope: !1368)
!1407 = !DILocation(line: 890, column: 35, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 889, column: 27)
!1409 = !DILocation(line: 890, column: 60, scope: !1408)
!1410 = !DILocation(line: 891, column: 38, scope: !1408)
!1411 = !DILocation(line: 890, column: 19, scope: !1408)
!1412 = !DILocation(line: 890, column: 16, scope: !1408)
!1413 = !DILocation(line: 889, column: 19, scope: !1368)
!1414 = distinct !{!1414, !1406, !1415, !287}
!1415 = !DILocation(line: 892, column: 5, scope: !1368)
!1416 = !DILocation(line: 894, column: 5, scope: !1368)
!1417 = !DILocation(line: 895, column: 5, scope: !1368)
!1418 = !DILocation(line: 897, column: 5, scope: !1368)
!1419 = !DILocation(line: 898, column: 5, scope: !1368)
!1420 = !DILocation(line: 898, column: 10, scope: !1368)
!1421 = !DILocation(line: 899, column: 5, scope: !1368)
!1422 = !DILocation(line: 900, column: 5, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 900, column: 5)
!1424 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 900, column: 5)
!1425 = !DILocation(line: 900, column: 5, scope: !1424)
!1426 = !DILocation(line: 901, column: 5, scope: !1368)
!1427 = !DILocation(line: 901, column: 14, scope: !1368)
!1428 = !DILocation(line: 902, column: 5, scope: !1368)
!1429 = !DILocation(line: 903, column: 5, scope: !1368)
!1430 = !DILocation(line: 904, column: 5, scope: !1368)
!1431 = !DILocation(line: 905, column: 5, scope: !1368)
!1432 = !DILocation(line: 906, column: 5, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 906, column: 5)
!1434 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 906, column: 5)
!1435 = !DILocation(line: 906, column: 5, scope: !1434)
!1436 = !DILocation(line: 908, column: 5, scope: !1368)
!1437 = !DILocation(line: 909, column: 31, scope: !1368)
!1438 = !DILocation(line: 909, column: 15, scope: !1368)
!1439 = !DILocation(line: 910, column: 16, scope: !1368)
!1440 = !DILocation(line: 910, column: 5, scope: !1368)
!1441 = !DILocation(line: 910, column: 23, scope: !1368)
!1442 = !DILocation(line: 911, column: 32, scope: !1368)
!1443 = !DILocation(line: 912, column: 5, scope: !1368)
!1444 = !DILocation(line: 914, column: 5, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 914, column: 5)
!1446 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 914, column: 5)
!1447 = !DILocation(line: 914, column: 5, scope: !1446)
!1448 = !DILocation(line: 916, column: 5, scope: !1368)
!1449 = !DILocation(line: 917, column: 39, scope: !1368)
!1450 = !DILocation(line: 917, column: 11, scope: !1368)
!1451 = !DILocation(line: 917, column: 9, scope: !1368)
!1452 = !DILocation(line: 918, column: 5, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 918, column: 5)
!1454 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 918, column: 5)
!1455 = !DILocation(line: 918, column: 5, scope: !1454)
!1456 = !DILocation(line: 921, column: 1, scope: !1368)
!1457 = !DILocation(line: 920, column: 5, scope: !1368)
!1458 = distinct !DISubprogram(name: "test_binary_noop", scope: !3, file: !3, line: 1320, type: !13, scopeLine: 1320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1459)
!1459 = !{!1460, !1515}
!1460 = !DILocalVariable(name: "buffer", scope: !1458, file: !3, line: 1325, type: !1461)
!1461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1458, file: !3, line: 1321, size: 8192, elements: !1462)
!1462 = !{!1463, !1489, !1514}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1461, file: !3, line: 1322, baseType: !1464, size: 192)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_no_extras", file: !75, line: 193, baseType: !1465)
!1465 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !75, line: 188, size: 192, elements: !1466)
!1466 = !{!1467, !1488}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !1465, file: !75, line: 191, baseType: !1468, size: 192)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1465, file: !75, line: 189, size: 192, elements: !1469)
!1469 = !{!1470}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1468, file: !75, line: 190, baseType: !1471, size: 192)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_header", file: !75, line: 164, baseType: !1472)
!1472 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !75, line: 151, size: 192, elements: !1473)
!1473 = !{!1474, !1486}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1472, file: !75, line: 162, baseType: !1475, size: 192)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1472, file: !75, line: 152, size: 192, elements: !1476)
!1476 = !{!1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1475, file: !75, line: 153, baseType: !153, size: 8)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !1475, file: !75, line: 154, baseType: !153, size: 8, offset: 8)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !1475, file: !75, line: 155, baseType: !148, size: 16, offset: 16)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "extlen", scope: !1475, file: !75, line: 156, baseType: !153, size: 8, offset: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !1475, file: !75, line: 157, baseType: !153, size: 8, offset: 40)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1475, file: !75, line: 158, baseType: !148, size: 16, offset: 48)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "bodylen", scope: !1475, file: !75, line: 159, baseType: !164, size: 32, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !1475, file: !75, line: 160, baseType: !164, size: 32, offset: 96)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !1475, file: !75, line: 161, baseType: !493, size: 64, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1472, file: !75, line: 163, baseType: !1487, size: 192)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 192, elements: !1059)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1465, file: !75, line: 192, baseType: !1487, size: 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !1461, file: !3, line: 1323, baseType: !1490, size: 192)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_response_no_extras", file: !75, line: 203, baseType: !1491)
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !75, line: 198, size: 192, elements: !1492)
!1492 = !{!1493, !1513}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !1491, file: !75, line: 201, baseType: !1494, size: 192)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1491, file: !75, line: 199, size: 192, elements: !1495)
!1495 = !{!1496}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1494, file: !75, line: 200, baseType: !1497, size: 192)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_response_header", file: !75, line: 183, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !75, line: 170, size: 192, elements: !1499)
!1499 = !{!1500, !1512}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !1498, file: !75, line: 181, baseType: !1501, size: 192)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1498, file: !75, line: 171, size: 192, elements: !1502)
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1501, file: !75, line: 172, baseType: !153, size: 8)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !1501, file: !75, line: 173, baseType: !153, size: 8, offset: 8)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !1501, file: !75, line: 174, baseType: !148, size: 16, offset: 16)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "extlen", scope: !1501, file: !75, line: 175, baseType: !153, size: 8, offset: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !1501, file: !75, line: 176, baseType: !153, size: 8, offset: 40)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1501, file: !75, line: 177, baseType: !148, size: 16, offset: 48)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "bodylen", scope: !1501, file: !75, line: 178, baseType: !164, size: 32, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !1501, file: !75, line: 179, baseType: !164, size: 32, offset: 96)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !1501, file: !75, line: 180, baseType: !493, size: 64, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1498, file: !75, line: 182, baseType: !1487, size: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1491, file: !75, line: 202, baseType: !1487, size: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1461, file: !3, line: 1324, baseType: !1333, size: 8192)
!1515 = !DILocalVariable(name: "len", scope: !1458, file: !3, line: 1327, type: !34)
!1516 = !DILocation(line: 1321, column: 5, scope: !1458)
!1517 = !DILocation(line: 1325, column: 7, scope: !1458)
!1518 = !DILocation(line: 1327, column: 18, scope: !1458)
!1519 = !DILocation(line: 0, scope: !1458)
!1520 = !DILocation(line: 1331, column: 5, scope: !1458)
!1521 = !DILocation(line: 1332, column: 5, scope: !1458)
!1522 = !DILocation(line: 1333, column: 38, scope: !1458)
!1523 = !DILocation(line: 1333, column: 5, scope: !1458)
!1524 = !DILocation(line: 1337, column: 1, scope: !1458)
!1525 = !DILocation(line: 1336, column: 5, scope: !1458)
!1526 = distinct !DISubprogram(name: "test_binary_quit", scope: !3, file: !3, line: 1364, type: !13, scopeLine: 1364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1527 = !DILocation(line: 1365, column: 12, scope: !1526)
!1528 = !DILocation(line: 1365, column: 5, scope: !1526)
!1529 = distinct !DISubprogram(name: "test_binary_quitq", scope: !3, file: !3, line: 1368, type: !13, scopeLine: 1368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1530 = !DILocation(line: 1369, column: 12, scope: !1529)
!1531 = !DILocation(line: 1369, column: 5, scope: !1529)
!1532 = distinct !DISubprogram(name: "test_binary_set", scope: !3, file: !3, line: 1412, type: !13, scopeLine: 1412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1533 = !DILocation(line: 1413, column: 12, scope: !1532)
!1534 = !DILocation(line: 1413, column: 5, scope: !1532)
!1535 = distinct !DISubprogram(name: "test_binary_setq", scope: !3, file: !3, line: 1416, type: !13, scopeLine: 1416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1536 = !DILocation(line: 1417, column: 12, scope: !1535)
!1537 = !DILocation(line: 1417, column: 5, scope: !1535)
!1538 = distinct !DISubprogram(name: "test_binary_add", scope: !3, file: !3, line: 1452, type: !13, scopeLine: 1452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1539 = !DILocation(line: 1453, column: 12, scope: !1538)
!1540 = !DILocation(line: 1453, column: 5, scope: !1538)
!1541 = distinct !DISubprogram(name: "test_binary_addq", scope: !3, file: !3, line: 1456, type: !13, scopeLine: 1456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1542 = !DILocation(line: 1457, column: 12, scope: !1541)
!1543 = !DILocation(line: 1457, column: 5, scope: !1541)
!1544 = distinct !DISubprogram(name: "test_binary_replace", scope: !3, file: !3, line: 1502, type: !13, scopeLine: 1502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1545 = !DILocation(line: 1503, column: 12, scope: !1544)
!1546 = !DILocation(line: 1503, column: 5, scope: !1544)
!1547 = distinct !DISubprogram(name: "test_binary_replaceq", scope: !3, file: !3, line: 1507, type: !13, scopeLine: 1507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1548 = !DILocation(line: 1508, column: 12, scope: !1547)
!1549 = !DILocation(line: 1508, column: 5, scope: !1547)
!1550 = distinct !DISubprogram(name: "test_binary_delete", scope: !3, file: !3, line: 1551, type: !13, scopeLine: 1551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1551 = !DILocation(line: 1552, column: 12, scope: !1550)
!1552 = !DILocation(line: 1552, column: 5, scope: !1550)
!1553 = distinct !DISubprogram(name: "test_binary_deleteq", scope: !3, file: !3, line: 1556, type: !13, scopeLine: 1556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1554 = !DILocation(line: 1557, column: 12, scope: !1553)
!1555 = !DILocation(line: 1557, column: 5, scope: !1553)
!1556 = distinct !DISubprogram(name: "test_binary_get", scope: !3, file: !3, line: 1616, type: !13, scopeLine: 1616, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1557 = !DILocation(line: 1617, column: 12, scope: !1556)
!1558 = !DILocation(line: 1617, column: 5, scope: !1556)
!1559 = distinct !DISubprogram(name: "test_binary_getq", scope: !3, file: !3, line: 1676, type: !13, scopeLine: 1676, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1560 = !DILocation(line: 1677, column: 12, scope: !1559)
!1561 = !DILocation(line: 1677, column: 5, scope: !1559)
!1562 = distinct !DISubprogram(name: "test_binary_getk", scope: !3, file: !3, line: 1620, type: !13, scopeLine: 1620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1563 = !DILocation(line: 1621, column: 12, scope: !1562)
!1564 = !DILocation(line: 1621, column: 5, scope: !1562)
!1565 = distinct !DISubprogram(name: "test_binary_getkq", scope: !3, file: !3, line: 1680, type: !13, scopeLine: 1680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1566 = !DILocation(line: 1681, column: 12, scope: !1565)
!1567 = !DILocation(line: 1681, column: 5, scope: !1565)
!1568 = distinct !DISubprogram(name: "test_binary_gat", scope: !3, file: !3, line: 1624, type: !13, scopeLine: 1624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1569 = !DILocation(line: 1625, column: 12, scope: !1568)
!1570 = !DILocation(line: 1625, column: 5, scope: !1568)
!1571 = distinct !DISubprogram(name: "test_binary_gatq", scope: !3, file: !3, line: 1684, type: !13, scopeLine: 1684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1572 = !DILocation(line: 1685, column: 12, scope: !1571)
!1573 = !DILocation(line: 1685, column: 5, scope: !1571)
!1574 = distinct !DISubprogram(name: "test_binary_gatk", scope: !3, file: !3, line: 1628, type: !13, scopeLine: 1628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1575 = !DILocation(line: 1629, column: 12, scope: !1574)
!1576 = !DILocation(line: 1629, column: 5, scope: !1574)
!1577 = distinct !DISubprogram(name: "test_binary_gatkq", scope: !3, file: !3, line: 1688, type: !13, scopeLine: 1688, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1578 = !DILocation(line: 1689, column: 12, scope: !1577)
!1579 = !DILocation(line: 1689, column: 5, scope: !1577)
!1580 = distinct !DISubprogram(name: "test_binary_incr", scope: !3, file: !3, line: 1719, type: !13, scopeLine: 1719, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1581 = !DILocation(line: 1720, column: 12, scope: !1580)
!1582 = !DILocation(line: 1720, column: 5, scope: !1580)
!1583 = distinct !DISubprogram(name: "test_binary_incrq", scope: !3, file: !3, line: 1724, type: !13, scopeLine: 1724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1584 = !DILocation(line: 1725, column: 12, scope: !1583)
!1585 = !DILocation(line: 1725, column: 5, scope: !1583)
!1586 = distinct !DISubprogram(name: "test_binary_decr", scope: !3, file: !3, line: 1764, type: !13, scopeLine: 1764, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1587 = !DILocation(line: 1765, column: 12, scope: !1586)
!1588 = !DILocation(line: 1765, column: 5, scope: !1586)
!1589 = distinct !DISubprogram(name: "test_binary_decrq", scope: !3, file: !3, line: 1769, type: !13, scopeLine: 1769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1590 = !DILocation(line: 1770, column: 12, scope: !1589)
!1591 = !DILocation(line: 1770, column: 5, scope: !1589)
!1592 = distinct !DISubprogram(name: "test_binary_version", scope: !3, file: !3, line: 1774, type: !13, scopeLine: 1774, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1593)
!1593 = !{!1594, !1600}
!1594 = !DILocalVariable(name: "buffer", scope: !1592, file: !3, line: 1779, type: !1595)
!1595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1592, file: !3, line: 1775, size: 8192, elements: !1596)
!1596 = !{!1597, !1598, !1599}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1595, file: !3, line: 1776, baseType: !1464, size: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !1595, file: !3, line: 1777, baseType: !1490, size: 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1595, file: !3, line: 1778, baseType: !1333, size: 8192)
!1600 = !DILocalVariable(name: "len", scope: !1592, file: !3, line: 1781, type: !34)
!1601 = !DILocation(line: 1775, column: 5, scope: !1592)
!1602 = !DILocation(line: 1779, column: 7, scope: !1592)
!1603 = !DILocation(line: 1781, column: 18, scope: !1592)
!1604 = !DILocation(line: 0, scope: !1592)
!1605 = !DILocation(line: 1785, column: 5, scope: !1592)
!1606 = !DILocation(line: 1786, column: 5, scope: !1592)
!1607 = !DILocation(line: 1787, column: 38, scope: !1592)
!1608 = !DILocation(line: 1787, column: 5, scope: !1592)
!1609 = !DILocation(line: 1791, column: 1, scope: !1592)
!1610 = !DILocation(line: 1790, column: 5, scope: !1592)
!1611 = distinct !DISubprogram(name: "test_binary_flush", scope: !3, file: !3, line: 1859, type: !13, scopeLine: 1859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1612 = !DILocation(line: 1860, column: 12, scope: !1611)
!1613 = !DILocation(line: 1860, column: 5, scope: !1611)
!1614 = distinct !DISubprogram(name: "test_binary_flushq", scope: !3, file: !3, line: 1864, type: !13, scopeLine: 1864, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1615 = !DILocation(line: 1865, column: 12, scope: !1614)
!1616 = !DILocation(line: 1865, column: 5, scope: !1614)
!1617 = distinct !DISubprogram(name: "test_binary_append", scope: !3, file: !3, line: 1935, type: !13, scopeLine: 1935, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1618 = !DILocation(line: 1936, column: 12, scope: !1617)
!1619 = !DILocation(line: 1936, column: 5, scope: !1617)
!1620 = distinct !DISubprogram(name: "test_binary_appendq", scope: !3, file: !3, line: 1945, type: !13, scopeLine: 1945, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1621 = !DILocation(line: 1946, column: 12, scope: !1620)
!1622 = !DILocation(line: 1946, column: 5, scope: !1620)
!1623 = distinct !DISubprogram(name: "test_binary_prepend", scope: !3, file: !3, line: 1940, type: !13, scopeLine: 1940, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1624 = !DILocation(line: 1941, column: 12, scope: !1623)
!1625 = !DILocation(line: 1941, column: 5, scope: !1623)
!1626 = distinct !DISubprogram(name: "test_binary_prependq", scope: !3, file: !3, line: 1950, type: !13, scopeLine: 1950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1627 = !DILocation(line: 1951, column: 12, scope: !1626)
!1628 = !DILocation(line: 1951, column: 5, scope: !1626)
!1629 = distinct !DISubprogram(name: "test_binary_stat", scope: !3, file: !3, line: 1955, type: !13, scopeLine: 1955, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1630)
!1630 = !{!1631, !1637}
!1631 = !DILocalVariable(name: "buffer", scope: !1629, file: !3, line: 1960, type: !1632)
!1632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1629, file: !3, line: 1956, size: 8192, elements: !1633)
!1633 = !{!1634, !1635, !1636}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1632, file: !3, line: 1957, baseType: !1464, size: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !1632, file: !3, line: 1958, baseType: !1490, size: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1632, file: !3, line: 1959, baseType: !1333, size: 8192)
!1637 = !DILocalVariable(name: "len", scope: !1629, file: !3, line: 1962, type: !34)
!1638 = !DILocation(line: 1956, column: 5, scope: !1629)
!1639 = !DILocation(line: 1960, column: 7, scope: !1629)
!1640 = !DILocation(line: 1962, column: 18, scope: !1629)
!1641 = !DILocation(line: 0, scope: !1629)
!1642 = !DILocation(line: 1966, column: 5, scope: !1629)
!1643 = !DILocation(line: 1967, column: 5, scope: !1629)
!1644 = !DILocation(line: 1968, column: 9, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1967, column: 8)
!1646 = !DILocation(line: 1969, column: 9, scope: !1645)
!1647 = !DILocation(line: 1971, column: 54, scope: !1629)
!1648 = !DILocation(line: 1971, column: 61, scope: !1629)
!1649 = !DILocation(line: 1971, column: 5, scope: !1645)
!1650 = distinct !{!1650, !1643, !1651, !287}
!1651 = !DILocation(line: 1971, column: 65, scope: !1629)
!1652 = !DILocation(line: 1974, column: 1, scope: !1629)
!1653 = !DILocation(line: 1973, column: 5, scope: !1629)
!1654 = distinct !DISubprogram(name: "test_binary_illegal", scope: !3, file: !3, line: 1976, type: !13, scopeLine: 1976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1655)
!1655 = !{!1656, !1657, !1664}
!1656 = !DILocalVariable(name: "cmd", scope: !1654, file: !3, line: 1977, type: !153)
!1657 = !DILocalVariable(name: "buffer", scope: !1658, file: !3, line: 1983, type: !1659)
!1658 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 1978, column: 25)
!1659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1654, file: !3, line: 1979, size: 8192, elements: !1660)
!1660 = !{!1661, !1662, !1663}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1659, file: !3, line: 1980, baseType: !1464, size: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !1659, file: !3, line: 1981, baseType: !1490, size: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1659, file: !3, line: 1982, baseType: !1333, size: 8192)
!1664 = !DILocalVariable(name: "len", scope: !1658, file: !3, line: 1984, type: !34)
!1665 = !DILocation(line: 0, scope: !1654)
!1666 = !DILocation(line: 1978, column: 5, scope: !1654)
!1667 = !DILocation(line: 1979, column: 9, scope: !1658)
!1668 = !DILocation(line: 1983, column: 11, scope: !1658)
!1669 = !DILocation(line: 1984, column: 22, scope: !1658)
!1670 = !DILocation(line: 0, scope: !1658)
!1671 = !DILocation(line: 1986, column: 9, scope: !1658)
!1672 = !DILocation(line: 1987, column: 9, scope: !1658)
!1673 = !DILocation(line: 1988, column: 9, scope: !1658)
!1674 = !DILocation(line: 1990, column: 9, scope: !1658)
!1675 = !DILocation(line: 1991, column: 5, scope: !1654)
!1676 = !DILocation(line: 1978, column: 16, scope: !1654)
!1677 = distinct !{!1677, !1666, !1675, !287}
!1678 = !DILocation(line: 1993, column: 5, scope: !1654)
!1679 = distinct !DISubprogram(name: "test_binary_pipeline_hickup", scope: !3, file: !3, line: 2122, type: !13, scopeLine: 2123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1680)
!1680 = !{!1681, !1682, !1683, !1684, !1686, !1687}
!1681 = !DILocalVariable(name: "buffersize", scope: !1679, file: !3, line: 2124, type: !34)
!1682 = !DILocalVariable(name: "buffer", scope: !1679, file: !3, line: 2125, type: !33)
!1683 = !DILocalVariable(name: "ii", scope: !1679, file: !3, line: 2126, type: !23)
!1684 = !DILocalVariable(name: "tid", scope: !1679, file: !3, line: 2128, type: !1685)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !204, line: 27, baseType: !36)
!1686 = !DILocalVariable(name: "ret", scope: !1679, file: !3, line: 2129, type: !23)
!1687 = !DILocalVariable(name: "len", scope: !1679, file: !3, line: 2148, type: !34)
!1688 = !DILocation(line: 0, scope: !1679)
!1689 = !DILocation(line: 2125, column: 20, scope: !1679)
!1690 = !DILocation(line: 2128, column: 5, scope: !1679)
!1691 = !DILocation(line: 2130, column: 23, scope: !1679)
!1692 = !DILocation(line: 2131, column: 27, scope: !1679)
!1693 = !{!1694, !1694, i64 0}
!1694 = !{!"_Bool", !417, i64 0}
!1695 = !DILocation(line: 2132, column: 16, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 2132, column: 9)
!1697 = !DILocation(line: 2133, column: 78, scope: !1696)
!1698 = !DILocation(line: 2132, column: 9, scope: !1679)
!1699 = !DILocation(line: 2134, column: 17, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 2133, column: 84)
!1701 = !DILocation(line: 2134, column: 54, scope: !1700)
!1702 = !DILocation(line: 2134, column: 9, scope: !1700)
!1703 = !DILocation(line: 2136, column: 9, scope: !1700)
!1704 = !DILocation(line: 2140, column: 5, scope: !1679)
!1705 = !DILocation(line: 2142, column: 16, scope: !1679)
!1706 = !DILocation(line: 2142, column: 11, scope: !1679)
!1707 = !DILocation(line: 2142, column: 5, scope: !1679)
!1708 = !DILocation(line: 2144, column: 9, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 2143, column: 32)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 2143, column: 5)
!1711 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 2143, column: 5)
!1712 = !DILocation(line: 2148, column: 18, scope: !1679)
!1713 = !DILocation(line: 2150, column: 5, scope: !1679)
!1714 = !DILocation(line: 2152, column: 18, scope: !1679)
!1715 = !DILocation(line: 2152, column: 5, scope: !1679)
!1716 = !DILocation(line: 2155, column: 1, scope: !1679)
!1717 = distinct !DISubprogram(name: "shutdown_memcached_server", scope: !3, file: !3, line: 940, type: !13, scopeLine: 940, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1718)
!1718 = !{!1719}
!1719 = !DILocalVariable(name: "buffer", scope: !1717, file: !3, line: 941, type: !1333)
!1720 = !DILocation(line: 941, column: 5, scope: !1717)
!1721 = !DILocation(line: 941, column: 10, scope: !1717)
!1722 = !DILocation(line: 943, column: 5, scope: !1717)
!1723 = !DILocation(line: 944, column: 39, scope: !1717)
!1724 = !DILocation(line: 944, column: 11, scope: !1717)
!1725 = !DILocation(line: 944, column: 9, scope: !1717)
!1726 = !DILocation(line: 945, column: 5, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 945, column: 5)
!1728 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 945, column: 5)
!1729 = !DILocation(line: 945, column: 5, scope: !1728)
!1730 = !DILocation(line: 947, column: 5, scope: !1717)
!1731 = !DILocation(line: 949, column: 5, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 949, column: 5)
!1733 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 949, column: 5)
!1734 = !DILocation(line: 949, column: 5, scope: !1733)
!1735 = !DILocation(line: 951, column: 5, scope: !1717)
!1736 = !DILocation(line: 954, column: 14, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 954, column: 9)
!1738 = !DILocation(line: 954, column: 9, scope: !1737)
!1739 = !DILocation(line: 954, column: 29, scope: !1737)
!1740 = !DILocation(line: 954, column: 9, scope: !1717)
!1741 = !DILocation(line: 955, column: 20, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 954, column: 35)
!1743 = !DILocation(line: 956, column: 5, scope: !1742)
!1744 = !DILocation(line: 959, column: 1, scope: !1717)
!1745 = !DILocation(line: 958, column: 5, scope: !1717)
!1746 = distinct !DISubprogram(name: "stop_memcached_server", scope: !3, file: !3, line: 931, type: !13, scopeLine: 931, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1747 = !DILocation(line: 932, column: 5, scope: !1746)
!1748 = !DILocation(line: 933, column: 9, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 933, column: 9)
!1750 = !DILocation(line: 933, column: 20, scope: !1749)
!1751 = !DILocation(line: 933, column: 9, scope: !1746)
!1752 = !DILocation(line: 934, column: 9, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 934, column: 9)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 934, column: 9)
!1755 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 933, column: 27)
!1756 = !DILocation(line: 934, column: 9, scope: !1754)
!1757 = !DILocation(line: 937, column: 5, scope: !1746)
!1758 = distinct !DISubprogram(name: "STATS_LOCK", scope: !3, file: !3, line: 2312, type: !396, scopeLine: 2313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1759 = !DILocation(line: 2313, column: 2, scope: !1758)
!1760 = distinct !DISubprogram(name: "STATS_UNLOCK", scope: !3, file: !3, line: 2314, type: !396, scopeLine: 2315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1761 = !DILocation(line: 2315, column: 2, scope: !1760)
!1762 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 2317, type: !1763, scopeLine: 2318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1765)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!23, !23, !444}
!1765 = !{!1766, !1767, !1768, !1769, !1770, !1771}
!1766 = !DILocalVariable(name: "argc", arg: 1, scope: !1762, file: !3, line: 2317, type: !23)
!1767 = !DILocalVariable(name: "argv", arg: 2, scope: !1762, file: !3, line: 2317, type: !444)
!1768 = !DILocalVariable(name: "exitcode", scope: !1762, file: !3, line: 2319, type: !23)
!1769 = !DILocalVariable(name: "ii", scope: !1762, file: !3, line: 2320, type: !23)
!1770 = !DILocalVariable(name: "num_cases", scope: !1762, file: !3, line: 2320, type: !23)
!1771 = !DILocalVariable(name: "ret", scope: !1772, file: !3, line: 2347, type: !5)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 2341, column: 59)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 2341, column: 5)
!1774 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 2341, column: 5)
!1775 = !DILocation(line: 0, scope: !1762)
!1776 = !DILocation(line: 2330, column: 10, scope: !1762)
!1777 = !DILocation(line: 2331, column: 5, scope: !1762)
!1778 = !DILocation(line: 2333, column: 5, scope: !1762)
!1779 = !DILocation(line: 2335, column: 10, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 2335, column: 5)
!1781 = !DILocation(line: 0, scope: !1780)
!1782 = !DILocation(line: 2335, column: 46, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 2335, column: 5)
!1784 = !{!1785, !459, i64 0}
!1785 = !{!"testcase", !459, i64 0, !459, i64 8}
!1786 = !DILocation(line: 2335, column: 5, scope: !1780)
!1787 = !DILocation(line: 2335, column: 68, scope: !1783)
!1788 = distinct !{!1788, !1786, !1789, !287}
!1789 = !DILocation(line: 2337, column: 5, scope: !1780)
!1790 = !DILocation(line: 2339, column: 5, scope: !1762)
!1791 = !DILocation(line: 2341, column: 32, scope: !1773)
!1792 = !DILocation(line: 2341, column: 44, scope: !1773)
!1793 = !DILocation(line: 2341, column: 5, scope: !1774)
!1794 = !DILocation(line: 2342, column: 16, scope: !1772)
!1795 = !DILocation(line: 2342, column: 9, scope: !1772)
!1796 = !DILocation(line: 2345, column: 9, scope: !1772)
!1797 = !DILocation(line: 2347, column: 46, scope: !1772)
!1798 = !{!1785, !459, i64 8}
!1799 = !DILocation(line: 2347, column: 32, scope: !1772)
!1800 = !DILocation(line: 0, scope: !1772)
!1801 = !DILocation(line: 2348, column: 13, scope: !1772)
!1802 = !DILocation(line: 2349, column: 21, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 2348, column: 31)
!1804 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 2348, column: 13)
!1805 = !DILocation(line: 2349, column: 55, scope: !1803)
!1806 = !DILocation(line: 2349, column: 74, scope: !1803)
!1807 = !DILocation(line: 2349, column: 13, scope: !1803)
!1808 = !DILocation(line: 2350, column: 9, scope: !1803)
!1809 = !DILocation(line: 2351, column: 21, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 2350, column: 38)
!1811 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 2350, column: 20)
!1812 = !DILocation(line: 2351, column: 48, scope: !1810)
!1813 = !DILocation(line: 2351, column: 67, scope: !1810)
!1814 = !DILocation(line: 2351, column: 13, scope: !1810)
!1815 = !DILocation(line: 2352, column: 9, scope: !1810)
!1816 = !DILocation(line: 2353, column: 21, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 2352, column: 16)
!1818 = !DILocation(line: 2353, column: 52, scope: !1817)
!1819 = !DILocation(line: 2353, column: 71, scope: !1817)
!1820 = !DILocation(line: 2353, column: 13, scope: !1817)
!1821 = !DILocation(line: 2341, column: 53, scope: !1773)
!1822 = !DILocation(line: 2356, column: 16, scope: !1772)
!1823 = !DILocation(line: 2356, column: 9, scope: !1772)
!1824 = distinct !{!1824, !1793, !1825, !287}
!1825 = !DILocation(line: 2357, column: 5, scope: !1774)
!1826 = !DILocation(line: 2319, column: 9, scope: !1762)
!1827 = !DILocation(line: 2359, column: 5, scope: !1762)
!1828 = !DISubprogram(name: "stats_prefix_init", scope: !487, file: !487, line: 17, type: !1829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !53}
!1831 = !DISubprogram(name: "crc32c_init", scope: !1832, file: !1832, line: 18, type: !396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1832 = !DIFile(filename: "./crc32c.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "8a48ba9fe4cc0dc3de03e345ef4b0904")
!1833 = !DISubprogram(name: "printf", scope: !1834, file: !1834, line: 332, type: !1835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1834 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!23, !1837, null}
!1837 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!1838 = !DISubprogram(name: "fflush", scope: !1834, file: !1834, line: 218, type: !1839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!23, !1067}
!1841 = !DISubprogram(name: "alarm", scope: !1842, file: !1842, line: 432, type: !1843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1842 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!6, !6}
!1845 = !DISubprogram(name: "fprintf", scope: !1834, file: !1834, line: 326, type: !1846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!23, !1848, !1837, null}
!1848 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1067)
!1849 = !DISubprogram(name: "cache_create", scope: !199, file: !199, line: 59, type: !1850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!197, !51, !34, !34}
!1852 = !DISubprogram(name: "cache_destroy", scope: !199, file: !199, line: 70, type: !1853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{null, !197}
!1855 = !DISubprogram(name: "cache_alloc", scope: !199, file: !199, line: 78, type: !1856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!33, !197}
!1858 = !DISubprogram(name: "cache_free", scope: !199, file: !199, line: 89, type: !1859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !197, !33}
!1861 = !DISubprogram(name: "sigemptyset", scope: !302, file: !302, line: 196, type: !1862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!23, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1866, line: 7, baseType: !385)
!1866 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "c2b978aaf49d5c0e2b1e9c2e1b7f7848")
!1867 = !DISubprogram(name: "sigaction", scope: !302, file: !302, line: 240, type: !1868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!23, !23, !1870, !1873}
!1870 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1871)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!1873 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1874)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!1875 = !DISubprogram(name: "calloc", scope: !1876, file: !1876, line: 542, type: !1877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1876 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!33, !34, !34}
!1879 = !DISubprogram(name: "cache_set_limit", scope: !199, file: !199, line: 97, type: !1880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{null, !197, !23}
!1882 = !DISubprogram(name: "free", scope: !1876, file: !1876, line: 565, type: !1883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !33}
!1885 = !DISubprogram(name: "stats_prefix_clear", scope: !487, file: !487, line: 22, type: !396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1886 = !DISubprogram(name: "stats_prefix_find", scope: !487, file: !487, line: 57, type: !1887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!485, !51, !1889}
!1889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!1890 = !DISubprogram(name: "stats_prefix_record_get", scope: !487, file: !487, line: 25, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{null, !51, !1889, !1893}
!1893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1894 = !DISubprogram(name: "stats_prefix_record_delete", scope: !487, file: !487, line: 28, type: !1895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{null, !51, !1889}
!1897 = !DISubprogram(name: "stats_prefix_record_set", scope: !487, file: !487, line: 31, type: !1895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1898 = !DISubprogram(name: "strcmp", scope: !1899, file: !1899, line: 137, type: !1900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1899 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!23, !51, !51}
!1902 = !DISubprogram(name: "stats_prefix_dump", scope: !487, file: !487, line: 37, type: !1903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!152, !1905}
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!1906 = !DISubprogram(name: "strlen", scope: !1899, file: !1899, line: 385, type: !1907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!34, !51}
!1909 = !DISubprogram(name: "strstr", scope: !1899, file: !1899, line: 330, type: !1910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!152, !51, !51}
!1912 = !DISubprogram(name: "snprintf", scope: !1834, file: !1834, line: 354, type: !1913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!23, !1915, !34, !1837, null}
!1915 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !152)
!1916 = distinct !DISubprogram(name: "cache_bulkalloc", scope: !3, file: !3, line: 125, type: !1917, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1919)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!5, !34}
!1919 = !{!1920, !1921, !1922, !1924, !1926}
!1920 = !DILocalVariable(name: "datasize", arg: 1, scope: !1916, file: !3, line: 125, type: !34)
!1921 = !DILocalVariable(name: "cache", scope: !1916, file: !3, line: 127, type: !197)
!1922 = !DILocalVariable(name: "ptr", scope: !1916, file: !3, line: 132, type: !1923)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 65536, elements: !1334)
!1924 = !DILocalVariable(name: "ii", scope: !1925, file: !3, line: 134, type: !23)
!1925 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 134, column: 5)
!1926 = !DILocalVariable(name: "ii", scope: !1927, file: !3, line: 140, type: !23)
!1927 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 140, column: 5)
!1928 = !DILocation(line: 0, scope: !1916)
!1929 = !DILocation(line: 127, column: 22, scope: !1916)
!1930 = !DILocation(line: 128, column: 15, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 128, column: 9)
!1932 = !DILocation(line: 128, column: 9, scope: !1916)
!1933 = !DILocation(line: 132, column: 5, scope: !1916)
!1934 = !DILocation(line: 132, column: 11, scope: !1916)
!1935 = !DILocation(line: 0, scope: !1925)
!1936 = !DILocation(line: 134, column: 5, scope: !1925)
!1937 = !DILocation(line: 135, column: 19, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 134, column: 45)
!1939 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 134, column: 5)
!1940 = !DILocation(line: 135, column: 9, scope: !1938)
!1941 = !DILocation(line: 135, column: 17, scope: !1938)
!1942 = !DILocation(line: 136, column: 9, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 136, column: 9)
!1944 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 136, column: 9)
!1945 = !DILocation(line: 136, column: 9, scope: !1944)
!1946 = !DILocation(line: 137, column: 9, scope: !1938)
!1947 = !DILocation(line: 134, column: 39, scope: !1939)
!1948 = !DILocation(line: 134, column: 25, scope: !1939)
!1949 = distinct !{!1949, !1936, !1950, !287}
!1950 = !DILocation(line: 138, column: 5, scope: !1925)
!1951 = !DILocation(line: 145, column: 5, scope: !1916)
!1952 = !DILocation(line: 147, column: 1, scope: !1916)
!1953 = !DILocation(line: 0, scope: !1927)
!1954 = !DILocation(line: 141, column: 27, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 140, column: 45)
!1956 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 140, column: 5)
!1957 = !DILocation(line: 141, column: 9, scope: !1955)
!1958 = !DILocation(line: 140, column: 39, scope: !1956)
!1959 = !DILocation(line: 140, column: 25, scope: !1956)
!1960 = !DILocation(line: 140, column: 5, scope: !1927)
!1961 = distinct !{!1961, !1960, !1962, !287}
!1962 = !DILocation(line: 142, column: 5, scope: !1927)
!1963 = !DISubprogram(name: "memset", scope: !1899, file: !1899, line: 61, type: !1964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!33, !33, !23, !34}
!1966 = !DISubprogram(name: "safe_strtol", scope: !1967, file: !1967, line: 20, type: !1968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1967 = !DIFile(filename: "./util.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d1ef68c688867746f50aae7567be079a")
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!59, !51, !1970}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!1971 = !DISubprogram(name: "safe_strtoll", scope: !1967, file: !1967, line: 18, type: !1972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!59, !51, !1974}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!1975 = !DISubprogram(name: "safe_strtoul", scope: !1967, file: !1967, line: 19, type: !1976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!59, !51, !1978}
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1979 = !DISubprogram(name: "safe_strtoull", scope: !1967, file: !1967, line: 16, type: !1980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!59, !51, !1982}
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!1983 = distinct !DISubprogram(name: "start_server", scope: !3, file: !3, line: 486, type: !1984, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1987)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!47, !1986, !59, !23}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!1987 = !{!1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1999, !2000, !2001, !2004, !2005, !2006, !2007, !2011, !2015}
!1988 = !DILocalVariable(name: "port_out", arg: 1, scope: !1983, file: !3, line: 486, type: !1986)
!1989 = !DILocalVariable(name: "daemon", arg: 2, scope: !1983, file: !3, line: 486, type: !59)
!1990 = !DILocalVariable(name: "timeout", arg: 3, scope: !1983, file: !3, line: 486, type: !23)
!1991 = !DILocalVariable(name: "environment", scope: !1983, file: !3, line: 487, type: !1063)
!1992 = !DILocalVariable(name: "filename", scope: !1983, file: !3, line: 490, type: !152)
!1993 = !DILocalVariable(name: "pid_file", scope: !1983, file: !3, line: 491, type: !1063)
!1994 = !DILocalVariable(name: "pid", scope: !1983, file: !3, line: 507, type: !47)
!1995 = !DILocalVariable(name: "argv", scope: !1996, file: !3, line: 511, type: !1998)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 509, column: 19)
!1997 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 509, column: 9)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 1536, elements: !1059)
!1999 = !DILocalVariable(name: "arg", scope: !1996, file: !3, line: 512, type: !23)
!2000 = !DILocalVariable(name: "tmo", scope: !1996, file: !3, line: 513, type: !1058)
!2001 = !DILocalVariable(name: "wait_timeout", scope: !1983, file: !3, line: 563, type: !2002)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "useconds_t", file: !1842, line: 255, baseType: !2003)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__useconds_t", file: !31, line: 161, baseType: !6)
!2004 = !DILocalVariable(name: "wait", scope: !1983, file: !3, line: 564, type: !2002)
!2005 = !DILocalVariable(name: "fp", scope: !1983, file: !3, line: 575, type: !1067)
!2006 = !DILocalVariable(name: "buffer", scope: !1983, file: !3, line: 583, type: !1063)
!2007 = !DILocalVariable(name: "val", scope: !2008, file: !3, line: 586, type: !796)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 585, column: 53)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 585, column: 13)
!2010 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 584, column: 57)
!2011 = !DILocalVariable(name: "x", scope: !2012, file: !3, line: 611, type: !23)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 611, column: 9)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 594, column: 17)
!2014 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 594, column: 9)
!2015 = !DILocalVariable(name: "val", scope: !2013, file: !3, line: 616, type: !796)
!2016 = !DILocation(line: 0, scope: !1983)
!2017 = !DILocation(line: 487, column: 5, scope: !1983)
!2018 = !DILocation(line: 487, column: 10, scope: !1983)
!2019 = !DILocation(line: 489, column: 62, scope: !1983)
!2020 = !DILocation(line: 489, column: 56, scope: !1983)
!2021 = !DILocation(line: 488, column: 5, scope: !1983)
!2022 = !DILocation(line: 490, column: 35, scope: !1983)
!2023 = !DILocation(line: 490, column: 33, scope: !1983)
!2024 = !DILocation(line: 491, column: 5, scope: !1983)
!2025 = !DILocation(line: 491, column: 10, scope: !1983)
!2026 = !DILocation(line: 492, column: 64, scope: !1983)
!2027 = !DILocation(line: 492, column: 58, scope: !1983)
!2028 = !DILocation(line: 492, column: 5, scope: !1983)
!2029 = !DILocation(line: 494, column: 5, scope: !1983)
!2030 = !DILocation(line: 495, column: 5, scope: !1983)
!2031 = !DILocation(line: 507, column: 17, scope: !1983)
!2032 = !DILocation(line: 508, column: 5, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 508, column: 5)
!2034 = !DILocation(line: 508, column: 5, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2033, file: !3, line: 508, column: 5)
!2036 = !DILocation(line: 511, column: 9, scope: !1996)
!2037 = !DILocation(line: 511, column: 15, scope: !1996)
!2038 = !DILocation(line: 0, scope: !1996)
!2039 = !DILocation(line: 513, column: 9, scope: !1996)
!2040 = !DILocation(line: 513, column: 14, scope: !1996)
!2041 = !DILocation(line: 514, column: 9, scope: !1996)
!2042 = !DILocation(line: 516, column: 9, scope: !1996)
!2043 = !DILocation(line: 522, column: 13, scope: !1996)
!2044 = !DILocation(line: 523, column: 13, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 522, column: 22)
!2046 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 522, column: 13)
!2047 = !DILocation(line: 523, column: 25, scope: !2045)
!2048 = !DILocation(line: 524, column: 13, scope: !2045)
!2049 = !DILocation(line: 524, column: 25, scope: !2045)
!2050 = !DILocation(line: 525, column: 9, scope: !2045)
!2051 = !DILocation(line: 526, column: 17, scope: !1996)
!2052 = !DILocation(line: 526, column: 9, scope: !1996)
!2053 = !DILocation(line: 526, column: 21, scope: !1996)
!2054 = !DILocation(line: 527, column: 17, scope: !1996)
!2055 = !DILocation(line: 527, column: 9, scope: !1996)
!2056 = !DILocation(line: 527, column: 21, scope: !1996)
!2057 = !DILocation(line: 528, column: 17, scope: !1996)
!2058 = !DILocation(line: 528, column: 9, scope: !1996)
!2059 = !DILocation(line: 528, column: 21, scope: !1996)
!2060 = !DILocation(line: 529, column: 17, scope: !1996)
!2061 = !DILocation(line: 529, column: 9, scope: !1996)
!2062 = !DILocation(line: 529, column: 21, scope: !1996)
!2063 = !DILocation(line: 530, column: 17, scope: !1996)
!2064 = !DILocation(line: 530, column: 9, scope: !1996)
!2065 = !DILocation(line: 530, column: 21, scope: !1996)
!2066 = !DILocation(line: 531, column: 17, scope: !1996)
!2067 = !DILocation(line: 531, column: 9, scope: !1996)
!2068 = !DILocation(line: 531, column: 21, scope: !1996)
!2069 = !DILocation(line: 542, column: 13, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 542, column: 13)
!2071 = !DILocation(line: 542, column: 22, scope: !2070)
!2072 = !DILocation(line: 542, column: 13, scope: !1996)
!2073 = !DILocation(line: 543, column: 21, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 542, column: 28)
!2075 = !DILocation(line: 543, column: 13, scope: !2074)
!2076 = !DILocation(line: 543, column: 25, scope: !2074)
!2077 = !DILocation(line: 544, column: 21, scope: !2074)
!2078 = !DILocation(line: 544, column: 13, scope: !2074)
!2079 = !DILocation(line: 544, column: 25, scope: !2074)
!2080 = !DILocation(line: 545, column: 9, scope: !2074)
!2081 = !DILocation(line: 546, column: 13, scope: !1996)
!2082 = !DILocation(line: 547, column: 21, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 546, column: 21)
!2084 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 546, column: 13)
!2085 = !DILocation(line: 547, column: 13, scope: !2083)
!2086 = !DILocation(line: 547, column: 25, scope: !2083)
!2087 = !DILocation(line: 548, column: 21, scope: !2083)
!2088 = !DILocation(line: 548, column: 13, scope: !2083)
!2089 = !DILocation(line: 548, column: 25, scope: !2083)
!2090 = !DILocation(line: 549, column: 21, scope: !2083)
!2091 = !DILocation(line: 549, column: 13, scope: !2083)
!2092 = !DILocation(line: 549, column: 25, scope: !2083)
!2093 = !DILocation(line: 550, column: 9, scope: !2083)
!2094 = !DILocation(line: 558, column: 9, scope: !1996)
!2095 = !DILocation(line: 558, column: 21, scope: !1996)
!2096 = !DILocation(line: 559, column: 9, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 559, column: 9)
!2098 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 559, column: 9)
!2099 = !DILocation(line: 559, column: 9, scope: !2098)
!2100 = !DILocation(line: 560, column: 5, scope: !1997)
!2101 = !DILocation(line: 560, column: 5, scope: !1996)
!2102 = !DILocation(line: 565, column: 12, scope: !1983)
!2103 = !DILocation(line: 565, column: 35, scope: !1983)
!2104 = !DILocation(line: 565, column: 5, scope: !1983)
!2105 = !DILocation(line: 566, column: 9, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 565, column: 62)
!2107 = !DILocation(line: 567, column: 22, scope: !2106)
!2108 = !DILocation(line: 565, column: 41, scope: !1983)
!2109 = distinct !{!2109, !2104, !2110, !287}
!2110 = !DILocation(line: 568, column: 5, scope: !1983)
!2111 = !DILocation(line: 570, column: 9, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 570, column: 9)
!2113 = !DILocation(line: 570, column: 32, scope: !2112)
!2114 = !DILocation(line: 570, column: 9, scope: !1983)
!2115 = !DILocation(line: 571, column: 17, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 570, column: 39)
!2117 = !DILocation(line: 571, column: 9, scope: !2116)
!2118 = !DILocation(line: 572, column: 9, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 572, column: 9)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 572, column: 9)
!2121 = !DILocation(line: 575, column: 16, scope: !1983)
!2122 = !DILocation(line: 576, column: 12, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 576, column: 9)
!2124 = !DILocation(line: 576, column: 9, scope: !1983)
!2125 = !DILocation(line: 577, column: 17, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 576, column: 21)
!2127 = !DILocation(line: 578, column: 26, scope: !2126)
!2128 = !DILocation(line: 578, column: 17, scope: !2126)
!2129 = !DILocation(line: 577, column: 9, scope: !2126)
!2130 = !DILocation(line: 579, column: 9, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 579, column: 9)
!2132 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 579, column: 9)
!2133 = !DILocation(line: 582, column: 15, scope: !1983)
!2134 = !DILocation(line: 583, column: 5, scope: !1983)
!2135 = !DILocation(line: 583, column: 10, scope: !1983)
!2136 = !DILocation(line: 584, column: 13, scope: !1983)
!2137 = !DILocation(line: 584, column: 48, scope: !1983)
!2138 = !DILocation(line: 584, column: 5, scope: !1983)
!2139 = !DILocation(line: 585, column: 13, scope: !2009)
!2140 = !DILocation(line: 585, column: 47, scope: !2009)
!2141 = !DILocation(line: 585, column: 13, scope: !2010)
!2142 = !DILocation(line: 586, column: 13, scope: !2008)
!2143 = !DILocation(line: 0, scope: !2008)
!2144 = !DILocation(line: 587, column: 13, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 587, column: 13)
!2146 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 587, column: 13)
!2147 = !DILocation(line: 587, column: 13, scope: !2146)
!2148 = !DILocation(line: 588, column: 36, scope: !2008)
!2149 = !DILocation(line: 588, column: 25, scope: !2008)
!2150 = !DILocation(line: 588, column: 23, scope: !2008)
!2151 = !DILocation(line: 589, column: 9, scope: !2009)
!2152 = !DILocation(line: 589, column: 9, scope: !2008)
!2153 = distinct !{!2153, !2138, !2154, !287}
!2154 = !DILocation(line: 590, column: 5, scope: !1983)
!2155 = !DILocation(line: 591, column: 5, scope: !1983)
!2156 = !DILocation(line: 592, column: 5, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 592, column: 5)
!2158 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 592, column: 5)
!2159 = !DILocation(line: 592, column: 5, scope: !2158)
!2160 = !DILocation(line: 594, column: 9, scope: !1983)
!2161 = !DILocation(line: 599, column: 16, scope: !2013)
!2162 = !DILocation(line: 599, column: 39, scope: !2013)
!2163 = !DILocation(line: 599, column: 9, scope: !2013)
!2164 = !DILocation(line: 600, column: 13, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 599, column: 46)
!2166 = distinct !{!2166, !2163, !2167, !287}
!2167 = !DILocation(line: 601, column: 9, scope: !2013)
!2168 = !DILocation(line: 603, column: 14, scope: !2013)
!2169 = !DILocation(line: 604, column: 16, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 604, column: 13)
!2171 = !DILocation(line: 604, column: 13, scope: !2013)
!2172 = !DILocation(line: 605, column: 21, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 604, column: 25)
!2174 = !DILocation(line: 606, column: 30, scope: !2173)
!2175 = !DILocation(line: 606, column: 21, scope: !2173)
!2176 = !DILocation(line: 605, column: 13, scope: !2173)
!2177 = !DILocation(line: 607, column: 13, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 607, column: 13)
!2179 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 607, column: 13)
!2180 = !DILocation(line: 0, scope: !2012)
!2181 = !DILocation(line: 611, column: 35, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 611, column: 9)
!2183 = !DILocation(line: 611, column: 69, scope: !2182)
!2184 = !DILocation(line: 611, column: 9, scope: !2012)
!2185 = !DILocation(line: 614, column: 9, scope: !2013)
!2186 = !DILocation(line: 616, column: 9, scope: !2013)
!2187 = !DILocation(line: 0, scope: !2013)
!2188 = !DILocation(line: 617, column: 9, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 617, column: 9)
!2190 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 617, column: 9)
!2191 = !DILocation(line: 617, column: 9, scope: !2190)
!2192 = !DILocation(line: 612, column: 13, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 611, column: 83)
!2194 = !DILocation(line: 611, column: 79, scope: !2182)
!2195 = !DILocation(line: 611, column: 27, scope: !2182)
!2196 = !DILocation(line: 611, column: 32, scope: !2182)
!2197 = distinct !{!2197, !2184, !2198, !287}
!2198 = !DILocation(line: 613, column: 9, scope: !2012)
!2199 = !DILocation(line: 618, column: 22, scope: !2013)
!2200 = !DILocation(line: 619, column: 5, scope: !2014)
!2201 = !DILocation(line: 619, column: 5, scope: !2013)
!2202 = !DILocation(line: 622, column: 1, scope: !1983)
!2203 = !DILocation(line: 621, column: 5, scope: !1983)
!2204 = !DISubprogram(name: "kill", scope: !302, file: !302, line: 112, type: !2205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!23, !49, !23}
!2207 = !DISubprogram(name: "sleep", scope: !1842, file: !1842, line: 444, type: !1843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2208 = !DISubprogram(name: "getpid", scope: !1842, file: !1842, line: 628, type: !2209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!49}
!2211 = !DISubprogram(name: "remove", scope: !1834, file: !1834, line: 146, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!23, !51}
!2214 = !DISubprogram(name: "fork", scope: !1842, file: !1842, line: 756, type: !2209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2215 = !DISubprogram(name: "putenv", scope: !1876, file: !1876, line: 647, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!23, !152}
!2218 = !DISubprogram(name: "getuid", scope: !1842, file: !1842, line: 675, type: !2219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!331}
!2221 = !DISubprogram(name: "execv", scope: !1842, file: !1842, line: 563, type: !2222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!23, !51, !2224}
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!2226 = !DISubprogram(name: "access", scope: !1842, file: !1842, line: 287, type: !2227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!23, !51, !23}
!2229 = !DISubprogram(name: "usleep", scope: !1842, file: !1842, line: 460, type: !2230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!23, !2003}
!2232 = !DISubprogram(name: "fopen", scope: !1834, file: !1834, line: 246, type: !2233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!1067, !1837, !1837}
!2235 = !DISubprogram(name: "strerror", scope: !1899, file: !1899, line: 397, type: !2236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!152, !23}
!2238 = !DISubprogram(name: "fgets", scope: !1834, file: !1834, line: 564, type: !2239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!152, !1915, !23, !1848}
!2241 = !DISubprogram(name: "strncmp", scope: !1899, file: !1899, line: 140, type: !2242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!23, !51, !51, !34}
!2244 = !DISubprogram(name: "fclose", scope: !1834, file: !1834, line: 213, type: !1839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2245 = !DISubprogram(name: "dup", scope: !1842, file: !1842, line: 531, type: !2246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!23, !23}
!2248 = !DISubprogram(name: "strncpy", scope: !1899, file: !1899, line: 125, type: !2249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!152, !1915, !1837, !34}
!2251 = !DISubprogram(name: "mkstemp", scope: !1876, file: !1876, line: 688, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2252 = !DISubprogram(name: "dup2", scope: !1842, file: !1842, line: 534, type: !2253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!23, !23, !23}
!2255 = !DISubprogram(name: "close", scope: !1842, file: !1842, line: 353, type: !2246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2256 = !DISubprogram(name: "vperror", scope: !1967, file: !1967, line: 42, type: !2257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !51, null}
!2259 = !DISubprogram(name: "unlink", scope: !1842, file: !1842, line: 825, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2260 = !DISubprogram(name: "getenv", scope: !1876, file: !1876, line: 634, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!152, !51}
!2263 = distinct !DISubprogram(name: "connect_server", scope: !3, file: !3, line: 655, type: !2264, scopeLine: 657, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2266)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!19, !51, !146, !59, !1893}
!2266 = !{!2267, !2268, !2269, !2270, !2271, !2272, !2298, !2299}
!2267 = !DILocalVariable(name: "hostname", arg: 1, scope: !2263, file: !3, line: 655, type: !51)
!2268 = !DILocalVariable(name: "port", arg: 2, scope: !2263, file: !3, line: 655, type: !146)
!2269 = !DILocalVariable(name: "nonblock", arg: 3, scope: !2263, file: !3, line: 656, type: !59)
!2270 = !DILocalVariable(name: "ssl", arg: 4, scope: !2263, file: !3, line: 656, type: !1893)
!2271 = !DILocalVariable(name: "c", scope: !2263, file: !3, line: 658, type: !19)
!2272 = !DILocalVariable(name: "ai", scope: !2263, file: !3, line: 665, type: !2273)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !2275, line: 565, size: 384, elements: !2276)
!2275 = !DIFile(filename: "/usr/include/netdb.h", directory: "", checksumkind: CSK_MD5, checksum: "40967f9bfe5cb5ab7f3c078edab190e6")
!2276 = !{!2277, !2278, !2279, !2280, !2281, !2285, !2296, !2297}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !2274, file: !2275, line: 567, baseType: !23, size: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !2274, file: !2275, line: 568, baseType: !23, size: 32, offset: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !2274, file: !2275, line: 569, baseType: !23, size: 32, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !2274, file: !2275, line: 570, baseType: !23, size: 32, offset: 96)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !2274, file: !2275, line: 571, baseType: !2282, size: 32, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !2283, line: 33, baseType: !2284)
!2283 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "b1d3343a573cbf39b225111209e02966")
!2284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !31, line: 209, baseType: !6)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !2274, file: !2275, line: 572, baseType: !2286, size: 64, offset: 192)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !2283, line: 178, size: 128, elements: !2288)
!2288 = !{!2289, !2292}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !2287, file: !2283, line: 180, baseType: !2290, size: 16)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !2291, line: 28, baseType: !151)
!2291 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "b70cbaf07ffb7e8bf11ee98d9a21e2fc")
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !2287, file: !2283, line: 181, baseType: !2293, size: 112, offset: 16)
!2293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 112, elements: !2294)
!2294 = !{!2295}
!2295 = !DISubrange(count: 14)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !2274, file: !2275, line: 573, baseType: !152, size: 64, offset: 256)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !2274, file: !2275, line: 574, baseType: !2273, size: 64, offset: 320)
!2298 = !DILocalVariable(name: "sock", scope: !2263, file: !3, line: 666, type: !23)
!2299 = !DILocalVariable(name: "flags", scope: !2300, file: !3, line: 676, type: !23)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 675, column: 32)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 675, column: 22)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 670, column: 15)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 669, column: 52)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 668, column: 12)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 667, column: 21)
!2306 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 667, column: 9)
!2307 = !DILocation(line: 0, scope: !2263)
!2308 = !DILocation(line: 659, column: 30, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 659, column: 9)
!2310 = !DILocation(line: 659, column: 15, scope: !2309)
!2311 = !DILocation(line: 659, column: 13, scope: !2309)
!2312 = !DILocation(line: 659, column: 9, scope: !2263)
!2313 = !DILocation(line: 660, column: 17, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 659, column: 63)
!2315 = !DILocation(line: 661, column: 26, scope: !2314)
!2316 = !DILocation(line: 661, column: 17, scope: !2314)
!2317 = !DILocation(line: 660, column: 9, scope: !2314)
!2318 = !DILocation(line: 662, column: 9, scope: !2314)
!2319 = !DILocation(line: 665, column: 27, scope: !2263)
!2320 = !DILocation(line: 667, column: 12, scope: !2306)
!2321 = !DILocation(line: 667, column: 9, scope: !2263)
!2322 = !DILocation(line: 668, column: 31, scope: !2304)
!2323 = !{!2324, !425, i64 4}
!2324 = !{!"addrinfo", !425, i64 0, !425, i64 4, !425, i64 8, !425, i64 12, !425, i64 16, !459, i64 24, !459, i64 32, !459, i64 40}
!2325 = !DILocation(line: 668, column: 46, scope: !2304)
!2326 = !{!2324, !425, i64 8}
!2327 = !DILocation(line: 669, column: 31, scope: !2304)
!2328 = !{!2324, !425, i64 12}
!2329 = !DILocation(line: 668, column: 20, scope: !2304)
!2330 = !DILocation(line: 669, column: 45, scope: !2304)
!2331 = !DILocation(line: 668, column: 12, scope: !2305)
!2332 = !DILocation(line: 670, column: 33, scope: !2302)
!2333 = !{!2324, !459, i64 24}
!2334 = !DILocation(line: 670, column: 46, scope: !2302)
!2335 = !{!2324, !425, i64 16}
!2336 = !DILocation(line: 670, column: 15, scope: !2302)
!2337 = !DILocation(line: 670, column: 58, scope: !2302)
!2338 = !DILocation(line: 670, column: 15, scope: !2303)
!2339 = !DILocation(line: 671, column: 22, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 670, column: 65)
!2341 = !DILocation(line: 672, column: 31, scope: !2340)
!2342 = !DILocation(line: 672, column: 22, scope: !2340)
!2343 = !DILocation(line: 671, column: 14, scope: !2340)
!2344 = !DILocation(line: 673, column: 14, scope: !2340)
!2345 = !DILocation(line: 675, column: 11, scope: !2340)
!2346 = !DILocation(line: 675, column: 22, scope: !2302)
!2347 = !DILocation(line: 676, column: 27, scope: !2300)
!2348 = !DILocation(line: 0, scope: !2300)
!2349 = !DILocation(line: 677, column: 25, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 677, column: 19)
!2351 = !DILocation(line: 677, column: 29, scope: !2350)
!2352 = !DILocation(line: 677, column: 59, scope: !2350)
!2353 = !DILocation(line: 677, column: 32, scope: !2350)
!2354 = !DILocation(line: 677, column: 73, scope: !2350)
!2355 = !DILocation(line: 677, column: 19, scope: !2300)
!2356 = !DILocation(line: 678, column: 27, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 677, column: 78)
!2358 = !DILocation(line: 679, column: 36, scope: !2357)
!2359 = !DILocation(line: 679, column: 27, scope: !2357)
!2360 = !DILocation(line: 678, column: 19, scope: !2357)
!2361 = !DILocation(line: 680, column: 19, scope: !2357)
!2362 = !DILocation(line: 682, column: 15, scope: !2357)
!2363 = !DILocation(line: 685, column: 19, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 684, column: 15)
!2365 = !DILocation(line: 685, column: 69, scope: !2364)
!2366 = !DILocation(line: 685, column: 60, scope: !2364)
!2367 = !DILocation(line: 685, column: 11, scope: !2364)
!2368 = !DILocation(line: 0, scope: !2304)
!2369 = !DILocation(line: 688, column: 8, scope: !2305)
!2370 = !DILocation(line: 689, column: 5, scope: !2305)
!2371 = !DILocation(line: 690, column: 8, scope: !2263)
!2372 = !DILocation(line: 690, column: 13, scope: !2263)
!2373 = !DILocation(line: 723, column: 12, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 722, column: 5)
!2375 = !DILocation(line: 723, column: 17, scope: !2374)
!2376 = !DILocation(line: 724, column: 12, scope: !2374)
!2377 = !DILocation(line: 724, column: 18, scope: !2374)
!2378 = !DILocation(line: 727, column: 1, scope: !2263)
!2379 = !DISubprogram(name: "abort", scope: !1876, file: !1876, line: 591, type: !396, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2380 = !DISubprogram(name: "waitpid", scope: !2381, file: !2381, line: 100, type: !2382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2381 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/wait.h", directory: "", checksumkind: CSK_MD5, checksum: "6b7302c12011b4fba722770ed61d7499")
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!49, !49, !1905, !23}
!2384 = !DISubprogram(name: "exit", scope: !1876, file: !1876, line: 617, type: !304, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2385 = distinct !DISubprogram(name: "lookuphost", scope: !3, file: !3, line: 634, type: !2386, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!2273, !51, !146}
!2388 = !{!2389, !2390, !2391, !2392, !2393, !2397}
!2389 = !DILocalVariable(name: "hostname", arg: 1, scope: !2385, file: !3, line: 634, type: !51)
!2390 = !DILocalVariable(name: "port", arg: 2, scope: !2385, file: !3, line: 634, type: !146)
!2391 = !DILocalVariable(name: "ai", scope: !2385, file: !3, line: 636, type: !2273)
!2392 = !DILocalVariable(name: "hints", scope: !2385, file: !3, line: 637, type: !2274)
!2393 = !DILocalVariable(name: "service", scope: !2385, file: !3, line: 640, type: !2394)
!2394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 256, elements: !2395)
!2395 = !{!2396}
!2396 = !DISubrange(count: 32)
!2397 = !DILocalVariable(name: "error", scope: !2385, file: !3, line: 641, type: !23)
!2398 = !DILocation(line: 0, scope: !2385)
!2399 = !DILocation(line: 636, column: 5, scope: !2385)
!2400 = !DILocation(line: 636, column: 22, scope: !2385)
!2401 = !DILocation(line: 637, column: 5, scope: !2385)
!2402 = !DILocation(line: 637, column: 21, scope: !2385)
!2403 = !DILocation(line: 640, column: 5, scope: !2385)
!2404 = !DILocation(line: 640, column: 10, scope: !2385)
!2405 = !DILocation(line: 643, column: 47, scope: !2385)
!2406 = !DILocation(line: 643, column: 11, scope: !2385)
!2407 = !DILocation(line: 644, column: 18, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 644, column: 9)
!2409 = !DILocation(line: 644, column: 9, scope: !2385)
!2410 = !DILocation(line: 646, column: 19, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 645, column: 33)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 645, column: 12)
!2413 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 644, column: 69)
!2414 = !DILocation(line: 646, column: 50, scope: !2411)
!2415 = !DILocation(line: 646, column: 11, scope: !2411)
!2416 = !DILocation(line: 647, column: 8, scope: !2411)
!2417 = !DILocation(line: 648, column: 11, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 647, column: 15)
!2419 = !DILocation(line: 652, column: 12, scope: !2385)
!2420 = !DILocation(line: 653, column: 1, scope: !2385)
!2421 = !DILocation(line: 652, column: 5, scope: !2385)
!2422 = !DISubprogram(name: "socket", scope: !2423, file: !2423, line: 102, type: !2424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2423 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "2fce7039a1b2768148129dec2fa585be")
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!23, !23, !23, !23}
!2426 = !DISubprogram(name: "connect", scope: !2423, file: !2423, line: 126, type: !2427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!23, !23, !2429, !2282}
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2287)
!2431 = !DISubprogram(name: "fcntl", scope: !2432, file: !2432, line: 148, type: !2433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2432 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "270596b098606fab5166d0114edf8288")
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!23, !23, !23, null}
!2435 = !DISubprogram(name: "freeaddrinfo", scope: !2275, file: !2275, line: 666, type: !2436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !2273}
!2438 = distinct !DISubprogram(name: "tcp_read", scope: !3, file: !3, line: 56, type: !26, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2439)
!2439 = !{!2440, !2441, !2442}
!2440 = !DILocalVariable(name: "c", arg: 1, scope: !2438, file: !3, line: 56, type: !19)
!2441 = !DILocalVariable(name: "buf", arg: 2, scope: !2438, file: !3, line: 56, type: !33)
!2442 = !DILocalVariable(name: "count", arg: 3, scope: !2438, file: !3, line: 56, type: !34)
!2443 = !DILocation(line: 0, scope: !2438)
!2444 = !DILocation(line: 57, column: 5, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 57, column: 5)
!2446 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 57, column: 5)
!2447 = !DILocation(line: 57, column: 5, scope: !2446)
!2448 = !DILocation(line: 58, column: 20, scope: !2438)
!2449 = !DILocation(line: 58, column: 12, scope: !2438)
!2450 = !DILocation(line: 58, column: 5, scope: !2438)
!2451 = distinct !DISubprogram(name: "tcp_write", scope: !3, file: !3, line: 61, type: !39, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2452)
!2452 = !{!2453, !2454, !2455}
!2453 = !DILocalVariable(name: "c", arg: 1, scope: !2451, file: !3, line: 61, type: !19)
!2454 = !DILocalVariable(name: "buf", arg: 2, scope: !2451, file: !3, line: 61, type: !41)
!2455 = !DILocalVariable(name: "count", arg: 3, scope: !2451, file: !3, line: 61, type: !34)
!2456 = !DILocation(line: 0, scope: !2451)
!2457 = !DILocation(line: 62, column: 5, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 62, column: 5)
!2459 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 62, column: 5)
!2460 = !DILocation(line: 62, column: 5, scope: !2459)
!2461 = !DILocation(line: 63, column: 21, scope: !2451)
!2462 = !DILocation(line: 63, column: 12, scope: !2451)
!2463 = !DILocation(line: 63, column: 5, scope: !2451)
!2464 = !DISubprogram(name: "getaddrinfo", scope: !2275, file: !2275, line: 660, type: !2465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!23, !1837, !1837, !2467, !2470}
!2467 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2468)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2274)
!2470 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2471)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2472 = !DISubprogram(name: "gai_strerror", scope: !2275, file: !2275, line: 669, type: !2473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!51, !23}
!2475 = !DISubprogram(name: "perror", scope: !1834, file: !1834, line: 775, type: !2476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{null, !51}
!2478 = !DISubprogram(name: "read", scope: !1842, file: !1842, line: 360, type: !2479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!28, !23, !33, !34}
!2481 = !DISubprogram(name: "write", scope: !1842, file: !1842, line: 366, type: !2482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!28, !23, !41, !34}
!2484 = distinct !DISubprogram(name: "close_conn", scope: !3, file: !3, line: 83, type: !396, scopeLine: 83, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!2485 = !DILocation(line: 84, column: 9, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 84, column: 9)
!2487 = !DILocation(line: 84, column: 13, scope: !2486)
!2488 = !DILocation(line: 84, column: 9, scope: !2484)
!2489 = !DILocation(line: 93, column: 14, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 93, column: 9)
!2491 = !DILocation(line: 93, column: 19, scope: !2490)
!2492 = !DILocation(line: 93, column: 9, scope: !2484)
!2493 = !DILocation(line: 93, column: 24, scope: !2490)
!2494 = !DILocation(line: 94, column: 10, scope: !2484)
!2495 = !DILocation(line: 94, column: 5, scope: !2484)
!2496 = !DILocation(line: 95, column: 9, scope: !2484)
!2497 = !DILocation(line: 96, column: 1, scope: !2484)
!2498 = !DISubprogram(name: "crc32c_sw", scope: !1832, file: !1832, line: 21, type: !2499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!164, !164, !41, !34}
!2501 = distinct !DISubprogram(name: "send_ascii_command", scope: !3, file: !3, line: 774, type: !2476, scopeLine: 774, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2502)
!2502 = !{!2503, !2504, !2506, !2507, !2508}
!2503 = !DILocalVariable(name: "buf", arg: 1, scope: !2501, file: !3, line: 774, type: !51)
!2504 = !DILocalVariable(name: "offset", scope: !2501, file: !3, line: 775, type: !2505)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !29, line: 85, baseType: !1093)
!2506 = !DILocalVariable(name: "ptr", scope: !2501, file: !3, line: 776, type: !51)
!2507 = !DILocalVariable(name: "len", scope: !2501, file: !3, line: 777, type: !34)
!2508 = !DILocalVariable(name: "nw", scope: !2509, file: !3, line: 780, type: !28)
!2509 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 779, column: 8)
!2510 = !DILocation(line: 0, scope: !2501)
!2511 = !DILocation(line: 777, column: 18, scope: !2501)
!2512 = !DILocation(line: 779, column: 5, scope: !2501)
!2513 = !DILocation(line: 775, column: 11, scope: !2501)
!2514 = !DILocation(line: 780, column: 22, scope: !2509)
!2515 = !DILocation(line: 780, column: 27, scope: !2509)
!2516 = !DILocation(line: 780, column: 49, scope: !2509)
!2517 = !DILocation(line: 780, column: 63, scope: !2509)
!2518 = !DILocation(line: 0, scope: !2509)
!2519 = !DILocation(line: 781, column: 16, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 781, column: 13)
!2521 = !DILocation(line: 781, column: 13, scope: !2509)
!2522 = !DILocation(line: 782, column: 17, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 782, column: 17)
!2524 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 781, column: 23)
!2525 = !DILocation(line: 782, column: 23, scope: !2523)
!2526 = !DILocation(line: 782, column: 17, scope: !2524)
!2527 = !DILocation(line: 783, column: 25, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 782, column: 33)
!2529 = !DILocation(line: 783, column: 58, scope: !2528)
!2530 = !DILocation(line: 783, column: 17, scope: !2528)
!2531 = !DILocation(line: 784, column: 17, scope: !2528)
!2532 = !DILocation(line: 787, column: 20, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 786, column: 16)
!2534 = !DILocation(line: 789, column: 21, scope: !2501)
!2535 = !DILocation(line: 789, column: 5, scope: !2509)
!2536 = distinct !{!2536, !2512, !2537, !287}
!2537 = !DILocation(line: 789, column: 26, scope: !2501)
!2538 = !DILocation(line: 790, column: 1, scope: !2501)
!2539 = distinct !DISubprogram(name: "read_ascii_response", scope: !3, file: !3, line: 798, type: !2540, scopeLine: 798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{null, !152, !34}
!2542 = !{!2543, !2544, !2545, !2546, !2547}
!2543 = !DILocalVariable(name: "buffer", arg: 1, scope: !2539, file: !3, line: 798, type: !152)
!2544 = !DILocalVariable(name: "size", arg: 2, scope: !2539, file: !3, line: 798, type: !34)
!2545 = !DILocalVariable(name: "offset", scope: !2539, file: !3, line: 799, type: !2505)
!2546 = !DILocalVariable(name: "need_more", scope: !2539, file: !3, line: 800, type: !59)
!2547 = !DILocalVariable(name: "nr", scope: !2548, file: !3, line: 802, type: !28)
!2548 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 801, column: 8)
!2549 = !DILocation(line: 0, scope: !2539)
!2550 = !DILocation(line: 801, column: 5, scope: !2539)
!2551 = !DILocation(line: 800, column: 10, scope: !2539)
!2552 = !DILocation(line: 799, column: 11, scope: !2539)
!2553 = !DILocation(line: 802, column: 22, scope: !2548)
!2554 = !DILocation(line: 802, column: 27, scope: !2548)
!2555 = !DILocation(line: 802, column: 44, scope: !2548)
!2556 = !DILocation(line: 0, scope: !2548)
!2557 = !DILocation(line: 803, column: 13, scope: !2548)
!2558 = !DILocation(line: 804, column: 17, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 804, column: 17)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 803, column: 23)
!2561 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 803, column: 13)
!2562 = !DILocation(line: 804, column: 23, scope: !2559)
!2563 = !DILocation(line: 804, column: 17, scope: !2560)
!2564 = !DILocation(line: 805, column: 25, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 804, column: 33)
!2566 = !DILocation(line: 805, column: 57, scope: !2565)
!2567 = !DILocation(line: 805, column: 17, scope: !2565)
!2568 = !DILocation(line: 806, column: 17, scope: !2565)
!2569 = !DILocation(line: 809, column: 13, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 809, column: 13)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 809, column: 13)
!2572 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 808, column: 16)
!2573 = !DILocation(line: 810, column: 17, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 810, column: 17)
!2575 = !DILocation(line: 810, column: 32, scope: !2574)
!2576 = !DILocation(line: 0, scope: !2572)
!2577 = !DILocation(line: 810, column: 17, scope: !2572)
!2578 = !DILocation(line: 812, column: 17, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 810, column: 41)
!2580 = !DILocation(line: 812, column: 36, scope: !2579)
!2581 = !DILocation(line: 813, column: 13, scope: !2579)
!2582 = !DILocation(line: 815, column: 13, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 815, column: 13)
!2584 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 815, column: 13)
!2585 = !DILocation(line: 815, column: 13, scope: !2584)
!2586 = !DILocation(line: 817, column: 14, scope: !2539)
!2587 = !DILocation(line: 817, column: 5, scope: !2548)
!2588 = distinct !{!2588, !2550, !2589, !287}
!2589 = !DILocation(line: 817, column: 23, scope: !2539)
!2590 = !DILocation(line: 818, column: 1, scope: !2539)
!2591 = distinct !DISubprogram(name: "raw_command", scope: !3, file: !3, line: 1133, type: !2592, scopeLine: 1139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!2505, !152, !34, !153, !41, !34, !41, !34}
!2594 = !{!2595, !2596, !2597, !2598, !2599, !2600, !2601}
!2595 = !DILocalVariable(name: "buf", arg: 1, scope: !2591, file: !3, line: 1133, type: !152)
!2596 = !DILocalVariable(name: "bufsz", arg: 2, scope: !2591, file: !3, line: 1134, type: !34)
!2597 = !DILocalVariable(name: "cmd", arg: 3, scope: !2591, file: !3, line: 1135, type: !153)
!2598 = !DILocalVariable(name: "key", arg: 4, scope: !2591, file: !3, line: 1136, type: !41)
!2599 = !DILocalVariable(name: "keylen", arg: 5, scope: !2591, file: !3, line: 1137, type: !34)
!2600 = !DILocalVariable(name: "dta", arg: 6, scope: !2591, file: !3, line: 1138, type: !41)
!2601 = !DILocalVariable(name: "dtalen", arg: 7, scope: !2591, file: !3, line: 1139, type: !34)
!2602 = !DILocation(line: 0, scope: !2591)
!2603 = !DILocation(line: 1141, column: 12, scope: !2591)
!2604 = !DILocation(line: 1141, column: 5, scope: !2591)
!2605 = distinct !DISubprogram(name: "safe_send", scope: !3, file: !3, line: 961, type: !2606, scopeLine: 962, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{null, !41, !34, !59}
!2608 = !{!2609, !2610, !2611, !2612, !2613, !2614, !2616}
!2609 = !DILocalVariable(name: "buf", arg: 1, scope: !2605, file: !3, line: 961, type: !41)
!2610 = !DILocalVariable(name: "len", arg: 2, scope: !2605, file: !3, line: 961, type: !34)
!2611 = !DILocalVariable(name: "hickup", arg: 3, scope: !2605, file: !3, line: 961, type: !59)
!2612 = !DILocalVariable(name: "offset", scope: !2605, file: !3, line: 963, type: !2505)
!2613 = !DILocalVariable(name: "ptr", scope: !2605, file: !3, line: 964, type: !51)
!2614 = !DILocalVariable(name: "num_bytes", scope: !2615, file: !3, line: 981, type: !34)
!2615 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 980, column: 8)
!2616 = !DILocalVariable(name: "nw", scope: !2615, file: !3, line: 987, type: !28)
!2617 = !DILocation(line: 0, scope: !2605)
!2618 = !DILocation(line: 980, column: 5, scope: !2605)
!2619 = !DILocation(line: 963, column: 11, scope: !2605)
!2620 = !DILocation(line: 981, column: 32, scope: !2615)
!2621 = !DILocation(line: 0, scope: !2615)
!2622 = !DILocation(line: 982, column: 13, scope: !2615)
!2623 = !DILocation(line: 984, column: 30, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 983, column: 35)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 983, column: 17)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 982, column: 21)
!2627 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 982, column: 13)
!2628 = !DILocation(line: 984, column: 37, scope: !2624)
!2629 = !DILocation(line: 984, column: 45, scope: !2624)
!2630 = !DILocation(line: 984, column: 29, scope: !2624)
!2631 = !DILocation(line: 985, column: 13, scope: !2624)
!2632 = !DILocation(line: 987, column: 22, scope: !2615)
!2633 = !DILocation(line: 987, column: 27, scope: !2615)
!2634 = !DILocation(line: 987, column: 42, scope: !2615)
!2635 = !DILocation(line: 988, column: 16, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 988, column: 13)
!2637 = !DILocation(line: 988, column: 13, scope: !2615)
!2638 = !DILocation(line: 989, column: 17, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 989, column: 17)
!2640 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 988, column: 23)
!2641 = !DILocation(line: 989, column: 23, scope: !2639)
!2642 = !DILocation(line: 989, column: 17, scope: !2640)
!2643 = !DILocation(line: 990, column: 25, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 989, column: 33)
!2645 = !DILocation(line: 990, column: 58, scope: !2644)
!2646 = !DILocation(line: 990, column: 17, scope: !2644)
!2647 = !DILocation(line: 991, column: 17, scope: !2644)
!2648 = !DILocation(line: 994, column: 17, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 993, column: 16)
!2650 = !DILocation(line: 995, column: 17, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 994, column: 25)
!2652 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 994, column: 17)
!2653 = !DILocation(line: 996, column: 13, scope: !2651)
!2654 = !DILocation(line: 997, column: 20, scope: !2649)
!2655 = !DILocation(line: 999, column: 21, scope: !2605)
!2656 = !DILocation(line: 999, column: 5, scope: !2615)
!2657 = distinct !{!2657, !2618, !2658, !287}
!2658 = !DILocation(line: 999, column: 26, scope: !2605)
!2659 = !DILocation(line: 1000, column: 1, scope: !2605)
!2660 = distinct !DISubprogram(name: "safe_recv_packet", scope: !3, file: !3, line: 1026, type: !2661, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2663)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!59, !33, !34}
!2663 = !{!2664, !2665, !2666, !2668, !2669}
!2664 = !DILocalVariable(name: "buf", arg: 1, scope: !2660, file: !3, line: 1026, type: !33)
!2665 = !DILocalVariable(name: "size", arg: 2, scope: !2660, file: !3, line: 1026, type: !34)
!2666 = !DILocalVariable(name: "response", scope: !2660, file: !3, line: 1027, type: !2667)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!2668 = !DILocalVariable(name: "len", scope: !2660, file: !3, line: 1036, type: !34)
!2669 = !DILocalVariable(name: "ptr", scope: !2660, file: !3, line: 1038, type: !152)
!2670 = !DILocation(line: 0, scope: !2660)
!2671 = !DILocation(line: 1029, column: 10, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1029, column: 9)
!2673 = !DILocation(line: 1029, column: 9, scope: !2660)
!2674 = !DILocation(line: 1032, column: 48, scope: !2660)
!2675 = !DILocation(line: 1032, column: 46, scope: !2660)
!2676 = !DILocation(line: 1033, column: 48, scope: !2660)
!2677 = !DILocation(line: 1033, column: 46, scope: !2660)
!2678 = !DILocation(line: 1034, column: 49, scope: !2660)
!2679 = !DILocation(line: 1034, column: 47, scope: !2660)
!2680 = !DILocation(line: 1039, column: 9, scope: !2660)
!2681 = !DILocation(line: 1040, column: 25, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1040, column: 9)
!2683 = !DILocation(line: 1040, column: 10, scope: !2682)
!2684 = !DILocation(line: 1061, column: 1, scope: !2660)
!2685 = distinct !DISubprogram(name: "validate_response_header", scope: !3, file: !3, line: 1220, type: !2686, scopeLine: 1222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{null, !2667, !153, !148}
!2688 = !{!2689, !2690, !2691}
!2689 = !DILocalVariable(name: "response", arg: 1, scope: !2685, file: !3, line: 1220, type: !2667)
!2690 = !DILocalVariable(name: "cmd", arg: 2, scope: !2685, file: !3, line: 1221, type: !153)
!2691 = !DILocalVariable(name: "status", arg: 3, scope: !2685, file: !3, line: 1221, type: !148)
!2692 = !DILocation(line: 0, scope: !2685)
!2693 = !DILocation(line: 1223, column: 5, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 1223, column: 5)
!2695 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1223, column: 5)
!2696 = !DILocation(line: 1223, column: 5, scope: !2695)
!2697 = !DILocation(line: 1224, column: 5, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 1224, column: 5)
!2699 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1224, column: 5)
!2700 = !DILocation(line: 1224, column: 5, scope: !2699)
!2701 = !DILocation(line: 1225, column: 5, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 1225, column: 5)
!2703 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1225, column: 5)
!2704 = !DILocation(line: 1225, column: 5, scope: !2703)
!2705 = !DILocation(line: 1226, column: 5, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 1226, column: 5)
!2707 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1226, column: 5)
!2708 = !DILocation(line: 1226, column: 5, scope: !2707)
!2709 = !DILocation(line: 1227, column: 5, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 1227, column: 5)
!2711 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1227, column: 5)
!2712 = !DILocation(line: 1227, column: 5, scope: !2711)
!2713 = !DILocation(line: 1229, column: 16, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1229, column: 9)
!2715 = !DILocation(line: 1229, column: 9, scope: !2685)
!2716 = !DILocation(line: 1230, column: 9, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 1229, column: 53)
!2718 = !DILocation(line: 1241, column: 13, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 1241, column: 13)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 1241, column: 13)
!2721 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 1230, column: 22)
!2722 = !DILocation(line: 1246, column: 9, scope: !2717)
!2723 = !DILocation(line: 1252, column: 13, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 1252, column: 13)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1252, column: 13)
!2726 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 1246, column: 22)
!2727 = !DILocation(line: 1252, column: 13, scope: !2725)
!2728 = !DILocation(line: 1253, column: 13, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1253, column: 13)
!2730 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1253, column: 13)
!2731 = !DILocation(line: 1253, column: 13, scope: !2730)
!2732 = !DILocation(line: 1254, column: 13, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 1254, column: 13)
!2734 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1254, column: 13)
!2735 = !DILocation(line: 1254, column: 13, scope: !2734)
!2736 = !DILocation(line: 1255, column: 13, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 1255, column: 13)
!2738 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1255, column: 13)
!2739 = !DILocation(line: 1255, column: 13, scope: !2738)
!2740 = !DILocation(line: 1261, column: 13, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 1261, column: 13)
!2742 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1261, column: 13)
!2743 = !DILocation(line: 1261, column: 13, scope: !2742)
!2744 = !DILocation(line: 1262, column: 13, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 1262, column: 13)
!2746 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1262, column: 13)
!2747 = !DILocation(line: 1262, column: 13, scope: !2746)
!2748 = !DILocation(line: 1263, column: 13, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 1263, column: 13)
!2750 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1263, column: 13)
!2751 = !DILocation(line: 1263, column: 13, scope: !2750)
!2752 = !DILocation(line: 1264, column: 13, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 1264, column: 13)
!2754 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1264, column: 13)
!2755 = !DILocation(line: 1264, column: 13, scope: !2754)
!2756 = !DILocation(line: 1269, column: 13, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 1269, column: 13)
!2758 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1269, column: 13)
!2759 = !DILocation(line: 1269, column: 13, scope: !2758)
!2760 = !DILocation(line: 1270, column: 13, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 1270, column: 13)
!2762 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1270, column: 13)
!2763 = !DILocation(line: 1270, column: 13, scope: !2762)
!2764 = !DILocation(line: 1271, column: 13, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 1271, column: 13)
!2766 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1271, column: 13)
!2767 = !DILocation(line: 1271, column: 13, scope: !2766)
!2768 = !DILocation(line: 1272, column: 13, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 1272, column: 13)
!2770 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1272, column: 13)
!2771 = !DILocation(line: 1272, column: 13, scope: !2770)
!2772 = !DILocation(line: 1276, column: 13, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 1276, column: 13)
!2774 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1276, column: 13)
!2775 = !DILocation(line: 1276, column: 13, scope: !2774)
!2776 = !DILocation(line: 1278, column: 13, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 1278, column: 13)
!2778 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1278, column: 13)
!2779 = !DILocation(line: 1278, column: 13, scope: !2778)
!2780 = !DILocation(line: 1282, column: 13, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 1282, column: 13)
!2782 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1282, column: 13)
!2783 = !DILocation(line: 1282, column: 13, scope: !2782)
!2784 = !DILocation(line: 1283, column: 13, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 1283, column: 13)
!2786 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1283, column: 13)
!2787 = !DILocation(line: 1283, column: 13, scope: !2786)
!2788 = !DILocation(line: 1284, column: 13, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 1284, column: 13)
!2790 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1284, column: 13)
!2791 = !DILocation(line: 1284, column: 13, scope: !2790)
!2792 = !DILocation(line: 1285, column: 13, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 1285, column: 13)
!2794 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1285, column: 13)
!2795 = !DILocation(line: 1285, column: 13, scope: !2794)
!2796 = !DILocation(line: 1292, column: 13, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 1292, column: 13)
!2798 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1292, column: 13)
!2799 = !DILocation(line: 1292, column: 13, scope: !2798)
!2800 = !DILocation(line: 1293, column: 13, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 1293, column: 13)
!2802 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1293, column: 13)
!2803 = !DILocation(line: 1293, column: 13, scope: !2802)
!2804 = !DILocation(line: 1294, column: 13, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 1294, column: 13)
!2806 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1294, column: 13)
!2807 = !DILocation(line: 1294, column: 13, scope: !2806)
!2808 = !DILocation(line: 1301, column: 13, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 1301, column: 13)
!2810 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1301, column: 13)
!2811 = !DILocation(line: 1301, column: 13, scope: !2810)
!2812 = !DILocation(line: 1302, column: 13, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 1302, column: 13)
!2814 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1302, column: 13)
!2815 = !DILocation(line: 1302, column: 13, scope: !2814)
!2816 = !DILocation(line: 1303, column: 13, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 1303, column: 13)
!2818 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1303, column: 13)
!2819 = !DILocation(line: 1303, column: 13, scope: !2818)
!2820 = !DILocation(line: 1311, column: 9, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 1311, column: 9)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 1311, column: 9)
!2823 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 1310, column: 12)
!2824 = !DILocation(line: 1311, column: 9, scope: !2822)
!2825 = !DILocation(line: 1312, column: 9, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 1312, column: 9)
!2827 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 1312, column: 9)
!2828 = !DILocation(line: 1312, column: 9, scope: !2827)
!2829 = !DILocation(line: 1313, column: 45, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 1313, column: 13)
!2831 = !DILocation(line: 1315, column: 13, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 1315, column: 13)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 1315, column: 13)
!2834 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 1314, column: 46)
!2835 = !DILocation(line: 1315, column: 13, scope: !2833)
!2836 = !DILocation(line: 1318, column: 1, scope: !2685)
!2837 = distinct !DISubprogram(name: "ext_command", scope: !3, file: !3, line: 1096, type: !2838, scopeLine: 1104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!2505, !152, !34, !153, !41, !34, !41, !34, !41, !34}
!2840 = !{!2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2852, !2853, !2854}
!2841 = !DILocalVariable(name: "buf", arg: 1, scope: !2837, file: !3, line: 1096, type: !152)
!2842 = !DILocalVariable(name: "bufsz", arg: 2, scope: !2837, file: !3, line: 1097, type: !34)
!2843 = !DILocalVariable(name: "cmd", arg: 3, scope: !2837, file: !3, line: 1098, type: !153)
!2844 = !DILocalVariable(name: "ext", arg: 4, scope: !2837, file: !3, line: 1099, type: !41)
!2845 = !DILocalVariable(name: "extlen", arg: 5, scope: !2837, file: !3, line: 1100, type: !34)
!2846 = !DILocalVariable(name: "key", arg: 6, scope: !2837, file: !3, line: 1101, type: !41)
!2847 = !DILocalVariable(name: "keylen", arg: 7, scope: !2837, file: !3, line: 1102, type: !34)
!2848 = !DILocalVariable(name: "dta", arg: 8, scope: !2837, file: !3, line: 1103, type: !41)
!2849 = !DILocalVariable(name: "dtalen", arg: 9, scope: !2837, file: !3, line: 1104, type: !34)
!2850 = !DILocalVariable(name: "request", scope: !2837, file: !3, line: 1105, type: !2851)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!2852 = !DILocalVariable(name: "ext_offset", scope: !2837, file: !3, line: 1116, type: !2505)
!2853 = !DILocalVariable(name: "key_offset", scope: !2837, file: !3, line: 1117, type: !2505)
!2854 = !DILocalVariable(name: "dta_offset", scope: !2837, file: !3, line: 1118, type: !2505)
!2855 = !DILocation(line: 0, scope: !2837)
!2856 = !DILocation(line: 1106, column: 5, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 1106, column: 5)
!2858 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 1106, column: 5)
!2859 = !DILocation(line: 1106, column: 5, scope: !2858)
!2860 = !DILocation(line: 1108, column: 5, scope: !2837)
!2861 = !DILocation(line: 1109, column: 43, scope: !2837)
!2862 = !DILocation(line: 1110, column: 37, scope: !2837)
!2863 = !DILocation(line: 1110, column: 44, scope: !2837)
!2864 = !DILocation(line: 1111, column: 46, scope: !2837)
!2865 = !DILocation(line: 1111, column: 37, scope: !2837)
!2866 = !DILocation(line: 1111, column: 44, scope: !2837)
!2867 = !DILocation(line: 1112, column: 46, scope: !2837)
!2868 = !DILocation(line: 1112, column: 37, scope: !2837)
!2869 = !DILocation(line: 1112, column: 44, scope: !2837)
!2870 = !DILocation(line: 1113, column: 47, scope: !2837)
!2871 = !DILocation(line: 1113, column: 37, scope: !2837)
!2872 = !DILocation(line: 1113, column: 45, scope: !2837)
!2873 = !DILocation(line: 1114, column: 37, scope: !2837)
!2874 = !DILocation(line: 1114, column: 44, scope: !2837)
!2875 = !DILocation(line: 1120, column: 13, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 1120, column: 9)
!2877 = !DILocation(line: 1120, column: 9, scope: !2837)
!2878 = !DILocation(line: 1121, column: 20, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 1120, column: 22)
!2880 = !DILocation(line: 1121, column: 9, scope: !2879)
!2881 = !DILocation(line: 1122, column: 5, scope: !2879)
!2882 = !DILocation(line: 1123, column: 13, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 1123, column: 9)
!2884 = !DILocation(line: 1123, column: 9, scope: !2837)
!2885 = !DILocation(line: 1124, column: 20, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 1123, column: 22)
!2887 = !DILocation(line: 1124, column: 9, scope: !2886)
!2888 = !DILocation(line: 1125, column: 5, scope: !2886)
!2889 = !DILocation(line: 1126, column: 13, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 1126, column: 9)
!2891 = !DILocation(line: 1126, column: 9, scope: !2837)
!2892 = !DILocation(line: 1127, column: 20, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 1126, column: 22)
!2894 = !DILocation(line: 1127, column: 9, scope: !2893)
!2895 = !DILocation(line: 1128, column: 5, scope: !2893)
!2896 = !DILocation(line: 1130, column: 5, scope: !2837)
!2897 = distinct !DISubprogram(name: "__bswap_16", scope: !2898, file: !2898, line: 34, type: !2899, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2901)
!2898 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "552c402ec2d372531713984b317e0c35")
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!150, !150}
!2901 = !{!2902}
!2902 = !DILocalVariable(name: "__bsx", arg: 1, scope: !2897, file: !2898, line: 34, type: !150)
!2903 = !DILocation(line: 0, scope: !2897)
!2904 = !DILocation(line: 39, column: 3, scope: !2897)
!2905 = distinct !DISubprogram(name: "__bswap_32", scope: !2898, file: !2898, line: 49, type: !2906, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!165, !165}
!2908 = !{!2909}
!2909 = !DILocalVariable(name: "__bsx", arg: 1, scope: !2905, file: !2898, line: 49, type: !165)
!2910 = !DILocation(line: 0, scope: !2905)
!2911 = !DILocation(line: 54, column: 10, scope: !2905)
!2912 = !DILocation(line: 54, column: 3, scope: !2905)
!2913 = !DISubprogram(name: "memcpy", scope: !1899, file: !1899, line: 43, type: !2914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!33, !2916, !2917, !34}
!2916 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!2917 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!2918 = !DISubprogram(name: "rand", scope: !1876, file: !1876, line: 453, type: !2919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!23}
!2921 = distinct !DISubprogram(name: "safe_recv", scope: !3, file: !3, line: 1002, type: !2661, scopeLine: 1002, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2922)
!2922 = !{!2923, !2924, !2925, !2926}
!2923 = !DILocalVariable(name: "buf", arg: 1, scope: !2921, file: !3, line: 1002, type: !33)
!2924 = !DILocalVariable(name: "len", arg: 2, scope: !2921, file: !3, line: 1002, type: !34)
!2925 = !DILocalVariable(name: "offset", scope: !2921, file: !3, line: 1006, type: !2505)
!2926 = !DILocalVariable(name: "nr", scope: !2927, file: !3, line: 1008, type: !28)
!2927 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 1007, column: 8)
!2928 = !DILocation(line: 0, scope: !2921)
!2929 = !DILocation(line: 1003, column: 13, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 1003, column: 9)
!2931 = !DILocation(line: 1003, column: 9, scope: !2921)
!2932 = !DILocation(line: 1006, column: 11, scope: !2921)
!2933 = !DILocation(line: 1008, column: 22, scope: !2927)
!2934 = !DILocation(line: 1008, column: 27, scope: !2927)
!2935 = !DILocation(line: 1008, column: 50, scope: !2927)
!2936 = !DILocation(line: 1008, column: 64, scope: !2927)
!2937 = !DILocation(line: 0, scope: !2927)
!2938 = !DILocation(line: 1009, column: 13, scope: !2927)
!2939 = !DILocation(line: 1010, column: 17, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 1010, column: 17)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 1009, column: 23)
!2942 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 1009, column: 13)
!2943 = !DILocation(line: 1010, column: 23, scope: !2940)
!2944 = !DILocation(line: 1010, column: 17, scope: !2941)
!2945 = !DILocation(line: 1011, column: 25, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 1010, column: 33)
!2947 = !DILocation(line: 1011, column: 57, scope: !2946)
!2948 = !DILocation(line: 1011, column: 17, scope: !2946)
!2949 = !DILocation(line: 1012, column: 17, scope: !2946)
!2950 = !DILocation(line: 1015, column: 28, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 1015, column: 17)
!2952 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 1014, column: 16)
!2953 = !DILocation(line: 1015, column: 17, scope: !2952)
!2954 = !DILocation(line: 1018, column: 13, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 1018, column: 13)
!2956 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 1018, column: 13)
!2957 = !DILocation(line: 1019, column: 20, scope: !2952)
!2958 = distinct !{!2958, !2959, !2960, !287}
!2959 = !DILocation(line: 1007, column: 5, scope: !2921)
!2960 = !DILocation(line: 1021, column: 26, scope: !2921)
!2961 = !DILocation(line: 1024, column: 1, scope: !2921)
!2962 = distinct !DISubprogram(name: "test_binary_quit_impl", scope: !3, file: !3, line: 1339, type: !2963, scopeLine: 1339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!5, !153}
!2965 = !{!2966, !2967, !2973}
!2966 = !DILocalVariable(name: "cmd", arg: 1, scope: !2962, file: !3, line: 1339, type: !153)
!2967 = !DILocalVariable(name: "buffer", scope: !2962, file: !3, line: 1344, type: !2968)
!2968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2962, file: !3, line: 1340, size: 8192, elements: !2969)
!2969 = !{!2970, !2971, !2972}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2968, file: !3, line: 1341, baseType: !1464, size: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !2968, file: !3, line: 1342, baseType: !1490, size: 192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2968, file: !3, line: 1343, baseType: !1333, size: 8192)
!2973 = !DILocalVariable(name: "len", scope: !2962, file: !3, line: 1345, type: !34)
!2974 = !DILocation(line: 0, scope: !2962)
!2975 = !DILocation(line: 1340, column: 5, scope: !2962)
!2976 = !DILocation(line: 1344, column: 7, scope: !2962)
!2977 = !DILocation(line: 1345, column: 18, scope: !2962)
!2978 = !DILocation(line: 1348, column: 5, scope: !2962)
!2979 = !DILocation(line: 1349, column: 13, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 1349, column: 9)
!2981 = !DILocation(line: 1349, column: 9, scope: !2962)
!2982 = !DILocation(line: 1350, column: 9, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 1349, column: 42)
!2984 = !DILocation(line: 1351, column: 42, scope: !2983)
!2985 = !DILocation(line: 1351, column: 9, scope: !2983)
!2986 = !DILocation(line: 1353, column: 5, scope: !2983)
!2987 = !DILocation(line: 1356, column: 5, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1356, column: 5)
!2989 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 1356, column: 5)
!2990 = !DILocation(line: 1356, column: 5, scope: !2989)
!2991 = !DILocation(line: 1357, column: 5, scope: !2962)
!2992 = !DILocation(line: 1358, column: 39, scope: !2962)
!2993 = !DILocation(line: 1358, column: 11, scope: !2962)
!2994 = !DILocation(line: 1358, column: 9, scope: !2962)
!2995 = !DILocation(line: 1359, column: 5, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 1359, column: 5)
!2997 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 1359, column: 5)
!2998 = !DILocation(line: 1359, column: 5, scope: !2997)
!2999 = !DILocation(line: 1362, column: 1, scope: !2962)
!3000 = !DILocation(line: 1361, column: 5, scope: !2962)
!3001 = distinct !DISubprogram(name: "test_binary_set_impl", scope: !3, file: !3, line: 1372, type: !3002, scopeLine: 1372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!5, !51, !153}
!3004 = !{!3005, !3006, !3007, !3013, !3014, !3015, !3016}
!3005 = !DILocalVariable(name: "key", arg: 1, scope: !3001, file: !3, line: 1372, type: !51)
!3006 = !DILocalVariable(name: "cmd", arg: 2, scope: !3001, file: !3, line: 1372, type: !153)
!3007 = !DILocalVariable(name: "send", scope: !3001, file: !3, line: 1377, type: !3008)
!3008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3001, file: !3, line: 1373, size: 8192, elements: !3009)
!3009 = !{!3010, !3011, !3012}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3008, file: !3, line: 1374, baseType: !1464, size: 192)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3008, file: !3, line: 1375, baseType: !1490, size: 192)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3008, file: !3, line: 1376, baseType: !1333, size: 8192)
!3013 = !DILocalVariable(name: "receive", scope: !3001, file: !3, line: 1377, type: !3008)
!3014 = !DILocalVariable(name: "value", scope: !3001, file: !3, line: 1378, type: !493)
!3015 = !DILocalVariable(name: "len", scope: !3001, file: !3, line: 1379, type: !34)
!3016 = !DILocalVariable(name: "ii", scope: !3001, file: !3, line: 1384, type: !23)
!3017 = !DILocation(line: 0, scope: !3001)
!3018 = !DILocation(line: 1373, column: 5, scope: !3001)
!3019 = !DILocation(line: 1377, column: 7, scope: !3001)
!3020 = !DILocation(line: 1377, column: 13, scope: !3001)
!3021 = !DILocation(line: 1378, column: 5, scope: !3001)
!3022 = !DILocation(line: 1378, column: 14, scope: !3001)
!3023 = !DILocation(line: 1380, column: 39, scope: !3001)
!3024 = !DILocation(line: 1379, column: 18, scope: !3001)
!3025 = !DILocation(line: 1386, column: 9, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 1385, column: 33)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 1385, column: 5)
!3028 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1385, column: 5)
!3029 = !DILocation(line: 1387, column: 13, scope: !3026)
!3030 = !DILocation(line: 1394, column: 13, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1394, column: 9)
!3032 = !DILocation(line: 1394, column: 9, scope: !3001)
!3033 = !DILocation(line: 1388, column: 13, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 1387, column: 45)
!3035 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1387, column: 13)
!3036 = !DILocation(line: 1389, column: 13, scope: !3034)
!3037 = !DILocation(line: 1398, column: 88, scope: !3001)
!3038 = !DILocation(line: 1398, column: 41, scope: !3001)
!3039 = !DILocation(line: 1398, column: 45, scope: !3001)
!3040 = !DILocation(line: 1399, column: 5, scope: !3001)
!3041 = !DILocation(line: 1401, column: 9, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 1400, column: 41)
!3043 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1400, column: 9)
!3044 = !DILocation(line: 1402, column: 9, scope: !3042)
!3045 = !DILocation(line: 1404, column: 9, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 1404, column: 9)
!3047 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 1404, column: 9)
!3048 = !DILocation(line: 1404, column: 9, scope: !3047)
!3049 = !DILocation(line: 1406, column: 9, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 1405, column: 12)
!3051 = !DILocation(line: 1410, column: 1, scope: !3001)
!3052 = distinct !DISubprogram(name: "storage_command", scope: !3, file: !3, line: 1063, type: !3053, scopeLine: 1071, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!2505, !152, !34, !153, !41, !34, !41, !34, !164, !164}
!3055 = !{!3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3081}
!3056 = !DILocalVariable(name: "buf", arg: 1, scope: !3052, file: !3, line: 1063, type: !152)
!3057 = !DILocalVariable(name: "bufsz", arg: 2, scope: !3052, file: !3, line: 1064, type: !34)
!3058 = !DILocalVariable(name: "cmd", arg: 3, scope: !3052, file: !3, line: 1065, type: !153)
!3059 = !DILocalVariable(name: "key", arg: 4, scope: !3052, file: !3, line: 1066, type: !41)
!3060 = !DILocalVariable(name: "keylen", arg: 5, scope: !3052, file: !3, line: 1067, type: !34)
!3061 = !DILocalVariable(name: "dta", arg: 6, scope: !3052, file: !3, line: 1068, type: !41)
!3062 = !DILocalVariable(name: "dtalen", arg: 7, scope: !3052, file: !3, line: 1069, type: !34)
!3063 = !DILocalVariable(name: "flags", arg: 8, scope: !3052, file: !3, line: 1070, type: !164)
!3064 = !DILocalVariable(name: "exp", arg: 9, scope: !3052, file: !3, line: 1071, type: !164)
!3065 = !DILocalVariable(name: "request", scope: !3052, file: !3, line: 1073, type: !3066)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_set", file: !75, line: 280, baseType: !3068)
!3068 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !75, line: 271, size: 256, elements: !3069)
!3069 = !{!3070, !3079}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !3068, file: !75, line: 278, baseType: !3071, size: 256)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !75, line: 272, size: 256, elements: !3072)
!3072 = !{!3073, !3074}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3071, file: !75, line: 273, baseType: !1471, size: 192)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !3071, file: !75, line: 277, baseType: !3075, size: 64, offset: 192)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3071, file: !75, line: 274, size: 64, elements: !3076)
!3076 = !{!3077, !3078}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3075, file: !75, line: 275, baseType: !164, size: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "expiration", scope: !3075, file: !75, line: 276, baseType: !164, size: 32, offset: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3068, file: !75, line: 279, baseType: !3080, size: 256)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 256, elements: !2395)
!3081 = !DILocalVariable(name: "key_offset", scope: !3052, file: !3, line: 1086, type: !2505)
!3082 = !DILocation(line: 0, scope: !3052)
!3083 = !DILocation(line: 1074, column: 5, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 1074, column: 5)
!3085 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1074, column: 5)
!3086 = !DILocation(line: 1074, column: 5, scope: !3085)
!3087 = !DILocation(line: 1076, column: 5, scope: !3052)
!3088 = !DILocation(line: 1077, column: 43, scope: !3052)
!3089 = !DILocation(line: 1078, column: 37, scope: !3052)
!3090 = !DILocation(line: 1078, column: 44, scope: !3052)
!3091 = !DILocation(line: 1079, column: 46, scope: !3052)
!3092 = !DILocation(line: 1079, column: 37, scope: !3052)
!3093 = !DILocation(line: 1079, column: 44, scope: !3052)
!3094 = !DILocation(line: 1080, column: 37, scope: !3052)
!3095 = !DILocation(line: 1080, column: 44, scope: !3052)
!3096 = !DILocation(line: 1081, column: 47, scope: !3052)
!3097 = !DILocation(line: 1081, column: 37, scope: !3052)
!3098 = !DILocation(line: 1081, column: 45, scope: !3052)
!3099 = !DILocation(line: 1082, column: 37, scope: !3052)
!3100 = !DILocation(line: 1082, column: 44, scope: !3052)
!3101 = !DILocation(line: 1083, column: 22, scope: !3052)
!3102 = !DILocation(line: 1083, column: 27, scope: !3052)
!3103 = !DILocation(line: 1083, column: 33, scope: !3052)
!3104 = !DILocation(line: 1084, column: 27, scope: !3052)
!3105 = !DILocation(line: 1084, column: 38, scope: !3052)
!3106 = !DILocation(line: 1088, column: 16, scope: !3052)
!3107 = !DILocation(line: 1088, column: 5, scope: !3052)
!3108 = !DILocation(line: 1089, column: 13, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1089, column: 9)
!3110 = !DILocation(line: 1089, column: 9, scope: !3052)
!3111 = !DILocation(line: 1090, column: 33, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 1089, column: 22)
!3113 = !DILocation(line: 1090, column: 9, scope: !3112)
!3114 = !DILocation(line: 1091, column: 5, scope: !3112)
!3115 = !DILocation(line: 1093, column: 5, scope: !3052)
!3116 = distinct !DISubprogram(name: "test_binary_add_impl", scope: !3, file: !3, line: 1421, type: !3002, scopeLine: 1421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3117)
!3117 = !{!3118, !3119, !3120, !3121, !3127, !3128, !3129}
!3118 = !DILocalVariable(name: "key", arg: 1, scope: !3116, file: !3, line: 1421, type: !51)
!3119 = !DILocalVariable(name: "cmd", arg: 2, scope: !3116, file: !3, line: 1421, type: !153)
!3120 = !DILocalVariable(name: "value", scope: !3116, file: !3, line: 1422, type: !493)
!3121 = !DILocalVariable(name: "send", scope: !3116, file: !3, line: 1427, type: !3122)
!3122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3116, file: !3, line: 1423, size: 8192, elements: !3123)
!3123 = !{!3124, !3125, !3126}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3122, file: !3, line: 1424, baseType: !1464, size: 192)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3122, file: !3, line: 1425, baseType: !1490, size: 192)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3122, file: !3, line: 1426, baseType: !1333, size: 8192)
!3127 = !DILocalVariable(name: "receive", scope: !3116, file: !3, line: 1427, type: !3122)
!3128 = !DILocalVariable(name: "len", scope: !3116, file: !3, line: 1428, type: !34)
!3129 = !DILocalVariable(name: "ii", scope: !3116, file: !3, line: 1433, type: !23)
!3130 = !DILocation(line: 0, scope: !3116)
!3131 = !DILocation(line: 1422, column: 5, scope: !3116)
!3132 = !DILocation(line: 1422, column: 14, scope: !3116)
!3133 = !DILocation(line: 1423, column: 5, scope: !3116)
!3134 = !DILocation(line: 1427, column: 7, scope: !3116)
!3135 = !DILocation(line: 1427, column: 13, scope: !3116)
!3136 = !DILocation(line: 1429, column: 34, scope: !3116)
!3137 = !DILocation(line: 1428, column: 18, scope: !3116)
!3138 = !DILocation(line: 1435, column: 9, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 1434, column: 33)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 1434, column: 5)
!3141 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 1434, column: 5)
!3142 = !DILocation(line: 1437, column: 17, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1436, column: 22)
!3144 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 1436, column: 13)
!3145 = !DILocation(line: 1438, column: 17, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 1437, column: 49)
!3147 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 1437, column: 17)
!3148 = !DILocation(line: 1439, column: 17, scope: !3146)
!3149 = !DILocation(line: 1441, column: 13, scope: !3146)
!3150 = !DILocation(line: 1443, column: 13, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1442, column: 16)
!3152 = !DILocation(line: 1444, column: 13, scope: !3151)
!3153 = !DILocation(line: 1450, column: 1, scope: !3116)
!3154 = !DILocation(line: 1449, column: 5, scope: !3116)
!3155 = distinct !DISubprogram(name: "test_binary_replace_impl", scope: !3, file: !3, line: 1460, type: !3002, scopeLine: 1460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3156)
!3156 = !{!3157, !3158, !3159, !3160, !3166, !3167, !3168}
!3157 = !DILocalVariable(name: "key", arg: 1, scope: !3155, file: !3, line: 1460, type: !51)
!3158 = !DILocalVariable(name: "cmd", arg: 2, scope: !3155, file: !3, line: 1460, type: !153)
!3159 = !DILocalVariable(name: "value", scope: !3155, file: !3, line: 1461, type: !493)
!3160 = !DILocalVariable(name: "send", scope: !3155, file: !3, line: 1466, type: !3161)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3155, file: !3, line: 1462, size: 8192, elements: !3162)
!3162 = !{!3163, !3164, !3165}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3161, file: !3, line: 1463, baseType: !1464, size: 192)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3161, file: !3, line: 1464, baseType: !1490, size: 192)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3161, file: !3, line: 1465, baseType: !1333, size: 8192)
!3166 = !DILocalVariable(name: "receive", scope: !3155, file: !3, line: 1466, type: !3161)
!3167 = !DILocalVariable(name: "len", scope: !3155, file: !3, line: 1467, type: !34)
!3168 = !DILocalVariable(name: "ii", scope: !3155, file: !3, line: 1484, type: !23)
!3169 = !DILocation(line: 0, scope: !3155)
!3170 = !DILocation(line: 1461, column: 5, scope: !3155)
!3171 = !DILocation(line: 1461, column: 14, scope: !3155)
!3172 = !DILocation(line: 1462, column: 5, scope: !3155)
!3173 = !DILocation(line: 1466, column: 7, scope: !3155)
!3174 = !DILocation(line: 1466, column: 13, scope: !3155)
!3175 = !DILocation(line: 1468, column: 39, scope: !3155)
!3176 = !DILocation(line: 1467, column: 18, scope: !3155)
!3177 = !DILocation(line: 1470, column: 5, scope: !3155)
!3178 = !DILocation(line: 1471, column: 5, scope: !3155)
!3179 = !DILocation(line: 1472, column: 39, scope: !3155)
!3180 = !DILocation(line: 1472, column: 5, scope: !3155)
!3181 = !DILocation(line: 1476, column: 32, scope: !3155)
!3182 = !DILocation(line: 1474, column: 11, scope: !3155)
!3183 = !DILocation(line: 1477, column: 5, scope: !3155)
!3184 = !DILocation(line: 1478, column: 5, scope: !3155)
!3185 = !DILocation(line: 1479, column: 5, scope: !3155)
!3186 = !DILocation(line: 1483, column: 32, scope: !3155)
!3187 = !DILocation(line: 1482, column: 11, scope: !3155)
!3188 = !DILocation(line: 1486, column: 9, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 1485, column: 33)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 1485, column: 5)
!3191 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 1485, column: 5)
!3192 = !DILocation(line: 1487, column: 13, scope: !3189)
!3193 = !DILocation(line: 1488, column: 13, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 1487, column: 49)
!3195 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 1487, column: 13)
!3196 = !DILocation(line: 1489, column: 13, scope: !3194)
!3197 = !DILocation(line: 1495, column: 9, scope: !3155)
!3198 = !DILocation(line: 1495, column: 13, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 1495, column: 9)
!3200 = !DILocation(line: 1496, column: 9, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 1495, column: 46)
!3202 = !DILocation(line: 1497, column: 5, scope: !3201)
!3203 = !DILocation(line: 1500, column: 1, scope: !3155)
!3204 = !DILocation(line: 1499, column: 5, scope: !3155)
!3205 = distinct !DISubprogram(name: "test_binary_delete_impl", scope: !3, file: !3, line: 1512, type: !3002, scopeLine: 1512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3206)
!3206 = !{!3207, !3208, !3209, !3215, !3216}
!3207 = !DILocalVariable(name: "key", arg: 1, scope: !3205, file: !3, line: 1512, type: !51)
!3208 = !DILocalVariable(name: "cmd", arg: 2, scope: !3205, file: !3, line: 1512, type: !153)
!3209 = !DILocalVariable(name: "send", scope: !3205, file: !3, line: 1517, type: !3210)
!3210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3205, file: !3, line: 1513, size: 8192, elements: !3211)
!3211 = !{!3212, !3213, !3214}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3210, file: !3, line: 1514, baseType: !1464, size: 192)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3210, file: !3, line: 1515, baseType: !1490, size: 192)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3210, file: !3, line: 1516, baseType: !1333, size: 8192)
!3215 = !DILocalVariable(name: "receive", scope: !3205, file: !3, line: 1517, type: !3210)
!3216 = !DILocalVariable(name: "len", scope: !3205, file: !3, line: 1518, type: !34)
!3217 = !DILocation(line: 0, scope: !3205)
!3218 = !DILocation(line: 1513, column: 5, scope: !3205)
!3219 = !DILocation(line: 1517, column: 7, scope: !3205)
!3220 = !DILocation(line: 1517, column: 13, scope: !3205)
!3221 = !DILocation(line: 1519, column: 35, scope: !3205)
!3222 = !DILocation(line: 1518, column: 18, scope: !3205)
!3223 = !DILocation(line: 1521, column: 5, scope: !3205)
!3224 = !DILocation(line: 1522, column: 5, scope: !3205)
!3225 = !DILocation(line: 1523, column: 39, scope: !3205)
!3226 = !DILocation(line: 1523, column: 5, scope: !3205)
!3227 = !DILocation(line: 1527, column: 32, scope: !3205)
!3228 = !DILocation(line: 1525, column: 11, scope: !3205)
!3229 = !DILocation(line: 1528, column: 5, scope: !3205)
!3230 = !DILocation(line: 1529, column: 5, scope: !3205)
!3231 = !DILocation(line: 1530, column: 5, scope: !3205)
!3232 = !DILocation(line: 1534, column: 33, scope: !3205)
!3233 = !DILocation(line: 1533, column: 11, scope: !3205)
!3234 = !DILocation(line: 1535, column: 5, scope: !3205)
!3235 = !DILocation(line: 1537, column: 13, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 1537, column: 9)
!3237 = !DILocation(line: 1537, column: 9, scope: !3205)
!3238 = !DILocation(line: 1538, column: 9, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 1537, column: 44)
!3240 = !DILocation(line: 1539, column: 9, scope: !3239)
!3241 = !DILocation(line: 1541, column: 5, scope: !3239)
!3242 = !DILocation(line: 1543, column: 5, scope: !3205)
!3243 = !DILocation(line: 1544, column: 5, scope: !3205)
!3244 = !DILocation(line: 1545, column: 5, scope: !3205)
!3245 = !DILocation(line: 1549, column: 1, scope: !3205)
!3246 = !DILocation(line: 1548, column: 5, scope: !3205)
!3247 = distinct !DISubprogram(name: "test_binary_get_impl", scope: !3, file: !3, line: 1561, type: !3002, scopeLine: 1561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3248)
!3248 = !{!3249, !3250, !3251, !3257, !3258, !3259, !3260, !3261, !3262, !3270}
!3249 = !DILocalVariable(name: "key", arg: 1, scope: !3247, file: !3, line: 1561, type: !51)
!3250 = !DILocalVariable(name: "cmd", arg: 2, scope: !3247, file: !3, line: 1561, type: !153)
!3251 = !DILocalVariable(name: "send", scope: !3247, file: !3, line: 1566, type: !3252)
!3252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3247, file: !3, line: 1562, size: 8192, elements: !3253)
!3253 = !{!3254, !3255, !3256}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3252, file: !3, line: 1563, baseType: !1464, size: 192)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3252, file: !3, line: 1564, baseType: !1490, size: 192)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3252, file: !3, line: 1565, baseType: !1333, size: 8192)
!3257 = !DILocalVariable(name: "receive", scope: !3247, file: !3, line: 1566, type: !3252)
!3258 = !DILocalVariable(name: "expiration", scope: !3247, file: !3, line: 1568, type: !164)
!3259 = !DILocalVariable(name: "extlen", scope: !3247, file: !3, line: 1569, type: !34)
!3260 = !DILocalVariable(name: "len", scope: !3247, file: !3, line: 1573, type: !34)
!3261 = !DILocalVariable(name: "ii", scope: !3247, file: !3, line: 1593, type: !23)
!3262 = !DILocalVariable(name: "temp", scope: !3263, file: !3, line: 1598, type: !3266)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 1594, column: 33)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 1594, column: 5)
!3265 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 1594, column: 5)
!3266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3247, file: !3, line: 1595, size: 8192, elements: !3267)
!3267 = !{!3268, !3269}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3266, file: !3, line: 1596, baseType: !1464, size: 192)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3266, file: !3, line: 1597, baseType: !1333, size: 8192)
!3270 = !DILocalVariable(name: "l", scope: !3263, file: !3, line: 1599, type: !34)
!3271 = !DILocation(line: 0, scope: !3247)
!3272 = !DILocation(line: 1562, column: 5, scope: !3247)
!3273 = !DILocation(line: 1566, column: 7, scope: !3247)
!3274 = !DILocation(line: 1566, column: 13, scope: !3247)
!3275 = !DILocation(line: 1568, column: 5, scope: !3247)
!3276 = !DILocation(line: 1568, column: 27, scope: !3247)
!3277 = !DILocation(line: 1568, column: 14, scope: !3247)
!3278 = !DILocation(line: 1570, column: 13, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 1570, column: 9)
!3280 = !DILocation(line: 1570, column: 40, scope: !3279)
!3281 = !DILocation(line: 1574, column: 30, scope: !3247)
!3282 = !DILocation(line: 1575, column: 35, scope: !3247)
!3283 = !DILocation(line: 1573, column: 18, scope: !3247)
!3284 = !DILocation(line: 1577, column: 5, scope: !3247)
!3285 = !DILocation(line: 1578, column: 5, scope: !3247)
!3286 = !DILocation(line: 1579, column: 39, scope: !3247)
!3287 = !DILocation(line: 1579, column: 5, scope: !3247)
!3288 = !DILocation(line: 1584, column: 32, scope: !3247)
!3289 = !DILocation(line: 1582, column: 11, scope: !3247)
!3290 = !DILocation(line: 1586, column: 5, scope: !3247)
!3291 = !DILocation(line: 1587, column: 5, scope: !3247)
!3292 = !DILocation(line: 1588, column: 5, scope: !3247)
!3293 = !DILocation(line: 1594, column: 5, scope: !3265)
!3294 = !DILocation(line: 1595, column: 9, scope: !3263)
!3295 = !DILocation(line: 1598, column: 11, scope: !3263)
!3296 = !DILocation(line: 1601, column: 37, scope: !3263)
!3297 = !DILocation(line: 1599, column: 20, scope: !3263)
!3298 = !DILocation(line: 0, scope: !3263)
!3299 = !DILocation(line: 1602, column: 27, scope: !3263)
!3300 = !DILocation(line: 1602, column: 9, scope: !3263)
!3301 = !DILocation(line: 1603, column: 13, scope: !3263)
!3302 = !DILocation(line: 1604, column: 5, scope: !3264)
!3303 = !DILocation(line: 1594, column: 27, scope: !3264)
!3304 = !DILocation(line: 1594, column: 21, scope: !3264)
!3305 = distinct !{!3305, !3293, !3306, !287}
!3306 = !DILocation(line: 1604, column: 5, scope: !3265)
!3307 = !DILocation(line: 1606, column: 5, scope: !3247)
!3308 = !DILocation(line: 1608, column: 9, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 1607, column: 33)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 1607, column: 5)
!3311 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 1607, column: 5)
!3312 = !DILocation(line: 1609, column: 9, scope: !3309)
!3313 = !DILocation(line: 1614, column: 1, scope: !3247)
!3314 = !DILocation(line: 1613, column: 5, scope: !3247)
!3315 = distinct !DISubprogram(name: "test_binary_getq_impl", scope: !3, file: !3, line: 1632, type: !3002, scopeLine: 1632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3316)
!3316 = !{!3317, !3318, !3319, !3320, !3326, !3327, !3328, !3329, !3330, !3331}
!3317 = !DILocalVariable(name: "key", arg: 1, scope: !3315, file: !3, line: 1632, type: !51)
!3318 = !DILocalVariable(name: "cmd", arg: 2, scope: !3315, file: !3, line: 1632, type: !153)
!3319 = !DILocalVariable(name: "missing", scope: !3315, file: !3, line: 1633, type: !51)
!3320 = !DILocalVariable(name: "send", scope: !3315, file: !3, line: 1638, type: !3321)
!3321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !3, line: 1634, size: 8192, elements: !3322)
!3322 = !{!3323, !3324, !3325}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3321, file: !3, line: 1635, baseType: !1464, size: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3321, file: !3, line: 1636, baseType: !1490, size: 192)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3321, file: !3, line: 1637, baseType: !1333, size: 8192)
!3326 = !DILocalVariable(name: "temp", scope: !3315, file: !3, line: 1638, type: !3321)
!3327 = !DILocalVariable(name: "receive", scope: !3315, file: !3, line: 1638, type: !3321)
!3328 = !DILocalVariable(name: "expiration", scope: !3315, file: !3, line: 1640, type: !164)
!3329 = !DILocalVariable(name: "extlen", scope: !3315, file: !3, line: 1641, type: !34)
!3330 = !DILocalVariable(name: "len", scope: !3315, file: !3, line: 1645, type: !34)
!3331 = !DILocalVariable(name: "len2", scope: !3315, file: !3, line: 1649, type: !34)
!3332 = !DILocation(line: 0, scope: !3315)
!3333 = !DILocation(line: 1634, column: 5, scope: !3315)
!3334 = !DILocation(line: 1638, column: 7, scope: !3315)
!3335 = !DILocation(line: 1638, column: 13, scope: !3315)
!3336 = !DILocation(line: 1638, column: 19, scope: !3315)
!3337 = !DILocation(line: 1640, column: 5, scope: !3315)
!3338 = !DILocation(line: 1640, column: 27, scope: !3315)
!3339 = !DILocation(line: 1640, column: 14, scope: !3315)
!3340 = !DILocation(line: 1642, column: 13, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 1642, column: 9)
!3342 = !DILocation(line: 1642, column: 41, scope: !3341)
!3343 = !DILocation(line: 1647, column: 39, scope: !3315)
!3344 = !DILocation(line: 1645, column: 18, scope: !3315)
!3345 = !DILocation(line: 1650, column: 31, scope: !3315)
!3346 = !DILocation(line: 1651, column: 40, scope: !3315)
!3347 = !DILocation(line: 1649, column: 19, scope: !3315)
!3348 = !DILocation(line: 1654, column: 41, scope: !3315)
!3349 = !DILocation(line: 1654, column: 48, scope: !3315)
!3350 = !DILocation(line: 1655, column: 23, scope: !3315)
!3351 = !DILocation(line: 1655, column: 5, scope: !3315)
!3352 = !DILocation(line: 1656, column: 9, scope: !3315)
!3353 = !DILocation(line: 1660, column: 29, scope: !3315)
!3354 = !DILocation(line: 1658, column: 12, scope: !3315)
!3355 = !DILocation(line: 1661, column: 23, scope: !3315)
!3356 = !DILocation(line: 1661, column: 5, scope: !3315)
!3357 = !DILocation(line: 1662, column: 9, scope: !3315)
!3358 = !DILocation(line: 1664, column: 5, scope: !3315)
!3359 = !DILocation(line: 1665, column: 5, scope: !3315)
!3360 = !DILocation(line: 1666, column: 39, scope: !3315)
!3361 = !DILocation(line: 1666, column: 5, scope: !3315)
!3362 = !DILocation(line: 1669, column: 5, scope: !3315)
!3363 = !DILocation(line: 1670, column: 5, scope: !3315)
!3364 = !DILocation(line: 1674, column: 1, scope: !3315)
!3365 = !DILocation(line: 1673, column: 5, scope: !3315)
!3366 = distinct !DISubprogram(name: "test_binary_incr_impl", scope: !3, file: !3, line: 1692, type: !3002, scopeLine: 1692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3367)
!3367 = !{!3368, !3369, !3370, !3389, !3390, !3391}
!3368 = !DILocalVariable(name: "key", arg: 1, scope: !3366, file: !3, line: 1692, type: !51)
!3369 = !DILocalVariable(name: "cmd", arg: 2, scope: !3366, file: !3, line: 1692, type: !153)
!3370 = !DILocalVariable(name: "send", scope: !3366, file: !3, line: 1698, type: !3371)
!3371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3366, file: !3, line: 1693, size: 8192, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3388}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3371, file: !3, line: 1694, baseType: !1464, size: 192)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "response_header", scope: !3371, file: !3, line: 1695, baseType: !1490, size: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3371, file: !3, line: 1696, baseType: !3376, size: 256)
!3376 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_response_incr", file: !75, line: 335, baseType: !3377)
!3377 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !75, line: 327, size: 256, elements: !3378)
!3378 = !{!3379, !3387}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !3377, file: !75, line: 333, baseType: !3380, size: 256)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3377, file: !75, line: 328, size: 256, elements: !3381)
!3381 = !{!3382, !3383}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3380, file: !75, line: 329, baseType: !1497, size: 192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !3380, file: !75, line: 332, baseType: !3384, size: 64, offset: 192)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3380, file: !75, line: 330, size: 64, elements: !3385)
!3385 = !{!3386}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3384, file: !75, line: 331, baseType: !493, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3377, file: !75, line: 334, baseType: !3080, size: 256)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3371, file: !3, line: 1697, baseType: !1333, size: 8192)
!3389 = !DILocalVariable(name: "receive", scope: !3366, file: !3, line: 1698, type: !3371)
!3390 = !DILocalVariable(name: "len", scope: !3366, file: !3, line: 1699, type: !34)
!3391 = !DILocalVariable(name: "ii", scope: !3366, file: !3, line: 1702, type: !23)
!3392 = !DILocation(line: 0, scope: !3366)
!3393 = !DILocation(line: 1693, column: 5, scope: !3366)
!3394 = !DILocation(line: 1698, column: 7, scope: !3366)
!3395 = !DILocation(line: 1698, column: 13, scope: !3366)
!3396 = !DILocation(line: 1700, column: 42, scope: !3366)
!3397 = !DILocation(line: 1699, column: 18, scope: !3366)
!3398 = !DILocation(line: 1703, column: 5, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3366, file: !3, line: 1703, column: 5)
!3400 = !DILocation(line: 1704, column: 9, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 1703, column: 33)
!3402 = distinct !DILexicalBlock(scope: !3399, file: !3, line: 1703, column: 5)
!3403 = !DILocation(line: 1705, column: 13, scope: !3401)
!3404 = !DILocation(line: 1706, column: 13, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 1705, column: 51)
!3406 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 1705, column: 13)
!3407 = !DILocation(line: 1707, column: 13, scope: !3405)
!3408 = !DILocation(line: 1709, column: 13, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 1709, column: 13)
!3410 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 1709, column: 13)
!3411 = !DILocation(line: 1709, column: 13, scope: !3410)
!3412 = !DILocation(line: 1703, column: 27, scope: !3402)
!3413 = !DILocation(line: 1703, column: 21, scope: !3402)
!3414 = distinct !{!3414, !3398, !3415, !287}
!3415 = !DILocation(line: 1711, column: 5, scope: !3399)
!3416 = !DILocation(line: 1713, column: 13, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3366, file: !3, line: 1713, column: 9)
!3418 = !DILocation(line: 1713, column: 9, scope: !3366)
!3419 = !DILocation(line: 1714, column: 9, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 1713, column: 48)
!3421 = !DILocation(line: 1715, column: 5, scope: !3420)
!3422 = !DILocation(line: 1717, column: 1, scope: !3366)
!3423 = !DILocation(line: 1716, column: 5, scope: !3366)
!3424 = distinct !DISubprogram(name: "arithmetic_command", scope: !3, file: !3, line: 1192, type: !3425, scopeLine: 1199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3427)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!2505, !152, !34, !153, !41, !34, !493, !493, !164}
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3455}
!3428 = !DILocalVariable(name: "buf", arg: 1, scope: !3424, file: !3, line: 1192, type: !152)
!3429 = !DILocalVariable(name: "bufsz", arg: 2, scope: !3424, file: !3, line: 1193, type: !34)
!3430 = !DILocalVariable(name: "cmd", arg: 3, scope: !3424, file: !3, line: 1194, type: !153)
!3431 = !DILocalVariable(name: "key", arg: 4, scope: !3424, file: !3, line: 1195, type: !41)
!3432 = !DILocalVariable(name: "keylen", arg: 5, scope: !3424, file: !3, line: 1196, type: !34)
!3433 = !DILocalVariable(name: "delta", arg: 6, scope: !3424, file: !3, line: 1197, type: !493)
!3434 = !DILocalVariable(name: "initial", arg: 7, scope: !3424, file: !3, line: 1198, type: !493)
!3435 = !DILocalVariable(name: "exp", arg: 8, scope: !3424, file: !3, line: 1199, type: !164)
!3436 = !DILocalVariable(name: "request", scope: !3424, file: !3, line: 1200, type: !3437)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_incr", file: !75, line: 319, baseType: !3439)
!3439 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !75, line: 309, size: 384, elements: !3440)
!3440 = !{!3441, !3451}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !3439, file: !75, line: 317, baseType: !3442, size: 384)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3439, file: !75, line: 310, size: 384, elements: !3443)
!3443 = !{!3444, !3445}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3442, file: !75, line: 311, baseType: !1471, size: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !3442, file: !75, line: 316, baseType: !3446, size: 192, offset: 192)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3442, file: !75, line: 312, size: 192, elements: !3447)
!3447 = !{!3448, !3449, !3450}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !3446, file: !75, line: 313, baseType: !493, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !3446, file: !75, line: 314, baseType: !493, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "expiration", scope: !3446, file: !75, line: 315, baseType: !164, size: 32, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3439, file: !75, line: 318, baseType: !3452, size: 352)
!3452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 352, elements: !3453)
!3453 = !{!3454}
!3454 = !DISubrange(count: 44)
!3455 = !DILocalVariable(name: "key_offset", scope: !3424, file: !3, line: 1214, type: !2505)
!3456 = !DILocation(line: 0, scope: !3424)
!3457 = !DILocation(line: 1201, column: 5, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 1201, column: 5)
!3459 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 1201, column: 5)
!3460 = !DILocation(line: 1201, column: 5, scope: !3459)
!3461 = !DILocation(line: 1203, column: 5, scope: !3424)
!3462 = !DILocation(line: 1204, column: 43, scope: !3424)
!3463 = !DILocation(line: 1205, column: 37, scope: !3424)
!3464 = !DILocation(line: 1205, column: 44, scope: !3424)
!3465 = !DILocation(line: 1206, column: 46, scope: !3424)
!3466 = !DILocation(line: 1206, column: 37, scope: !3424)
!3467 = !DILocation(line: 1206, column: 44, scope: !3424)
!3468 = !DILocation(line: 1207, column: 37, scope: !3424)
!3469 = !DILocation(line: 1207, column: 44, scope: !3424)
!3470 = !DILocation(line: 1208, column: 47, scope: !3424)
!3471 = !DILocation(line: 1208, column: 37, scope: !3424)
!3472 = !DILocation(line: 1208, column: 45, scope: !3424)
!3473 = !DILocation(line: 1209, column: 37, scope: !3424)
!3474 = !DILocation(line: 1209, column: 44, scope: !3424)
!3475 = !DILocation(line: 1210, column: 35, scope: !3424)
!3476 = !DILocation(line: 1210, column: 22, scope: !3424)
!3477 = !DILocation(line: 1210, column: 27, scope: !3424)
!3478 = !DILocation(line: 1210, column: 33, scope: !3424)
!3479 = !DILocation(line: 1211, column: 37, scope: !3424)
!3480 = !DILocation(line: 1211, column: 27, scope: !3424)
!3481 = !DILocation(line: 1211, column: 35, scope: !3424)
!3482 = !DILocation(line: 1212, column: 40, scope: !3424)
!3483 = !DILocation(line: 1212, column: 27, scope: !3424)
!3484 = !DILocation(line: 1212, column: 38, scope: !3424)
!3485 = !DILocation(line: 1216, column: 16, scope: !3424)
!3486 = !DILocation(line: 1216, column: 5, scope: !3424)
!3487 = !DILocation(line: 1217, column: 23, scope: !3424)
!3488 = !DILocation(line: 1217, column: 5, scope: !3424)
!3489 = !DISubprogram(name: "ntohll", scope: !1967, file: !1967, line: 27, type: !3490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!493, !493}
!3492 = !DISubprogram(name: "htonll", scope: !1967, file: !1967, line: 26, type: !3490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!3493 = distinct !DISubprogram(name: "test_binary_decr_impl", scope: !3, file: !3, line: 1729, type: !3002, scopeLine: 1729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3494)
!3494 = !{!3495, !3496, !3497, !3505, !3506, !3507}
!3495 = !DILocalVariable(name: "key", arg: 1, scope: !3493, file: !3, line: 1729, type: !51)
!3496 = !DILocalVariable(name: "cmd", arg: 2, scope: !3493, file: !3, line: 1729, type: !153)
!3497 = !DILocalVariable(name: "send", scope: !3493, file: !3, line: 1735, type: !3498)
!3498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3493, file: !3, line: 1730, size: 8192, elements: !3499)
!3499 = !{!3500, !3501, !3502, !3504}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3498, file: !3, line: 1731, baseType: !1464, size: 192)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "response_header", scope: !3498, file: !3, line: 1732, baseType: !1490, size: 192)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3498, file: !3, line: 1733, baseType: !3503, size: 256)
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_response_decr", file: !75, line: 336, baseType: !3376)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3498, file: !3, line: 1734, baseType: !1333, size: 8192)
!3505 = !DILocalVariable(name: "receive", scope: !3493, file: !3, line: 1735, type: !3498)
!3506 = !DILocalVariable(name: "len", scope: !3493, file: !3, line: 1736, type: !34)
!3507 = !DILocalVariable(name: "ii", scope: !3493, file: !3, line: 1739, type: !23)
!3508 = !DILocation(line: 0, scope: !3493)
!3509 = !DILocation(line: 1730, column: 5, scope: !3493)
!3510 = !DILocation(line: 1735, column: 7, scope: !3493)
!3511 = !DILocation(line: 1735, column: 13, scope: !3493)
!3512 = !DILocation(line: 1737, column: 42, scope: !3493)
!3513 = !DILocation(line: 1736, column: 18, scope: !3493)
!3514 = !DILocation(line: 1740, column: 5, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3493, file: !3, line: 1740, column: 5)
!3516 = !DILocation(line: 1741, column: 9, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 1740, column: 33)
!3518 = distinct !DILexicalBlock(scope: !3515, file: !3, line: 1740, column: 5)
!3519 = !DILocation(line: 1742, column: 13, scope: !3517)
!3520 = !DILocation(line: 1743, column: 13, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 1742, column: 51)
!3522 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1742, column: 13)
!3523 = !DILocation(line: 1744, column: 13, scope: !3521)
!3524 = !DILocation(line: 1746, column: 13, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 1746, column: 13)
!3526 = distinct !DILexicalBlock(scope: !3521, file: !3, line: 1746, column: 13)
!3527 = !DILocation(line: 1746, column: 13, scope: !3526)
!3528 = !DILocation(line: 1740, column: 21, scope: !3518)
!3529 = !DILocation(line: 1740, column: 27, scope: !3518)
!3530 = distinct !{!3530, !3514, !3531, !287}
!3531 = !DILocation(line: 1748, column: 5, scope: !3515)
!3532 = !DILocation(line: 1751, column: 5, scope: !3493)
!3533 = !DILocation(line: 1753, column: 9, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 1752, column: 47)
!3535 = distinct !DILexicalBlock(scope: !3493, file: !3, line: 1752, column: 9)
!3536 = !DILocation(line: 1754, column: 9, scope: !3534)
!3537 = !DILocation(line: 1756, column: 9, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 1756, column: 9)
!3539 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 1756, column: 9)
!3540 = !DILocation(line: 1756, column: 9, scope: !3539)
!3541 = !DILocation(line: 1758, column: 9, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 1757, column: 12)
!3543 = !DILocation(line: 1762, column: 1, scope: !3493)
!3544 = !DILocation(line: 1761, column: 5, scope: !3493)
!3545 = distinct !DISubprogram(name: "test_binary_flush_impl", scope: !3, file: !3, line: 1793, type: !3002, scopeLine: 1793, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3546)
!3546 = !{!3547, !3548, !3549, !3555, !3556, !3557}
!3547 = !DILocalVariable(name: "key", arg: 1, scope: !3545, file: !3, line: 1793, type: !51)
!3548 = !DILocalVariable(name: "cmd", arg: 2, scope: !3545, file: !3, line: 1793, type: !153)
!3549 = !DILocalVariable(name: "send", scope: !3545, file: !3, line: 1798, type: !3550)
!3550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3545, file: !3, line: 1794, size: 8192, elements: !3551)
!3551 = !{!3552, !3553, !3554}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3550, file: !3, line: 1795, baseType: !1464, size: 192)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3550, file: !3, line: 1796, baseType: !1490, size: 192)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3550, file: !3, line: 1797, baseType: !1333, size: 8192)
!3555 = !DILocalVariable(name: "receive", scope: !3545, file: !3, line: 1798, type: !3550)
!3556 = !DILocalVariable(name: "len", scope: !3545, file: !3, line: 1800, type: !34)
!3557 = !DILocalVariable(name: "ii", scope: !3545, file: !3, line: 1829, type: !23)
!3558 = !DILocation(line: 0, scope: !3545)
!3559 = !DILocation(line: 1794, column: 5, scope: !3545)
!3560 = !DILocation(line: 1798, column: 7, scope: !3545)
!3561 = !DILocation(line: 1798, column: 13, scope: !3545)
!3562 = !DILocation(line: 1802, column: 39, scope: !3545)
!3563 = !DILocation(line: 1800, column: 18, scope: !3545)
!3564 = !DILocation(line: 1803, column: 5, scope: !3545)
!3565 = !DILocation(line: 1804, column: 5, scope: !3545)
!3566 = !DILocation(line: 1805, column: 39, scope: !3545)
!3567 = !DILocation(line: 1805, column: 5, scope: !3545)
!3568 = !DILocation(line: 1808, column: 11, scope: !3545)
!3569 = !DILocation(line: 1809, column: 5, scope: !3545)
!3570 = !DILocation(line: 1810, column: 13, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 1810, column: 9)
!3572 = !DILocation(line: 1810, column: 9, scope: !3545)
!3573 = !DILocation(line: 1811, column: 9, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 1810, column: 43)
!3575 = !DILocation(line: 1812, column: 9, scope: !3574)
!3576 = !DILocation(line: 1814, column: 5, scope: !3574)
!3577 = !DILocation(line: 1817, column: 28, scope: !3545)
!3578 = !DILocation(line: 1816, column: 11, scope: !3545)
!3579 = !DILocation(line: 1818, column: 5, scope: !3545)
!3580 = !DILocation(line: 1819, column: 5, scope: !3545)
!3581 = !DILocation(line: 1820, column: 5, scope: !3545)
!3582 = !DILocation(line: 1823, column: 5, scope: !3545)
!3583 = !DILocation(line: 1824, column: 5, scope: !3545)
!3584 = !DILocation(line: 1825, column: 5, scope: !3545)
!3585 = !DILocation(line: 1826, column: 5, scope: !3545)
!3586 = !DILocation(line: 1833, column: 36, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 1830, column: 32)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 1830, column: 5)
!3589 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 1830, column: 5)
!3590 = !DILocation(line: 1831, column: 15, scope: !3587)
!3591 = !DILocation(line: 1834, column: 9, scope: !3587)
!3592 = !DILocation(line: 1835, column: 9, scope: !3587)
!3593 = !DILocation(line: 1836, column: 9, scope: !3587)
!3594 = !DILocation(line: 1839, column: 15, scope: !3587)
!3595 = !DILocation(line: 1840, column: 9, scope: !3587)
!3596 = !DILocation(line: 1841, column: 13, scope: !3587)
!3597 = !DILocation(line: 1842, column: 13, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 1841, column: 47)
!3599 = distinct !DILexicalBlock(scope: !3587, file: !3, line: 1841, column: 13)
!3600 = !DILocation(line: 1843, column: 13, scope: !3598)
!3601 = !DILocation(line: 1845, column: 9, scope: !3598)
!3602 = !DILocation(line: 1849, column: 32, scope: !3587)
!3603 = !DILocation(line: 1847, column: 15, scope: !3587)
!3604 = !DILocation(line: 1850, column: 9, scope: !3587)
!3605 = !DILocation(line: 1851, column: 9, scope: !3587)
!3606 = !DILocation(line: 1852, column: 9, scope: !3587)
!3607 = !DILocation(line: 1857, column: 1, scope: !3545)
!3608 = !DILocation(line: 1856, column: 5, scope: !3545)
!3609 = distinct !DISubprogram(name: "flush_command", scope: !3, file: !3, line: 1144, type: !3610, scopeLine: 1144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!2505, !152, !34, !153, !164, !59}
!3612 = !{!3613, !3614, !3615, !3616, !3617, !3618, !3633}
!3613 = !DILocalVariable(name: "buf", arg: 1, scope: !3609, file: !3, line: 1144, type: !152)
!3614 = !DILocalVariable(name: "bufsz", arg: 2, scope: !3609, file: !3, line: 1144, type: !34)
!3615 = !DILocalVariable(name: "cmd", arg: 3, scope: !3609, file: !3, line: 1144, type: !153)
!3616 = !DILocalVariable(name: "exptime", arg: 4, scope: !3609, file: !3, line: 1144, type: !164)
!3617 = !DILocalVariable(name: "use_extra", arg: 5, scope: !3609, file: !3, line: 1144, type: !59)
!3618 = !DILocalVariable(name: "request", scope: !3609, file: !3, line: 1145, type: !3619)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_flush", file: !75, line: 259, baseType: !3621)
!3621 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !75, line: 251, size: 256, elements: !3622)
!3622 = !{!3623, !3631}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !3621, file: !75, line: 257, baseType: !3624, size: 256)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3621, file: !75, line: 252, size: 256, elements: !3625)
!3625 = !{!3626, !3627}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3624, file: !75, line: 253, baseType: !1471, size: 192)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !3624, file: !75, line: 256, baseType: !3628, size: 32, offset: 192)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3624, file: !75, line: 254, size: 32, elements: !3629)
!3629 = !{!3630}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "expiration", scope: !3628, file: !75, line: 255, baseType: !164, size: 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3621, file: !75, line: 258, baseType: !3632, size: 224)
!3632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 224, elements: !324)
!3633 = !DILocalVariable(name: "size", scope: !3609, file: !3, line: 1152, type: !2505)
!3634 = !DILocation(line: 0, scope: !3609)
!3635 = !DILocation(line: 1148, column: 5, scope: !3609)
!3636 = !DILocation(line: 1149, column: 43, scope: !3609)
!3637 = !DILocation(line: 1150, column: 37, scope: !3609)
!3638 = !DILocation(line: 1150, column: 44, scope: !3609)
!3639 = !DILocation(line: 1153, column: 9, scope: !3609)
!3640 = !DILocation(line: 1154, column: 41, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 1153, column: 20)
!3642 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 1153, column: 9)
!3643 = !DILocation(line: 1154, column: 48, scope: !3641)
!3644 = !DILocation(line: 1155, column: 44, scope: !3641)
!3645 = !DILocation(line: 1155, column: 26, scope: !3641)
!3646 = !DILocation(line: 1155, column: 31, scope: !3641)
!3647 = !DILocation(line: 1155, column: 42, scope: !3641)
!3648 = !DILocation(line: 1156, column: 51, scope: !3641)
!3649 = !DILocation(line: 1156, column: 41, scope: !3641)
!3650 = !DILocation(line: 1156, column: 49, scope: !3641)
!3651 = !DILocation(line: 1158, column: 5, scope: !3641)
!3652 = !DILocation(line: 1160, column: 37, scope: !3609)
!3653 = !DILocation(line: 1160, column: 44, scope: !3609)
!3654 = !DILocation(line: 1162, column: 5, scope: !3609)
!3655 = distinct !DISubprogram(name: "test_binary_concat_impl", scope: !3, file: !3, line: 1869, type: !3002, scopeLine: 1869, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3656)
!3656 = !{!3657, !3658, !3659, !3665, !3666, !3667, !3668}
!3657 = !DILocalVariable(name: "key", arg: 1, scope: !3655, file: !3, line: 1869, type: !51)
!3658 = !DILocalVariable(name: "cmd", arg: 2, scope: !3655, file: !3, line: 1869, type: !153)
!3659 = !DILocalVariable(name: "send", scope: !3655, file: !3, line: 1874, type: !3660)
!3660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3655, file: !3, line: 1870, size: 8192, elements: !3661)
!3661 = !{!3662, !3663, !3664}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3660, file: !3, line: 1871, baseType: !1464, size: 192)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3660, file: !3, line: 1872, baseType: !1490, size: 192)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3660, file: !3, line: 1873, baseType: !1333, size: 8192)
!3665 = !DILocalVariable(name: "receive", scope: !3655, file: !3, line: 1874, type: !3660)
!3666 = !DILocalVariable(name: "value", scope: !3655, file: !3, line: 1875, type: !51)
!3667 = !DILocalVariable(name: "len", scope: !3655, file: !3, line: 1877, type: !34)
!3668 = !DILocalVariable(name: "ptr", scope: !3655, file: !3, line: 1922, type: !152)
!3669 = !DILocation(line: 0, scope: !3655)
!3670 = !DILocation(line: 1870, column: 5, scope: !3655)
!3671 = !DILocation(line: 1874, column: 7, scope: !3655)
!3672 = !DILocation(line: 1874, column: 13, scope: !3655)
!3673 = !DILocation(line: 1878, column: 36, scope: !3655)
!3674 = !DILocation(line: 1878, column: 56, scope: !3655)
!3675 = !DILocation(line: 1877, column: 18, scope: !3655)
!3676 = !DILocation(line: 1881, column: 5, scope: !3655)
!3677 = !DILocation(line: 1882, column: 5, scope: !3655)
!3678 = !DILocation(line: 1883, column: 39, scope: !3655)
!3679 = !DILocation(line: 1883, column: 5, scope: !3655)
!3680 = !DILocation(line: 1888, column: 32, scope: !3655)
!3681 = !DILocation(line: 1888, column: 52, scope: !3655)
!3682 = !DILocation(line: 1886, column: 11, scope: !3655)
!3683 = !DILocation(line: 1889, column: 5, scope: !3655)
!3684 = !DILocation(line: 1890, column: 5, scope: !3655)
!3685 = !DILocation(line: 1891, column: 5, scope: !3655)
!3686 = !DILocation(line: 1895, column: 28, scope: !3655)
!3687 = !DILocation(line: 1895, column: 48, scope: !3655)
!3688 = !DILocation(line: 1894, column: 11, scope: !3655)
!3689 = !DILocation(line: 1896, column: 5, scope: !3655)
!3690 = !DILocation(line: 1898, column: 43, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 1898, column: 9)
!3692 = !DILocation(line: 1903, column: 15, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 1902, column: 12)
!3694 = !DILocation(line: 1905, column: 9, scope: !3693)
!3695 = !DILocation(line: 0, scope: !3691)
!3696 = !DILocation(line: 1912, column: 28, scope: !3655)
!3697 = !DILocation(line: 1911, column: 11, scope: !3655)
!3698 = !DILocation(line: 1914, column: 5, scope: !3655)
!3699 = !DILocation(line: 1915, column: 5, scope: !3655)
!3700 = !DILocation(line: 1916, column: 5, scope: !3655)
!3701 = !DILocation(line: 1919, column: 5, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3703, file: !3, line: 1919, column: 5)
!3703 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 1919, column: 5)
!3704 = !DILocation(line: 1919, column: 5, scope: !3703)
!3705 = !DILocation(line: 1920, column: 5, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3707, file: !3, line: 1920, column: 5)
!3707 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 1920, column: 5)
!3708 = !DILocation(line: 1920, column: 5, scope: !3707)
!3709 = !DILocation(line: 1924, column: 9, scope: !3655)
!3710 = !DILocation(line: 1926, column: 5, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 1926, column: 5)
!3712 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 1926, column: 5)
!3713 = !DILocation(line: 1926, column: 5, scope: !3712)
!3714 = !DILocation(line: 1927, column: 9, scope: !3655)
!3715 = !DILocation(line: 1928, column: 5, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 1928, column: 5)
!3717 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 1928, column: 5)
!3718 = !DILocation(line: 1928, column: 5, scope: !3717)
!3719 = !DILocation(line: 1929, column: 9, scope: !3655)
!3720 = !DILocation(line: 1930, column: 5, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3722, file: !3, line: 1930, column: 5)
!3722 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 1930, column: 5)
!3723 = !DILocation(line: 1930, column: 5, scope: !3722)
!3724 = !DILocation(line: 1933, column: 1, scope: !3655)
!3725 = !DILocation(line: 1932, column: 5, scope: !3655)
!3726 = !DISubprogram(name: "memcmp", scope: !1899, file: !1899, line: 64, type: !3727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!23, !41, !41, !34}
!3729 = !DISubprogram(name: "malloc", scope: !1876, file: !1876, line: 539, type: !3730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!33, !34}
!3732 = !DISubprogram(name: "pthread_create", scope: !3733, file: !3733, line: 198, type: !3734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!3733 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!23, !3736, !3738, !3749, !2916}
!3736 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3737)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3739)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3741)
!3741 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !204, line: 62, baseType: !3742)
!3742 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !204, line: 56, size: 448, elements: !3743)
!3743 = !{!3744, !3748}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !3742, file: !204, line: 58, baseType: !3745, size: 448)
!3745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 448, elements: !3746)
!3746 = !{!3747}
!3747 = !DISubrange(count: 56)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !3742, file: !204, line: 59, baseType: !32, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!33, !33}
!3752 = distinct !DISubprogram(name: "binary_hickup_recv_verification_thread", scope: !3, file: !3, line: 1998, type: !3750, scopeLine: 1998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3753)
!3753 = !{!3754, !3755}
!3754 = !DILocalVariable(name: "arg", arg: 1, scope: !3752, file: !3, line: 1998, type: !33)
!3755 = !DILocalVariable(name: "response", scope: !3752, file: !3, line: 1999, type: !2667)
!3756 = !DILocation(line: 0, scope: !3752)
!3757 = !DILocation(line: 1999, column: 52, scope: !3752)
!3758 = !DILocation(line: 2000, column: 18, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3752, file: !3, line: 2000, column: 9)
!3760 = !DILocation(line: 2000, column: 9, scope: !3752)
!3761 = !DILocation(line: 2001, column: 16, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3759, file: !3, line: 2000, column: 27)
!3763 = !DILocation(line: 2001, column: 9, scope: !3762)
!3764 = !DILocation(line: 2004, column: 72, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3762, file: !3, line: 2001, column: 53)
!3766 = !DILocation(line: 2005, column: 72, scope: !3765)
!3767 = !DILocation(line: 2003, column: 13, scope: !3765)
!3768 = distinct !{!3768, !3763, !3769, !287}
!3769 = !DILocation(line: 2006, column: 9, scope: !3762)
!3770 = !DILocation(line: 2007, column: 9, scope: !3762)
!3771 = !DILocation(line: 2008, column: 5, scope: !3762)
!3772 = !DILocation(line: 2009, column: 27, scope: !3752)
!3773 = !DILocation(line: 2010, column: 23, scope: !3752)
!3774 = !DILocation(line: 2011, column: 5, scope: !3752)
!3775 = !DISubprogram(name: "srand", scope: !1876, file: !1876, line: 455, type: !3776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{null, !6}
!3778 = !DISubprogram(name: "time", scope: !3779, file: !3779, line: 75, type: !3780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!3779 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!3782, !3785}
!3782 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !3783, line: 7, baseType: !3784)
!3783 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!3784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !31, line: 160, baseType: !32)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3786 = distinct !DISubprogram(name: "test_binary_pipeline_hickup_chunk", scope: !3, file: !3, line: 2014, type: !3787, scopeLine: 2014, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3789)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!5, !33, !34}
!3789 = !{!3790, !3791, !3792, !3793, !3795, !3796, !3805, !3806, !3807}
!3790 = !DILocalVariable(name: "buffer", arg: 1, scope: !3786, file: !3, line: 2014, type: !33)
!3791 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3786, file: !3, line: 2014, type: !34)
!3792 = !DILocalVariable(name: "offset", scope: !3786, file: !3, line: 2015, type: !2505)
!3793 = !DILocalVariable(name: "key", scope: !3786, file: !3, line: 2016, type: !3794)
!3794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 16384, elements: !1273)
!3795 = !DILocalVariable(name: "value", scope: !3786, file: !3, line: 2017, type: !493)
!3796 = !DILocalVariable(name: "command", scope: !3797, file: !3, line: 2024, type: !3798)
!3797 = distinct !DILexicalBlock(scope: !3786, file: !3, line: 2020, column: 77)
!3798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3786, file: !3, line: 2021, size: 532480, elements: !3799)
!3799 = !{!3800, !3801}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3798, file: !3, line: 2022, baseType: !1464, size: 192)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3798, file: !3, line: 2023, baseType: !3802, size: 532480)
!3802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 532480, elements: !3803)
!3803 = !{!3804}
!3804 = !DISubrange(count: 66560)
!3805 = !DILocalVariable(name: "cmd", scope: !3797, file: !3, line: 2025, type: !153)
!3806 = !DILocalVariable(name: "len", scope: !3797, file: !3, line: 2026, type: !34)
!3807 = !DILocalVariable(name: "keylen", scope: !3797, file: !3, line: 2027, type: !34)
!3808 = !DILocation(line: 0, scope: !3786)
!3809 = !DILocation(line: 2016, column: 5, scope: !3786)
!3810 = !DILocation(line: 2016, column: 11, scope: !3786)
!3811 = !DILocation(line: 2017, column: 5, scope: !3786)
!3812 = !DILocation(line: 2017, column: 14, scope: !3786)
!3813 = !DILocation(line: 2019, column: 12, scope: !3786)
!3814 = !{i8 0, i8 2}
!3815 = !DILocation(line: 2019, column: 5, scope: !3786)
!3816 = !DILocation(line: 2021, column: 9, scope: !3797)
!3817 = !DILocation(line: 2024, column: 11, scope: !3797)
!3818 = !DILocation(line: 2025, column: 33, scope: !3797)
!3819 = !DILocation(line: 2025, column: 23, scope: !3797)
!3820 = !DILocation(line: 0, scope: !3797)
!3821 = !DILocation(line: 2027, column: 26, scope: !3797)
!3822 = !DILocation(line: 2027, column: 33, scope: !3797)
!3823 = !DILocation(line: 2027, column: 40, scope: !3797)
!3824 = !DILocation(line: 2027, column: 25, scope: !3797)
!3825 = !DILocation(line: 2029, column: 9, scope: !3797)
!3826 = !DILocation(line: 2036, column: 19, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3797, file: !3, line: 2029, column: 22)
!3828 = !DILocation(line: 2039, column: 13, scope: !3827)
!3829 = !DILocation(line: 2044, column: 19, scope: !3827)
!3830 = !DILocation(line: 2046, column: 13, scope: !3827)
!3831 = !DILocation(line: 2049, column: 19, scope: !3827)
!3832 = !DILocation(line: 2051, column: 13, scope: !3827)
!3833 = !DILocation(line: 2053, column: 19, scope: !3827)
!3834 = !DILocation(line: 2055, column: 13, scope: !3827)
!3835 = !DILocation(line: 2058, column: 19, scope: !3827)
!3836 = !DILocation(line: 2060, column: 13, scope: !3827)
!3837 = !DILocation(line: 2065, column: 19, scope: !3827)
!3838 = !DILocation(line: 2067, column: 13, scope: !3827)
!3839 = !DILocation(line: 2069, column: 19, scope: !3827)
!3840 = !DILocation(line: 2072, column: 13, scope: !3827)
!3841 = !DILocation(line: 2077, column: 19, scope: !3827)
!3842 = !DILocation(line: 2079, column: 13, scope: !3827)
!3843 = !DILocation(line: 2086, column: 19, scope: !3827)
!3844 = !DILocation(line: 2088, column: 13, scope: !3827)
!3845 = !DILocation(line: 2091, column: 19, scope: !3827)
!3846 = !DILocation(line: 2094, column: 13, scope: !3827)
!3847 = !DILocation(line: 2103, column: 17, scope: !3827)
!3848 = !DILocation(line: 2103, column: 13, scope: !3827)
!3849 = !DILocation(line: 2106, column: 19, scope: !3827)
!3850 = !DILocation(line: 2108, column: 9, scope: !3827)
!3851 = !DILocation(line: 0, scope: !3827)
!3852 = !DILocation(line: 2110, column: 18, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3797, file: !3, line: 2110, column: 13)
!3854 = !DILocation(line: 2110, column: 28, scope: !3853)
!3855 = !DILocation(line: 2110, column: 13, scope: !3797)
!3856 = !DILocation(line: 2116, column: 5, scope: !3786)
!3857 = !DILocation(line: 2111, column: 36, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3853, file: !3, line: 2110, column: 42)
!3859 = !DILocation(line: 2111, column: 13, scope: !3858)
!3860 = !DILocation(line: 2019, column: 34, scope: !3786)
!3861 = !DILocation(line: 2117, column: 5, scope: !3786)
!3862 = !DILocation(line: 2120, column: 1, scope: !3786)
!3863 = !DILocation(line: 2119, column: 5, scope: !3786)
!3864 = !DISubprogram(name: "pthread_join", scope: !3733, file: !3733, line: 215, type: !3865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1318)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!23, !1685, !3867}
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!3868 = distinct !DISubprogram(name: "touch_command", scope: !3, file: !3, line: 1166, type: !3869, scopeLine: 1171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3871)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!2505, !152, !34, !153, !41, !34, !164}
!3871 = !{!3872, !3873, !3874, !3875, !3876, !3877, !3878, !3892}
!3872 = !DILocalVariable(name: "buf", arg: 1, scope: !3868, file: !3, line: 1166, type: !152)
!3873 = !DILocalVariable(name: "bufsz", arg: 2, scope: !3868, file: !3, line: 1167, type: !34)
!3874 = !DILocalVariable(name: "cmd", arg: 3, scope: !3868, file: !3, line: 1168, type: !153)
!3875 = !DILocalVariable(name: "key", arg: 4, scope: !3868, file: !3, line: 1169, type: !41)
!3876 = !DILocalVariable(name: "keylen", arg: 5, scope: !3868, file: !3, line: 1170, type: !34)
!3877 = !DILocalVariable(name: "exptime", arg: 6, scope: !3868, file: !3, line: 1171, type: !164)
!3878 = !DILocalVariable(name: "request", scope: !3868, file: !3, line: 1172, type: !3879)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_touch", file: !75, line: 400, baseType: !3881)
!3881 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !75, line: 392, size: 256, elements: !3882)
!3882 = !{!3883, !3891}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !3881, file: !75, line: 398, baseType: !3884, size: 256)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3881, file: !75, line: 393, size: 256, elements: !3885)
!3885 = !{!3886, !3887}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3884, file: !75, line: 394, baseType: !1471, size: 192)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !3884, file: !75, line: 397, baseType: !3888, size: 32, offset: 192)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3884, file: !75, line: 395, size: 32, elements: !3889)
!3889 = !{!3890}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "expiration", scope: !3888, file: !75, line: 396, baseType: !164, size: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3881, file: !75, line: 399, baseType: !3632, size: 224)
!3892 = !DILocalVariable(name: "key_offset", scope: !3868, file: !3, line: 1186, type: !2505)
!3893 = !DILocation(line: 0, scope: !3868)
!3894 = !DILocation(line: 1175, column: 5, scope: !3868)
!3895 = !DILocation(line: 1176, column: 43, scope: !3868)
!3896 = !DILocation(line: 1177, column: 37, scope: !3868)
!3897 = !DILocation(line: 1177, column: 44, scope: !3868)
!3898 = !DILocation(line: 1179, column: 46, scope: !3868)
!3899 = !DILocation(line: 1179, column: 37, scope: !3868)
!3900 = !DILocation(line: 1179, column: 44, scope: !3868)
!3901 = !DILocation(line: 1180, column: 37, scope: !3868)
!3902 = !DILocation(line: 1180, column: 44, scope: !3868)
!3903 = !DILocation(line: 1181, column: 40, scope: !3868)
!3904 = !DILocation(line: 1181, column: 22, scope: !3868)
!3905 = !DILocation(line: 1181, column: 27, scope: !3868)
!3906 = !DILocation(line: 1181, column: 38, scope: !3868)
!3907 = !DILocation(line: 1182, column: 47, scope: !3868)
!3908 = !DILocation(line: 1182, column: 37, scope: !3868)
!3909 = !DILocation(line: 1182, column: 45, scope: !3868)
!3910 = !DILocation(line: 1184, column: 37, scope: !3868)
!3911 = !DILocation(line: 1184, column: 44, scope: !3868)
!3912 = !DILocation(line: 1188, column: 16, scope: !3868)
!3913 = !DILocation(line: 1188, column: 5, scope: !3868)
!3914 = !DILocation(line: 1189, column: 58, scope: !3868)
!3915 = !DILocation(line: 1189, column: 5, scope: !3868)
