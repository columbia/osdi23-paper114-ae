; ModuleID = 'crawler.c'
source_filename = "crawler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._crawler_module_t = type { i8*, %struct.crawler_client_t, %struct.crawler_module_reg_t* }
%struct.crawler_client_t = type { i8*, i32, %struct.bipbuf_t*, i8* }
%struct.bipbuf_t = type { i64, i32, i32, i32, i32, [0 x i8] }
%struct.crawler_module_reg_t = type { {}*, void (%struct._crawler_module_t*, %struct._stritem*, i32, i32)*, void (%struct._crawler_module_t*, i32)*, void (%struct._crawler_module_t*)*, i8, i8 }
%struct._stritem = type { %struct._stritem*, %struct._stritem*, %struct._stritem*, i32, i32, i32, i16, i16, i8, i8, [0 x %union.anon] }
%union.anon = type { i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon.0, %union.anon.1, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.settings = type { i64, i32, i32, i32, i8*, i32, i32, i64, i32, i8*, i8*, i32, double, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, double, i32, i32, i8, i32, i8, i8, i8*, i32, i32, i32, i32, double, double, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8, i32, i32, i8*, i32 }
%struct.stats_state = type { i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.timeval, i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.crawler = type { %struct._stritem*, %struct._stritem*, %struct._stritem*, i32, i32, i32, i16, i16, i8, i8, i32, i64, i64, i64 }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, i64* }
%union.pthread_mutexattr_t = type { i32 }
%struct.crawler_expired_data = type { %union.pthread_mutex_t, [256 x %struct.crawlerstats_t], i32, i32, i8, i8 }
%struct.crawlerstats_t = type { [61 x i64], i64, i64, i64, i64, i32, i32, i8 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.pollfd = type { i32, i16, i16 }
%struct.conn = type { i8**, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.event, i16, i16, i8*, i8*, i32, i32, %struct._mc_resp*, %struct._mc_resp*, i8*, i32, i8*, i32, i32, [3 x %struct.io_queue_s], i32, i32, i32, i32, i32, %struct.sockaddr_in6, i32, i8, %struct.anon.15, %union.protocol_binary_request_header, i64, i64, i16, i32, i32, %struct.conn*, %struct.LIBEVENT_THREAD*, i32 (%struct.conn*)*, i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, %struct.msghdr*, i32)*, i64 (%struct.conn*, i8*, i64)* }
%struct.event = type { %struct.event_callback, %union.anon.5, i32, %struct.event_base*, %union.anon.7, i16, i16, %struct.timeval }
%struct.event_callback = type { %struct.anon.3, i16, i8, i8, %union.anon.4, i8* }
%struct.anon.3 = type { %struct.event_callback*, %struct.event_callback** }
%union.anon.4 = type { void (i32, i16, i8*)* }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.event*, %struct.event** }
%struct.event_base = type opaque
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.anon.9, %struct.timeval }
%struct.anon.9 = type { %struct.event*, %struct.event** }
%struct._mc_resp = type { %struct._mc_resp_bundle*, %struct._mc_resp*, i32, i32, i8*, %struct._io_pending_t*, %struct._stritem*, [4 x %struct.iovec], i32, i8, i8, i8, i8, i16, i16, i16, %struct.sockaddr_in6, i32, [1024 x i8] }
%struct._mc_resp_bundle = type { i8, i8, %struct._mc_resp_bundle*, %struct._mc_resp_bundle*, [0 x %struct._mc_resp] }
%struct._io_pending_t = type { i32, %struct.LIBEVENT_THREAD*, %struct.conn*, %struct._mc_resp*, [120 x i8] }
%struct.iovec = type { i8*, i64 }
%struct.io_queue_s = type { i8*, i8*, i32, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.14 }
%union.anon.14 = type { [4 x i32] }
%struct.anon.15 = type { i8*, i64, i64 }
%union.protocol_binary_request_header = type { %struct.anon.16 }
%struct.anon.16 = type { i8, i8, i16, i8, i8, i16, i32, i32, i64 }
%struct.LIBEVENT_THREAD = type { i64, %struct.event_base*, %struct.event, i32, %struct.thread_stats, [3 x %struct.io_queue_cb_s], %struct.conn_queue*, %struct.cache_t*, %struct._mc_resp_bundle*, %struct.cache_t*, i8*, %struct._logger*, i8*, i32 }
%struct.thread_stats = type { %union.pthread_mutex_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [64 x %struct.slab_stats], [256 x i64], i64, i64, i64 }
%struct.slab_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.io_queue_cb_s = type { i8*, void (%struct.io_queue_s*)*, void (%struct.io_queue_s*)*, void (%struct._io_pending_t*)*, void (%struct._io_pending_t*)*, i32 }
%struct.conn_queue = type opaque
%struct.cache_t = type { %union.pthread_mutex_t, i8*, %struct.cache_head, i64, i32, i32, i32, i32 }
%struct.cache_head = type { %struct.cache_free_s*, %struct.cache_free_s** }
%struct.cache_free_s = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.cache_free_s* }
%struct._logger = type { %struct._logger*, %struct._logger*, %union.pthread_mutex_t, i64, i64, i64, i16, i16, i16, %struct.bipbuf_t*, %struct._entry_details* }
%struct._entry_details = type { i32, i16, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)*, i32 (%struct._logentry*, i8*)*, i8* }
%struct._logentry = type { i32, i8, i16, i64, %struct.timeval, i32, [0 x %union.anon.13] }
%union.anon.13 = type { i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.msghdr = type { i8*, i32, %struct.iovec*, i64, i8*, i64, i32 }

@crawler_expired_mod = dso_local global { i32 (%struct._crawler_module_t*, i8*)*, void (%struct._crawler_module_t*, %struct._stritem*, i32, i32)*, void (%struct._crawler_module_t*, i32)*, void (%struct._crawler_module_t*)*, i8, i8 } { i32 (%struct._crawler_module_t*, i8*)* @crawler_expired_init, void (%struct._crawler_module_t*, %struct._stritem*, i32, i32)* @crawler_expired_eval, void (%struct._crawler_module_t*, i32)* @crawler_expired_doneclass, void (%struct._crawler_module_t*)* @crawler_expired_finalize, i8 1, i8 0 }, align 8, !dbg !0
@crawler_metadump_mod = dso_local global { i32 (%struct._crawler_module_t*, i8*)*, void (%struct._crawler_module_t*, %struct._stritem*, i32, i32)*, void (%struct._crawler_module_t*, i32)*, void (%struct._crawler_module_t*)*, i8, i8 } { i32 (%struct._crawler_module_t*, i8*)* null, void (%struct._crawler_module_t*, %struct._stritem*, i32, i32)* @crawler_metadump_eval, void (%struct._crawler_module_t*, i32)* null, void (%struct._crawler_module_t*)* @crawler_metadump_finalize, i8 0, i8 1 }, align 8, !dbg !656
@crawler_mod_regs = dso_local local_unnamed_addr global [3 x %struct.crawler_module_reg_t*] [%struct.crawler_module_reg_t* bitcast ({ i32 (%struct._crawler_module_t*, i8*)*, void (%struct._crawler_module_t*, %struct._stritem*, i32, i32)*, void (%struct._crawler_module_t*, i32)*, void (%struct._crawler_module_t*)*, i8, i8 }* @crawler_expired_mod to %struct.crawler_module_reg_t*), %struct.crawler_module_reg_t* bitcast ({ i32 (%struct._crawler_module_t*, i8*)*, void (%struct._crawler_module_t*, %struct._stritem*, i32, i32)*, void (%struct._crawler_module_t*, i32)*, void (%struct._crawler_module_t*)*, i8, i8 }* @crawler_expired_mod to %struct.crawler_module_reg_t*), %struct.crawler_module_reg_t* bitcast ({ i32 (%struct._crawler_module_t*, i8*)*, void (%struct._crawler_module_t*, %struct._stritem*, i32, i32)*, void (%struct._crawler_module_t*, i32)*, void (%struct._crawler_module_t*)*, i8, i8 }* @crawler_metadump_mod to %struct.crawler_module_reg_t*)], align 16, !dbg !698
@lru_crawler_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !750
@do_run_lru_crawler_thread = internal global i32 0, align 4, !dbg !752
@lru_crawler_cond = internal global %union.pthread_cond_t zeroinitializer, align 8, !dbg !755
@item_crawler_tid = internal global i64 0, align 8, !dbg !728
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to stop LRU crawler thread: %s\0A\00", align 1
@settings = external dso_local local_unnamed_addr global %struct.settings, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Can't create LRU crawler thread: %s\0A\00", align 1
@lru_crawler_start.block_ae_until = internal unnamed_addr global i32 0, align 4, !dbg !701
@stats_state = external dso_local local_unnamed_addr global %struct.stats_state, align 8
@active_crawler_type = dso_local local_unnamed_addr global i32 0, align 4, !dbg !724
@current_time = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"crawler_mod_regs[type] != NULL\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"crawler.c\00", align 1
@__PRETTY_FUNCTION__.lru_crawler_start = private unnamed_addr constant [99 x i8] c"int lru_crawler_start(uint8_t *, uint32_t, const enum crawler_run_type, void *, void *, const int)\00", align 1
@active_crawler_mod = dso_local global %struct._crawler_module_t zeroinitializer, align 16, !dbg !722
@crawler_count = internal unnamed_addr global i32 0, align 4, !dbg !795
@stats = external dso_local local_unnamed_addr global %struct.stats, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@lru_crawler_initialized = internal unnamed_addr global i1 false, align 4, !dbg !799
@storage = internal unnamed_addr global i8* null, align 8, !dbg !726
@crawlers = internal global [256 x %struct.crawler] zeroinitializer, align 16, !dbg !730
@.str.7 = private unnamed_addr constant [58 x i8] c"LRU crawler found an expired item (flags: %d, slab: %d): \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"key=%s exp=%ld la=%llu cas=%llu fetch=%s cls=%u size=%lu\0A\00", align 1
@process_started = external dso_local local_unnamed_addr global i64, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"END\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Starting LRU crawler background thread\0A\00", align 1
@lru_locks = external dso_local global [256 x %union.pthread_mutex_t], align 16
@.str.15 = private unnamed_addr constant [30 x i8] c"Nothing left to crawl for %d\0A\00", align 1
@hash = external dso_local local_unnamed_addr global i32 (i8*, i64)*, align 8
@.str.16 = private unnamed_addr constant [29 x i8] c"LRU crawler thread sleeping\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"LRU crawler thread stopping\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Kicking LRU crawler off for LRU %u\0A\00", align 1
@__llvm_gcov_ctr = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [12 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [32 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [20 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [13 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [17 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [12 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [1 x i64] zeroinitializer
@0 = private unnamed_addr constant [55 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/crawler.gcda\00", align 1
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [22 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -93725659, i32 -2049694385 }, %emit_function_args_ty { i32 1, i32 -2121021256, i32 -2049694385 }, %emit_function_args_ty { i32 2, i32 -2055708155, i32 -2049694385 }, %emit_function_args_ty { i32 3, i32 827470069, i32 -2049694385 }, %emit_function_args_ty { i32 4, i32 -1962418668, i32 -2049694385 }, %emit_function_args_ty { i32 5, i32 -1455607707, i32 -2049694385 }, %emit_function_args_ty { i32 6, i32 947659979, i32 -2049694385 }, %emit_function_args_ty { i32 7, i32 -1645206791, i32 -2049694385 }, %emit_function_args_ty { i32 8, i32 -2071258944, i32 -2049694385 }, %emit_function_args_ty { i32 9, i32 194184143, i32 -2049694385 }, %emit_function_args_ty { i32 10, i32 -1673433305, i32 -2049694385 }, %emit_function_args_ty { i32 11, i32 1034393885, i32 -2049694385 }, %emit_function_args_ty { i32 12, i32 -629768766, i32 -2049694385 }, %emit_function_args_ty { i32 13, i32 -1156845972, i32 -2049694385 }, %emit_function_args_ty { i32 14, i32 -1811765983, i32 -2049694385 }, %emit_function_args_ty { i32 15, i32 712055511, i32 -2049694385 }, %emit_function_args_ty { i32 16, i32 -2135291042, i32 -2049694385 }, %emit_function_args_ty { i32 17, i32 427396131, i32 -2049694385 }, %emit_function_args_ty { i32 18, i32 360948738, i32 -2049694385 }, %emit_function_args_ty { i32 19, i32 27239122, i32 -2049694385 }, %emit_function_args_ty { i32 20, i32 -2040532145, i32 -2049694385 }, %emit_function_args_ty { i32 21, i32 -700090479, i32 -2049694385 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [22 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i32 0, i32 0) }, %emit_arcs_args_ty { i32 12, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.20, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.21, i32 0, i32 0) }, %emit_arcs_args_ty { i32 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.22, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.23, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.24, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.25, i32 0, i32 0) }, %emit_arcs_args_ty { i32 32, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i32 0, i32 0) }, %emit_arcs_args_ty { i32 20, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.28, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.29, i32 0, i32 0) }, %emit_arcs_args_ty { i32 13, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.31, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.32, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.33, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.34, i32 0, i32 0) }, %emit_arcs_args_ty { i32 17, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.36, i32 0, i32 0) }, %emit_arcs_args_ty { i32 12, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.38, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.39, i32 0, i32 0) }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: noinline nounwind uwtable
define internal i32 @crawler_expired_init(%struct._crawler_module_t* nocapture noundef writeonly %cm, i8* noundef %data) #0 !dbg !806 {
entry:
  call void @llvm.dbg.value(metadata %struct._crawler_module_t* %cm, metadata !808, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i8* %data, metadata !809, metadata !DIExpression()), !dbg !813
  %cmp.not = icmp eq i8* %data, null, !dbg !814
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !816

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !817
  %0 = add i64 %gcov_ctr, 1, !dbg !817
  store i64 %0, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !817
  call void @llvm.dbg.value(metadata i8* %data, metadata !810, metadata !DIExpression()), !dbg !813
  %1 = getelementptr inbounds i8, i8* %data, i64 137265, !dbg !819
  store i8 1, i8* %1, align 1, !dbg !820, !tbaa !821
  br label %if.end7, !dbg !827

if.else:                                          ; preds = %entry
  %call = tail call noalias i8* @calloc(i64 noundef 1, i64 noundef 137272) #13, !dbg !828
  call void @llvm.dbg.value(metadata i8* %call, metadata !810, metadata !DIExpression()), !dbg !813
  %cmp2 = icmp eq i8* %call, null, !dbg !830
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !832

if.then3:                                         ; preds = %if.else
  %gcov_ctr19 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !833
  %2 = add i64 %gcov_ctr19, 1, !dbg !833
  store i64 %2, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !833
  br label %cleanup, !dbg !833

if.end:                                           ; preds = %if.else
  call void @llvm.dbg.value(metadata i8* %call, metadata !810, metadata !DIExpression()), !dbg !813
  %gcov_ctr20 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !835
  %3 = add i64 %gcov_ctr20, 1, !dbg !835
  store i64 %3, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !835
  %lock = bitcast i8* %call to %union.pthread_mutex_t*, !dbg !836
  %call4 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull %lock, %union.pthread_mutexattr_t* noundef null) #13, !dbg !837
  %4 = getelementptr inbounds i8, i8* %call, i64 137265, !dbg !838
  store i8 0, i8* %4, align 1, !dbg !839, !tbaa !821
  %5 = load volatile i32, i32* @current_time, align 4, !dbg !840, !tbaa !841
  %start_time = getelementptr inbounds i8, i8* %call, i64 137256, !dbg !842
  %6 = bitcast i8* %start_time to i32*, !dbg !842
  store i32 %5, i32* %6, align 8, !dbg !843, !tbaa !844
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %call.sink = phi i8* [ %call, %if.end ], [ %data, %if.then ]
  %data6 = getelementptr inbounds %struct._crawler_module_t, %struct._crawler_module_t* %cm, i64 0, i32 0, !dbg !845
  store i8* %call.sink, i8** %data6, align 8, !dbg !845, !tbaa !846
  %d.0 = bitcast i8* %call.sink to %struct.crawler_expired_data*, !dbg !845
  call void @llvm.dbg.value(metadata %struct.crawler_expired_data* %d.0, metadata !810, metadata !DIExpression()), !dbg !813
  %lock8 = bitcast i8* %call.sink to %union.pthread_mutex_t*, !dbg !850
  %call9 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %lock8) #13, !dbg !851
  %crawlerstats = getelementptr inbounds i8, i8* %call.sink, i64 40, !dbg !852
  %call10 = tail call i8* @memset(i8* noundef nonnull %crawlerstats, i32 noundef 0, i64 noundef 137216) #13, !dbg !853
  call void @llvm.dbg.value(metadata i32 0, metadata !811, metadata !DIExpression()), !dbg !854
  br label %for.body, !dbg !855

for.cond.cleanup:                                 ; preds = %for.body
  %call18 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %lock8) #13, !dbg !856
  br label %cleanup, !dbg !857

for.body:                                         ; preds = %for.body, %if.end7
  %indvars.iv = phi i64 [ 0, %if.end7 ], [ %indvars.iv.next.1, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !811, metadata !DIExpression()), !dbg !854
  %7 = load volatile i32, i32* @current_time, align 4, !dbg !858, !tbaa !841
  %start_time13 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %d.0, i64 0, i32 1, i64 %indvars.iv, i32 5, !dbg !861
  store i32 %7, i32* %start_time13, align 8, !dbg !862, !tbaa !863
  %run_complete = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %d.0, i64 0, i32 1, i64 %indvars.iv, i32 7, !dbg !866
  store i8 0, i8* %run_complete, align 8, !dbg !867, !tbaa !868
  %gcov_ctr21 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !869
  %8 = add i64 %gcov_ctr21, 1, !dbg !869
  store i64 %8, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !869
  %indvars.iv.next = or i64 %indvars.iv, 1, !dbg !869
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !811, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !811, metadata !DIExpression()), !dbg !854
  %9 = load volatile i32, i32* @current_time, align 4, !dbg !858, !tbaa !841
  %start_time13.1 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %d.0, i64 0, i32 1, i64 %indvars.iv.next, i32 5, !dbg !861
  store i32 %9, i32* %start_time13.1, align 8, !dbg !862, !tbaa !863
  %run_complete.1 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %d.0, i64 0, i32 1, i64 %indvars.iv.next, i32 7, !dbg !866
  store i8 0, i8* %run_complete.1, align 8, !dbg !867, !tbaa !868
  %gcov_ctr21.1 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !869
  %10 = add i64 %gcov_ctr21.1, 1, !dbg !869
  store i64 %10, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !869
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !869
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !811, metadata !DIExpression()), !dbg !854
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256, !dbg !870
  br i1 %exitcond.not.1, label %for.cond.cleanup, label %for.body, !dbg !855, !llvm.loop !871

cleanup:                                          ; preds = %for.cond.cleanup, %if.then3
  %retval.0 = phi i32 [ 0, %for.cond.cleanup ], [ -1, %if.then3 ], !dbg !813
  ret i32 %retval.0, !dbg !874
}

; Function Attrs: noinline nounwind uwtable
define internal void @crawler_expired_eval(%struct._crawler_module_t* nocapture noundef readonly %cm, %struct._stritem* noundef %search, i32 noundef %hv, i32 noundef %i) #0 !dbg !875 {
entry:
  call void @llvm.dbg.value(metadata %struct._crawler_module_t* %cm, metadata !877, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata %struct._stritem* %search, metadata !878, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 %hv, metadata !879, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 %i, metadata !880, metadata !DIExpression()), !dbg !898
  %0 = bitcast %struct._crawler_module_t* %cm to %struct.crawler_expired_data**, !dbg !899
  %1 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %0, align 8, !dbg !899, !tbaa !846
  call void @llvm.dbg.value(metadata %struct.crawler_expired_data* %1, metadata !881, metadata !DIExpression()), !dbg !898
  %lock = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %1, i64 0, i32 0, !dbg !900
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %lock) #13, !dbg !901
  %idxprom = sext i32 %i to i64, !dbg !902
  call void @llvm.dbg.value(metadata !DIArgList(%struct.crawler_expired_data* %1, i64 %idxprom), metadata !882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 536, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 40, DW_OP_stack_value)), !dbg !898
  %call1 = tail call i32 @item_is_flushed(%struct._stritem* noundef %search) #13, !dbg !903
  call void @llvm.dbg.value(metadata i32 %call1, metadata !884, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i8 1, metadata !885, metadata !DIExpression()), !dbg !898
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %search, i64 0, i32 7, !dbg !904
  %2 = load i16, i16* %it_flags, align 2, !dbg !904, !tbaa !906
  %3 = and i16 %2, 128, !dbg !908
  %tobool.not = icmp eq i16 %3, 0, !dbg !908
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !909

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 0), align 16, !dbg !910
  %4 = add i64 %gcov_ctr, 1, !dbg !910
  store i64 %4, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 0), align 16, !dbg !910
  %5 = load i8*, i8** @storage, align 8, !dbg !910, !tbaa !912
  %call2 = tail call zeroext i1 @storage_validate_item(i8* noundef %5, %struct._stritem* noundef nonnull %search) #13, !dbg !913
  call void @llvm.dbg.value(metadata i1 %call2, metadata !885, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !898
  br label %if.end, !dbg !914

if.end:                                           ; preds = %if.then, %entry
  %is_valid.0 = phi i1 [ %call2, %if.then ], [ true, %entry ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !885, metadata !DIExpression()), !dbg !898
  %exptime = getelementptr inbounds %struct._stritem, %struct._stritem* %search, i64 0, i32 4, !dbg !915
  %6 = load i32, i32* %exptime, align 4, !dbg !915, !tbaa !841
  %cmp.not = icmp eq i32 %6, 0, !dbg !916
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true, !dbg !917

land.lhs.true:                                    ; preds = %if.end
  %gcov_ctr76 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 1), align 8, !dbg !918
  %7 = add i64 %gcov_ctr76, 1, !dbg !918
  store i64 %7, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 1), align 8, !dbg !918
  %8 = load volatile i32, i32* @current_time, align 4, !dbg !919, !tbaa !841
  %cmp5 = icmp ult i32 %6, %8, !dbg !920
  %tobool7 = icmp ne i32 %call1, 0
  %or.cond = select i1 %cmp5, i1 true, i1 %tobool7, !dbg !921
  br i1 %or.cond, label %if.then10, label %lor.lhs.false8, !dbg !921

lor.lhs.false:                                    ; preds = %if.end
  %tobool7.old.not = icmp eq i32 %call1, 0, !dbg !922
  br i1 %tobool7.old.not, label %lor.lhs.false8, label %if.then10, !dbg !923

lor.lhs.false8:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %gcov_ctr77 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 2), align 16, !dbg !924
  %9 = add i64 %gcov_ctr77, 1, !dbg !924
  store i64 %9, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 2), align 16, !dbg !924
  br i1 %is_valid.0, label %if.else, label %if.then10, !dbg !925

if.then10:                                        ; preds = %lor.lhs.false8, %lor.lhs.false, %land.lhs.true
  %reclaimed = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %idxprom, i32 11, !dbg !926
  %10 = load i64, i64* %reclaimed, align 8, !dbg !927, !tbaa !928
  %inc = add i64 %10, 1, !dbg !927
  store i64 %inc, i64* %reclaimed, align 8, !dbg !927, !tbaa !928
  %reclaimed13 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %1, i64 0, i32 1, i64 %idxprom, i32 3, !dbg !930
  %11 = load i64, i64* %reclaimed13, align 8, !dbg !931, !tbaa !932
  %inc14 = add i64 %11, 1, !dbg !931
  store i64 %inc14, i64* %reclaimed13, align 8, !dbg !931, !tbaa !932
  %12 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !933, !tbaa !934
  %cmp15 = icmp sgt i32 %12, 1, !dbg !937
  br i1 %cmp15, label %if.then17, label %if.end36, !dbg !938

if.then17:                                        ; preds = %if.then10
  %data18 = getelementptr inbounds %struct._stritem, %struct._stritem* %search, i64 0, i32 10, !dbg !939
  %13 = bitcast [0 x %union.anon]* %data18 to i8*, !dbg !939
  %14 = load i16, i16* %it_flags, align 2, !dbg !939, !tbaa !906
  %conv20 = zext i16 %14 to i32, !dbg !939
  %and21 = shl nuw nsw i32 %conv20, 2, !dbg !939
  %15 = and i32 %and21, 8, !dbg !939
  %16 = zext i32 %15 to i64, !dbg !939
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %16, !dbg !939
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !891, metadata !DIExpression()), !dbg !940
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !941, !tbaa !912
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %search, i64 0, i32 8, !dbg !942
  %18 = load i8, i8* %slabs_clsid, align 8, !dbg !942, !tbaa !943
  %conv25 = zext i8 %18 to i32, !dbg !944
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv20, i32 noundef %conv25) #13, !dbg !945
  call void @llvm.dbg.value(metadata i32 0, metadata !886, metadata !DIExpression()), !dbg !940
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %search, i64 0, i32 9
  call void @llvm.dbg.value(metadata i32 0, metadata !886, metadata !DIExpression()), !dbg !940
  %19 = load i8, i8* %nkey, align 1, !dbg !946, !tbaa !943
  %cmp28126.not = icmp eq i8 %19, 0, !dbg !949
  br i1 %cmp28126.not, label %for.end, label %for.body, !dbg !950

for.body:                                         ; preds = %if.then17, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !886, metadata !DIExpression()), !dbg !940
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !951, !tbaa !912
  %arrayidx31 = getelementptr inbounds i8, i8* %add.ptr, i64 %indvars.iv, !dbg !953
  %21 = load i8, i8* %arrayidx31, align 1, !dbg !953, !tbaa !943
  %conv32 = sext i8 %21 to i32, !dbg !953
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv32) #13, !dbg !954
  %gcov_ctr78 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 3), align 8, !dbg !955
  %22 = add i64 %gcov_ctr78, 1, !dbg !955
  store i64 %22, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 3), align 8, !dbg !955
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !955
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !886, metadata !DIExpression()), !dbg !940
  %23 = load i8, i8* %nkey, align 1, !dbg !946, !tbaa !943
  %24 = zext i8 %23 to i64, !dbg !949
  %cmp28 = icmp ult i64 %indvars.iv.next, %24, !dbg !949
  br i1 %cmp28, label %for.body, label %for.end, !dbg !950, !llvm.loop !956

for.end:                                          ; preds = %for.body, %if.then17
  %gcov_ctr79 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 4), align 16, !dbg !958
  %25 = add i64 %gcov_ctr79, 1, !dbg !958
  store i64 %25, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 4), align 16, !dbg !958
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !958, !tbaa !912
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #13, !dbg !959
  br label %if.end36, !dbg !960

if.end36:                                         ; preds = %for.end, %if.then10
  %27 = load i16, i16* %it_flags, align 2, !dbg !961, !tbaa !906
  %28 = and i16 %27, 8, !dbg !963
  %cmp40 = icmp eq i16 %28, 0, !dbg !964
  br i1 %cmp40, label %land.lhs.true42, label %do.body, !dbg !965

land.lhs.true42:                                  ; preds = %if.end36
  %gcov_ctr80 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 5), align 8, !dbg !966
  %29 = add i64 %gcov_ctr80, 1, !dbg !966
  store i64 %29, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 5), align 8, !dbg !966
  %tobool43.not = icmp eq i32 %call1, 0, !dbg !966
  br i1 %tobool43.not, label %if.then44, label %do.body, !dbg !967

if.then44:                                        ; preds = %land.lhs.true42
  %gcov_ctr81 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 6), align 16, !dbg !968
  %30 = add i64 %gcov_ctr81, 1, !dbg !968
  store i64 %30, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 6), align 16, !dbg !968
  %unfetched = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %idxprom, i32 12, !dbg !970
  %31 = load i64, i64* %unfetched, align 8, !dbg !971, !tbaa !972
  %inc47 = add i64 %31, 1, !dbg !971
  store i64 %inc47, i64* %unfetched, align 8, !dbg !971, !tbaa !972
  br label %do.body, !dbg !973

do.body:                                          ; preds = %if.end36, %land.lhs.true42, %if.then44
  %32 = load i8*, i8** @storage, align 8, !dbg !974, !tbaa !912
  tail call void @storage_delete(i8* noundef %32, %struct._stritem* noundef nonnull %search) #13, !dbg !974
  %gcov_ctr82 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 7), align 8, !dbg !976
  %33 = add i64 %gcov_ctr82, 1, !dbg !976
  store i64 %33, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 7), align 8, !dbg !976
  tail call void @do_item_unlink_nolock(%struct._stritem* noundef nonnull %search, i32 noundef %hv) #13, !dbg !977
  tail call void @do_item_remove(%struct._stritem* noundef nonnull %search) #13, !dbg !978
  br label %if.end73, !dbg !979

if.else:                                          ; preds = %lor.lhs.false8
  %seen = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %1, i64 0, i32 1, i64 %idxprom, i32 4, !dbg !980
  %34 = load i64, i64* %seen, align 8, !dbg !981, !tbaa !982
  %inc49 = add i64 %34, 1, !dbg !981
  store i64 %inc49, i64* %seen, align 8, !dbg !981, !tbaa !982
  %refcount = getelementptr inbounds %struct._stritem, %struct._stritem* %search, i64 0, i32 6, !dbg !983
  %35 = load i16, i16* %refcount, align 4, !dbg !983, !tbaa !906
  %dec = add i16 %35, -1, !dbg !983
  store i16 %dec, i16* %refcount, align 4, !dbg !983, !tbaa !906
  br i1 %cmp.not, label %if.then53, label %if.else55, !dbg !984

if.then53:                                        ; preds = %if.else
  %gcov_ctr83 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 8), align 16, !dbg !985
  %36 = add i64 %gcov_ctr83, 1, !dbg !985
  store i64 %36, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 8), align 16, !dbg !985
  %noexp = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %1, i64 0, i32 1, i64 %idxprom, i32 2, !dbg !987
  %37 = load i64, i64* %noexp, align 8, !dbg !988, !tbaa !989
  %inc54 = add i64 %37, 1, !dbg !988
  store i64 %inc54, i64* %noexp, align 8, !dbg !988, !tbaa !989
  br label %if.end73, !dbg !990

if.else55:                                        ; preds = %if.else
  %38 = load volatile i32, i32* @current_time, align 4, !dbg !991, !tbaa !841
  %sub = sub i32 %6, %38, !dbg !992
  %cmp57 = icmp ugt i32 %sub, 3599, !dbg !993
  br i1 %cmp57, label %if.then59, label %if.else61, !dbg !994

if.then59:                                        ; preds = %if.else55
  %gcov_ctr84 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 9), align 8, !dbg !995
  %39 = add i64 %gcov_ctr84, 1, !dbg !995
  store i64 %39, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 9), align 8, !dbg !995
  %ttl_hourplus = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %1, i64 0, i32 1, i64 %idxprom, i32 1, !dbg !997
  %40 = load i64, i64* %ttl_hourplus, align 8, !dbg !998, !tbaa !999
  %inc60 = add i64 %40, 1, !dbg !998
  store i64 %inc60, i64* %ttl_hourplus, align 8, !dbg !998, !tbaa !999
  br label %if.end73, !dbg !1000

if.else61:                                        ; preds = %if.else55
  %41 = load volatile i32, i32* @current_time, align 4, !dbg !1001, !tbaa !841
  %sub63 = sub i32 %6, %41, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %sub63, metadata !892, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i32 undef, metadata !897, metadata !DIExpression()), !dbg !1003
  %cmp64 = icmp ult i32 %sub63, 3660, !dbg !1004
  br i1 %cmp64, label %if.then66, label %if.end70, !dbg !1006

if.then66:                                        ; preds = %if.else61
  %div.lhs.trunc = trunc i32 %sub63 to i16, !dbg !1007
  %div124 = udiv i16 %div.lhs.trunc, 60, !dbg !1007
  call void @llvm.dbg.value(metadata i16 %div124, metadata !897, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1003
  %gcov_ctr85 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 10), align 16, !dbg !1008
  %42 = add i64 %gcov_ctr85, 1, !dbg !1008
  store i64 %42, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 10), align 16, !dbg !1008
  %idxprom67 = zext i16 %div124 to i64, !dbg !1008
  %arrayidx68 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %1, i64 0, i32 1, i64 %idxprom, i32 0, i64 %idxprom67, !dbg !1008
  %43 = load i64, i64* %arrayidx68, align 8, !dbg !1010, !tbaa !1011
  %inc69 = add i64 %43, 1, !dbg !1010
  store i64 %inc69, i64* %arrayidx68, align 8, !dbg !1010, !tbaa !1011
  br label %if.end70, !dbg !1012

if.end70:                                         ; preds = %if.then66, %if.else61
  %gcov_ctr86 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 11), align 8, !dbg !1013
  %44 = add i64 %gcov_ctr86, 1, !dbg !1013
  store i64 %44, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 11), align 8, !dbg !1013
  br label %if.end73

if.end73:                                         ; preds = %if.then53, %if.end70, %if.then59, %do.body
  %call75 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %lock) #13, !dbg !1014
  ret void, !dbg !1015
}

; Function Attrs: noinline nounwind uwtable
define internal void @crawler_expired_doneclass(%struct._crawler_module_t* nocapture noundef readonly %cm, i32 noundef %slab_cls) #0 !dbg !1016 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct._crawler_module_t* %cm, metadata !1018, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i32 %slab_cls, metadata !1019, metadata !DIExpression()), !dbg !1021
  %1 = bitcast %struct._crawler_module_t* %cm to %struct.crawler_expired_data**, !dbg !1022
  %2 = load %struct.crawler_expired_data*, %struct.crawler_expired_data** %1, align 8, !dbg !1022, !tbaa !846
  call void @llvm.dbg.value(metadata %struct.crawler_expired_data* %2, metadata !1020, metadata !DIExpression()), !dbg !1021
  %lock = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %2, i64 0, i32 0, !dbg !1023
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %lock) #13, !dbg !1024
  %3 = load volatile i32, i32* @current_time, align 4, !dbg !1025, !tbaa !841
  %idxprom = sext i32 %slab_cls to i64, !dbg !1026
  %end_time = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %2, i64 0, i32 1, i64 %idxprom, i32 6, !dbg !1027
  store i32 %3, i32* %end_time, align 4, !dbg !1028, !tbaa !1029
  %run_complete = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %2, i64 0, i32 1, i64 %idxprom, i32 7, !dbg !1030
  store i8 1, i8* %run_complete, align 8, !dbg !1031, !tbaa !868
  %call5 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %lock) #13, !dbg !1032
  ret void, !dbg !1033
}

; Function Attrs: noinline nounwind uwtable
define internal void @crawler_expired_finalize(%struct._crawler_module_t* nocapture noundef readonly %cm) #0 !dbg !1034 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct._crawler_module_t* %cm, metadata !1036, metadata !DIExpression()), !dbg !1038
  %data = getelementptr inbounds %struct._crawler_module_t, %struct._crawler_module_t* %cm, i64 0, i32 0, !dbg !1039
  %1 = load i8*, i8** %data, align 8, !dbg !1039, !tbaa !846
  call void @llvm.dbg.value(metadata i8* %1, metadata !1037, metadata !DIExpression()), !dbg !1038
  %lock = bitcast i8* %1 to %union.pthread_mutex_t*, !dbg !1040
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %lock) #13, !dbg !1041
  %2 = load volatile i32, i32* @current_time, align 4, !dbg !1042, !tbaa !841
  %end_time = getelementptr inbounds i8, i8* %1, i64 137260, !dbg !1043
  %3 = bitcast i8* %end_time to i32*, !dbg !1043
  store i32 %2, i32* %3, align 4, !dbg !1044, !tbaa !1045
  %4 = getelementptr inbounds i8, i8* %1, i64 137264, !dbg !1046
  store i8 1, i8* %4, align 8, !dbg !1047, !tbaa !1048
  %call2 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %lock) #13, !dbg !1049
  %5 = getelementptr inbounds i8, i8* %1, i64 137265, !dbg !1050
  %6 = load i8, i8* %5, align 1, !dbg !1050, !tbaa !821, !range !1052
  %tobool.not = icmp eq i8 %6, 0, !dbg !1050
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1053

if.then:                                          ; preds = %entry
  %gcov_ctr3 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 1), align 8, !dbg !1054
  %7 = add i64 %gcov_ctr3, 1, !dbg !1054
  store i64 %7, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 1), align 8, !dbg !1054
  tail call void @free(i8* noundef nonnull %1) #13, !dbg !1056
  br label %if.end, !dbg !1057

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1058
}

; Function Attrs: noinline nounwind uwtable
define internal void @crawler_metadump_eval(%struct._crawler_module_t* nocapture noundef readonly %cm, %struct._stritem* noundef %it, i32 noundef %hv, i32 noundef %i) #0 !dbg !1059 {
entry:
  %keybuf = alloca [751 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._crawler_module_t* %cm, metadata !1061, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1062, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.value(metadata i32 %hv, metadata !1063, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.value(metadata i32 %i, metadata !1064, metadata !DIExpression()), !dbg !1071
  %0 = getelementptr inbounds [751 x i8], [751 x i8]* %keybuf, i64 0, i64 0, !dbg !1072
  call void @llvm.lifetime.start.p0i8(i64 751, i8* nonnull %0) #14, !dbg !1072
  call void @llvm.dbg.declare(metadata [751 x i8]* %keybuf, metadata !1065, metadata !DIExpression()), !dbg !1073
  %call = tail call i32 @item_is_flushed(%struct._stritem* noundef %it) #13, !dbg !1074
  call void @llvm.dbg.value(metadata i32 %call, metadata !1069, metadata !DIExpression()), !dbg !1071
  %exptime = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 4, !dbg !1075
  %1 = load i32, i32* %exptime, align 4, !dbg !1075, !tbaa !841
  %cmp.not = icmp eq i32 %1, 0, !dbg !1077
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true, !dbg !1078

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 0), align 16, !dbg !1079
  %2 = add i64 %gcov_ctr, 1, !dbg !1079
  store i64 %2, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 0), align 16, !dbg !1079
  %3 = load volatile i32, i32* @current_time, align 4, !dbg !1080, !tbaa !841
  %cmp2 = icmp ult i32 %1, %3, !dbg !1081
  %tobool = icmp ne i32 %call, 0
  %or.cond = select i1 %cmp2, i1 true, i1 %tobool, !dbg !1082
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1082

lor.lhs.false:                                    ; preds = %entry
  %tobool.old.not = icmp eq i32 %call, 0, !dbg !1083
  br i1 %tobool.old.not, label %if.end, label %if.then, !dbg !1084

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %gcov_ctr64 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 1), align 8, !dbg !1085
  %4 = add i64 %gcov_ctr64, 1, !dbg !1085
  store i64 %4, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 1), align 8, !dbg !1085
  %refcount = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 6, !dbg !1085
  %5 = load i16, i16* %refcount, align 4, !dbg !1085, !tbaa !906
  %dec = add i16 %5, -1, !dbg !1085
  store i16 %dec, i16* %refcount, align 4, !dbg !1085, !tbaa !906
  br label %cleanup62, !dbg !1087

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 10, !dbg !1088
  %6 = bitcast [0 x %union.anon]* %data to i8*, !dbg !1088
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !1088
  %7 = load i16, i16* %it_flags, align 2, !dbg !1088, !tbaa !906
  %8 = shl i16 %7, 2, !dbg !1088
  %9 = and i16 %8, 8, !dbg !1088
  %10 = zext i16 %9 to i64, !dbg !1088
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %10, !dbg !1088
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 9, !dbg !1089
  %11 = load i8, i8* %nkey, align 1, !dbg !1089, !tbaa !943
  %conv4 = zext i8 %11 to i64, !dbg !1090
  %call5 = call zeroext i1 @uriencode(i8* noundef nonnull %add.ptr, i8* noundef nonnull %0, i64 noundef %conv4, i64 noundef 751) #13, !dbg !1091
  %cbuf = getelementptr inbounds %struct._crawler_module_t, %struct._crawler_module_t* %cm, i64 0, i32 1, i32 3, !dbg !1092
  %12 = load i8*, i8** %cbuf, align 8, !dbg !1092, !tbaa !1093
  %13 = load i32, i32* %exptime, align 4, !dbg !1094, !tbaa !841
  %cmp8 = icmp eq i32 %13, 0, !dbg !1095
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !1096

cond.true:                                        ; preds = %if.end
  %gcov_ctr65 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 2), align 16, !dbg !1096
  %14 = add i64 %gcov_ctr65, 1, !dbg !1096
  store i64 %14, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 2), align 16, !dbg !1096
  %.pre = load i64, i64* @process_started, align 8, !dbg !1097, !tbaa !1011
  br label %cond.end, !dbg !1096

cond.false:                                       ; preds = %if.end
  %conv11 = zext i32 %13 to i64, !dbg !1098
  %15 = load i64, i64* @process_started, align 8, !dbg !1099, !tbaa !1011
  %add = add nsw i64 %15, %conv11, !dbg !1100
  br label %cond.end, !dbg !1096

cond.end:                                         ; preds = %cond.false, %cond.true
  %16 = phi i64 [ %.pre, %cond.true ], [ %15, %cond.false ], !dbg !1097
  %cond12 = phi i64 [ -1, %cond.true ], [ %add, %cond.false ], !dbg !1096
  %time = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 3, !dbg !1101
  %17 = load i32, i32* %time, align 8, !dbg !1101, !tbaa !841
  %conv13 = zext i32 %17 to i64, !dbg !1102
  %add14 = add nsw i64 %16, %conv13, !dbg !1103
  %18 = load i16, i16* %it_flags, align 2, !dbg !1104, !tbaa !906
  %19 = and i16 %18, 2, !dbg !1104
  %tobool18.not = icmp eq i16 %19, 0, !dbg !1104
  br i1 %tobool18.not, label %cond.false22, label %cond.true19, !dbg !1104

cond.true19:                                      ; preds = %cond.end
  %gcov_ctr66 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 3), align 8, !dbg !1104
  %20 = add i64 %gcov_ctr66, 1, !dbg !1104
  store i64 %20, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 3), align 8, !dbg !1104
  %cas = getelementptr inbounds [0 x %union.anon], [0 x %union.anon]* %data, i64 0, i64 0, i32 0, !dbg !1104
  %21 = load i64, i64* %cas, align 8, !dbg !1104, !tbaa !943
  br label %cond.end23, !dbg !1104

cond.false22:                                     ; preds = %cond.end
  %gcov_ctr67 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 4), align 16, !dbg !1104
  %22 = add i64 %gcov_ctr67, 1, !dbg !1104
  store i64 %22, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 4), align 16, !dbg !1104
  %.pre95 = load i16, i16* %it_flags, align 2, !dbg !1105, !tbaa !906
  br label %cond.end23, !dbg !1104

cond.end23:                                       ; preds = %cond.false22, %cond.true19
  %23 = phi i16 [ %18, %cond.true19 ], [ %.pre95, %cond.false22 ], !dbg !1105
  %cond24 = phi i64 [ %21, %cond.true19 ], [ 0, %cond.false22 ], !dbg !1104
  %conv26 = zext i16 %23 to i32, !dbg !1106
  %and27 = and i32 %conv26, 8, !dbg !1107
  %tobool28.not = icmp eq i32 %and27, 0, !dbg !1108
  %cond29 = select i1 %tobool28.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), !dbg !1108
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 8, !dbg !1109
  %24 = load i8, i8* %slabs_clsid, align 8, !dbg !1109, !tbaa !943
  %25 = and i8 %24, 63, !dbg !1109
  %and31 = zext i8 %25 to i32, !dbg !1109
  %26 = load i8, i8* %nkey, align 1, !dbg !1110, !tbaa !943
  %conv33 = zext i8 %26 to i64, !dbg !1110
  %add35 = add nuw nsw i64 %conv33, 49, !dbg !1110
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 5, !dbg !1110
  %27 = load i32, i32* %nbytes, align 8, !dbg !1110, !tbaa !841
  %conv36 = sext i32 %27 to i64, !dbg !1110
  %add37 = add nsw i64 %add35, %conv36, !dbg !1110
  %and40 = lshr i32 %conv26, 6, !dbg !1110
  %28 = and i32 %and40, 4, !dbg !1110
  %29 = zext i32 %28 to i64, !dbg !1110
  %add43 = add nsw i64 %add37, %29, !dbg !1110
  %and46 = shl nuw nsw i32 %conv26, 2, !dbg !1110
  %30 = and i32 %and46, 8, !dbg !1110
  %31 = zext i32 %30 to i64, !dbg !1110
  %add49 = add nsw i64 %add43, %31, !dbg !1110
  %call50 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %12, i64 noundef 4096, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %cond12, i64 noundef %add14, i64 noundef %cond24, i8* noundef %cond29, i32 noundef %and31, i64 noundef %add49) #13, !dbg !1111
  call void @llvm.dbg.value(metadata i32 %call50, metadata !1070, metadata !DIExpression()), !dbg !1071
  %refcount51 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 6, !dbg !1112
  %32 = load i16, i16* %refcount51, align 4, !dbg !1112, !tbaa !906
  %dec52 = add i16 %32, -1, !dbg !1112
  store i16 %dec52, i16* %refcount51, align 4, !dbg !1112, !tbaa !906
  %cmp53 = icmp sgt i32 %call50, 8190, !dbg !1113
  br i1 %cmp53, label %cleanup62, label %lor.lhs.false55, !dbg !1115

lor.lhs.false55:                                  ; preds = %cond.end23
  %gcov_ctr68 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 5), align 8, !dbg !1116
  %33 = add i64 %gcov_ctr68, 1, !dbg !1116
  store i64 %33, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 5), align 8, !dbg !1116
  %cmp56 = icmp slt i32 %call50, 1, !dbg !1117
  br i1 %cmp56, label %cleanup62, label %if.end59, !dbg !1118

if.end59:                                         ; preds = %lor.lhs.false55
  %gcov_ctr69 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 6), align 16, !dbg !1119
  %34 = add i64 %gcov_ctr69, 1, !dbg !1119
  store i64 %34, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 6), align 16, !dbg !1119
  %buf = getelementptr inbounds %struct._crawler_module_t, %struct._crawler_module_t* %cm, i64 0, i32 1, i32 2, !dbg !1120
  %35 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf, align 8, !dbg !1120, !tbaa !1121
  %call61 = call i32 @bipbuf_push(%struct.bipbuf_t* noundef %35, i32 noundef %call50) #13, !dbg !1122
  br label %cleanup62, !dbg !1123

cleanup62:                                        ; preds = %if.end59, %lor.lhs.false55, %cond.end23, %if.then
  call void @llvm.lifetime.end.p0i8(i64 751, i8* nonnull %0) #14, !dbg !1123
  ret void, !dbg !1123
}

; Function Attrs: noinline nounwind uwtable
define internal void @crawler_metadump_finalize(%struct._crawler_module_t* nocapture noundef %cm) #0 !dbg !1124 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct._crawler_module_t* %cm, metadata !1126, metadata !DIExpression()), !dbg !1127
  %c = getelementptr inbounds %struct._crawler_module_t, %struct._crawler_module_t* %cm, i64 0, i32 1, !dbg !1128
  %c1 = getelementptr inbounds %struct.crawler_client_t, %struct.crawler_client_t* %c, i64 0, i32 0, !dbg !1130
  %1 = load i8*, i8** %c1, align 8, !dbg !1130, !tbaa !1131
  %cmp.not = icmp eq i8* %1, null, !dbg !1132
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1133

if.then:                                          ; preds = %entry
  %gcov_ctr7 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 1), align 8, !dbg !1134
  %2 = add i64 %gcov_ctr7, 1, !dbg !1134
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 1), align 8, !dbg !1134
  %call = tail call fastcc i32 @lru_crawler_client_getbuf(%struct.crawler_client_t* noundef nonnull %c) #15, !dbg !1136
  %cbuf = getelementptr inbounds %struct._crawler_module_t, %struct._crawler_module_t* %cm, i64 0, i32 1, i32 3, !dbg !1137
  %3 = load i8*, i8** %cbuf, align 8, !dbg !1137, !tbaa !1093
  %call4 = tail call i8* @memcpy(i8* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64 noundef 5) #13, !dbg !1138
  %buf = getelementptr inbounds %struct._crawler_module_t, %struct._crawler_module_t* %cm, i64 0, i32 1, i32 2, !dbg !1139
  %4 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf, align 8, !dbg !1139, !tbaa !1121
  %call6 = tail call i32 @bipbuf_push(%struct.bipbuf_t* noundef %4, i32 noundef 5) #13, !dbg !1140
  br label %if.end, !dbg !1141

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1142
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @stop_item_crawler_thread(i1 noundef zeroext %wait) local_unnamed_addr #0 !dbg !1143 {
entry:
  call void @llvm.dbg.value(metadata i1 %wait, metadata !1147, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1149
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1150
  %0 = load volatile i32, i32* @do_run_lru_crawler_thread, align 4, !dbg !1151, !tbaa !841
  %cmp = icmp eq i32 %0, 0, !dbg !1153
  br i1 %cmp, label %if.then, label %if.end, !dbg !1154

if.then:                                          ; preds = %entry
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.24, i64 0, i64 1), align 8, !dbg !1155
  %1 = add i64 %gcov_ctr10, 1, !dbg !1155
  store i64 %1, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.24, i64 0, i64 1), align 8, !dbg !1155
  %call1 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1155
  br label %cleanup, !dbg !1157

if.end:                                           ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.24, i64 0, i64 0), align 16, !dbg !1158
  %2 = add i64 %gcov_ctr, 1, !dbg !1158
  store i64 %2, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.24, i64 0, i64 0), align 16, !dbg !1158
  store volatile i32 0, i32* @do_run_lru_crawler_thread, align 4, !dbg !1158, !tbaa !841
  %call2 = tail call i32 @pthread_cond_signal(%union.pthread_cond_t* noundef nonnull @lru_crawler_cond) #13, !dbg !1159
  %call3 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1160
  br i1 %wait, label %land.lhs.true, label %cleanup, !dbg !1161

land.lhs.true:                                    ; preds = %if.end
  %gcov_ctr11 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.24, i64 0, i64 2), align 16, !dbg !1163
  %3 = add i64 %gcov_ctr11, 1, !dbg !1163
  store i64 %3, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.24, i64 0, i64 2), align 16, !dbg !1163
  %4 = load i64, i64* @item_crawler_tid, align 8, !dbg !1163, !tbaa !1011
  %call4 = tail call i32 @pthread_join(i64 noundef %4, i8** noundef null) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i32 %call4, metadata !1148, metadata !DIExpression()), !dbg !1149
  %cmp5.not = icmp eq i32 %call4, 0, !dbg !1165
  br i1 %cmp5.not, label %cleanup, label %if.then6, !dbg !1166

if.then6:                                         ; preds = %land.lhs.true
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.24, i64 0, i64 3), align 8, !dbg !1167
  %5 = add i64 %gcov_ctr12, 1, !dbg !1167
  store i64 %5, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.24, i64 0, i64 3), align 8, !dbg !1167
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1167, !tbaa !912
  %call7 = tail call i8* @strerror(i32 noundef %call4) #13, !dbg !1169
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* noundef %call7) #13, !dbg !1170
  br label %cleanup, !dbg !1171

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then6 ], [ 0, %land.lhs.true ], [ 0, %if.end ], !dbg !1149
  ret i32 %retval.0, !dbg !1172
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare !dbg !1173 dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1179 dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1180 dso_local i32 @pthread_cond_signal(%union.pthread_cond_t* noundef) local_unnamed_addr #3

declare !dbg !1184 dso_local i32 @pthread_join(i64 noundef, i8** noundef) local_unnamed_addr #4

declare !dbg !1188 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1249 dso_local i8* @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @start_item_crawler_thread() local_unnamed_addr #0 !dbg !1253 {
entry:
  %0 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 28), align 2, !dbg !1258, !tbaa !1260, !range !1052
  %tobool.not = icmp eq i8 %0, 0, !dbg !1258
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1261

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 16, !dbg !1262
  %1 = add i64 %gcov_ctr, 1, !dbg !1262
  store i64 %1, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 16, !dbg !1262
  br label %cleanup, !dbg !1262

if.end:                                           ; preds = %entry
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1263
  store volatile i32 1, i32* @do_run_lru_crawler_thread, align 4, !dbg !1264, !tbaa !841
  %call1 = tail call i32 @pthread_create(i64* noundef nonnull @item_crawler_tid, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @item_crawler_thread, i8* noundef null) #13, !dbg !1265
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1257, metadata !DIExpression()), !dbg !1267
  %cmp.not = icmp eq i32 %call1, 0, !dbg !1268
  br i1 %cmp.not, label %if.end6, label %if.then2, !dbg !1269

if.then2:                                         ; preds = %if.end
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 2), align 16, !dbg !1270
  %2 = add i64 %gcov_ctr10, 1, !dbg !1270
  store i64 %2, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 2), align 16, !dbg !1270
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1270, !tbaa !912
  %call3 = tail call i8* @strerror(i32 noundef %call1) #13, !dbg !1272
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call3) #13, !dbg !1273
  %call5 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1274
  br label %cleanup, !dbg !1275

if.end6:                                          ; preds = %if.end
  %gcov_ctr9 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 1), align 8, !dbg !1276
  %4 = add i64 %gcov_ctr9, 1, !dbg !1276
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 1), align 8, !dbg !1276
  %call7 = tail call i32 @pthread_cond_wait(%union.pthread_cond_t* noundef nonnull @lru_crawler_cond, %union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1276
  %call8 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1277
  br label %cleanup, !dbg !1278

cleanup:                                          ; preds = %if.end6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ 0, %if.end6 ], !dbg !1267
  ret i32 %retval.0, !dbg !1279
}

; Function Attrs: nounwind
declare !dbg !1280 dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i8* @item_crawler_thread(i8* nocapture noundef readnone %arg) #0 !dbg !1300 {
entry:
  call void @llvm.dbg.value(metadata i8* %arg, metadata !1302, metadata !DIExpression()), !dbg !1318
  %0 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 47), align 8, !dbg !1319, !tbaa !1320
  call void @llvm.dbg.value(metadata i32 %0, metadata !1304, metadata !DIExpression()), !dbg !1318
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1321
  %call1 = tail call i32 @pthread_cond_signal(%union.pthread_cond_t* noundef nonnull @lru_crawler_cond) #13, !dbg !1322
  store i8 1, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 28), align 2, !dbg !1323, !tbaa !1260
  %1 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1324, !tbaa !934
  %cmp = icmp sgt i32 %1, 2, !dbg !1326
  br i1 %cmp, label %if.then, label %if.end, !dbg !1327

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 0), align 16, !dbg !1328
  %2 = add i64 %gcov_ctr, 1, !dbg !1328
  store i64 %2, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 0), align 16, !dbg !1328
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1328, !tbaa !912
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0)) #13, !dbg !1329
  br label %if.end, !dbg !1329

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i32 %0, metadata !1304, metadata !DIExpression()), !dbg !1318
  %4 = load volatile i32, i32* @do_run_lru_crawler_thread, align 4, !dbg !1330, !tbaa !841
  %tobool.not232 = icmp eq i32 %4, 0, !dbg !1331
  br i1 %tobool.not232, label %while.end142, label %while.body, !dbg !1331

while.body:                                       ; preds = %if.end, %if.end141
  %crawls_persleep.0233 = phi i32 [ %crawls_persleep.6, %if.end141 ], [ %0, %if.end ]
  call void @llvm.dbg.value(metadata i32 %crawls_persleep.0233, metadata !1304, metadata !DIExpression()), !dbg !1318
  %call3 = tail call i32 @pthread_cond_wait(%union.pthread_cond_t* noundef nonnull @lru_crawler_cond, %union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1332
  %5 = load i32, i32* @crawler_count, align 4, !dbg !1333, !tbaa !841
  switch i32 %5, label %for.body [
    i32 -1, label %if.then5
    i32 0, label %while.end
  ], !dbg !1334

if.then5:                                         ; preds = %while.body
  %gcov_ctr152 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 2), align 16, !dbg !1335
  %6 = add i64 %gcov_ctr152, 1, !dbg !1335
  store i64 %6, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 2), align 16, !dbg !1335
  tail call fastcc void @item_crawl_hash() #15, !dbg !1335
  store i32 0, i32* @crawler_count, align 4, !dbg !1337, !tbaa !841
  br label %if.end115, !dbg !1338

for.body:                                         ; preds = %while.body, %for.body.backedge
  %indvars.iv = phi i64 [ %indvars.iv.be, %for.body.backedge ], [ 1, %while.body ]
  %crawls_persleep.2226 = phi i32 [ %crawls_persleep.5, %for.body.backedge ], [ %crawls_persleep.0233, %while.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1303, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i32 %crawls_persleep.2226, metadata !1304, metadata !DIExpression()), !dbg !1318
  %arrayidx = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %indvars.iv, !dbg !1339
  %it_flags = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %indvars.iv, i32 7, !dbg !1341
  %7 = load i16, i16* %it_flags, align 2, !dbg !1341, !tbaa !1342
  %cmp10.not = icmp eq i16 %7, 1, !dbg !1343
  br i1 %cmp10.not, label %if.end13, label %if.then12, !dbg !1344

if.then12:                                        ; preds = %for.body
  %gcov_ctr153 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 3), align 8, !dbg !1345
  %8 = add i64 %gcov_ctr153, 1, !dbg !1345
  store i64 %8, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 3), align 8, !dbg !1345
  br label %for.inc, !dbg !1345

if.end13:                                         ; preds = %for.body
  %9 = load i8*, i8** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1, i32 0), align 8, !dbg !1347, !tbaa !1131
  %cmp14.not = icmp eq i8* %9, null, !dbg !1348
  br i1 %cmp14.not, label %if.else22, label %if.then16, !dbg !1349

if.then16:                                        ; preds = %if.end13
  %call17 = tail call fastcc i32 @lru_crawler_client_getbuf(%struct.crawler_client_t* noundef getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1)) #15, !dbg !1350
  call void @llvm.dbg.value(metadata i32 %call17, metadata !1311, metadata !DIExpression()), !dbg !1351
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !1352
  br i1 %cmp18.not, label %if.end26, label %cleanup, !dbg !1354

cleanup:                                          ; preds = %if.then16
  %gcov_ctr154 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 4), align 16, !dbg !1355
  %10 = add i64 %gcov_ctr154, 1, !dbg !1355
  store i64 %10, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 4), align 16, !dbg !1355
  %11 = trunc i64 %indvars.iv to i32, !dbg !1357
  tail call fastcc void @lru_crawler_class_done(i32 noundef %11) #15, !dbg !1357
  br label %for.inc

if.else22:                                        ; preds = %if.end13
  %12 = load %struct.crawler_module_reg_t*, %struct.crawler_module_reg_t** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 2), align 8, !dbg !1358, !tbaa !1360
  %needs_client = getelementptr inbounds %struct.crawler_module_reg_t, %struct.crawler_module_reg_t* %12, i64 0, i32 5, !dbg !1361
  %13 = load i8, i8* %needs_client, align 1, !dbg !1361, !tbaa !1362, !range !1052
  %tobool23.not = icmp eq i8 %13, 0, !dbg !1361
  br i1 %tobool23.not, label %if.end26, label %if.then24, !dbg !1364

if.then24:                                        ; preds = %if.else22
  %gcov_ctr156 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 6), align 16, !dbg !1365
  %14 = add i64 %gcov_ctr156, 1, !dbg !1365
  store i64 %14, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 6), align 16, !dbg !1365
  %15 = trunc i64 %indvars.iv to i32, !dbg !1367
  tail call fastcc void @lru_crawler_class_done(i32 noundef %15) #15, !dbg !1367
  br label %for.inc, !dbg !1368

if.end26:                                         ; preds = %if.else22, %if.then16
  %.sink = phi i64* [ getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 5), %if.then16 ], [ getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 7), %if.else22 ]
  %gcov_ctr155 = load i64, i64* %.sink, align 8
  %16 = add i64 %gcov_ctr155, 1
  store i64 %16, i64* %.sink, align 8
  %arrayidx28 = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %indvars.iv, !dbg !1369
  %call29 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx28) #13, !dbg !1370
  %17 = bitcast %struct.crawler* %arrayidx to %struct._stritem*, !dbg !1371
  %call32 = tail call %struct._stritem* @do_item_crawl_q(%struct._stritem* noundef nonnull %17) #13, !dbg !1372
  call void @llvm.dbg.value(metadata %struct._stritem* %call32, metadata !1305, metadata !DIExpression()), !dbg !1373
  %cmp33 = icmp eq %struct._stritem* %call32, null, !dbg !1374
  br i1 %cmp33, label %if.then43, label %lor.lhs.false, !dbg !1376

lor.lhs.false:                                    ; preds = %if.end26
  %gcov_ctr158 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 8), align 16, !dbg !1377
  %18 = add i64 %gcov_ctr158, 1, !dbg !1377
  store i64 %18, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 8), align 16, !dbg !1377
  %remaining = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %indvars.iv, i32 10, !dbg !1378
  %19 = load i32, i32* %remaining, align 4, !dbg !1378, !tbaa !1379
  %tobool37.not = icmp eq i32 %19, 0, !dbg !1380
  br i1 %tobool37.not, label %if.end49, label %land.lhs.true, !dbg !1381

land.lhs.true:                                    ; preds = %lor.lhs.false
  %gcov_ctr159 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 9), align 8, !dbg !1382
  %20 = add i64 %gcov_ctr159, 1, !dbg !1382
  store i64 %20, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 9), align 8, !dbg !1382
  %dec = add i32 %19, -1, !dbg !1383
  store i32 %dec, i32* %remaining, align 4, !dbg !1383, !tbaa !1379
  %cmp41 = icmp eq i32 %dec, 0, !dbg !1384
  br i1 %cmp41, label %if.then43, label %if.end49, !dbg !1385

if.then43:                                        ; preds = %land.lhs.true, %if.end26
  %21 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1386, !tbaa !934
  %cmp44 = icmp sgt i32 %21, 2, !dbg !1389
  br i1 %cmp44, label %if.then46, label %if.then43.if.end48_crit_edge, !dbg !1390

if.then43.if.end48_crit_edge:                     ; preds = %if.then43
  %.pre235 = trunc i64 %indvars.iv to i32, !dbg !1391
  br label %if.end48, !dbg !1390

if.then46:                                        ; preds = %if.then43
  %gcov_ctr160 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 10), align 16, !dbg !1392
  %22 = add i64 %gcov_ctr160, 1, !dbg !1392
  store i64 %22, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 10), align 16, !dbg !1392
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1392, !tbaa !912
  %24 = trunc i64 %indvars.iv to i32, !dbg !1393
  %call47 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 noundef %24) #13, !dbg !1393
  br label %if.end48, !dbg !1393

if.end48:                                         ; preds = %if.then43.if.end48_crit_edge, %if.then46
  %.pre-phi = phi i32 [ %.pre235, %if.then43.if.end48_crit_edge ], [ %24, %if.then46 ], !dbg !1391
  %gcov_ctr161 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 11), align 8, !dbg !1394
  %25 = add i64 %gcov_ctr161, 1, !dbg !1394
  store i64 %25, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 11), align 8, !dbg !1394
  tail call fastcc void @lru_crawler_class_done(i32 noundef %.pre-phi) #15, !dbg !1391
  br label %for.inc, !dbg !1395

if.end49:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %26 = load i32 (i8*, i64)*, i32 (i8*, i64)** @hash, align 8, !dbg !1396, !tbaa !912
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %call32, i64 0, i32 10, !dbg !1397
  %27 = bitcast [0 x %union.anon]* %data to i8*, !dbg !1397
  %it_flags50 = getelementptr inbounds %struct._stritem, %struct._stritem* %call32, i64 0, i32 7, !dbg !1397
  %28 = load i16, i16* %it_flags50, align 2, !dbg !1397, !tbaa !906
  %29 = shl i16 %28, 2, !dbg !1397
  %30 = and i16 %29, 8, !dbg !1397
  %31 = zext i16 %30 to i64, !dbg !1397
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %31, !dbg !1397
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %call32, i64 0, i32 9, !dbg !1398
  %32 = load i8, i8* %nkey, align 1, !dbg !1398, !tbaa !943
  %conv53 = zext i8 %32 to i64, !dbg !1399
  %call54 = tail call i32 %26(i8* noundef nonnull %add.ptr, i64 noundef %conv53) #13, !dbg !1396
  call void @llvm.dbg.value(metadata i32 %call54, metadata !1317, metadata !DIExpression()), !dbg !1400
  %call55 = tail call i8* @item_trylock(i32 noundef %call54) #13, !dbg !1401
  call void @llvm.dbg.value(metadata i8* %call55, metadata !1310, metadata !DIExpression()), !dbg !1373
  %cmp56 = icmp eq i8* %call55, null, !dbg !1403
  br i1 %cmp56, label %if.then58, label %if.end62, !dbg !1404

if.then58:                                        ; preds = %if.end49
  %gcov_ctr162 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 12), align 16, !dbg !1405
  %33 = add i64 %gcov_ctr162, 1, !dbg !1405
  store i64 %33, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 12), align 16, !dbg !1405
  %call61 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx28) #13, !dbg !1407
  br label %for.inc, !dbg !1408

if.end62:                                         ; preds = %if.end49
  %refcount = getelementptr inbounds %struct._stritem, %struct._stritem* %call32, i64 0, i32 6, !dbg !1409
  %34 = load i16, i16* %refcount, align 4, !dbg !1409, !tbaa !906
  %inc = add i16 %34, 1, !dbg !1409
  store i16 %inc, i16* %refcount, align 4, !dbg !1409, !tbaa !906
  %cmp64.not = icmp eq i16 %inc, 2, !dbg !1411
  br i1 %cmp64.not, label %if.end75, label %if.then66, !dbg !1412

if.then66:                                        ; preds = %if.end62
  store i16 %34, i16* %refcount, align 4, !dbg !1413, !tbaa !906
  %gcov_ctr163 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 13), align 8, !dbg !1415
  %35 = add i64 %gcov_ctr163, 1, !dbg !1415
  store i64 %35, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 13), align 8, !dbg !1415
  tail call void @item_trylock_unlock(i8* noundef nonnull %call55) #13, !dbg !1417
  %gcov_ctr164 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 14), align 16, !dbg !1418
  %36 = add i64 %gcov_ctr164, 1, !dbg !1418
  store i64 %36, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 14), align 16, !dbg !1418
  %call74 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx28) #13, !dbg !1419
  br label %for.inc, !dbg !1420

if.end75:                                         ; preds = %if.end62
  %checked = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %indvars.iv, i32 13, !dbg !1421
  %37 = load i64, i64* %checked, align 8, !dbg !1422, !tbaa !1423
  %inc78 = add i64 %37, 1, !dbg !1422
  store i64 %inc78, i64* %checked, align 8, !dbg !1422, !tbaa !1423
  %38 = load %struct.crawler_module_reg_t*, %struct.crawler_module_reg_t** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 2), align 8, !dbg !1424, !tbaa !1360
  %needs_lock = getelementptr inbounds %struct.crawler_module_reg_t, %struct.crawler_module_reg_t* %38, i64 0, i32 4, !dbg !1426
  %39 = load i8, i8* %needs_lock, align 8, !dbg !1426, !tbaa !1427, !range !1052
  %tobool79.not = icmp eq i8 %39, 0, !dbg !1426
  br i1 %tobool79.not, label %if.then80, label %if.end84, !dbg !1428

if.then80:                                        ; preds = %if.end75
  %gcov_ctr165 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 15), align 8, !dbg !1429
  %40 = add i64 %gcov_ctr165, 1, !dbg !1429
  store i64 %40, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 15), align 8, !dbg !1429
  %call83 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx28) #13, !dbg !1431
  %.pre = load %struct.crawler_module_reg_t*, %struct.crawler_module_reg_t** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 2), align 8, !dbg !1432, !tbaa !1360
  br label %if.end84, !dbg !1433

if.end84:                                         ; preds = %if.then80, %if.end75
  %41 = phi %struct.crawler_module_reg_t* [ %.pre, %if.then80 ], [ %38, %if.end75 ], !dbg !1432
  %eval = getelementptr inbounds %struct.crawler_module_reg_t, %struct.crawler_module_reg_t* %41, i64 0, i32 1, !dbg !1434
  %42 = load void (%struct._crawler_module_t*, %struct._stritem*, i32, i32)*, void (%struct._crawler_module_t*, %struct._stritem*, i32, i32)** %eval, align 8, !dbg !1434, !tbaa !1435
  %43 = trunc i64 %indvars.iv to i32, !dbg !1436
  tail call void %42(%struct._crawler_module_t* noundef nonnull @active_crawler_mod, %struct._stritem* noundef nonnull %call32, i32 noundef %call54, i32 noundef %43) #13, !dbg !1436
  %gcov_ctr166 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 16), align 16, !dbg !1437
  %44 = add i64 %gcov_ctr166, 1, !dbg !1437
  store i64 %44, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 16), align 16, !dbg !1437
  tail call void @item_trylock_unlock(i8* noundef nonnull %call55) #13, !dbg !1439
  %45 = load %struct.crawler_module_reg_t*, %struct.crawler_module_reg_t** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 2), align 8, !dbg !1440, !tbaa !1360
  %needs_lock88 = getelementptr inbounds %struct.crawler_module_reg_t, %struct.crawler_module_reg_t* %45, i64 0, i32 4, !dbg !1442
  %46 = load i8, i8* %needs_lock88, align 8, !dbg !1442, !tbaa !1427, !range !1052
  %tobool89.not = icmp eq i8 %46, 0, !dbg !1442
  br i1 %tobool89.not, label %if.end94, label %if.then90, !dbg !1443

if.then90:                                        ; preds = %if.end84
  %gcov_ctr167 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 17), align 8, !dbg !1444
  %47 = add i64 %gcov_ctr167, 1, !dbg !1444
  store i64 %47, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 17), align 8, !dbg !1444
  %call93 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx28) #13, !dbg !1446
  br label %if.end94, !dbg !1447

if.end94:                                         ; preds = %if.then90, %if.end84
  %dec95 = add nsw i32 %crawls_persleep.2226, -1, !dbg !1448
  call void @llvm.dbg.value(metadata i32 %dec95, metadata !1304, metadata !DIExpression()), !dbg !1318
  %cmp96 = icmp slt i32 %crawls_persleep.2226, 1, !dbg !1450
  br i1 %cmp96, label %land.lhs.true98, label %if.else104, !dbg !1451

land.lhs.true98:                                  ; preds = %if.end94
  %gcov_ctr168 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 18), align 16, !dbg !1452
  %48 = add i64 %gcov_ctr168, 1, !dbg !1452
  store i64 %48, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 18), align 16, !dbg !1452
  %49 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 41), align 8, !dbg !1452, !tbaa !1453
  %tobool99.not = icmp eq i32 %49, 0, !dbg !1454
  br i1 %tobool99.not, label %if.then106, label %if.then100, !dbg !1455

if.then100:                                       ; preds = %land.lhs.true98
  %gcov_ctr169 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 19), align 8, !dbg !1456
  %50 = add i64 %gcov_ctr169, 1, !dbg !1456
  store i64 %50, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 19), align 8, !dbg !1456
  %call101 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1456
  %51 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 41), align 8, !dbg !1458, !tbaa !1453
  %call102 = tail call i32 @usleep(i32 noundef %51) #13, !dbg !1459
  %call103 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1460
  %52 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 47), align 8, !dbg !1461, !tbaa !1320
  call void @llvm.dbg.value(metadata i32 %52, metadata !1304, metadata !DIExpression()), !dbg !1318
  br label %cleanup.cont113, !dbg !1462

if.else104:                                       ; preds = %if.end94
  %.pr218 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 41), align 8, !dbg !1463, !tbaa !1453
  %tobool105.not = icmp eq i32 %.pr218, 0, !dbg !1465
  br i1 %tobool105.not, label %if.then106, label %if.end109, !dbg !1466

if.then106:                                       ; preds = %land.lhs.true98, %if.else104
  %gcov_ctr170 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 20), align 16, !dbg !1467
  %53 = add i64 %gcov_ctr170, 1, !dbg !1467
  store i64 %53, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 20), align 16, !dbg !1467
  %call107 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1467
  %call108 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1469
  br label %if.end109, !dbg !1470

if.end109:                                        ; preds = %if.then106, %if.else104
  %gcov_ctr171 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 21), align 8
  %54 = add i64 %gcov_ctr171, 1
  store i64 %54, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 21), align 8
  br label %cleanup.cont113

cleanup.cont113:                                  ; preds = %if.end109, %if.then100
  %crawls_persleep.4.ph = phi i32 [ %dec95, %if.end109 ], [ %52, %if.then100 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1304, metadata !DIExpression()), !dbg !1318
  %gcov_ctr172 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 22), align 16, !dbg !1471
  %55 = add i64 %gcov_ctr172, 1, !dbg !1471
  store i64 %55, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 22), align 16, !dbg !1471
  br label %for.inc, !dbg !1471

for.inc:                                          ; preds = %if.then58, %if.then66, %cleanup, %cleanup.cont113, %if.end48, %if.then24, %if.then12
  %crawls_persleep.5 = phi i32 [ %crawls_persleep.2226, %if.then12 ], [ %crawls_persleep.2226, %cleanup ], [ %crawls_persleep.2226, %if.end48 ], [ %crawls_persleep.4.ph, %cleanup.cont113 ], [ %crawls_persleep.2226, %if.then24 ], [ %crawls_persleep.2226, %if.then58 ], [ %crawls_persleep.2226, %if.then66 ], !dbg !1472
  call void @llvm.dbg.value(metadata i32 %crawls_persleep.5, metadata !1304, metadata !DIExpression()), !dbg !1318
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1303, metadata !DIExpression()), !dbg !1318
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256, !dbg !1474
  br i1 %exitcond.not, label %for.end, label %for.body.backedge, !dbg !1475

for.body.backedge:                                ; preds = %for.inc, %for.end
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.end ]
  br label %for.body, !dbg !1318, !llvm.loop !1476

for.end:                                          ; preds = %for.inc
  %gcov_ctr173 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 23), align 8, !dbg !1478
  %56 = add i64 %gcov_ctr173, 1, !dbg !1478
  store i64 %56, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 23), align 8, !dbg !1478
  %.pr = load i32, i32* @crawler_count, align 4, !dbg !1479, !tbaa !841
  call void @llvm.dbg.value(metadata i32 %crawls_persleep.5, metadata !1304, metadata !DIExpression()), !dbg !1318
  %tobool7.not = icmp eq i32 %.pr, 0, !dbg !1477
  br i1 %tobool7.not, label %while.end, label %for.body.backedge, !dbg !1477

while.end:                                        ; preds = %for.end, %while.body
  %crawls_persleep.1.lcssa = phi i32 [ %crawls_persleep.0233, %while.body ], [ %crawls_persleep.5, %for.end ], !dbg !1472
  %gcov_ctr174 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 24), align 16
  %57 = add i64 %gcov_ctr174, 1
  store i64 %57, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 24), align 16
  br label %if.end115

if.end115:                                        ; preds = %while.end, %if.then5
  %crawls_persleep.6 = phi i32 [ %crawls_persleep.0233, %if.then5 ], [ %crawls_persleep.1.lcssa, %while.end ], !dbg !1472
  call void @llvm.dbg.value(metadata i32 %crawls_persleep.6, metadata !1304, metadata !DIExpression()), !dbg !1318
  %58 = load %struct.crawler_module_reg_t*, %struct.crawler_module_reg_t** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 2), align 8, !dbg !1480, !tbaa !1360
  %cmp116.not = icmp eq %struct.crawler_module_reg_t* %58, null, !dbg !1482
  br i1 %cmp116.not, label %if.end136, label %if.then118, !dbg !1483

if.then118:                                       ; preds = %if.end115
  %gcov_ctr175 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 25), align 8, !dbg !1484
  %59 = add i64 %gcov_ctr175, 1, !dbg !1484
  store i64 %59, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 25), align 8, !dbg !1484
  %finalize = getelementptr inbounds %struct.crawler_module_reg_t, %struct.crawler_module_reg_t* %58, i64 0, i32 3, !dbg !1487
  %60 = load void (%struct._crawler_module_t*)*, void (%struct._crawler_module_t*)** %finalize, align 8, !dbg !1487, !tbaa !1488
  %cmp119.not = icmp eq void (%struct._crawler_module_t*)* %60, null, !dbg !1489
  br i1 %cmp119.not, label %if.end123, label %if.then121, !dbg !1490

if.then121:                                       ; preds = %if.then118
  %gcov_ctr176 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 26), align 16, !dbg !1491
  %61 = add i64 %gcov_ctr176, 1, !dbg !1491
  store i64 %61, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 26), align 16, !dbg !1491
  %62 = load void (%struct._crawler_module_t*)*, void (%struct._crawler_module_t*)** %finalize, align 8, !dbg !1492, !tbaa !1488
  tail call void %62(%struct._crawler_module_t* noundef nonnull @active_crawler_mod) #13, !dbg !1493
  br label %if.end123, !dbg !1493

if.end123:                                        ; preds = %if.then121, %if.then118
  %63 = load i8*, i8** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1, i32 0), align 8, !dbg !1494, !tbaa !1131
  %cmp125.not231 = icmp eq i8* %63, null, !dbg !1495
  br i1 %cmp125.not231, label %if.end135, label %land.rhs, !dbg !1496

land.rhs:                                         ; preds = %if.end123, %while.body129
  %gcov_ctr177 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 27), align 8, !dbg !1497
  %64 = add i64 %gcov_ctr177, 1, !dbg !1497
  store i64 %64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 27), align 8, !dbg !1497
  %65 = load %struct.bipbuf_t*, %struct.bipbuf_t** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1, i32 2), align 8, !dbg !1497, !tbaa !1121
  %call127 = tail call i32 @bipbuf_used(%struct.bipbuf_t* noundef %65) #13, !dbg !1498
  %tobool128.not = icmp eq i32 %call127, 0, !dbg !1496
  br i1 %tobool128.not, label %while.end131, label %while.body129, !dbg !1499

while.body129:                                    ; preds = %land.rhs
  %gcov_ctr178 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 28), align 16, !dbg !1500
  %66 = add i64 %gcov_ctr178, 1, !dbg !1500
  store i64 %66, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 28), align 16, !dbg !1500
  %call130 = tail call fastcc i32 @lru_crawler_poll(%struct.crawler_client_t* noundef getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1)) #15, !dbg !1500
  %67 = load i8*, i8** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1, i32 0), align 8, !dbg !1494, !tbaa !1131
  %cmp125.not = icmp eq i8* %67, null, !dbg !1495
  br i1 %cmp125.not, label %if.end135, label %land.rhs, !dbg !1496, !llvm.loop !1502

while.end131:                                     ; preds = %land.rhs
  %.pr224 = load i8*, i8** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1, i32 0), align 8, !dbg !1504, !tbaa !1131
  %cmp132.not = icmp eq i8* %.pr224, null, !dbg !1506
  br i1 %cmp132.not, label %if.end135, label %if.then134, !dbg !1507

if.then134:                                       ; preds = %while.end131
  %gcov_ctr179 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 29), align 8, !dbg !1508
  %68 = add i64 %gcov_ctr179, 1, !dbg !1508
  store i64 %68, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 29), align 8, !dbg !1508
  tail call fastcc void @lru_crawler_release_client() #15, !dbg !1508
  br label %if.end135, !dbg !1510

if.end135:                                        ; preds = %while.body129, %if.end123, %if.then134, %while.end131
  store %struct.crawler_module_reg_t* null, %struct.crawler_module_reg_t** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 2), align 8, !dbg !1511, !tbaa !1360
  br label %if.end136, !dbg !1512

if.end136:                                        ; preds = %if.end135, %if.end115
  %69 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1513, !tbaa !934
  %cmp137 = icmp sgt i32 %69, 2, !dbg !1515
  br i1 %cmp137, label %if.then139, label %if.end141, !dbg !1516

if.then139:                                       ; preds = %if.end136
  %gcov_ctr180 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 30), align 16, !dbg !1517
  %70 = add i64 %gcov_ctr180, 1, !dbg !1517
  store i64 %70, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 30), align 16, !dbg !1517
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1517, !tbaa !912
  %call140 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #13, !dbg !1518
  br label %if.end141, !dbg !1518

if.end141:                                        ; preds = %if.then139, %if.end136
  tail call void @STATS_LOCK() #13, !dbg !1519
  store i8 0, i8* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 11), align 1, !dbg !1520, !tbaa !1521
  tail call void @STATS_UNLOCK() #13, !dbg !1523
  call void @llvm.dbg.value(metadata i32 %crawls_persleep.6, metadata !1304, metadata !DIExpression()), !dbg !1318
  %72 = load volatile i32, i32* @do_run_lru_crawler_thread, align 4, !dbg !1330, !tbaa !841
  %tobool.not = icmp eq i32 %72, 0, !dbg !1331
  br i1 %tobool.not, label %while.end142, label %while.body, !dbg !1331, !llvm.loop !1524

while.end142:                                     ; preds = %if.end141, %if.end
  %gcov_ctr151 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 1), align 8, !dbg !1526
  %73 = add i64 %gcov_ctr151, 1, !dbg !1526
  store i64 %73, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 1), align 8, !dbg !1526
  %call143 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1526
  %74 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1527, !tbaa !934
  %cmp144 = icmp sgt i32 %74, 2, !dbg !1529
  br i1 %cmp144, label %if.then146, label %if.end148, !dbg !1530

if.then146:                                       ; preds = %while.end142
  %gcov_ctr181 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 31), align 8, !dbg !1531
  %75 = add i64 %gcov_ctr181, 1, !dbg !1531
  store i64 %75, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 31), align 8, !dbg !1531
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1531, !tbaa !912
  %call147 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %76, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #13, !dbg !1532
  br label %if.end148, !dbg !1532

if.end148:                                        ; preds = %if.then146, %while.end142
  store i8 0, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 28), align 2, !dbg !1533, !tbaa !1260
  ret i8* null, !dbg !1534
}

declare !dbg !1535 dso_local i32 @pthread_cond_wait(%union.pthread_cond_t* noundef, %union.pthread_mutex_t* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lru_crawler_start(i8* noundef readonly %ids, i32 noundef %remaining, i32 noundef %type, i8* noundef %data, i8* noundef %c, i32 noundef %sfd) local_unnamed_addr #0 !dbg !703 {
entry:
  call void @llvm.dbg.value(metadata i8* %ids, metadata !710, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i32 %remaining, metadata !711, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i32 %type, metadata !712, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8* %data, metadata !713, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8* %c, metadata !714, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i32 %sfd, metadata !715, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i32 0, metadata !716, metadata !DIExpression()), !dbg !1540
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1541
  tail call void @STATS_LOCK() #13, !dbg !1542
  %0 = load i8, i8* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 11), align 1, !dbg !1543, !tbaa !1521, !range !1052
  %tobool.not = icmp eq i8 %0, 0, !dbg !1543
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !717, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1540
  tail call void @STATS_UNLOCK() #13, !dbg !1544
  %1 = load volatile i32, i32* @do_run_lru_crawler_thread, align 4, !dbg !1545, !tbaa !841
  %cmp = icmp eq i32 %1, 0, !dbg !1547
  br i1 %cmp, label %if.then, label %if.end, !dbg !1548

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 0), align 16, !dbg !1549
  %2 = add i64 %gcov_ctr, 1, !dbg !1549
  store i64 %2, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 0), align 16, !dbg !1549
  %call1 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1549
  br label %cleanup, !dbg !1551

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.end8, label %land.lhs.true, !dbg !1552

land.lhs.true:                                    ; preds = %if.end
  %gcov_ctr68 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 1), align 8, !dbg !1554
  %3 = add i64 %gcov_ctr68, 1, !dbg !1554
  store i64 %3, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 1), align 8, !dbg !1554
  %cmp3 = icmp eq i32 %type, 0, !dbg !1555
  br i1 %cmp3, label %land.lhs.true4, label %if.then6, !dbg !1556

land.lhs.true4:                                   ; preds = %land.lhs.true
  %gcov_ctr69 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 2), align 16, !dbg !1557
  %4 = add i64 %gcov_ctr69, 1, !dbg !1557
  store i64 %4, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 2), align 16, !dbg !1557
  %5 = load i32, i32* @active_crawler_type, align 4, !dbg !1557, !tbaa !943
  %cmp5 = icmp eq i32 %5, 0, !dbg !1558
  br i1 %cmp5, label %land.lhs.true10, label %if.then6, !dbg !1559

if.then6:                                         ; preds = %land.lhs.true4, %land.lhs.true
  %gcov_ctr70 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 3), align 8, !dbg !1560
  %6 = add i64 %gcov_ctr70, 1, !dbg !1560
  store i64 %6, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 3), align 8, !dbg !1560
  %call7 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1560
  %7 = load volatile i32, i32* @current_time, align 4, !dbg !1562, !tbaa !841
  %add = add i32 %7, 60, !dbg !1563
  store i32 %add, i32* @lru_crawler_start.block_ae_until, align 4, !dbg !1564, !tbaa !841
  br label %cleanup, !dbg !1565

if.end8:                                          ; preds = %if.end
  switch i32 %type, label %land.lhs.true16.thread [
    i32 0, label %land.lhs.true10
    i32 2, label %if.then22
  ], !dbg !1566

land.lhs.true10:                                  ; preds = %land.lhs.true4, %if.end8
  %gcov_ctr71 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 4), align 16, !dbg !1568
  %8 = add i64 %gcov_ctr71, 1, !dbg !1568
  store i64 %8, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 4), align 16, !dbg !1568
  %9 = load i32, i32* @lru_crawler_start.block_ae_until, align 4, !dbg !1568, !tbaa !841
  %10 = load volatile i32, i32* @current_time, align 4, !dbg !1569, !tbaa !841
  %cmp11 = icmp ugt i32 %9, %10, !dbg !1570
  br i1 %cmp11, label %if.then12, label %land.lhs.true16, !dbg !1571

if.then12:                                        ; preds = %land.lhs.true10
  %gcov_ctr72 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 5), align 8, !dbg !1572
  %11 = add i64 %gcov_ctr72, 1, !dbg !1572
  store i64 %11, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 5), align 8, !dbg !1572
  %call13 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1572
  br label %cleanup, !dbg !1574

land.lhs.true16:                                  ; preds = %land.lhs.true10
  %gcov_ctr73 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 6), align 16, !dbg !1575
  %12 = add i64 %gcov_ctr73, 1, !dbg !1575
  store i64 %12, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 6), align 16, !dbg !1575
  %cmp17 = icmp eq i8* %ids, null, !dbg !1577
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !1578

land.lhs.true16.thread:                           ; preds = %if.end8
  %gcov_ctr73104 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 6), align 16, !dbg !1575
  %13 = add i64 %gcov_ctr73104, 1, !dbg !1575
  store i64 %13, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 6), align 16, !dbg !1575
  %cmp17105 = icmp eq i8* %ids, null, !dbg !1577
  br i1 %cmp17105, label %if.then18, label %if.then22, !dbg !1578

if.then18:                                        ; preds = %land.lhs.true16.thread, %land.lhs.true16
  %gcov_ctr74 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 7), align 8, !dbg !1579
  %14 = add i64 %gcov_ctr74, 1, !dbg !1579
  store i64 %14, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 7), align 8, !dbg !1579
  %call19 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1579
  br label %cleanup, !dbg !1581

if.end20:                                         ; preds = %land.lhs.true16
  br i1 %tobool.not, label %if.then22, label %if.else51, !dbg !1582

if.then22:                                        ; preds = %land.lhs.true16.thread, %if.end8, %if.end20
  %idxprom = zext i32 %type to i64, !dbg !1583
  %arrayidx = getelementptr inbounds [3 x %struct.crawler_module_reg_t*], [3 x %struct.crawler_module_reg_t*]* @crawler_mod_regs, i64 0, i64 %idxprom, !dbg !1583
  %15 = load %struct.crawler_module_reg_t*, %struct.crawler_module_reg_t** %arrayidx, align 8, !dbg !1583, !tbaa !912
  %cmp23.not = icmp eq %struct.crawler_module_reg_t* %15, null, !dbg !1583
  br i1 %cmp23.not, label %if.else, label %if.end25, !dbg !1588

if.else:                                          ; preds = %if.then22
  %gcov_ctr75 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 8), align 16, !dbg !1583
  %16 = add i64 %gcov_ctr75, 1, !dbg !1583
  store i64 %16, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 8), align 16, !dbg !1583
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 noundef 670, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @__PRETTY_FUNCTION__.lru_crawler_start, i64 0, i64 0)) #16, !dbg !1583
  unreachable, !dbg !1583

if.end25:                                         ; preds = %if.then22
  store %struct.crawler_module_reg_t* %15, %struct.crawler_module_reg_t** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 2), align 8, !dbg !1589, !tbaa !1360
  store i32 %type, i32* @active_crawler_type, align 4, !dbg !1590, !tbaa !943
  %init28 = bitcast %struct.crawler_module_reg_t* %15 to i32 (%struct._crawler_module_t*, i8*)**, !dbg !1591
  %17 = load i32 (%struct._crawler_module_t*, i8*)*, i32 (%struct._crawler_module_t*, i8*)** %init28, align 8, !dbg !1591, !tbaa !1593
  %cmp29.not = icmp eq i32 (%struct._crawler_module_t*, i8*)* %17, null, !dbg !1594
  br i1 %cmp29.not, label %if.end34, label %if.then30, !dbg !1595

if.then30:                                        ; preds = %if.end25
  %gcov_ctr76 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 9), align 8, !dbg !1596
  %18 = add i64 %gcov_ctr76, 1, !dbg !1596
  store i64 %18, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 9), align 8, !dbg !1596
  %19 = load i32 (%struct._crawler_module_t*, i8*)*, i32 (%struct._crawler_module_t*, i8*)** %init28, align 8, !dbg !1598, !tbaa !1593
  %call33 = tail call i32 %19(%struct._crawler_module_t* noundef nonnull @active_crawler_mod, i8* noundef %data) #13, !dbg !1599
  %.pre = load %struct.crawler_module_reg_t*, %struct.crawler_module_reg_t** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 2), align 8, !dbg !1600, !tbaa !1360
  br label %if.end34, !dbg !1602

if.end34:                                         ; preds = %if.then30, %if.end25
  %20 = phi %struct.crawler_module_reg_t* [ %.pre, %if.then30 ], [ %15, %if.end25 ], !dbg !1600
  %needs_client = getelementptr inbounds %struct.crawler_module_reg_t, %struct.crawler_module_reg_t* %20, i64 0, i32 5, !dbg !1603
  %21 = load i8, i8* %needs_client, align 1, !dbg !1603, !tbaa !1362, !range !1052
  %tobool35.not = icmp eq i8 %21, 0, !dbg !1603
  br i1 %tobool35.not, label %if.end48, label %if.then36, !dbg !1604

if.then36:                                        ; preds = %if.end34
  %cmp37 = icmp eq i8* %c, null, !dbg !1605
  br i1 %cmp37, label %if.then39, label %lor.lhs.false, !dbg !1608

lor.lhs.false:                                    ; preds = %if.then36
  %gcov_ctr77 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 10), align 16, !dbg !1609
  %22 = add i64 %gcov_ctr77, 1, !dbg !1609
  store i64 %22, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 10), align 16, !dbg !1609
  %cmp38 = icmp eq i32 %sfd, 0, !dbg !1610
  br i1 %cmp38, label %if.then39, label %if.end41, !dbg !1611

if.then39:                                        ; preds = %lor.lhs.false, %if.then36
  %gcov_ctr78 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 11), align 8, !dbg !1612
  %23 = add i64 %gcov_ctr78, 1, !dbg !1612
  store i64 %23, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 11), align 8, !dbg !1612
  %call40 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1612
  br label %cleanup, !dbg !1614

if.end41:                                         ; preds = %lor.lhs.false
  %call42 = tail call fastcc i32 @lru_crawler_set_client(i8* noundef nonnull %c, i32 noundef %sfd) #15, !dbg !1615
  %cmp43.not = icmp eq i32 %call42, 0, !dbg !1617
  br i1 %cmp43.not, label %if.end46, label %if.then44, !dbg !1618

if.then44:                                        ; preds = %if.end41
  %gcov_ctr79 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 12), align 16, !dbg !1619
  %24 = add i64 %gcov_ctr79, 1, !dbg !1619
  store i64 %24, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 12), align 16, !dbg !1619
  %call45 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1619
  br label %cleanup, !dbg !1621

if.end46:                                         ; preds = %if.end41
  %gcov_ctr80 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 13), align 8, !dbg !1622
  %25 = add i64 %gcov_ctr80, 1, !dbg !1622
  store i64 %25, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 13), align 8, !dbg !1622
  br label %if.end48, !dbg !1622

if.end48:                                         ; preds = %if.end34, %if.end46
  %gcov_ctr81 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 14), align 16, !dbg !1623
  %26 = add i64 %gcov_ctr81, 1, !dbg !1623
  store i64 %26, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 14), align 16, !dbg !1623
  %cmp49 = icmp eq i8* %ids, null, !dbg !1624
  br i1 %cmp49, label %if.end60.thread, label %if.else51, !dbg !1625

if.end60.thread:                                  ; preds = %if.end48
  %gcov_ctr83 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 16), align 16, !dbg !1626
  %27 = add i64 %gcov_ctr83, 1, !dbg !1626
  store i64 %27, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 16), align 16, !dbg !1626
  call void @llvm.dbg.value(metadata i32 1, metadata !716, metadata !DIExpression()), !dbg !1540
  store i32 -1, i32* @crawler_count, align 4, !dbg !1628, !tbaa !841
  call void @llvm.dbg.value(metadata i32 %starts.1, metadata !716, metadata !DIExpression()), !dbg !1540
  br label %if.then62, !dbg !1629

if.else51:                                        ; preds = %if.end20, %if.end48
  %gcov_ctr82 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 15), align 8, !dbg !1630
  %28 = add i64 %gcov_ctr82, 1, !dbg !1630
  store i64 %28, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 15), align 8, !dbg !1630
  call void @llvm.dbg.value(metadata i32 1, metadata !718, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i32 0, metadata !716, metadata !DIExpression()), !dbg !1540
  %gcov_ctr84.pre116 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 17), align 8, !dbg !1632
  br label %for.body, !dbg !1636

for.body:                                         ; preds = %if.else51, %for.inc
  %gcov_ctr84 = phi i64 [ %gcov_ctr84.pre116, %if.else51 ], [ %gcov_ctr84117, %for.inc ], !dbg !1632
  %indvars.iv = phi i64 [ 1, %if.else51 ], [ %indvars.iv.next, %for.inc ]
  %starts.0112 = phi i32 [ 0, %if.else51 ], [ %starts.1, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !718, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i32 %starts.0112, metadata !716, metadata !DIExpression()), !dbg !1540
  %29 = add i64 %gcov_ctr84, 1, !dbg !1632
  store i64 %29, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 17), align 8, !dbg !1632
  %arrayidx54 = getelementptr inbounds i8, i8* %ids, i64 %indvars.iv, !dbg !1632
  %30 = load i8, i8* %arrayidx54, align 1, !dbg !1632, !tbaa !943
  %tobool55.not = icmp eq i8 %30, 0, !dbg !1632
  br i1 %tobool55.not, label %for.inc, label %if.then56, !dbg !1637

if.then56:                                        ; preds = %for.body
  %gcov_ctr85 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 18), align 16, !dbg !1638
  %31 = add i64 %gcov_ctr85, 1, !dbg !1638
  store i64 %31, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 18), align 16, !dbg !1638
  %32 = trunc i64 %indvars.iv to i32, !dbg !1639
  %call57 = tail call fastcc i32 @do_lru_crawler_start(i32 noundef %32, i32 noundef %remaining) #15, !dbg !1639
  %add58 = add nsw i32 %call57, %starts.0112, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %add58, metadata !716, metadata !DIExpression()), !dbg !1540
  %gcov_ctr84.pre = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 17), align 8, !dbg !1632
  br label %for.inc, !dbg !1641

for.inc:                                          ; preds = %for.body, %if.then56
  %gcov_ctr84117 = phi i64 [ %gcov_ctr84.pre, %if.then56 ], [ %29, %for.body ]
  %starts.1 = phi i32 [ %add58, %if.then56 ], [ %starts.0112, %for.body ], !dbg !1540
  call void @llvm.dbg.value(metadata i32 %starts.1, metadata !716, metadata !DIExpression()), !dbg !1540
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1642
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !718, metadata !DIExpression()), !dbg !1631
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256, !dbg !1643
  br i1 %exitcond.not, label %if.end60, label %for.body, !dbg !1636, !llvm.loop !1644

if.end60:                                         ; preds = %for.inc
  call void @llvm.dbg.value(metadata i32 %starts.1, metadata !716, metadata !DIExpression()), !dbg !1540
  %tobool61.not = icmp eq i32 %starts.1, 0, !dbg !1646
  br i1 %tobool61.not, label %if.end65, label %if.then62, !dbg !1629

if.then62:                                        ; preds = %if.end60.thread, %if.end60
  %starts.2110 = phi i32 [ 1, %if.end60.thread ], [ %starts.1, %if.end60 ]
  %gcov_ctr86 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 19), align 8, !dbg !1648
  %33 = add i64 %gcov_ctr86, 1, !dbg !1648
  store i64 %33, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 19), align 8, !dbg !1648
  tail call void @STATS_LOCK() #13, !dbg !1648
  store i8 1, i8* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 11), align 1, !dbg !1650, !tbaa !1521
  %34 = load i64, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 12), align 8, !dbg !1651, !tbaa !1652
  %inc63 = add i64 %34, 1, !dbg !1651
  store i64 %inc63, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 12), align 8, !dbg !1651, !tbaa !1652
  tail call void @STATS_UNLOCK() #13, !dbg !1655
  %call64 = tail call i32 @pthread_cond_signal(%union.pthread_cond_t* noundef nonnull @lru_crawler_cond) #13, !dbg !1656
  br label %if.end65, !dbg !1657

if.end65:                                         ; preds = %if.then62, %if.end60
  %starts.2111 = phi i32 [ %starts.2110, %if.then62 ], [ 0, %if.end60 ]
  %call66 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1658
  br label %cleanup, !dbg !1659

cleanup:                                          ; preds = %if.end65, %if.then44, %if.then39, %if.then18, %if.then12, %if.then6, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ -1, %if.then12 ], [ -2, %if.then18 ], [ %starts.2111, %if.end65 ], [ -2, %if.then39 ], [ -2, %if.then44 ], [ -1, %if.then6 ], !dbg !1540
  ret i32 %retval.0, !dbg !1660
}

declare !dbg !1661 dso_local void @STATS_LOCK() local_unnamed_addr #4

declare !dbg !1664 dso_local void @STATS_UNLOCK() local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @lru_crawler_set_client(i8* noundef %c, i32 noundef %sfd) unnamed_addr #0 !dbg !1665 {
entry:
  call void @llvm.dbg.value(metadata %struct._crawler_module_t* @active_crawler_mod, metadata !1669, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i8* %c, metadata !1670, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i32 %sfd, metadata !1671, metadata !DIExpression()), !dbg !1674
  %0 = load i8*, i8** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1, i32 0), align 8, !dbg !1675, !tbaa !1677
  %cmp.not = icmp eq i8* %0, null, !dbg !1678
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1679

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 0), align 16, !dbg !1680
  %1 = add i64 %gcov_ctr, 1, !dbg !1680
  store i64 %1, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 0), align 16, !dbg !1680
  br label %cleanup, !dbg !1680

if.end:                                           ; preds = %entry
  store i8* %c, i8** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1, i32 0), align 8, !dbg !1682, !tbaa !1677
  store i32 %sfd, i32* getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1, i32 1), align 8, !dbg !1683, !tbaa !1684
  %call = tail call %struct.bipbuf_t* @bipbuf_new(i32 noundef 131072) #13, !dbg !1685
  store %struct.bipbuf_t* %call, %struct.bipbuf_t** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1, i32 2), align 8, !dbg !1686, !tbaa !1687
  %cmp6 = icmp eq %struct.bipbuf_t* %call, null, !dbg !1688
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1690

if.then7:                                         ; preds = %if.end
  %gcov_ctr9 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 1), align 8, !dbg !1691
  %2 = add i64 %gcov_ctr9, 1, !dbg !1691
  store i64 %2, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 1), align 8, !dbg !1691
  br label %cleanup, !dbg !1691

if.end8:                                          ; preds = %if.end
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 2), align 16, !dbg !1693
  %3 = add i64 %gcov_ctr10, 1, !dbg !1693
  store i64 %3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 2), align 16, !dbg !1693
  br label %cleanup, !dbg !1693

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then7 ], [ 0, %if.end8 ], !dbg !1674
  ret i32 %retval.0, !dbg !1694
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_lru_crawler_start(i32 noundef %id, i32 noundef %remaining) unnamed_addr #0 !dbg !1695 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i32 %id, metadata !1699, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i32 %remaining, metadata !1700, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i32 %id, metadata !1701, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i32 0, metadata !1702, metadata !DIExpression()), !dbg !1703
  %idxprom = zext i32 %id to i64, !dbg !1704
  %arrayidx = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom, !dbg !1704
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #13, !dbg !1705
  %arrayidx2 = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %idxprom, !dbg !1706
  %it_flags = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %idxprom, i32 7, !dbg !1708
  %1 = load i16, i16* %it_flags, align 2, !dbg !1708, !tbaa !1342
  %cmp = icmp eq i16 %1, 0, !dbg !1709
  br i1 %cmp, label %if.then, label %if.end44, !dbg !1710

if.then:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1711, !tbaa !934
  %cmp4 = icmp sgt i32 %2, 2, !dbg !1714
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !1715

if.then6:                                         ; preds = %if.then
  %gcov_ctr48 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 1), align 8, !dbg !1716
  %3 = add i64 %gcov_ctr48, 1, !dbg !1716
  store i64 %3, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 1), align 8, !dbg !1716
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1716, !tbaa !912
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i32 noundef %id) #13, !dbg !1717
  br label %if.end, !dbg !1717

if.end:                                           ; preds = %if.then6, %if.then
  %nbytes = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %idxprom, i32 5, !dbg !1718
  store i32 0, i32* %nbytes, align 8, !dbg !1719, !tbaa !1720
  %nkey = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %idxprom, i32 9, !dbg !1721
  store i8 0, i8* %nkey, align 1, !dbg !1722, !tbaa !1723
  store i16 1, i16* %it_flags, align 2, !dbg !1724, !tbaa !1342
  %5 = bitcast %struct.crawler* %arrayidx2 to <2 x %struct._stritem*>*, !dbg !1725
  store <2 x %struct._stritem*> zeroinitializer, <2 x %struct._stritem*>* %5, align 8, !dbg !1725, !tbaa !912
  %time = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %idxprom, i32 3, !dbg !1726
  store i32 0, i32* %time, align 8, !dbg !1727, !tbaa !1728
  %cmp21 = icmp eq i32 %remaining, -1, !dbg !1729
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !1731

if.then23:                                        ; preds = %if.end
  %gcov_ctr49 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 2), align 16, !dbg !1732
  %6 = add i64 %gcov_ctr49, 1, !dbg !1732
  store i64 %6, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 2), align 16, !dbg !1732
  %call24 = tail call i32 @do_get_lru_size(i32 noundef %id) #13, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %call24, metadata !1700, metadata !DIExpression()), !dbg !1703
  br label %if.end25, !dbg !1735

if.end25:                                         ; preds = %if.then23, %if.end
  %remaining.addr.0 = phi i32 [ %call24, %if.then23 ], [ %remaining, %if.end ]
  call void @llvm.dbg.value(metadata i32 %remaining.addr.0, metadata !1700, metadata !DIExpression()), !dbg !1703
  %tobool.not = icmp eq i32 %remaining.addr.0, 0, !dbg !1736
  br i1 %tobool.not, label %if.end27, label %if.then26, !dbg !1738

if.then26:                                        ; preds = %if.end25
  %gcov_ctr50 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 3), align 8, !dbg !1739
  %7 = add i64 %gcov_ctr50, 1, !dbg !1739
  store i64 %7, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 3), align 8, !dbg !1739
  %inc = add i32 %remaining.addr.0, 1, !dbg !1739
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1700, metadata !DIExpression()), !dbg !1703
  br label %if.end27, !dbg !1740

if.end27:                                         ; preds = %if.then26, %if.end25
  %remaining.addr.1 = phi i32 [ %inc, %if.then26 ], [ 0, %if.end25 ], !dbg !1741
  call void @llvm.dbg.value(metadata i32 %remaining.addr.1, metadata !1700, metadata !DIExpression()), !dbg !1703
  %gcov_ctr51 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 4), align 16, !dbg !1742
  %8 = add i64 %gcov_ctr51, 1, !dbg !1742
  store i64 %8, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 4), align 16, !dbg !1742
  %remaining30 = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %idxprom, i32 10, !dbg !1743
  store i32 %remaining.addr.1, i32* %remaining30, align 4, !dbg !1744, !tbaa !1379
  %conv31 = trunc i32 %id to i8, !dbg !1745
  %slabs_clsid = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %idxprom, i32 8, !dbg !1746
  store i8 %conv31, i8* %slabs_clsid, align 8, !dbg !1747, !tbaa !1748
  %reclaimed = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %idxprom, i32 11, !dbg !1749
  %9 = bitcast i64* %reclaimed to <2 x i64>*, !dbg !1750
  store <2 x i64> zeroinitializer, <2 x i64>* %9, align 8, !dbg !1750, !tbaa !1011
  %checked = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %idxprom, i32 13, !dbg !1751
  store i64 0, i64* %checked, align 8, !dbg !1752, !tbaa !1423
  %10 = bitcast %struct.crawler* %arrayidx2 to %struct._stritem*, !dbg !1753
  tail call void @do_item_linktail_q(%struct._stritem* noundef nonnull %10) #13, !dbg !1754
  %11 = load i32, i32* @crawler_count, align 4, !dbg !1755, !tbaa !841
  %inc42 = add nsw i32 %11, 1, !dbg !1755
  store i32 %inc42, i32* @crawler_count, align 4, !dbg !1755, !tbaa !841
  call void @llvm.dbg.value(metadata i32 1, metadata !1702, metadata !DIExpression()), !dbg !1703
  br label %if.end44, !dbg !1756

if.end44:                                         ; preds = %if.end27, %entry
  %starts.0 = phi i32 [ 1, %if.end27 ], [ 0, %entry ], !dbg !1703
  call void @llvm.dbg.value(metadata i32 %starts.0, metadata !1702, metadata !DIExpression()), !dbg !1703
  %call47 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #13, !dbg !1757
  ret i32 %starts.0, !dbg !1758
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lru_crawler_crawl(i8* noundef %slabs, i32 noundef %type, i8* noundef %c, i32 noundef %sfd, i32 noundef %remaining) local_unnamed_addr #0 !dbg !1759 {
entry:
  %b = alloca i8*, align 8
  %sid = alloca i32, align 4
  %tocrawl = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %slabs, metadata !1763, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %type, metadata !1764, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8* %c, metadata !1765, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %sfd, metadata !1766, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %remaining, metadata !1767, metadata !DIExpression()), !dbg !1779
  %0 = bitcast i8** %b to i8*, !dbg !1780
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i8* null, metadata !1768, metadata !DIExpression()), !dbg !1779
  store i8* null, i8** %b, align 8, !dbg !1781, !tbaa !912
  %1 = bitcast i32* %sid to i8*, !dbg !1782
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #14, !dbg !1782
  call void @llvm.dbg.value(metadata i32 0, metadata !1769, metadata !DIExpression()), !dbg !1779
  store i32 0, i32* %sid, align 4, !dbg !1783, !tbaa !841
  call void @llvm.dbg.value(metadata i32 0, metadata !1770, metadata !DIExpression()), !dbg !1779
  %2 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 0, !dbg !1784
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #14, !dbg !1784
  call void @llvm.dbg.declare(metadata [256 x i8]* %tocrawl, metadata !1771, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 0, metadata !1773, metadata !DIExpression()), !dbg !1779
  %call = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 256) #13, !dbg !1786
  %call1 = call i32 @strcmp(i8* noundef %slabs, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #17, !dbg !1787
  %cmp = icmp eq i32 %call1, 0, !dbg !1788
  br i1 %cmp, label %vector.body, label %if.else, !dbg !1789

vector.body:                                      ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1769, metadata !DIExpression()), !dbg !1779
  %.promoted = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 0), align 16
  %3 = bitcast [256 x i8]* %tocrawl to <16 x i8>*, !dbg !1790
  store <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>* %3, align 16, !dbg !1790, !tbaa !943
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 16, !dbg !1790
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !1790
  store <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>* %5, align 16, !dbg !1790, !tbaa !943
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 32, !dbg !1795
  %7 = bitcast i8* %6 to <16 x i8>*, !dbg !1790
  store <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>* %7, align 16, !dbg !1790, !tbaa !943
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 48, !dbg !1790
  %9 = bitcast i8* %8 to <16 x i8>*, !dbg !1790
  store <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>* %9, align 16, !dbg !1790, !tbaa !943
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 64, !dbg !1795
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !1790
  store <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>* %11, align 16, !dbg !1790, !tbaa !943
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 80, !dbg !1790
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !1790
  store <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>* %13, align 16, !dbg !1790, !tbaa !943
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 96, !dbg !1795
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !1790
  store <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>* %15, align 16, !dbg !1790, !tbaa !943
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 112, !dbg !1790
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !1790
  store <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>* %17, align 16, !dbg !1790, !tbaa !943
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 128, !dbg !1795
  %19 = bitcast i8* %18 to <16 x i8>*, !dbg !1790
  store <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>* %19, align 16, !dbg !1790, !tbaa !943
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 144, !dbg !1790
  %21 = bitcast i8* %20 to <16 x i8>*, !dbg !1790
  store <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>* %21, align 16, !dbg !1790, !tbaa !943
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 160, !dbg !1795
  %23 = bitcast i8* %22 to <16 x i8>*, !dbg !1790
  store <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>* %23, align 16, !dbg !1790, !tbaa !943
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 176, !dbg !1790
  %25 = bitcast i8* %24 to <16 x i8>*, !dbg !1790
  store <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>* %25, align 16, !dbg !1790, !tbaa !943
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 192, !dbg !1795
  %27 = bitcast i8* %26 to <16 x i8>*, !dbg !1790
  store <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>* %27, align 16, !dbg !1790, !tbaa !943
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 208, !dbg !1790
  %29 = bitcast i8* %28 to <16 x i8>*, !dbg !1790
  store <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>* %29, align 16, !dbg !1790, !tbaa !943
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 224, !dbg !1795
  %31 = bitcast i8* %30 to <16 x i8>*, !dbg !1790
  store <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>* %31, align 16, !dbg !1790, !tbaa !943
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 240, !dbg !1790
  %33 = bitcast i8* %32 to <16 x i8>*, !dbg !1790
  store <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>* %33, align 16, !dbg !1790, !tbaa !943
  %34 = add i64 %.promoted, 256, !dbg !1796
  store i32 256, i32* %sid, align 4, !dbg !1797, !tbaa !841
  store i64 %34, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 0), align 16, !dbg !1795
  br label %cond.false, !dbg !1798

if.else:                                          ; preds = %entry
  %call3 = call i32 @strcmp(i8* noundef %slabs, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #17, !dbg !1799
  %cmp4 = icmp eq i32 %call3, 0, !dbg !1800
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !1801

if.then5:                                         ; preds = %if.else
  %gcov_ctr48 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 1), align 8, !dbg !1802
  %35 = add i64 %gcov_ctr48, 1, !dbg !1802
  store i64 %35, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 1), align 8, !dbg !1802
  call void @llvm.dbg.value(metadata i8 1, metadata !1773, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 undef, metadata !1773, metadata !DIExpression()), !dbg !1779
  br label %cond.end, !dbg !1804

if.else6:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata i8** %b, metadata !1768, metadata !DIExpression(DW_OP_deref)), !dbg !1779
  %call7 = call i8* @strtok_r(i8* noundef %slabs, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** noundef nonnull %b) #13, !dbg !1805
  call void @llvm.dbg.value(metadata i8* %call7, metadata !1774, metadata !DIExpression()), !dbg !1806
  %cmp9.not69 = icmp eq i8* %call7, null, !dbg !1807
  br i1 %cmp9.not69, label %for.end29, label %for.body10, !dbg !1809

for.body10:                                       ; preds = %if.else6, %if.end
  %p.070 = phi i8* [ %call28, %if.end ], [ %call7, %if.else6 ]
  call void @llvm.dbg.value(metadata i8* %p.070, metadata !1774, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32* %sid, metadata !1769, metadata !DIExpression(DW_OP_deref)), !dbg !1779
  %call11 = call zeroext i1 @safe_strtoul(i8* noundef nonnull %p.070, i32* noundef nonnull %sid) #13, !dbg !1810
  br i1 %call11, label %lor.lhs.false, label %cleanup, !dbg !1813

lor.lhs.false:                                    ; preds = %for.body10
  %gcov_ctr50 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 3), align 8, !dbg !1814
  %36 = add i64 %gcov_ctr50, 1, !dbg !1814
  store i64 %36, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 3), align 8, !dbg !1814
  %37 = load i32, i32* %sid, align 4, !dbg !1814, !tbaa !841
  call void @llvm.dbg.value(metadata i32 %37, metadata !1769, metadata !DIExpression()), !dbg !1779
  %cmp12 = icmp eq i32 %37, 0, !dbg !1815
  br i1 %cmp12, label %cleanup, label %lor.lhs.false13, !dbg !1816

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %gcov_ctr51 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 4), align 16, !dbg !1817
  %38 = add i64 %gcov_ctr51, 1, !dbg !1817
  store i64 %38, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 4), align 16, !dbg !1817
  call void @llvm.dbg.value(metadata i32 %37, metadata !1769, metadata !DIExpression()), !dbg !1779
  %cmp14 = icmp ugt i32 %37, 63, !dbg !1818
  br i1 %cmp14, label %cleanup, label %if.end, !dbg !1819

if.end:                                           ; preds = %lor.lhs.false13
  %or = or i32 %37, 192, !dbg !1820
  %idxprom16 = zext i32 %or to i64, !dbg !1821
  %arrayidx17 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 %idxprom16, !dbg !1821
  store i8 1, i8* %arrayidx17, align 1, !dbg !1822, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %37, metadata !1769, metadata !DIExpression()), !dbg !1779
  %idxprom19 = zext i32 %37 to i64, !dbg !1823
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 %idxprom19, !dbg !1823
  store i8 1, i8* %arrayidx20, align 1, !dbg !1824, !tbaa !943
  %or21 = or i32 %37, 64, !dbg !1825
  %idxprom22 = zext i32 %or21 to i64, !dbg !1826
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 %idxprom22, !dbg !1826
  store i8 1, i8* %arrayidx23, align 1, !dbg !1827, !tbaa !943
  %or24 = or i32 %37, 128, !dbg !1828
  %idxprom25 = zext i32 %or24 to i64, !dbg !1829
  %arrayidx26 = getelementptr inbounds [256 x i8], [256 x i8]* %tocrawl, i64 0, i64 %idxprom25, !dbg !1829
  store i8 1, i8* %arrayidx26, align 1, !dbg !1830, !tbaa !943
  %gcov_ctr53 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 6), align 16, !dbg !1831
  %39 = add i64 %gcov_ctr53, 1, !dbg !1831
  store i64 %39, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 6), align 16, !dbg !1831
  call void @llvm.dbg.value(metadata i8** %b, metadata !1768, metadata !DIExpression(DW_OP_deref)), !dbg !1779
  %call28 = call i8* @strtok_r(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** noundef nonnull %b) #13, !dbg !1831
  call void @llvm.dbg.value(metadata i8* %call28, metadata !1774, metadata !DIExpression()), !dbg !1806
  %cmp9.not = icmp eq i8* %call28, null, !dbg !1807
  br i1 %cmp9.not, label %for.end29, label %for.body10, !dbg !1809, !llvm.loop !1832

cleanup:                                          ; preds = %for.body10, %lor.lhs.false, %lor.lhs.false13
  %gcov_ctr52 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 5), align 8, !dbg !1834
  %40 = add i64 %gcov_ctr52, 1, !dbg !1834
  store i64 %40, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 5), align 8, !dbg !1834
  br label %cleanup43

for.end29:                                        ; preds = %if.end, %if.else6
  %gcov_ctr49 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 2), align 16
  %41 = add i64 %gcov_ctr49, 1
  store i64 %41, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 2), align 16
  %gcov_ctr54 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 7), align 8
  %42 = add i64 %gcov_ctr54, 1
  store i64 %42, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 7), align 8
  call void @llvm.dbg.value(metadata i8 undef, metadata !1773, metadata !DIExpression()), !dbg !1779
  br label %cond.false, !dbg !1804

cond.false:                                       ; preds = %vector.body, %for.end29
  %gcov_ctr55 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 8), align 16, !dbg !1798
  %43 = add i64 %gcov_ctr55, 1, !dbg !1798
  store i64 %43, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 8), align 16, !dbg !1798
  br label %cond.end, !dbg !1804

cond.end:                                         ; preds = %if.then5, %cond.false
  %cond = phi i8* [ %2, %cond.false ], [ null, %if.then5 ], !dbg !1804
  %call33 = call i32 @lru_crawler_start(i8* noundef %cond, i32 noundef %remaining, i32 noundef %type, i8* noundef null, i8* noundef %c, i32 noundef %sfd) #15, !dbg !1836
  call void @llvm.dbg.value(metadata i32 %call33, metadata !1770, metadata !DIExpression()), !dbg !1779
  switch i32 %call33, label %if.then41 [
    i32 -1, label %if.then35
    i32 -2, label %if.then38
    i32 0, label %if.else42
  ], !dbg !1837

if.then35:                                        ; preds = %cond.end
  %gcov_ctr56 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 9), align 8, !dbg !1838
  %44 = add i64 %gcov_ctr56, 1, !dbg !1838
  store i64 %44, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 9), align 8, !dbg !1838
  br label %cleanup43, !dbg !1838

if.then38:                                        ; preds = %cond.end
  %gcov_ctr57 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 10), align 16, !dbg !1841
  %45 = add i64 %gcov_ctr57, 1, !dbg !1841
  store i64 %45, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 10), align 16, !dbg !1841
  br label %cleanup43, !dbg !1841

if.then41:                                        ; preds = %cond.end
  %gcov_ctr59 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 12), align 16, !dbg !1844
  %46 = add i64 %gcov_ctr59, 1, !dbg !1844
  store i64 %46, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 12), align 16, !dbg !1844
  br label %cleanup43, !dbg !1844

if.else42:                                        ; preds = %cond.end
  %gcov_ctr58 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 11), align 8, !dbg !1847
  %47 = add i64 %gcov_ctr58, 1, !dbg !1847
  store i64 %47, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 11), align 8, !dbg !1847
  br label %cleanup43, !dbg !1847

cleanup43:                                        ; preds = %cleanup, %if.else42, %if.then41, %if.then38, %if.then35
  %retval.1 = phi i32 [ 1, %if.then35 ], [ 4, %if.then38 ], [ 0, %if.then41 ], [ 3, %if.else42 ], [ 2, %cleanup ], !dbg !1779
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #14, !dbg !1849
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14, !dbg !1849
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14, !dbg !1849
  ret i32 %retval.1, !dbg !1849
}

; Function Attrs: nounwind
declare !dbg !1850 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !1853 dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !1856 dso_local i8* @strtok_r(i8* noundef, i8* noundef, i8** noundef) local_unnamed_addr #3

declare !dbg !1862 dso_local zeroext i1 @safe_strtoul(i8* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @lru_crawler_pause() local_unnamed_addr #0 !dbg !1867 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 0), align 8, !dbg !1868
  %0 = add i64 %gcov_ctr, 1, !dbg !1868
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 0), align 8, !dbg !1868
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1868
  ret void, !dbg !1869
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @lru_crawler_resume() local_unnamed_addr #0 !dbg !1870 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0), align 8, !dbg !1871
  %0 = add i64 %gcov_ctr, 1, !dbg !1871
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0), align 8, !dbg !1871
  %call = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !1871
  ret void, !dbg !1872
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @init_lru_crawler(i8* noundef %arg) local_unnamed_addr #7 !dbg !1873 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.33, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.33, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %arg, metadata !1877, metadata !DIExpression()), !dbg !1878
  %.b = load i1, i1* @lru_crawler_initialized, align 4, !dbg !1879
  br i1 %.b, label %if.end, label %if.then, !dbg !1881

if.then:                                          ; preds = %entry
  %gcov_ctr1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.33, i64 0, i64 1), align 8, !dbg !1882
  %1 = add i64 %gcov_ctr1, 1, !dbg !1882
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.33, i64 0, i64 1), align 8, !dbg !1882
  store i8* %arg, i8** @storage, align 8, !dbg !1884, !tbaa !912
  store %struct.crawler_module_reg_t* null, %struct.crawler_module_reg_t** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 2), align 8, !dbg !1885, !tbaa !1360
  store <2 x i8*> zeroinitializer, <2 x i8*>* bitcast (%struct._crawler_module_t* @active_crawler_mod to <2 x i8*>*), align 16, !dbg !1886, !tbaa !912
  store i1 true, i1* @lru_crawler_initialized, align 4, !dbg !1887
  br label %if.end, !dbg !1888

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !1889
}

; Function Attrs: nounwind
declare !dbg !1890 dso_local noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1894 dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef, %union.pthread_mutexattr_t* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1905 dso_local void @free(i8* noundef) local_unnamed_addr #3

declare !dbg !1908 dso_local i32 @item_is_flushed(%struct._stritem* noundef) local_unnamed_addr #4

declare !dbg !1912 dso_local zeroext i1 @storage_validate_item(i8* noundef, %struct._stritem* noundef) local_unnamed_addr #4

declare !dbg !1916 dso_local void @storage_delete(i8* noundef, %struct._stritem* noundef) local_unnamed_addr #4

declare !dbg !1919 dso_local void @do_item_unlink_nolock(%struct._stritem* noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !1923 dso_local void @do_item_remove(%struct._stritem* noundef) local_unnamed_addr #4

declare !dbg !1926 dso_local zeroext i1 @uriencode(i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1930 dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

declare !dbg !1933 dso_local i32 @bipbuf_push(%struct.bipbuf_t* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @lru_crawler_client_getbuf(%struct.crawler_client_t* nocapture noundef %c) unnamed_addr #0 !dbg !1936 {
entry:
  call void @llvm.dbg.value(metadata %struct.crawler_client_t* %c, metadata !1940, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* null, metadata !1941, metadata !DIExpression()), !dbg !1944
  %c1 = getelementptr inbounds %struct.crawler_client_t, %struct.crawler_client_t* %c, i64 0, i32 0, !dbg !1945
  %0 = load i8*, i8** %c1, align 8, !dbg !1945, !tbaa !1677
  %cmp = icmp eq i8* %0, null, !dbg !1947
  br i1 %cmp, label %if.then, label %if.end, !dbg !1948

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 0), align 16, !dbg !1949
  %1 = add i64 %gcov_ctr, 1, !dbg !1949
  store i64 %1, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 0), align 16, !dbg !1949
  br label %cleanup8, !dbg !1949

if.end:                                           ; preds = %entry
  %gcov_ctr9 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 1), align 8, !dbg !1950
  %2 = add i64 %gcov_ctr9, 1, !dbg !1950
  store i64 %2, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 1), align 8, !dbg !1950
  %buf2 = getelementptr inbounds %struct.crawler_client_t, %struct.crawler_client_t* %c, i64 0, i32 2
  %3 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf2, align 8, !dbg !1951, !tbaa !1687
  %call21 = tail call i8* @bipbuf_request(%struct.bipbuf_t* noundef %3, i32 noundef 8192) #13, !dbg !1952
  call void @llvm.dbg.value(metadata i8* %call21, metadata !1941, metadata !DIExpression()), !dbg !1944
  %cmp322 = icmp eq i8* %call21, null, !dbg !1953
  br i1 %cmp322, label %while.body, label %while.end, !dbg !1950

while.body:                                       ; preds = %if.end, %cleanup
  %call4 = tail call fastcc i32 @lru_crawler_poll(%struct.crawler_client_t* noundef nonnull %c) #15, !dbg !1954
  call void @llvm.dbg.value(metadata i32 %call4, metadata !1942, metadata !DIExpression()), !dbg !1955
  %cmp5 = icmp slt i32 %call4, 0, !dbg !1956
  br i1 %cmp5, label %cleanup.thread, label %cleanup, !dbg !1958

cleanup.thread:                                   ; preds = %while.body
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 2), align 16, !dbg !1959
  %4 = add i64 %gcov_ctr10, 1, !dbg !1959
  store i64 %4, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 2), align 16, !dbg !1959
  br label %cleanup8

cleanup:                                          ; preds = %while.body
  %gcov_ctr11 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 3), align 8, !dbg !1960
  %5 = add i64 %gcov_ctr11, 1, !dbg !1960
  store i64 %5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 3), align 8, !dbg !1960
  %6 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf2, align 8, !dbg !1951, !tbaa !1687
  %call = tail call i8* @bipbuf_request(%struct.bipbuf_t* noundef %6, i32 noundef 8192) #13, !dbg !1952
  call void @llvm.dbg.value(metadata i8* %call, metadata !1941, metadata !DIExpression()), !dbg !1944
  %cmp3 = icmp eq i8* %call, null, !dbg !1953
  br i1 %cmp3, label %while.body, label %while.end, !dbg !1950

while.end:                                        ; preds = %cleanup, %if.end
  %call.lcssa = phi i8* [ %call21, %if.end ], [ %call, %cleanup ], !dbg !1952
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 4), align 16, !dbg !1961
  %7 = add i64 %gcov_ctr12, 1, !dbg !1961
  store i64 %7, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.34, i64 0, i64 4), align 16, !dbg !1961
  %cbuf = getelementptr inbounds %struct.crawler_client_t, %struct.crawler_client_t* %c, i64 0, i32 3, !dbg !1962
  store i8* %call.lcssa, i8** %cbuf, align 8, !dbg !1963, !tbaa !1964
  br label %cleanup8, !dbg !1965

cleanup8:                                         ; preds = %cleanup.thread, %while.end, %if.then
  %retval.2 = phi i32 [ -1, %if.then ], [ 0, %while.end ], [ %call4, %cleanup.thread ], !dbg !1944
  ret i32 %retval.2, !dbg !1966
}

; Function Attrs: nounwind
declare !dbg !1967 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1971 dso_local i8* @bipbuf_request(%struct.bipbuf_t* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @lru_crawler_poll(%struct.crawler_client_t* nocapture noundef %c) unnamed_addr #0 !dbg !1975 {
entry:
  %data_size = alloca i32, align 4
  %to_poll = alloca [1 x %struct.pollfd], align 4
  %buf = alloca [1 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.crawler_client_t* %c, metadata !1977, metadata !DIExpression()), !dbg !1999
  %0 = bitcast i32* %data_size to i8*, !dbg !2000
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14, !dbg !2000
  call void @llvm.dbg.value(metadata i32 0, metadata !1979, metadata !DIExpression()), !dbg !1999
  store i32 0, i32* %data_size, align 4, !dbg !2001, !tbaa !841
  %1 = bitcast [1 x %struct.pollfd]* %to_poll to i8*, !dbg !2002
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14, !dbg !2002
  call void @llvm.dbg.declare(metadata [1 x %struct.pollfd]* %to_poll, metadata !1980, metadata !DIExpression()), !dbg !2003
  %sfd = getelementptr inbounds %struct.crawler_client_t, %struct.crawler_client_t* %c, i64 0, i32 1, !dbg !2004
  %2 = load i32, i32* %sfd, align 8, !dbg !2004, !tbaa !1684
  %arrayidx = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %to_poll, i64 0, i64 0, !dbg !2005
  %fd = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %to_poll, i64 0, i64 0, i32 0, !dbg !2006
  store i32 %2, i32* %fd, align 4, !dbg !2007, !tbaa !2008
  %events = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %to_poll, i64 0, i64 0, i32 1, !dbg !2010
  store i16 4, i16* %events, align 4, !dbg !2011, !tbaa !2012
  %call = call i32 @poll(%struct.pollfd* noundef nonnull %arrayidx, i64 noundef 1, i32 noundef 1000) #13, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %call, metadata !1988, metadata !DIExpression()), !dbg !1999
  %cmp = icmp slt i32 %call, 0, !dbg !2014
  br i1 %cmp, label %if.then, label %if.end, !dbg !2016

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 0), align 16, !dbg !2017
  %3 = add i64 %gcov_ctr, 1, !dbg !2017
  store i64 %3, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 0), align 16, !dbg !2017
  br label %cleanup76, !dbg !2017

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i32 %call, 0, !dbg !2019
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !2021

if.then3:                                         ; preds = %if.end
  %gcov_ctr80 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 1), align 8, !dbg !2022
  %4 = add i64 %gcov_ctr80, 1, !dbg !2022
  store i64 %4, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 1), align 8, !dbg !2022
  br label %cleanup76, !dbg !2022

if.end4:                                          ; preds = %if.end
  %revents = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %to_poll, i64 0, i64 0, i32 2, !dbg !2023
  %5 = load i16, i16* %revents, align 2, !dbg !2023, !tbaa !2024
  %6 = and i16 %5, 1, !dbg !2025
  %tobool.not = icmp eq i16 %6, 0, !dbg !2025
  br i1 %tobool.not, label %if.end26, label %if.then6, !dbg !2026

if.then6:                                         ; preds = %if.end4
  %7 = getelementptr inbounds [1 x i8], [1 x i8]* %buf, i64 0, i64 0, !dbg !2027
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %7) #14, !dbg !2027
  call void @llvm.dbg.declare(metadata [1 x i8]* %buf, metadata !1989, metadata !DIExpression()), !dbg !2028
  %8 = bitcast %struct.crawler_client_t* %c to %struct.conn**, !dbg !2029
  %9 = load %struct.conn*, %struct.conn** %8, align 8, !dbg !2029, !tbaa !1677
  %read = getelementptr inbounds %struct.conn, %struct.conn* %9, i64 0, i32 45, !dbg !2030
  %10 = load i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, i8*, i64)** %read, align 8, !dbg !2030, !tbaa !2031
  %call10 = call i64 %10(%struct.conn* noundef %9, i8* noundef nonnull %7, i64 noundef 1) #13, !dbg !2039
  %conv11 = trunc i64 %call10 to i32, !dbg !2039
  call void @llvm.dbg.value(metadata i32 %conv11, metadata !1992, metadata !DIExpression()), !dbg !2040
  %cmp12 = icmp eq i32 %conv11, 0, !dbg !2041
  br i1 %cmp12, label %if.then23, label %lor.lhs.false, !dbg !2043

lor.lhs.false:                                    ; preds = %if.then6
  %gcov_ctr81 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 2), align 16, !dbg !2044
  %11 = add i64 %gcov_ctr81, 1, !dbg !2044
  store i64 %11, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 2), align 16, !dbg !2044
  %cmp14 = icmp eq i32 %conv11, -1, !dbg !2045
  br i1 %cmp14, label %land.lhs.true, label %if.end24, !dbg !2046

land.lhs.true:                                    ; preds = %lor.lhs.false
  %gcov_ctr82 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 3), align 8, !dbg !2047
  %12 = add i64 %gcov_ctr82, 1, !dbg !2047
  store i64 %12, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 3), align 8, !dbg !2047
  %call16 = tail call i32* @__errno_location() #18, !dbg !2047
  %13 = load i32, i32* %call16, align 4, !dbg !2047, !tbaa !841
  %cmp17.not = icmp eq i32 %13, 11, !dbg !2048
  br i1 %cmp17.not, label %if.end24, label %land.lhs.true19, !dbg !2049

land.lhs.true19:                                  ; preds = %land.lhs.true
  %gcov_ctr83 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 4), align 16, !dbg !2050
  %14 = add i64 %gcov_ctr83, 1, !dbg !2050
  store i64 %14, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 4), align 16, !dbg !2050
  %15 = load i32, i32* %call16, align 4, !dbg !2050, !tbaa !841
  %cmp21.not = icmp eq i32 %15, 11, !dbg !2051
  br i1 %cmp21.not, label %if.end24, label %if.then23, !dbg !2052

if.then23:                                        ; preds = %land.lhs.true19, %if.then6
  %gcov_ctr84 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 5), align 8, !dbg !2053
  %16 = add i64 %gcov_ctr84, 1, !dbg !2053
  store i64 %16, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 5), align 8, !dbg !2053
  call fastcc void @lru_crawler_close_client(%struct.crawler_client_t* noundef nonnull %c) #15, !dbg !2055
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %7) #14, !dbg !2056
  br label %cleanup76

if.end24:                                         ; preds = %land.lhs.true19, %land.lhs.true, %lor.lhs.false
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %7) #14, !dbg !2056
  %17 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 6) to <2 x i64>*), align 16, !dbg !2056
  %18 = add <2 x i64> %17, <i64 1, i64 1>, !dbg !2056
  store <2 x i64> %18, <2 x i64>* bitcast (i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 6) to <2 x i64>*), align 16, !dbg !2056
  br label %if.end26, !dbg !2057

if.end26:                                         ; preds = %if.end24, %if.end4
  %buf27 = getelementptr inbounds %struct.crawler_client_t, %struct.crawler_client_t* %c, i64 0, i32 2, !dbg !2058
  %19 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf27, align 8, !dbg !2058, !tbaa !1687
  call void @llvm.dbg.value(metadata i32* %data_size, metadata !1979, metadata !DIExpression(DW_OP_deref)), !dbg !1999
  %call28 = call i8* @bipbuf_peek_all(%struct.bipbuf_t* noundef %19, i32* noundef nonnull %data_size) #13, !dbg !2059
  call void @llvm.dbg.value(metadata i8* %call28, metadata !1978, metadata !DIExpression()), !dbg !1999
  %cmp29.not = icmp eq i8* %call28, null, !dbg !2060
  br i1 %cmp29.not, label %if.end75, label %if.then31, !dbg !2061

if.then31:                                        ; preds = %if.end26
  %20 = load i16, i16* %revents, align 2, !dbg !2062, !tbaa !2024
  %conv34118 = zext i16 %20 to i32, !dbg !2063
  %and35 = and i32 %conv34118, 24, !dbg !2064
  %tobool36.not = icmp eq i32 %and35, 0, !dbg !2064
  br i1 %tobool36.not, label %if.else, label %if.then37, !dbg !2065

if.then37:                                        ; preds = %if.then31
  %gcov_ctr87 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 8), align 16, !dbg !2066
  %21 = add i64 %gcov_ctr87, 1, !dbg !2066
  store i64 %21, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 8), align 16, !dbg !2066
  call fastcc void @lru_crawler_close_client(%struct.crawler_client_t* noundef nonnull %c) #15, !dbg !2068
  br label %cleanup76, !dbg !2069

if.else:                                          ; preds = %if.then31
  %and41 = and i32 %conv34118, 4, !dbg !2070
  %tobool42.not = icmp eq i32 %and41, 0, !dbg !2070
  br i1 %tobool42.not, label %if.end74, label %if.then43, !dbg !2071

if.then43:                                        ; preds = %if.else
  %22 = bitcast %struct.crawler_client_t* %c to %struct.conn**, !dbg !2072
  %23 = load %struct.conn*, %struct.conn** %22, align 8, !dbg !2072, !tbaa !1677
  %write = getelementptr inbounds %struct.conn, %struct.conn* %23, i64 0, i32 47, !dbg !2073
  %24 = load i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, i8*, i64)** %write, align 8, !dbg !2073, !tbaa !2074
  %25 = load i32, i32* %data_size, align 4, !dbg !2075, !tbaa !841
  call void @llvm.dbg.value(metadata i32 %25, metadata !1979, metadata !DIExpression()), !dbg !1999
  %conv46 = zext i32 %25 to i64, !dbg !2075
  %call47 = call i64 %24(%struct.conn* noundef %23, i8* noundef nonnull %call28, i64 noundef %conv46) #13, !dbg !2076
  %conv48 = trunc i64 %call47 to i32, !dbg !2076
  call void @llvm.dbg.value(metadata i32 %conv48, metadata !1993, metadata !DIExpression()), !dbg !2077
  switch i32 %conv48, label %if.else65 [
    i32 -1, label %if.then51
    i32 0, label %if.then64
  ], !dbg !2078

if.then51:                                        ; preds = %if.then43
  %call52 = tail call i32* @__errno_location() #18, !dbg !2079
  %26 = load i32, i32* %call52, align 4, !dbg !2079, !tbaa !841
  %cmp53.not = icmp eq i32 %26, 11, !dbg !2083
  br i1 %cmp53.not, label %cleanup.cont72, label %land.lhs.true55, !dbg !2084

land.lhs.true55:                                  ; preds = %if.then51
  %gcov_ctr88 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 9), align 8, !dbg !2085
  %27 = add i64 %gcov_ctr88, 1, !dbg !2085
  store i64 %27, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 9), align 8, !dbg !2085
  %28 = load i32, i32* %call52, align 4, !dbg !2085, !tbaa !841
  %cmp57.not = icmp eq i32 %28, 11, !dbg !2086
  br i1 %cmp57.not, label %cleanup.cont72, label %if.then59, !dbg !2087

if.then59:                                        ; preds = %land.lhs.true55
  %gcov_ctr89 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 10), align 16, !dbg !2088
  %29 = add i64 %gcov_ctr89, 1, !dbg !2088
  store i64 %29, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 10), align 16, !dbg !2088
  call fastcc void @lru_crawler_close_client(%struct.crawler_client_t* noundef nonnull %c) #15, !dbg !2090
  br label %cleanup76

if.then64:                                        ; preds = %if.then43
  %gcov_ctr91 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 12), align 16, !dbg !2091
  %30 = add i64 %gcov_ctr91, 1, !dbg !2091
  store i64 %30, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 12), align 16, !dbg !2091
  call fastcc void @lru_crawler_close_client(%struct.crawler_client_t* noundef nonnull %c) #15, !dbg !2094
  br label %cleanup76

if.else65:                                        ; preds = %if.then43
  %31 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf27, align 8, !dbg !2095, !tbaa !1687
  %call67 = call i8* @bipbuf_poll(%struct.bipbuf_t* noundef %31, i32 noundef %conv48) #13, !dbg !2097
  br label %cleanup.cont72

cleanup.cont72:                                   ; preds = %if.then51, %land.lhs.true55, %if.else65
  %.sink = phi i64* [ getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 13), %if.else65 ], [ getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 11), %land.lhs.true55 ], [ getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 11), %if.then51 ]
  %gcov_ctr92 = load i64, i64* %.sink, align 8
  %32 = add i64 %gcov_ctr92, 1
  store i64 %32, i64* %.sink, align 8
  %gcov_ctr93 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 14), align 16, !dbg !2098
  %33 = add i64 %gcov_ctr93, 1, !dbg !2098
  store i64 %33, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 14), align 16, !dbg !2098
  br label %if.end74, !dbg !2098

if.end74:                                         ; preds = %if.else, %cleanup.cont72
  %gcov_ctr94 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 15), align 8, !dbg !2099
  %34 = add i64 %gcov_ctr94, 1, !dbg !2099
  store i64 %34, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 15), align 8, !dbg !2099
  br label %if.end75, !dbg !2099

if.end75:                                         ; preds = %if.end74, %if.end26
  %gcov_ctr95 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 16), align 16, !dbg !2100
  %35 = add i64 %gcov_ctr95, 1, !dbg !2100
  store i64 %35, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.35, i64 0, i64 16), align 16, !dbg !2100
  br label %cleanup76, !dbg !2100

cleanup76:                                        ; preds = %if.then59, %if.then64, %if.then23, %if.end75, %if.then37, %if.then3, %if.then
  %retval.3 = phi i32 [ -1, %if.then ], [ 0, %if.then3 ], [ -1, %if.then37 ], [ 0, %if.end75 ], [ -1, %if.then23 ], [ -1, %if.then64 ], [ -1, %if.then59 ], !dbg !1999
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14, !dbg !2101
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14, !dbg !2101
  ret i32 %retval.3, !dbg !2101
}

declare !dbg !2102 dso_local i32 @poll(%struct.pollfd* noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lru_crawler_close_client(%struct.crawler_client_t* nocapture noundef %c) unnamed_addr #0 !dbg !2107 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.crawler_client_t* %c, metadata !2111, metadata !DIExpression()), !dbg !2112
  %c1 = getelementptr inbounds %struct.crawler_client_t, %struct.crawler_client_t* %c, i64 0, i32 0, !dbg !2113
  %1 = bitcast %struct.crawler_client_t* %c to %struct.conn**, !dbg !2113
  %2 = load %struct.conn*, %struct.conn** %1, align 8, !dbg !2113, !tbaa !1677
  tail call void @sidethread_conn_close(%struct.conn* noundef %2) #13, !dbg !2114
  store i8* null, i8** %c1, align 8, !dbg !2115, !tbaa !1677
  %cbuf = getelementptr inbounds %struct.crawler_client_t, %struct.crawler_client_t* %c, i64 0, i32 3, !dbg !2116
  store i8* null, i8** %cbuf, align 8, !dbg !2117, !tbaa !1964
  %buf = getelementptr inbounds %struct.crawler_client_t, %struct.crawler_client_t* %c, i64 0, i32 2, !dbg !2118
  %3 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf, align 8, !dbg !2118, !tbaa !1687
  tail call void @bipbuf_free(%struct.bipbuf_t* noundef %3) #13, !dbg !2119
  store %struct.bipbuf_t* null, %struct.bipbuf_t** %buf, align 8, !dbg !2120, !tbaa !1687
  ret void, !dbg !2121
}

declare !dbg !2122 dso_local i8* @bipbuf_peek_all(%struct.bipbuf_t* noundef, i32* noundef) local_unnamed_addr #4

declare !dbg !2128 dso_local i8* @bipbuf_poll(%struct.bipbuf_t* noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2132 dso_local void @sidethread_conn_close(%struct.conn* noundef) local_unnamed_addr #4

declare !dbg !2135 dso_local void @bipbuf_free(%struct.bipbuf_t* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @item_crawl_hash() unnamed_addr #0 !dbg !2138 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 0), align 16
  %it = alloca %struct._stritem*, align 8
  %call = tail call i8* @assoc_get_iterator() #13, !dbg !2147
  call void @llvm.dbg.value(metadata i8* %call, metadata !2140, metadata !DIExpression()), !dbg !2148
  %1 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 47), align 8, !dbg !2149, !tbaa !1320
  call void @llvm.dbg.value(metadata i32 %1, metadata !2141, metadata !DIExpression()), !dbg !2148
  %2 = bitcast %struct._stritem** %it to i8*, !dbg !2150
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14, !dbg !2150
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !2142, metadata !DIExpression()), !dbg !2148
  store %struct._stritem* null, %struct._stritem** %it, align 8, !dbg !2151, !tbaa !912
  call void @llvm.dbg.value(metadata i32 %1, metadata !2141, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata %struct._stritem** %it, metadata !2142, metadata !DIExpression(DW_OP_deref)), !dbg !2148
  %call15152 = call zeroext i1 @assoc_iterate(i8* noundef %call, %struct._stritem** noundef nonnull %it) #13, !dbg !2152
  br i1 %call15152, label %while.body.lr.ph, label %while.end, !dbg !2153

while.body.lr.ph:                                 ; preds = %entry, %if.end11
  %crawls_persleep.0.ph53 = phi i32 [ %crawls_persleep.1, %if.end11 ], [ %1, %entry ]
  call void @llvm.dbg.value(metadata i32 %crawls_persleep.0.ph53, metadata !2141, metadata !DIExpression()), !dbg !2148
  br label %while.body, !dbg !2153

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %3 = load %struct._stritem*, %struct._stritem** %it, align 8, !dbg !2154, !tbaa !912
  call void @llvm.dbg.value(metadata %struct._stritem* %3, metadata !2142, metadata !DIExpression()), !dbg !2148
  %cmp = icmp eq %struct._stritem* %3, null, !dbg !2156
  br i1 %cmp, label %if.then, label %if.end12, !dbg !2157

if.then:                                          ; preds = %while.body
  %dec = add nsw i32 %crawls_persleep.0.ph53, -1, !dbg !2158
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2141, metadata !DIExpression()), !dbg !2148
  %cmp2 = icmp slt i32 %crawls_persleep.0.ph53, 1, !dbg !2161
  br i1 %cmp2, label %land.lhs.true, label %if.else, !dbg !2162

land.lhs.true:                                    ; preds = %if.then
  %gcov_ctr33 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 1), align 8, !dbg !2163
  %4 = add i64 %gcov_ctr33, 1, !dbg !2163
  store i64 %4, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 1), align 8, !dbg !2163
  %5 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 41), align 8, !dbg !2163, !tbaa !1453
  %tobool.not = icmp eq i32 %5, 0, !dbg !2164
  br i1 %tobool.not, label %if.then8, label %if.then3, !dbg !2165

if.then3:                                         ; preds = %land.lhs.true
  %gcov_ctr34 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 2), align 16, !dbg !2166
  %6 = add i64 %gcov_ctr34, 1, !dbg !2166
  store i64 %6, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 2), align 16, !dbg !2166
  %call4 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !2166
  %7 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 41), align 8, !dbg !2168, !tbaa !1453
  %call5 = call i32 @usleep(i32 noundef %7) #13, !dbg !2169
  %call6 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !2170
  %8 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 47), align 8, !dbg !2171, !tbaa !1320
  call void @llvm.dbg.value(metadata i32 %8, metadata !2141, metadata !DIExpression()), !dbg !2148
  br label %if.end11, !dbg !2172

if.else:                                          ; preds = %if.then
  %.pr = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 41), align 8, !dbg !2173, !tbaa !1453
  %tobool7.not = icmp eq i32 %.pr, 0, !dbg !2175
  br i1 %tobool7.not, label %if.then8, label %if.end, !dbg !2176

if.then8:                                         ; preds = %land.lhs.true, %if.else
  %gcov_ctr35 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 3), align 8, !dbg !2177
  %9 = add i64 %gcov_ctr35, 1, !dbg !2177
  store i64 %9, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 3), align 8, !dbg !2177
  %call9 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !2177
  %call10 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @lru_crawler_lock) #13, !dbg !2179
  br label %if.end, !dbg !2180

if.end:                                           ; preds = %if.then8, %if.else
  %gcov_ctr36 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 4), align 16
  %10 = add i64 %gcov_ctr36, 1
  store i64 %10, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 4), align 16
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then3
  %crawls_persleep.1 = phi i32 [ %8, %if.then3 ], [ %dec, %if.end ], !dbg !2181
  call void @llvm.dbg.value(metadata i32 %crawls_persleep.1, metadata !2141, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata %struct._stritem** %it, metadata !2142, metadata !DIExpression(DW_OP_deref)), !dbg !2148
  %call151 = call zeroext i1 @assoc_iterate(i8* noundef %call, %struct._stritem** noundef nonnull %it) #13, !dbg !2152
  br i1 %call151, label %while.body.lr.ph, label %while.end, !dbg !2153, !llvm.loop !2182

if.end12:                                         ; preds = %while.body
  %11 = load i8*, i8** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1, i32 0), align 8, !dbg !2184, !tbaa !1131
  %cmp13.not = icmp eq i8* %11, null, !dbg !2185
  br i1 %cmp13.not, label %if.else19, label %if.then14, !dbg !2186

if.then14:                                        ; preds = %if.end12
  %call15 = call fastcc i32 @lru_crawler_client_getbuf(%struct.crawler_client_t* noundef getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1)) #15, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %call15, metadata !2143, metadata !DIExpression()), !dbg !2188
  %cmp16.not = icmp eq i32 %call15, 0, !dbg !2189
  br i1 %cmp16.not, label %cleanup.thread, label %cleanup, !dbg !2191

cleanup.thread:                                   ; preds = %if.then14
  %gcov_ctr38 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 6), align 16, !dbg !2192
  %12 = add i64 %gcov_ctr38, 1, !dbg !2192
  store i64 %12, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 6), align 16, !dbg !2192
  %.pre = load %struct._stritem*, %struct._stritem** %it, align 8, !dbg !2193, !tbaa !912
  br label %if.end23

cleanup:                                          ; preds = %if.then14
  %gcov_ctr37 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 5), align 8
  %13 = add i64 %gcov_ctr37, 1
  store i64 %13, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 5), align 8
  br label %while.end

if.else19:                                        ; preds = %if.end12
  %14 = load %struct.crawler_module_reg_t*, %struct.crawler_module_reg_t** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 2), align 8, !dbg !2195, !tbaa !1360
  %needs_client = getelementptr inbounds %struct.crawler_module_reg_t, %struct.crawler_module_reg_t* %14, i64 0, i32 5, !dbg !2197
  %15 = load i8, i8* %needs_client, align 1, !dbg !2197, !tbaa !1362, !range !1052
  %tobool20.not = icmp eq i8 %15, 0, !dbg !2197
  br i1 %tobool20.not, label %if.end22, label %if.then21, !dbg !2198

if.then21:                                        ; preds = %if.else19
  %gcov_ctr40 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 8), align 16, !dbg !2199
  %16 = add i64 %gcov_ctr40, 1, !dbg !2199
  store i64 %16, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 8), align 16, !dbg !2199
  br label %while.end, !dbg !2199

if.end22:                                         ; preds = %if.else19
  %gcov_ctr41 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 9), align 8
  %17 = add i64 %gcov_ctr41, 1
  store i64 %17, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 9), align 8
  br label %if.end23

if.end23:                                         ; preds = %cleanup.thread, %if.end22
  %18 = phi %struct._stritem* [ %.pre, %cleanup.thread ], [ %3, %if.end22 ], !dbg !2193
  call void @llvm.dbg.value(metadata %struct._stritem* %18, metadata !2142, metadata !DIExpression()), !dbg !2148
  %refcount = getelementptr inbounds %struct._stritem, %struct._stritem* %18, i64 0, i32 6, !dbg !2193
  %19 = load i16, i16* %refcount, align 4, !dbg !2193, !tbaa !906
  %inc = add i16 %19, 1, !dbg !2193
  store i16 %inc, i16* %refcount, align 4, !dbg !2193, !tbaa !906
  %cmp24 = icmp ult i16 %inc, 2, !dbg !2201
  br i1 %cmp24, label %if.then26, label %if.end29, !dbg !2202

if.then26:                                        ; preds = %if.end23
  %gcov_ctr42 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 10), align 16, !dbg !2203
  %20 = add i64 %gcov_ctr42, 1, !dbg !2203
  store i64 %20, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 10), align 16, !dbg !2203
  call void @llvm.dbg.value(metadata %struct._stritem* %18, metadata !2142, metadata !DIExpression()), !dbg !2148
  %21 = load i16, i16* %refcount, align 4, !dbg !2203, !tbaa !906
  %dec28 = add i16 %21, -1, !dbg !2203
  store i16 %dec28, i16* %refcount, align 4, !dbg !2203, !tbaa !906
  br label %while.cond.backedge, !dbg !2205

while.cond.backedge:                              ; preds = %if.then26, %if.end29
  call void @llvm.dbg.value(metadata i32 %crawls_persleep.0.ph53, metadata !2141, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata %struct._stritem** %it, metadata !2142, metadata !DIExpression(DW_OP_deref)), !dbg !2148
  %call1 = call zeroext i1 @assoc_iterate(i8* noundef %call, %struct._stritem** noundef nonnull %it) #13, !dbg !2152
  br i1 %call1, label %while.body, label %while.end, !dbg !2153, !llvm.loop !2182

if.end29:                                         ; preds = %if.end23
  %gcov_ctr43 = load i64, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 11), align 8, !dbg !2206
  %22 = add i64 %gcov_ctr43, 1, !dbg !2206
  store i64 %22, i64* getelementptr inbounds ([12 x i64], [12 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 11), align 8, !dbg !2206
  %23 = load %struct.crawler_module_reg_t*, %struct.crawler_module_reg_t** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 2), align 8, !dbg !2206, !tbaa !1360
  %eval = getelementptr inbounds %struct.crawler_module_reg_t, %struct.crawler_module_reg_t* %23, i64 0, i32 1, !dbg !2207
  %24 = load void (%struct._crawler_module_t*, %struct._stritem*, i32, i32)*, void (%struct._crawler_module_t*, %struct._stritem*, i32, i32)** %eval, align 8, !dbg !2207, !tbaa !1435
  call void @llvm.dbg.value(metadata %struct._stritem* %18, metadata !2142, metadata !DIExpression()), !dbg !2148
  call void %24(%struct._crawler_module_t* noundef nonnull @active_crawler_mod, %struct._stritem* noundef nonnull %18, i32 noundef 0, i32 noundef 0) #13, !dbg !2208
  br label %while.cond.backedge, !dbg !2153

while.end:                                        ; preds = %if.end11, %while.cond.backedge, %entry, %cleanup, %if.then21
  call void @assoc_iterate_final(i8* noundef %call) #13, !dbg !2209
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14, !dbg !2210
  ret void, !dbg !2210
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lru_crawler_class_done(i32 noundef %i) unnamed_addr #0 !dbg !2211 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 %i, metadata !2215, metadata !DIExpression()), !dbg !2216
  %idxprom = sext i32 %i to i64, !dbg !2217
  %arrayidx = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %idxprom, !dbg !2217
  %it_flags = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %idxprom, i32 7, !dbg !2218
  store i16 0, i16* %it_flags, align 2, !dbg !2219, !tbaa !1342
  %1 = load i32, i32* @crawler_count, align 4, !dbg !2220, !tbaa !841
  %dec = add nsw i32 %1, -1, !dbg !2220
  store i32 %dec, i32* @crawler_count, align 4, !dbg !2220, !tbaa !841
  %2 = bitcast %struct.crawler* %arrayidx to %struct._stritem*, !dbg !2221
  tail call void @do_item_unlinktail_q(%struct._stritem* noundef nonnull %2) #13, !dbg !2222
  %reclaimed = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %idxprom, i32 11, !dbg !2223
  %3 = load i64, i64* %reclaimed, align 8, !dbg !2223, !tbaa !928
  %unfetched = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %idxprom, i32 12, !dbg !2224
  %4 = load i64, i64* %unfetched, align 8, !dbg !2224, !tbaa !972
  %checked = getelementptr inbounds [256 x %struct.crawler], [256 x %struct.crawler]* @crawlers, i64 0, i64 %idxprom, i32 13, !dbg !2225
  %5 = load i64, i64* %checked, align 8, !dbg !2225, !tbaa !1423
  tail call void @do_item_stats_add_crawl(i32 noundef %i, i64 noundef %3, i64 noundef %4, i64 noundef %5) #13, !dbg !2226
  %arrayidx10 = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom, !dbg !2227
  %call = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx10) #13, !dbg !2228
  %6 = load %struct.crawler_module_reg_t*, %struct.crawler_module_reg_t** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 2), align 8, !dbg !2229, !tbaa !1360
  %doneclass = getelementptr inbounds %struct.crawler_module_reg_t, %struct.crawler_module_reg_t* %6, i64 0, i32 2, !dbg !2231
  %7 = load void (%struct._crawler_module_t*, i32)*, void (%struct._crawler_module_t*, i32)** %doneclass, align 8, !dbg !2231, !tbaa !2232
  %cmp.not = icmp eq void (%struct._crawler_module_t*, i32)* %7, null, !dbg !2233
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2234

if.then:                                          ; preds = %entry
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 1), align 8, !dbg !2235
  %8 = add i64 %gcov_ctr12, 1, !dbg !2235
  store i64 %8, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 1), align 8, !dbg !2235
  tail call void %7(%struct._crawler_module_t* noundef nonnull @active_crawler_mod, i32 noundef %i) #13, !dbg !2236
  br label %if.end, !dbg !2236

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2237
}

declare !dbg !2238 dso_local %struct._stritem* @do_item_crawl_q(%struct._stritem* noundef) local_unnamed_addr #4

declare !dbg !2241 dso_local i8* @item_trylock(i32 noundef) local_unnamed_addr #4

declare !dbg !2244 dso_local void @item_trylock_unlock(i8* noundef) local_unnamed_addr #4

declare !dbg !2245 dso_local i32 @usleep(i32 noundef) local_unnamed_addr #4

declare !dbg !2250 dso_local i32 @bipbuf_used(%struct.bipbuf_t* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lru_crawler_release_client() unnamed_addr #0 !dbg !2253 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.39, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.39, i64 0, i64 0), align 8
  %1 = load %struct.conn*, %struct.conn** bitcast (i8** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1, i32 0) to %struct.conn**), align 8, !dbg !2256, !tbaa !1677
  tail call void @redispatch_conn(%struct.conn* noundef %1) #13, !dbg !2257
  store i8* null, i8** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1, i32 0), align 8, !dbg !2258, !tbaa !1677
  store i8* null, i8** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1, i32 3), align 16, !dbg !2259, !tbaa !1964
  %2 = load %struct.bipbuf_t*, %struct.bipbuf_t** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1, i32 2), align 8, !dbg !2260, !tbaa !1687
  tail call void @bipbuf_free(%struct.bipbuf_t* noundef %2) #13, !dbg !2261
  store %struct.bipbuf_t* null, %struct.bipbuf_t** getelementptr inbounds (%struct._crawler_module_t, %struct._crawler_module_t* @active_crawler_mod, i64 0, i32 1, i32 2), align 8, !dbg !2262, !tbaa !1687
  ret void, !dbg !2263
}

declare !dbg !2264 dso_local i8* @assoc_get_iterator() local_unnamed_addr #4

declare !dbg !2268 dso_local zeroext i1 @assoc_iterate(i8* noundef, %struct._stritem** noundef) local_unnamed_addr #4

declare !dbg !2272 dso_local void @assoc_iterate_final(i8* noundef) local_unnamed_addr #4

declare !dbg !2273 dso_local void @do_item_unlinktail_q(%struct._stritem* noundef) local_unnamed_addr #4

declare !dbg !2274 dso_local void @do_item_stats_add_crawl(i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2278 dso_local void @redispatch_conn(%struct.conn* noundef) local_unnamed_addr #4

declare !dbg !2279 dso_local %struct.bipbuf_t* @bipbuf_new(i32 noundef) local_unnamed_addr #4

declare !dbg !2282 dso_local i32 @do_get_lru_size(i32 noundef) local_unnamed_addr #4

declare !dbg !2285 dso_local void @do_item_linktail_q(%struct._stritem* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #9 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @0, i64 0, i64 0), i32 875575338, i32 -2049694385) #14
  br label %counter.loop.header

counter.loop.header:                              ; preds = %entry, %counter.loop.header
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %counter.loop.header ]
  %0 = getelementptr inbounds [22 x %emit_function_args_ty], [22 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 0
  %ident = load i32, i32* %0, align 4
  %1 = getelementptr inbounds [22 x %emit_function_args_ty], [22 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 1
  %func_checkssum = load i32, i32* %1, align 4
  %2 = getelementptr inbounds [22 x %emit_function_args_ty], [22 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 2
  %cfg_checksum = load i32, i32* %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #14
  %3 = getelementptr inbounds [22 x %emit_arcs_args_ty], [22 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 0
  %num_counters = load i32, i32* %3, align 16
  %4 = getelementptr inbounds [22 x %emit_arcs_args_ty], [22 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 1
  %counters = load i64*, i64** %4, align 8
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, i64* %counters) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 22
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  tail call void @llvm_gcda_summary_info() #14
  tail call void @llvm_gcda_end_file() #14
  ret void
}

declare void @llvm_gcda_start_file(i8*, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, i64*) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define internal void @__llvm_gcov_reset() unnamed_addr #10 {
entry:
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(96) bitcast ([12 x i64]* @__llvm_gcov_ctr.19 to i8*), i8 0, i64 96, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.21 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) bitcast ([8 x i64]* @__llvm_gcov_ctr.22 to i8*), i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.23 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.24 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.25 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) bitcast ([32 x i64]* @__llvm_gcov_ctr.26 to i8*), i8 0, i64 256, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(160) bitcast ([20 x i64]* @__llvm_gcov_ctr.27 to i8*), i8 0, i64 160, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.28 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.29 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(104) bitcast ([13 x i64]* @__llvm_gcov_ctr.30 to i8*), i8 0, i64 104, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.33 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.34 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(136) bitcast ([17 x i64]* @__llvm_gcov_ctr.35 to i8*), i8 0, i64 136, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.36, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(96) bitcast ([12 x i64]* @__llvm_gcov_ctr.37 to i8*), i8 0, i64 96, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.38 to i8*), i8 0, i64 16, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.39, i64 0, i64 0), align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #9 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #14
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #12

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline nounwind uwtable }
attributes #10 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #17 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #18 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!800, !801, !802, !803}
!llvm.gcov = !{!804}
!llvm.ident = !{!805}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "crawler_expired_mod", scope: !2, file: !3, line: 62, type: !658, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !84, globals: !655, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crawler.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "5d15a6d05c3cfbf69cc48b589f88f163")
!4 = !{!5, !12, !20, !36, !50, !68, !73, !78}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "crawler_run_type", file: !6, line: 601, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./memcached.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "9260b30e1b6ff2e5471cc4f8f6971051")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "CRAWLER_AUTOEXPIRE", value: 0)
!10 = !DIEnumerator(name: "CRAWLER_EXPIRED", value: 1)
!11 = !DIEnumerator(name: "CRAWLER_METADUMP", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "crawler_result_type", file: !13, line: 27, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./crawler.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "4dc9e6e54966538ea20b64490631aef9")
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "CRAWLER_OK", value: 0)
!16 = !DIEnumerator(name: "CRAWLER_RUNNING", value: 1)
!17 = !DIEnumerator(name: "CRAWLER_BADCLASS", value: 2)
!18 = !DIEnumerator(name: "CRAWLER_NOTSTARTED", value: 3)
!19 = !DIEnumerator(name: "CRAWLER_ERROR", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "conn_states", file: !6, line: 199, baseType: !7, size: 32, elements: !21)
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!22 = !DIEnumerator(name: "conn_listening", value: 0)
!23 = !DIEnumerator(name: "conn_new_cmd", value: 1)
!24 = !DIEnumerator(name: "conn_waiting", value: 2)
!25 = !DIEnumerator(name: "conn_read", value: 3)
!26 = !DIEnumerator(name: "conn_parse_cmd", value: 4)
!27 = !DIEnumerator(name: "conn_write", value: 5)
!28 = !DIEnumerator(name: "conn_nread", value: 6)
!29 = !DIEnumerator(name: "conn_swallow", value: 7)
!30 = !DIEnumerator(name: "conn_closing", value: 8)
!31 = !DIEnumerator(name: "conn_mwrite", value: 9)
!32 = !DIEnumerator(name: "conn_closed", value: 10)
!33 = !DIEnumerator(name: "conn_watch", value: 11)
!34 = !DIEnumerator(name: "conn_io_queue", value: 12)
!35 = !DIEnumerator(name: "conn_max_state", value: 13)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bin_substates", file: !6, line: 216, baseType: !7, size: 32, elements: !37)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!38 = !DIEnumerator(name: "bin_no_state", value: 0)
!39 = !DIEnumerator(name: "bin_reading_set_header", value: 1)
!40 = !DIEnumerator(name: "bin_reading_cas_header", value: 2)
!41 = !DIEnumerator(name: "bin_read_set_value", value: 3)
!42 = !DIEnumerator(name: "bin_reading_get_key", value: 4)
!43 = !DIEnumerator(name: "bin_reading_stat", value: 5)
!44 = !DIEnumerator(name: "bin_reading_del_header", value: 6)
!45 = !DIEnumerator(name: "bin_reading_incr_header", value: 7)
!46 = !DIEnumerator(name: "bin_read_flush_exptime", value: 8)
!47 = !DIEnumerator(name: "bin_reading_sasl_auth", value: 9)
!48 = !DIEnumerator(name: "bin_reading_sasl_auth_data", value: 10)
!49 = !DIEnumerator(name: "bin_reading_touch_key", value: 11)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_entry_type", file: !51, line: 16, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./logger.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "920aeded0afd45e7ff5c610f1349e8a7")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!53 = !DIEnumerator(name: "LOGGER_ASCII_CMD", value: 0)
!54 = !DIEnumerator(name: "LOGGER_EVICTION", value: 1)
!55 = !DIEnumerator(name: "LOGGER_ITEM_GET", value: 2)
!56 = !DIEnumerator(name: "LOGGER_ITEM_STORE", value: 3)
!57 = !DIEnumerator(name: "LOGGER_CRAWLER_STATUS", value: 4)
!58 = !DIEnumerator(name: "LOGGER_SLAB_MOVE", value: 5)
!59 = !DIEnumerator(name: "LOGGER_CONNECTION_NEW", value: 6)
!60 = !DIEnumerator(name: "LOGGER_CONNECTION_CLOSE", value: 7)
!61 = !DIEnumerator(name: "LOGGER_EXTSTORE_WRITE", value: 8)
!62 = !DIEnumerator(name: "LOGGER_COMPACT_START", value: 9)
!63 = !DIEnumerator(name: "LOGGER_COMPACT_ABORT", value: 10)
!64 = !DIEnumerator(name: "LOGGER_COMPACT_READ_START", value: 11)
!65 = !DIEnumerator(name: "LOGGER_COMPACT_READ_END", value: 12)
!66 = !DIEnumerator(name: "LOGGER_COMPACT_END", value: 13)
!67 = !DIEnumerator(name: "LOGGER_COMPACT_FRAGINFO", value: 14)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol", file: !6, line: 231, baseType: !7, size: 32, elements: !69)
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "ascii_prot", value: 3)
!71 = !DIEnumerator(name: "binary_prot", value: 4)
!72 = !DIEnumerator(name: "negotiating_prot", value: 5)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "network_transport", file: !6, line: 240, baseType: !7, size: 32, elements: !74)
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "local_transport", value: 0)
!76 = !DIEnumerator(name: "tcp_transport", value: 1)
!77 = !DIEnumerator(name: "udp_transport", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "close_reasons", file: !6, line: 259, baseType: !7, size: 32, elements: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DIEnumerator(name: "ERROR_CLOSE", value: 0)
!81 = !DIEnumerator(name: "NORMAL_CLOSE", value: 1)
!82 = !DIEnumerator(name: "IDLE_TIMEOUT_CLOSE", value: 2)
!83 = !DIEnumerator(name: "SHUTDOWN_CLOSE", value: 3)
!84 = !{!85, !86, !151, !121, !152, !129, !133, !153, !503}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crawler_expired_data", file: !13, line: 17, size: 1098176, elements: !88)
!88 = !{!89, !122, !147, !148, !149, !150}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !87, file: !13, line: 18, baseType: !90, size: 320)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !91, line: 72, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !91, line: 67, size: 320, elements: !93)
!93 = !{!94, !115, !120}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !92, file: !91, line: 69, baseType: !95, size: 320)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !96, line: 22, size: 320, elements: !97)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!97 = !{!98, !100, !101, !102, !103, !104, !106, !107}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !95, file: !96, line: 24, baseType: !99, size: 32)
!99 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !95, file: !96, line: 25, baseType: !7, size: 32, offset: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !95, file: !96, line: 26, baseType: !99, size: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !95, file: !96, line: 28, baseType: !7, size: 32, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !95, file: !96, line: 32, baseType: !99, size: 32, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !95, file: !96, line: 34, baseType: !105, size: 16, offset: 160)
!105 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !95, file: !96, line: 35, baseType: !105, size: 16, offset: 176)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !95, file: !96, line: 36, baseType: !108, size: 128, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !109, line: 53, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !109, line: 49, size: 128, elements: !111)
!111 = !{!112, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !110, file: !109, line: 51, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !110, file: !109, line: 52, baseType: !113, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !92, file: !91, line: 70, baseType: !116, size: 320)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 320, elements: !118)
!117 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!118 = !{!119}
!119 = !DISubrange(count: 40)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !92, file: !91, line: 71, baseType: !121, size: 64)
!121 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "crawlerstats", scope: !87, file: !13, line: 19, baseType: !123, size: 1097728, offset: 320)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 1097728, elements: !145)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "crawlerstats_t", file: !13, line: 15, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 6, size: 4288, elements: !126)
!126 = !{!127, !136, !137, !138, !139, !140, !142, !143}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "histo", scope: !125, file: !13, line: 7, baseType: !128, size: 3904)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 3904, elements: !134)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !130, line: 27, baseType: !131)
!130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !132, line: 45, baseType: !133)
!132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!133 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!134 = !{!135}
!135 = !DISubrange(count: 61)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ttl_hourplus", scope: !125, file: !13, line: 8, baseType: !129, size: 64, offset: 3904)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "noexp", scope: !125, file: !13, line: 9, baseType: !129, size: 64, offset: 3968)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !125, file: !13, line: 10, baseType: !129, size: 64, offset: 4032)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "seen", scope: !125, file: !13, line: 11, baseType: !129, size: 64, offset: 4096)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !125, file: !13, line: 12, baseType: !141, size: 32, offset: 4160)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_time_t", file: !51, line: 14, baseType: !7)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "end_time", scope: !125, file: !13, line: 13, baseType: !141, size: 32, offset: 4192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "run_complete", scope: !125, file: !13, line: 14, baseType: !144, size: 8, offset: 4224)
!144 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!145 = !{!146}
!146 = !DISubrange(count: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !87, file: !13, line: 21, baseType: !141, size: 32, offset: 1098048)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "end_time", scope: !87, file: !13, line: 22, baseType: !141, size: 32, offset: 1098080)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "crawl_complete", scope: !87, file: !13, line: 23, baseType: !144, size: 8, offset: 1098112)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "is_external", scope: !87, file: !13, line: 24, baseType: !144, size: 8, offset: 1098120)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!152 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn", file: !6, line: 781, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn", file: !6, line: 794, size: 3968, elements: !156)
!156 = !{!157, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !257, !258, !259, !260, !261, !262, !263, !578, !579, !580, !581, !582, !583, !584, !586, !587, !588, !589, !590, !591, !592, !593, !594, !600, !621, !622, !623, !624, !625, !626, !627, !628, !632, !639, !654}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_conn", scope: !155, file: !6, line: 795, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "sasl_conn_t", file: !160, line: 16, baseType: !85)
!160 = !DIFile(filename: "./sasl_defs.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "3a8678a43d09d8e311388b26eedc7a3e")
!161 = !DIDerivedType(tag: DW_TAG_member, name: "sfd", scope: !155, file: !6, line: 796, baseType: !99, size: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_started", scope: !155, file: !6, line: 797, baseType: !144, size: 8, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !155, file: !6, line: 798, baseType: !144, size: 8, offset: 104)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "set_stale", scope: !155, file: !6, line: 799, baseType: !144, size: 8, offset: 112)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "mset_res", scope: !155, file: !6, line: 800, baseType: !144, size: 8, offset: 120)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "close_after_write", scope: !155, file: !6, line: 801, baseType: !144, size: 8, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_malloced", scope: !155, file: !6, line: 802, baseType: !144, size: 8, offset: 136)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "item_malloced", scope: !155, file: !6, line: 803, baseType: !144, size: 8, offset: 144)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !155, file: !6, line: 809, baseType: !20, size: 32, offset: 160)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "substate", scope: !155, file: !6, line: 810, baseType: !36, size: 32, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd_time", scope: !155, file: !6, line: 811, baseType: !141, size: 32, offset: 224)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !155, file: !6, line: 812, baseType: !173, size: 1024, offset: 256)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !174, line: 123, size: 1024, elements: !175)
!174 = !DIFile(filename: "/usr/include/event2/event_struct.h", directory: "", checksumkind: CSK_MD5, checksum: "005d89b34bed2ed9e30b0cc3160619c1")
!175 = !{!176, !210, !220, !221, !224, !254, !255, !256}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ev_evcallback", scope: !173, file: !174, line: 124, baseType: !177, size: 320)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_callback", file: !174, line: 107, size: 320, elements: !178)
!178 = !{!179, !186, !187, !191, !192, !209}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_active_next", scope: !177, file: !174, line: 108, baseType: !180, size: 128)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !177, file: !174, line: 108, size: 128, elements: !181)
!181 = !{!182, !184}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !180, file: !174, line: 108, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !180, file: !174, line: 108, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_flags", scope: !177, file: !174, line: 109, baseType: !105, size: 16, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_pri", scope: !177, file: !174, line: 110, baseType: !188, size: 8, offset: 144)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !130, line: 24, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !132, line: 38, baseType: !190)
!190 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_closure", scope: !177, file: !174, line: 111, baseType: !188, size: 8, offset: 152)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cb_union", scope: !177, file: !174, line: 118, baseType: !193, size: 64, offset: 192)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !174, line: 113, size: 64, elements: !194)
!194 = !{!195, !199, !203, !208}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_callback", scope: !193, file: !174, line: 114, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !99, !105, !85}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_selfcb", scope: !193, file: !174, line: 115, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !183, !85}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_evfinalize", scope: !193, file: !174, line: 116, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !207, !85}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cbfinalize", scope: !193, file: !174, line: 117, baseType: !200, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_arg", scope: !177, file: !174, line: 119, baseType: !85, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout_pos", scope: !173, file: !174, line: 130, baseType: !211, size: 128, offset: 320)
!211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !174, line: 127, size: 128, elements: !212)
!212 = !{!213, !219}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ev_next_with_common_timeout", scope: !211, file: !174, line: 128, baseType: !214, size: 128)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !174, line: 128, size: 128, elements: !215)
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !214, file: !174, line: 128, baseType: !207, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !214, file: !174, line: 128, baseType: !218, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "min_heap_idx", scope: !211, file: !174, line: 129, baseType: !99, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ev_fd", scope: !173, file: !174, line: 131, baseType: !99, size: 32, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "ev_base", scope: !173, file: !174, line: 133, baseType: !222, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !174, line: 122, flags: DIFlagFwdDecl)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ev_", scope: !173, file: !174, line: 149, baseType: !225, size: 256, offset: 576)
!225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !174, line: 135, size: 256, elements: !226)
!226 = !{!227, !243}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io", scope: !225, file: !174, line: 140, baseType: !228, size: 256)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !225, file: !174, line: 137, size: 256, elements: !229)
!229 = !{!230, !235}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io_next", scope: !228, file: !174, line: 138, baseType: !231, size: 128)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !228, file: !174, line: 138, size: 128, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !231, file: !174, line: 138, baseType: !207, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !231, file: !174, line: 138, baseType: !218, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !228, file: !174, line: 139, baseType: !236, size: 128, offset: 128)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !237, line: 8, size: 128, elements: !238)
!237 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!238 = !{!239, !241}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !236, file: !237, line: 10, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !132, line: 160, baseType: !121)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !236, file: !237, line: 11, baseType: !242, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !132, line: 162, baseType: !121)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal", scope: !225, file: !174, line: 148, baseType: !244, size: 256)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !225, file: !174, line: 143, size: 256, elements: !245)
!245 = !{!246, !251, !252}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal_next", scope: !244, file: !174, line: 144, baseType: !247, size: 128)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !174, line: 144, size: 128, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !247, file: !174, line: 144, baseType: !207, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !247, file: !174, line: 144, baseType: !218, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ev_ncalls", scope: !244, file: !174, line: 145, baseType: !105, size: 16, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ev_pncalls", scope: !244, file: !174, line: 147, baseType: !253, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ev_events", scope: !173, file: !174, line: 151, baseType: !105, size: 16, offset: 832)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ev_res", scope: !173, file: !174, line: 152, baseType: !105, size: 16, offset: 848)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !173, file: !174, line: 153, baseType: !236, size: 128, offset: 896)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ev_flags", scope: !155, file: !6, line: 813, baseType: !105, size: 16, offset: 1280)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !155, file: !6, line: 814, baseType: !105, size: 16, offset: 1296)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !155, file: !6, line: 816, baseType: !151, size: 64, offset: 1344)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "rcurr", scope: !155, file: !6, line: 817, baseType: !151, size: 64, offset: 1408)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "rsize", scope: !155, file: !6, line: 818, baseType: !99, size: 32, offset: 1472)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "rbytes", scope: !155, file: !6, line: 819, baseType: !99, size: 32, offset: 1504)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !155, file: !6, line: 821, baseType: !264, size: 64, offset: 1536)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "mc_resp", file: !6, line: 770, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mc_resp", file: !6, line: 743, size: 9472, elements: !267)
!267 = !{!268, !282, !284, !285, !286, !287, !502, !524, !533, !534, !535, !536, !537, !538, !539, !540, !541, !570, !574}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !266, file: !6, line: 744, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "mc_resp_bundle", file: !6, line: 703, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mc_resp_bundle", file: !6, line: 773, size: 192, elements: !272)
!272 = !{!273, !274, !275, !277, !278}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !271, file: !6, line: 774, baseType: !188, size: 8)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next_check", scope: !271, file: !6, line: 775, baseType: !188, size: 8, offset: 8)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !6, line: 776, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !271, file: !6, line: 777, baseType: !276, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !271, file: !6, line: 778, baseType: !279, offset: 192)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: -1)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !6, line: 745, baseType: !283, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "wbytes", scope: !266, file: !6, line: 746, baseType: !99, size: 32, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tosend", scope: !266, file: !6, line: 747, baseType: !99, size: 32, offset: 160)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "write_and_free", scope: !266, file: !6, line: 748, baseType: !85, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "io_pending", scope: !266, file: !6, line: 749, baseType: !288, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_pending_t", file: !6, line: 668, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_io_pending_t", file: !6, line: 783, size: 1216, elements: !291)
!291 = !{!292, !293, !496, !497, !498}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "io_queue_type", scope: !290, file: !6, line: 784, baseType: !99, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !290, file: !6, line: 785, baseType: !294, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "LIBEVENT_THREAD", file: !6, line: 737, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 704, size: 54464, elements: !297)
!297 = !{!298, !300, !301, !302, !303, !356, !385, !388, !416, !417, !418, !419, !494, !495}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !296, file: !6, line: 705, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !91, line: 27, baseType: !133)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !296, file: !6, line: 706, baseType: !222, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !296, file: !6, line: 707, baseType: !173, size: 1024, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event_fd", scope: !296, file: !6, line: 709, baseType: !99, size: 32, offset: 1152)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !296, file: !6, line: 714, baseType: !304, size: 51584, offset: 1216)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_stats", file: !6, line: 356, size: 51584, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !351, !353, !354, !355}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !304, file: !6, line: 357, baseType: !90, size: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "get_cmds", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "get_misses", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "get_expired", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 448)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "get_flushed", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 512)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "touch_cmds", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 576)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "touch_misses", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 640)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "delete_misses", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 704)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "incr_misses", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 768)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "decr_misses", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 832)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "cas_misses", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 896)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "meta_cmds", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 960)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_read", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 1024)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 1088)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flush_cmds", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 1152)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "conn_yields", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 1216)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "auth_cmds", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 1280)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "auth_errors", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 1344)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "idle_kicks", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 1408)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_oom", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 1472)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_count", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 1536)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_bytes", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 1600)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_oom", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 1664)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "store_too_large", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 1728)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "store_no_memory", scope: !304, file: !6, line: 359, baseType: !129, size: 64, offset: 1792)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "get_extstore", scope: !304, file: !6, line: 361, baseType: !129, size: 64, offset: 1856)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "get_aborted_extstore", scope: !304, file: !6, line: 361, baseType: !129, size: 64, offset: 1920)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "get_oom_extstore", scope: !304, file: !6, line: 361, baseType: !129, size: 64, offset: 1984)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "recache_from_extstore", scope: !304, file: !6, line: 361, baseType: !129, size: 64, offset: 2048)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "miss_from_extstore", scope: !304, file: !6, line: 361, baseType: !129, size: 64, offset: 2112)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "badcrc_from_extstore", scope: !304, file: !6, line: 361, baseType: !129, size: 64, offset: 2176)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "slab_stats", scope: !304, file: !6, line: 367, baseType: !338, size: 32768, offset: 2240)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 32768, elements: !349)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slab_stats", file: !6, line: 303, size: 512, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "set_cmds", scope: !339, file: !6, line: 305, baseType: !129, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "get_hits", scope: !339, file: !6, line: 305, baseType: !129, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "touch_hits", scope: !339, file: !6, line: 305, baseType: !129, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "delete_hits", scope: !339, file: !6, line: 305, baseType: !129, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "cas_hits", scope: !339, file: !6, line: 305, baseType: !129, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "cas_badval", scope: !339, file: !6, line: 305, baseType: !129, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "incr_hits", scope: !339, file: !6, line: 305, baseType: !129, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "decr_hits", scope: !339, file: !6, line: 305, baseType: !129, size: 64, offset: 448)
!349 = !{!350}
!350 = !DISubrange(count: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "lru_hits", scope: !304, file: !6, line: 368, baseType: !352, size: 16384, offset: 35008)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 16384, elements: !145)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_count", scope: !304, file: !6, line: 369, baseType: !129, size: 64, offset: 51392)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_bytes", scope: !304, file: !6, line: 370, baseType: !129, size: 64, offset: 51456)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_bytes_free", scope: !304, file: !6, line: 371, baseType: !129, size: 64, offset: 51520)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues", scope: !296, file: !6, line: 715, baseType: !357, size: 1152, offset: 52800)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 1152, elements: !383)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_cb_t", file: !6, line: 701, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_queue_cb_s", file: !6, line: 694, size: 384, elements: !360)
!360 = !{!361, !362, !375, !376, !381, !382}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !359, file: !6, line: 695, baseType: !85, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "submit_cb", scope: !359, file: !6, line: 696, baseType: !363, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_stack_cb", file: !6, line: 670, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_t", file: !6, line: 669, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_queue_s", file: !6, line: 687, size: 192, elements: !370)
!370 = !{!371, !372, !373, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !369, file: !6, line: 688, baseType: !85, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "stack_ctx", scope: !369, file: !6, line: 689, baseType: !85, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !369, file: !6, line: 690, baseType: !99, size: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !369, file: !6, line: 691, baseType: !99, size: 32, offset: 160)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "complete_cb", scope: !359, file: !6, line: 697, baseType: !363, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "return_cb", scope: !359, file: !6, line: 698, baseType: !377, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_cb", file: !6, line: 671, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !288}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_cb", scope: !359, file: !6, line: 699, baseType: !377, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !359, file: !6, line: 700, baseType: !99, size: 32, offset: 320)
!383 = !{!384}
!384 = !DISubrange(count: 3)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ev_queue", scope: !296, file: !6, line: 716, baseType: !386, size: 64, offset: 53952)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "conn_queue", file: !6, line: 716, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_cache", scope: !296, file: !6, line: 717, baseType: !389, size: 64, offset: 54016)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_t", file: !391, line: 39, baseType: !392)
!391 = !DIFile(filename: "./cache.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d97639c8540587a19d8550d7d7156448")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 22, size: 704, elements: !393)
!393 = !{!394, !395, !396, !409, !412, !413, !414, !415}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !392, file: !391, line: 24, baseType: !90, size: 320)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !392, file: !391, line: 26, baseType: !151, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !392, file: !391, line: 28, baseType: !397, size: 128, offset: 384)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_head", file: !391, line: 28, size: 128, elements: !398)
!398 = !{!399, !407}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !397, file: !391, line: 28, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_free_s", file: !391, line: 12, size: 64, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "c_next", scope: !401, file: !391, line: 13, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !401, file: !391, line: 13, size: 64, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !404, file: !391, line: 13, baseType: !400, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !397, file: !391, line: 28, baseType: !408, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !392, file: !391, line: 30, baseType: !410, size: 64, offset: 512)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !411, line: 46, baseType: !133)
!411 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!412 = !DIDerivedType(tag: DW_TAG_member, name: "freetotal", scope: !392, file: !391, line: 32, baseType: !99, size: 32, offset: 576)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !392, file: !391, line: 34, baseType: !99, size: 32, offset: 608)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "freecurr", scope: !392, file: !391, line: 36, baseType: !99, size: 32, offset: 640)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !392, file: !391, line: 38, baseType: !99, size: 32, offset: 672)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "open_bundle", scope: !296, file: !6, line: 718, baseType: !269, size: 64, offset: 54080)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "io_cache", scope: !296, file: !6, line: 719, baseType: !389, size: 64, offset: 54144)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !296, file: !6, line: 721, baseType: !85, size: 64, offset: 54208)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !296, file: !6, line: 723, baseType: !420, size: 64, offset: 54272)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger", file: !51, line: 171, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_logger", file: !51, line: 159, size: 832, elements: !423)
!423 = !{!424, !426, !427, !428, !429, !430, !431, !435, !436, !437, !450}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !422, file: !51, line: 160, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !422, file: !51, line: 161, baseType: !425, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !422, file: !51, line: 162, baseType: !90, size: 320, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !422, file: !51, line: 163, baseType: !129, size: 64, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dropped", scope: !422, file: !51, line: 164, baseType: !129, size: 64, offset: 512)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !422, file: !51, line: 165, baseType: !129, size: 64, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "fetcher_ratio", scope: !422, file: !51, line: 166, baseType: !432, size: 16, offset: 640)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !130, line: 25, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !132, line: 40, baseType: !434)
!434 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mutation_ratio", scope: !422, file: !51, line: 167, baseType: !432, size: 16, offset: 656)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !422, file: !51, line: 168, baseType: !432, size: 16, offset: 672)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !422, file: !51, line: 169, baseType: !438, size: 64, offset: 704)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "bipbuf_t", file: !440, line: 18, baseType: !441)
!440 = !DIFile(filename: "./bipbuffer.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "99606bcb8393045e6bc9eef40115066f")
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !440, line: 4, size: 192, elements: !442)
!442 = !{!443, !444, !445, !446, !447, !448}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !441, file: !440, line: 6, baseType: !133, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "a_start", scope: !441, file: !440, line: 9, baseType: !7, size: 32, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "a_end", scope: !441, file: !440, line: 9, baseType: !7, size: 32, offset: 96)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "b_end", scope: !441, file: !440, line: 12, baseType: !7, size: 32, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "b_inuse", scope: !441, file: !440, line: 15, baseType: !99, size: 32, offset: 160)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !441, file: !440, line: 17, baseType: !449, offset: 192)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, elements: !280)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "entry_map", scope: !422, file: !51, line: 170, baseType: !451, size: 64, offset: 768)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_details", file: !51, line: 57, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_entry_details", file: !51, line: 62, size: 256, elements: !455)
!455 = !{!456, !457, !458, !488, !493}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reqlen", scope: !454, file: !51, line: 63, baseType: !99, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !454, file: !51, line: 64, baseType: !432, size: 16, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "log_cb", scope: !454, file: !51, line: 65, baseType: !459, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_log_cb", file: !51, line: 59, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !463, !451, !478, !480}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "logentry", file: !51, line: 56, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_logentry", file: !51, line: 135, size: 320, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !465, file: !51, line: 136, baseType: !50, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !465, file: !51, line: 137, baseType: !188, size: 8, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !465, file: !51, line: 138, baseType: !432, size: 16, offset: 48)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !465, file: !51, line: 139, baseType: !129, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !465, file: !51, line: 140, baseType: !236, size: 128, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !465, file: !51, line: 141, baseType: !99, size: 32, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !465, file: !51, line: 144, baseType: !474, offset: 288)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, elements: !280)
!475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !51, line: 142, size: 8, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !475, file: !51, line: 143, baseType: !117, size: 8)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !482)
!482 = !{!483, !485, !486, !487}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !481, file: !484, line: 295, baseType: !7, size: 32)
!484 = !DIFile(filename: "crawler.c", directory: "/home/xuheng/blackbox/llvm-test/memcached")
!485 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !481, file: !484, line: 295, baseType: !7, size: 32, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !481, file: !484, line: 295, baseType: !85, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !481, file: !484, line: 295, baseType: !85, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "parse_cb", scope: !454, file: !51, line: 66, baseType: !489, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_parse_cb", file: !51, line: 60, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!99, !463, !151}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !454, file: !51, line: 67, baseType: !151, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "lru_bump_buf", scope: !296, file: !6, line: 724, baseType: !85, size: 64, offset: 54336)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !296, file: !6, line: 728, baseType: !99, size: 32, offset: 54400)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !290, file: !6, line: 786, baseType: !153, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !290, file: !6, line: 787, baseType: !264, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !290, file: !6, line: 788, baseType: !499, size: 960, offset: 256)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 960, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 120)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !266, file: !6, line: 751, baseType: !503, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "item", file: !6, line: 598, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stritem", file: !6, line: 575, size: 384, elements: !506)
!506 = !{!507, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !6, line: 577, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !505, file: !6, line: 578, baseType: !508, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "h_next", scope: !505, file: !6, line: 580, baseType: !508, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !505, file: !6, line: 581, baseType: !141, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "exptime", scope: !505, file: !6, line: 582, baseType: !141, size: 32, offset: 224)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !505, file: !6, line: 583, baseType: !99, size: 32, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !505, file: !6, line: 584, baseType: !434, size: 16, offset: 288)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !505, file: !6, line: 585, baseType: !432, size: 16, offset: 304)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_clsid", scope: !505, file: !6, line: 586, baseType: !188, size: 8, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "nkey", scope: !505, file: !6, line: 587, baseType: !188, size: 8, offset: 328)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !505, file: !6, line: 593, baseType: !519, offset: 384)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, elements: !280)
!520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !505, file: !6, line: 590, size: 64, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !520, file: !6, line: 591, baseType: !129, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !520, file: !6, line: 592, baseType: !117, size: 8)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !266, file: !6, line: 752, baseType: !525, size: 512, offset: 384)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 512, elements: !531)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !527, line: 26, size: 128, elements: !528)
!527 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "6a734cae8feaa37c12e11190a6573675")
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !526, file: !527, line: 28, baseType: !85, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !526, file: !527, line: 29, baseType: !410, size: 64, offset: 64)
!531 = !{!532}
!532 = !DISubrange(count: 4)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_total", scope: !266, file: !6, line: 753, baseType: !99, size: 32, offset: 896)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "iovcnt", scope: !266, file: !6, line: 754, baseType: !188, size: 8, offset: 928)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_data_iov", scope: !266, file: !6, line: 755, baseType: !188, size: 8, offset: 936)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !266, file: !6, line: 760, baseType: !144, size: 8, offset: 944)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !266, file: !6, line: 761, baseType: !144, size: 8, offset: 952)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !266, file: !6, line: 763, baseType: !432, size: 16, offset: 960)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "udp_sequence", scope: !266, file: !6, line: 764, baseType: !432, size: 16, offset: 976)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "udp_total", scope: !266, file: !6, line: 765, baseType: !432, size: 16, offset: 992)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr", scope: !266, file: !6, line: 766, baseType: !542, size: 224, offset: 1024)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !543, line: 253, size: 224, elements: !544)
!543 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "6a5254a491bcdb8c3253de75bf3571c1")
!544 = !{!545, !548, !550, !553, !569}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !542, file: !543, line: 255, baseType: !546, size: 16)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !547, line: 28, baseType: !434)
!547 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "b70cbaf07ffb7e8bf11ee98d9a21e2fc")
!548 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !542, file: !543, line: 256, baseType: !549, size: 16, offset: 16)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !543, line: 119, baseType: !432)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !542, file: !543, line: 257, baseType: !551, size: 32, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !130, line: 26, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !132, line: 42, baseType: !7)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !542, file: !543, line: 258, baseType: !554, size: 128, offset: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !543, line: 212, size: 128, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !554, file: !543, line: 219, baseType: !557, size: 128)
!557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !554, file: !543, line: 214, size: 128, elements: !558)
!558 = !{!559, !563, !567}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !557, file: !543, line: 216, baseType: !560, size: 128)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 16)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !557, file: !543, line: 217, baseType: !564, size: 128)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 128, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 8)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !557, file: !543, line: 218, baseType: !568, size: 128)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 128, elements: !531)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !542, file: !543, line: 259, baseType: !551, size: 32, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr_size", scope: !266, file: !6, line: 767, baseType: !571, size: 32, offset: 1248)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !572, line: 33, baseType: !573)
!572 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "b1d3343a573cbf39b225111209e02966")
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !132, line: 209, baseType: !7)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !266, file: !6, line: 769, baseType: !575, size: 8192, offset: 1280)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 8192, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 1024)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "resp_head", scope: !155, file: !6, line: 822, baseType: !264, size: 64, offset: 1600)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ritem", scope: !155, file: !6, line: 823, baseType: !151, size: 64, offset: 1664)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rlbytes", scope: !155, file: !6, line: 824, baseType: !99, size: 32, offset: 1728)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !155, file: !6, line: 832, baseType: !85, size: 64, offset: 1792)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !155, file: !6, line: 835, baseType: !99, size: 32, offset: 1856)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues_submitted", scope: !155, file: !6, line: 837, baseType: !99, size: 32, offset: 1888)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues", scope: !155, file: !6, line: 838, baseType: !585, size: 576, offset: 1920)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 576, elements: !383)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "recache_counter", scope: !155, file: !6, line: 843, baseType: !7, size: 32, offset: 2496)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !155, file: !6, line: 845, baseType: !68, size: 32, offset: 2528)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "transport", scope: !155, file: !6, line: 846, baseType: !73, size: 32, offset: 2560)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "close_reason", scope: !155, file: !6, line: 847, baseType: !78, size: 32, offset: 2592)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !155, file: !6, line: 850, baseType: !99, size: 32, offset: 2624)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr", scope: !155, file: !6, line: 851, baseType: !542, size: 224, offset: 2656)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr_size", scope: !155, file: !6, line: 852, baseType: !571, size: 32, offset: 2880)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "noreply", scope: !155, file: !6, line: 854, baseType: !144, size: 8, offset: 2912)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !155, file: !6, line: 860, baseType: !595, size: 192, offset: 2944)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !6, line: 856, size: 192, elements: !596)
!596 = !{!597, !598, !599}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !595, file: !6, line: 857, baseType: !151, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !595, file: !6, line: 858, baseType: !410, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !595, file: !6, line: 859, baseType: !410, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "binary_header", scope: !155, file: !6, line: 864, baseType: !601, size: 192, offset: 3136)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_header", file: !602, line: 164, baseType: !603)
!602 = !DIFile(filename: "./protocol_binary.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "7a322a65fa8661e9a597acbeeeb23107")
!603 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !602, line: 151, size: 192, elements: !604)
!604 = !{!605, !617}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !603, file: !602, line: 162, baseType: !606, size: 192)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !603, file: !602, line: 152, size: 192, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !606, file: !602, line: 153, baseType: !188, size: 8)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !606, file: !602, line: 154, baseType: !188, size: 8, offset: 8)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !606, file: !602, line: 155, baseType: !432, size: 16, offset: 16)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "extlen", scope: !606, file: !602, line: 156, baseType: !188, size: 8, offset: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !606, file: !602, line: 157, baseType: !188, size: 8, offset: 40)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !606, file: !602, line: 158, baseType: !432, size: 16, offset: 48)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "bodylen", scope: !606, file: !602, line: 159, baseType: !551, size: 32, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !606, file: !602, line: 160, baseType: !551, size: 32, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !606, file: !602, line: 161, baseType: !129, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !603, file: !602, line: 163, baseType: !618, size: 192)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 192, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 24)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !155, file: !6, line: 865, baseType: !129, size: 64, offset: 3328)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !155, file: !6, line: 866, baseType: !129, size: 64, offset: 3392)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !155, file: !6, line: 867, baseType: !105, size: 16, offset: 3456)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !155, file: !6, line: 868, baseType: !99, size: 32, offset: 3488)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !155, file: !6, line: 869, baseType: !99, size: 32, offset: 3520)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !6, line: 870, baseType: !153, size: 64, offset: 3584)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !155, file: !6, line: 871, baseType: !294, size: 64, offset: 3648)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "try_read_command", scope: !155, file: !6, line: 872, baseType: !629, size: 64, offset: 3712)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!99, !153}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !155, file: !6, line: 873, baseType: !633, size: 64, offset: 3776)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!636, !153, !85, !410}
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !637, line: 108, baseType: !638)
!637 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !132, line: 193, baseType: !121)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sendmsg", scope: !155, file: !6, line: 874, baseType: !640, size: 64, offset: 3840)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!636, !153, !643, !99}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !572, line: 257, size: 448, elements: !645)
!645 = !{!646, !647, !648, !650, !651, !652, !653}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !644, file: !572, line: 259, baseType: !85, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !644, file: !572, line: 260, baseType: !571, size: 32, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !644, file: !572, line: 262, baseType: !649, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !644, file: !572, line: 263, baseType: !410, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !644, file: !572, line: 265, baseType: !85, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !644, file: !572, line: 266, baseType: !410, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !644, file: !572, line: 271, baseType: !99, size: 32, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !155, file: !6, line: 875, baseType: !633, size: 64, offset: 3904)
!655 = !{!0, !656, !698, !701, !722, !724, !726, !728, !730, !750, !752, !755, !795, !797}
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(name: "crawler_metadump_mod", scope: !2, file: !3, line: 74, type: !658, isLocal: false, isDefinition: true)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "crawler_module_reg_t", file: !3, line: 49, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 42, size: 320, elements: !660)
!660 = !{!661, !681, !686, !691, !696, !697}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !659, file: !3, line: 43, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "crawler_init_func", file: !3, line: 37, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!99, !666, !85}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "crawler_module_t", file: !3, line: 34, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_crawler_module_t", file: !3, line: 51, size: 384, elements: !669)
!669 = !{!670, !671, !679}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !668, file: !3, line: 52, baseType: !85, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !668, file: !3, line: 53, baseType: !672, size: 256, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "crawler_client_t", file: !3, line: 32, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 27, size: 256, elements: !674)
!674 = !{!675, !676, !677, !678}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !673, file: !3, line: 28, baseType: !85, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "sfd", scope: !673, file: !3, line: 29, baseType: !99, size: 32, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !673, file: !3, line: 30, baseType: !438, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "cbuf", scope: !673, file: !3, line: 31, baseType: !151, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !668, file: !3, line: 54, baseType: !680, size: 64, offset: 320)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !659, file: !3, line: 44, baseType: !682, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "crawler_eval_func", file: !3, line: 36, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !666, !503, !551, !99}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "doneclass", scope: !659, file: !3, line: 45, baseType: !687, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "crawler_doneclass_func", file: !3, line: 39, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !666, !99}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !659, file: !3, line: 46, baseType: !692, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "crawler_finalize_func", file: !3, line: 40, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !666}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "needs_lock", scope: !659, file: !3, line: 47, baseType: !144, size: 8, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "needs_client", scope: !659, file: !3, line: 48, baseType: !144, size: 8, offset: 264)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(name: "crawler_mod_regs", scope: !2, file: !3, line: 83, type: !700, isLocal: false, isDefinition: true)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 192, elements: !383)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(name: "block_ae_until", scope: !703, file: !3, line: 640, type: !141, isLocal: true, isDefinition: true)
!703 = distinct !DISubprogram(name: "lru_crawler_start", scope: !3, file: !3, line: 635, type: !704, scopeLine: 637, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !709)
!704 = !DISubroutineType(types: !705)
!705 = !{!99, !706, !551, !707, !85, !85, !708}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !718}
!710 = !DILocalVariable(name: "ids", arg: 1, scope: !703, file: !3, line: 635, type: !706)
!711 = !DILocalVariable(name: "remaining", arg: 2, scope: !703, file: !3, line: 635, type: !551)
!712 = !DILocalVariable(name: "type", arg: 3, scope: !703, file: !3, line: 636, type: !707)
!713 = !DILocalVariable(name: "data", arg: 4, scope: !703, file: !3, line: 636, type: !85)
!714 = !DILocalVariable(name: "c", arg: 5, scope: !703, file: !3, line: 637, type: !85)
!715 = !DILocalVariable(name: "sfd", arg: 6, scope: !703, file: !3, line: 637, type: !708)
!716 = !DILocalVariable(name: "starts", scope: !703, file: !3, line: 638, type: !99)
!717 = !DILocalVariable(name: "is_running", scope: !703, file: !3, line: 639, type: !144)
!718 = !DILocalVariable(name: "sid", scope: !719, file: !3, line: 697, type: !99)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 697, column: 9)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 695, column: 12)
!721 = distinct !DILexicalBlock(scope: !703, file: !3, line: 688, column: 9)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(name: "active_crawler_mod", scope: !2, file: !3, line: 90, type: !667, isLocal: false, isDefinition: true)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(name: "active_crawler_type", scope: !2, file: !3, line: 91, type: !5, isLocal: false, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(name: "storage", scope: !2, file: !3, line: 102, type: !85, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(name: "item_crawler_tid", scope: !2, file: !3, line: 528, type: !299, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(name: "crawlers", scope: !2, file: !3, line: 93, type: !732, isLocal: true, isDefinition: true)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 147456, elements: !145)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "crawler", file: !6, line: 620, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 605, size: 576, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !734, file: !6, line: 606, baseType: !508, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !734, file: !6, line: 607, baseType: !508, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "h_next", scope: !734, file: !6, line: 608, baseType: !508, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !734, file: !6, line: 609, baseType: !141, size: 32, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "exptime", scope: !734, file: !6, line: 610, baseType: !141, size: 32, offset: 224)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !734, file: !6, line: 611, baseType: !99, size: 32, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !734, file: !6, line: 612, baseType: !434, size: 16, offset: 288)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !734, file: !6, line: 613, baseType: !432, size: 16, offset: 304)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_clsid", scope: !734, file: !6, line: 614, baseType: !188, size: 8, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "nkey", scope: !734, file: !6, line: 615, baseType: !188, size: 8, offset: 328)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !734, file: !6, line: 616, baseType: !551, size: 32, offset: 352)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !734, file: !6, line: 617, baseType: !129, size: 64, offset: 384)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "unfetched", scope: !734, file: !6, line: 618, baseType: !129, size: 64, offset: 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "checked", scope: !734, file: !6, line: 619, baseType: !129, size: 64, offset: 512)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(name: "lru_crawler_lock", scope: !2, file: !3, line: 98, type: !90, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(name: "do_run_lru_crawler_thread", scope: !2, file: !3, line: 96, type: !754, isLocal: true, isDefinition: true)
!754 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !99)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(name: "lru_crawler_cond", scope: !2, file: !3, line: 99, type: !757, isLocal: true, isDefinition: true)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !91, line: 80, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !91, line: 75, size: 384, elements: !759)
!759 = !{!760, !789, !793}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !758, file: !91, line: 77, baseType: !761, size: 384)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !109, line: 92, size: 384, elements: !762)
!762 = !{!763, !772, !781, !785, !786, !787, !788}
!763 = !DIDerivedType(tag: DW_TAG_member, scope: !761, file: !109, line: 94, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !761, file: !109, line: 94, size: 64, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !764, file: !109, line: 96, baseType: !152, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !764, file: !109, line: 101, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !764, file: !109, line: 97, size: 64, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !768, file: !109, line: 99, baseType: !7, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !768, file: !109, line: 100, baseType: !7, size: 32, offset: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !761, file: !109, line: 103, baseType: !773, size: 64, offset: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !761, file: !109, line: 103, size: 64, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !773, file: !109, line: 105, baseType: !152, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !773, file: !109, line: 110, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !773, file: !109, line: 106, size: 64, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !777, file: !109, line: 108, baseType: !7, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !777, file: !109, line: 109, baseType: !7, size: 32, offset: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !761, file: !109, line: 112, baseType: !782, size: 64, offset: 128)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 2)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !761, file: !109, line: 113, baseType: !782, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !761, file: !109, line: 114, baseType: !7, size: 32, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !761, file: !109, line: 115, baseType: !7, size: 32, offset: 288)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !761, file: !109, line: 116, baseType: !782, size: 64, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !758, file: !91, line: 78, baseType: !790, size: 384)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 384, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 48)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !758, file: !91, line: 79, baseType: !794, size: 64)
!794 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(name: "crawler_count", scope: !2, file: !3, line: 95, type: !99, isLocal: true, isDefinition: true)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(name: "lru_crawler_initialized", scope: !2, file: !3, line: 97, type: !99, isLocal: true, isDefinition: true)
!799 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!800 = !{i32 7, !"Dwarf Version", i32 5}
!801 = !{i32 2, !"Debug Info Version", i32 3}
!802 = !{i32 1, !"wchar_size", i32 4}
!803 = !{i32 7, !"uwtable", i32 1}
!804 = !{!"/home/xuheng/blackbox/llvm-test/memcached/crawler.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/crawler.gcda", !2}
!805 = !{!"clang version 14.0.0"}
!806 = distinct !DISubprogram(name: "crawler_expired_init", scope: !3, file: !3, line: 130, type: !664, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !807)
!807 = !{!808, !809, !810, !811}
!808 = !DILocalVariable(name: "cm", arg: 1, scope: !806, file: !3, line: 130, type: !666)
!809 = !DILocalVariable(name: "data", arg: 2, scope: !806, file: !3, line: 130, type: !85)
!810 = !DILocalVariable(name: "d", scope: !806, file: !3, line: 131, type: !86)
!811 = !DILocalVariable(name: "x", scope: !812, file: !3, line: 151, type: !99)
!812 = distinct !DILexicalBlock(scope: !806, file: !3, line: 151, column: 5)
!813 = !DILocation(line: 0, scope: !806)
!814 = !DILocation(line: 132, column: 14, scope: !815)
!815 = distinct !DILexicalBlock(scope: !806, file: !3, line: 132, column: 9)
!816 = !DILocation(line: 132, column: 9, scope: !806)
!817 = !DILocation(line: 133, column: 13, scope: !818)
!818 = distinct !DILexicalBlock(scope: !815, file: !3, line: 132, column: 23)
!819 = !DILocation(line: 134, column: 12, scope: !818)
!820 = !DILocation(line: 134, column: 24, scope: !818)
!821 = !{!822, !826, i64 137265}
!822 = !{!"crawler_expired_data", !823, i64 0, !823, i64 40, !825, i64 137256, !825, i64 137260, !826, i64 137264, !826, i64 137265}
!823 = !{!"omnipotent char", !824, i64 0}
!824 = !{!"Simple C/C++ TBAA"}
!825 = !{!"int", !823, i64 0}
!826 = !{!"_Bool", !823, i64 0}
!827 = !DILocation(line: 136, column: 5, scope: !818)
!828 = !DILocation(line: 138, column: 13, scope: !829)
!829 = distinct !DILexicalBlock(scope: !815, file: !3, line: 136, column: 12)
!830 = !DILocation(line: 139, column: 15, scope: !831)
!831 = distinct !DILexicalBlock(scope: !829, file: !3, line: 139, column: 13)
!832 = !DILocation(line: 139, column: 13, scope: !829)
!833 = !DILocation(line: 140, column: 13, scope: !834)
!834 = distinct !DILexicalBlock(scope: !831, file: !3, line: 139, column: 24)
!835 = !DILocation(line: 143, column: 29, scope: !829)
!836 = !DILocation(line: 143, column: 32, scope: !829)
!837 = !DILocation(line: 143, column: 9, scope: !829)
!838 = !DILocation(line: 144, column: 12, scope: !829)
!839 = !DILocation(line: 144, column: 24, scope: !829)
!840 = !DILocation(line: 145, column: 25, scope: !829)
!841 = !{!825, !825, i64 0}
!842 = !DILocation(line: 145, column: 12, scope: !829)
!843 = !DILocation(line: 145, column: 23, scope: !829)
!844 = !{!822, !825, i64 137256}
!845 = !DILocation(line: 0, scope: !815)
!846 = !{!847, !848, i64 0}
!847 = !{!"_crawler_module_t", !848, i64 0, !849, i64 8, !848, i64 40}
!848 = !{!"any pointer", !823, i64 0}
!849 = !{!"", !848, i64 0, !825, i64 8, !848, i64 16, !848, i64 24}
!850 = !DILocation(line: 149, column: 28, scope: !806)
!851 = !DILocation(line: 149, column: 5, scope: !806)
!852 = !DILocation(line: 150, column: 16, scope: !806)
!853 = !DILocation(line: 150, column: 5, scope: !806)
!854 = !DILocation(line: 0, scope: !812)
!855 = !DILocation(line: 151, column: 5, scope: !812)
!856 = !DILocation(line: 155, column: 5, scope: !806)
!857 = !DILocation(line: 156, column: 5, scope: !806)
!858 = !DILocation(line: 152, column: 41, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 151, column: 45)
!860 = distinct !DILexicalBlock(scope: !812, file: !3, line: 151, column: 5)
!861 = !DILocation(line: 152, column: 28, scope: !859)
!862 = !DILocation(line: 152, column: 39, scope: !859)
!863 = !{!864, !825, i64 520}
!864 = !{!"", !823, i64 0, !865, i64 488, !865, i64 496, !865, i64 504, !865, i64 512, !825, i64 520, !825, i64 524, !826, i64 528}
!865 = !{!"long", !823, i64 0}
!866 = !DILocation(line: 153, column: 28, scope: !859)
!867 = !DILocation(line: 153, column: 41, scope: !859)
!868 = !{!864, !826, i64 528}
!869 = !DILocation(line: 151, column: 41, scope: !860)
!870 = !DILocation(line: 151, column: 23, scope: !860)
!871 = distinct !{!871, !855, !872, !873}
!872 = !DILocation(line: 154, column: 5, scope: !812)
!873 = !{!"llvm.loop.mustprogress"}
!874 = !DILocation(line: 157, column: 1, scope: !806)
!875 = distinct !DISubprogram(name: "crawler_expired_eval", scope: !3, file: !3, line: 182, type: !684, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !876)
!876 = !{!877, !878, !879, !880, !881, !882, !884, !885, !886, !891, !892, !897}
!877 = !DILocalVariable(name: "cm", arg: 1, scope: !875, file: !3, line: 182, type: !666)
!878 = !DILocalVariable(name: "search", arg: 2, scope: !875, file: !3, line: 182, type: !503)
!879 = !DILocalVariable(name: "hv", arg: 3, scope: !875, file: !3, line: 182, type: !551)
!880 = !DILocalVariable(name: "i", arg: 4, scope: !875, file: !3, line: 182, type: !99)
!881 = !DILocalVariable(name: "d", scope: !875, file: !3, line: 183, type: !86)
!882 = !DILocalVariable(name: "s", scope: !875, file: !3, line: 185, type: !883)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!884 = !DILocalVariable(name: "is_flushed", scope: !875, file: !3, line: 186, type: !99)
!885 = !DILocalVariable(name: "is_valid", scope: !875, file: !3, line: 188, type: !144)
!886 = !DILocalVariable(name: "ii", scope: !887, file: !3, line: 203, type: !99)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 202, column: 35)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 202, column: 13)
!889 = distinct !DILexicalBlock(scope: !890, file: !3, line: 198, column: 11)
!890 = distinct !DILexicalBlock(scope: !875, file: !3, line: 193, column: 9)
!891 = !DILocalVariable(name: "key", scope: !887, file: !3, line: 204, type: !151)
!892 = !DILocalVariable(name: "ttl_remain", scope: !893, file: !3, line: 228, type: !141)
!893 = distinct !DILexicalBlock(scope: !894, file: !3, line: 227, column: 16)
!894 = distinct !DILexicalBlock(scope: !895, file: !3, line: 225, column: 20)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 223, column: 13)
!896 = distinct !DILexicalBlock(scope: !890, file: !3, line: 220, column: 12)
!897 = !DILocalVariable(name: "bucket", scope: !893, file: !3, line: 229, type: !99)
!898 = !DILocation(line: 0, scope: !875)
!899 = !DILocation(line: 183, column: 74, scope: !875)
!900 = !DILocation(line: 184, column: 28, scope: !875)
!901 = !DILocation(line: 184, column: 5, scope: !875)
!902 = !DILocation(line: 185, column: 26, scope: !875)
!903 = !DILocation(line: 186, column: 22, scope: !875)
!904 = !DILocation(line: 189, column: 17, scope: !905)
!905 = distinct !DILexicalBlock(scope: !875, file: !3, line: 189, column: 9)
!906 = !{!907, !907, i64 0}
!907 = !{!"short", !823, i64 0}
!908 = !DILocation(line: 189, column: 26, scope: !905)
!909 = !DILocation(line: 189, column: 9, scope: !875)
!910 = !DILocation(line: 190, column: 42, scope: !911)
!911 = distinct !DILexicalBlock(scope: !905, file: !3, line: 189, column: 38)
!912 = !{!848, !848, i64 0}
!913 = !DILocation(line: 190, column: 20, scope: !911)
!914 = !DILocation(line: 191, column: 5, scope: !911)
!915 = !DILocation(line: 193, column: 18, scope: !890)
!916 = !DILocation(line: 193, column: 26, scope: !890)
!917 = !DILocation(line: 193, column: 31, scope: !890)
!918 = !DILocation(line: 193, column: 34, scope: !890)
!919 = !DILocation(line: 193, column: 52, scope: !890)
!920 = !DILocation(line: 193, column: 50, scope: !890)
!921 = !DILocation(line: 194, column: 9, scope: !890)
!922 = !DILocation(line: 194, column: 12, scope: !890)
!923 = !DILocation(line: 196, column: 9, scope: !890)
!924 = !DILocation(line: 196, column: 13, scope: !890)
!925 = !DILocation(line: 193, column: 9, scope: !875)
!926 = !DILocation(line: 199, column: 21, scope: !889)
!927 = !DILocation(line: 199, column: 30, scope: !889)
!928 = !{!929, !865, i64 48}
!929 = !{!"", !848, i64 0, !848, i64 8, !848, i64 16, !825, i64 24, !825, i64 28, !825, i64 32, !907, i64 36, !907, i64 38, !823, i64 40, !823, i64 41, !825, i64 44, !865, i64 48, !865, i64 56, !865, i64 64}
!930 = !DILocation(line: 200, column: 12, scope: !889)
!931 = !DILocation(line: 200, column: 21, scope: !889)
!932 = !{!864, !865, i64 504}
!933 = !DILocation(line: 202, column: 22, scope: !888)
!934 = !{!935, !825, i64 32}
!935 = !{!"settings", !865, i64 0, !825, i64 8, !825, i64 12, !825, i64 16, !848, i64 24, !825, i64 32, !825, i64 36, !865, i64 40, !825, i64 48, !848, i64 56, !848, i64 64, !825, i64 72, !936, i64 80, !825, i64 88, !825, i64 92, !825, i64 96, !823, i64 100, !825, i64 104, !825, i64 108, !826, i64 112, !823, i64 116, !825, i64 120, !825, i64 124, !825, i64 128, !825, i64 132, !825, i64 136, !826, i64 140, !826, i64 141, !826, i64 142, !826, i64 143, !826, i64 144, !826, i64 145, !825, i64 148, !936, i64 152, !825, i64 160, !825, i64 164, !826, i64 168, !825, i64 172, !826, i64 176, !826, i64 177, !848, i64 184, !825, i64 192, !825, i64 196, !825, i64 200, !825, i64 204, !936, i64 208, !936, i64 216, !825, i64 224, !826, i64 228, !825, i64 232, !825, i64 236, !825, i64 240, !825, i64 244, !825, i64 248, !826, i64 252, !826, i64 253, !826, i64 254, !826, i64 255, !825, i64 256, !825, i64 260, !825, i64 264, !825, i64 268, !825, i64 272, !825, i64 276, !825, i64 280, !825, i64 284, !825, i64 288, !825, i64 292, !936, i64 296, !936, i64 304, !826, i64 312, !825, i64 316, !825, i64 320, !848, i64 328, !825, i64 336}
!936 = !{!"double", !823, i64 0}
!937 = !DILocation(line: 202, column: 30, scope: !888)
!938 = !DILocation(line: 202, column: 13, scope: !889)
!939 = !DILocation(line: 204, column: 25, scope: !887)
!940 = !DILocation(line: 0, scope: !887)
!941 = !DILocation(line: 205, column: 21, scope: !887)
!942 = !DILocation(line: 206, column: 43, scope: !887)
!943 = !{!823, !823, i64 0}
!944 = !DILocation(line: 206, column: 35, scope: !887)
!945 = !DILocation(line: 205, column: 13, scope: !887)
!946 = !DILocation(line: 207, column: 39, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 207, column: 13)
!948 = distinct !DILexicalBlock(scope: !887, file: !3, line: 207, column: 13)
!949 = !DILocation(line: 207, column: 29, scope: !947)
!950 = !DILocation(line: 207, column: 13, scope: !948)
!951 = !DILocation(line: 208, column: 25, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !3, line: 207, column: 51)
!953 = !DILocation(line: 208, column: 39, scope: !952)
!954 = !DILocation(line: 208, column: 17, scope: !952)
!955 = !DILocation(line: 207, column: 45, scope: !947)
!956 = distinct !{!956, !950, !957, !873}
!957 = !DILocation(line: 209, column: 13, scope: !948)
!958 = !DILocation(line: 210, column: 21, scope: !887)
!959 = !DILocation(line: 210, column: 13, scope: !887)
!960 = !DILocation(line: 211, column: 9, scope: !887)
!961 = !DILocation(line: 212, column: 22, scope: !962)
!962 = distinct !DILexicalBlock(scope: !889, file: !3, line: 212, column: 13)
!963 = !DILocation(line: 212, column: 31, scope: !962)
!964 = !DILocation(line: 212, column: 47, scope: !962)
!965 = !DILocation(line: 212, column: 52, scope: !962)
!966 = !DILocation(line: 212, column: 56, scope: !962)
!967 = !DILocation(line: 212, column: 13, scope: !889)
!968 = !DILocation(line: 213, column: 22, scope: !969)
!969 = distinct !DILexicalBlock(scope: !962, file: !3, line: 212, column: 68)
!970 = !DILocation(line: 213, column: 25, scope: !969)
!971 = !DILocation(line: 213, column: 34, scope: !969)
!972 = !{!929, !865, i64 56}
!973 = !DILocation(line: 214, column: 9, scope: !969)
!974 = !DILocation(line: 216, column: 9, scope: !975)
!975 = distinct !DILexicalBlock(scope: !889, file: !3, line: 216, column: 9)
!976 = !DILocation(line: 218, column: 31, scope: !889)
!977 = !DILocation(line: 218, column: 9, scope: !889)
!978 = !DILocation(line: 219, column: 9, scope: !889)
!979 = !DILocation(line: 220, column: 5, scope: !889)
!980 = !DILocation(line: 221, column: 12, scope: !896)
!981 = !DILocation(line: 221, column: 16, scope: !896)
!982 = !{!864, !865, i64 512}
!983 = !DILocation(line: 222, column: 9, scope: !896)
!984 = !DILocation(line: 223, column: 13, scope: !896)
!985 = !DILocation(line: 224, column: 13, scope: !986)
!986 = distinct !DILexicalBlock(scope: !895, file: !3, line: 223, column: 35)
!987 = !DILocation(line: 224, column: 16, scope: !986)
!988 = !DILocation(line: 224, column: 21, scope: !986)
!989 = !{!864, !865, i64 496}
!990 = !DILocation(line: 225, column: 9, scope: !986)
!991 = !DILocation(line: 225, column: 38, scope: !894)
!992 = !DILocation(line: 225, column: 36, scope: !894)
!993 = !DILocation(line: 225, column: 51, scope: !894)
!994 = !DILocation(line: 225, column: 20, scope: !895)
!995 = !DILocation(line: 226, column: 13, scope: !996)
!996 = distinct !DILexicalBlock(scope: !894, file: !3, line: 225, column: 59)
!997 = !DILocation(line: 226, column: 16, scope: !996)
!998 = !DILocation(line: 226, column: 28, scope: !996)
!999 = !{!864, !865, i64 488}
!1000 = !DILocation(line: 227, column: 9, scope: !996)
!1001 = !DILocation(line: 228, column: 55, scope: !893)
!1002 = !DILocation(line: 228, column: 53, scope: !893)
!1003 = !DILocation(line: 0, scope: !893)
!1004 = !DILocation(line: 230, column: 24, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !893, file: !3, line: 230, column: 17)
!1006 = !DILocation(line: 230, column: 17, scope: !893)
!1007 = !DILocation(line: 229, column: 37, scope: !893)
!1008 = !DILocation(line: 231, column: 17, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 230, column: 31)
!1010 = !DILocation(line: 231, column: 33, scope: !1009)
!1011 = !{!865, !865, i64 0}
!1012 = !DILocation(line: 232, column: 13, scope: !1009)
!1013 = !DILocation(line: 233, column: 9, scope: !894)
!1014 = !DILocation(line: 235, column: 5, scope: !875)
!1015 = !DILocation(line: 236, column: 1, scope: !875)
!1016 = distinct !DISubprogram(name: "crawler_expired_doneclass", scope: !3, file: !3, line: 159, type: !689, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1017)
!1017 = !{!1018, !1019, !1020}
!1018 = !DILocalVariable(name: "cm", arg: 1, scope: !1016, file: !3, line: 159, type: !666)
!1019 = !DILocalVariable(name: "slab_cls", arg: 2, scope: !1016, file: !3, line: 159, type: !99)
!1020 = !DILocalVariable(name: "d", scope: !1016, file: !3, line: 160, type: !86)
!1021 = !DILocation(line: 0, scope: !1016)
!1022 = !DILocation(line: 160, column: 74, scope: !1016)
!1023 = !DILocation(line: 161, column: 28, scope: !1016)
!1024 = !DILocation(line: 161, column: 5, scope: !1016)
!1025 = !DILocation(line: 162, column: 42, scope: !1016)
!1026 = !DILocation(line: 162, column: 5, scope: !1016)
!1027 = !DILocation(line: 162, column: 31, scope: !1016)
!1028 = !DILocation(line: 162, column: 40, scope: !1016)
!1029 = !{!864, !825, i64 524}
!1030 = !DILocation(line: 163, column: 31, scope: !1016)
!1031 = !DILocation(line: 163, column: 44, scope: !1016)
!1032 = !DILocation(line: 164, column: 5, scope: !1016)
!1033 = !DILocation(line: 165, column: 1, scope: !1016)
!1034 = distinct !DISubprogram(name: "crawler_expired_finalize", scope: !3, file: !3, line: 167, type: !694, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1035)
!1035 = !{!1036, !1037}
!1036 = !DILocalVariable(name: "cm", arg: 1, scope: !1034, file: !3, line: 167, type: !666)
!1037 = !DILocalVariable(name: "d", scope: !1034, file: !3, line: 168, type: !86)
!1038 = !DILocation(line: 0, scope: !1034)
!1039 = !DILocation(line: 168, column: 74, scope: !1034)
!1040 = !DILocation(line: 169, column: 28, scope: !1034)
!1041 = !DILocation(line: 169, column: 5, scope: !1034)
!1042 = !DILocation(line: 170, column: 19, scope: !1034)
!1043 = !DILocation(line: 170, column: 8, scope: !1034)
!1044 = !DILocation(line: 170, column: 17, scope: !1034)
!1045 = !{!822, !825, i64 137260}
!1046 = !DILocation(line: 171, column: 8, scope: !1034)
!1047 = !DILocation(line: 171, column: 23, scope: !1034)
!1048 = !{!822, !826, i64 137264}
!1049 = !DILocation(line: 172, column: 5, scope: !1034)
!1050 = !DILocation(line: 174, column: 13, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 174, column: 9)
!1052 = !{i8 0, i8 2}
!1053 = !DILocation(line: 174, column: 9, scope: !1034)
!1054 = !DILocation(line: 175, column: 14, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 174, column: 26)
!1056 = !DILocation(line: 175, column: 9, scope: !1055)
!1057 = !DILocation(line: 176, column: 5, scope: !1055)
!1058 = !DILocation(line: 177, column: 1, scope: !1034)
!1059 = distinct !DISubprogram(name: "crawler_metadump_eval", scope: !3, file: !3, line: 238, type: !684, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1060)
!1060 = !{!1061, !1062, !1063, !1064, !1065, !1069, !1070}
!1061 = !DILocalVariable(name: "cm", arg: 1, scope: !1059, file: !3, line: 238, type: !666)
!1062 = !DILocalVariable(name: "it", arg: 2, scope: !1059, file: !3, line: 238, type: !503)
!1063 = !DILocalVariable(name: "hv", arg: 3, scope: !1059, file: !3, line: 238, type: !551)
!1064 = !DILocalVariable(name: "i", arg: 4, scope: !1059, file: !3, line: 238, type: !99)
!1065 = !DILocalVariable(name: "keybuf", scope: !1059, file: !3, line: 240, type: !1066)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 6008, elements: !1067)
!1067 = !{!1068}
!1068 = !DISubrange(count: 751)
!1069 = !DILocalVariable(name: "is_flushed", scope: !1059, file: !3, line: 241, type: !99)
!1070 = !DILocalVariable(name: "total", scope: !1059, file: !3, line: 250, type: !99)
!1071 = !DILocation(line: 0, scope: !1059)
!1072 = !DILocation(line: 240, column: 5, scope: !1059)
!1073 = !DILocation(line: 240, column: 10, scope: !1059)
!1074 = !DILocation(line: 241, column: 22, scope: !1059)
!1075 = !DILocation(line: 243, column: 14, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 243, column: 9)
!1077 = !DILocation(line: 243, column: 22, scope: !1076)
!1078 = !DILocation(line: 243, column: 27, scope: !1076)
!1079 = !DILocation(line: 243, column: 30, scope: !1076)
!1080 = !DILocation(line: 243, column: 44, scope: !1076)
!1081 = !DILocation(line: 243, column: 42, scope: !1076)
!1082 = !DILocation(line: 244, column: 9, scope: !1076)
!1083 = !DILocation(line: 244, column: 12, scope: !1076)
!1084 = !DILocation(line: 243, column: 9, scope: !1059)
!1085 = !DILocation(line: 245, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 244, column: 24)
!1087 = !DILocation(line: 246, column: 9, scope: !1086)
!1088 = !DILocation(line: 249, column: 15, scope: !1059)
!1089 = !DILocation(line: 249, column: 41, scope: !1059)
!1090 = !DILocation(line: 249, column: 37, scope: !1059)
!1091 = !DILocation(line: 249, column: 5, scope: !1059)
!1092 = !DILocation(line: 250, column: 32, scope: !1059)
!1093 = !{!847, !848, i64 32}
!1094 = !DILocation(line: 253, column: 18, scope: !1059)
!1095 = !DILocation(line: 253, column: 26, scope: !1059)
!1096 = !DILocation(line: 253, column: 13, scope: !1059)
!1097 = !DILocation(line: 254, column: 45, scope: !1059)
!1098 = !DILocation(line: 253, column: 46, scope: !1059)
!1099 = !DILocation(line: 253, column: 60, scope: !1059)
!1100 = !DILocation(line: 253, column: 58, scope: !1059)
!1101 = !DILocation(line: 254, column: 38, scope: !1059)
!1102 = !DILocation(line: 254, column: 34, scope: !1059)
!1103 = !DILocation(line: 254, column: 43, scope: !1059)
!1104 = !DILocation(line: 255, column: 33, scope: !1059)
!1105 = !DILocation(line: 256, column: 18, scope: !1059)
!1106 = !DILocation(line: 256, column: 14, scope: !1059)
!1107 = !DILocation(line: 256, column: 27, scope: !1059)
!1108 = !DILocation(line: 256, column: 13, scope: !1059)
!1109 = !DILocation(line: 257, column: 13, scope: !1059)
!1110 = !DILocation(line: 258, column: 29, scope: !1059)
!1111 = !DILocation(line: 250, column: 17, scope: !1059)
!1112 = !DILocation(line: 259, column: 5, scope: !1059)
!1113 = !DILocation(line: 261, column: 15, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 261, column: 9)
!1115 = !DILocation(line: 261, column: 43, scope: !1114)
!1116 = !DILocation(line: 261, column: 46, scope: !1114)
!1117 = !DILocation(line: 261, column: 52, scope: !1114)
!1118 = !DILocation(line: 261, column: 9, scope: !1059)
!1119 = !DILocation(line: 265, column: 17, scope: !1059)
!1120 = !DILocation(line: 265, column: 23, scope: !1059)
!1121 = !{!847, !848, i64 24}
!1122 = !DILocation(line: 265, column: 5, scope: !1059)
!1123 = !DILocation(line: 266, column: 1, scope: !1059)
!1124 = distinct !DISubprogram(name: "crawler_metadump_finalize", scope: !3, file: !3, line: 268, type: !694, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1125)
!1125 = !{!1126}
!1126 = !DILocalVariable(name: "cm", arg: 1, scope: !1124, file: !3, line: 268, type: !666)
!1127 = !DILocation(line: 0, scope: !1124)
!1128 = !DILocation(line: 269, column: 13, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 269, column: 9)
!1130 = !DILocation(line: 269, column: 15, scope: !1129)
!1131 = !{!847, !848, i64 8}
!1132 = !DILocation(line: 269, column: 17, scope: !1129)
!1133 = !DILocation(line: 269, column: 9, scope: !1124)
!1134 = !DILocation(line: 271, column: 36, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 269, column: 26)
!1136 = !DILocation(line: 271, column: 9, scope: !1135)
!1137 = !DILocation(line: 272, column: 22, scope: !1135)
!1138 = !DILocation(line: 272, column: 9, scope: !1135)
!1139 = !DILocation(line: 273, column: 27, scope: !1135)
!1140 = !DILocation(line: 273, column: 9, scope: !1135)
!1141 = !DILocation(line: 274, column: 5, scope: !1135)
!1142 = !DILocation(line: 275, column: 1, scope: !1124)
!1143 = distinct !DISubprogram(name: "stop_item_crawler_thread", scope: !3, file: !3, line: 530, type: !1144, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1146)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!99, !144}
!1146 = !{!1147, !1148}
!1147 = !DILocalVariable(name: "wait", arg: 1, scope: !1143, file: !3, line: 530, type: !144)
!1148 = !DILocalVariable(name: "ret", scope: !1143, file: !3, line: 531, type: !99)
!1149 = !DILocation(line: 0, scope: !1143)
!1150 = !DILocation(line: 532, column: 5, scope: !1143)
!1151 = !DILocation(line: 533, column: 9, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 533, column: 9)
!1153 = !DILocation(line: 533, column: 35, scope: !1152)
!1154 = !DILocation(line: 533, column: 9, scope: !1143)
!1155 = !DILocation(line: 534, column: 9, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 533, column: 41)
!1157 = !DILocation(line: 535, column: 9, scope: !1156)
!1158 = !DILocation(line: 537, column: 31, scope: !1143)
!1159 = !DILocation(line: 538, column: 5, scope: !1143)
!1160 = !DILocation(line: 539, column: 5, scope: !1143)
!1161 = !DILocation(line: 540, column: 14, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 540, column: 9)
!1163 = !DILocation(line: 540, column: 37, scope: !1162)
!1164 = !DILocation(line: 540, column: 24, scope: !1162)
!1165 = !DILocation(line: 540, column: 62, scope: !1162)
!1166 = !DILocation(line: 540, column: 9, scope: !1143)
!1167 = !DILocation(line: 541, column: 17, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 540, column: 68)
!1169 = !DILocation(line: 541, column: 68, scope: !1168)
!1170 = !DILocation(line: 541, column: 9, scope: !1168)
!1171 = !DILocation(line: 542, column: 9, scope: !1168)
!1172 = !DILocation(line: 545, column: 1, scope: !1143)
!1173 = !DISubprogram(name: "pthread_mutex_lock", scope: !1174, file: !1174, line: 738, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1174 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!99, !1177}
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!1178 = !{}
!1179 = !DISubprogram(name: "pthread_mutex_unlock", scope: !1174, file: !1174, line: 756, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1180 = !DISubprogram(name: "pthread_cond_signal", scope: !1174, file: !1174, line: 974, type: !1181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!99, !1183}
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!1184 = !DISubprogram(name: "pthread_join", scope: !1174, file: !1174, line: 215, type: !1185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!99, !299, !1187}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1188 = !DISubprogram(name: "fprintf", scope: !1189, file: !1189, line: 326, type: !1190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1189 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!99, !1192, !1246, null}
!1192 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1193)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1195, line: 7, baseType: !1196)
!1195 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1197, line: 49, size: 1728, elements: !1198)
!1197 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1214, !1216, !1217, !1218, !1220, !1221, !1223, !1227, !1230, !1232, !1235, !1238, !1239, !1240, !1241, !1242}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1196, file: !1197, line: 51, baseType: !99, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1196, file: !1197, line: 54, baseType: !151, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1196, file: !1197, line: 55, baseType: !151, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1196, file: !1197, line: 56, baseType: !151, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1196, file: !1197, line: 57, baseType: !151, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1196, file: !1197, line: 58, baseType: !151, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1196, file: !1197, line: 59, baseType: !151, size: 64, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1196, file: !1197, line: 60, baseType: !151, size: 64, offset: 448)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1196, file: !1197, line: 61, baseType: !151, size: 64, offset: 512)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1196, file: !1197, line: 64, baseType: !151, size: 64, offset: 576)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1196, file: !1197, line: 65, baseType: !151, size: 64, offset: 640)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1196, file: !1197, line: 66, baseType: !151, size: 64, offset: 704)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1196, file: !1197, line: 68, baseType: !1212, size: 64, offset: 768)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1197, line: 36, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1196, file: !1197, line: 70, baseType: !1215, size: 64, offset: 832)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1196, file: !1197, line: 72, baseType: !99, size: 32, offset: 896)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1196, file: !1197, line: 73, baseType: !99, size: 32, offset: 928)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1196, file: !1197, line: 74, baseType: !1219, size: 64, offset: 960)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !132, line: 152, baseType: !121)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1196, file: !1197, line: 77, baseType: !434, size: 16, offset: 1024)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1196, file: !1197, line: 78, baseType: !1222, size: 8, offset: 1040)
!1222 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1196, file: !1197, line: 79, baseType: !1224, size: 8, offset: 1048)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 8, elements: !1225)
!1225 = !{!1226}
!1226 = !DISubrange(count: 1)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1196, file: !1197, line: 81, baseType: !1228, size: 64, offset: 1088)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1197, line: 43, baseType: null)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1196, file: !1197, line: 89, baseType: !1231, size: 64, offset: 1152)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !132, line: 153, baseType: !121)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1196, file: !1197, line: 91, baseType: !1233, size: 64, offset: 1216)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1197, line: 37, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1196, file: !1197, line: 92, baseType: !1236, size: 64, offset: 1280)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1197, line: 38, flags: DIFlagFwdDecl)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1196, file: !1197, line: 93, baseType: !1215, size: 64, offset: 1344)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1196, file: !1197, line: 94, baseType: !85, size: 64, offset: 1408)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1196, file: !1197, line: 95, baseType: !410, size: 64, offset: 1472)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1196, file: !1197, line: 96, baseType: !99, size: 32, offset: 1536)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1196, file: !1197, line: 98, baseType: !1243, size: 160, offset: 1568)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 160, elements: !1244)
!1244 = !{!1245}
!1245 = !DISubrange(count: 20)
!1246 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1247)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!1249 = !DISubprogram(name: "strerror", scope: !1250, file: !1250, line: 397, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1250 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!151, !99}
!1253 = distinct !DISubprogram(name: "start_item_crawler_thread", scope: !3, file: !3, line: 558, type: !1254, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1256)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!99}
!1256 = !{!1257}
!1257 = !DILocalVariable(name: "ret", scope: !1253, file: !3, line: 559, type: !99)
!1258 = !DILocation(line: 561, column: 18, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 561, column: 9)
!1260 = !{!935, !826, i64 142}
!1261 = !DILocation(line: 561, column: 9, scope: !1253)
!1262 = !DILocation(line: 562, column: 9, scope: !1259)
!1263 = !DILocation(line: 563, column: 5, scope: !1253)
!1264 = !DILocation(line: 564, column: 31, scope: !1253)
!1265 = !DILocation(line: 565, column: 16, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 565, column: 9)
!1267 = !DILocation(line: 0, scope: !1253)
!1268 = !DILocation(line: 566, column: 37, scope: !1266)
!1269 = !DILocation(line: 565, column: 9, scope: !1253)
!1270 = !DILocation(line: 567, column: 17, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 566, column: 43)
!1272 = !DILocation(line: 568, column: 13, scope: !1271)
!1273 = !DILocation(line: 567, column: 9, scope: !1271)
!1274 = !DILocation(line: 569, column: 9, scope: !1271)
!1275 = !DILocation(line: 570, column: 9, scope: !1271)
!1276 = !DILocation(line: 573, column: 5, scope: !1253)
!1277 = !DILocation(line: 574, column: 5, scope: !1253)
!1278 = !DILocation(line: 576, column: 5, scope: !1253)
!1279 = !DILocation(line: 577, column: 1, scope: !1253)
!1280 = !DISubprogram(name: "pthread_create", scope: !1174, file: !1174, line: 198, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!99, !1283, !1285, !1296, !1299}
!1283 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1284)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1286)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1288)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !91, line: 62, baseType: !1289)
!1289 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !91, line: 56, size: 448, elements: !1290)
!1290 = !{!1291, !1295}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1289, file: !91, line: 58, baseType: !1292, size: 448)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 448, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 56)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1289, file: !91, line: 59, baseType: !121, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!85, !85}
!1299 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!1300 = distinct !DISubprogram(name: "item_crawler_thread", scope: !3, file: !3, line: 408, type: !1297, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1301)
!1301 = !{!1302, !1303, !1304, !1305, !1310, !1311, !1317}
!1302 = !DILocalVariable(name: "arg", arg: 1, scope: !1300, file: !3, line: 408, type: !85)
!1303 = !DILocalVariable(name: "i", scope: !1300, file: !3, line: 409, type: !99)
!1304 = !DILocalVariable(name: "crawls_persleep", scope: !1300, file: !3, line: 410, type: !99)
!1305 = !DILocalVariable(name: "search", scope: !1306, file: !3, line: 425, type: !503)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 424, column: 27)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 423, column: 12)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 420, column: 9)
!1309 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 417, column: 39)
!1310 = !DILocalVariable(name: "hold_lock", scope: !1306, file: !3, line: 426, type: !85)
!1311 = !DILocalVariable(name: "ret", scope: !1312, file: !3, line: 435, type: !99)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 434, column: 49)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 434, column: 17)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 428, column: 55)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 428, column: 9)
!1316 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 428, column: 9)
!1317 = !DILocalVariable(name: "hv", scope: !1314, file: !3, line: 453, type: !551)
!1318 = !DILocation(line: 0, scope: !1300)
!1319 = !DILocation(line: 410, column: 36, scope: !1300)
!1320 = !{!935, !825, i64 224}
!1321 = !DILocation(line: 412, column: 5, scope: !1300)
!1322 = !DILocation(line: 413, column: 5, scope: !1300)
!1323 = !DILocation(line: 414, column: 26, scope: !1300)
!1324 = !DILocation(line: 415, column: 18, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 415, column: 9)
!1326 = !DILocation(line: 415, column: 26, scope: !1325)
!1327 = !DILocation(line: 415, column: 9, scope: !1300)
!1328 = !DILocation(line: 416, column: 17, scope: !1325)
!1329 = !DILocation(line: 416, column: 9, scope: !1325)
!1330 = !DILocation(line: 417, column: 12, scope: !1300)
!1331 = !DILocation(line: 417, column: 5, scope: !1300)
!1332 = !DILocation(line: 418, column: 5, scope: !1309)
!1333 = !DILocation(line: 420, column: 9, scope: !1308)
!1334 = !DILocation(line: 420, column: 9, scope: !1309)
!1335 = !DILocation(line: 421, column: 9, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 420, column: 30)
!1337 = !DILocation(line: 422, column: 23, scope: !1336)
!1338 = !DILocation(line: 423, column: 5, scope: !1336)
!1339 = !DILocation(line: 429, column: 17, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 429, column: 17)
!1341 = !DILocation(line: 429, column: 29, scope: !1340)
!1342 = !{!929, !907, i64 38}
!1343 = !DILocation(line: 429, column: 38, scope: !1340)
!1344 = !DILocation(line: 429, column: 17, scope: !1314)
!1345 = !DILocation(line: 430, column: 17, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 429, column: 44)
!1347 = !DILocation(line: 434, column: 38, scope: !1313)
!1348 = !DILocation(line: 434, column: 40, scope: !1313)
!1349 = !DILocation(line: 434, column: 17, scope: !1314)
!1350 = !DILocation(line: 435, column: 27, scope: !1312)
!1351 = !DILocation(line: 0, scope: !1312)
!1352 = !DILocation(line: 436, column: 25, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 436, column: 21)
!1354 = !DILocation(line: 436, column: 21, scope: !1312)
!1355 = !DILocation(line: 437, column: 44, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 436, column: 31)
!1357 = !DILocation(line: 437, column: 21, scope: !1356)
!1358 = !DILocation(line: 440, column: 43, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 440, column: 24)
!1360 = !{!847, !848, i64 40}
!1361 = !DILocation(line: 440, column: 48, scope: !1359)
!1362 = !{!1363, !826, i64 33}
!1363 = !{!"", !848, i64 0, !848, i64 8, !848, i64 16, !848, i64 24, !826, i64 32, !826, i64 33}
!1364 = !DILocation(line: 440, column: 24, scope: !1313)
!1365 = !DILocation(line: 441, column: 40, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 440, column: 62)
!1367 = !DILocation(line: 441, column: 17, scope: !1366)
!1368 = !DILocation(line: 442, column: 17, scope: !1366)
!1369 = !DILocation(line: 444, column: 33, scope: !1314)
!1370 = !DILocation(line: 444, column: 13, scope: !1314)
!1371 = !DILocation(line: 445, column: 38, scope: !1314)
!1372 = !DILocation(line: 445, column: 22, scope: !1314)
!1373 = !DILocation(line: 0, scope: !1306)
!1374 = !DILocation(line: 446, column: 24, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 446, column: 17)
!1376 = !DILocation(line: 446, column: 32, scope: !1375)
!1377 = !DILocation(line: 447, column: 27, scope: !1375)
!1378 = !DILocation(line: 447, column: 30, scope: !1375)
!1379 = !{!929, !825, i64 44}
!1380 = !DILocation(line: 447, column: 18, scope: !1375)
!1381 = !DILocation(line: 447, column: 40, scope: !1375)
!1382 = !DILocation(line: 447, column: 54, scope: !1375)
!1383 = !DILocation(line: 447, column: 43, scope: !1375)
!1384 = !DILocation(line: 447, column: 67, scope: !1375)
!1385 = !DILocation(line: 446, column: 17, scope: !1314)
!1386 = !DILocation(line: 448, column: 30, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 448, column: 21)
!1388 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 447, column: 73)
!1389 = !DILocation(line: 448, column: 38, scope: !1387)
!1390 = !DILocation(line: 448, column: 21, scope: !1388)
!1391 = !DILocation(line: 450, column: 17, scope: !1388)
!1392 = !DILocation(line: 449, column: 29, scope: !1387)
!1393 = !DILocation(line: 449, column: 21, scope: !1387)
!1394 = !DILocation(line: 450, column: 40, scope: !1388)
!1395 = !DILocation(line: 451, column: 17, scope: !1388)
!1396 = !DILocation(line: 453, column: 27, scope: !1314)
!1397 = !DILocation(line: 453, column: 32, scope: !1314)
!1398 = !DILocation(line: 453, column: 58, scope: !1314)
!1399 = !DILocation(line: 453, column: 50, scope: !1314)
!1400 = !DILocation(line: 0, scope: !1314)
!1401 = !DILocation(line: 457, column: 30, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 457, column: 17)
!1403 = !DILocation(line: 457, column: 48, scope: !1402)
!1404 = !DILocation(line: 457, column: 17, scope: !1314)
!1405 = !DILocation(line: 458, column: 49, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 457, column: 57)
!1407 = !DILocation(line: 458, column: 17, scope: !1406)
!1408 = !DILocation(line: 459, column: 17, scope: !1406)
!1409 = !DILocation(line: 462, column: 17, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 462, column: 17)
!1411 = !DILocation(line: 462, column: 39, scope: !1410)
!1412 = !DILocation(line: 462, column: 17, scope: !1314)
!1413 = !DILocation(line: 463, column: 17, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 462, column: 45)
!1415 = !DILocation(line: 465, column: 41, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 464, column: 21)
!1417 = !DILocation(line: 465, column: 21, scope: !1416)
!1418 = !DILocation(line: 466, column: 49, scope: !1414)
!1419 = !DILocation(line: 466, column: 17, scope: !1414)
!1420 = !DILocation(line: 467, column: 17, scope: !1414)
!1421 = !DILocation(line: 470, column: 25, scope: !1314)
!1422 = !DILocation(line: 470, column: 32, scope: !1314)
!1423 = !{!929, !865, i64 64}
!1424 = !DILocation(line: 474, column: 37, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 474, column: 17)
!1426 = !DILocation(line: 474, column: 42, scope: !1425)
!1427 = !{!1363, !826, i64 32}
!1428 = !DILocation(line: 474, column: 17, scope: !1314)
!1429 = !DILocation(line: 475, column: 49, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 474, column: 54)
!1431 = !DILocation(line: 475, column: 17, scope: !1430)
!1432 = !DILocation(line: 478, column: 32, scope: !1314)
!1433 = !DILocation(line: 476, column: 13, scope: !1430)
!1434 = !DILocation(line: 478, column: 37, scope: !1314)
!1435 = !{!1363, !848, i64 8}
!1436 = !DILocation(line: 478, column: 13, scope: !1314)
!1437 = !DILocation(line: 481, column: 37, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 480, column: 17)
!1439 = !DILocation(line: 481, column: 17, scope: !1438)
!1440 = !DILocation(line: 482, column: 36, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 482, column: 17)
!1442 = !DILocation(line: 482, column: 41, scope: !1441)
!1443 = !DILocation(line: 482, column: 17, scope: !1314)
!1444 = !DILocation(line: 483, column: 49, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 482, column: 53)
!1446 = !DILocation(line: 483, column: 17, scope: !1445)
!1447 = !DILocation(line: 484, column: 13, scope: !1445)
!1448 = !DILocation(line: 486, column: 32, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 486, column: 17)
!1450 = !DILocation(line: 486, column: 35, scope: !1449)
!1451 = !DILocation(line: 486, column: 40, scope: !1449)
!1452 = !DILocation(line: 486, column: 52, scope: !1449)
!1453 = !{!935, !825, i64 192}
!1454 = !DILocation(line: 486, column: 43, scope: !1449)
!1455 = !DILocation(line: 486, column: 17, scope: !1314)
!1456 = !DILocation(line: 487, column: 17, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 486, column: 71)
!1458 = !DILocation(line: 488, column: 33, scope: !1457)
!1459 = !DILocation(line: 488, column: 17, scope: !1457)
!1460 = !DILocation(line: 489, column: 17, scope: !1457)
!1461 = !DILocation(line: 490, column: 44, scope: !1457)
!1462 = !DILocation(line: 491, column: 13, scope: !1457)
!1463 = !DILocation(line: 491, column: 34, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 491, column: 24)
!1465 = !DILocation(line: 491, column: 25, scope: !1464)
!1466 = !DILocation(line: 491, column: 24, scope: !1449)
!1467 = !DILocation(line: 493, column: 17, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 491, column: 53)
!1469 = !DILocation(line: 494, column: 17, scope: !1468)
!1470 = !DILocation(line: 495, column: 13, scope: !1468)
!1471 = !DILocation(line: 496, column: 9, scope: !1314)
!1472 = !DILocation(line: 410, column: 9, scope: !1300)
!1473 = !DILocation(line: 428, column: 51, scope: !1315)
!1474 = !DILocation(line: 428, column: 36, scope: !1315)
!1475 = !DILocation(line: 428, column: 9, scope: !1316)
!1476 = distinct !{!1476, !1477, !1478, !873}
!1477 = !DILocation(line: 424, column: 5, scope: !1307)
!1478 = !DILocation(line: 497, column: 5, scope: !1307)
!1479 = !DILocation(line: 424, column: 12, scope: !1307)
!1480 = !DILocation(line: 500, column: 28, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 500, column: 9)
!1482 = !DILocation(line: 500, column: 32, scope: !1481)
!1483 = !DILocation(line: 500, column: 9, scope: !1309)
!1484 = !DILocation(line: 501, column: 32, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 501, column: 13)
!1486 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 500, column: 41)
!1487 = !DILocation(line: 501, column: 37, scope: !1485)
!1488 = !{!1363, !848, i64 24}
!1489 = !DILocation(line: 501, column: 46, scope: !1485)
!1490 = !DILocation(line: 501, column: 13, scope: !1486)
!1491 = !DILocation(line: 502, column: 32, scope: !1485)
!1492 = !DILocation(line: 502, column: 37, scope: !1485)
!1493 = !DILocation(line: 502, column: 13, scope: !1485)
!1494 = !DILocation(line: 503, column: 37, scope: !1486)
!1495 = !DILocation(line: 503, column: 39, scope: !1486)
!1496 = !DILocation(line: 503, column: 47, scope: !1486)
!1497 = !DILocation(line: 503, column: 83, scope: !1486)
!1498 = !DILocation(line: 503, column: 50, scope: !1486)
!1499 = !DILocation(line: 503, column: 9, scope: !1486)
!1500 = !DILocation(line: 504, column: 13, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 503, column: 89)
!1502 = distinct !{!1502, !1499, !1503, !873}
!1503 = !DILocation(line: 505, column: 9, scope: !1486)
!1504 = !DILocation(line: 507, column: 34, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 507, column: 13)
!1506 = !DILocation(line: 507, column: 36, scope: !1505)
!1507 = !DILocation(line: 507, column: 13, scope: !1486)
!1508 = !DILocation(line: 508, column: 13, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 507, column: 45)
!1510 = !DILocation(line: 509, column: 9, scope: !1509)
!1511 = !DILocation(line: 510, column: 32, scope: !1486)
!1512 = !DILocation(line: 511, column: 5, scope: !1486)
!1513 = !DILocation(line: 513, column: 18, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 513, column: 9)
!1515 = !DILocation(line: 513, column: 26, scope: !1514)
!1516 = !DILocation(line: 513, column: 9, scope: !1309)
!1517 = !DILocation(line: 514, column: 17, scope: !1514)
!1518 = !DILocation(line: 514, column: 9, scope: !1514)
!1519 = !DILocation(line: 516, column: 5, scope: !1309)
!1520 = !DILocation(line: 517, column: 37, scope: !1309)
!1521 = !{!1522, !826, i64 51}
!1522 = !{!"stats_state", !865, i64 0, !865, i64 8, !865, i64 16, !865, i64 24, !825, i64 32, !825, i64 36, !825, i64 40, !825, i64 44, !826, i64 48, !826, i64 49, !826, i64 50, !826, i64 51}
!1523 = !DILocation(line: 518, column: 5, scope: !1309)
!1524 = distinct !{!1524, !1331, !1525, !873}
!1525 = !DILocation(line: 519, column: 5, scope: !1300)
!1526 = !DILocation(line: 520, column: 5, scope: !1300)
!1527 = !DILocation(line: 521, column: 18, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 521, column: 9)
!1529 = !DILocation(line: 521, column: 26, scope: !1528)
!1530 = !DILocation(line: 521, column: 9, scope: !1300)
!1531 = !DILocation(line: 522, column: 17, scope: !1528)
!1532 = !DILocation(line: 522, column: 9, scope: !1528)
!1533 = !DILocation(line: 523, column: 26, scope: !1300)
!1534 = !DILocation(line: 525, column: 5, scope: !1300)
!1535 = !DISubprogram(name: "pthread_cond_wait", scope: !1174, file: !1174, line: 986, type: !1536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!99, !1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1183)
!1539 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1177)
!1540 = !DILocation(line: 0, scope: !703)
!1541 = !DILocation(line: 641, column: 5, scope: !703)
!1542 = !DILocation(line: 642, column: 5, scope: !703)
!1543 = !DILocation(line: 643, column: 30, scope: !703)
!1544 = !DILocation(line: 644, column: 5, scope: !703)
!1545 = !DILocation(line: 645, column: 9, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !703, file: !3, line: 645, column: 9)
!1547 = !DILocation(line: 645, column: 35, scope: !1546)
!1548 = !DILocation(line: 645, column: 9, scope: !703)
!1549 = !DILocation(line: 646, column: 9, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 645, column: 41)
!1551 = !DILocation(line: 647, column: 9, scope: !1550)
!1552 = !DILocation(line: 650, column: 20, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !703, file: !3, line: 650, column: 9)
!1554 = !DILocation(line: 651, column: 15, scope: !1553)
!1555 = !DILocation(line: 651, column: 20, scope: !1553)
!1556 = !DILocation(line: 651, column: 42, scope: !1553)
!1557 = !DILocation(line: 651, column: 45, scope: !1553)
!1558 = !DILocation(line: 651, column: 65, scope: !1553)
!1559 = !DILocation(line: 650, column: 9, scope: !703)
!1560 = !DILocation(line: 652, column: 9, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 651, column: 89)
!1562 = !DILocation(line: 653, column: 26, scope: !1561)
!1563 = !DILocation(line: 653, column: 39, scope: !1561)
!1564 = !DILocation(line: 653, column: 24, scope: !1561)
!1565 = !DILocation(line: 654, column: 9, scope: !1561)
!1566 = !DILocation(line: 657, column: 36, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !703, file: !3, line: 657, column: 9)
!1568 = !DILocation(line: 657, column: 39, scope: !1567)
!1569 = !DILocation(line: 657, column: 56, scope: !1567)
!1570 = !DILocation(line: 657, column: 54, scope: !1567)
!1571 = !DILocation(line: 657, column: 9, scope: !703)
!1572 = !DILocation(line: 658, column: 9, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 657, column: 70)
!1574 = !DILocation(line: 659, column: 9, scope: !1573)
!1575 = !DILocation(line: 663, column: 37, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !703, file: !3, line: 663, column: 9)
!1577 = !DILocation(line: 663, column: 41, scope: !1576)
!1578 = !DILocation(line: 663, column: 9, scope: !703)
!1579 = !DILocation(line: 664, column: 9, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 663, column: 50)
!1581 = !DILocation(line: 665, column: 9, scope: !1580)
!1582 = !DILocation(line: 669, column: 9, scope: !703)
!1583 = !DILocation(line: 670, column: 9, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 670, column: 9)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 670, column: 9)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 669, column: 22)
!1587 = distinct !DILexicalBlock(scope: !703, file: !3, line: 669, column: 9)
!1588 = !DILocation(line: 670, column: 9, scope: !1585)
!1589 = !DILocation(line: 671, column: 32, scope: !1586)
!1590 = !DILocation(line: 672, column: 29, scope: !1586)
!1591 = !DILocation(line: 673, column: 37, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 673, column: 13)
!1593 = !{!1363, !848, i64 0}
!1594 = !DILocation(line: 673, column: 42, scope: !1592)
!1595 = !DILocation(line: 673, column: 13, scope: !1586)
!1596 = !DILocation(line: 674, column: 32, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 673, column: 51)
!1598 = !DILocation(line: 674, column: 37, scope: !1597)
!1599 = !DILocation(line: 674, column: 13, scope: !1597)
!1600 = !DILocation(line: 676, column: 32, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 676, column: 13)
!1602 = !DILocation(line: 675, column: 9, scope: !1597)
!1603 = !DILocation(line: 676, column: 37, scope: !1601)
!1604 = !DILocation(line: 676, column: 13, scope: !1586)
!1605 = !DILocation(line: 677, column: 19, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 677, column: 17)
!1607 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 676, column: 51)
!1608 = !DILocation(line: 677, column: 27, scope: !1606)
!1609 = !DILocation(line: 677, column: 30, scope: !1606)
!1610 = !DILocation(line: 677, column: 34, scope: !1606)
!1611 = !DILocation(line: 677, column: 17, scope: !1607)
!1612 = !DILocation(line: 678, column: 17, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 677, column: 40)
!1614 = !DILocation(line: 679, column: 17, scope: !1613)
!1615 = !DILocation(line: 681, column: 17, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 681, column: 17)
!1617 = !DILocation(line: 681, column: 69, scope: !1616)
!1618 = !DILocation(line: 681, column: 17, scope: !1607)
!1619 = !DILocation(line: 682, column: 17, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 681, column: 75)
!1621 = !DILocation(line: 683, column: 17, scope: !1620)
!1622 = !DILocation(line: 685, column: 9, scope: !1607)
!1623 = !DILocation(line: 686, column: 5, scope: !1586)
!1624 = !DILocation(line: 688, column: 13, scope: !721)
!1625 = !DILocation(line: 688, column: 9, scope: !703)
!1626 = !DILocation(line: 690, column: 16, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !721, file: !3, line: 688, column: 22)
!1628 = !DILocation(line: 694, column: 23, scope: !1627)
!1629 = !DILocation(line: 702, column: 9, scope: !703)
!1630 = !DILocation(line: 697, column: 14, scope: !719)
!1631 = !DILocation(line: 0, scope: !719)
!1632 = !DILocation(line: 698, column: 17, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 698, column: 17)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 697, column: 68)
!1635 = distinct !DILexicalBlock(scope: !719, file: !3, line: 697, column: 9)
!1636 = !DILocation(line: 697, column: 9, scope: !719)
!1637 = !DILocation(line: 698, column: 17, scope: !1634)
!1638 = !DILocation(line: 699, column: 48, scope: !1633)
!1639 = !DILocation(line: 699, column: 27, scope: !1633)
!1640 = !DILocation(line: 699, column: 24, scope: !1633)
!1641 = !DILocation(line: 699, column: 17, scope: !1633)
!1642 = !DILocation(line: 697, column: 64, scope: !1635)
!1643 = !DILocation(line: 697, column: 44, scope: !1635)
!1644 = distinct !{!1644, !1636, !1645, !873}
!1645 = !DILocation(line: 700, column: 9, scope: !719)
!1646 = !DILocation(line: 702, column: 9, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !703, file: !3, line: 702, column: 9)
!1648 = !DILocation(line: 703, column: 9, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 702, column: 17)
!1650 = !DILocation(line: 704, column: 41, scope: !1649)
!1651 = !DILocation(line: 705, column: 33, scope: !1649)
!1652 = !{!1653, !865, i64 96}
!1653 = !{!"stats", !865, i64 0, !865, i64 8, !865, i64 16, !865, i64 24, !865, i64 32, !865, i64 40, !865, i64 48, !865, i64 56, !865, i64 64, !865, i64 72, !865, i64 80, !865, i64 88, !865, i64 96, !865, i64 104, !865, i64 112, !865, i64 120, !865, i64 128, !865, i64 136, !865, i64 144, !865, i64 152, !865, i64 160, !865, i64 168, !1654, i64 176, !865, i64 192, !865, i64 200}
!1654 = !{!"timeval", !865, i64 0, !865, i64 8}
!1655 = !DILocation(line: 706, column: 9, scope: !1649)
!1656 = !DILocation(line: 707, column: 9, scope: !1649)
!1657 = !DILocation(line: 708, column: 5, scope: !1649)
!1658 = !DILocation(line: 709, column: 5, scope: !703)
!1659 = !DILocation(line: 710, column: 5, scope: !703)
!1660 = !DILocation(line: 711, column: 1, scope: !703)
!1661 = !DISubprogram(name: "STATS_LOCK", scope: !6, file: !6, line: 991, type: !1662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{null}
!1664 = !DISubprogram(name: "STATS_UNLOCK", scope: !6, file: !6, line: 992, type: !1662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1665 = distinct !DISubprogram(name: "lru_crawler_set_client", scope: !3, file: !3, line: 620, type: !1666, scopeLine: 620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1668)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!99, !666, !85, !708}
!1668 = !{!1669, !1670, !1671, !1672}
!1669 = !DILocalVariable(name: "cm", arg: 1, scope: !1665, file: !3, line: 620, type: !666)
!1670 = !DILocalVariable(name: "c", arg: 2, scope: !1665, file: !3, line: 620, type: !85)
!1671 = !DILocalVariable(name: "sfd", arg: 3, scope: !1665, file: !3, line: 620, type: !708)
!1672 = !DILocalVariable(name: "crawlc", scope: !1665, file: !3, line: 621, type: !1673)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!1674 = !DILocation(line: 0, scope: !1665)
!1675 = !DILocation(line: 622, column: 17, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 622, column: 9)
!1677 = !{!849, !848, i64 0}
!1678 = !DILocation(line: 622, column: 19, scope: !1676)
!1679 = !DILocation(line: 622, column: 9, scope: !1665)
!1680 = !DILocation(line: 623, column: 9, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 622, column: 28)
!1682 = !DILocation(line: 625, column: 15, scope: !1665)
!1683 = !DILocation(line: 626, column: 17, scope: !1665)
!1684 = !{!849, !825, i64 8}
!1685 = !DILocation(line: 628, column: 19, scope: !1665)
!1686 = !DILocation(line: 628, column: 17, scope: !1665)
!1687 = !{!849, !848, i64 16}
!1688 = !DILocation(line: 629, column: 21, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 629, column: 9)
!1690 = !DILocation(line: 629, column: 9, scope: !1665)
!1691 = !DILocation(line: 630, column: 9, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 629, column: 30)
!1693 = !DILocation(line: 632, column: 5, scope: !1665)
!1694 = !DILocation(line: 633, column: 1, scope: !1665)
!1695 = distinct !DISubprogram(name: "do_lru_crawler_start", scope: !3, file: !3, line: 582, type: !1696, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1698)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!99, !551, !551}
!1698 = !{!1699, !1700, !1701, !1702}
!1699 = !DILocalVariable(name: "id", arg: 1, scope: !1695, file: !3, line: 582, type: !551)
!1700 = !DILocalVariable(name: "remaining", arg: 2, scope: !1695, file: !3, line: 582, type: !551)
!1701 = !DILocalVariable(name: "sid", scope: !1695, file: !3, line: 583, type: !551)
!1702 = !DILocalVariable(name: "starts", scope: !1695, file: !3, line: 584, type: !99)
!1703 = !DILocation(line: 0, scope: !1695)
!1704 = !DILocation(line: 586, column: 25, scope: !1695)
!1705 = !DILocation(line: 586, column: 5, scope: !1695)
!1706 = !DILocation(line: 587, column: 9, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 587, column: 9)
!1708 = !DILocation(line: 587, column: 23, scope: !1707)
!1709 = !DILocation(line: 587, column: 32, scope: !1707)
!1710 = !DILocation(line: 587, column: 9, scope: !1695)
!1711 = !DILocation(line: 588, column: 22, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 588, column: 13)
!1713 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 587, column: 38)
!1714 = !DILocation(line: 588, column: 30, scope: !1712)
!1715 = !DILocation(line: 588, column: 13, scope: !1713)
!1716 = !DILocation(line: 589, column: 21, scope: !1712)
!1717 = !DILocation(line: 589, column: 13, scope: !1712)
!1718 = !DILocation(line: 590, column: 23, scope: !1713)
!1719 = !DILocation(line: 590, column: 30, scope: !1713)
!1720 = !{!929, !825, i64 32}
!1721 = !DILocation(line: 591, column: 23, scope: !1713)
!1722 = !DILocation(line: 591, column: 28, scope: !1713)
!1723 = !{!929, !823, i64 41}
!1724 = !DILocation(line: 592, column: 32, scope: !1713)
!1725 = !DILocation(line: 593, column: 28, scope: !1713)
!1726 = !DILocation(line: 595, column: 23, scope: !1713)
!1727 = !DILocation(line: 595, column: 28, scope: !1713)
!1728 = !{!929, !825, i64 24}
!1729 = !DILocation(line: 596, column: 23, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 596, column: 13)
!1731 = !DILocation(line: 596, column: 13, scope: !1713)
!1732 = !DILocation(line: 597, column: 41, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 596, column: 53)
!1734 = !DILocation(line: 597, column: 25, scope: !1733)
!1735 = !DILocation(line: 598, column: 9, scope: !1733)
!1736 = !DILocation(line: 606, column: 13, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 606, column: 13)
!1738 = !DILocation(line: 606, column: 13, scope: !1713)
!1739 = !DILocation(line: 606, column: 33, scope: !1737)
!1740 = !DILocation(line: 606, column: 24, scope: !1737)
!1741 = !DILocation(line: 0, scope: !1713)
!1742 = !DILocation(line: 607, column: 35, scope: !1713)
!1743 = !DILocation(line: 607, column: 23, scope: !1713)
!1744 = !DILocation(line: 607, column: 33, scope: !1713)
!1745 = !DILocation(line: 608, column: 37, scope: !1713)
!1746 = !DILocation(line: 608, column: 23, scope: !1713)
!1747 = !DILocation(line: 608, column: 35, scope: !1713)
!1748 = !{!929, !823, i64 40}
!1749 = !DILocation(line: 609, column: 23, scope: !1713)
!1750 = !DILocation(line: 609, column: 33, scope: !1713)
!1751 = !DILocation(line: 611, column: 23, scope: !1713)
!1752 = !DILocation(line: 611, column: 31, scope: !1713)
!1753 = !DILocation(line: 612, column: 28, scope: !1713)
!1754 = !DILocation(line: 612, column: 9, scope: !1713)
!1755 = !DILocation(line: 613, column: 22, scope: !1713)
!1756 = !DILocation(line: 615, column: 5, scope: !1713)
!1757 = !DILocation(line: 616, column: 5, scope: !1695)
!1758 = !DILocation(line: 617, column: 5, scope: !1695)
!1759 = distinct !DISubprogram(name: "lru_crawler_crawl", scope: !3, file: !3, line: 716, type: !1760, scopeLine: 717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1762)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!12, !151, !707, !85, !708, !7}
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1773, !1774}
!1763 = !DILocalVariable(name: "slabs", arg: 1, scope: !1759, file: !3, line: 716, type: !151)
!1764 = !DILocalVariable(name: "type", arg: 2, scope: !1759, file: !3, line: 716, type: !707)
!1765 = !DILocalVariable(name: "c", arg: 3, scope: !1759, file: !3, line: 717, type: !85)
!1766 = !DILocalVariable(name: "sfd", arg: 4, scope: !1759, file: !3, line: 717, type: !708)
!1767 = !DILocalVariable(name: "remaining", arg: 5, scope: !1759, file: !3, line: 717, type: !7)
!1768 = !DILocalVariable(name: "b", scope: !1759, file: !3, line: 718, type: !151)
!1769 = !DILocalVariable(name: "sid", scope: !1759, file: !3, line: 719, type: !551)
!1770 = !DILocalVariable(name: "starts", scope: !1759, file: !3, line: 720, type: !99)
!1771 = !DILocalVariable(name: "tocrawl", scope: !1759, file: !3, line: 721, type: !1772)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 2048, elements: !145)
!1773 = !DILocalVariable(name: "hash_crawl", scope: !1759, file: !3, line: 722, type: !144)
!1774 = !DILocalVariable(name: "p", scope: !1775, file: !3, line: 733, type: !151)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 733, column: 9)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 732, column: 12)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 730, column: 16)
!1778 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 726, column: 9)
!1779 = !DILocation(line: 0, scope: !1759)
!1780 = !DILocation(line: 718, column: 5, scope: !1759)
!1781 = !DILocation(line: 718, column: 11, scope: !1759)
!1782 = !DILocation(line: 719, column: 5, scope: !1759)
!1783 = !DILocation(line: 719, column: 14, scope: !1759)
!1784 = !DILocation(line: 721, column: 5, scope: !1759)
!1785 = !DILocation(line: 721, column: 13, scope: !1759)
!1786 = !DILocation(line: 725, column: 5, scope: !1759)
!1787 = !DILocation(line: 726, column: 9, scope: !1778)
!1788 = !DILocation(line: 726, column: 30, scope: !1778)
!1789 = !DILocation(line: 726, column: 9, scope: !1759)
!1790 = !DILocation(line: 728, column: 26, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 727, column: 51)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 727, column: 9)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 727, column: 9)
!1794 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 726, column: 36)
!1795 = !DILocation(line: 727, column: 47, scope: !1792)
!1796 = !DILocation(line: 727, column: 9, scope: !1793)
!1797 = !DILocation(line: 0, scope: !1793)
!1798 = !DILocation(line: 748, column: 52, scope: !1759)
!1799 = !DILocation(line: 730, column: 16, scope: !1777)
!1800 = !DILocation(line: 730, column: 38, scope: !1777)
!1801 = !DILocation(line: 730, column: 16, scope: !1778)
!1802 = !DILocation(line: 731, column: 20, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 730, column: 44)
!1804 = !DILocation(line: 748, column: 32, scope: !1759)
!1805 = !DILocation(line: 733, column: 24, scope: !1775)
!1806 = !DILocation(line: 0, scope: !1775)
!1807 = !DILocation(line: 734, column: 16, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 733, column: 9)
!1809 = !DILocation(line: 733, column: 9, scope: !1775)
!1810 = !DILocation(line: 737, column: 18, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 737, column: 17)
!1812 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 735, column: 43)
!1813 = !DILocation(line: 737, column: 40, scope: !1811)
!1814 = !DILocation(line: 737, column: 43, scope: !1811)
!1815 = !DILocation(line: 737, column: 47, scope: !1811)
!1816 = !DILocation(line: 738, column: 21, scope: !1811)
!1817 = !DILocation(line: 738, column: 24, scope: !1811)
!1818 = !DILocation(line: 738, column: 28, scope: !1811)
!1819 = !DILocation(line: 737, column: 17, scope: !1812)
!1820 = !DILocation(line: 741, column: 25, scope: !1812)
!1821 = !DILocation(line: 741, column: 13, scope: !1812)
!1822 = !DILocation(line: 741, column: 37, scope: !1812)
!1823 = !DILocation(line: 742, column: 13, scope: !1812)
!1824 = !DILocation(line: 742, column: 36, scope: !1812)
!1825 = !DILocation(line: 743, column: 25, scope: !1812)
!1826 = !DILocation(line: 743, column: 13, scope: !1812)
!1827 = !DILocation(line: 743, column: 37, scope: !1812)
!1828 = !DILocation(line: 744, column: 25, scope: !1812)
!1829 = !DILocation(line: 744, column: 13, scope: !1812)
!1830 = !DILocation(line: 744, column: 37, scope: !1812)
!1831 = !DILocation(line: 735, column: 18, scope: !1808)
!1832 = distinct !{!1832, !1809, !1833, !873}
!1833 = !DILocation(line: 745, column: 9, scope: !1775)
!1834 = !DILocation(line: 739, column: 17, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 738, column: 59)
!1836 = !DILocation(line: 748, column: 14, scope: !1759)
!1837 = !DILocation(line: 749, column: 9, scope: !1759)
!1838 = !DILocation(line: 750, column: 9, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 749, column: 23)
!1840 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 749, column: 9)
!1841 = !DILocation(line: 752, column: 9, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 751, column: 30)
!1843 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 751, column: 16)
!1844 = !DILocation(line: 754, column: 9, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 753, column: 24)
!1846 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 753, column: 16)
!1847 = !DILocation(line: 756, column: 9, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 755, column: 12)
!1849 = !DILocation(line: 758, column: 1, scope: !1759)
!1850 = !DISubprogram(name: "memset", scope: !1250, file: !1250, line: 61, type: !1851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!85, !85, !99, !410}
!1853 = !DISubprogram(name: "strcmp", scope: !1250, file: !1250, line: 137, type: !1854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!99, !1247, !1247}
!1856 = !DISubprogram(name: "strtok_r", scope: !1250, file: !1250, line: 346, type: !1857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!151, !1859, !1246, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !151)
!1860 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1861)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!1862 = !DISubprogram(name: "safe_strtoul", scope: !1863, file: !1863, line: 19, type: !1864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1863 = !DIFile(filename: "./util.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d1ef68c688867746f50aae7567be079a")
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!144, !1247, !1866}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!1867 = distinct !DISubprogram(name: "lru_crawler_pause", scope: !3, file: !3, line: 761, type: !1662, scopeLine: 761, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1178)
!1868 = !DILocation(line: 762, column: 5, scope: !1867)
!1869 = !DILocation(line: 763, column: 1, scope: !1867)
!1870 = distinct !DISubprogram(name: "lru_crawler_resume", scope: !3, file: !3, line: 765, type: !1662, scopeLine: 765, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1178)
!1871 = !DILocation(line: 766, column: 5, scope: !1870)
!1872 = !DILocation(line: 767, column: 1, scope: !1870)
!1873 = distinct !DISubprogram(name: "init_lru_crawler", scope: !3, file: !3, line: 769, type: !1874, scopeLine: 769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1876)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!99, !85}
!1876 = !{!1877}
!1877 = !DILocalVariable(name: "arg", arg: 1, scope: !1873, file: !3, line: 769, type: !85)
!1878 = !DILocation(line: 0, scope: !1873)
!1879 = !DILocation(line: 770, column: 9, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 770, column: 9)
!1881 = !DILocation(line: 770, column: 9, scope: !1873)
!1882 = !DILocation(line: 772, column: 19, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 770, column: 39)
!1884 = !DILocation(line: 772, column: 17, scope: !1883)
!1885 = !DILocation(line: 775, column: 32, scope: !1883)
!1886 = !DILocation(line: 776, column: 33, scope: !1883)
!1887 = !DILocation(line: 777, column: 33, scope: !1883)
!1888 = !DILocation(line: 778, column: 5, scope: !1883)
!1889 = !DILocation(line: 779, column: 5, scope: !1873)
!1890 = !DISubprogram(name: "calloc", scope: !1891, file: !1891, line: 542, type: !1892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1891 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!85, !410, !410}
!1894 = !DISubprogram(name: "pthread_mutex_init", scope: !1174, file: !1174, line: 725, type: !1895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!99, !1177, !1897}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1899)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !91, line: 36, baseType: !1900)
!1900 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !91, line: 32, size: 32, elements: !1901)
!1901 = !{!1902, !1904}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1900, file: !91, line: 34, baseType: !1903, size: 32)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 32, elements: !531)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1900, file: !91, line: 35, baseType: !99, size: 32)
!1905 = !DISubprogram(name: "free", scope: !1891, file: !1891, line: 565, type: !1906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !85}
!1908 = !DISubprogram(name: "item_is_flushed", scope: !1909, file: !1909, line: 29, type: !1910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1909 = !DIFile(filename: "./items.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "24f8c54717bd547418db2338c9044014")
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!99, !503}
!1912 = !DISubprogram(name: "storage_validate_item", scope: !1913, file: !1913, line: 17, type: !1914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1913 = !DIFile(filename: "./storage.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "1366cb74d3c75a613067dc0e748ab303")
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!144, !85, !503}
!1916 = !DISubprogram(name: "storage_delete", scope: !1913, file: !1913, line: 4, type: !1917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !85, !503}
!1919 = !DISubprogram(name: "do_item_unlink_nolock", scope: !1909, file: !1909, line: 22, type: !1920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{null, !503, !1922}
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!1923 = !DISubprogram(name: "do_item_remove", scope: !1909, file: !1909, line: 23, type: !1924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !503}
!1926 = !DISubprogram(name: "uriencode", scope: !1863, file: !1863, line: 5, type: !1927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!144, !1247, !151, !1929, !1929}
!1929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!1930 = !DISubprogram(name: "snprintf", scope: !1189, file: !1189, line: 354, type: !1931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!99, !1859, !410, !1246, null}
!1933 = !DISubprogram(name: "bipbuf_push", scope: !440, file: !440, line: 42, type: !1934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!99, !438, !708}
!1936 = distinct !DISubprogram(name: "lru_crawler_client_getbuf", scope: !3, file: !3, line: 327, type: !1937, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1939)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!99, !1673}
!1939 = !{!1940, !1941, !1942}
!1940 = !DILocalVariable(name: "c", arg: 1, scope: !1936, file: !3, line: 327, type: !1673)
!1941 = !DILocalVariable(name: "buf", scope: !1936, file: !3, line: 328, type: !85)
!1942 = !DILocalVariable(name: "ret", scope: !1943, file: !3, line: 333, type: !99)
!1943 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 331, column: 74)
!1944 = !DILocation(line: 0, scope: !1936)
!1945 = !DILocation(line: 329, column: 12, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 329, column: 9)
!1947 = !DILocation(line: 329, column: 14, scope: !1946)
!1948 = !DILocation(line: 329, column: 9, scope: !1936)
!1949 = !DILocation(line: 329, column: 23, scope: !1946)
!1950 = !DILocation(line: 331, column: 5, scope: !1936)
!1951 = !DILocation(line: 331, column: 37, scope: !1936)
!1952 = !DILocation(line: 331, column: 19, scope: !1936)
!1953 = !DILocation(line: 331, column: 65, scope: !1936)
!1954 = !DILocation(line: 333, column: 19, scope: !1943)
!1955 = !DILocation(line: 0, scope: !1943)
!1956 = !DILocation(line: 334, column: 17, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 334, column: 13)
!1958 = !DILocation(line: 334, column: 13, scope: !1943)
!1959 = !DILocation(line: 334, column: 29, scope: !1957)
!1960 = !DILocation(line: 335, column: 5, scope: !1936)
!1961 = !DILocation(line: 337, column: 15, scope: !1936)
!1962 = !DILocation(line: 337, column: 8, scope: !1936)
!1963 = !DILocation(line: 337, column: 13, scope: !1936)
!1964 = !{!849, !848, i64 24}
!1965 = !DILocation(line: 338, column: 5, scope: !1936)
!1966 = !DILocation(line: 339, column: 1, scope: !1936)
!1967 = !DISubprogram(name: "memcpy", scope: !1250, file: !1250, line: 43, type: !1968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!85, !1299, !1970, !410}
!1970 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !478)
!1971 = !DISubprogram(name: "bipbuf_request", scope: !440, file: !440, line: 41, type: !1972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1974, !438, !708}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!1975 = distinct !DISubprogram(name: "lru_crawler_poll", scope: !3, file: !3, line: 277, type: !1937, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1976)
!1976 = !{!1977, !1978, !1979, !1980, !1988, !1989, !1992, !1993}
!1977 = !DILocalVariable(name: "c", arg: 1, scope: !1975, file: !3, line: 277, type: !1673)
!1978 = !DILocalVariable(name: "data", scope: !1975, file: !3, line: 278, type: !1974)
!1979 = !DILocalVariable(name: "data_size", scope: !1975, file: !3, line: 279, type: !7)
!1980 = !DILocalVariable(name: "to_poll", scope: !1975, file: !3, line: 280, type: !1981)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1982, size: 64, elements: !1225)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1983, line: 36, size: 64, elements: !1984)
!1983 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "97f0939227b389ddf6ce22c8962ba359")
!1984 = !{!1985, !1986, !1987}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1982, file: !1983, line: 38, baseType: !99, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1982, file: !1983, line: 39, baseType: !105, size: 16, offset: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1982, file: !1983, line: 40, baseType: !105, size: 16, offset: 48)
!1988 = !DILocalVariable(name: "ret", scope: !1975, file: !3, line: 284, type: !99)
!1989 = !DILocalVariable(name: "buf", scope: !1990, file: !3, line: 294, type: !1224)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 293, column: 38)
!1991 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 293, column: 9)
!1992 = !DILocalVariable(name: "res", scope: !1990, file: !3, line: 295, type: !99)
!1993 = !DILocalVariable(name: "total", scope: !1994, file: !3, line: 306, type: !99)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 305, column: 50)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 305, column: 20)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 302, column: 13)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 301, column: 63)
!1998 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 301, column: 9)
!1999 = !DILocation(line: 0, scope: !1975)
!2000 = !DILocation(line: 279, column: 5, scope: !1975)
!2001 = !DILocation(line: 279, column: 18, scope: !1975)
!2002 = !DILocation(line: 280, column: 5, scope: !1975)
!2003 = !DILocation(line: 280, column: 19, scope: !1975)
!2004 = !DILocation(line: 281, column: 24, scope: !1975)
!2005 = !DILocation(line: 281, column: 5, scope: !1975)
!2006 = !DILocation(line: 281, column: 16, scope: !1975)
!2007 = !DILocation(line: 281, column: 19, scope: !1975)
!2008 = !{!2009, !825, i64 0}
!2009 = !{!"pollfd", !825, i64 0, !907, i64 4, !907, i64 6}
!2010 = !DILocation(line: 282, column: 16, scope: !1975)
!2011 = !DILocation(line: 282, column: 23, scope: !1975)
!2012 = !{!2009, !907, i64 4}
!2013 = !DILocation(line: 284, column: 15, scope: !1975)
!2014 = !DILocation(line: 286, column: 13, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 286, column: 9)
!2016 = !DILocation(line: 286, column: 9, scope: !1975)
!2017 = !DILocation(line: 288, column: 9, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 286, column: 18)
!2019 = !DILocation(line: 291, column: 13, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 291, column: 9)
!2021 = !DILocation(line: 291, column: 9, scope: !1975)
!2022 = !DILocation(line: 291, column: 19, scope: !2020)
!2023 = !DILocation(line: 293, column: 20, scope: !1991)
!2024 = !{!2009, !907, i64 6}
!2025 = !DILocation(line: 293, column: 28, scope: !1991)
!2026 = !DILocation(line: 293, column: 9, scope: !1975)
!2027 = !DILocation(line: 294, column: 9, scope: !1990)
!2028 = !DILocation(line: 294, column: 14, scope: !1990)
!2029 = !DILocation(line: 295, column: 30, scope: !1990)
!2030 = !DILocation(line: 295, column: 34, scope: !1990)
!2031 = !{!2032, !848, i64 472}
!2032 = !{!"conn", !848, i64 0, !825, i64 8, !826, i64 12, !826, i64 13, !826, i64 14, !826, i64 15, !826, i64 16, !826, i64 17, !826, i64 18, !823, i64 20, !823, i64 24, !825, i64 28, !2033, i64 32, !907, i64 160, !907, i64 162, !848, i64 168, !848, i64 176, !825, i64 184, !825, i64 188, !848, i64 192, !848, i64 200, !848, i64 208, !825, i64 216, !848, i64 224, !825, i64 232, !825, i64 236, !823, i64 240, !825, i64 312, !823, i64 316, !823, i64 320, !823, i64 324, !825, i64 328, !2036, i64 332, !825, i64 360, !826, i64 364, !2038, i64 368, !823, i64 392, !865, i64 416, !865, i64 424, !907, i64 432, !825, i64 436, !825, i64 440, !848, i64 448, !848, i64 456, !848, i64 464, !848, i64 472, !848, i64 480, !848, i64 488}
!2033 = !{!"event", !2034, i64 0, !823, i64 40, !825, i64 56, !848, i64 64, !823, i64 72, !907, i64 104, !907, i64 106, !1654, i64 112}
!2034 = !{!"event_callback", !2035, i64 0, !907, i64 16, !823, i64 18, !823, i64 19, !823, i64 24, !848, i64 32}
!2035 = !{!"", !848, i64 0, !848, i64 8}
!2036 = !{!"sockaddr_in6", !907, i64 0, !907, i64 2, !825, i64 4, !2037, i64 8, !825, i64 24}
!2037 = !{!"in6_addr", !823, i64 0}
!2038 = !{!"", !848, i64 0, !865, i64 8, !865, i64 16}
!2039 = !DILocation(line: 295, column: 19, scope: !1990)
!2040 = !DILocation(line: 0, scope: !1990)
!2041 = !DILocation(line: 296, column: 17, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 296, column: 13)
!2043 = !DILocation(line: 296, column: 22, scope: !2042)
!2044 = !DILocation(line: 296, column: 26, scope: !2042)
!2045 = !DILocation(line: 296, column: 30, scope: !2042)
!2046 = !DILocation(line: 296, column: 36, scope: !2042)
!2047 = !DILocation(line: 296, column: 40, scope: !2042)
!2048 = !DILocation(line: 296, column: 46, scope: !2042)
!2049 = !DILocation(line: 296, column: 56, scope: !2042)
!2050 = !DILocation(line: 296, column: 59, scope: !2042)
!2051 = !DILocation(line: 296, column: 65, scope: !2042)
!2052 = !DILocation(line: 296, column: 13, scope: !1990)
!2053 = !DILocation(line: 297, column: 38, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 296, column: 83)
!2055 = !DILocation(line: 297, column: 13, scope: !2054)
!2056 = !DILocation(line: 300, column: 5, scope: !1991)
!2057 = !DILocation(line: 300, column: 5, scope: !1990)
!2058 = !DILocation(line: 301, column: 36, scope: !1998)
!2059 = !DILocation(line: 301, column: 17, scope: !1998)
!2060 = !DILocation(line: 301, column: 54, scope: !1998)
!2061 = !DILocation(line: 301, column: 9, scope: !1975)
!2062 = !DILocation(line: 302, column: 24, scope: !1996)
!2063 = !DILocation(line: 302, column: 13, scope: !1996)
!2064 = !DILocation(line: 302, column: 32, scope: !1996)
!2065 = !DILocation(line: 302, column: 13, scope: !1997)
!2066 = !DILocation(line: 303, column: 38, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 302, column: 53)
!2068 = !DILocation(line: 303, column: 13, scope: !2067)
!2069 = !DILocation(line: 304, column: 13, scope: !2067)
!2070 = !DILocation(line: 305, column: 39, scope: !1995)
!2071 = !DILocation(line: 305, column: 20, scope: !1996)
!2072 = !DILocation(line: 306, column: 36, scope: !1994)
!2073 = !DILocation(line: 306, column: 40, scope: !1994)
!2074 = !{!2032, !848, i64 488}
!2075 = !DILocation(line: 306, column: 58, scope: !1994)
!2076 = !DILocation(line: 306, column: 25, scope: !1994)
!2077 = !DILocation(line: 0, scope: !1994)
!2078 = !DILocation(line: 307, column: 17, scope: !1994)
!2079 = !DILocation(line: 308, column: 21, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 308, column: 21)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !3, line: 307, column: 30)
!2082 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 307, column: 17)
!2083 = !DILocation(line: 308, column: 27, scope: !2080)
!2084 = !DILocation(line: 308, column: 37, scope: !2080)
!2085 = !DILocation(line: 308, column: 40, scope: !2080)
!2086 = !DILocation(line: 308, column: 46, scope: !2080)
!2087 = !DILocation(line: 308, column: 21, scope: !2081)
!2088 = !DILocation(line: 309, column: 46, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 308, column: 62)
!2090 = !DILocation(line: 309, column: 21, scope: !2089)
!2091 = !DILocation(line: 313, column: 42, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 312, column: 36)
!2093 = distinct !DILexicalBlock(scope: !2082, file: !3, line: 312, column: 24)
!2094 = !DILocation(line: 313, column: 17, scope: !2092)
!2095 = !DILocation(line: 316, column: 32, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 315, column: 20)
!2097 = !DILocation(line: 316, column: 17, scope: !2096)
!2098 = !DILocation(line: 318, column: 9, scope: !1994)
!2099 = !DILocation(line: 319, column: 5, scope: !1997)
!2100 = !DILocation(line: 320, column: 5, scope: !1975)
!2101 = !DILocation(line: 321, column: 1, scope: !1975)
!2102 = !DISubprogram(name: "poll", scope: !1983, file: !1983, line: 54, type: !2103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!99, !2105, !2106, !99}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "nfds_t", file: !1983, line: 33, baseType: !133)
!2107 = distinct !DISubprogram(name: "lru_crawler_close_client", scope: !3, file: !3, line: 112, type: !2108, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2110)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{null, !1673}
!2110 = !{!2111}
!2111 = !DILocalVariable(name: "c", arg: 1, scope: !2107, file: !3, line: 112, type: !1673)
!2112 = !DILocation(line: 0, scope: !2107)
!2113 = !DILocation(line: 114, column: 30, scope: !2107)
!2114 = !DILocation(line: 114, column: 5, scope: !2107)
!2115 = !DILocation(line: 115, column: 10, scope: !2107)
!2116 = !DILocation(line: 116, column: 8, scope: !2107)
!2117 = !DILocation(line: 116, column: 13, scope: !2107)
!2118 = !DILocation(line: 117, column: 20, scope: !2107)
!2119 = !DILocation(line: 117, column: 5, scope: !2107)
!2120 = !DILocation(line: 118, column: 12, scope: !2107)
!2121 = !DILocation(line: 119, column: 1, scope: !2107)
!2122 = !DISubprogram(name: "bipbuf_peek_all", scope: !440, file: !440, line: 62, type: !2123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!1974, !2125, !2127}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2128 = !DISubprogram(name: "bipbuf_poll", scope: !440, file: !440, line: 69, type: !2129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!1974, !438, !2131}
!2131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2132 = !DISubprogram(name: "sidethread_conn_close", scope: !6, file: !6, line: 961, type: !2133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !153}
!2135 = !DISubprogram(name: "bipbuf_free", scope: !440, file: !440, line: 38, type: !2136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !438}
!2138 = distinct !DISubprogram(name: "item_crawl_hash", scope: !3, file: !3, line: 352, type: !1662, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2139)
!2139 = !{!2140, !2141, !2142, !2143}
!2140 = !DILocalVariable(name: "iter", scope: !2138, file: !3, line: 355, type: !85)
!2141 = !DILocalVariable(name: "crawls_persleep", scope: !2138, file: !3, line: 356, type: !99)
!2142 = !DILocalVariable(name: "it", scope: !2138, file: !3, line: 357, type: !503)
!2143 = !DILocalVariable(name: "ret", scope: !2144, file: !3, line: 382, type: !99)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 381, column: 45)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 381, column: 13)
!2146 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 362, column: 38)
!2147 = !DILocation(line: 355, column: 18, scope: !2138)
!2148 = !DILocation(line: 0, scope: !2138)
!2149 = !DILocation(line: 356, column: 36, scope: !2138)
!2150 = !DILocation(line: 357, column: 5, scope: !2138)
!2151 = !DILocation(line: 357, column: 11, scope: !2138)
!2152 = !DILocation(line: 362, column: 12, scope: !2138)
!2153 = !DILocation(line: 362, column: 5, scope: !2138)
!2154 = !DILocation(line: 365, column: 13, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 365, column: 13)
!2156 = !DILocation(line: 365, column: 16, scope: !2155)
!2157 = !DILocation(line: 365, column: 13, scope: !2146)
!2158 = !DILocation(line: 367, column: 32, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 367, column: 17)
!2160 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 365, column: 25)
!2161 = !DILocation(line: 367, column: 35, scope: !2159)
!2162 = !DILocation(line: 367, column: 40, scope: !2159)
!2163 = !DILocation(line: 367, column: 52, scope: !2159)
!2164 = !DILocation(line: 367, column: 43, scope: !2159)
!2165 = !DILocation(line: 367, column: 17, scope: !2160)
!2166 = !DILocation(line: 368, column: 17, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 367, column: 71)
!2168 = !DILocation(line: 369, column: 33, scope: !2167)
!2169 = !DILocation(line: 369, column: 17, scope: !2167)
!2170 = !DILocation(line: 370, column: 17, scope: !2167)
!2171 = !DILocation(line: 371, column: 44, scope: !2167)
!2172 = !DILocation(line: 372, column: 13, scope: !2167)
!2173 = !DILocation(line: 372, column: 34, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 372, column: 24)
!2175 = !DILocation(line: 372, column: 25, scope: !2174)
!2176 = !DILocation(line: 372, column: 24, scope: !2159)
!2177 = !DILocation(line: 374, column: 17, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 372, column: 53)
!2179 = !DILocation(line: 375, column: 17, scope: !2178)
!2180 = !DILocation(line: 376, column: 13, scope: !2178)
!2181 = !DILocation(line: 0, scope: !2159)
!2182 = distinct !{!2182, !2153, !2183, !873}
!2183 = !DILocation(line: 401, column: 5, scope: !2138)
!2184 = !DILocation(line: 381, column: 34, scope: !2145)
!2185 = !DILocation(line: 381, column: 36, scope: !2145)
!2186 = !DILocation(line: 381, column: 13, scope: !2146)
!2187 = !DILocation(line: 382, column: 23, scope: !2144)
!2188 = !DILocation(line: 0, scope: !2144)
!2189 = !DILocation(line: 383, column: 21, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 383, column: 17)
!2191 = !DILocation(line: 383, column: 17, scope: !2144)
!2192 = !DILocation(line: 387, column: 9, scope: !2145)
!2193 = !DILocation(line: 393, column: 13, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 393, column: 13)
!2195 = !DILocation(line: 387, column: 39, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 387, column: 20)
!2197 = !DILocation(line: 387, column: 44, scope: !2196)
!2198 = !DILocation(line: 387, column: 20, scope: !2145)
!2199 = !DILocation(line: 389, column: 13, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 387, column: 58)
!2201 = !DILocation(line: 393, column: 31, scope: !2194)
!2202 = !DILocation(line: 393, column: 13, scope: !2146)
!2203 = !DILocation(line: 394, column: 13, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 393, column: 36)
!2205 = !DILocation(line: 395, column: 13, scope: !2204)
!2206 = !DILocation(line: 400, column: 28, scope: !2146)
!2207 = !DILocation(line: 400, column: 33, scope: !2146)
!2208 = !DILocation(line: 400, column: 9, scope: !2146)
!2209 = !DILocation(line: 404, column: 5, scope: !2138)
!2210 = !DILocation(line: 406, column: 1, scope: !2138)
!2211 = distinct !DISubprogram(name: "lru_crawler_class_done", scope: !3, file: !3, line: 341, type: !2212, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2214)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{null, !99}
!2214 = !{!2215}
!2215 = !DILocalVariable(name: "i", arg: 1, scope: !2211, file: !3, line: 341, type: !99)
!2216 = !DILocation(line: 0, scope: !2211)
!2217 = !DILocation(line: 342, column: 5, scope: !2211)
!2218 = !DILocation(line: 342, column: 17, scope: !2211)
!2219 = !DILocation(line: 342, column: 26, scope: !2211)
!2220 = !DILocation(line: 343, column: 18, scope: !2211)
!2221 = !DILocation(line: 344, column: 26, scope: !2211)
!2222 = !DILocation(line: 344, column: 5, scope: !2211)
!2223 = !DILocation(line: 345, column: 44, scope: !2211)
!2224 = !DILocation(line: 346, column: 25, scope: !2211)
!2225 = !DILocation(line: 346, column: 48, scope: !2211)
!2226 = !DILocation(line: 345, column: 5, scope: !2211)
!2227 = !DILocation(line: 347, column: 27, scope: !2211)
!2228 = !DILocation(line: 347, column: 5, scope: !2211)
!2229 = !DILocation(line: 348, column: 28, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 348, column: 9)
!2231 = !DILocation(line: 348, column: 33, scope: !2230)
!2232 = !{!1363, !848, i64 16}
!2233 = !DILocation(line: 348, column: 43, scope: !2230)
!2234 = !DILocation(line: 348, column: 9, scope: !2211)
!2235 = !DILocation(line: 349, column: 28, scope: !2230)
!2236 = !DILocation(line: 349, column: 9, scope: !2230)
!2237 = !DILocation(line: 350, column: 1, scope: !2211)
!2238 = !DISubprogram(name: "do_item_crawl_q", scope: !1909, file: !1909, line: 34, type: !2239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!503, !503}
!2241 = !DISubprogram(name: "item_trylock", scope: !6, file: !6, line: 983, type: !2242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!85, !551}
!2244 = !DISubprogram(name: "item_trylock_unlock", scope: !6, file: !6, line: 984, type: !1906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2245 = !DISubprogram(name: "usleep", scope: !2246, file: !2246, line: 460, type: !2247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2246 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!99, !2249}
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__useconds_t", file: !132, line: 161, baseType: !7)
!2250 = !DISubprogram(name: "bipbuf_used", scope: !440, file: !440, line: 81, type: !2251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!99, !2125}
!2253 = distinct !DISubprogram(name: "lru_crawler_release_client", scope: !3, file: !3, line: 121, type: !2108, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2254)
!2254 = !{!2255}
!2255 = !DILocalVariable(name: "c", arg: 1, scope: !2253, file: !3, line: 121, type: !1673)
!2256 = !DILocation(line: 123, column: 24, scope: !2253)
!2257 = !DILocation(line: 123, column: 5, scope: !2253)
!2258 = !DILocation(line: 124, column: 10, scope: !2253)
!2259 = !DILocation(line: 125, column: 13, scope: !2253)
!2260 = !DILocation(line: 126, column: 20, scope: !2253)
!2261 = !DILocation(line: 126, column: 5, scope: !2253)
!2262 = !DILocation(line: 127, column: 12, scope: !2253)
!2263 = !DILocation(line: 128, column: 1, scope: !2253)
!2264 = !DISubprogram(name: "assoc_get_iterator", scope: !2265, file: !2265, line: 11, type: !2266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2265 = !DIFile(filename: "./assoc.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d97284e3db472a02a2024ce98e65eb75")
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!85}
!2268 = !DISubprogram(name: "assoc_iterate", scope: !2265, file: !2265, line: 12, type: !2269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!144, !85, !2271}
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!2272 = !DISubprogram(name: "assoc_iterate_final", scope: !2265, file: !2265, line: 13, type: !1906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2273 = !DISubprogram(name: "do_item_unlinktail_q", scope: !1909, file: !1909, line: 33, type: !1924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2274 = !DISubprogram(name: "do_item_stats_add_crawl", scope: !1909, file: !1909, line: 54, type: !2275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{null, !708, !2277, !2277, !2277}
!2277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!2278 = !DISubprogram(name: "redispatch_conn", scope: !6, file: !6, line: 953, type: !2133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2279 = !DISubprogram(name: "bipbuf_new", scope: !440, file: !440, line: 26, type: !2280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!438, !2131}
!2282 = !DISubprogram(name: "do_get_lru_size", scope: !1909, file: !1909, line: 30, type: !2283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!7, !551}
!2285 = !DISubprogram(name: "do_item_linktail_q", scope: !1909, file: !1909, line: 32, type: !1924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1178)
