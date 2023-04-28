; ModuleID = 'thread.c'
source_filename = "thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.settings = type { i64, i32, i32, i32, i8*, i32, i32, i64, i32, i8*, i8*, i32, double, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, double, i32, i32, i8, i32, i8, i8, i8*, i32, i32, i32, i32, double, double, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8, i32, i32, i8*, i32 }
%struct.LIBEVENT_THREAD = type { i64, %struct.event_base*, %struct.event, i32, %struct.thread_stats, [3 x %struct.io_queue_cb_s], %struct.conn_queue*, %struct.cache_t*, %struct._mc_resp_bundle*, %struct.cache_t*, i8*, %struct._logger*, i8*, i32 }
%struct.event_base = type opaque
%struct.event = type { %struct.event_callback, %union.anon.0, i32, %struct.event_base*, %union.anon.2, i16, i16, %struct.timeval }
%struct.event_callback = type { %struct.anon, i16, i8, i8, %union.anon, i8* }
%struct.anon = type { %struct.event_callback*, %struct.event_callback** }
%union.anon = type { void (i32, i16, i8*)* }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.event*, %struct.event** }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.anon.4, %struct.timeval }
%struct.anon.4 = type { %struct.event*, %struct.event** }
%struct.timeval = type { i64, i64 }
%struct.thread_stats = type { %union.pthread_mutex_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [64 x %struct.slab_stats], [256 x i64], i64, i64, i64 }
%struct.slab_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.io_queue_cb_s = type { i8*, void (%struct.io_queue_s*)*, void (%struct.io_queue_s*)*, void (%struct._io_pending_t*)*, void (%struct._io_pending_t*)*, i32 }
%struct.io_queue_s = type { i8*, i8*, i32, i32 }
%struct._io_pending_t = type { i32, %struct.LIBEVENT_THREAD*, %struct.conn*, %struct._mc_resp*, [120 x i8] }
%struct.conn = type { i8**, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.event, i16, i16, i8*, i8*, i32, i32, %struct._mc_resp*, %struct._mc_resp*, i8*, i32, i8*, i32, i32, [3 x %struct.io_queue_s], i32, i32, i32, i32, i32, %struct.sockaddr_in6, i32, i8, %struct.anon.9, %union.protocol_binary_request_header, i64, i64, i16, i32, i32, %struct.conn*, %struct.LIBEVENT_THREAD*, i32 (%struct.conn*)*, i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, %struct.msghdr*, i32)*, i64 (%struct.conn*, i8*, i64)* }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.8 }
%union.anon.8 = type { [4 x i32] }
%struct.anon.9 = type { i8*, i64, i64 }
%union.protocol_binary_request_header = type { %struct.anon.10 }
%struct.anon.10 = type { i8, i8, i16, i8, i8, i16, i32, i32, i64 }
%struct.msghdr = type { i8*, i32, %struct.iovec*, i64, i8*, i64, i32 }
%struct.iovec = type { i8*, i64 }
%struct._mc_resp = type { %struct._mc_resp_bundle*, %struct._mc_resp*, i32, i32, i8*, %struct._io_pending_t*, %struct._stritem*, [4 x %struct.iovec], i32, i8, i8, i8, i8, i16, i16, i16, %struct.sockaddr_in6, i32, [1024 x i8] }
%struct._stritem = type { %struct._stritem*, %struct._stritem*, %struct._stritem*, i32, i32, i32, i16, i16, i8, i8, [0 x %union.anon.7] }
%union.anon.7 = type { i64 }
%struct.conn_queue = type { %struct.conn_ev_head, %union.pthread_mutex_t, %struct.cache_t* }
%struct.conn_ev_head = type { %struct.conn_queue_item*, %struct.conn_queue_item** }
%struct.conn_queue_item = type { i32, i32, i32, i32, i32, i32, %struct.conn*, i8*, i64, i32, %struct._io_pending_t*, %struct.anon.11 }
%struct.anon.11 = type { %struct.conn_queue_item* }
%struct._mc_resp_bundle = type { i8, i8, %struct._mc_resp_bundle*, %struct._mc_resp_bundle*, [0 x %struct._mc_resp] }
%struct.cache_t = type { %union.pthread_mutex_t, i8*, %struct.cache_head, i64, i32, i32, i32, i32 }
%struct.cache_head = type { %struct.cache_free_s*, %struct.cache_free_s** }
%struct.cache_free_s = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.cache_free_s* }
%struct._logger = type { %struct._logger*, %struct._logger*, %union.pthread_mutex_t, i64, i64, i64, i16, i16, i16, %struct.bipbuf_t*, %struct._entry_details* }
%struct.bipbuf_t = type { i64, i32, i32, i32, i32, [0 x i8] }
%struct._entry_details = type { i32, i16, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)*, i32 (%struct._logentry*, i8*)*, i8* }
%struct._logentry = type { i32, i8, i16, i64, %struct.timeval, i32, [0 x %union.anon.13] }
%union.anon.13 = type { i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon.14, %union.anon.16, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i64 }
%struct.stats_state = type { i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.timeval, i64, i64 }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, i64* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_condattr_t = type { i32 }
%struct.event_config = type opaque
%union.pthread_attr_t = type { i64, [48 x i8] }

@conn_lock = dso_local global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !0
@item_locks = internal unnamed_addr global %union.pthread_mutex_t* null, align 8, !dbg !695
@item_lock_hashpower = dso_local local_unnamed_addr global i32 0, align 4, !dbg !699
@worker_hang_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !693
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [23 x i8] c"Unknown lock type: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"1 == 0\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"thread.c\00", align 1
@__PRETTY_FUNCTION__.pause_threads = private unnamed_addr constant [44 x i8] c"void pause_threads(enum pause_thread_types)\00", align 1
@init_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !703
@init_count = internal unnamed_addr global i32 0, align 4, !dbg !746
@settings = external dso_local local_unnamed_addr global %struct.settings, align 8
@threads = internal unnamed_addr global %struct.LIBEVENT_THREAD* null, align 8, !dbg !701
@.str.3 = private unnamed_addr constant [15 x i8] c"stopped assoc\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"asking workers to stop\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"asking background threads to stop\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"stopped lru crawler\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"stopped maintainer\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"stopped slab mover\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"stopped logger thread\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"stopped idle timeout thread\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"closing connections\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"reaping worker threads\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"all background threads stopped\0A\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"Failed to allocate memory for connection object\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"<%d connection closing from side thread.\0A\00", align 1
@hash = external dso_local local_unnamed_addr global i32 (i8*, i64)*, align 8
@stats_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !752
@lru_locks = dso_local global [256 x %union.pthread_mutex_t] zeroinitializer, align 16, !dbg !690
@init_cond = internal global %union.pthread_cond_t zeroinitializer, align 8, !dbg !705
@hashpower = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [81 x i8] c"Hash table power size (%d) cannot be equal to or less than item lock table (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"Item lock table grows with `-t N` (worker threadcount)\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"Hash table grows with `-o hashpower=N` \0A\00", align 1
@item_lock_count = internal unnamed_addr global i32 0, align 4, !dbg !697
@.str.19 = private unnamed_addr constant [26 x i8] c"Can't allocate item locks\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Can't allocate thread descriptors\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"failed creating eventfd for worker thread\00", align 1
@stats_state = external dso_local local_unnamed_addr global %struct.stats_state, align 8
@last_thread = internal unnamed_addr global i32 -1, align 4, !dbg !748
@stats = external dso_local local_unnamed_addr global %struct.stats, align 8
@last_thread_by_napi_id = internal unnamed_addr global i32 -1, align 4, !dbg !750
@.str.22 = private unnamed_addr constant [33 x i8] c"failed writing to worker eventfd\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"Can't allocate event base\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"Can't monitor libevent notify pipe\0A\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"Failed to allocate memory for connection queue\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Failed to initialize mutex\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"rbuf\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"Failed to create read buffer cache\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"Failed to create IO object cache\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Can't read from libevent pipe\0A\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"Can't listen for events on UDP socket\0A\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"Can't listen for events on fd %d\0A\00", align 1
@conns = external dso_local local_unnamed_addr global %struct.conn**, align 8
@.str.34 = private unnamed_addr constant [3 x i8] c"cq\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"Failed to create connection queue cache\0A\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"Can't create thread: %s\0A\00", align 1
@__llvm_gcov_ctr = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.40 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.41 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.42 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.43 = internal global [16 x i64] zeroinitializer
@__llvm_gcov_ctr.44 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.45 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.49 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.50 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.51 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.52 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.53 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.54 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.55 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.56 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.57 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.58 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.59 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.60 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.61 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.62 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.63 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.64 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.65 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.66 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.67 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.68 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.69 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.70 = internal global [14 x i64] zeroinitializer
@__llvm_gcov_ctr.71 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.72 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.73 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.74 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.75 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.76 = internal global [16 x i64] zeroinitializer
@__llvm_gcov_ctr.77 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.78 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.79 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.80 = internal global [1 x i64] zeroinitializer
@0 = private unnamed_addr constant [54 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/thread.gcda\00", align 1
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [45 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 600827113, i32 -1660871619 }, %emit_function_args_ty { i32 1, i32 -292656562, i32 -1660871619 }, %emit_function_args_ty { i32 2, i32 -1193088581, i32 -1660871619 }, %emit_function_args_ty { i32 3, i32 -1821574159, i32 -1660871619 }, %emit_function_args_ty { i32 4, i32 1919119979, i32 -1660871619 }, %emit_function_args_ty { i32 5, i32 -346311228, i32 -1660871619 }, %emit_function_args_ty { i32 6, i32 1038554796, i32 -1660871619 }, %emit_function_args_ty { i32 7, i32 -1323037035, i32 -1660871619 }, %emit_function_args_ty { i32 8, i32 -87928052, i32 -1660871619 }, %emit_function_args_ty { i32 9, i32 -373474690, i32 -1660871619 }, %emit_function_args_ty { i32 10, i32 667686211, i32 -1660871619 }, %emit_function_args_ty { i32 11, i32 883349117, i32 -1660871619 }, %emit_function_args_ty { i32 12, i32 -549589393, i32 -1660871619 }, %emit_function_args_ty { i32 13, i32 23837509, i32 -1660871619 }, %emit_function_args_ty { i32 14, i32 -1756802340, i32 -1660871619 }, %emit_function_args_ty { i32 15, i32 -1390260643, i32 -1660871619 }, %emit_function_args_ty { i32 16, i32 -1726243565, i32 -1660871619 }, %emit_function_args_ty { i32 17, i32 858564632, i32 -1660871619 }, %emit_function_args_ty { i32 18, i32 1356619847, i32 -1660871619 }, %emit_function_args_ty { i32 19, i32 -1199599848, i32 -1660871619 }, %emit_function_args_ty { i32 20, i32 -1923862751, i32 -1660871619 }, %emit_function_args_ty { i32 21, i32 -1026006509, i32 -1660871619 }, %emit_function_args_ty { i32 22, i32 527789463, i32 -1660871619 }, %emit_function_args_ty { i32 23, i32 -355144446, i32 -1660871619 }, %emit_function_args_ty { i32 24, i32 956471724, i32 -1660871619 }, %emit_function_args_ty { i32 25, i32 -1119267239, i32 -1660871619 }, %emit_function_args_ty { i32 26, i32 238332308, i32 -1660871619 }, %emit_function_args_ty { i32 27, i32 60410601, i32 -1660871619 }, %emit_function_args_ty { i32 28, i32 557328881, i32 -1660871619 }, %emit_function_args_ty { i32 29, i32 -983466684, i32 -1660871619 }, %emit_function_args_ty { i32 30, i32 -181814241, i32 -1660871619 }, %emit_function_args_ty { i32 31, i32 2127185103, i32 -1660871619 }, %emit_function_args_ty { i32 32, i32 -1760416024, i32 -1660871619 }, %emit_function_args_ty { i32 33, i32 1664871909, i32 -1660871619 }, %emit_function_args_ty { i32 34, i32 1016191881, i32 -1660871619 }, %emit_function_args_ty { i32 35, i32 -1457919681, i32 -1660871619 }, %emit_function_args_ty { i32 36, i32 -944983725, i32 -1660871619 }, %emit_function_args_ty { i32 37, i32 339269266, i32 -1660871619 }, %emit_function_args_ty { i32 38, i32 2057092454, i32 -1660871619 }, %emit_function_args_ty { i32 39, i32 155185055, i32 -1660871619 }, %emit_function_args_ty { i32 40, i32 -848451818, i32 -1660871619 }, %emit_function_args_ty { i32 41, i32 -282160458, i32 -1660871619 }, %emit_function_args_ty { i32 42, i32 -23180568, i32 -1660871619 }, %emit_function_args_ty { i32 43, i32 -312561541, i32 -1660871619 }, %emit_function_args_ty { i32 44, i32 1274380910, i32 -1660871619 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [45 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.37, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.38, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.39, i32 0, i32 0) }, %emit_arcs_args_ty { i32 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.40, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.41, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.42, i32 0, i32 0) }, %emit_arcs_args_ty { i32 16, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.44, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.45, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.46, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.47, i32 0, i32 0) }, %emit_arcs_args_ty { i32 7, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.48, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.49, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.50, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.51, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.52, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.53, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.54, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.55, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.56, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.57, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.58, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.59, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.60, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.61, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.62, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.63, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.64, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.65, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.66, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.67, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.68, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.69, i32 0, i32 0) }, %emit_arcs_args_ty { i32 14, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i32 0, i32 0) }, %emit_arcs_args_ty { i32 10, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.72, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.73, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.74, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.75, i32 0, i32 0) }, %emit_arcs_args_ty { i32 16, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.77, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.78, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.79, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.80, i32 0, i32 0) }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: noinline nounwind uwtable
define dso_local void @item_lock(i32 noundef %hv) local_unnamed_addr #0 !dbg !760 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 %hv, metadata !764, metadata !DIExpression()), !dbg !765
  %1 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** @item_locks, align 8, !dbg !766, !tbaa !767
  %conv = zext i32 %hv to i64, !dbg !766
  %2 = load i32, i32* @item_lock_hashpower, align 4, !dbg !766, !tbaa !771
  %sh_prom = zext i32 %2 to i64, !dbg !766
  %notmask = shl nsw i64 -1, %sh_prom, !dbg !766
  %sub = xor i64 %notmask, -1, !dbg !766
  %and = and i64 %sub, %conv, !dbg !766
  %arrayidx = getelementptr inbounds %union.pthread_mutex_t, %union.pthread_mutex_t* %1, i64 %and, !dbg !766
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %arrayidx) #12, !dbg !766
  ret void, !dbg !773
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !774 dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @item_trylock(i32 noundef %hv) local_unnamed_addr #0 !dbg !779 {
entry:
  call void @llvm.dbg.value(metadata i32 %hv, metadata !783, metadata !DIExpression()), !dbg !785
  %0 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** @item_locks, align 8, !dbg !786, !tbaa !767
  %conv = zext i32 %hv to i64, !dbg !787
  %1 = load i32, i32* @item_lock_hashpower, align 4, !dbg !788, !tbaa !771
  %sh_prom = zext i32 %1 to i64, !dbg !788
  %notmask = shl nsw i64 -1, %sh_prom, !dbg !788
  %sub = xor i64 %notmask, -1, !dbg !788
  %and = and i64 %sub, %conv, !dbg !789
  %arrayidx = getelementptr inbounds %union.pthread_mutex_t, %union.pthread_mutex_t* %0, i64 %and, !dbg !786
  call void @llvm.dbg.value(metadata %union.pthread_mutex_t* %arrayidx, metadata !784, metadata !DIExpression()), !dbg !785
  %call = tail call i32 @pthread_mutex_trylock(%union.pthread_mutex_t* noundef %arrayidx) #12, !dbg !790
  %cmp = icmp eq i32 %call, 0, !dbg !792
  br i1 %cmp, label %if.then, label %if.end, !dbg !793

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 0), align 8, !dbg !794
  %2 = add i64 %gcov_ctr, 1, !dbg !794
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 0), align 8, !dbg !794
  %3 = bitcast %union.pthread_mutex_t* %arrayidx to i8*, !dbg !794
  br label %cleanup, !dbg !796

if.end:                                           ; preds = %entry
  %gcov_ctr2 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 1), align 8, !dbg !797
  %4 = add i64 %gcov_ctr2, 1, !dbg !797
  store i64 %4, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.37, i64 0, i64 1), align 8, !dbg !797
  br label %cleanup, !dbg !797

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %3, %if.then ], [ null, %if.end ], !dbg !785
  ret i8* %retval.0, !dbg !798
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare !dbg !799 dso_local i32 @pthread_mutex_trylock(%union.pthread_mutex_t* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @item_trylock_unlock(i8* noundef %lock) local_unnamed_addr #0 !dbg !800 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %lock, metadata !804, metadata !DIExpression()), !dbg !805
  %1 = bitcast i8* %lock to %union.pthread_mutex_t*, !dbg !806
  %call = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %1) #12, !dbg !806
  ret void, !dbg !807
}

; Function Attrs: nounwind
declare !dbg !808 dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @item_unlock(i32 noundef %hv) local_unnamed_addr #0 !dbg !809 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.39, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.39, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 %hv, metadata !811, metadata !DIExpression()), !dbg !812
  %1 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** @item_locks, align 8, !dbg !813, !tbaa !767
  %conv = zext i32 %hv to i64, !dbg !813
  %2 = load i32, i32* @item_lock_hashpower, align 4, !dbg !813, !tbaa !771
  %sh_prom = zext i32 %2 to i64, !dbg !813
  %notmask = shl nsw i64 -1, %sh_prom, !dbg !813
  %sub = xor i64 %notmask, -1, !dbg !813
  %and = and i64 %sub, %conv, !dbg !813
  %arrayidx = getelementptr inbounds %union.pthread_mutex_t, %union.pthread_mutex_t* %1, i64 %and, !dbg !813
  %call = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %arrayidx) #12, !dbg !813
  ret void, !dbg !814
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @pause_threads(i32 noundef %type) local_unnamed_addr #0 !dbg !815 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !819, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata i8 0, metadata !821, metadata !DIExpression()), !dbg !822
  switch i32 %type, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ], !dbg !823

sw.bb:                                            ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.40, i64 0, i64 0), align 16, !dbg !824
  %0 = add i64 %gcov_ctr, 1, !dbg !824
  store i64 %0, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.40, i64 0, i64 0), align 16, !dbg !824
  tail call void @slabs_rebalancer_pause() #12, !dbg !824
  tail call void @lru_maintainer_pause() #12, !dbg !826
  tail call void @lru_crawler_pause() #12, !dbg !827
  tail call void @storage_compact_pause() #12, !dbg !828
  tail call void @storage_write_pause() #12, !dbg !829
  br label %sw.bb1, !dbg !829

sw.bb1:                                           ; preds = %entry, %sw.bb
  call void @llvm.dbg.value(metadata i8 1, metadata !821, metadata !DIExpression()), !dbg !822
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @worker_hang_lock) #12, !dbg !830
  call void @llvm.dbg.value(metadata i8 undef, metadata !821, metadata !DIExpression()), !dbg !822
  %call6 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @init_lock) #12, !dbg !831
  store i32 0, i32* @init_count, align 4, !dbg !832, !tbaa !771
  call void @llvm.dbg.value(metadata i32 0, metadata !820, metadata !DIExpression()), !dbg !822
  %1 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 14), align 4, !dbg !833, !tbaa !836
  %cmp20 = icmp sgt i32 %1, 0, !dbg !841
  br i1 %cmp20, label %for.body, label %for.end, !dbg !842

sw.bb2:                                           ; preds = %entry
  %gcov_ctr9 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.40, i64 0, i64 1), align 8, !dbg !843
  %2 = add i64 %gcov_ctr9, 1, !dbg !843
  store i64 %2, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.40, i64 0, i64 1), align 8, !dbg !843
  tail call void @slabs_rebalancer_resume() #12, !dbg !843
  tail call void @lru_maintainer_resume() #12, !dbg !844
  tail call void @lru_crawler_resume() #12, !dbg !845
  tail call void @storage_compact_resume() #12, !dbg !846
  tail call void @storage_write_resume() #12, !dbg !847
  br label %sw.bb3, !dbg !847

sw.bb3:                                           ; preds = %entry, %sw.bb2
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.40, i64 0, i64 2), align 16, !dbg !848
  %3 = add i64 %gcov_ctr10, 1, !dbg !848
  store i64 %3, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.40, i64 0, i64 2), align 16, !dbg !848
  %call4 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @worker_hang_lock) #12, !dbg !848
  call void @llvm.dbg.value(metadata i8 undef, metadata !821, metadata !DIExpression()), !dbg !822
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.40, i64 0, i64 4), align 16
  %4 = add i64 %gcov_ctr12, 1
  store i64 %4, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.40, i64 0, i64 4), align 16
  br label %cleanup, !dbg !849

sw.default:                                       ; preds = %entry
  %gcov_ctr11 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.40, i64 0, i64 3), align 8, !dbg !852
  %5 = add i64 %gcov_ctr11, 1, !dbg !852
  store i64 %5, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.40, i64 0, i64 3), align 8, !dbg !852
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !852, !tbaa !767
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %type) #12, !dbg !853
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.pause_threads, i64 0, i64 0)) #13, !dbg !854
  unreachable, !dbg !854

for.body:                                         ; preds = %sw.bb1, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %sw.bb1 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !820, metadata !DIExpression()), !dbg !822
  %7 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** @threads, align 8, !dbg !857, !tbaa !767
  %arrayidx = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %7, i64 %indvars.iv, !dbg !857
  tail call fastcc void @notify_worker_fd(%struct.LIBEVENT_THREAD* noundef %arrayidx, i32 noundef 0, i32 noundef 1) #14, !dbg !859
  %gcov_ctr13 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.40, i64 0, i64 5), align 8, !dbg !860
  %8 = add i64 %gcov_ctr13, 1, !dbg !860
  store i64 %8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.40, i64 0, i64 5), align 8, !dbg !860
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !860
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !820, metadata !DIExpression()), !dbg !822
  %9 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 14), align 4, !dbg !833, !tbaa !836
  %10 = sext i32 %9 to i64, !dbg !841
  %cmp = icmp slt i64 %indvars.iv.next, %10, !dbg !841
  br i1 %cmp, label %for.body, label %for.end, !dbg !842, !llvm.loop !861

for.end:                                          ; preds = %for.body, %sw.bb1
  %.lcssa = phi i32 [ %1, %sw.bb1 ], [ %9, %for.body ], !dbg !833
  %gcov_ctr14 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.40, i64 0, i64 6), align 16, !dbg !864
  %11 = add i64 %gcov_ctr14, 1, !dbg !864
  store i64 %11, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.40, i64 0, i64 6), align 16, !dbg !864
  tail call fastcc void @wait_for_thread_registration(i32 noundef %.lcssa) #14, !dbg !865
  %call7 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @init_lock) #12, !dbg !866
  br label %cleanup, !dbg !867

cleanup:                                          ; preds = %for.end, %sw.bb3
  ret void, !dbg !867
}

declare !dbg !868 dso_local void @slabs_rebalancer_pause() local_unnamed_addr #4

declare !dbg !872 dso_local void @lru_maintainer_pause() local_unnamed_addr #4

declare !dbg !874 dso_local void @lru_crawler_pause() local_unnamed_addr #4

declare !dbg !876 dso_local void @storage_compact_pause() local_unnamed_addr #4

declare !dbg !878 dso_local void @storage_write_pause() local_unnamed_addr #4

declare !dbg !879 dso_local void @slabs_rebalancer_resume() local_unnamed_addr #4

declare !dbg !880 dso_local void @lru_maintainer_resume() local_unnamed_addr #4

declare !dbg !881 dso_local void @lru_crawler_resume() local_unnamed_addr #4

declare !dbg !882 dso_local void @storage_compact_resume() local_unnamed_addr #4

declare !dbg !883 dso_local void @storage_write_resume() local_unnamed_addr #4

declare !dbg !884 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @notify_worker_fd(%struct.LIBEVENT_THREAD* nocapture noundef readonly %t, i32 noundef %sfd, i32 noundef %mode) unnamed_addr #0 !dbg !945 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.41, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.41, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.LIBEVENT_THREAD* %t, metadata !949, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32 %sfd, metadata !950, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32 %mode, metadata !951, metadata !DIExpression()), !dbg !955
  %ev_queue = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %t, i64 0, i32 6
  %1 = load %struct.conn_queue*, %struct.conn_queue** %ev_queue, align 8, !dbg !956, !tbaa !957
  %call8 = tail call fastcc %struct.conn_queue_item* @cqi_new(%struct.conn_queue* noundef %1) #14, !dbg !965
  call void @llvm.dbg.value(metadata %struct.conn_queue_item* %call8, metadata !952, metadata !DIExpression()), !dbg !955
  %cmp9 = icmp eq %struct.conn_queue_item* %call8, null, !dbg !966
  br i1 %cmp9, label %while.body, label %while.end, !dbg !967

while.body:                                       ; preds = %entry, %while.body
  %gcov_ctr3 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.41, i64 0, i64 1), align 8, !dbg !967
  %2 = add i64 %gcov_ctr3, 1, !dbg !967
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.41, i64 0, i64 1), align 8, !dbg !967
  %3 = load %struct.conn_queue*, %struct.conn_queue** %ev_queue, align 8, !dbg !956, !tbaa !957
  %call = tail call fastcc %struct.conn_queue_item* @cqi_new(%struct.conn_queue* noundef %3) #14, !dbg !965
  call void @llvm.dbg.value(metadata %struct.conn_queue_item* %call, metadata !952, metadata !DIExpression()), !dbg !955
  %cmp = icmp eq %struct.conn_queue_item* %call, null, !dbg !966
  br i1 %cmp, label %while.body, label %while.end, !dbg !967, !llvm.loop !968

while.end:                                        ; preds = %while.body, %entry
  %call.lcssa = phi %struct.conn_queue_item* [ %call8, %entry ], [ %call, %while.body ], !dbg !965
  %mode1 = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call.lcssa, i64 0, i32 5, !dbg !970
  store i32 %mode, i32* %mode1, align 4, !dbg !971, !tbaa !972
  %sfd2 = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call.lcssa, i64 0, i32 0, !dbg !975
  store i32 %sfd, i32* %sfd2, align 8, !dbg !976, !tbaa !977
  tail call fastcc void @notify_worker(%struct.LIBEVENT_THREAD* noundef nonnull %t, %struct.conn_queue_item* noundef nonnull %call.lcssa) #14, !dbg !978
  ret void, !dbg !979
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @wait_for_thread_registration(i32 noundef %nthreads) unnamed_addr #0 !dbg !980 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.42, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.42, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 %nthreads, metadata !984, metadata !DIExpression()), !dbg !985
  %1 = load i32, i32* @init_count, align 4, !dbg !986, !tbaa !771
  %cmp2 = icmp slt i32 %1, %nthreads, !dbg !987
  br i1 %cmp2, label %while.body, label %while.end, !dbg !988

while.body:                                       ; preds = %entry, %while.body
  %gcov_ctr1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.42, i64 0, i64 1), align 8, !dbg !989
  %2 = add i64 %gcov_ctr1, 1, !dbg !989
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.42, i64 0, i64 1), align 8, !dbg !989
  %call = tail call i32 @pthread_cond_wait(%union.pthread_cond_t* noundef nonnull @init_cond, %union.pthread_mutex_t* noundef nonnull @init_lock) #12, !dbg !989
  %3 = load i32, i32* @init_count, align 4, !dbg !986, !tbaa !771
  %cmp = icmp slt i32 %3, %nthreads, !dbg !987
  br i1 %cmp, label %while.body, label %while.end, !dbg !988, !llvm.loop !991

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !993
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @stop_threads() local_unnamed_addr #0 !dbg !994 {
entry:
  tail call void @stop_assoc_maintenance_thread() #12, !dbg !997
  %0 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !998, !tbaa !1000
  %cmp = icmp sgt i32 %0, 0, !dbg !1001
  br i1 %cmp, label %if.end, label %if.end4, !dbg !1002

if.end:                                           ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 0), align 16, !dbg !1003
  %1 = add i64 %gcov_ctr, 1, !dbg !1003
  store i64 %1, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 0), align 16, !dbg !1003
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1003, !tbaa !767
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)) #12, !dbg !1004
  %.pr = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1005, !tbaa !1000
  %cmp1 = icmp sgt i32 %.pr, 0, !dbg !1007
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !1008

if.then2:                                         ; preds = %if.end
  %gcov_ctr63 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 1), align 8, !dbg !1009
  %3 = add i64 %gcov_ctr63, 1, !dbg !1009
  store i64 %3, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 1), align 8, !dbg !1009
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1009, !tbaa !767
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !1010
  br label %if.end4, !dbg !1010

if.end4:                                          ; preds = %entry, %if.then2, %if.end
  %call5 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @worker_hang_lock) #12, !dbg !1011
  %call6 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @init_lock) #12, !dbg !1012
  store i32 0, i32* @init_count, align 4, !dbg !1013, !tbaa !771
  call void @llvm.dbg.value(metadata i32 0, metadata !996, metadata !DIExpression()), !dbg !1014
  %5 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 14), align 4, !dbg !1015, !tbaa !836
  %cmp787 = icmp sgt i32 %5, 0, !dbg !1018
  br i1 %cmp787, label %for.body, label %for.end, !dbg !1019

for.body:                                         ; preds = %if.end4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end4 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !996, metadata !DIExpression()), !dbg !1014
  %6 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** @threads, align 8, !dbg !1020, !tbaa !767
  %arrayidx = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %6, i64 %indvars.iv, !dbg !1020
  tail call fastcc void @notify_worker_fd(%struct.LIBEVENT_THREAD* noundef %arrayidx, i32 noundef 0, i32 noundef 4) #14, !dbg !1022
  %gcov_ctr64 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 2), align 16, !dbg !1023
  %7 = add i64 %gcov_ctr64, 1, !dbg !1023
  store i64 %7, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 2), align 16, !dbg !1023
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1023
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !996, metadata !DIExpression()), !dbg !1014
  %8 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 14), align 4, !dbg !1015, !tbaa !836
  %9 = sext i32 %8 to i64, !dbg !1018
  %cmp7 = icmp slt i64 %indvars.iv.next, %9, !dbg !1018
  br i1 %cmp7, label %for.body, label %for.end, !dbg !1019, !llvm.loop !1024

for.end:                                          ; preds = %for.body, %if.end4
  %.lcssa = phi i32 [ %5, %if.end4 ], [ %8, %for.body ], !dbg !1015
  tail call fastcc void @wait_for_thread_registration(i32 noundef %.lcssa) #14, !dbg !1026
  %call8 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @init_lock) #12, !dbg !1027
  %10 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1028, !tbaa !1000
  %cmp9 = icmp sgt i32 %10, 0, !dbg !1030
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1031

if.then10:                                        ; preds = %for.end
  %gcov_ctr65 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 3), align 8, !dbg !1032
  %11 = add i64 %gcov_ctr65, 1, !dbg !1032
  store i64 %11, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 3), align 8, !dbg !1032
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1032, !tbaa !767
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !1033
  br label %if.end12, !dbg !1033

if.end12:                                         ; preds = %if.then10, %for.end
  %call13 = tail call i32 @stop_item_crawler_thread(i1 noundef zeroext true) #12, !dbg !1034
  %13 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1035, !tbaa !1000
  %cmp14 = icmp sgt i32 %13, 0, !dbg !1037
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !1038

if.then15:                                        ; preds = %if.end12
  %gcov_ctr66 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 4), align 16, !dbg !1039
  %14 = add i64 %gcov_ctr66, 1, !dbg !1039
  store i64 %14, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 4), align 16, !dbg !1039
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1039, !tbaa !767
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !1040
  br label %if.end17, !dbg !1040

if.end17:                                         ; preds = %if.then15, %if.end12
  %16 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 29), align 1, !dbg !1041, !tbaa !1043, !range !1044
  %tobool.not = icmp eq i8 %16, 0, !dbg !1041
  br i1 %tobool.not, label %if.end24, label %if.then18, !dbg !1045

if.then18:                                        ; preds = %if.end17
  %call19 = tail call i32 @stop_lru_maintainer_thread() #12, !dbg !1046
  %17 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1048, !tbaa !1000
  %cmp20 = icmp sgt i32 %17, 0, !dbg !1050
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !1051

if.then21:                                        ; preds = %if.then18
  %gcov_ctr67 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 5), align 8, !dbg !1052
  %18 = add i64 %gcov_ctr67, 1, !dbg !1052
  store i64 %18, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 5), align 8, !dbg !1052
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1052, !tbaa !767
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !1053
  br label %if.end23, !dbg !1053

if.end23:                                         ; preds = %if.then21, %if.then18
  %gcov_ctr68 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 6), align 16, !dbg !1054
  %20 = add i64 %gcov_ctr68, 1, !dbg !1054
  store i64 %20, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 6), align 16, !dbg !1054
  br label %if.end24, !dbg !1054

if.end24:                                         ; preds = %if.end23, %if.end17
  %21 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 31), align 1, !dbg !1055, !tbaa !1057, !range !1044
  %tobool25.not = icmp eq i8 %21, 0, !dbg !1055
  br i1 %tobool25.not, label %if.end31, label %if.then26, !dbg !1058

if.then26:                                        ; preds = %if.end24
  tail call void @stop_slab_maintenance_thread() #12, !dbg !1059
  %22 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1061, !tbaa !1000
  %cmp27 = icmp sgt i32 %22, 0, !dbg !1063
  br i1 %cmp27, label %if.then28, label %if.end30, !dbg !1064

if.then28:                                        ; preds = %if.then26
  %gcov_ctr69 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 7), align 8, !dbg !1065
  %23 = add i64 %gcov_ctr69, 1, !dbg !1065
  store i64 %23, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 7), align 8, !dbg !1065
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1065, !tbaa !767
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !1066
  br label %if.end30, !dbg !1066

if.end30:                                         ; preds = %if.then28, %if.then26
  %gcov_ctr70 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 8), align 16, !dbg !1067
  %25 = add i64 %gcov_ctr70, 1, !dbg !1067
  store i64 %25, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 8), align 16, !dbg !1067
  br label %if.end31, !dbg !1067

if.end31:                                         ; preds = %if.end30, %if.end24
  tail call void @logger_stop() #12, !dbg !1068
  %26 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1069, !tbaa !1000
  %cmp32 = icmp sgt i32 %26, 0, !dbg !1071
  br i1 %cmp32, label %if.then33, label %if.end35, !dbg !1072

if.then33:                                        ; preds = %if.end31
  %gcov_ctr71 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 9), align 8, !dbg !1073
  %27 = add i64 %gcov_ctr71, 1, !dbg !1073
  store i64 %27, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 9), align 8, !dbg !1073
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1073, !tbaa !767
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !1074
  br label %if.end35, !dbg !1074

if.end35:                                         ; preds = %if.then33, %if.end31
  %call36 = tail call i32 @stop_conn_timeout_thread() #12, !dbg !1075
  %29 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1076, !tbaa !1000
  %cmp37 = icmp sgt i32 %29, 0, !dbg !1078
  br i1 %cmp37, label %if.end40, label %if.end44, !dbg !1079

if.end40:                                         ; preds = %if.end35
  %gcov_ctr72 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 10), align 16, !dbg !1080
  %30 = add i64 %gcov_ctr72, 1, !dbg !1080
  store i64 %30, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 10), align 16, !dbg !1080
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1080, !tbaa !767
  %call39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !1081
  %.pr85 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1082, !tbaa !1000
  %cmp41 = icmp sgt i32 %.pr85, 0, !dbg !1084
  br i1 %cmp41, label %if.then42, label %if.end44, !dbg !1085

if.then42:                                        ; preds = %if.end40
  %gcov_ctr73 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 11), align 8, !dbg !1086
  %32 = add i64 %gcov_ctr73, 1, !dbg !1086
  store i64 %32, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 11), align 8, !dbg !1086
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1086, !tbaa !767
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !1087
  br label %if.end44, !dbg !1087

if.end44:                                         ; preds = %if.end35, %if.then42, %if.end40
  tail call void @conn_close_all() #12, !dbg !1088
  %call45 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @worker_hang_lock) #12, !dbg !1089
  %34 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1090, !tbaa !1000
  %cmp46 = icmp sgt i32 %34, 0, !dbg !1092
  br i1 %cmp46, label %if.then47, label %if.end49, !dbg !1093

if.then47:                                        ; preds = %if.end44
  %gcov_ctr74 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 12), align 16, !dbg !1094
  %35 = add i64 %gcov_ctr74, 1, !dbg !1094
  store i64 %35, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 12), align 16, !dbg !1094
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1094, !tbaa !767
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !1095
  br label %if.end49, !dbg !1095

if.end49:                                         ; preds = %if.then47, %if.end44
  call void @llvm.dbg.value(metadata i32 0, metadata !996, metadata !DIExpression()), !dbg !1014
  %37 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 14), align 4, !dbg !1096, !tbaa !836
  %cmp5189 = icmp sgt i32 %37, 0, !dbg !1099
  br i1 %cmp5189, label %for.body52, label %for.end58, !dbg !1100

for.body52:                                       ; preds = %if.end49, %for.body52
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.body52 ], [ 0, %if.end49 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv93, metadata !996, metadata !DIExpression()), !dbg !1014
  %38 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** @threads, align 8, !dbg !1101, !tbaa !767
  %thread_id = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %38, i64 %indvars.iv93, i32 0, !dbg !1103
  %39 = load i64, i64* %thread_id, align 8, !dbg !1103, !tbaa !1104
  %call55 = tail call i32 @pthread_join(i64 noundef %39, i8** noundef null) #12, !dbg !1105
  %gcov_ctr76 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 14), align 16, !dbg !1106
  %40 = add i64 %gcov_ctr76, 1, !dbg !1106
  store i64 %40, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 14), align 16, !dbg !1106
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next94, metadata !996, metadata !DIExpression()), !dbg !1014
  %41 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 14), align 4, !dbg !1096, !tbaa !836
  %42 = sext i32 %41 to i64, !dbg !1099
  %cmp51 = icmp slt i64 %indvars.iv.next94, %42, !dbg !1099
  br i1 %cmp51, label %for.body52, label %for.end58, !dbg !1100, !llvm.loop !1107

for.end58:                                        ; preds = %for.body52, %if.end49
  %gcov_ctr75 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 13), align 8, !dbg !1109
  %43 = add i64 %gcov_ctr75, 1, !dbg !1109
  store i64 %43, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 13), align 8, !dbg !1109
  %44 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1109, !tbaa !1000
  %cmp59 = icmp sgt i32 %44, 0, !dbg !1111
  br i1 %cmp59, label %if.then60, label %if.end62, !dbg !1112

if.then60:                                        ; preds = %for.end58
  %gcov_ctr77 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 15), align 8, !dbg !1113
  %45 = add i64 %gcov_ctr77, 1, !dbg !1113
  store i64 %45, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.43, i64 0, i64 15), align 8, !dbg !1113
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1113, !tbaa !767
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0)) #12, !dbg !1114
  br label %if.end62, !dbg !1114

if.end62:                                         ; preds = %if.then60, %for.end58
  ret void, !dbg !1115
}

declare !dbg !1116 dso_local void @stop_assoc_maintenance_thread() local_unnamed_addr #4

declare !dbg !1118 dso_local i32 @stop_item_crawler_thread(i1 noundef zeroext) local_unnamed_addr #4

declare !dbg !1121 dso_local i32 @stop_lru_maintainer_thread() local_unnamed_addr #4

declare !dbg !1124 dso_local void @stop_slab_maintenance_thread() local_unnamed_addr #4

declare !dbg !1125 dso_local void @logger_stop() local_unnamed_addr #4

declare !dbg !1126 dso_local i32 @stop_conn_timeout_thread() local_unnamed_addr #4

declare !dbg !1127 dso_local void @conn_close_all() local_unnamed_addr #4

declare !dbg !1128 dso_local i32 @pthread_join(i64 noundef, i8** noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @accept_new_conns(i1 noundef zeroext %do_accept) local_unnamed_addr #0 !dbg !1132 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.44, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.44, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i1 %do_accept, metadata !1137, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1138
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @conn_lock) #12, !dbg !1139
  tail call void @do_accept_new_conns(i1 noundef zeroext %do_accept) #12, !dbg !1140
  %call1 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @conn_lock) #12, !dbg !1141
  ret void, !dbg !1142
}

declare !dbg !1143 dso_local void @do_accept_new_conns(i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.LIBEVENT_THREAD* @get_worker_thread(i32 noundef %id) local_unnamed_addr #6 !dbg !1144 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.45, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.45, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 %id, metadata !1148, metadata !DIExpression()), !dbg !1149
  %1 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** @threads, align 8, !dbg !1150, !tbaa !767
  %idxprom = sext i32 %id to i64, !dbg !1150
  %arrayidx = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %1, i64 %idxprom, !dbg !1150
  ret %struct.LIBEVENT_THREAD* %arrayidx, !dbg !1151
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dispatch_conn_new(i32 noundef %sfd, i32 noundef %init_state, i32 noundef %event_flags, i32 noundef %read_buffer_size, i32 noundef %transport, i8* noundef %ssl, i64 noundef %conntag, i32 noundef %bproto) local_unnamed_addr #0 !dbg !1152 {
entry:
  call void @llvm.dbg.value(metadata i32 %sfd, metadata !1156, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 %init_state, metadata !1157, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 %event_flags, metadata !1158, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 %read_buffer_size, metadata !1159, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 %transport, metadata !1160, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8* %ssl, metadata !1161, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i64 %conntag, metadata !1162, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 %bproto, metadata !1163, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata %struct.conn_queue_item* null, metadata !1164, metadata !DIExpression()), !dbg !1166
  %0 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 72), align 8, !dbg !1167, !tbaa !1169
  %tobool.not = icmp eq i32 %0, 0, !dbg !1170
  br i1 %tobool.not, label %if.then, label %if.else, !dbg !1171

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.46, i64 0, i64 0), align 16, !dbg !1172
  %1 = add i64 %gcov_ctr, 1, !dbg !1172
  store i64 %1, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.46, i64 0, i64 0), align 16, !dbg !1172
  %call = tail call fastcc %struct.LIBEVENT_THREAD* @select_thread_round_robin() #14, !dbg !1172
  call void @llvm.dbg.value(metadata %struct.LIBEVENT_THREAD* %call, metadata !1165, metadata !DIExpression()), !dbg !1166
  br label %if.end, !dbg !1173

if.else:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.LIBEVENT_THREAD* @select_thread_by_napi_id(i32 noundef %sfd) #14, !dbg !1174
  call void @llvm.dbg.value(metadata %struct.LIBEVENT_THREAD* %call1, metadata !1165, metadata !DIExpression()), !dbg !1166
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %thread.0 = phi %struct.LIBEVENT_THREAD* [ %call1, %if.else ], [ %call, %if.then ], !dbg !1175
  call void @llvm.dbg.value(metadata %struct.LIBEVENT_THREAD* %thread.0, metadata !1165, metadata !DIExpression()), !dbg !1166
  %ev_queue = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %thread.0, i64 0, i32 6, !dbg !1176
  %2 = load %struct.conn_queue*, %struct.conn_queue** %ev_queue, align 8, !dbg !1176, !tbaa !957
  %call2 = tail call fastcc %struct.conn_queue_item* @cqi_new(%struct.conn_queue* noundef %2) #14, !dbg !1177
  call void @llvm.dbg.value(metadata %struct.conn_queue_item* %call2, metadata !1164, metadata !DIExpression()), !dbg !1166
  %cmp = icmp eq %struct.conn_queue_item* %call2, null, !dbg !1178
  br i1 %cmp, label %if.then3, label %if.end6, !dbg !1180

if.then3:                                         ; preds = %if.end
  %gcov_ctr16 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.46, i64 0, i64 1), align 8, !dbg !1181
  %3 = add i64 %gcov_ctr16, 1, !dbg !1181
  store i64 %3, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.46, i64 0, i64 1), align 8, !dbg !1181
  %call4 = tail call i32 @close(i32 noundef %sfd) #12, !dbg !1183
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1184, !tbaa !767
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !1185
  br label %cleanup, !dbg !1186

if.end6:                                          ; preds = %if.end
  %gcov_ctr17 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.46, i64 0, i64 2), align 16, !dbg !1187
  %5 = add i64 %gcov_ctr17, 1, !dbg !1187
  store i64 %5, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.46, i64 0, i64 2), align 16, !dbg !1187
  %sfd7 = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call2, i64 0, i32 0, !dbg !1188
  store i32 %sfd, i32* %sfd7, align 8, !dbg !1189, !tbaa !977
  %init_state8 = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call2, i64 0, i32 1, !dbg !1190
  store i32 %init_state, i32* %init_state8, align 4, !dbg !1191, !tbaa !1192
  %event_flags9 = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call2, i64 0, i32 2, !dbg !1193
  store i32 %event_flags, i32* %event_flags9, align 8, !dbg !1194, !tbaa !1195
  %read_buffer_size10 = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call2, i64 0, i32 3, !dbg !1196
  store i32 %read_buffer_size, i32* %read_buffer_size10, align 4, !dbg !1197, !tbaa !1198
  %transport11 = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call2, i64 0, i32 4, !dbg !1199
  store i32 %transport, i32* %transport11, align 8, !dbg !1200, !tbaa !1201
  %mode = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call2, i64 0, i32 5, !dbg !1202
  store i32 0, i32* %mode, align 4, !dbg !1203, !tbaa !972
  %ssl12 = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call2, i64 0, i32 7, !dbg !1204
  store i8* %ssl, i8** %ssl12, align 8, !dbg !1205, !tbaa !1206
  %conntag13 = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call2, i64 0, i32 8, !dbg !1207
  store i64 %conntag, i64* %conntag13, align 8, !dbg !1208, !tbaa !1209
  %bproto14 = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call2, i64 0, i32 9, !dbg !1210
  store i32 %bproto, i32* %bproto14, align 8, !dbg !1211, !tbaa !1212
  tail call fastcc void @notify_worker(%struct.LIBEVENT_THREAD* noundef nonnull %thread.0, %struct.conn_queue_item* noundef nonnull %call2) #14, !dbg !1213
  br label %cleanup, !dbg !1214

cleanup:                                          ; preds = %if.end6, %if.then3
  ret void, !dbg !1214
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc %struct.LIBEVENT_THREAD* @select_thread_round_robin() unnamed_addr #6 !dbg !1215 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.47, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.47, i64 0, i64 0), align 8
  %1 = load i32, i32* @last_thread, align 4, !dbg !1220, !tbaa !771
  %add = add nsw i32 %1, 1, !dbg !1221
  %2 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 14), align 4, !dbg !1222, !tbaa !836
  %rem = srem i32 %add, %2, !dbg !1223
  call void @llvm.dbg.value(metadata i32 %rem, metadata !1219, metadata !DIExpression()), !dbg !1224
  store i32 %rem, i32* @last_thread, align 4, !dbg !1225, !tbaa !771
  %3 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** @threads, align 8, !dbg !1226, !tbaa !767
  %idx.ext = sext i32 %rem to i64, !dbg !1227
  %add.ptr = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %idx.ext, !dbg !1227
  ret %struct.LIBEVENT_THREAD* %add.ptr, !dbg !1228
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.LIBEVENT_THREAD* @select_thread_by_napi_id(i32 noundef %sfd) unnamed_addr #0 !dbg !1229 {
entry:
  %napi_id = alloca i32, align 4
  %len = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %sfd, metadata !1231, metadata !DIExpression()), !dbg !1239
  %0 = bitcast i32* %napi_id to i8*, !dbg !1240
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15, !dbg !1240
  %1 = bitcast i32* %len to i8*, !dbg !1241
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #15, !dbg !1241
  call void @llvm.dbg.value(metadata i32 -1, metadata !1237, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i32 4, metadata !1236, metadata !DIExpression()), !dbg !1239
  store i32 4, i32* %len, align 4, !dbg !1242, !tbaa !771
  call void @llvm.dbg.value(metadata i32* %napi_id, metadata !1233, metadata !DIExpression(DW_OP_deref)), !dbg !1239
  call void @llvm.dbg.value(metadata i32* %len, metadata !1236, metadata !DIExpression(DW_OP_deref)), !dbg !1239
  %call = call i32 @getsockopt(i32 noundef %sfd, i32 noundef 1, i32 noundef 56, i8* noundef nonnull %0, i32* noundef nonnull %len) #12, !dbg !1243
  call void @llvm.dbg.value(metadata i32 %call, metadata !1234, metadata !DIExpression()), !dbg !1239
  %cmp = icmp eq i32 %call, -1, !dbg !1244
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1246

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 0), align 16, !dbg !1247
  %2 = add i64 %gcov_ctr, 1, !dbg !1247
  store i64 %2, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 0), align 16, !dbg !1247
  %3 = load i32, i32* %napi_id, align 4, !dbg !1247, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %3, metadata !1233, metadata !DIExpression()), !dbg !1239
  %cmp1 = icmp eq i32 %3, 0, !dbg !1248
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1249

if.then:                                          ; preds = %lor.lhs.false, %entry
  %gcov_ctr25 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 2), align 16, !dbg !1250
  %4 = add i64 %gcov_ctr25, 1, !dbg !1250
  store i64 %4, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 2), align 16, !dbg !1250
  call void @STATS_LOCK() #14, !dbg !1250
  %5 = load i64, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 24), align 8, !dbg !1252, !tbaa !1253
  %inc = add i64 %5, 1, !dbg !1252
  store i64 %inc, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 24), align 8, !dbg !1252, !tbaa !1253
  call void @STATS_UNLOCK() #14, !dbg !1255
  %call2 = call fastcc %struct.LIBEVENT_THREAD* @select_thread_round_robin() #14, !dbg !1256
  br label %cleanup, !dbg !1257

if.end:                                           ; preds = %lor.lhs.false
  %gcov_ctr24 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 1), align 8, !dbg !1258
  %6 = add i64 %gcov_ctr24, 1, !dbg !1258
  store i64 %6, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 1), align 8, !dbg !1258
  br label %select, !dbg !1258

select:                                           ; preds = %if.then14, %if.end
  call void @llvm.dbg.value(metadata i32 -1, metadata !1237, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.label(metadata !1238), !dbg !1259
  call void @llvm.dbg.value(metadata i32 0, metadata !1235, metadata !DIExpression()), !dbg !1239
  %7 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 14), align 4, !tbaa !836
  call void @llvm.dbg.value(metadata i32 0, metadata !1235, metadata !DIExpression()), !dbg !1239
  %cmp350 = icmp sgt i32 %7, 0, !dbg !1260
  br i1 %cmp350, label %for.body.lr.ph, label %if.then14, !dbg !1263

for.body.lr.ph:                                   ; preds = %select
  %8 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** @threads, align 8, !tbaa !767
  %9 = load i32, i32* @last_thread_by_napi_id, align 4, !tbaa !771
  %10 = load i32, i32* %napi_id, align 4
  %smax = call i32 @llvm.smax.i32(i32 %9, i32 -1), !dbg !1263
  %11 = add i32 %smax, 1, !dbg !1263
  %12 = zext i32 %11 to i64, !dbg !1263
  %wide.trip.count57 = zext i32 %7 to i64, !dbg !1260
  br label %for.body, !dbg !1263

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1235, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata !DIArgList(%struct.LIBEVENT_THREAD* %8, i64 %indvars.iv), metadata !1232, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 6808, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1239
  %exitcond = icmp eq i64 %indvars.iv, %12, !dbg !1264
  br i1 %exitcond, label %if.then5, label %if.end7, !dbg !1267

if.then5:                                         ; preds = %for.body
  %13 = zext i32 %11 to i64, !dbg !1263
  call void @llvm.dbg.value(metadata !DIArgList(%struct.LIBEVENT_THREAD* %8, i64 %13), metadata !1232, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 6808, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1239
  %gcov_ctr26 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 3), align 8, !dbg !1268
  %14 = add i64 %gcov_ctr26, 1, !dbg !1268
  store i64 %14, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 3), align 8, !dbg !1268
  call void @llvm.dbg.value(metadata i32 %10, metadata !1233, metadata !DIExpression()), !dbg !1239
  %napi_id6 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %8, i64 %13, i32 13, !dbg !1270
  store i32 %10, i32* %napi_id6, align 8, !dbg !1271, !tbaa !1272
  store i32 %11, i32* @last_thread_by_napi_id, align 4, !dbg !1273, !tbaa !771
  call void @llvm.dbg.value(metadata i32 %11, metadata !1237, metadata !DIExpression()), !dbg !1239
  br label %if.end16, !dbg !1274

if.end7:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata !DIArgList(%struct.LIBEVENT_THREAD* %8, i64 %indvars.iv), metadata !1232, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 6808, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1239
  %napi_id8 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %8, i64 %indvars.iv, i32 13, !dbg !1275
  %15 = load i32, i32* %napi_id8, align 8, !dbg !1275, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 %10, metadata !1233, metadata !DIExpression()), !dbg !1239
  %cmp9 = icmp eq i32 %15, %10, !dbg !1277
  br i1 %cmp9, label %if.then10, label %for.inc, !dbg !1278

if.then10:                                        ; preds = %if.end7
  %gcov_ctr27 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 4), align 16, !dbg !1279
  %16 = add i64 %gcov_ctr27, 1, !dbg !1279
  store i64 %16, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 4), align 16, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1237, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1239
  %.pre = and i64 %indvars.iv, 4294967295, !dbg !1281
  br label %if.end16, !dbg !1282

for.inc:                                          ; preds = %if.end7
  %gcov_ctr28 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 5), align 8, !dbg !1283
  %17 = add i64 %gcov_ctr28, 1, !dbg !1283
  store i64 %17, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 5), align 8, !dbg !1283
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1235, metadata !DIExpression()), !dbg !1239
  %exitcond58.not = icmp eq i64 %indvars.iv.next, %wide.trip.count57, !dbg !1260
  br i1 %exitcond58.not, label %if.then14, label %for.body, !dbg !1263, !llvm.loop !1284

if.then14:                                        ; preds = %for.inc, %select
  call void @llvm.dbg.value(metadata i32 -1, metadata !1237, metadata !DIExpression()), !dbg !1239
  %gcov_ctr29 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 6), align 16, !dbg !1286
  %18 = add i64 %gcov_ctr29, 1, !dbg !1286
  store i64 %18, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 6), align 16, !dbg !1286
  call void @STATS_LOCK() #14, !dbg !1286
  %19 = load i64, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 23), align 8, !dbg !1289, !tbaa !1290
  %inc15 = add i64 %19, 1, !dbg !1289
  store i64 %inc15, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 23), align 8, !dbg !1289, !tbaa !1290
  call void @STATS_UNLOCK() #14, !dbg !1291
  call fastcc void @reset_threads_napi_id() #14, !dbg !1292
  br label %select, !dbg !1293

if.end16:                                         ; preds = %if.then5, %if.then10
  %idx.ext17.pre-phi = phi i64 [ %13, %if.then5 ], [ %.pre, %if.then10 ], !dbg !1281
  call void @llvm.dbg.value(metadata i32 -1, metadata !1237, metadata !DIExpression()), !dbg !1239
  %add.ptr18 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %8, i64 %idx.ext17.pre-phi, !dbg !1281
  br label %cleanup, !dbg !1294

cleanup:                                          ; preds = %if.end16, %if.then
  %retval.0 = phi %struct.LIBEVENT_THREAD* [ %call2, %if.then ], [ %add.ptr18, %if.end16 ], !dbg !1239
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #15, !dbg !1295
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15, !dbg !1295
  ret %struct.LIBEVENT_THREAD* %retval.0, !dbg !1295
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.conn_queue_item* @cqi_new(%struct.conn_queue* nocapture noundef readonly %cq) unnamed_addr #0 !dbg !1296 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.49, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.49, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.conn_queue* %cq, metadata !1302, metadata !DIExpression()), !dbg !1304
  %cache = getelementptr inbounds %struct.conn_queue, %struct.conn_queue* %cq, i64 0, i32 2, !dbg !1305
  %1 = load %struct.cache_t*, %struct.cache_t** %cache, align 8, !dbg !1305, !tbaa !1306
  %call = tail call i8* @cache_alloc(%struct.cache_t* noundef %1) #12, !dbg !1309
  call void @llvm.dbg.value(metadata i8* %call, metadata !1303, metadata !DIExpression()), !dbg !1304
  %cmp = icmp eq i8* %call, null, !dbg !1310
  br i1 %cmp, label %if.then, label %if.end, !dbg !1312

if.then:                                          ; preds = %entry
  %gcov_ctr1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.49, i64 0, i64 1), align 8, !dbg !1313
  %2 = add i64 %gcov_ctr1, 1, !dbg !1313
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.49, i64 0, i64 1), align 8, !dbg !1313
  tail call void @STATS_LOCK() #14, !dbg !1313
  %3 = load i64, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 3), align 8, !dbg !1315, !tbaa !1316
  %inc = add i64 %3, 1, !dbg !1315
  store i64 %inc, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 3), align 8, !dbg !1315, !tbaa !1316
  tail call void @STATS_UNLOCK() #14, !dbg !1317
  br label %if.end, !dbg !1318

if.end:                                           ; preds = %if.then, %entry
  %4 = bitcast i8* %call to %struct.conn_queue_item*, !dbg !1309
  call void @llvm.dbg.value(metadata %struct.conn_queue_item* %4, metadata !1303, metadata !DIExpression()), !dbg !1304
  ret %struct.conn_queue_item* %4, !dbg !1319
}

declare !dbg !1320 dso_local i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @notify_worker(%struct.LIBEVENT_THREAD* nocapture noundef readonly %t, %struct.conn_queue_item* noundef %item) unnamed_addr #0 !dbg !1324 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 0), align 8
  %u = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.LIBEVENT_THREAD* %t, metadata !1328, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata %struct.conn_queue_item* %item, metadata !1329, metadata !DIExpression()), !dbg !1331
  %ev_queue = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %t, i64 0, i32 6, !dbg !1332
  %1 = load %struct.conn_queue*, %struct.conn_queue** %ev_queue, align 8, !dbg !1332, !tbaa !957
  tail call fastcc void @cq_push(%struct.conn_queue* noundef %1, %struct.conn_queue_item* noundef %item) #14, !dbg !1333
  %2 = bitcast i64* %u to i8*, !dbg !1334
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15, !dbg !1334
  call void @llvm.dbg.value(metadata i64 1, metadata !1330, metadata !DIExpression()), !dbg !1331
  store i64 1, i64* %u, align 8, !dbg !1335, !tbaa !1336
  %notify_event_fd = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %t, i64 0, i32 3, !dbg !1337
  %3 = load i32, i32* %notify_event_fd, align 8, !dbg !1337, !tbaa !1339
  call void @llvm.dbg.value(metadata i64* %u, metadata !1330, metadata !DIExpression(DW_OP_deref)), !dbg !1331
  %call = call i64 @write(i32 noundef %3, i8* noundef nonnull %2, i64 noundef 8) #12, !dbg !1340
  %cmp.not = icmp eq i64 %call, 8, !dbg !1341
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1342

if.then:                                          ; preds = %entry
  %gcov_ctr1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 1), align 8, !dbg !1343
  %4 = add i64 %gcov_ctr1, 1, !dbg !1343
  store i64 %4, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 1), align 8, !dbg !1343
  call void @perror(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0)) #12, !dbg !1343
  br label %if.end, !dbg !1345

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15, !dbg !1346
  ret void, !dbg !1346
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @redispatch_conn(%struct.conn* nocapture noundef readonly %c) local_unnamed_addr #0 !dbg !1347 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1351, metadata !DIExpression()), !dbg !1352
  %thread = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !1353
  %1 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !1353, !tbaa !1354
  %sfd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 1, !dbg !1359
  %2 = load i32, i32* %sfd, align 8, !dbg !1359, !tbaa !1360
  tail call fastcc void @notify_worker_fd(%struct.LIBEVENT_THREAD* noundef %1, i32 noundef %2, i32 noundef 3) #14, !dbg !1361
  ret void, !dbg !1362
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timeout_conn(%struct.conn* nocapture noundef readonly %c) local_unnamed_addr #0 !dbg !1363 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.52, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.52, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1365, metadata !DIExpression()), !dbg !1366
  %thread = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !1367
  %1 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !1367, !tbaa !1354
  %sfd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 1, !dbg !1368
  %2 = load i32, i32* %sfd, align 8, !dbg !1368, !tbaa !1360
  tail call fastcc void @notify_worker_fd(%struct.LIBEVENT_THREAD* noundef %1, i32 noundef %2, i32 noundef 2) #14, !dbg !1369
  ret void, !dbg !1370
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @return_io_pending(%struct._io_pending_t* noundef %io) local_unnamed_addr #0 !dbg !1371 {
entry:
  call void @llvm.dbg.value(metadata %struct._io_pending_t* %io, metadata !1373, metadata !DIExpression()), !dbg !1375
  %thread = getelementptr inbounds %struct._io_pending_t, %struct._io_pending_t* %io, i64 0, i32 1, !dbg !1376
  %0 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !1376, !tbaa !1377
  %ev_queue = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %0, i64 0, i32 6, !dbg !1379
  %1 = load %struct.conn_queue*, %struct.conn_queue** %ev_queue, align 8, !dbg !1379, !tbaa !957
  %call = tail call fastcc %struct.conn_queue_item* @cqi_new(%struct.conn_queue* noundef %1) #14, !dbg !1380
  call void @llvm.dbg.value(metadata %struct.conn_queue_item* %call, metadata !1374, metadata !DIExpression()), !dbg !1375
  %cmp = icmp eq %struct.conn_queue_item* %call, null, !dbg !1381
  br i1 %cmp, label %if.then, label %if.end, !dbg !1383

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.53, i64 0, i64 0), align 16
  %2 = add i64 %gcov_ctr, 1
  store i64 %2, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.53, i64 0, i64 0), align 16
  br label %cleanup, !dbg !1384

if.end:                                           ; preds = %entry
  %gcov_ctr3 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.53, i64 0, i64 1), align 8, !dbg !1386
  %3 = add i64 %gcov_ctr3, 1, !dbg !1386
  store i64 %3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.53, i64 0, i64 1), align 8, !dbg !1386
  %mode = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call, i64 0, i32 5, !dbg !1387
  store i32 5, i32* %mode, align 4, !dbg !1388, !tbaa !972
  %io1 = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call, i64 0, i32 10, !dbg !1389
  store %struct._io_pending_t* %io, %struct._io_pending_t** %io1, align 8, !dbg !1390, !tbaa !1391
  %4 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !1392, !tbaa !1377
  tail call fastcc void @notify_worker(%struct.LIBEVENT_THREAD* noundef %4, %struct.conn_queue_item* noundef nonnull %call) #14, !dbg !1393
  br label %cleanup, !dbg !1394

cleanup:                                          ; preds = %if.end, %if.then
  ret void, !dbg !1394
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sidethread_conn_close(%struct.conn* nocapture noundef %c) local_unnamed_addr #0 !dbg !1395 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.54, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.54, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1397, metadata !DIExpression()), !dbg !1398
  %1 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !1399, !tbaa !1000
  %cmp = icmp sgt i32 %1, 1, !dbg !1401
  br i1 %cmp, label %if.then, label %if.end, !dbg !1402

if.then:                                          ; preds = %entry
  %gcov_ctr1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.54, i64 0, i64 1), align 8, !dbg !1403
  %2 = add i64 %gcov_ctr1, 1, !dbg !1403
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.54, i64 0, i64 1), align 8, !dbg !1403
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1403, !tbaa !767
  %sfd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 1, !dbg !1404
  %4 = load i32, i32* %sfd, align 8, !dbg !1404, !tbaa !1360
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 noundef %4) #12, !dbg !1405
  br label %if.end, !dbg !1405

if.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 9, !dbg !1406
  store i32 8, i32* %state, align 4, !dbg !1407, !tbaa !1408
  tail call void @redispatch_conn(%struct.conn* noundef %c) #14, !dbg !1409
  ret void, !dbg !1410
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._stritem* @item_alloc(i8* noundef %key, i64 noundef %nkey, i32 noundef %flags, i32 noundef %exptime, i32 noundef %nbytes) local_unnamed_addr #0 !dbg !1411 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.55, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.55, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %key, metadata !1415, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !1416, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1417, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 %exptime, metadata !1418, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 %nbytes, metadata !1419, metadata !DIExpression()), !dbg !1421
  %call = tail call %struct._stritem* @do_item_alloc(i8* noundef %key, i64 noundef %nkey, i32 noundef %flags, i32 noundef %exptime, i32 noundef %nbytes) #12, !dbg !1422
  call void @llvm.dbg.value(metadata %struct._stritem* %call, metadata !1420, metadata !DIExpression()), !dbg !1421
  ret %struct._stritem* %call, !dbg !1423
}

declare !dbg !1424 dso_local %struct._stritem* @do_item_alloc(i8* noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._stritem* @item_get(i8* noundef %key, i64 noundef %nkey, %struct.conn* noundef %c, i1 noundef zeroext %do_update) local_unnamed_addr #0 !dbg !1431 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.56, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.56, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %key, metadata !1435, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !1436, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1437, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i1 %do_update, metadata !1438, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1441
  %1 = load i32 (i8*, i64)*, i32 (i8*, i64)** @hash, align 8, !dbg !1442, !tbaa !767
  %call = tail call i32 %1(i8* noundef %key, i64 noundef %nkey) #12, !dbg !1442
  call void @llvm.dbg.value(metadata i32 %call, metadata !1440, metadata !DIExpression()), !dbg !1441
  tail call void @item_lock(i32 noundef %call) #14, !dbg !1443
  %call1 = tail call %struct._stritem* @do_item_get(i8* noundef %key, i64 noundef %nkey, i32 noundef %call, %struct.conn* noundef %c, i1 noundef zeroext %do_update) #12, !dbg !1444
  call void @llvm.dbg.value(metadata %struct._stritem* %call1, metadata !1439, metadata !DIExpression()), !dbg !1441
  tail call void @item_unlock(i32 noundef %call) #14, !dbg !1445
  ret %struct._stritem* %call1, !dbg !1446
}

declare !dbg !1447 dso_local %struct._stritem* @do_item_get(i8* noundef, i64 noundef, i32 noundef, %struct.conn* noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._stritem* @item_get_locked(i8* noundef %key, i64 noundef %nkey, %struct.conn* noundef %c, i1 noundef zeroext %do_update, i32* nocapture noundef %hv) local_unnamed_addr #0 !dbg !1451 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.57, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.57, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %key, metadata !1456, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !1457, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1458, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i1 %do_update, metadata !1459, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1462
  call void @llvm.dbg.value(metadata i32* %hv, metadata !1460, metadata !DIExpression()), !dbg !1462
  %1 = load i32 (i8*, i64)*, i32 (i8*, i64)** @hash, align 8, !dbg !1463, !tbaa !767
  %call = tail call i32 %1(i8* noundef %key, i64 noundef %nkey) #12, !dbg !1463
  store i32 %call, i32* %hv, align 4, !dbg !1464, !tbaa !771
  tail call void @item_lock(i32 noundef %call) #14, !dbg !1465
  %2 = load i32, i32* %hv, align 4, !dbg !1466, !tbaa !771
  %call1 = tail call %struct._stritem* @do_item_get(i8* noundef %key, i64 noundef %nkey, i32 noundef %2, %struct.conn* noundef %c, i1 noundef zeroext %do_update) #12, !dbg !1467
  call void @llvm.dbg.value(metadata %struct._stritem* %call1, metadata !1461, metadata !DIExpression()), !dbg !1462
  ret %struct._stritem* %call1, !dbg !1468
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._stritem* @item_touch(i8* noundef %key, i64 noundef %nkey, i32 noundef %exptime, %struct.conn* noundef %c) local_unnamed_addr #0 !dbg !1469 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %key, metadata !1473, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !1474, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i32 %exptime, metadata !1475, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1476, metadata !DIExpression()), !dbg !1479
  %1 = load i32 (i8*, i64)*, i32 (i8*, i64)** @hash, align 8, !dbg !1480, !tbaa !767
  %call = tail call i32 %1(i8* noundef %key, i64 noundef %nkey) #12, !dbg !1480
  call void @llvm.dbg.value(metadata i32 %call, metadata !1478, metadata !DIExpression()), !dbg !1479
  tail call void @item_lock(i32 noundef %call) #14, !dbg !1481
  %call1 = tail call %struct._stritem* @do_item_touch(i8* noundef %key, i64 noundef %nkey, i32 noundef %exptime, i32 noundef %call, %struct.conn* noundef %c) #12, !dbg !1482
  call void @llvm.dbg.value(metadata %struct._stritem* %call1, metadata !1477, metadata !DIExpression()), !dbg !1479
  tail call void @item_unlock(i32 noundef %call) #14, !dbg !1483
  ret %struct._stritem* %call1, !dbg !1484
}

declare !dbg !1485 dso_local %struct._stritem* @do_item_touch(i8* noundef, i64 noundef, i32 noundef, i32 noundef, %struct.conn* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @item_link(%struct._stritem* noundef %item) local_unnamed_addr #0 !dbg !1488 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.59, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.59, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct._stritem* %item, metadata !1492, metadata !DIExpression()), !dbg !1495
  %1 = load i32 (i8*, i64)*, i32 (i8*, i64)** @hash, align 8, !dbg !1496, !tbaa !767
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %item, i64 0, i32 10, !dbg !1497
  %2 = bitcast [0 x %union.anon.7]* %data to i8*, !dbg !1497
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %item, i64 0, i32 7, !dbg !1497
  %3 = load i16, i16* %it_flags, align 2, !dbg !1497, !tbaa !1498
  %4 = shl i16 %3, 2, !dbg !1497
  %5 = and i16 %4, 8, !dbg !1497
  %6 = zext i16 %5 to i64, !dbg !1497
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %6, !dbg !1497
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %item, i64 0, i32 9, !dbg !1499
  %7 = load i8, i8* %nkey, align 1, !dbg !1499, !tbaa !1500
  %conv1 = zext i8 %7 to i64, !dbg !1501
  %call = tail call i32 %1(i8* noundef nonnull %add.ptr, i64 noundef %conv1) #12, !dbg !1496
  call void @llvm.dbg.value(metadata i32 %call, metadata !1494, metadata !DIExpression()), !dbg !1495
  tail call void @item_lock(i32 noundef %call) #14, !dbg !1502
  %call2 = tail call i32 @do_item_link(%struct._stritem* noundef %item, i32 noundef %call) #12, !dbg !1503
  call void @llvm.dbg.value(metadata i32 %call2, metadata !1493, metadata !DIExpression()), !dbg !1495
  tail call void @item_unlock(i32 noundef %call) #14, !dbg !1504
  ret i32 %call2, !dbg !1505
}

declare !dbg !1506 dso_local i32 @do_item_link(%struct._stritem* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @item_remove(%struct._stritem* noundef %item) local_unnamed_addr #0 !dbg !1509 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct._stritem* %item, metadata !1513, metadata !DIExpression()), !dbg !1515
  %1 = load i32 (i8*, i64)*, i32 (i8*, i64)** @hash, align 8, !dbg !1516, !tbaa !767
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %item, i64 0, i32 10, !dbg !1517
  %2 = bitcast [0 x %union.anon.7]* %data to i8*, !dbg !1517
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %item, i64 0, i32 7, !dbg !1517
  %3 = load i16, i16* %it_flags, align 2, !dbg !1517, !tbaa !1498
  %4 = shl i16 %3, 2, !dbg !1517
  %5 = and i16 %4, 8, !dbg !1517
  %6 = zext i16 %5 to i64, !dbg !1517
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %6, !dbg !1517
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %item, i64 0, i32 9, !dbg !1518
  %7 = load i8, i8* %nkey, align 1, !dbg !1518, !tbaa !1500
  %conv1 = zext i8 %7 to i64, !dbg !1519
  %call = tail call i32 %1(i8* noundef nonnull %add.ptr, i64 noundef %conv1) #12, !dbg !1516
  call void @llvm.dbg.value(metadata i32 %call, metadata !1514, metadata !DIExpression()), !dbg !1515
  tail call void @item_lock(i32 noundef %call) #14, !dbg !1520
  tail call void @do_item_remove(%struct._stritem* noundef %item) #12, !dbg !1521
  tail call void @item_unlock(i32 noundef %call) #14, !dbg !1522
  ret void, !dbg !1523
}

declare !dbg !1524 dso_local void @do_item_remove(%struct._stritem* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @item_replace(%struct._stritem* noundef %old_it, %struct._stritem* noundef %new_it, i32 noundef %hv) local_unnamed_addr #0 !dbg !1525 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.61, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.61, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct._stritem* %old_it, metadata !1529, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata %struct._stritem* %new_it, metadata !1530, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i32 %hv, metadata !1531, metadata !DIExpression()), !dbg !1532
  %call = tail call i32 @do_item_replace(%struct._stritem* noundef %old_it, %struct._stritem* noundef %new_it, i32 noundef %hv) #12, !dbg !1533
  ret i32 %call, !dbg !1534
}

declare !dbg !1535 dso_local i32 @do_item_replace(%struct._stritem* noundef, %struct._stritem* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @item_unlink(%struct._stritem* noundef %item) local_unnamed_addr #0 !dbg !1536 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct._stritem* %item, metadata !1538, metadata !DIExpression()), !dbg !1540
  %1 = load i32 (i8*, i64)*, i32 (i8*, i64)** @hash, align 8, !dbg !1541, !tbaa !767
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %item, i64 0, i32 10, !dbg !1542
  %2 = bitcast [0 x %union.anon.7]* %data to i8*, !dbg !1542
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %item, i64 0, i32 7, !dbg !1542
  %3 = load i16, i16* %it_flags, align 2, !dbg !1542, !tbaa !1498
  %4 = shl i16 %3, 2, !dbg !1542
  %5 = and i16 %4, 8, !dbg !1542
  %6 = zext i16 %5 to i64, !dbg !1542
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %6, !dbg !1542
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %item, i64 0, i32 9, !dbg !1543
  %7 = load i8, i8* %nkey, align 1, !dbg !1543, !tbaa !1500
  %conv1 = zext i8 %7 to i64, !dbg !1544
  %call = tail call i32 %1(i8* noundef nonnull %add.ptr, i64 noundef %conv1) #12, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %call, metadata !1539, metadata !DIExpression()), !dbg !1540
  tail call void @item_lock(i32 noundef %call) #14, !dbg !1545
  tail call void @do_item_unlink(%struct._stritem* noundef %item, i32 noundef %call) #12, !dbg !1546
  tail call void @item_unlock(i32 noundef %call) #14, !dbg !1547
  ret void, !dbg !1548
}

declare !dbg !1549 dso_local void @do_item_unlink(%struct._stritem* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @add_delta(%struct.conn* noundef %c, i8* noundef %key, i64 noundef %nkey, i1 noundef zeroext %incr, i64 noundef %delta, i8* noundef %buf, i64* noundef %cas) local_unnamed_addr #0 !dbg !1552 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.63, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.63, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1561, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i8* %key, metadata !1562, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !1563, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i1 %incr, metadata !1564, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1570
  call void @llvm.dbg.value(metadata i64 %delta, metadata !1565, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i8* %buf, metadata !1566, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i64* %cas, metadata !1567, metadata !DIExpression()), !dbg !1570
  %1 = load i32 (i8*, i64)*, i32 (i8*, i64)** @hash, align 8, !dbg !1571, !tbaa !767
  %call = tail call i32 %1(i8* noundef %key, i64 noundef %nkey) #12, !dbg !1571
  call void @llvm.dbg.value(metadata i32 %call, metadata !1569, metadata !DIExpression()), !dbg !1570
  tail call void @item_lock(i32 noundef %call) #14, !dbg !1572
  %call1 = tail call i32 @do_add_delta(%struct.conn* noundef %c, i8* noundef %key, i64 noundef %nkey, i1 noundef zeroext %incr, i64 noundef %delta, i8* noundef %buf, i64* noundef %cas, i32 noundef %call, %struct._stritem** noundef null) #12, !dbg !1573
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1568, metadata !DIExpression()), !dbg !1570
  tail call void @item_unlock(i32 noundef %call) #14, !dbg !1574
  ret i32 %call1, !dbg !1575
}

declare !dbg !1576 dso_local i32 @do_add_delta(%struct.conn* noundef, i8* noundef, i64 noundef, i1 noundef zeroext, i64 noundef, i8* noundef, i64* noundef, i32 noundef, %struct._stritem** noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @store_item(%struct._stritem* noundef %item, i32 noundef %comm, %struct.conn* noundef %c) local_unnamed_addr #0 !dbg !1580 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct._stritem* %item, metadata !1584, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 %comm, metadata !1585, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1586, metadata !DIExpression()), !dbg !1589
  %1 = load i32 (i8*, i64)*, i32 (i8*, i64)** @hash, align 8, !dbg !1590, !tbaa !767
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %item, i64 0, i32 10, !dbg !1591
  %2 = bitcast [0 x %union.anon.7]* %data to i8*, !dbg !1591
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %item, i64 0, i32 7, !dbg !1591
  %3 = load i16, i16* %it_flags, align 2, !dbg !1591, !tbaa !1498
  %4 = shl i16 %3, 2, !dbg !1591
  %5 = and i16 %4, 8, !dbg !1591
  %6 = zext i16 %5 to i64, !dbg !1591
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %6, !dbg !1591
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %item, i64 0, i32 9, !dbg !1592
  %7 = load i8, i8* %nkey, align 1, !dbg !1592, !tbaa !1500
  %conv1 = zext i8 %7 to i64, !dbg !1593
  %call = tail call i32 %1(i8* noundef nonnull %add.ptr, i64 noundef %conv1) #12, !dbg !1590
  call void @llvm.dbg.value(metadata i32 %call, metadata !1588, metadata !DIExpression()), !dbg !1589
  tail call void @item_lock(i32 noundef %call) #14, !dbg !1594
  %call2 = tail call i32 @do_store_item(%struct._stritem* noundef %item, i32 noundef %comm, %struct.conn* noundef %c, i32 noundef %call) #12, !dbg !1595
  call void @llvm.dbg.value(metadata i32 %call2, metadata !1587, metadata !DIExpression()), !dbg !1589
  tail call void @item_unlock(i32 noundef %call) #14, !dbg !1596
  ret i32 %call2, !dbg !1597
}

declare !dbg !1598 dso_local i32 @do_store_item(%struct._stritem* noundef, i32 noundef, %struct.conn* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @STATS_LOCK() local_unnamed_addr #0 !dbg !1601 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 0), align 8, !dbg !1602
  %0 = add i64 %gcov_ctr, 1, !dbg !1602
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 0), align 8, !dbg !1602
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @stats_lock) #12, !dbg !1602
  ret void, !dbg !1603
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @STATS_UNLOCK() local_unnamed_addr #0 !dbg !1604 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 0), align 8, !dbg !1605
  %0 = add i64 %gcov_ctr, 1, !dbg !1605
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 0), align 8, !dbg !1605
  %call = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @stats_lock) #12, !dbg !1605
  ret void, !dbg !1606
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @threadlocal_stats_reset() local_unnamed_addr #0 !dbg !1607 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 0, metadata !1609, metadata !DIExpression()), !dbg !1610
  %1 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 14), align 4, !dbg !1611, !tbaa !836
  %cmp141 = icmp sgt i32 %1, 0, !dbg !1614
  br i1 %cmp141, label %for.body, label %for.end, !dbg !1615

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1609, metadata !DIExpression()), !dbg !1610
  %2 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** @threads, align 8, !dbg !1616, !tbaa !767
  %mutex = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %2, i64 %indvars.iv, i32 4, i32 0, !dbg !1618
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !1619
  %3 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** @threads, align 8, !dbg !1620, !tbaa !767
  %get_cmds = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %indvars.iv, i32 4, i32 1, !dbg !1620
  %4 = bitcast i64* %get_cmds to <2 x i64>*, !dbg !1620
  store <2 x i64> zeroinitializer, <2 x i64>* %4, align 8, !dbg !1620, !tbaa !1336
  %get_expired = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %indvars.iv, i32 4, i32 3, !dbg !1620
  %5 = bitcast i64* %get_expired to <2 x i64>*, !dbg !1620
  store <2 x i64> zeroinitializer, <2 x i64>* %5, align 8, !dbg !1620, !tbaa !1336
  %touch_cmds = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %indvars.iv, i32 4, i32 5, !dbg !1620
  %6 = bitcast i64* %touch_cmds to <2 x i64>*, !dbg !1620
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 8, !dbg !1620, !tbaa !1336
  %delete_misses = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %indvars.iv, i32 4, i32 7, !dbg !1620
  %7 = bitcast i64* %delete_misses to <2 x i64>*, !dbg !1620
  store <2 x i64> zeroinitializer, <2 x i64>* %7, align 8, !dbg !1620, !tbaa !1336
  %decr_misses = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %indvars.iv, i32 4, i32 9, !dbg !1620
  %8 = bitcast i64* %decr_misses to <2 x i64>*, !dbg !1620
  store <2 x i64> zeroinitializer, <2 x i64>* %8, align 8, !dbg !1620, !tbaa !1336
  %meta_cmds = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %indvars.iv, i32 4, i32 11, !dbg !1620
  %9 = bitcast i64* %meta_cmds to <2 x i64>*, !dbg !1620
  store <2 x i64> zeroinitializer, <2 x i64>* %9, align 8, !dbg !1620, !tbaa !1336
  %bytes_written = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %indvars.iv, i32 4, i32 13, !dbg !1620
  %10 = bitcast i64* %bytes_written to <2 x i64>*, !dbg !1620
  store <2 x i64> zeroinitializer, <2 x i64>* %10, align 8, !dbg !1620, !tbaa !1336
  %conn_yields = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %indvars.iv, i32 4, i32 15, !dbg !1620
  %11 = bitcast i64* %conn_yields to <2 x i64>*, !dbg !1620
  store <2 x i64> zeroinitializer, <2 x i64>* %11, align 8, !dbg !1620, !tbaa !1336
  %auth_errors = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %indvars.iv, i32 4, i32 17, !dbg !1620
  %12 = bitcast i64* %auth_errors to <2 x i64>*, !dbg !1620
  store <2 x i64> zeroinitializer, <2 x i64>* %12, align 8, !dbg !1620, !tbaa !1336
  %response_obj_oom = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %indvars.iv, i32 4, i32 19, !dbg !1620
  %13 = bitcast i64* %response_obj_oom to <2 x i64>*, !dbg !1620
  store <2 x i64> zeroinitializer, <2 x i64>* %13, align 8, !dbg !1620, !tbaa !1336
  %response_obj_bytes = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %indvars.iv, i32 4, i32 21, !dbg !1620
  %14 = bitcast i64* %response_obj_bytes to <2 x i64>*, !dbg !1620
  store <2 x i64> zeroinitializer, <2 x i64>* %14, align 8, !dbg !1620, !tbaa !1336
  %store_too_large = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %indvars.iv, i32 4, i32 23, !dbg !1620
  %15 = bitcast i64* %store_too_large to <2 x i64>*, !dbg !1620
  store <2 x i64> zeroinitializer, <2 x i64>* %15, align 8, !dbg !1620, !tbaa !1336
  %get_extstore = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %indvars.iv, i32 4, i32 25, !dbg !1621
  %16 = bitcast i64* %get_extstore to <2 x i64>*, !dbg !1621
  store <2 x i64> zeroinitializer, <2 x i64>* %16, align 8, !dbg !1621, !tbaa !1336
  %get_oom_extstore = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %indvars.iv, i32 4, i32 27, !dbg !1621
  %17 = bitcast i64* %get_oom_extstore to <2 x i64>*, !dbg !1621
  store <2 x i64> zeroinitializer, <2 x i64>* %17, align 8, !dbg !1621, !tbaa !1336
  %miss_from_extstore = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %indvars.iv, i32 4, i32 29, !dbg !1621
  %18 = bitcast i64* %miss_from_extstore to <2 x i64>*, !dbg !1621
  store <2 x i64> zeroinitializer, <2 x i64>* %18, align 8, !dbg !1621, !tbaa !1336
  %slab_stats = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %3, i64 %indvars.iv, i32 4, i32 31, !dbg !1622
  %19 = bitcast [64 x %struct.slab_stats]* %slab_stats to i8*, !dbg !1623
  %call94 = tail call i8* @memset(i8* noundef nonnull %19, i32 noundef 0, i64 noundef 4096) #12, !dbg !1624
  %20 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** @threads, align 8, !dbg !1625, !tbaa !767
  %lru_hits = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %20, i64 %indvars.iv, i32 4, i32 32, !dbg !1626
  %21 = bitcast [256 x i64]* %lru_hits to i8*, !dbg !1627
  %call98 = tail call i8* @memset(i8* noundef nonnull %21, i32 noundef 0, i64 noundef 2048) #12, !dbg !1628
  %22 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** @threads, align 8, !dbg !1629, !tbaa !767
  %mutex102 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %22, i64 %indvars.iv, i32 4, i32 0, !dbg !1630
  %call103 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex102) #12, !dbg !1631
  %gcov_ctr104 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 1), align 8, !dbg !1632
  %23 = add i64 %gcov_ctr104, 1, !dbg !1632
  store i64 %23, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 1), align 8, !dbg !1632
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1632
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1609, metadata !DIExpression()), !dbg !1610
  %24 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 14), align 4, !dbg !1611, !tbaa !836
  %25 = sext i32 %24 to i64, !dbg !1614
  %cmp = icmp slt i64 %indvars.iv.next, %25, !dbg !1614
  br i1 %cmp, label %for.body, label %for.end, !dbg !1615, !llvm.loop !1633

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !1635
}

; Function Attrs: nounwind
declare !dbg !1636 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @threadlocal_stats_aggregate(%struct.thread_stats* noundef %stats) local_unnamed_addr #0 !dbg !1640 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata %struct.thread_stats* %stats, metadata !1645, metadata !DIExpression()), !dbg !1648
  %1 = bitcast %struct.thread_stats* %stats to i8*, !dbg !1649
  %call = tail call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 6448) #12, !dbg !1650
  call void @llvm.dbg.value(metadata i32 0, metadata !1646, metadata !DIExpression()), !dbg !1648
  %2 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 14), align 4, !dbg !1651, !tbaa !836
  %cmp410 = icmp sgt i32 %2, 0, !dbg !1654
  br i1 %cmp410, label %for.body.lr.ph, label %for.end290, !dbg !1655

for.body.lr.ph:                                   ; preds = %entry
  %get_cmds6 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 1
  %get_expired15 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 3
  %touch_cmds25 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 5
  %delete_misses35 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 7
  %decr_misses45 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 9
  %meta_cmds55 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 11
  %bytes_written65 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 13
  %conn_yields75 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 15
  %auth_errors85 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 17
  %response_obj_oom95 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 19
  %response_obj_bytes105 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 21
  %store_too_large115 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 23
  %get_extstore125 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 25
  %get_oom_extstore135 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 27
  %miss_from_extstore145 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 29
  %read_buf_count = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 33
  %read_buf_bytes = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 34
  %3 = bitcast i64* %get_cmds6 to <2 x i64>*
  %4 = bitcast i64* %get_cmds6 to <2 x i64>*
  %5 = bitcast i64* %get_expired15 to <2 x i64>*
  %6 = bitcast i64* %get_expired15 to <2 x i64>*
  %7 = bitcast i64* %touch_cmds25 to <2 x i64>*
  %8 = bitcast i64* %touch_cmds25 to <2 x i64>*
  %9 = bitcast i64* %delete_misses35 to <2 x i64>*
  %10 = bitcast i64* %delete_misses35 to <2 x i64>*
  %11 = bitcast i64* %decr_misses45 to <2 x i64>*
  %12 = bitcast i64* %decr_misses45 to <2 x i64>*
  %13 = bitcast i64* %meta_cmds55 to <2 x i64>*
  %14 = bitcast i64* %meta_cmds55 to <2 x i64>*
  %15 = bitcast i64* %bytes_written65 to <2 x i64>*
  %16 = bitcast i64* %bytes_written65 to <2 x i64>*
  %17 = bitcast i64* %conn_yields75 to <2 x i64>*
  %18 = bitcast i64* %conn_yields75 to <2 x i64>*
  %19 = bitcast i64* %auth_errors85 to <2 x i64>*
  %20 = bitcast i64* %auth_errors85 to <2 x i64>*
  %21 = bitcast i64* %response_obj_oom95 to <2 x i64>*
  %22 = bitcast i64* %response_obj_oom95 to <2 x i64>*
  %23 = bitcast i64* %response_obj_bytes105 to <2 x i64>*
  %24 = bitcast i64* %response_obj_bytes105 to <2 x i64>*
  %25 = bitcast i64* %store_too_large115 to <2 x i64>*
  %26 = bitcast i64* %store_too_large115 to <2 x i64>*
  %27 = bitcast i64* %get_extstore125 to <2 x i64>*
  %28 = bitcast i64* %get_extstore125 to <2 x i64>*
  %29 = bitcast i64* %get_oom_extstore135 to <2 x i64>*
  %30 = bitcast i64* %get_oom_extstore135 to <2 x i64>*
  %31 = bitcast i64* %miss_from_extstore145 to <2 x i64>*
  %32 = bitcast i64* %miss_from_extstore145 to <2 x i64>*
  %33 = bitcast i64* %read_buf_bytes to <2 x i64>*
  %34 = bitcast i64* %read_buf_bytes to <2 x i64>*
  br label %for.body, !dbg !1655

for.body:                                         ; preds = %for.body.lr.ph, %for.end267
  %indvars.iv417 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next418, %for.end267 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv417, metadata !1646, metadata !DIExpression()), !dbg !1648
  %35 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** @threads, align 8, !dbg !1656, !tbaa !767
  %mutex = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %35, i64 %indvars.iv417, i32 4, i32 0, !dbg !1658
  %call2 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !1659
  %36 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** @threads, align 8, !dbg !1660, !tbaa !767
  %get_cmds = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 1, !dbg !1660
  %37 = bitcast i64* %get_cmds to <2 x i64>*, !dbg !1660
  %38 = load <2 x i64>, <2 x i64>* %37, align 8, !dbg !1660, !tbaa !1336
  %39 = load <2 x i64>, <2 x i64>* %3, align 8, !dbg !1660, !tbaa !1336
  %40 = add <2 x i64> %39, %38, !dbg !1660
  store <2 x i64> %40, <2 x i64>* %4, align 8, !dbg !1660, !tbaa !1336
  %get_expired = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 3, !dbg !1660
  %41 = bitcast i64* %get_expired to <2 x i64>*, !dbg !1660
  %42 = load <2 x i64>, <2 x i64>* %41, align 8, !dbg !1660, !tbaa !1336
  %43 = load <2 x i64>, <2 x i64>* %5, align 8, !dbg !1660, !tbaa !1336
  %44 = add <2 x i64> %43, %42, !dbg !1660
  store <2 x i64> %44, <2 x i64>* %6, align 8, !dbg !1660, !tbaa !1336
  %touch_cmds = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 5, !dbg !1660
  %45 = bitcast i64* %touch_cmds to <2 x i64>*, !dbg !1660
  %46 = load <2 x i64>, <2 x i64>* %45, align 8, !dbg !1660, !tbaa !1336
  %47 = load <2 x i64>, <2 x i64>* %7, align 8, !dbg !1660, !tbaa !1336
  %48 = add <2 x i64> %47, %46, !dbg !1660
  store <2 x i64> %48, <2 x i64>* %8, align 8, !dbg !1660, !tbaa !1336
  %delete_misses = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 7, !dbg !1660
  %49 = bitcast i64* %delete_misses to <2 x i64>*, !dbg !1660
  %50 = load <2 x i64>, <2 x i64>* %49, align 8, !dbg !1660, !tbaa !1336
  %51 = load <2 x i64>, <2 x i64>* %9, align 8, !dbg !1660, !tbaa !1336
  %52 = add <2 x i64> %51, %50, !dbg !1660
  store <2 x i64> %52, <2 x i64>* %10, align 8, !dbg !1660, !tbaa !1336
  %decr_misses = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 9, !dbg !1660
  %53 = bitcast i64* %decr_misses to <2 x i64>*, !dbg !1660
  %54 = load <2 x i64>, <2 x i64>* %53, align 8, !dbg !1660, !tbaa !1336
  %55 = load <2 x i64>, <2 x i64>* %11, align 8, !dbg !1660, !tbaa !1336
  %56 = add <2 x i64> %55, %54, !dbg !1660
  store <2 x i64> %56, <2 x i64>* %12, align 8, !dbg !1660, !tbaa !1336
  %meta_cmds = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 11, !dbg !1660
  %57 = bitcast i64* %meta_cmds to <2 x i64>*, !dbg !1660
  %58 = load <2 x i64>, <2 x i64>* %57, align 8, !dbg !1660, !tbaa !1336
  %59 = load <2 x i64>, <2 x i64>* %13, align 8, !dbg !1660, !tbaa !1336
  %60 = add <2 x i64> %59, %58, !dbg !1660
  store <2 x i64> %60, <2 x i64>* %14, align 8, !dbg !1660, !tbaa !1336
  %bytes_written = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 13, !dbg !1660
  %61 = bitcast i64* %bytes_written to <2 x i64>*, !dbg !1660
  %62 = load <2 x i64>, <2 x i64>* %61, align 8, !dbg !1660, !tbaa !1336
  %63 = load <2 x i64>, <2 x i64>* %15, align 8, !dbg !1660, !tbaa !1336
  %64 = add <2 x i64> %63, %62, !dbg !1660
  store <2 x i64> %64, <2 x i64>* %16, align 8, !dbg !1660, !tbaa !1336
  %conn_yields = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 15, !dbg !1660
  %65 = bitcast i64* %conn_yields to <2 x i64>*, !dbg !1660
  %66 = load <2 x i64>, <2 x i64>* %65, align 8, !dbg !1660, !tbaa !1336
  %67 = load <2 x i64>, <2 x i64>* %17, align 8, !dbg !1660, !tbaa !1336
  %68 = add <2 x i64> %67, %66, !dbg !1660
  store <2 x i64> %68, <2 x i64>* %18, align 8, !dbg !1660, !tbaa !1336
  %auth_errors = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 17, !dbg !1660
  %69 = bitcast i64* %auth_errors to <2 x i64>*, !dbg !1660
  %70 = load <2 x i64>, <2 x i64>* %69, align 8, !dbg !1660, !tbaa !1336
  %71 = load <2 x i64>, <2 x i64>* %19, align 8, !dbg !1660, !tbaa !1336
  %72 = add <2 x i64> %71, %70, !dbg !1660
  store <2 x i64> %72, <2 x i64>* %20, align 8, !dbg !1660, !tbaa !1336
  %response_obj_oom = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 19, !dbg !1660
  %73 = bitcast i64* %response_obj_oom to <2 x i64>*, !dbg !1660
  %74 = load <2 x i64>, <2 x i64>* %73, align 8, !dbg !1660, !tbaa !1336
  %75 = load <2 x i64>, <2 x i64>* %21, align 8, !dbg !1660, !tbaa !1336
  %76 = add <2 x i64> %75, %74, !dbg !1660
  store <2 x i64> %76, <2 x i64>* %22, align 8, !dbg !1660, !tbaa !1336
  %response_obj_bytes = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 21, !dbg !1660
  %77 = bitcast i64* %response_obj_bytes to <2 x i64>*, !dbg !1660
  %78 = load <2 x i64>, <2 x i64>* %77, align 8, !dbg !1660, !tbaa !1336
  %79 = load <2 x i64>, <2 x i64>* %23, align 8, !dbg !1660, !tbaa !1336
  %80 = add <2 x i64> %79, %78, !dbg !1660
  store <2 x i64> %80, <2 x i64>* %24, align 8, !dbg !1660, !tbaa !1336
  %store_too_large = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 23, !dbg !1660
  %81 = bitcast i64* %store_too_large to <2 x i64>*, !dbg !1660
  %82 = load <2 x i64>, <2 x i64>* %81, align 8, !dbg !1660, !tbaa !1336
  %83 = load <2 x i64>, <2 x i64>* %25, align 8, !dbg !1660, !tbaa !1336
  %84 = add <2 x i64> %83, %82, !dbg !1660
  store <2 x i64> %84, <2 x i64>* %26, align 8, !dbg !1660, !tbaa !1336
  %get_extstore = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 25, !dbg !1661
  %85 = bitcast i64* %get_extstore to <2 x i64>*, !dbg !1661
  %86 = load <2 x i64>, <2 x i64>* %85, align 8, !dbg !1661, !tbaa !1336
  %87 = load <2 x i64>, <2 x i64>* %27, align 8, !dbg !1661, !tbaa !1336
  %88 = add <2 x i64> %87, %86, !dbg !1661
  store <2 x i64> %88, <2 x i64>* %28, align 8, !dbg !1661, !tbaa !1336
  %get_oom_extstore = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 27, !dbg !1661
  %89 = bitcast i64* %get_oom_extstore to <2 x i64>*, !dbg !1661
  %90 = load <2 x i64>, <2 x i64>* %89, align 8, !dbg !1661, !tbaa !1336
  %91 = load <2 x i64>, <2 x i64>* %29, align 8, !dbg !1661, !tbaa !1336
  %92 = add <2 x i64> %91, %90, !dbg !1661
  store <2 x i64> %92, <2 x i64>* %30, align 8, !dbg !1661, !tbaa !1336
  %miss_from_extstore = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 29, !dbg !1661
  %93 = bitcast i64* %miss_from_extstore to <2 x i64>*, !dbg !1661
  %94 = load <2 x i64>, <2 x i64>* %93, align 8, !dbg !1661, !tbaa !1336
  %95 = load <2 x i64>, <2 x i64>* %31, align 8, !dbg !1661, !tbaa !1336
  %96 = add <2 x i64> %95, %94, !dbg !1661
  store <2 x i64> %96, <2 x i64>* %32, align 8, !dbg !1661, !tbaa !1336
  call void @llvm.dbg.value(metadata i32 0, metadata !1647, metadata !DIExpression()), !dbg !1648
  br label %for.body154, !dbg !1662

for.body154:                                      ; preds = %for.body, %for.body154
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body154 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1647, metadata !DIExpression()), !dbg !1648
  %set_cmds = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 31, i64 %indvars.iv, i32 0, !dbg !1664
  %set_cmds163 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 31, i64 %indvars.iv, i32 0, !dbg !1664
  %97 = bitcast i64* %set_cmds to <2 x i64>*, !dbg !1664
  %98 = load <2 x i64>, <2 x i64>* %97, align 8, !dbg !1664, !tbaa !1336
  %99 = bitcast i64* %set_cmds163 to <2 x i64>*, !dbg !1664
  %100 = load <2 x i64>, <2 x i64>* %99, align 8, !dbg !1664, !tbaa !1336
  %101 = add <2 x i64> %100, %98, !dbg !1664
  %102 = bitcast i64* %set_cmds163 to <2 x i64>*, !dbg !1664
  store <2 x i64> %101, <2 x i64>* %102, align 8, !dbg !1664, !tbaa !1336
  %touch_hits = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 31, i64 %indvars.iv, i32 2, !dbg !1664
  %touch_hits185 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 31, i64 %indvars.iv, i32 2, !dbg !1664
  %103 = bitcast i64* %touch_hits to <2 x i64>*, !dbg !1664
  %104 = load <2 x i64>, <2 x i64>* %103, align 8, !dbg !1664, !tbaa !1336
  %105 = bitcast i64* %touch_hits185 to <2 x i64>*, !dbg !1664
  %106 = load <2 x i64>, <2 x i64>* %105, align 8, !dbg !1664, !tbaa !1336
  %107 = add <2 x i64> %106, %104, !dbg !1664
  %108 = bitcast i64* %touch_hits185 to <2 x i64>*, !dbg !1664
  store <2 x i64> %107, <2 x i64>* %108, align 8, !dbg !1664, !tbaa !1336
  %cas_hits = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 31, i64 %indvars.iv, i32 4, !dbg !1664
  %cas_hits207 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 31, i64 %indvars.iv, i32 4, !dbg !1664
  %109 = bitcast i64* %cas_hits to <2 x i64>*, !dbg !1664
  %110 = load <2 x i64>, <2 x i64>* %109, align 8, !dbg !1664, !tbaa !1336
  %111 = bitcast i64* %cas_hits207 to <2 x i64>*, !dbg !1664
  %112 = load <2 x i64>, <2 x i64>* %111, align 8, !dbg !1664, !tbaa !1336
  %113 = add <2 x i64> %112, %110, !dbg !1664
  %114 = bitcast i64* %cas_hits207 to <2 x i64>*, !dbg !1664
  store <2 x i64> %113, <2 x i64>* %114, align 8, !dbg !1664, !tbaa !1336
  %incr_hits = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 31, i64 %indvars.iv, i32 6, !dbg !1664
  %incr_hits229 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 31, i64 %indvars.iv, i32 6, !dbg !1664
  %115 = bitcast i64* %incr_hits to <2 x i64>*, !dbg !1664
  %116 = load <2 x i64>, <2 x i64>* %115, align 8, !dbg !1664, !tbaa !1336
  %117 = bitcast i64* %incr_hits229 to <2 x i64>*, !dbg !1664
  %118 = load <2 x i64>, <2 x i64>* %117, align 8, !dbg !1664, !tbaa !1336
  %119 = add <2 x i64> %118, %116, !dbg !1664
  %120 = bitcast i64* %incr_hits229 to <2 x i64>*, !dbg !1664
  store <2 x i64> %119, <2 x i64>* %120, align 8, !dbg !1664, !tbaa !1336
  %gcov_ctr291 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 1), align 8, !dbg !1667
  %121 = add i64 %gcov_ctr291, 1, !dbg !1667
  store i64 %121, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 1), align 8, !dbg !1667
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1647, metadata !DIExpression()), !dbg !1648
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64, !dbg !1668
  br i1 %exitcond.not, label %for.body244, label %for.body154, !dbg !1662, !llvm.loop !1669

for.body244:                                      ; preds = %for.body154, %for.body244
  %indvars.iv413 = phi i64 [ %indvars.iv.next414, %for.body244 ], [ 0, %for.body154 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv413, metadata !1647, metadata !DIExpression()), !dbg !1648
  %arrayidx249 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 32, i64 %indvars.iv413, !dbg !1671
  %122 = load i64, i64* %arrayidx249, align 8, !dbg !1671, !tbaa !1336
  %arrayidx252 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 32, i64 %indvars.iv413, !dbg !1675
  %123 = load i64, i64* %arrayidx252, align 8, !dbg !1676, !tbaa !1336
  %add253 = add i64 %123, %122, !dbg !1676
  store i64 %add253, i64* %arrayidx252, align 8, !dbg !1676, !tbaa !1336
  %124 = load i64, i64* %arrayidx249, align 8, !dbg !1677, !tbaa !1336
  %and = and i64 %indvars.iv413, 2147483455, !dbg !1678
  %get_hits263 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 31, i64 %and, i32 1, !dbg !1679
  %125 = load i64, i64* %get_hits263, align 8, !dbg !1680, !tbaa !1681
  %add264 = add i64 %125, %124, !dbg !1680
  store i64 %add264, i64* %get_hits263, align 8, !dbg !1680, !tbaa !1681
  %gcov_ctr292 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 2), align 16, !dbg !1683
  %126 = add i64 %gcov_ctr292, 1, !dbg !1683
  store i64 %126, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 2), align 16, !dbg !1683
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next414, metadata !1647, metadata !DIExpression()), !dbg !1648
  %exitcond416.not = icmp eq i64 %indvars.iv.next414, 256, !dbg !1684
  br i1 %exitcond416.not, label %for.end267, label %for.body244, !dbg !1685, !llvm.loop !1686

for.end267:                                       ; preds = %for.body244
  %rbuf_cache = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 7, !dbg !1688
  %127 = load %struct.cache_t*, %struct.cache_t** %rbuf_cache, align 8, !dbg !1688, !tbaa !1689
  %total = getelementptr inbounds %struct.cache_t, %struct.cache_t* %127, i64 0, i32 5, !dbg !1690
  %128 = bitcast i32* %total to <2 x i32>*, !dbg !1690
  %129 = load <2 x i32>, <2 x i32>* %128, align 4, !dbg !1690, !tbaa !771
  %130 = extractelement <2 x i32> %129, i64 0, !dbg !1691
  %conv = sext i32 %130 to i64, !dbg !1691
  %131 = load i64, i64* %read_buf_count, align 8, !dbg !1692, !tbaa !1693
  %add270 = add i64 %131, %conv, !dbg !1692
  store i64 %add270, i64* %read_buf_count, align 8, !dbg !1692, !tbaa !1693
  %132 = shl nsw <2 x i32> %129, <i32 14, i32 14>, !dbg !1694
  %133 = sext <2 x i32> %132 to <2 x i64>, !dbg !1695
  %134 = load <2 x i64>, <2 x i64>* %33, align 8, !dbg !1696, !tbaa !1336
  %135 = add <2 x i64> %134, %133, !dbg !1696
  store <2 x i64> %135, <2 x i64>* %34, align 8, !dbg !1696, !tbaa !1336
  %mutex286 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 %indvars.iv417, i32 4, i32 0, !dbg !1697
  %call287 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex286) #12, !dbg !1698
  %gcov_ctr293 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 3), align 8, !dbg !1699
  %136 = add i64 %gcov_ctr293, 1, !dbg !1699
  store i64 %136, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 3), align 8, !dbg !1699
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next418, metadata !1646, metadata !DIExpression()), !dbg !1648
  %137 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 14), align 4, !dbg !1651, !tbaa !836
  %138 = sext i32 %137 to i64, !dbg !1654
  %cmp = icmp slt i64 %indvars.iv.next418, %138, !dbg !1654
  br i1 %cmp, label %for.body, label %for.end290, !dbg !1655, !llvm.loop !1700

for.end290:                                       ; preds = %for.end267, %entry
  ret void, !dbg !1702
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @slab_stats_aggregate(%struct.thread_stats* nocapture noundef readonly %stats, %struct.slab_stats* noundef %out) local_unnamed_addr #0 !dbg !1703 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.thread_stats* %stats, metadata !1708, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata %struct.slab_stats* %out, metadata !1709, metadata !DIExpression()), !dbg !1711
  %1 = bitcast %struct.slab_stats* %out to i8*, !dbg !1712
  %call = tail call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 64) #12, !dbg !1713
  call void @llvm.dbg.value(metadata i32 0, metadata !1710, metadata !DIExpression()), !dbg !1711
  %touch_hits10 = getelementptr inbounds %struct.slab_stats, %struct.slab_stats* %out, i64 0, i32 2
  %cas_hits20 = getelementptr inbounds %struct.slab_stats, %struct.slab_stats* %out, i64 0, i32 4
  %incr_hits30 = getelementptr inbounds %struct.slab_stats, %struct.slab_stats* %out, i64 0, i32 6
  call void @llvm.dbg.value(metadata i32 0, metadata !1710, metadata !DIExpression()), !dbg !1711
  %2 = bitcast i64* %touch_hits10 to <2 x i64>*, !dbg !1714
  %3 = load <2 x i64>, <2 x i64>* %2, align 8, !dbg !1714, !tbaa !1336
  %4 = bitcast i64* %cas_hits20 to <2 x i64>*, !dbg !1714
  %5 = load <2 x i64>, <2 x i64>* %4, align 8, !dbg !1714, !tbaa !1336
  %6 = bitcast i64* %incr_hits30 to <2 x i64>*, !dbg !1714
  %7 = load <2 x i64>, <2 x i64>* %6, align 8, !dbg !1714, !tbaa !1336
  %8 = bitcast %struct.slab_stats* %out to <2 x i64>*
  %9 = bitcast %struct.slab_stats* %out to <2 x i64>*
  %10 = bitcast i64* %touch_hits10 to <2 x i64>*
  %11 = bitcast i64* %cas_hits20 to <2 x i64>*
  %12 = bitcast i64* %incr_hits30 to <2 x i64>*
  br label %for.body, !dbg !1718

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %13 = phi <2 x i64> [ %3, %entry ], [ %22, %for.body ], !dbg !1714
  %14 = phi <2 x i64> [ %5, %entry ], [ %25, %for.body ], !dbg !1714
  %15 = phi <2 x i64> [ %7, %entry ], [ %28, %for.body ], !dbg !1714
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1710, metadata !DIExpression()), !dbg !1711
  %set_cmds = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 31, i64 %indvars.iv, i32 0, !dbg !1714
  %16 = bitcast i64* %set_cmds to <2 x i64>*, !dbg !1714
  %17 = load <2 x i64>, <2 x i64>* %16, align 8, !dbg !1714, !tbaa !1336
  %18 = load <2 x i64>, <2 x i64>* %8, align 8, !dbg !1714, !tbaa !1336
  %19 = add <2 x i64> %18, %17, !dbg !1714
  store <2 x i64> %19, <2 x i64>* %9, align 8, !dbg !1714, !tbaa !1336
  %touch_hits = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 31, i64 %indvars.iv, i32 2, !dbg !1714
  %20 = bitcast i64* %touch_hits to <2 x i64>*, !dbg !1714
  %21 = load <2 x i64>, <2 x i64>* %20, align 8, !dbg !1714, !tbaa !1336
  %22 = add <2 x i64> %13, %21, !dbg !1714
  store <2 x i64> %22, <2 x i64>* %10, align 8, !dbg !1714, !tbaa !1336
  %cas_hits = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 31, i64 %indvars.iv, i32 4, !dbg !1714
  %23 = bitcast i64* %cas_hits to <2 x i64>*, !dbg !1714
  %24 = load <2 x i64>, <2 x i64>* %23, align 8, !dbg !1714, !tbaa !1336
  %25 = add <2 x i64> %14, %24, !dbg !1714
  store <2 x i64> %25, <2 x i64>* %11, align 8, !dbg !1714, !tbaa !1336
  %incr_hits = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %stats, i64 0, i32 31, i64 %indvars.iv, i32 6, !dbg !1714
  %26 = bitcast i64* %incr_hits to <2 x i64>*, !dbg !1714
  %27 = load <2 x i64>, <2 x i64>* %26, align 8, !dbg !1714, !tbaa !1336
  %28 = add <2 x i64> %15, %27, !dbg !1714
  store <2 x i64> %28, <2 x i64>* %12, align 8, !dbg !1714, !tbaa !1336
  %gcov_ctr37 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 1), align 8, !dbg !1719
  %29 = add i64 %gcov_ctr37, 1, !dbg !1719
  store i64 %29, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 1), align 8, !dbg !1719
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1710, metadata !DIExpression()), !dbg !1711
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64, !dbg !1720
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1718, !llvm.loop !1721

for.end:                                          ; preds = %for.body
  ret void, !dbg !1723
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @memcached_thread_init(i32 noundef %nthreads, i8* noundef %arg) local_unnamed_addr #0 !dbg !1724 {
entry:
  call void @llvm.dbg.value(metadata i32 %nthreads, metadata !1728, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8* %arg, metadata !1729, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i32 0, metadata !1730, metadata !DIExpression()), !dbg !1732
  br label %for.body, !dbg !1733

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1730, metadata !DIExpression()), !dbg !1732
  %arrayidx = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %indvars.iv, !dbg !1735
  %call = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull %arrayidx, %union.pthread_mutexattr_t* noundef null) #12, !dbg !1738
  %gcov_ctr = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 0), align 16, !dbg !1739
  %0 = add i64 %gcov_ctr, 1, !dbg !1739
  store i64 %0, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 0), align 16, !dbg !1739
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1739
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1730, metadata !DIExpression()), !dbg !1732
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256, !dbg !1740
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1733, !llvm.loop !1741

for.end:                                          ; preds = %for.body
  %call1 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull @worker_hang_lock, %union.pthread_mutexattr_t* noundef null) #12, !dbg !1743
  %call2 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull @init_lock, %union.pthread_mutexattr_t* noundef null) #12, !dbg !1744
  %call3 = tail call i32 @pthread_cond_init(%union.pthread_cond_t* noundef nonnull @init_cond, %union.pthread_condattr_t* noundef null) #12, !dbg !1745
  %cmp4 = icmp slt i32 %nthreads, 3, !dbg !1746
  br i1 %cmp4, label %if.then, label %if.else, !dbg !1748

if.then:                                          ; preds = %for.end
  %gcov_ctr78 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 1), align 8, !dbg !1749
  %1 = add i64 %gcov_ctr78, 1, !dbg !1749
  store i64 %1, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 1), align 8, !dbg !1749
  call void @llvm.dbg.value(metadata i32 10, metadata !1731, metadata !DIExpression()), !dbg !1732
  br label %if.end20, !dbg !1751

if.else:                                          ; preds = %for.end
  %cmp5 = icmp eq i32 %nthreads, 3, !dbg !1752
  br i1 %cmp5, label %if.then6, label %if.else7, !dbg !1754

if.then6:                                         ; preds = %if.else
  %gcov_ctr79 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 2), align 16, !dbg !1755
  %2 = add i64 %gcov_ctr79, 1, !dbg !1755
  store i64 %2, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 2), align 16, !dbg !1755
  call void @llvm.dbg.value(metadata i32 11, metadata !1731, metadata !DIExpression()), !dbg !1732
  br label %if.end20, !dbg !1757

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp ult i32 %nthreads, 5, !dbg !1758
  br i1 %cmp8, label %if.then9, label %if.else10, !dbg !1760

if.then9:                                         ; preds = %if.else7
  %gcov_ctr80 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 3), align 8, !dbg !1761
  %3 = add i64 %gcov_ctr80, 1, !dbg !1761
  store i64 %3, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 3), align 8, !dbg !1761
  call void @llvm.dbg.value(metadata i32 12, metadata !1731, metadata !DIExpression()), !dbg !1732
  br label %if.end20, !dbg !1763

if.else10:                                        ; preds = %if.else7
  %cmp11 = icmp ult i32 %nthreads, 11, !dbg !1764
  br i1 %cmp11, label %if.then12, label %if.else13, !dbg !1766

if.then12:                                        ; preds = %if.else10
  %gcov_ctr81 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 4), align 16, !dbg !1767
  %4 = add i64 %gcov_ctr81, 1, !dbg !1767
  store i64 %4, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 4), align 16, !dbg !1767
  call void @llvm.dbg.value(metadata i32 13, metadata !1731, metadata !DIExpression()), !dbg !1732
  br label %if.end20, !dbg !1769

if.else13:                                        ; preds = %if.else10
  %cmp14 = icmp ult i32 %nthreads, 21, !dbg !1770
  br i1 %cmp14, label %if.then15, label %if.else16, !dbg !1772

if.then15:                                        ; preds = %if.else13
  %gcov_ctr82 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 5), align 8, !dbg !1773
  %5 = add i64 %gcov_ctr82, 1, !dbg !1773
  store i64 %5, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 5), align 8, !dbg !1773
  call void @llvm.dbg.value(metadata i32 14, metadata !1731, metadata !DIExpression()), !dbg !1732
  br label %if.end20, !dbg !1775

if.else16:                                        ; preds = %if.else13
  %gcov_ctr83 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 6), align 16, !dbg !1776
  %6 = add i64 %gcov_ctr83, 1, !dbg !1776
  store i64 %6, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 6), align 16, !dbg !1776
  call void @llvm.dbg.value(metadata i32 15, metadata !1731, metadata !DIExpression()), !dbg !1732
  br label %if.end20

if.end20:                                         ; preds = %if.then6, %if.then12, %if.else16, %if.then15, %if.then9, %if.then
  %power.0 = phi i32 [ 10, %if.then ], [ 11, %if.then6 ], [ 12, %if.then9 ], [ 13, %if.then12 ], [ 14, %if.then15 ], [ 15, %if.else16 ], !dbg !1778
  call void @llvm.dbg.value(metadata i32 %power.0, metadata !1731, metadata !DIExpression()), !dbg !1732
  %7 = load i32, i32* @hashpower, align 4, !dbg !1779, !tbaa !771
  %cmp21.not = icmp ult i32 %power.0, %7, !dbg !1781
  br i1 %cmp21.not, label %if.end26, label %if.then22, !dbg !1782

if.then22:                                        ; preds = %if.end20
  %gcov_ctr84 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 7), align 8, !dbg !1783
  %8 = add i64 %gcov_ctr84, 1, !dbg !1783
  store i64 %8, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 7), align 8, !dbg !1783
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1783, !tbaa !767
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.16, i64 0, i64 0), i32 noundef %7, i32 noundef %power.0) #12, !dbg !1785
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1786, !tbaa !767
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !1787
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1788, !tbaa !767
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0)) #12, !dbg !1789
  tail call void @exit(i32 noundef 1) #13, !dbg !1790
  unreachable, !dbg !1790

if.end26:                                         ; preds = %if.end20
  %shl = shl nuw nsw i32 1, %power.0, !dbg !1791
  store i32 %shl, i32* @item_lock_count, align 4, !dbg !1792, !tbaa !771
  store i32 %power.0, i32* @item_lock_hashpower, align 4, !dbg !1793, !tbaa !771
  %conv27 = zext i32 %shl to i64, !dbg !1794
  %call28 = tail call noalias i8* @calloc(i64 noundef %conv27, i64 noundef 40) #12, !dbg !1795
  store i8* %call28, i8** bitcast (%union.pthread_mutex_t** @item_locks to i8**), align 8, !dbg !1796, !tbaa !767
  %tobool.not = icmp eq i8* %call28, null, !dbg !1797
  br i1 %tobool.not, label %if.then29, label %for.cond31.preheader, !dbg !1799

for.cond31.preheader:                             ; preds = %if.end26
  call void @llvm.dbg.value(metadata i32 0, metadata !1730, metadata !DIExpression()), !dbg !1732
  %12 = load i32, i32* @item_lock_count, align 4, !dbg !1800, !tbaa !771
  %cmp32119.not = icmp eq i32 %12, 0, !dbg !1803
  br i1 %cmp32119.not, label %for.end40, label %for.body34.preheader, !dbg !1804

for.body34.preheader:                             ; preds = %for.cond31.preheader
  %13 = bitcast i8* %call28 to %union.pthread_mutex_t*, !dbg !1799
  call void @llvm.dbg.value(metadata i64 0, metadata !1730, metadata !DIExpression()), !dbg !1732
  %call37138 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull %13, %union.pthread_mutexattr_t* noundef null) #12, !dbg !1805
  %gcov_ctr86139 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 9), align 8, !dbg !1807
  %14 = add i64 %gcov_ctr86139, 1, !dbg !1807
  store i64 %14, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 9), align 8, !dbg !1807
  call void @llvm.dbg.value(metadata i64 1, metadata !1730, metadata !DIExpression()), !dbg !1732
  %15 = load i32, i32* @item_lock_count, align 4, !dbg !1800, !tbaa !771
  %cmp32140 = icmp ugt i32 %15, 1, !dbg !1803
  br i1 %cmp32140, label %for.body34.for.body34_crit_edge, label %for.end40, !dbg !1804, !llvm.loop !1808

if.then29:                                        ; preds = %if.end26
  %gcov_ctr85 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 8), align 16, !dbg !1810
  %16 = add i64 %gcov_ctr85, 1, !dbg !1810
  store i64 %16, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 8), align 16, !dbg !1810
  tail call void @perror(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0)) #12, !dbg !1810
  tail call void @exit(i32 noundef 1) #13, !dbg !1812
  unreachable, !dbg !1812

for.body34.for.body34_crit_edge:                  ; preds = %for.body34.preheader, %for.body34.for.body34_crit_edge
  %indvars.iv.next127141 = phi i64 [ %indvars.iv.next127, %for.body34.for.body34_crit_edge ], [ 1, %for.body34.preheader ]
  %.pre = load %union.pthread_mutex_t*, %union.pthread_mutex_t** @item_locks, align 8, !dbg !1813, !tbaa !767
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next127141, metadata !1730, metadata !DIExpression()), !dbg !1732
  %arrayidx36 = getelementptr inbounds %union.pthread_mutex_t, %union.pthread_mutex_t* %.pre, i64 %indvars.iv.next127141, !dbg !1813
  %call37 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull %arrayidx36, %union.pthread_mutexattr_t* noundef null) #12, !dbg !1805
  %gcov_ctr86 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 9), align 8, !dbg !1807
  %17 = add i64 %gcov_ctr86, 1, !dbg !1807
  store i64 %17, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 9), align 8, !dbg !1807
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv.next127141, 1, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next127, metadata !1730, metadata !DIExpression()), !dbg !1732
  %18 = load i32, i32* @item_lock_count, align 4, !dbg !1800, !tbaa !771
  %19 = zext i32 %18 to i64, !dbg !1803
  %cmp32 = icmp ult i64 %indvars.iv.next127, %19, !dbg !1803
  br i1 %cmp32, label %for.body34.for.body34_crit_edge, label %for.end40, !dbg !1804, !llvm.loop !1808

for.end40:                                        ; preds = %for.body34.for.body34_crit_edge, %for.body34.preheader, %for.cond31.preheader
  %conv41 = sext i32 %nthreads to i64, !dbg !1814
  %call42 = tail call noalias i8* @calloc(i64 noundef %conv41, i64 noundef 6808) #12, !dbg !1815
  store i8* %call42, i8** bitcast (%struct.LIBEVENT_THREAD** @threads to i8**), align 8, !dbg !1816, !tbaa !767
  %tobool43.not = icmp eq i8* %call42, null, !dbg !1817
  br i1 %tobool43.not, label %if.then44, label %for.cond46.preheader, !dbg !1819

for.cond46.preheader:                             ; preds = %for.end40
  call void @llvm.dbg.value(metadata i32 0, metadata !1730, metadata !DIExpression()), !dbg !1732
  %cmp47121 = icmp sgt i32 %nthreads, 0, !dbg !1820
  br i1 %cmp47121, label %for.body49.preheader, label %for.end75, !dbg !1823

for.body49.preheader:                             ; preds = %for.cond46.preheader
  %wide.trip.count = zext i32 %nthreads to i64, !dbg !1820
  br label %for.body49, !dbg !1823

if.then44:                                        ; preds = %for.end40
  %gcov_ctr87 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 10), align 16, !dbg !1824
  %20 = add i64 %gcov_ctr87, 1, !dbg !1824
  store i64 %20, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 10), align 16, !dbg !1824
  tail call void @perror(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0)) #12, !dbg !1824
  tail call void @exit(i32 noundef 1) #13, !dbg !1826
  unreachable, !dbg !1826

for.cond67.preheader:                             ; preds = %if.end59
  call void @llvm.dbg.value(metadata i32 0, metadata !1730, metadata !DIExpression()), !dbg !1732
  br i1 %cmp47121, label %for.body70.preheader, label %for.end75, !dbg !1827

for.body70.preheader:                             ; preds = %for.cond67.preheader
  %wide.trip.count136 = zext i32 %nthreads to i64, !dbg !1829
  br label %for.body70, !dbg !1827

for.body49:                                       ; preds = %for.body49.preheader, %if.end59
  %indvars.iv129 = phi i64 [ 0, %for.body49.preheader ], [ %indvars.iv.next130, %if.end59 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv129, metadata !1730, metadata !DIExpression()), !dbg !1732
  %call50 = tail call i32 @eventfd(i32 noundef 0, i32 noundef 2048) #12, !dbg !1831
  %21 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** @threads, align 8, !dbg !1833, !tbaa !767
  %notify_event_fd = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %21, i64 %indvars.iv129, i32 3, !dbg !1834
  store i32 %call50, i32* %notify_event_fd, align 8, !dbg !1835, !tbaa !1339
  %cmp56 = icmp eq i32 %call50, -1, !dbg !1836
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !1838

if.then58:                                        ; preds = %for.body49
  %gcov_ctr88 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 11), align 8, !dbg !1839
  %22 = add i64 %gcov_ctr88, 1, !dbg !1839
  store i64 %22, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 11), align 8, !dbg !1839
  tail call void @perror(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0)) #12, !dbg !1839
  tail call void @exit(i32 noundef 1) #13, !dbg !1841
  unreachable, !dbg !1841

if.end59:                                         ; preds = %for.body49
  %storage = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %21, i64 %indvars.iv129, i32 10, !dbg !1842
  store i8* %arg, i8** %storage, align 8, !dbg !1843, !tbaa !1844
  %arrayidx63 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %21, i64 %indvars.iv129, !dbg !1845
  tail call fastcc void @setup_thread(%struct.LIBEVENT_THREAD* noundef %arrayidx63) #14, !dbg !1846
  %23 = load i32, i32* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 5), align 4, !dbg !1847, !tbaa !1848
  %add = add i32 %23, 5, !dbg !1847
  store i32 %add, i32* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 5), align 4, !dbg !1847, !tbaa !1848
  %gcov_ctr89 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 12), align 16, !dbg !1850
  %24 = add i64 %gcov_ctr89, 1, !dbg !1850
  store i64 %24, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 12), align 16, !dbg !1850
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next130, metadata !1730, metadata !DIExpression()), !dbg !1732
  %exitcond132.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count, !dbg !1820
  br i1 %exitcond132.not, label %for.cond67.preheader, label %for.body49, !dbg !1823, !llvm.loop !1851

for.body70:                                       ; preds = %for.body70.preheader, %for.body70
  %indvars.iv133 = phi i64 [ 0, %for.body70.preheader ], [ %indvars.iv.next134, %for.body70 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv133, metadata !1730, metadata !DIExpression()), !dbg !1732
  %25 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** @threads, align 8, !dbg !1853, !tbaa !767
  %arrayidx72 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %25, i64 %indvars.iv133, !dbg !1853
  %26 = bitcast %struct.LIBEVENT_THREAD* %arrayidx72 to i8*, !dbg !1855
  tail call fastcc void @create_worker(i8* noundef %26) #14, !dbg !1856
  %gcov_ctr90 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 13), align 8, !dbg !1857
  %27 = add i64 %gcov_ctr90, 1, !dbg !1857
  store i64 %27, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 13), align 8, !dbg !1857
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next134, metadata !1730, metadata !DIExpression()), !dbg !1732
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136, !dbg !1829
  br i1 %exitcond137.not, label %for.end75, label %for.body70, !dbg !1827, !llvm.loop !1858

for.end75:                                        ; preds = %for.body70, %for.cond46.preheader, %for.cond67.preheader
  %call76 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @init_lock) #12, !dbg !1860
  tail call fastcc void @wait_for_thread_registration(i32 noundef %nthreads) #14, !dbg !1861
  %call77 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @init_lock) #12, !dbg !1862
  ret void, !dbg !1863
}

; Function Attrs: nounwind
declare !dbg !1864 dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef, %union.pthread_mutexattr_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1875 dso_local i32 @pthread_cond_init(%union.pthread_cond_t* noundef, %union.pthread_condattr_t* noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare !dbg !1888 dso_local void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !1890 dso_local noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1893 dso_local void @perror(i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1896 dso_local i32 @eventfd(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @setup_thread(%struct.LIBEVENT_THREAD* noundef %me) unnamed_addr #0 !dbg !1900 {
entry:
  call void @llvm.dbg.value(metadata %struct.LIBEVENT_THREAD* %me, metadata !1904, metadata !DIExpression()), !dbg !1911
  %call = tail call %struct.event_config* @event_config_new() #12, !dbg !1912
  call void @llvm.dbg.value(metadata %struct.event_config* %call, metadata !1905, metadata !DIExpression()), !dbg !1911
  %call1 = tail call i32 @event_config_set_flag(%struct.event_config* noundef %call, i32 noundef 1) #12, !dbg !1913
  %call2 = tail call %struct.event_base* @event_base_new_with_config(%struct.event_config* noundef %call) #12, !dbg !1914
  %base = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %me, i64 0, i32 1, !dbg !1915
  store %struct.event_base* %call2, %struct.event_base** %base, align 8, !dbg !1916, !tbaa !1917
  tail call void @event_config_free(%struct.event_config* noundef %call) #12, !dbg !1918
  %0 = load %struct.event_base*, %struct.event_base** %base, align 8, !dbg !1919, !tbaa !1917
  %tobool.not = icmp eq %struct.event_base* %0, null, !dbg !1921
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1922

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 0), align 16, !dbg !1923
  %1 = add i64 %gcov_ctr, 1, !dbg !1923
  store i64 %1, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 0), align 16, !dbg !1923
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1923, !tbaa !767
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0)) #12, !dbg !1925
  tail call void @exit(i32 noundef 1) #13, !dbg !1926
  unreachable, !dbg !1926

if.end:                                           ; preds = %entry
  %notify_event = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %me, i64 0, i32 2, !dbg !1927
  %notify_event_fd = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %me, i64 0, i32 3, !dbg !1928
  %3 = load i32, i32* %notify_event_fd, align 8, !dbg !1928, !tbaa !1339
  %4 = bitcast %struct.LIBEVENT_THREAD* %me to i8*, !dbg !1929
  tail call void @event_set(%struct.event* noundef nonnull %notify_event, i32 noundef %3, i16 noundef signext 18, void (i32, i16, i8*)* noundef nonnull @thread_libevent_process, i8* noundef %4) #12, !dbg !1930
  %5 = load %struct.event_base*, %struct.event_base** %base, align 8, !dbg !1931, !tbaa !1917
  %call7 = tail call i32 @event_base_set(%struct.event_base* noundef %5, %struct.event* noundef nonnull %notify_event) #12, !dbg !1932
  %call9 = tail call i32 @event_add(%struct.event* noundef nonnull %notify_event, %struct.timeval* noundef null) #12, !dbg !1933
  %cmp = icmp eq i32 %call9, -1, !dbg !1935
  br i1 %cmp, label %if.then10, label %if.end12, !dbg !1936

if.then10:                                        ; preds = %if.end
  %gcov_ctr47 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 1), align 8, !dbg !1937
  %6 = add i64 %gcov_ctr47, 1, !dbg !1937
  store i64 %6, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 1), align 8, !dbg !1937
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1937, !tbaa !767
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0)) #12, !dbg !1939
  tail call void @exit(i32 noundef 1) #13, !dbg !1940
  unreachable, !dbg !1940

if.end12:                                         ; preds = %if.end
  %call13 = tail call noalias i8* @malloc(i64 noundef 64) #12, !dbg !1941
  %ev_queue = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %me, i64 0, i32 6, !dbg !1942
  %8 = bitcast %struct.conn_queue** %ev_queue to i8**, !dbg !1943
  store i8* %call13, i8** %8, align 8, !dbg !1943, !tbaa !957
  %cmp15 = icmp eq i8* %call13, null, !dbg !1944
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1946

if.then16:                                        ; preds = %if.end12
  %gcov_ctr48 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 2), align 16, !dbg !1947
  %9 = add i64 %gcov_ctr48, 1, !dbg !1947
  store i64 %9, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 2), align 16, !dbg !1947
  tail call void @perror(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i64 0, i64 0)) #12, !dbg !1947
  tail call void @exit(i32 noundef 1) #13, !dbg !1949
  unreachable, !dbg !1949

if.end17:                                         ; preds = %if.end12
  %10 = bitcast i8* %call13 to %struct.conn_queue*, !dbg !1941
  tail call fastcc void @cq_init(%struct.conn_queue* noundef nonnull %10) #14, !dbg !1950
  %mutex = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %me, i64 0, i32 4, i32 0, !dbg !1951
  %call19 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull %mutex, %union.pthread_mutexattr_t* noundef null) #12, !dbg !1953
  %cmp20.not = icmp eq i32 %call19, 0, !dbg !1954
  br i1 %cmp20.not, label %if.end22, label %if.then21, !dbg !1955

if.then21:                                        ; preds = %if.end17
  %gcov_ctr49 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 3), align 8, !dbg !1956
  %11 = add i64 %gcov_ctr49, 1, !dbg !1956
  store i64 %11, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 3), align 8, !dbg !1956
  tail call void @perror(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !1956
  tail call void @exit(i32 noundef 1) #13, !dbg !1958
  unreachable, !dbg !1958

if.end22:                                         ; preds = %if.end17
  %call23 = tail call %struct.cache_t* @cache_create(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i64 noundef 16384, i64 noundef 8) #12, !dbg !1959
  %rbuf_cache = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %me, i64 0, i32 7, !dbg !1960
  store %struct.cache_t* %call23, %struct.cache_t** %rbuf_cache, align 8, !dbg !1961, !tbaa !1689
  %cmp25 = icmp eq %struct.cache_t* %call23, null, !dbg !1962
  br i1 %cmp25, label %if.then26, label %if.end28, !dbg !1964

if.then26:                                        ; preds = %if.end22
  %gcov_ctr50 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 4), align 16, !dbg !1965
  %12 = add i64 %gcov_ctr50, 1, !dbg !1965
  store i64 %12, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 4), align 16, !dbg !1965
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1965, !tbaa !767
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0)) #12, !dbg !1967
  tail call void @exit(i32 noundef 1) #13, !dbg !1968
  unreachable, !dbg !1968

if.end28:                                         ; preds = %if.end22
  %14 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 53), align 8, !dbg !1969, !tbaa !1970
  %tobool29.not = icmp eq i32 %14, 0, !dbg !1971
  br i1 %tobool29.not, label %if.end36, label %if.then30, !dbg !1972

if.then30:                                        ; preds = %if.end28
  %15 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 14), align 4, !dbg !1973, !tbaa !836
  %div = udiv i32 %14, %15, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %div, metadata !1908, metadata !DIExpression()), !dbg !1975
  %cmp31 = icmp slt i32 %div, 16384, !dbg !1976
  br i1 %cmp31, label %if.then32, label %if.else, !dbg !1978

if.then32:                                        ; preds = %if.then30
  %gcov_ctr51 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 5), align 8, !dbg !1979
  %16 = add i64 %gcov_ctr51, 1, !dbg !1979
  store i64 %16, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 5), align 8, !dbg !1979
  call void @llvm.dbg.value(metadata i32 1, metadata !1908, metadata !DIExpression()), !dbg !1975
  br label %if.end34, !dbg !1981

if.else:                                          ; preds = %if.then30
  %gcov_ctr52 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 6), align 16, !dbg !1982
  %17 = add i64 %gcov_ctr52, 1, !dbg !1982
  store i64 %17, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 6), align 16, !dbg !1982
  %div3383 = lshr i32 %div, 14, !dbg !1984
  call void @llvm.dbg.value(metadata i32 %div3383, metadata !1908, metadata !DIExpression()), !dbg !1975
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then32
  %limit.0 = phi i32 [ 1, %if.then32 ], [ %div3383, %if.else ], !dbg !1985
  call void @llvm.dbg.value(metadata i32 %limit.0, metadata !1908, metadata !DIExpression()), !dbg !1975
  tail call void @cache_set_limit(%struct.cache_t* noundef nonnull %call23, i32 noundef %limit.0) #12, !dbg !1986
  br label %if.end36, !dbg !1987

if.end36:                                         ; preds = %if.end34, %if.end28
  %call37 = tail call %struct.cache_t* @cache_create(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i64 noundef 152, i64 noundef 8) #12, !dbg !1988
  %io_cache = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %me, i64 0, i32 9, !dbg !1989
  store %struct.cache_t* %call37, %struct.cache_t** %io_cache, align 8, !dbg !1990, !tbaa !1991
  %cmp39 = icmp eq %struct.cache_t* %call37, null, !dbg !1992
  br i1 %cmp39, label %if.then40, label %if.end42, !dbg !1994

if.then40:                                        ; preds = %if.end36
  %gcov_ctr53 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 7), align 8, !dbg !1995
  %18 = add i64 %gcov_ctr53, 1, !dbg !1995
  store i64 %18, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 7), align 8, !dbg !1995
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1995, !tbaa !767
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i64 0, i64 0)) #12, !dbg !1997
  tail call void @exit(i32 noundef 1) #13, !dbg !1998
  unreachable, !dbg !1998

if.end42:                                         ; preds = %if.end36
  %gcov_ctr54 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 8), align 16, !dbg !1999
  %20 = add i64 %gcov_ctr54, 1, !dbg !1999
  store i64 %20, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 8), align 16, !dbg !1999
  %storage = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %me, i64 0, i32 10, !dbg !2001
  %21 = load i8*, i8** %storage, align 8, !dbg !2001, !tbaa !1844
  %tobool43.not = icmp eq i8* %21, null, !dbg !1999
  br i1 %tobool43.not, label %if.end46, label %if.then44, !dbg !2002

if.then44:                                        ; preds = %if.end42
  %gcov_ctr55 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 9), align 8, !dbg !2003
  %22 = add i64 %gcov_ctr55, 1, !dbg !2003
  store i64 %22, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 9), align 8, !dbg !2003
  tail call void @thread_io_queue_add(%struct.LIBEVENT_THREAD* noundef nonnull %me, i32 noundef 1, i8* noundef nonnull %21, void (%struct.io_queue_s*)* noundef nonnull @storage_submit_cb, void (%struct.io_queue_s*)* noundef nonnull @storage_complete_cb, void (%struct._io_pending_t*)* noundef null, void (%struct._io_pending_t*)* noundef nonnull @storage_finalize_cb) #12, !dbg !2005
  br label %if.end46, !dbg !2006

if.end46:                                         ; preds = %if.then44, %if.end42
  tail call void @thread_io_queue_add(%struct.LIBEVENT_THREAD* noundef nonnull %me, i32 noundef 0, i8* noundef null, void (%struct.io_queue_s*)* noundef null, void (%struct.io_queue_s*)* noundef null, void (%struct._io_pending_t*)* noundef null, void (%struct._io_pending_t*)* noundef null) #12, !dbg !2007
  ret void, !dbg !2008
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @create_worker(i8* noundef %arg) unnamed_addr #0 !dbg !2009 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.72, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.72, i64 0, i64 0), align 8
  %attr = alloca %union.pthread_attr_t, align 8
  call void @llvm.dbg.value(metadata i8* (i8*)* @worker_libevent, metadata !2016, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i8* %arg, metadata !2017, metadata !DIExpression()), !dbg !2028
  %1 = bitcast %union.pthread_attr_t* %attr to i8*, !dbg !2029
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #15, !dbg !2029
  call void @llvm.dbg.declare(metadata %union.pthread_attr_t* %attr, metadata !2018, metadata !DIExpression()), !dbg !2030
  %call = call i32 @pthread_attr_init(%union.pthread_attr_t* noundef nonnull %attr) #12, !dbg !2031
  %thread_id = bitcast i8* %arg to i64*, !dbg !2032
  %call1 = call i32 @pthread_create(i64* noundef %thread_id, %union.pthread_attr_t* noundef nonnull %attr, i8* (i8*)* noundef nonnull @worker_libevent, i8* noundef %arg) #12, !dbg !2034
  call void @llvm.dbg.value(metadata i32 %call1, metadata !2027, metadata !DIExpression()), !dbg !2028
  %cmp.not = icmp eq i32 %call1, 0, !dbg !2035
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2036

if.then:                                          ; preds = %entry
  %gcov_ctr4 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.72, i64 0, i64 1), align 8, !dbg !2037
  %2 = add i64 %gcov_ctr4, 1, !dbg !2037
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.72, i64 0, i64 1), align 8, !dbg !2037
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2037, !tbaa !767
  %call2 = call i8* @strerror(i32 noundef %call1) #12, !dbg !2039
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i64 0, i64 0), i8* noundef %call2) #12, !dbg !2040
  call void @exit(i32 noundef 1) #13, !dbg !2041
  unreachable, !dbg !2041

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #15, !dbg !2042
  ret void, !dbg !2042
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @worker_libevent(i8* nocapture noundef %arg) #0 !dbg !2043 {
entry:
  call void @llvm.dbg.value(metadata i8* %arg, metadata !2045, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8* %arg, metadata !2046, metadata !DIExpression()), !dbg !2047
  %call = tail call %struct._logger* @logger_create() #12, !dbg !2048
  %l = getelementptr inbounds i8, i8* %arg, i64 6784, !dbg !2049
  %0 = bitcast i8* %l to %struct._logger**, !dbg !2049
  store %struct._logger* %call, %struct._logger** %0, align 8, !dbg !2050, !tbaa !2051
  %call1 = tail call i8* @item_lru_bump_buf_create() #12, !dbg !2052
  %lru_bump_buf = getelementptr inbounds i8, i8* %arg, i64 6792, !dbg !2053
  %1 = bitcast i8* %lru_bump_buf to i8**, !dbg !2053
  store i8* %call1, i8** %1, align 8, !dbg !2054, !tbaa !2055
  %2 = load %struct._logger*, %struct._logger** %0, align 8, !dbg !2056, !tbaa !2051
  %cmp = icmp eq %struct._logger* %2, null, !dbg !2058
  %cmp4 = icmp eq i8* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4, !dbg !2059
  br i1 %or.cond, label %if.then, label %if.end, !dbg !2059

if.then:                                          ; preds = %entry
  %gcov_ctr9 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 1), align 8, !dbg !2060
  %3 = add i64 %gcov_ctr9, 1, !dbg !2060
  store i64 %3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 1), align 8, !dbg !2060
  tail call void @abort() #13, !dbg !2060
  unreachable, !dbg !2060

if.end:                                           ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 0), align 16, !dbg !2062
  %4 = add i64 %gcov_ctr, 1, !dbg !2062
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 0), align 16, !dbg !2062
  %5 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 54), align 4, !dbg !2062, !tbaa !2064, !range !1044
  %tobool.not = icmp eq i8 %5, 0, !dbg !2062
  br i1 %tobool.not, label %if.end6, label %if.then5, !dbg !2065

if.then5:                                         ; preds = %if.end
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 2), align 16, !dbg !2066
  %6 = add i64 %gcov_ctr10, 1, !dbg !2066
  store i64 %6, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 2), align 16, !dbg !2066
  br label %if.end6, !dbg !2066

if.end6:                                          ; preds = %if.then5, %if.end
  call void @llvm.dbg.value(metadata i8* %arg, metadata !2046, metadata !DIExpression()), !dbg !2047
  tail call fastcc void @register_thread_initialized() #14, !dbg !2068
  %base = getelementptr inbounds i8, i8* %arg, i64 8, !dbg !2069
  %7 = bitcast i8* %base to %struct.event_base**, !dbg !2069
  %8 = load %struct.event_base*, %struct.event_base** %7, align 8, !dbg !2069, !tbaa !1917
  %call7 = tail call i32 @event_base_loop(%struct.event_base* noundef %8, i32 noundef 0) #12, !dbg !2070
  tail call fastcc void @register_thread_initialized() #14, !dbg !2071
  %9 = load %struct.event_base*, %struct.event_base** %7, align 8, !dbg !2072, !tbaa !1917
  tail call void @event_base_free(%struct.event_base* noundef %9) #12, !dbg !2073
  ret i8* null, !dbg !2074
}

declare !dbg !2075 dso_local i32 @pthread_cond_wait(%union.pthread_cond_t* noundef, %union.pthread_mutex_t* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2079 dso_local i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @reset_threads_napi_id() unnamed_addr #7 !dbg !2086 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 0, metadata !2089, metadata !DIExpression()), !dbg !2090
  %1 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 14), align 4, !tbaa !836
  call void @llvm.dbg.value(metadata i32 0, metadata !2089, metadata !DIExpression()), !dbg !2090
  %cmp6 = icmp sgt i32 %1, 0, !dbg !2091
  br i1 %cmp6, label %for.body.lr.ph, label %for.end, !dbg !2094

for.body.lr.ph:                                   ; preds = %entry
  %2 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** @threads, align 8, !tbaa !767
  %wide.trip.count = zext i32 %1 to i64, !dbg !2091
  %xtraiter = and i64 %wide.trip.count, 1, !dbg !2094
  %3 = icmp eq i32 %1, 1, !dbg !2094
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new, !dbg !2094

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294, !dbg !2094
  br label %for.body, !dbg !2094

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.1, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2089, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata !DIArgList(%struct.LIBEVENT_THREAD* %2, i64 %indvars.iv), metadata !2088, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 6808, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2090
  %napi_id = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %2, i64 %indvars.iv, i32 13, !dbg !2095
  store i32 0, i32* %napi_id, align 8, !dbg !2097, !tbaa !1272
  %gcov_ctr1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 1), align 8, !dbg !2098
  %4 = add i64 %gcov_ctr1, 1, !dbg !2098
  store i64 %4, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 1), align 8, !dbg !2098
  %indvars.iv.next = or i64 %indvars.iv, 1, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2089, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2089, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata !DIArgList(%struct.LIBEVENT_THREAD* %2, i64 %indvars.iv.next), metadata !2088, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 6808, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2090
  %napi_id.1 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %2, i64 %indvars.iv.next, i32 13, !dbg !2095
  store i32 0, i32* %napi_id.1, align 8, !dbg !2097, !tbaa !1272
  %gcov_ctr1.1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 1), align 8, !dbg !2098
  %5 = add i64 %gcov_ctr1.1, 1, !dbg !2098
  store i64 %5, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 1), align 8, !dbg !2098
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !2089, metadata !DIExpression()), !dbg !2090
  %niter.next.1 = add i64 %niter, 2, !dbg !2094
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !2094
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body, !dbg !2094, !llvm.loop !2099

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2094
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil, !dbg !2094

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa
  call void @llvm.dbg.value(metadata i64 %indvars.iv.unr, metadata !2089, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata !DIArgList(%struct.LIBEVENT_THREAD* %2, i64 %indvars.iv.unr), metadata !2088, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 6808, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2090
  %napi_id.epil = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %2, i64 %indvars.iv.unr, i32 13, !dbg !2095
  store i32 0, i32* %napi_id.epil, align 8, !dbg !2097, !tbaa !1272
  %gcov_ctr1.epil = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 1), align 8, !dbg !2098
  %6 = add i64 %gcov_ctr1.epil, 1, !dbg !2098
  store i64 %6, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 1), align 8, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %indvars.iv.unr, metadata !2089, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2090
  br label %for.end, !dbg !2101

for.end:                                          ; preds = %for.body.epil, %for.end.loopexit.unr-lcssa, %entry
  store i32 -1, i32* @last_thread_by_napi_id, align 4, !dbg !2101, !tbaa !771
  ret void, !dbg !2102
}

declare !dbg !2103 dso_local i8* @cache_alloc(%struct.cache_t* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cq_push(%struct.conn_queue* noundef %cq, %struct.conn_queue_item* noundef %item) unnamed_addr #0 !dbg !2106 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.conn_queue* %cq, metadata !2110, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata %struct.conn_queue_item* %item, metadata !2111, metadata !DIExpression()), !dbg !2112
  %lock = getelementptr inbounds %struct.conn_queue, %struct.conn_queue* %cq, i64 0, i32 1, !dbg !2113
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %lock) #12, !dbg !2114
  %stqe_next = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %item, i64 0, i32 11, i32 0, !dbg !2115
  store %struct.conn_queue_item* null, %struct.conn_queue_item** %stqe_next, align 8, !dbg !2115, !tbaa !2117
  %stqh_last = getelementptr inbounds %struct.conn_queue, %struct.conn_queue* %cq, i64 0, i32 0, i32 1, !dbg !2115
  %1 = load %struct.conn_queue_item**, %struct.conn_queue_item*** %stqh_last, align 8, !dbg !2115, !tbaa !2118
  store %struct.conn_queue_item* %item, %struct.conn_queue_item** %1, align 8, !dbg !2115, !tbaa !767
  store %struct.conn_queue_item** %stqe_next, %struct.conn_queue_item*** %stqh_last, align 8, !dbg !2115, !tbaa !2118
  %call6 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %lock) #12, !dbg !2119
  ret void, !dbg !2120
}

declare !dbg !2121 dso_local i64 @write(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2124 dso_local %struct.event_config* @event_config_new() local_unnamed_addr #4

declare !dbg !2127 dso_local i32 @event_config_set_flag(%struct.event_config* noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2130 dso_local %struct.event_base* @event_base_new_with_config(%struct.event_config* noundef) local_unnamed_addr #4

declare !dbg !2135 dso_local void @event_config_free(%struct.event_config* noundef) local_unnamed_addr #4

declare !dbg !2138 dso_local void @event_set(%struct.event* noundef, i32 noundef, i16 noundef signext, void (i32, i16, i8*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal void @thread_libevent_process(i32 noundef %fd, i16 noundef signext %which, i8* noundef %arg) #0 !dbg !2142 {
entry:
  %ev_count = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %fd, metadata !2144, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i16 %which, metadata !2145, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8* %arg, metadata !2146, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8* %arg, metadata !2147, metadata !DIExpression()), !dbg !2153
  %0 = bitcast i64* %ev_count to i8*, !dbg !2154
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15, !dbg !2154
  call void @llvm.dbg.value(metadata i64 0, metadata !2150, metadata !DIExpression()), !dbg !2153
  store i64 0, i64* %ev_count, align 8, !dbg !2155, !tbaa !1336
  call void @llvm.dbg.value(metadata i64* %ev_count, metadata !2150, metadata !DIExpression(DW_OP_deref)), !dbg !2153
  %call = call i64 @read(i32 noundef %fd, i8* noundef nonnull %0, i64 noundef 8) #12, !dbg !2156
  %cmp.not = icmp eq i64 %call, 8, !dbg !2158
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !2159

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !2151, metadata !DIExpression()), !dbg !2160
  %1 = load i64, i64* %ev_count, align 8, !dbg !2161, !tbaa !1336
  call void @llvm.dbg.value(metadata i64 %1, metadata !2150, metadata !DIExpression()), !dbg !2153
  %cmp591.not = icmp eq i64 %1, 0, !dbg !2163
  br i1 %cmp591.not, label %for.end, label %for.body.lr.ph, !dbg !2164

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ev_queue = getelementptr inbounds i8, i8* %arg, i64 6744
  %2 = bitcast i8* %ev_queue to %struct.conn_queue**
  %base40 = getelementptr inbounds i8, i8* %arg, i64 8
  %3 = bitcast i8* %base40 to %struct.event_base**
  br label %for.body, !dbg !2164

if.then:                                          ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2165, !tbaa !1000
  %cmp1 = icmp sgt i32 %4, 0, !dbg !2168
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2169

if.then2:                                         ; preds = %if.then
  %gcov_ctr = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 0), align 16, !dbg !2170
  %5 = add i64 %gcov_ctr, 1, !dbg !2170
  store i64 %5, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 0), align 16, !dbg !2170
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2170, !tbaa !767
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0)) #12, !dbg !2171
  br label %if.end, !dbg !2171

if.end:                                           ; preds = %if.then2, %if.then
  %gcov_ctr49 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 1), align 8
  %7 = add i64 %gcov_ctr49, 1
  store i64 %7, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 1), align 8
  br label %cleanup44, !dbg !2172

for.body:                                         ; preds = %for.body.lr.ph, %sw.epilog
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %sw.epilog ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2151, metadata !DIExpression()), !dbg !2160
  %8 = load %struct.conn_queue*, %struct.conn_queue** %2, align 8, !dbg !2173, !tbaa !957
  %call7 = call fastcc %struct.conn_queue_item* @cq_pop(%struct.conn_queue* noundef %8) #14, !dbg !2175
  call void @llvm.dbg.value(metadata %struct.conn_queue_item* %call7, metadata !2148, metadata !DIExpression()), !dbg !2153
  %cmp8 = icmp eq %struct.conn_queue_item* %call7, null, !dbg !2176
  br i1 %cmp8, label %cleanup.thread, label %if.end11, !dbg !2178

cleanup.thread:                                   ; preds = %for.body
  %gcov_ctr51 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 3), align 8
  %9 = add i64 %gcov_ctr51, 1
  store i64 %9, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 3), align 8
  br label %cleanup44

if.end11:                                         ; preds = %for.body
  %mode = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call7, i64 0, i32 5, !dbg !2179
  %10 = load i32, i32* %mode, align 4, !dbg !2179, !tbaa !972
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb32
    i32 2, label %sw.bb33
    i32 3, label %sw.bb35
    i32 4, label %sw.bb39
    i32 5, label %sw.bb42
  ], !dbg !2180

sw.bb:                                            ; preds = %if.end11
  %sfd = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call7, i64 0, i32 0, !dbg !2181
  %11 = load i32, i32* %sfd, align 8, !dbg !2181, !tbaa !977
  %init_state = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call7, i64 0, i32 1, !dbg !2183
  %12 = load i32, i32* %init_state, align 4, !dbg !2183, !tbaa !1192
  %event_flags = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call7, i64 0, i32 2, !dbg !2184
  %13 = load i32, i32* %event_flags, align 8, !dbg !2184, !tbaa !1195
  %read_buffer_size = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call7, i64 0, i32 3, !dbg !2185
  %14 = load i32, i32* %read_buffer_size, align 4, !dbg !2185, !tbaa !1198
  %transport = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call7, i64 0, i32 4, !dbg !2186
  %15 = load i32, i32* %transport, align 8, !dbg !2186, !tbaa !1201
  %16 = load %struct.event_base*, %struct.event_base** %3, align 8, !dbg !2187, !tbaa !1917
  %ssl = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call7, i64 0, i32 7, !dbg !2188
  %17 = load i8*, i8** %ssl, align 8, !dbg !2188, !tbaa !1206
  %conntag = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call7, i64 0, i32 8, !dbg !2189
  %18 = load i64, i64* %conntag, align 8, !dbg !2189, !tbaa !1209
  %bproto = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call7, i64 0, i32 9, !dbg !2190
  %19 = load i32, i32* %bproto, align 8, !dbg !2190, !tbaa !1212
  %call12 = call %struct.conn* @conn_new(i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, %struct.event_base* noundef %16, i8* noundef %17, i64 noundef %18, i32 noundef %19) #12, !dbg !2191
  call void @llvm.dbg.value(metadata %struct.conn* %call12, metadata !2149, metadata !DIExpression()), !dbg !2153
  %cmp13 = icmp eq %struct.conn* %call12, null, !dbg !2192
  br i1 %cmp13, label %if.then15, label %if.else30, !dbg !2194

if.then15:                                        ; preds = %sw.bb
  %20 = load i32, i32* %transport, align 8, !dbg !2195, !tbaa !1201
  %cmp17 = icmp eq i32 %20, 2, !dbg !2195
  br i1 %cmp17, label %if.then19, label %if.else, !dbg !2198

if.then19:                                        ; preds = %if.then15
  %gcov_ctr57 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 9), align 8, !dbg !2199
  %21 = add i64 %gcov_ctr57, 1, !dbg !2199
  store i64 %21, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 9), align 8, !dbg !2199
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2199, !tbaa !767
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0)) #12, !dbg !2201
  call void @exit(i32 noundef 1) #13, !dbg !2202
  unreachable, !dbg !2202

if.else:                                          ; preds = %if.then15
  %gcov_ctr56 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 8), align 16, !dbg !2203
  %23 = add i64 %gcov_ctr56, 1, !dbg !2203
  store i64 %23, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 8), align 16, !dbg !2203
  %24 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2203, !tbaa !1000
  %cmp21 = icmp sgt i32 %24, 0, !dbg !2206
  br i1 %cmp21, label %if.then23, label %if.end26, !dbg !2207

if.then23:                                        ; preds = %if.else
  %gcov_ctr58 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 10), align 16, !dbg !2208
  %25 = add i64 %gcov_ctr58, 1, !dbg !2208
  store i64 %25, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 10), align 16, !dbg !2208
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2208, !tbaa !767
  %27 = load i32, i32* %sfd, align 8, !dbg !2210, !tbaa !977
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i32 noundef %27) #12, !dbg !2211
  br label %if.end26, !dbg !2212

if.end26:                                         ; preds = %if.then23, %if.else
  %28 = load i32, i32* %sfd, align 8, !dbg !2213, !tbaa !977
  %call28 = call i32 @close(i32 noundef %28) #12, !dbg !2214
  br label %sw.epilog, !dbg !2215

if.else30:                                        ; preds = %sw.bb
  %gcov_ctr59 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 11), align 8, !dbg !2216
  %29 = add i64 %gcov_ctr59, 1, !dbg !2216
  store i64 %29, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 11), align 8, !dbg !2216
  %thread = getelementptr inbounds %struct.conn, %struct.conn* %call12, i64 0, i32 43, !dbg !2218
  %30 = bitcast %struct.LIBEVENT_THREAD** %thread to i8**, !dbg !2219
  store i8* %arg, i8** %30, align 8, !dbg !2219, !tbaa !1354
  call void @conn_io_queue_setup(%struct.conn* noundef nonnull %call12) #12, !dbg !2220
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end11
  %gcov_ctr52 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 4), align 16, !dbg !2221
  %31 = add i64 %gcov_ctr52, 1, !dbg !2221
  store i64 %31, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 4), align 16, !dbg !2221
  call fastcc void @register_thread_initialized() #14, !dbg !2221
  br label %sw.epilog, !dbg !2222

sw.bb33:                                          ; preds = %if.end11
  %gcov_ctr53 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 5), align 8, !dbg !2223
  %32 = add i64 %gcov_ctr53, 1, !dbg !2223
  store i64 %32, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 5), align 8, !dbg !2223
  %33 = load %struct.conn**, %struct.conn*** @conns, align 8, !dbg !2223, !tbaa !767
  %sfd34 = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call7, i64 0, i32 0, !dbg !2224
  %34 = load i32, i32* %sfd34, align 8, !dbg !2224, !tbaa !977
  %idxprom = sext i32 %34 to i64, !dbg !2223
  %arrayidx = getelementptr inbounds %struct.conn*, %struct.conn** %33, i64 %idxprom, !dbg !2223
  %35 = load %struct.conn*, %struct.conn** %arrayidx, align 8, !dbg !2223, !tbaa !767
  call void @conn_close_idle(%struct.conn* noundef %35) #12, !dbg !2225
  br label %sw.epilog, !dbg !2226

sw.bb35:                                          ; preds = %if.end11
  %gcov_ctr54 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 6), align 16, !dbg !2227
  %36 = add i64 %gcov_ctr54, 1, !dbg !2227
  store i64 %36, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 6), align 16, !dbg !2227
  %37 = load %struct.conn**, %struct.conn*** @conns, align 8, !dbg !2227, !tbaa !767
  %sfd36 = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call7, i64 0, i32 0, !dbg !2228
  %38 = load i32, i32* %sfd36, align 8, !dbg !2228, !tbaa !977
  %idxprom37 = sext i32 %38 to i64, !dbg !2227
  %arrayidx38 = getelementptr inbounds %struct.conn*, %struct.conn** %37, i64 %idxprom37, !dbg !2227
  %39 = load %struct.conn*, %struct.conn** %arrayidx38, align 8, !dbg !2227, !tbaa !767
  call void @conn_worker_readd(%struct.conn* noundef %39) #12, !dbg !2229
  br label %sw.epilog, !dbg !2230

sw.bb39:                                          ; preds = %if.end11
  %gcov_ctr55 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 7), align 8, !dbg !2231
  %40 = add i64 %gcov_ctr55, 1, !dbg !2231
  store i64 %40, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 7), align 8, !dbg !2231
  %41 = load %struct.event_base*, %struct.event_base** %3, align 8, !dbg !2232, !tbaa !1917
  %call41 = call i32 @event_base_loopexit(%struct.event_base* noundef %41, %struct.timeval* noundef null) #12, !dbg !2233
  br label %sw.epilog, !dbg !2234

sw.bb42:                                          ; preds = %if.end11
  %gcov_ctr60 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 12), align 16, !dbg !2235
  %42 = add i64 %gcov_ctr60, 1, !dbg !2235
  store i64 %42, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 12), align 16, !dbg !2235
  %io = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %call7, i64 0, i32 10, !dbg !2236
  %43 = load %struct._io_pending_t*, %struct._io_pending_t** %io, align 8, !dbg !2236, !tbaa !1391
  call void @conn_io_queue_return(%struct._io_pending_t* noundef %43) #12, !dbg !2237
  br label %sw.epilog, !dbg !2238

sw.epilog:                                        ; preds = %if.end26, %if.else30, %if.end11, %sw.bb42, %sw.bb39, %sw.bb35, %sw.bb33, %sw.bb32
  %44 = load %struct.conn_queue*, %struct.conn_queue** %2, align 8, !dbg !2239, !tbaa !957
  call fastcc void @cqi_free(%struct.conn_queue* noundef %44, %struct.conn_queue_item* noundef nonnull %call7) #14, !dbg !2240
  %gcov_ctr61 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 13), align 8, !dbg !2241
  %45 = add i64 %gcov_ctr61, 1, !dbg !2241
  store i64 %45, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 13), align 8, !dbg !2241
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2151, metadata !DIExpression()), !dbg !2160
  %46 = load i64, i64* %ev_count, align 8, !dbg !2161, !tbaa !1336
  call void @llvm.dbg.value(metadata i64 %46, metadata !2150, metadata !DIExpression()), !dbg !2153
  %cmp5 = icmp ugt i64 %46, %indvars.iv.next, !dbg !2163
  br i1 %cmp5, label %for.body, label %for.end, !dbg !2164, !llvm.loop !2242

for.end:                                          ; preds = %sw.epilog, %for.cond.preheader
  %gcov_ctr50 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 2), align 16
  %47 = add i64 %gcov_ctr50, 1
  store i64 %47, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 2), align 16
  %gcov_ctr62 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 14), align 16, !dbg !2244
  %48 = add i64 %gcov_ctr62, 1, !dbg !2244
  store i64 %48, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 14), align 16, !dbg !2244
  br label %cleanup44, !dbg !2244

cleanup44:                                        ; preds = %cleanup.thread, %for.end, %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15, !dbg !2244
  ret void, !dbg !2244
}

declare !dbg !2245 dso_local i32 @event_base_set(%struct.event_base* noundef, %struct.event* noundef) local_unnamed_addr #4

declare !dbg !2248 dso_local i32 @event_add(%struct.event* noundef, %struct.timeval* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2253 dso_local noalias i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cq_init(%struct.conn_queue* noundef %cq) unnamed_addr #0 !dbg !2256 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.conn_queue* %cq, metadata !2260, metadata !DIExpression()), !dbg !2261
  %lock = getelementptr inbounds %struct.conn_queue, %struct.conn_queue* %cq, i64 0, i32 1, !dbg !2262
  %call = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull %lock, %union.pthread_mutexattr_t* noundef null) #12, !dbg !2263
  %stqh_first = getelementptr inbounds %struct.conn_queue, %struct.conn_queue* %cq, i64 0, i32 0, i32 0, !dbg !2264
  store %struct.conn_queue_item* null, %struct.conn_queue_item** %stqh_first, align 8, !dbg !2264, !tbaa !2266
  %stqh_last = getelementptr inbounds %struct.conn_queue, %struct.conn_queue* %cq, i64 0, i32 0, i32 1, !dbg !2264
  store %struct.conn_queue_item** %stqh_first, %struct.conn_queue_item*** %stqh_last, align 8, !dbg !2264, !tbaa !2118
  %call4 = tail call %struct.cache_t* @cache_create(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 noundef 72, i64 noundef 8) #12, !dbg !2267
  %cache = getelementptr inbounds %struct.conn_queue, %struct.conn_queue* %cq, i64 0, i32 2, !dbg !2268
  store %struct.cache_t* %call4, %struct.cache_t** %cache, align 8, !dbg !2269, !tbaa !1306
  %cmp = icmp eq %struct.cache_t* %call4, null, !dbg !2270
  br i1 %cmp, label %if.then, label %if.end, !dbg !2272

if.then:                                          ; preds = %entry
  %gcov_ctr7 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 1), align 8, !dbg !2273
  %1 = add i64 %gcov_ctr7, 1, !dbg !2273
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 1), align 8, !dbg !2273
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2273, !tbaa !767
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i64 0, i64 0)) #12, !dbg !2275
  tail call void @exit(i32 noundef 1) #13, !dbg !2276
  unreachable, !dbg !2276

if.end:                                           ; preds = %entry
  ret void, !dbg !2277
}

declare !dbg !2278 dso_local %struct.cache_t* @cache_create(i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2281 dso_local void @cache_set_limit(%struct.cache_t* noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2284 dso_local void @thread_io_queue_add(%struct.LIBEVENT_THREAD* noundef, i32 noundef, i8* noundef, void (%struct.io_queue_s*)* noundef, void (%struct.io_queue_s*)* noundef, void (%struct._io_pending_t*)* noundef, void (%struct._io_pending_t*)* noundef) local_unnamed_addr #4

declare dso_local void @storage_submit_cb(%struct.io_queue_s* noundef) #4

declare dso_local void @storage_complete_cb(%struct.io_queue_s* noundef) #4

declare dso_local void @storage_finalize_cb(%struct._io_pending_t* noundef) #4

declare !dbg !2287 dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.conn_queue_item* @cq_pop(%struct.conn_queue* noundef %cq) unnamed_addr #0 !dbg !2290 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata %struct.conn_queue* %cq, metadata !2292, metadata !DIExpression()), !dbg !2294
  %lock = getelementptr inbounds %struct.conn_queue, %struct.conn_queue* %cq, i64 0, i32 1, !dbg !2295
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %lock) #12, !dbg !2296
  %stqh_first = getelementptr inbounds %struct.conn_queue, %struct.conn_queue* %cq, i64 0, i32 0, i32 0, !dbg !2297
  %1 = load %struct.conn_queue_item*, %struct.conn_queue_item** %stqh_first, align 8, !dbg !2297, !tbaa !2266
  call void @llvm.dbg.value(metadata %struct.conn_queue_item* %1, metadata !2293, metadata !DIExpression()), !dbg !2294
  %cmp.not = icmp eq %struct.conn_queue_item* %1, null, !dbg !2298
  br i1 %cmp.not, label %if.end10, label %do.body, !dbg !2300

do.body:                                          ; preds = %entry
  %stqe_next = getelementptr inbounds %struct.conn_queue_item, %struct.conn_queue_item* %1, i64 0, i32 11, i32 0, !dbg !2301
  %2 = load %struct.conn_queue_item*, %struct.conn_queue_item** %stqe_next, align 8, !dbg !2301, !tbaa !2117
  store %struct.conn_queue_item* %2, %struct.conn_queue_item** %stqh_first, align 8, !dbg !2301, !tbaa !2266
  %cmp5 = icmp eq %struct.conn_queue_item* %2, null, !dbg !2301
  br i1 %cmp5, label %if.then6, label %do.end, !dbg !2305

if.then6:                                         ; preds = %do.body
  %gcov_ctr13 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 1), align 8, !dbg !2301
  %3 = add i64 %gcov_ctr13, 1, !dbg !2301
  store i64 %3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 1), align 8, !dbg !2301
  %stqh_last = getelementptr inbounds %struct.conn_queue, %struct.conn_queue* %cq, i64 0, i32 0, i32 1, !dbg !2301
  store %struct.conn_queue_item** %stqh_first, %struct.conn_queue_item*** %stqh_last, align 8, !dbg !2301, !tbaa !2118
  br label %do.end, !dbg !2301

do.end:                                           ; preds = %if.then6, %do.body
  %gcov_ctr14 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 2), align 16, !dbg !2306
  %4 = add i64 %gcov_ctr14, 1, !dbg !2306
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 2), align 16, !dbg !2306
  br label %if.end10, !dbg !2306

if.end10:                                         ; preds = %do.end, %entry
  %call12 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %lock) #12, !dbg !2307
  ret %struct.conn_queue_item* %1, !dbg !2308
}

declare !dbg !2309 dso_local %struct.conn* @conn_new(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.event_base* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2313 dso_local void @conn_io_queue_setup(%struct.conn* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @register_thread_initialized() unnamed_addr #0 !dbg !2314 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 0), align 8, !dbg !2315
  %0 = add i64 %gcov_ctr, 1, !dbg !2315
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 0), align 8, !dbg !2315
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @init_lock) #12, !dbg !2315
  %1 = load i32, i32* @init_count, align 4, !dbg !2316, !tbaa !771
  %inc = add nsw i32 %1, 1, !dbg !2316
  store i32 %inc, i32* @init_count, align 4, !dbg !2316, !tbaa !771
  %call1 = tail call i32 @pthread_cond_signal(%union.pthread_cond_t* noundef nonnull @init_cond) #12, !dbg !2317
  %call2 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @init_lock) #12, !dbg !2318
  %call3 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @worker_hang_lock) #12, !dbg !2319
  %call4 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @worker_hang_lock) #12, !dbg !2320
  ret void, !dbg !2321
}

declare !dbg !2322 dso_local void @conn_close_idle(%struct.conn* noundef) local_unnamed_addr #4

declare !dbg !2323 dso_local void @conn_worker_readd(%struct.conn* noundef) local_unnamed_addr #4

declare !dbg !2324 dso_local i32 @event_base_loopexit(%struct.event_base* noundef, %struct.timeval* noundef) local_unnamed_addr #4

declare !dbg !2327 dso_local void @conn_io_queue_return(%struct._io_pending_t* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cqi_free(%struct.conn_queue* nocapture noundef readonly %cq, %struct.conn_queue_item* noundef %item) unnamed_addr #0 !dbg !2328 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.conn_queue* %cq, metadata !2330, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata %struct.conn_queue_item* %item, metadata !2331, metadata !DIExpression()), !dbg !2332
  %cache = getelementptr inbounds %struct.conn_queue, %struct.conn_queue* %cq, i64 0, i32 2, !dbg !2333
  %1 = load %struct.cache_t*, %struct.cache_t** %cache, align 8, !dbg !2333, !tbaa !1306
  %2 = bitcast %struct.conn_queue_item* %item to i8*, !dbg !2334
  tail call void @cache_free(%struct.cache_t* noundef %1, i8* noundef %2) #12, !dbg !2335
  ret void, !dbg !2336
}

; Function Attrs: nounwind
declare !dbg !2337 dso_local i32 @pthread_cond_signal(%union.pthread_cond_t* noundef) local_unnamed_addr #2

declare !dbg !2340 dso_local void @cache_free(%struct.cache_t* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2343 dso_local i32 @pthread_attr_init(%union.pthread_attr_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2347 dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2355 dso_local i8* @strerror(i32 noundef) local_unnamed_addr #2

declare !dbg !2358 dso_local %struct._logger* @logger_create() local_unnamed_addr #4

declare !dbg !2361 dso_local i8* @item_lru_bump_buf_create() local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare !dbg !2364 dso_local void @abort() local_unnamed_addr #5

declare !dbg !2365 dso_local i32 @event_base_loop(%struct.event_base* noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2368 dso_local void @event_base_free(%struct.event_base* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #8 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @0, i64 0, i64 0), i32 875575338, i32 -1660871619) #15
  br label %counter.loop.header

counter.loop.header:                              ; preds = %entry, %counter.loop.header
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %counter.loop.header ]
  %0 = getelementptr inbounds [45 x %emit_function_args_ty], [45 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 0
  %ident = load i32, i32* %0, align 4
  %1 = getelementptr inbounds [45 x %emit_function_args_ty], [45 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 1
  %func_checkssum = load i32, i32* %1, align 4
  %2 = getelementptr inbounds [45 x %emit_function_args_ty], [45 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 2
  %cfg_checksum = load i32, i32* %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #15
  %3 = getelementptr inbounds [45 x %emit_arcs_args_ty], [45 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 0
  %num_counters = load i32, i32* %3, align 16
  %4 = getelementptr inbounds [45 x %emit_arcs_args_ty], [45 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 1
  %counters = load i64*, i64** %4, align 8
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, i64* %counters) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 45
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  tail call void @llvm_gcda_summary_info() #15
  tail call void @llvm_gcda_end_file() #15
  ret void
}

declare void @llvm_gcda_start_file(i8*, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, i64*) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define internal void @__llvm_gcov_reset() unnamed_addr #9 {
entry:
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.37 to i8*), i8 0, i64 16, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.38, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.39, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) bitcast ([8 x i64]* @__llvm_gcov_ctr.40 to i8*), i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.41 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.42 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) bitcast ([16 x i64]* @__llvm_gcov_ctr.43 to i8*), i8 0, i64 128, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.44, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.45, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.46 to i8*), i8 0, i64 32, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.47, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(56) bitcast ([7 x i64]* @__llvm_gcov_ctr.48 to i8*), i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.49 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.50 to i8*), i8 0, i64 16, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.52, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.53 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.54 to i8*), i8 0, i64 16, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.55, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.56, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.57, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.59, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.61, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.63, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.67 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.68 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.69 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(112) bitcast ([14 x i64]* @__llvm_gcov_ctr.70 to i8*), i8 0, i64 112, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x i64]* @__llvm_gcov_ctr.71 to i8*), i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.72 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.73 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.74 to i8*), i8 0, i64 16, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) bitcast ([16 x i64]* @__llvm_gcov_ctr.76 to i8*), i8 0, i64 128, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.77 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.78 to i8*), i8 0, i64 24, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 0), align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #8 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #15
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable }
attributes #9 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!754, !755, !756, !757}
!llvm.gcov = !{!758}
!llvm.ident = !{!759}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "conn_lock", scope: !2, file: !3, line: 74, type: !119, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !115, globals: !689, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "thread.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "2b81f2ce496d03b43d726f927ab65072")
!4 = !{!5, !13, !21, !37, !51, !56, !61, !67, !85, !92, !100, !106}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pause_thread_types", file: !6, line: 246, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./memcached.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "9260b30e1b6ff2e5471cc4f8f6971051")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "PAUSE_WORKER_THREADS", value: 0)
!10 = !DIEnumerator(name: "PAUSE_ALL_THREADS", value: 1)
!11 = !DIEnumerator(name: "RESUME_ALL_THREADS", value: 2)
!12 = !DIEnumerator(name: "RESUME_WORKER_THREADS", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "conn_queue_item_modes", file: !3, line: 35, baseType: !7, size: 32, elements: !14)
!14 = !{!15, !16, !17, !18, !19, !20}
!15 = !DIEnumerator(name: "queue_new_conn", value: 0)
!16 = !DIEnumerator(name: "queue_pause", value: 1)
!17 = !DIEnumerator(name: "queue_timeout", value: 2)
!18 = !DIEnumerator(name: "queue_redispatch", value: 3)
!19 = !DIEnumerator(name: "queue_stop", value: 4)
!20 = !DIEnumerator(name: "queue_return_io", value: 5)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "conn_states", file: !6, line: 199, baseType: !7, size: 32, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!23 = !DIEnumerator(name: "conn_listening", value: 0)
!24 = !DIEnumerator(name: "conn_new_cmd", value: 1)
!25 = !DIEnumerator(name: "conn_waiting", value: 2)
!26 = !DIEnumerator(name: "conn_read", value: 3)
!27 = !DIEnumerator(name: "conn_parse_cmd", value: 4)
!28 = !DIEnumerator(name: "conn_write", value: 5)
!29 = !DIEnumerator(name: "conn_nread", value: 6)
!30 = !DIEnumerator(name: "conn_swallow", value: 7)
!31 = !DIEnumerator(name: "conn_closing", value: 8)
!32 = !DIEnumerator(name: "conn_mwrite", value: 9)
!33 = !DIEnumerator(name: "conn_closed", value: 10)
!34 = !DIEnumerator(name: "conn_watch", value: 11)
!35 = !DIEnumerator(name: "conn_io_queue", value: 12)
!36 = !DIEnumerator(name: "conn_max_state", value: 13)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bin_substates", file: !6, line: 216, baseType: !7, size: 32, elements: !38)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!39 = !DIEnumerator(name: "bin_no_state", value: 0)
!40 = !DIEnumerator(name: "bin_reading_set_header", value: 1)
!41 = !DIEnumerator(name: "bin_reading_cas_header", value: 2)
!42 = !DIEnumerator(name: "bin_read_set_value", value: 3)
!43 = !DIEnumerator(name: "bin_reading_get_key", value: 4)
!44 = !DIEnumerator(name: "bin_reading_stat", value: 5)
!45 = !DIEnumerator(name: "bin_reading_del_header", value: 6)
!46 = !DIEnumerator(name: "bin_reading_incr_header", value: 7)
!47 = !DIEnumerator(name: "bin_read_flush_exptime", value: 8)
!48 = !DIEnumerator(name: "bin_reading_sasl_auth", value: 9)
!49 = !DIEnumerator(name: "bin_reading_sasl_auth_data", value: 10)
!50 = !DIEnumerator(name: "bin_reading_touch_key", value: 11)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol", file: !6, line: 231, baseType: !7, size: 32, elements: !52)
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "ascii_prot", value: 3)
!54 = !DIEnumerator(name: "binary_prot", value: 4)
!55 = !DIEnumerator(name: "negotiating_prot", value: 5)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "network_transport", file: !6, line: 240, baseType: !7, size: 32, elements: !57)
!57 = !{!58, !59, !60}
!58 = !DIEnumerator(name: "local_transport", value: 0)
!59 = !DIEnumerator(name: "tcp_transport", value: 1)
!60 = !DIEnumerator(name: "udp_transport", value: 2)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "close_reasons", file: !6, line: 259, baseType: !7, size: 32, elements: !62)
!62 = !{!63, !64, !65, !66}
!63 = !DIEnumerator(name: "ERROR_CLOSE", value: 0)
!64 = !DIEnumerator(name: "NORMAL_CLOSE", value: 1)
!65 = !DIEnumerator(name: "IDLE_TIMEOUT_CLOSE", value: 2)
!66 = !DIEnumerator(name: "SHUTDOWN_CLOSE", value: 3)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_entry_type", file: !68, line: 16, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./logger.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "920aeded0afd45e7ff5c610f1349e8a7")
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!70 = !DIEnumerator(name: "LOGGER_ASCII_CMD", value: 0)
!71 = !DIEnumerator(name: "LOGGER_EVICTION", value: 1)
!72 = !DIEnumerator(name: "LOGGER_ITEM_GET", value: 2)
!73 = !DIEnumerator(name: "LOGGER_ITEM_STORE", value: 3)
!74 = !DIEnumerator(name: "LOGGER_CRAWLER_STATUS", value: 4)
!75 = !DIEnumerator(name: "LOGGER_SLAB_MOVE", value: 5)
!76 = !DIEnumerator(name: "LOGGER_CONNECTION_NEW", value: 6)
!77 = !DIEnumerator(name: "LOGGER_CONNECTION_CLOSE", value: 7)
!78 = !DIEnumerator(name: "LOGGER_EXTSTORE_WRITE", value: 8)
!79 = !DIEnumerator(name: "LOGGER_COMPACT_START", value: 9)
!80 = !DIEnumerator(name: "LOGGER_COMPACT_ABORT", value: 10)
!81 = !DIEnumerator(name: "LOGGER_COMPACT_READ_START", value: 11)
!82 = !DIEnumerator(name: "LOGGER_COMPACT_READ_END", value: 12)
!83 = !DIEnumerator(name: "LOGGER_COMPACT_END", value: 13)
!84 = !DIEnumerator(name: "LOGGER_COMPACT_FRAGINFO", value: 14)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "delta_result_type", file: !6, line: 280, baseType: !7, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "OK", value: 0)
!88 = !DIEnumerator(name: "NON_NUMERIC", value: 1)
!89 = !DIEnumerator(name: "EOM", value: 2)
!90 = !DIEnumerator(name: "DELTA_ITEM_NOT_FOUND", value: 3)
!91 = !DIEnumerator(name: "DELTA_ITEM_CAS_MISMATCH", value: 4)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "store_item_type", file: !6, line: 276, baseType: !7, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99}
!94 = !DIEnumerator(name: "NOT_STORED", value: 0)
!95 = !DIEnumerator(name: "STORED", value: 1)
!96 = !DIEnumerator(name: "EXISTS", value: 2)
!97 = !DIEnumerator(name: "NOT_FOUND", value: 3)
!98 = !DIEnumerator(name: "TOO_LARGE", value: 4)
!99 = !DIEnumerator(name: "NO_MEMORY", value: 5)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 23, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/eventfd.h", directory: "", checksumkind: CSK_MD5, checksum: "473917fad3019b47c1df6918db1ffe1f")
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "EFD_SEMAPHORE", value: 1)
!104 = !DIEnumerator(name: "EFD_CLOEXEC", value: 524288)
!105 = !DIEnumerator(name: "EFD_NONBLOCK", value: 2048)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "event_base_config_flag", file: !107, line: 529, baseType: !7, size: 32, elements: !108)
!107 = !DIFile(filename: "/usr/include/event2/event.h", directory: "", checksumkind: CSK_MD5, checksum: "90db4fa73456052afa8984291985dfd5")
!108 = !{!109, !110, !111, !112, !113, !114}
!109 = !DIEnumerator(name: "EVENT_BASE_FLAG_NOLOCK", value: 1)
!110 = !DIEnumerator(name: "EVENT_BASE_FLAG_IGNORE_ENV", value: 2)
!111 = !DIEnumerator(name: "EVENT_BASE_FLAG_STARTUP_IOCP", value: 4)
!112 = !DIEnumerator(name: "EVENT_BASE_FLAG_NO_CACHE_TIME", value: 8)
!113 = !DIEnumerator(name: "EVENT_BASE_FLAG_EPOLL_USE_CHANGELIST", value: 16)
!114 = !DIEnumerator(name: "EVENT_BASE_FLAG_PRECISE_TIMER", value: 32)
!115 = !{!116, !117, !118, !151, !152}
!116 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !120, line: 72, baseType: !121)
!120 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!121 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !120, line: 67, size: 320, elements: !122)
!122 = !{!123, !144, !149}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !121, file: !120, line: 69, baseType: !124, size: 320)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !125, line: 22, size: 320, elements: !126)
!125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!126 = !{!127, !129, !130, !131, !132, !133, !135, !136}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !124, file: !125, line: 24, baseType: !128, size: 32)
!128 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !124, file: !125, line: 25, baseType: !7, size: 32, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !124, file: !125, line: 26, baseType: !128, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !124, file: !125, line: 28, baseType: !7, size: 32, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !124, file: !125, line: 32, baseType: !128, size: 32, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !124, file: !125, line: 34, baseType: !134, size: 16, offset: 160)
!134 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !124, file: !125, line: 35, baseType: !134, size: 16, offset: 176)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !124, file: !125, line: 36, baseType: !137, size: 128, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !138, line: 53, baseType: !139)
!138 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !138, line: 49, size: 128, elements: !140)
!140 = !{!141, !143}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !139, file: !138, line: 51, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !139, file: !138, line: 52, baseType: !142, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !121, file: !120, line: 70, baseType: !145, size: 320)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 320, elements: !147)
!146 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!147 = !{!148}
!148 = !DISubrange(count: 40)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !121, file: !120, line: 71, baseType: !150, size: 64)
!150 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "LIBEVENT_THREAD", file: !6, line: 737, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 704, size: 54464, elements: !155)
!155 = !{!156, !158, !162, !246, !247, !304, !556, !611, !612, !613, !614, !615, !687, !688}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !154, file: !6, line: 705, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !120, line: 27, baseType: !116)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !154, file: !6, line: 706, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !161, line: 122, flags: DIFlagFwdDecl)
!161 = !DIFile(filename: "/usr/include/event2/event_struct.h", directory: "", checksumkind: CSK_MD5, checksum: "005d89b34bed2ed9e30b0cc3160619c1")
!162 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !154, file: !6, line: 707, baseType: !163, size: 1024, offset: 128)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !161, line: 123, size: 1024, elements: !164)
!164 = !{!165, !201, !211, !212, !213, !243, !244, !245}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ev_evcallback", scope: !163, file: !161, line: 124, baseType: !166, size: 320)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_callback", file: !161, line: 107, size: 320, elements: !167)
!167 = !{!168, !175, !176, !182, !183, !200}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_active_next", scope: !166, file: !161, line: 108, baseType: !169, size: 128)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !166, file: !161, line: 108, size: 128, elements: !170)
!170 = !{!171, !173}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !169, file: !161, line: 108, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !169, file: !161, line: 108, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_flags", scope: !166, file: !161, line: 109, baseType: !134, size: 16, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_pri", scope: !166, file: !161, line: 110, baseType: !177, size: 8, offset: 144)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !178, line: 24, baseType: !179)
!178 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !180, line: 38, baseType: !181)
!180 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!181 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_closure", scope: !166, file: !161, line: 111, baseType: !177, size: 8, offset: 152)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cb_union", scope: !166, file: !161, line: 118, baseType: !184, size: 64, offset: 192)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !161, line: 113, size: 64, elements: !185)
!185 = !{!186, !190, !194, !199}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_callback", scope: !184, file: !161, line: 114, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !128, !134, !117}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_selfcb", scope: !184, file: !161, line: 115, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !172, !117}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_evfinalize", scope: !184, file: !161, line: 116, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !198, !117}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cbfinalize", scope: !184, file: !161, line: 117, baseType: !191, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_arg", scope: !166, file: !161, line: 119, baseType: !117, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout_pos", scope: !163, file: !161, line: 130, baseType: !202, size: 128, offset: 320)
!202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !161, line: 127, size: 128, elements: !203)
!203 = !{!204, !210}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ev_next_with_common_timeout", scope: !202, file: !161, line: 128, baseType: !205, size: 128)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !202, file: !161, line: 128, size: 128, elements: !206)
!206 = !{!207, !208}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !205, file: !161, line: 128, baseType: !198, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !205, file: !161, line: 128, baseType: !209, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "min_heap_idx", scope: !202, file: !161, line: 129, baseType: !128, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ev_fd", scope: !163, file: !161, line: 131, baseType: !128, size: 32, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "ev_base", scope: !163, file: !161, line: 133, baseType: !159, size: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ev_", scope: !163, file: !161, line: 149, baseType: !214, size: 256, offset: 576)
!214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !161, line: 135, size: 256, elements: !215)
!215 = !{!216, !232}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io", scope: !214, file: !161, line: 140, baseType: !217, size: 256)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !214, file: !161, line: 137, size: 256, elements: !218)
!218 = !{!219, !224}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io_next", scope: !217, file: !161, line: 138, baseType: !220, size: 128)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !161, line: 138, size: 128, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !220, file: !161, line: 138, baseType: !198, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !220, file: !161, line: 138, baseType: !209, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !217, file: !161, line: 139, baseType: !225, size: 128, offset: 128)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !226, line: 8, size: 128, elements: !227)
!226 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!227 = !{!228, !230}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !225, file: !226, line: 10, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !180, line: 160, baseType: !150)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !225, file: !226, line: 11, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !180, line: 162, baseType: !150)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal", scope: !214, file: !161, line: 148, baseType: !233, size: 256)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !214, file: !161, line: 143, size: 256, elements: !234)
!234 = !{!235, !240, !241}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal_next", scope: !233, file: !161, line: 144, baseType: !236, size: 128)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !233, file: !161, line: 144, size: 128, elements: !237)
!237 = !{!238, !239}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !236, file: !161, line: 144, baseType: !198, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !236, file: !161, line: 144, baseType: !209, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ev_ncalls", scope: !233, file: !161, line: 145, baseType: !134, size: 16, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ev_pncalls", scope: !233, file: !161, line: 147, baseType: !242, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ev_events", scope: !163, file: !161, line: 151, baseType: !134, size: 16, offset: 832)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ev_res", scope: !163, file: !161, line: 152, baseType: !134, size: 16, offset: 848)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !163, file: !161, line: 153, baseType: !225, size: 128, offset: 896)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event_fd", scope: !154, file: !6, line: 709, baseType: !128, size: 32, offset: 1152)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !154, file: !6, line: 714, baseType: !248, size: 51584, offset: 1216)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_stats", file: !6, line: 356, size: 51584, elements: !249)
!249 = !{!250, !251, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !297, !301, !302, !303}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !248, file: !6, line: 357, baseType: !119, size: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "get_cmds", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !178, line: 27, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !180, line: 45, baseType: !116)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "get_misses", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "get_expired", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "get_flushed", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "touch_cmds", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "touch_misses", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 640)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "delete_misses", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 704)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "incr_misses", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 768)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "decr_misses", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 832)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "cas_misses", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 896)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "meta_cmds", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 960)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_read", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 1024)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 1088)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "flush_cmds", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 1152)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "conn_yields", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 1216)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "auth_cmds", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 1280)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "auth_errors", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 1344)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "idle_kicks", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 1408)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_oom", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 1472)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_count", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 1536)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_bytes", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 1600)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_oom", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 1664)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "store_too_large", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 1728)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "store_no_memory", scope: !248, file: !6, line: 359, baseType: !252, size: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "get_extstore", scope: !248, file: !6, line: 361, baseType: !252, size: 64, offset: 1856)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "get_aborted_extstore", scope: !248, file: !6, line: 361, baseType: !252, size: 64, offset: 1920)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "get_oom_extstore", scope: !248, file: !6, line: 361, baseType: !252, size: 64, offset: 1984)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "recache_from_extstore", scope: !248, file: !6, line: 361, baseType: !252, size: 64, offset: 2048)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "miss_from_extstore", scope: !248, file: !6, line: 361, baseType: !252, size: 64, offset: 2112)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "badcrc_from_extstore", scope: !248, file: !6, line: 361, baseType: !252, size: 64, offset: 2176)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "slab_stats", scope: !248, file: !6, line: 367, baseType: !284, size: 32768, offset: 2240)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 32768, elements: !295)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slab_stats", file: !6, line: 303, size: 512, elements: !286)
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "set_cmds", scope: !285, file: !6, line: 305, baseType: !252, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "get_hits", scope: !285, file: !6, line: 305, baseType: !252, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "touch_hits", scope: !285, file: !6, line: 305, baseType: !252, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "delete_hits", scope: !285, file: !6, line: 305, baseType: !252, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "cas_hits", scope: !285, file: !6, line: 305, baseType: !252, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "cas_badval", scope: !285, file: !6, line: 305, baseType: !252, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "incr_hits", scope: !285, file: !6, line: 305, baseType: !252, size: 64, offset: 384)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "decr_hits", scope: !285, file: !6, line: 305, baseType: !252, size: 64, offset: 448)
!295 = !{!296}
!296 = !DISubrange(count: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "lru_hits", scope: !248, file: !6, line: 368, baseType: !298, size: 16384, offset: 35008)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 16384, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_count", scope: !248, file: !6, line: 369, baseType: !252, size: 64, offset: 51392)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_bytes", scope: !248, file: !6, line: 370, baseType: !252, size: 64, offset: 51456)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_bytes_free", scope: !248, file: !6, line: 371, baseType: !252, size: 64, offset: 51520)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues", scope: !154, file: !6, line: 715, baseType: !305, size: 1152, offset: 52800)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 1152, elements: !478)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_cb_t", file: !6, line: 701, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_queue_cb_s", file: !6, line: 694, size: 384, elements: !308)
!308 = !{!309, !310, !323, !324, !554, !555}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !307, file: !6, line: 695, baseType: !117, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "submit_cb", scope: !307, file: !6, line: 696, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_stack_cb", file: !6, line: 670, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !315}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_t", file: !6, line: 669, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_queue_s", file: !6, line: 687, size: 192, elements: !318)
!318 = !{!319, !320, !321, !322}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !317, file: !6, line: 688, baseType: !117, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "stack_ctx", scope: !317, file: !6, line: 689, baseType: !117, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !317, file: !6, line: 690, baseType: !128, size: 32, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !317, file: !6, line: 691, baseType: !128, size: 32, offset: 160)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "complete_cb", scope: !307, file: !6, line: 697, baseType: !311, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "return_cb", scope: !307, file: !6, line: 698, baseType: !325, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_cb", file: !6, line: 671, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_pending_t", file: !6, line: 668, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_io_pending_t", file: !6, line: 783, size: 1216, elements: !332)
!332 = !{!333, !334, !335, !549, !550}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "io_queue_type", scope: !331, file: !6, line: 784, baseType: !128, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !331, file: !6, line: 785, baseType: !152, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !331, file: !6, line: 786, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn", file: !6, line: 781, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn", file: !6, line: 794, size: 3968, elements: !339)
!339 = !{!340, !344, !345, !347, !348, !349, !350, !351, !352, !353, !354, !355, !357, !358, !359, !360, !361, !362, !363, !364, !470, !471, !472, !473, !474, !475, !476, !480, !481, !482, !483, !484, !485, !486, !487, !488, !494, !515, !516, !517, !518, !519, !520, !521, !522, !526, !533, !548}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_conn", scope: !338, file: !6, line: 795, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "sasl_conn_t", file: !343, line: 16, baseType: !117)
!343 = !DIFile(filename: "./sasl_defs.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "3a8678a43d09d8e311388b26eedc7a3e")
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sfd", scope: !338, file: !6, line: 796, baseType: !128, size: 32, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_started", scope: !338, file: !6, line: 797, baseType: !346, size: 8, offset: 96)
!346 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !338, file: !6, line: 798, baseType: !346, size: 8, offset: 104)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "set_stale", scope: !338, file: !6, line: 799, baseType: !346, size: 8, offset: 112)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "mset_res", scope: !338, file: !6, line: 800, baseType: !346, size: 8, offset: 120)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "close_after_write", scope: !338, file: !6, line: 801, baseType: !346, size: 8, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_malloced", scope: !338, file: !6, line: 802, baseType: !346, size: 8, offset: 136)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "item_malloced", scope: !338, file: !6, line: 803, baseType: !346, size: 8, offset: 144)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !338, file: !6, line: 809, baseType: !21, size: 32, offset: 160)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "substate", scope: !338, file: !6, line: 810, baseType: !37, size: 32, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd_time", scope: !338, file: !6, line: 811, baseType: !356, size: 32, offset: 224)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_time_t", file: !68, line: 14, baseType: !7)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !338, file: !6, line: 812, baseType: !163, size: 1024, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ev_flags", scope: !338, file: !6, line: 813, baseType: !134, size: 16, offset: 1280)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !338, file: !6, line: 814, baseType: !134, size: 16, offset: 1296)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !338, file: !6, line: 816, baseType: !151, size: 64, offset: 1344)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "rcurr", scope: !338, file: !6, line: 817, baseType: !151, size: 64, offset: 1408)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "rsize", scope: !338, file: !6, line: 818, baseType: !128, size: 32, offset: 1472)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "rbytes", scope: !338, file: !6, line: 819, baseType: !128, size: 32, offset: 1504)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !338, file: !6, line: 821, baseType: !365, size: 64, offset: 1536)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "mc_resp", file: !6, line: 770, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mc_resp", file: !6, line: 743, size: 9472, elements: !368)
!368 = !{!369, !383, !385, !386, !387, !388, !389, !414, !425, !426, !427, !428, !429, !430, !431, !432, !433, !462, !466}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !367, file: !6, line: 744, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "mc_resp_bundle", file: !6, line: 703, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mc_resp_bundle", file: !6, line: 773, size: 192, elements: !373)
!373 = !{!374, !375, !376, !378, !379}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !372, file: !6, line: 774, baseType: !177, size: 8)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next_check", scope: !372, file: !6, line: 775, baseType: !177, size: 8, offset: 8)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !6, line: 776, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !372, file: !6, line: 777, baseType: !377, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !372, file: !6, line: 778, baseType: !380, offset: 192)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: -1)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !367, file: !6, line: 745, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "wbytes", scope: !367, file: !6, line: 746, baseType: !128, size: 32, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "tosend", scope: !367, file: !6, line: 747, baseType: !128, size: 32, offset: 160)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "write_and_free", scope: !367, file: !6, line: 748, baseType: !117, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "io_pending", scope: !367, file: !6, line: 749, baseType: !329, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !367, file: !6, line: 751, baseType: !390, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "item", file: !6, line: 598, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stritem", file: !6, line: 575, size: 384, elements: !393)
!393 = !{!394, !396, !397, !398, !399, !400, !401, !403, !406, !407, !408}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !6, line: 577, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !392, file: !6, line: 578, baseType: !395, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "h_next", scope: !392, file: !6, line: 580, baseType: !395, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !392, file: !6, line: 581, baseType: !356, size: 32, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "exptime", scope: !392, file: !6, line: 582, baseType: !356, size: 32, offset: 224)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !392, file: !6, line: 583, baseType: !128, size: 32, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !392, file: !6, line: 584, baseType: !402, size: 16, offset: 288)
!402 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !392, file: !6, line: 585, baseType: !404, size: 16, offset: 304)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !178, line: 25, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !180, line: 40, baseType: !402)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_clsid", scope: !392, file: !6, line: 586, baseType: !177, size: 8, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "nkey", scope: !392, file: !6, line: 587, baseType: !177, size: 8, offset: 328)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !392, file: !6, line: 593, baseType: !409, offset: 384)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, elements: !381)
!410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !6, line: 590, size: 64, elements: !411)
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !410, file: !6, line: 591, baseType: !252, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !410, file: !6, line: 592, baseType: !146, size: 8)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !367, file: !6, line: 752, baseType: !415, size: 512, offset: 384)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 512, elements: !423)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !417, line: 26, size: 128, elements: !418)
!417 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "6a734cae8feaa37c12e11190a6573675")
!418 = !{!419, !420}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !416, file: !417, line: 28, baseType: !117, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !416, file: !417, line: 29, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !422, line: 46, baseType: !116)
!422 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!423 = !{!424}
!424 = !DISubrange(count: 4)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_total", scope: !367, file: !6, line: 753, baseType: !128, size: 32, offset: 896)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "iovcnt", scope: !367, file: !6, line: 754, baseType: !177, size: 8, offset: 928)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_data_iov", scope: !367, file: !6, line: 755, baseType: !177, size: 8, offset: 936)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !367, file: !6, line: 760, baseType: !346, size: 8, offset: 944)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !367, file: !6, line: 761, baseType: !346, size: 8, offset: 952)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !367, file: !6, line: 763, baseType: !404, size: 16, offset: 960)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "udp_sequence", scope: !367, file: !6, line: 764, baseType: !404, size: 16, offset: 976)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "udp_total", scope: !367, file: !6, line: 765, baseType: !404, size: 16, offset: 992)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr", scope: !367, file: !6, line: 766, baseType: !434, size: 224, offset: 1024)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !435, line: 253, size: 224, elements: !436)
!435 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "6a5254a491bcdb8c3253de75bf3571c1")
!436 = !{!437, !440, !442, !445, !461}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !434, file: !435, line: 255, baseType: !438, size: 16)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !439, line: 28, baseType: !402)
!439 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "b70cbaf07ffb7e8bf11ee98d9a21e2fc")
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !434, file: !435, line: 256, baseType: !441, size: 16, offset: 16)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !435, line: 119, baseType: !404)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !434, file: !435, line: 257, baseType: !443, size: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !178, line: 26, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !180, line: 42, baseType: !7)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !434, file: !435, line: 258, baseType: !446, size: 128, offset: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !435, line: 212, size: 128, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !446, file: !435, line: 219, baseType: !449, size: 128)
!449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !446, file: !435, line: 214, size: 128, elements: !450)
!450 = !{!451, !455, !459}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !449, file: !435, line: 216, baseType: !452, size: 128)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 128, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 16)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !449, file: !435, line: 217, baseType: !456, size: 128)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 128, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 8)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !449, file: !435, line: 218, baseType: !460, size: 128)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 128, elements: !423)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !434, file: !435, line: 259, baseType: !443, size: 32, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr_size", scope: !367, file: !6, line: 767, baseType: !463, size: 32, offset: 1248)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !464, line: 33, baseType: !465)
!464 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "b1d3343a573cbf39b225111209e02966")
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !180, line: 209, baseType: !7)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !367, file: !6, line: 769, baseType: !467, size: 8192, offset: 1280)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 8192, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 1024)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "resp_head", scope: !338, file: !6, line: 822, baseType: !365, size: 64, offset: 1600)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ritem", scope: !338, file: !6, line: 823, baseType: !151, size: 64, offset: 1664)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rlbytes", scope: !338, file: !6, line: 824, baseType: !128, size: 32, offset: 1728)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !338, file: !6, line: 832, baseType: !117, size: 64, offset: 1792)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !338, file: !6, line: 835, baseType: !128, size: 32, offset: 1856)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues_submitted", scope: !338, file: !6, line: 837, baseType: !128, size: 32, offset: 1888)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues", scope: !338, file: !6, line: 838, baseType: !477, size: 576, offset: 1920)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 576, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 3)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "recache_counter", scope: !338, file: !6, line: 843, baseType: !7, size: 32, offset: 2496)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !338, file: !6, line: 845, baseType: !51, size: 32, offset: 2528)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "transport", scope: !338, file: !6, line: 846, baseType: !56, size: 32, offset: 2560)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "close_reason", scope: !338, file: !6, line: 847, baseType: !61, size: 32, offset: 2592)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !338, file: !6, line: 850, baseType: !128, size: 32, offset: 2624)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr", scope: !338, file: !6, line: 851, baseType: !434, size: 224, offset: 2656)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr_size", scope: !338, file: !6, line: 852, baseType: !463, size: 32, offset: 2880)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "noreply", scope: !338, file: !6, line: 854, baseType: !346, size: 8, offset: 2912)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !338, file: !6, line: 860, baseType: !489, size: 192, offset: 2944)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !6, line: 856, size: 192, elements: !490)
!490 = !{!491, !492, !493}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !489, file: !6, line: 857, baseType: !151, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !489, file: !6, line: 858, baseType: !421, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !489, file: !6, line: 859, baseType: !421, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "binary_header", scope: !338, file: !6, line: 864, baseType: !495, size: 192, offset: 3136)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_header", file: !496, line: 164, baseType: !497)
!496 = !DIFile(filename: "./protocol_binary.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "7a322a65fa8661e9a597acbeeeb23107")
!497 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !496, line: 151, size: 192, elements: !498)
!498 = !{!499, !511}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !497, file: !496, line: 162, baseType: !500, size: 192)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !497, file: !496, line: 152, size: 192, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509, !510}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !500, file: !496, line: 153, baseType: !177, size: 8)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !500, file: !496, line: 154, baseType: !177, size: 8, offset: 8)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !500, file: !496, line: 155, baseType: !404, size: 16, offset: 16)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "extlen", scope: !500, file: !496, line: 156, baseType: !177, size: 8, offset: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !500, file: !496, line: 157, baseType: !177, size: 8, offset: 40)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !500, file: !496, line: 158, baseType: !404, size: 16, offset: 48)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "bodylen", scope: !500, file: !496, line: 159, baseType: !443, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !500, file: !496, line: 160, baseType: !443, size: 32, offset: 96)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !500, file: !496, line: 161, baseType: !252, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !497, file: !496, line: 163, baseType: !512, size: 192)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 192, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 24)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !338, file: !6, line: 865, baseType: !252, size: 64, offset: 3328)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !338, file: !6, line: 866, baseType: !252, size: 64, offset: 3392)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !338, file: !6, line: 867, baseType: !134, size: 16, offset: 3456)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !338, file: !6, line: 868, baseType: !128, size: 32, offset: 3488)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !338, file: !6, line: 869, baseType: !128, size: 32, offset: 3520)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !338, file: !6, line: 870, baseType: !336, size: 64, offset: 3584)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !338, file: !6, line: 871, baseType: !152, size: 64, offset: 3648)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "try_read_command", scope: !338, file: !6, line: 872, baseType: !523, size: 64, offset: 3712)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!128, !336}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !338, file: !6, line: 873, baseType: !527, size: 64, offset: 3776)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!530, !336, !117, !421}
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !531, line: 108, baseType: !532)
!531 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !180, line: 193, baseType: !150)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sendmsg", scope: !338, file: !6, line: 874, baseType: !534, size: 64, offset: 3840)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!530, !336, !537, !128}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !464, line: 257, size: 448, elements: !539)
!539 = !{!540, !541, !542, !544, !545, !546, !547}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !538, file: !464, line: 259, baseType: !117, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !538, file: !464, line: 260, baseType: !463, size: 32, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !538, file: !464, line: 262, baseType: !543, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !538, file: !464, line: 263, baseType: !421, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !538, file: !464, line: 265, baseType: !117, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !538, file: !464, line: 266, baseType: !421, size: 64, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !538, file: !464, line: 271, baseType: !128, size: 32, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !338, file: !6, line: 875, baseType: !527, size: 64, offset: 3904)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !331, file: !6, line: 787, baseType: !365, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !331, file: !6, line: 788, baseType: !551, size: 960, offset: 256)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 960, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 120)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_cb", scope: !307, file: !6, line: 699, baseType: !325, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !307, file: !6, line: 700, baseType: !128, size: 32, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ev_queue", scope: !154, file: !6, line: 716, baseType: !557, size: 64, offset: 53952)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn_queue", file: !3, line: 64, size: 512, elements: !559)
!559 = !{!560, !584, !585}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !558, file: !3, line: 65, baseType: !561, size: 128)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn_ev_head", file: !3, line: 65, size: 128, elements: !562)
!562 = !{!563, !582}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !561, file: !3, line: 65, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn_queue_item", file: !3, line: 47, size: 576, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sfd", scope: !565, file: !3, line: 48, baseType: !128, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "init_state", scope: !565, file: !3, line: 49, baseType: !21, size: 32, offset: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !565, file: !3, line: 50, baseType: !128, size: 32, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "read_buffer_size", scope: !565, file: !3, line: 51, baseType: !128, size: 32, offset: 96)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "transport", scope: !565, file: !3, line: 52, baseType: !56, size: 32, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !565, file: !3, line: 53, baseType: !13, size: 32, offset: 160)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !565, file: !3, line: 54, baseType: !336, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !565, file: !3, line: 55, baseType: !117, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "conntag", scope: !565, file: !3, line: 56, baseType: !252, size: 64, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "bproto", scope: !565, file: !3, line: 57, baseType: !51, size: 32, offset: 384)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !565, file: !3, line: 58, baseType: !329, size: 64, offset: 448)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "i_next", scope: !565, file: !3, line: 59, baseType: !579, size: 64, offset: 512)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !565, file: !3, line: 59, size: 64, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !579, file: !3, line: 59, baseType: !564, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !561, file: !3, line: 65, baseType: !583, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !558, file: !3, line: 66, baseType: !119, size: 320, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !558, file: !3, line: 67, baseType: !586, size: 64, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_t", file: !588, line: 39, baseType: !589)
!588 = !DIFile(filename: "./cache.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d97639c8540587a19d8550d7d7156448")
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !588, line: 22, size: 704, elements: !590)
!590 = !{!591, !592, !593, !606, !607, !608, !609, !610}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !589, file: !588, line: 24, baseType: !119, size: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !589, file: !588, line: 26, baseType: !151, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !589, file: !588, line: 28, baseType: !594, size: 128, offset: 384)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_head", file: !588, line: 28, size: 128, elements: !595)
!595 = !{!596, !604}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !594, file: !588, line: 28, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_free_s", file: !588, line: 12, size: 64, elements: !599)
!599 = !{!600}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "c_next", scope: !598, file: !588, line: 13, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !598, file: !588, line: 13, size: 64, elements: !602)
!602 = !{!603}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !601, file: !588, line: 13, baseType: !597, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !594, file: !588, line: 28, baseType: !605, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !589, file: !588, line: 30, baseType: !421, size: 64, offset: 512)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "freetotal", scope: !589, file: !588, line: 32, baseType: !128, size: 32, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !589, file: !588, line: 34, baseType: !128, size: 32, offset: 608)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "freecurr", scope: !589, file: !588, line: 36, baseType: !128, size: 32, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !589, file: !588, line: 38, baseType: !128, size: 32, offset: 672)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_cache", scope: !154, file: !6, line: 717, baseType: !586, size: 64, offset: 54016)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "open_bundle", scope: !154, file: !6, line: 718, baseType: !370, size: 64, offset: 54080)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "io_cache", scope: !154, file: !6, line: 719, baseType: !586, size: 64, offset: 54144)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !154, file: !6, line: 721, baseType: !117, size: 64, offset: 54208)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !154, file: !6, line: 723, baseType: !616, size: 64, offset: 54272)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger", file: !68, line: 171, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_logger", file: !68, line: 159, size: 832, elements: !619)
!619 = !{!620, !622, !623, !624, !625, !626, !627, !628, !629, !630, !643}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !618, file: !68, line: 160, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !618, file: !68, line: 161, baseType: !621, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !618, file: !68, line: 162, baseType: !119, size: 320, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !618, file: !68, line: 163, baseType: !252, size: 64, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dropped", scope: !618, file: !68, line: 164, baseType: !252, size: 64, offset: 512)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !618, file: !68, line: 165, baseType: !252, size: 64, offset: 576)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "fetcher_ratio", scope: !618, file: !68, line: 166, baseType: !404, size: 16, offset: 640)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mutation_ratio", scope: !618, file: !68, line: 167, baseType: !404, size: 16, offset: 656)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !618, file: !68, line: 168, baseType: !404, size: 16, offset: 672)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !618, file: !68, line: 169, baseType: !631, size: 64, offset: 704)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "bipbuf_t", file: !633, line: 18, baseType: !634)
!633 = !DIFile(filename: "./bipbuffer.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "99606bcb8393045e6bc9eef40115066f")
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !633, line: 4, size: 192, elements: !635)
!635 = !{!636, !637, !638, !639, !640, !641}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !634, file: !633, line: 6, baseType: !116, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "a_start", scope: !634, file: !633, line: 9, baseType: !7, size: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "a_end", scope: !634, file: !633, line: 9, baseType: !7, size: 32, offset: 96)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "b_end", scope: !634, file: !633, line: 12, baseType: !7, size: 32, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "b_inuse", scope: !634, file: !633, line: 15, baseType: !128, size: 32, offset: 160)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !634, file: !633, line: 17, baseType: !642, offset: 192)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, elements: !381)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "entry_map", scope: !618, file: !68, line: 170, baseType: !644, size: 64, offset: 768)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_details", file: !68, line: 57, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_entry_details", file: !68, line: 62, size: 256, elements: !648)
!648 = !{!649, !650, !651, !681, !686}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "reqlen", scope: !647, file: !68, line: 63, baseType: !128, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !647, file: !68, line: 64, baseType: !404, size: 16, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "log_cb", scope: !647, file: !68, line: 65, baseType: !652, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_log_cb", file: !68, line: 59, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !656, !644, !671, !673}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "logentry", file: !68, line: 56, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_logentry", file: !68, line: 135, size: 320, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !658, file: !68, line: 136, baseType: !67, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !658, file: !68, line: 137, baseType: !177, size: 8, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !658, file: !68, line: 138, baseType: !404, size: 16, offset: 48)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !658, file: !68, line: 139, baseType: !252, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !658, file: !68, line: 140, baseType: !225, size: 128, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !658, file: !68, line: 141, baseType: !128, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !658, file: !68, line: 144, baseType: !667, offset: 288)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, elements: !381)
!668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !68, line: 142, size: 8, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !668, file: !68, line: 143, baseType: !146, size: 8)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !675)
!675 = !{!676, !678, !679, !680}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !674, file: !677, line: 399, baseType: !7, size: 32)
!677 = !DIFile(filename: "thread.c", directory: "/home/xuheng/blackbox/llvm-test/memcached")
!678 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !674, file: !677, line: 399, baseType: !7, size: 32, offset: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !674, file: !677, line: 399, baseType: !117, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !674, file: !677, line: 399, baseType: !117, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "parse_cb", scope: !647, file: !68, line: 66, baseType: !682, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_parse_cb", file: !68, line: 60, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!128, !656, !151}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !647, file: !68, line: 67, baseType: !151, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lru_bump_buf", scope: !154, file: !6, line: 724, baseType: !117, size: 64, offset: 54336)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !154, file: !6, line: 728, baseType: !128, size: 32, offset: 54400)
!689 = !{!0, !690, !693, !695, !697, !699, !701, !703, !705, !746, !748, !750, !752}
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(name: "lru_locks", scope: !2, file: !3, line: 71, type: !692, isLocal: false, isDefinition: true)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 81920, elements: !299)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(name: "worker_hang_lock", scope: !2, file: !3, line: 84, type: !119, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(name: "item_locks", scope: !2, file: !3, line: 86, type: !118, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(name: "item_lock_count", scope: !2, file: !3, line: 88, type: !443, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(name: "item_lock_hashpower", scope: !2, file: !3, line: 89, type: !7, isLocal: false, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(name: "threads", scope: !2, file: !3, line: 97, type: !152, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(name: "init_lock", scope: !2, file: !3, line: 103, type: !119, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(name: "init_cond", scope: !2, file: !3, line: 104, type: !707, isLocal: true, isDefinition: true)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !120, line: 80, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !120, line: 75, size: 384, elements: !709)
!709 = !{!710, !740, !744}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !708, file: !120, line: 77, baseType: !711, size: 384)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !138, line: 92, size: 384, elements: !712)
!712 = !{!713, !723, !732, !736, !737, !738, !739}
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !138, line: 94, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !138, line: 94, size: 64, elements: !715)
!715 = !{!716, !718}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !714, file: !138, line: 96, baseType: !717, size: 64)
!717 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !714, file: !138, line: 101, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !714, file: !138, line: 97, size: 64, elements: !720)
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !719, file: !138, line: 99, baseType: !7, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !719, file: !138, line: 100, baseType: !7, size: 32, offset: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !138, line: 103, baseType: !724, size: 64, offset: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !138, line: 103, size: 64, elements: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !724, file: !138, line: 105, baseType: !717, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !724, file: !138, line: 110, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !138, line: 106, size: 64, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !728, file: !138, line: 108, baseType: !7, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !728, file: !138, line: 109, baseType: !7, size: 32, offset: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !711, file: !138, line: 112, baseType: !733, size: 64, offset: 128)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 2)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !711, file: !138, line: 113, baseType: !733, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !711, file: !138, line: 114, baseType: !7, size: 32, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !711, file: !138, line: 115, baseType: !7, size: 32, offset: 288)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !711, file: !138, line: 116, baseType: !733, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !708, file: !120, line: 78, baseType: !741, size: 384)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 384, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 48)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !708, file: !120, line: 79, baseType: !745, size: 64)
!745 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(name: "init_count", scope: !2, file: !3, line: 102, type: !128, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(name: "last_thread", scope: !2, file: !3, line: 639, type: !128, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(name: "last_thread_by_napi_id", scope: !2, file: !3, line: 642, type: !128, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(name: "stats_lock", scope: !2, file: !3, line: 81, type: !119, isLocal: true, isDefinition: true)
!754 = !{i32 7, !"Dwarf Version", i32 5}
!755 = !{i32 2, !"Debug Info Version", i32 3}
!756 = !{i32 1, !"wchar_size", i32 4}
!757 = !{i32 7, !"uwtable", i32 1}
!758 = !{!"/home/xuheng/blackbox/llvm-test/memcached/thread.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/thread.gcda", !2}
!759 = !{!"clang version 14.0.0"}
!760 = distinct !DISubprogram(name: "item_lock", scope: !3, file: !3, line: 121, type: !761, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !763)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !443}
!763 = !{!764}
!764 = !DILocalVariable(name: "hv", arg: 1, scope: !760, file: !3, line: 121, type: !443)
!765 = !DILocation(line: 0, scope: !760)
!766 = !DILocation(line: 122, column: 5, scope: !760)
!767 = !{!768, !768, i64 0}
!768 = !{!"any pointer", !769, i64 0}
!769 = !{!"omnipotent char", !770, i64 0}
!770 = !{!"Simple C/C++ TBAA"}
!771 = !{!772, !772, i64 0}
!772 = !{!"int", !769, i64 0}
!773 = !DILocation(line: 123, column: 1, scope: !760)
!774 = !DISubprogram(name: "pthread_mutex_lock", scope: !775, file: !775, line: 738, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!775 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!776 = !DISubroutineType(types: !777)
!777 = !{!128, !118}
!778 = !{}
!779 = distinct !DISubprogram(name: "item_trylock", scope: !3, file: !3, line: 125, type: !780, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{!117, !443}
!782 = !{!783, !784}
!783 = !DILocalVariable(name: "hv", arg: 1, scope: !779, file: !3, line: 125, type: !443)
!784 = !DILocalVariable(name: "lock", scope: !779, file: !3, line: 126, type: !118)
!785 = !DILocation(line: 0, scope: !779)
!786 = !DILocation(line: 126, column: 30, scope: !779)
!787 = !DILocation(line: 126, column: 41, scope: !779)
!788 = !DILocation(line: 126, column: 46, scope: !779)
!789 = !DILocation(line: 126, column: 44, scope: !779)
!790 = !DILocation(line: 127, column: 9, scope: !791)
!791 = distinct !DILexicalBlock(scope: !779, file: !3, line: 127, column: 9)
!792 = !DILocation(line: 127, column: 37, scope: !791)
!793 = !DILocation(line: 127, column: 9, scope: !779)
!794 = !DILocation(line: 128, column: 16, scope: !795)
!795 = distinct !DILexicalBlock(scope: !791, file: !3, line: 127, column: 43)
!796 = !DILocation(line: 128, column: 9, scope: !795)
!797 = !DILocation(line: 130, column: 5, scope: !779)
!798 = !DILocation(line: 131, column: 1, scope: !779)
!799 = !DISubprogram(name: "pthread_mutex_trylock", scope: !775, file: !775, line: 734, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!800 = distinct !DISubprogram(name: "item_trylock_unlock", scope: !3, file: !3, line: 133, type: !801, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !117}
!803 = !{!804}
!804 = !DILocalVariable(name: "lock", arg: 1, scope: !800, file: !3, line: 133, type: !117)
!805 = !DILocation(line: 0, scope: !800)
!806 = !DILocation(line: 134, column: 5, scope: !800)
!807 = !DILocation(line: 135, column: 1, scope: !800)
!808 = !DISubprogram(name: "pthread_mutex_unlock", scope: !775, file: !775, line: 756, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!809 = distinct !DISubprogram(name: "item_unlock", scope: !3, file: !3, line: 137, type: !761, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !810)
!810 = !{!811}
!811 = !DILocalVariable(name: "hv", arg: 1, scope: !809, file: !3, line: 137, type: !443)
!812 = !DILocation(line: 0, scope: !809)
!813 = !DILocation(line: 138, column: 5, scope: !809)
!814 = !DILocation(line: 139, column: 1, scope: !809)
!815 = distinct !DISubprogram(name: "pause_threads", scope: !3, file: !3, line: 158, type: !816, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !818)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !5}
!818 = !{!819, !820, !821}
!819 = !DILocalVariable(name: "type", arg: 1, scope: !815, file: !3, line: 158, type: !5)
!820 = !DILocalVariable(name: "i", scope: !815, file: !3, line: 159, type: !128)
!821 = !DILocalVariable(name: "pause_workers", scope: !815, file: !3, line: 160, type: !346)
!822 = !DILocation(line: 0, scope: !815)
!823 = !DILocation(line: 162, column: 5, scope: !815)
!824 = !DILocation(line: 164, column: 13, scope: !825)
!825 = distinct !DILexicalBlock(scope: !815, file: !3, line: 162, column: 19)
!826 = !DILocation(line: 165, column: 13, scope: !825)
!827 = !DILocation(line: 166, column: 13, scope: !825)
!828 = !DILocation(line: 168, column: 13, scope: !825)
!829 = !DILocation(line: 169, column: 13, scope: !825)
!830 = !DILocation(line: 173, column: 13, scope: !825)
!831 = !DILocation(line: 197, column: 5, scope: !815)
!832 = !DILocation(line: 198, column: 16, scope: !815)
!833 = !DILocation(line: 199, column: 30, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 199, column: 5)
!835 = distinct !DILexicalBlock(scope: !815, file: !3, line: 199, column: 5)
!836 = !{!837, !772, i64 92}
!837 = !{!"settings", !838, i64 0, !772, i64 8, !772, i64 12, !772, i64 16, !768, i64 24, !772, i64 32, !772, i64 36, !838, i64 40, !772, i64 48, !768, i64 56, !768, i64 64, !772, i64 72, !839, i64 80, !772, i64 88, !772, i64 92, !772, i64 96, !769, i64 100, !772, i64 104, !772, i64 108, !840, i64 112, !769, i64 116, !772, i64 120, !772, i64 124, !772, i64 128, !772, i64 132, !772, i64 136, !840, i64 140, !840, i64 141, !840, i64 142, !840, i64 143, !840, i64 144, !840, i64 145, !772, i64 148, !839, i64 152, !772, i64 160, !772, i64 164, !840, i64 168, !772, i64 172, !840, i64 176, !840, i64 177, !768, i64 184, !772, i64 192, !772, i64 196, !772, i64 200, !772, i64 204, !839, i64 208, !839, i64 216, !772, i64 224, !840, i64 228, !772, i64 232, !772, i64 236, !772, i64 240, !772, i64 244, !772, i64 248, !840, i64 252, !840, i64 253, !840, i64 254, !840, i64 255, !772, i64 256, !772, i64 260, !772, i64 264, !772, i64 268, !772, i64 272, !772, i64 276, !772, i64 280, !772, i64 284, !772, i64 288, !772, i64 292, !839, i64 296, !839, i64 304, !840, i64 312, !772, i64 316, !772, i64 320, !768, i64 328, !772, i64 336}
!838 = !{!"long", !769, i64 0}
!839 = !{!"double", !769, i64 0}
!840 = !{!"_Bool", !769, i64 0}
!841 = !DILocation(line: 199, column: 19, scope: !834)
!842 = !DILocation(line: 199, column: 5, scope: !835)
!843 = !DILocation(line: 176, column: 13, scope: !825)
!844 = !DILocation(line: 177, column: 13, scope: !825)
!845 = !DILocation(line: 178, column: 13, scope: !825)
!846 = !DILocation(line: 180, column: 13, scope: !825)
!847 = !DILocation(line: 181, column: 13, scope: !825)
!848 = !DILocation(line: 184, column: 13, scope: !825)
!849 = !DILocation(line: 194, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !851, file: !3, line: 193, column: 25)
!851 = distinct !DILexicalBlock(scope: !815, file: !3, line: 193, column: 9)
!852 = !DILocation(line: 187, column: 21, scope: !825)
!853 = !DILocation(line: 187, column: 13, scope: !825)
!854 = !DILocation(line: 188, column: 13, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 188, column: 13)
!856 = distinct !DILexicalBlock(scope: !825, file: !3, line: 188, column: 13)
!857 = !DILocation(line: 200, column: 27, scope: !858)
!858 = distinct !DILexicalBlock(scope: !834, file: !3, line: 199, column: 48)
!859 = !DILocation(line: 200, column: 9, scope: !858)
!860 = !DILocation(line: 199, column: 44, scope: !834)
!861 = distinct !{!861, !842, !862, !863}
!862 = !DILocation(line: 201, column: 5, scope: !835)
!863 = !{!"llvm.loop.mustprogress"}
!864 = !DILocation(line: 202, column: 43, scope: !815)
!865 = !DILocation(line: 202, column: 5, scope: !815)
!866 = !DILocation(line: 203, column: 5, scope: !815)
!867 = !DILocation(line: 204, column: 1, scope: !815)
!868 = !DISubprogram(name: "slabs_rebalancer_pause", scope: !869, file: !869, line: 62, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!869 = !DIFile(filename: "./slabs.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "28867aba1f41c79140864d76faedcb32")
!870 = !DISubroutineType(types: !871)
!871 = !{null}
!872 = !DISubprogram(name: "lru_maintainer_pause", scope: !873, file: !873, line: 83, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!873 = !DIFile(filename: "./items.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "24f8c54717bd547418db2338c9044014")
!874 = !DISubprogram(name: "lru_crawler_pause", scope: !875, file: !875, line: 40, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!875 = !DIFile(filename: "./crawler.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "4dc9e6e54966538ea20b64490631aef9")
!876 = !DISubprogram(name: "storage_compact_pause", scope: !877, file: !877, line: 30, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!877 = !DIFile(filename: "./storage.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "1366cb74d3c75a613067dc0e748ab303")
!878 = !DISubprogram(name: "storage_write_pause", scope: !877, file: !877, line: 27, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!879 = !DISubprogram(name: "slabs_rebalancer_resume", scope: !869, file: !869, line: 63, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!880 = !DISubprogram(name: "lru_maintainer_resume", scope: !873, file: !873, line: 84, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!881 = !DISubprogram(name: "lru_crawler_resume", scope: !875, file: !875, line: 41, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!882 = !DISubprogram(name: "storage_compact_resume", scope: !877, file: !877, line: 31, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!883 = !DISubprogram(name: "storage_write_resume", scope: !877, file: !877, line: 28, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!884 = !DISubprogram(name: "fprintf", scope: !885, file: !885, line: 326, type: !886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!885 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!886 = !DISubroutineType(types: !887)
!887 = !{!128, !888, !942, null}
!888 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !889)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !891, line: 7, baseType: !892)
!891 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !893, line: 49, size: 1728, elements: !894)
!893 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!894 = !{!895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !910, !912, !913, !914, !916, !917, !919, !923, !926, !928, !931, !934, !935, !936, !937, !938}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !892, file: !893, line: 51, baseType: !128, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !892, file: !893, line: 54, baseType: !151, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !892, file: !893, line: 55, baseType: !151, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !892, file: !893, line: 56, baseType: !151, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !892, file: !893, line: 57, baseType: !151, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !892, file: !893, line: 58, baseType: !151, size: 64, offset: 320)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !892, file: !893, line: 59, baseType: !151, size: 64, offset: 384)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !892, file: !893, line: 60, baseType: !151, size: 64, offset: 448)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !892, file: !893, line: 61, baseType: !151, size: 64, offset: 512)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !892, file: !893, line: 64, baseType: !151, size: 64, offset: 576)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !892, file: !893, line: 65, baseType: !151, size: 64, offset: 640)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !892, file: !893, line: 66, baseType: !151, size: 64, offset: 704)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !892, file: !893, line: 68, baseType: !908, size: 64, offset: 768)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !893, line: 36, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !892, file: !893, line: 70, baseType: !911, size: 64, offset: 832)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !892, file: !893, line: 72, baseType: !128, size: 32, offset: 896)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !892, file: !893, line: 73, baseType: !128, size: 32, offset: 928)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !892, file: !893, line: 74, baseType: !915, size: 64, offset: 960)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !180, line: 152, baseType: !150)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !892, file: !893, line: 77, baseType: !402, size: 16, offset: 1024)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !892, file: !893, line: 78, baseType: !918, size: 8, offset: 1040)
!918 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !892, file: !893, line: 79, baseType: !920, size: 8, offset: 1048)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 8, elements: !921)
!921 = !{!922}
!922 = !DISubrange(count: 1)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !892, file: !893, line: 81, baseType: !924, size: 64, offset: 1088)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !893, line: 43, baseType: null)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !892, file: !893, line: 89, baseType: !927, size: 64, offset: 1152)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !180, line: 153, baseType: !150)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !892, file: !893, line: 91, baseType: !929, size: 64, offset: 1216)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !893, line: 37, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !892, file: !893, line: 92, baseType: !932, size: 64, offset: 1280)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !893, line: 38, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !892, file: !893, line: 93, baseType: !911, size: 64, offset: 1344)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !892, file: !893, line: 94, baseType: !117, size: 64, offset: 1408)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !892, file: !893, line: 95, baseType: !421, size: 64, offset: 1472)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !892, file: !893, line: 96, baseType: !128, size: 32, offset: 1536)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !892, file: !893, line: 98, baseType: !939, size: 160, offset: 1568)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 160, elements: !940)
!940 = !{!941}
!941 = !DISubrange(count: 20)
!942 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !943)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!945 = distinct !DISubprogram(name: "notify_worker_fd", scope: !3, file: !3, line: 358, type: !946, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !948)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !152, !128, !13}
!948 = !{!949, !950, !951, !952}
!949 = !DILocalVariable(name: "t", arg: 1, scope: !945, file: !3, line: 358, type: !152)
!950 = !DILocalVariable(name: "sfd", arg: 2, scope: !945, file: !3, line: 358, type: !128)
!951 = !DILocalVariable(name: "mode", arg: 3, scope: !945, file: !3, line: 358, type: !13)
!952 = !DILocalVariable(name: "item", scope: !945, file: !3, line: 359, type: !953)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "CQ_ITEM", file: !3, line: 46, baseType: !565)
!955 = !DILocation(line: 0, scope: !945)
!956 = !DILocation(line: 360, column: 32, scope: !945)
!957 = !{!958, !768, i64 6744}
!958 = !{!"", !838, i64 0, !768, i64 8, !959, i64 16, !772, i64 144, !964, i64 152, !769, i64 6600, !768, i64 6744, !768, i64 6752, !768, i64 6760, !768, i64 6768, !768, i64 6776, !768, i64 6784, !768, i64 6792, !772, i64 6800}
!959 = !{!"event", !960, i64 0, !769, i64 40, !772, i64 56, !768, i64 64, !769, i64 72, !962, i64 104, !962, i64 106, !963, i64 112}
!960 = !{!"event_callback", !961, i64 0, !962, i64 16, !769, i64 18, !769, i64 19, !769, i64 24, !768, i64 32}
!961 = !{!"", !768, i64 0, !768, i64 8}
!962 = !{!"short", !769, i64 0}
!963 = !{!"timeval", !838, i64 0, !838, i64 8}
!964 = !{!"thread_stats", !769, i64 0, !838, i64 40, !838, i64 48, !838, i64 56, !838, i64 64, !838, i64 72, !838, i64 80, !838, i64 88, !838, i64 96, !838, i64 104, !838, i64 112, !838, i64 120, !838, i64 128, !838, i64 136, !838, i64 144, !838, i64 152, !838, i64 160, !838, i64 168, !838, i64 176, !838, i64 184, !838, i64 192, !838, i64 200, !838, i64 208, !838, i64 216, !838, i64 224, !838, i64 232, !838, i64 240, !838, i64 248, !838, i64 256, !838, i64 264, !838, i64 272, !769, i64 280, !769, i64 4376, !838, i64 6424, !838, i64 6432, !838, i64 6440}
!965 = !DILocation(line: 360, column: 21, scope: !945)
!966 = !DILocation(line: 360, column: 43, scope: !945)
!967 = !DILocation(line: 360, column: 5, scope: !945)
!968 = distinct !{!968, !967, !969, !863}
!969 = !DILocation(line: 369, column: 5, scope: !945)
!970 = !DILocation(line: 371, column: 11, scope: !945)
!971 = !DILocation(line: 371, column: 16, scope: !945)
!972 = !{!973, !769, i64 20}
!973 = !{!"conn_queue_item", !772, i64 0, !769, i64 4, !772, i64 8, !772, i64 12, !769, i64 16, !769, i64 20, !768, i64 24, !768, i64 32, !838, i64 40, !769, i64 48, !768, i64 56, !974, i64 64}
!974 = !{!"", !768, i64 0}
!975 = !DILocation(line: 372, column: 11, scope: !945)
!976 = !DILocation(line: 372, column: 15, scope: !945)
!977 = !{!973, !772, i64 0}
!978 = !DILocation(line: 373, column: 5, scope: !945)
!979 = !DILocation(line: 374, column: 1, scope: !945)
!980 = distinct !DISubprogram(name: "wait_for_thread_registration", scope: !3, file: !3, line: 141, type: !981, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !128}
!983 = !{!984}
!984 = !DILocalVariable(name: "nthreads", arg: 1, scope: !980, file: !3, line: 141, type: !128)
!985 = !DILocation(line: 0, scope: !980)
!986 = !DILocation(line: 142, column: 12, scope: !980)
!987 = !DILocation(line: 142, column: 23, scope: !980)
!988 = !DILocation(line: 142, column: 5, scope: !980)
!989 = !DILocation(line: 143, column: 9, scope: !990)
!990 = distinct !DILexicalBlock(scope: !980, file: !3, line: 142, column: 35)
!991 = distinct !{!991, !988, !992, !863}
!992 = !DILocation(line: 144, column: 5, scope: !980)
!993 = !DILocation(line: 145, column: 1, scope: !980)
!994 = distinct !DISubprogram(name: "stop_threads", scope: !3, file: !3, line: 210, type: !870, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !995)
!995 = !{!996}
!996 = !DILocalVariable(name: "i", scope: !994, file: !3, line: 211, type: !128)
!997 = !DILocation(line: 214, column: 5, scope: !994)
!998 = !DILocation(line: 215, column: 18, scope: !999)
!999 = distinct !DILexicalBlock(scope: !994, file: !3, line: 215, column: 9)
!1000 = !{!837, !772, i64 32}
!1001 = !DILocation(line: 215, column: 26, scope: !999)
!1002 = !DILocation(line: 215, column: 9, scope: !994)
!1003 = !DILocation(line: 216, column: 17, scope: !999)
!1004 = !DILocation(line: 216, column: 9, scope: !999)
!1005 = !DILocation(line: 218, column: 18, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !994, file: !3, line: 218, column: 9)
!1007 = !DILocation(line: 218, column: 26, scope: !1006)
!1008 = !DILocation(line: 218, column: 9, scope: !994)
!1009 = !DILocation(line: 219, column: 17, scope: !1006)
!1010 = !DILocation(line: 219, column: 9, scope: !1006)
!1011 = !DILocation(line: 221, column: 5, scope: !994)
!1012 = !DILocation(line: 222, column: 5, scope: !994)
!1013 = !DILocation(line: 223, column: 16, scope: !994)
!1014 = !DILocation(line: 0, scope: !994)
!1015 = !DILocation(line: 224, column: 30, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 224, column: 5)
!1017 = distinct !DILexicalBlock(scope: !994, file: !3, line: 224, column: 5)
!1018 = !DILocation(line: 224, column: 19, scope: !1016)
!1019 = !DILocation(line: 224, column: 5, scope: !1017)
!1020 = !DILocation(line: 225, column: 27, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 224, column: 48)
!1022 = !DILocation(line: 225, column: 9, scope: !1021)
!1023 = !DILocation(line: 224, column: 44, scope: !1016)
!1024 = distinct !{!1024, !1019, !1025, !863}
!1025 = !DILocation(line: 226, column: 5, scope: !1017)
!1026 = !DILocation(line: 227, column: 5, scope: !994)
!1027 = !DILocation(line: 228, column: 5, scope: !994)
!1028 = !DILocation(line: 232, column: 18, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !994, file: !3, line: 232, column: 9)
!1030 = !DILocation(line: 232, column: 26, scope: !1029)
!1031 = !DILocation(line: 232, column: 9, scope: !994)
!1032 = !DILocation(line: 233, column: 17, scope: !1029)
!1033 = !DILocation(line: 233, column: 9, scope: !1029)
!1034 = !DILocation(line: 237, column: 5, scope: !994)
!1035 = !DILocation(line: 238, column: 18, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !994, file: !3, line: 238, column: 9)
!1037 = !DILocation(line: 238, column: 26, scope: !1036)
!1038 = !DILocation(line: 238, column: 9, scope: !994)
!1039 = !DILocation(line: 239, column: 17, scope: !1036)
!1040 = !DILocation(line: 239, column: 9, scope: !1036)
!1041 = !DILocation(line: 240, column: 18, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !994, file: !3, line: 240, column: 9)
!1043 = !{!837, !840, i64 143}
!1044 = !{i8 0, i8 2}
!1045 = !DILocation(line: 240, column: 9, scope: !994)
!1046 = !DILocation(line: 241, column: 9, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 240, column: 41)
!1048 = !DILocation(line: 242, column: 22, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 242, column: 13)
!1050 = !DILocation(line: 242, column: 30, scope: !1049)
!1051 = !DILocation(line: 242, column: 13, scope: !1047)
!1052 = !DILocation(line: 243, column: 21, scope: !1049)
!1053 = !DILocation(line: 243, column: 13, scope: !1049)
!1054 = !DILocation(line: 244, column: 5, scope: !1047)
!1055 = !DILocation(line: 245, column: 18, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !994, file: !3, line: 245, column: 9)
!1057 = !{!837, !840, i64 145}
!1058 = !DILocation(line: 245, column: 9, scope: !994)
!1059 = !DILocation(line: 246, column: 9, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 245, column: 33)
!1061 = !DILocation(line: 247, column: 22, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 247, column: 13)
!1063 = !DILocation(line: 247, column: 30, scope: !1062)
!1064 = !DILocation(line: 247, column: 13, scope: !1060)
!1065 = !DILocation(line: 248, column: 21, scope: !1062)
!1066 = !DILocation(line: 248, column: 13, scope: !1062)
!1067 = !DILocation(line: 249, column: 5, scope: !1060)
!1068 = !DILocation(line: 250, column: 5, scope: !994)
!1069 = !DILocation(line: 251, column: 18, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !994, file: !3, line: 251, column: 9)
!1071 = !DILocation(line: 251, column: 26, scope: !1070)
!1072 = !DILocation(line: 251, column: 9, scope: !994)
!1073 = !DILocation(line: 252, column: 17, scope: !1070)
!1074 = !DILocation(line: 252, column: 9, scope: !1070)
!1075 = !DILocation(line: 253, column: 5, scope: !994)
!1076 = !DILocation(line: 254, column: 18, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !994, file: !3, line: 254, column: 9)
!1078 = !DILocation(line: 254, column: 26, scope: !1077)
!1079 = !DILocation(line: 254, column: 9, scope: !994)
!1080 = !DILocation(line: 255, column: 17, scope: !1077)
!1081 = !DILocation(line: 255, column: 9, scope: !1077)
!1082 = !DILocation(line: 258, column: 18, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !994, file: !3, line: 258, column: 9)
!1084 = !DILocation(line: 258, column: 26, scope: !1083)
!1085 = !DILocation(line: 258, column: 9, scope: !994)
!1086 = !DILocation(line: 259, column: 17, scope: !1083)
!1087 = !DILocation(line: 259, column: 9, scope: !1083)
!1088 = !DILocation(line: 260, column: 5, scope: !994)
!1089 = !DILocation(line: 261, column: 5, scope: !994)
!1090 = !DILocation(line: 262, column: 18, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !994, file: !3, line: 262, column: 9)
!1092 = !DILocation(line: 262, column: 26, scope: !1091)
!1093 = !DILocation(line: 262, column: 9, scope: !994)
!1094 = !DILocation(line: 263, column: 17, scope: !1091)
!1095 = !DILocation(line: 263, column: 9, scope: !1091)
!1096 = !DILocation(line: 264, column: 30, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 264, column: 5)
!1098 = distinct !DILexicalBlock(scope: !994, file: !3, line: 264, column: 5)
!1099 = !DILocation(line: 264, column: 19, scope: !1097)
!1100 = !DILocation(line: 264, column: 5, scope: !1098)
!1101 = !DILocation(line: 265, column: 22, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 264, column: 48)
!1103 = !DILocation(line: 265, column: 33, scope: !1102)
!1104 = !{!958, !838, i64 0}
!1105 = !DILocation(line: 265, column: 9, scope: !1102)
!1106 = !DILocation(line: 264, column: 44, scope: !1097)
!1107 = distinct !{!1107, !1100, !1108, !863}
!1108 = !DILocation(line: 266, column: 5, scope: !1098)
!1109 = !DILocation(line: 268, column: 18, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !994, file: !3, line: 268, column: 9)
!1111 = !DILocation(line: 268, column: 26, scope: !1110)
!1112 = !DILocation(line: 268, column: 9, scope: !994)
!1113 = !DILocation(line: 269, column: 17, scope: !1110)
!1114 = !DILocation(line: 269, column: 9, scope: !1110)
!1115 = !DILocation(line: 272, column: 1, scope: !994)
!1116 = !DISubprogram(name: "stop_assoc_maintenance_thread", scope: !1117, file: !1117, line: 8, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1117 = !DIFile(filename: "./assoc.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d97284e3db472a02a2024ce98e65eb75")
!1118 = !DISubprogram(name: "stop_item_crawler_thread", scope: !875, file: !875, line: 33, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!128, !346}
!1121 = !DISubprogram(name: "stop_lru_maintainer_thread", scope: !873, file: !873, line: 81, type: !1122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!128}
!1124 = !DISubprogram(name: "stop_slab_maintenance_thread", scope: !869, file: !869, line: 53, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1125 = !DISubprogram(name: "logger_stop", scope: !68, file: !68, line: 204, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1126 = !DISubprogram(name: "stop_conn_timeout_thread", scope: !6, file: !6, line: 988, type: !1122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1127 = !DISubprogram(name: "conn_close_all", scope: !6, file: !6, line: 970, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1128 = !DISubprogram(name: "pthread_join", scope: !775, file: !775, line: 215, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!128, !157, !1131}
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!1132 = distinct !DISubprogram(name: "accept_new_conns", scope: !3, file: !3, line: 395, type: !1133, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1136)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!1136 = !{!1137}
!1137 = !DILocalVariable(name: "do_accept", arg: 1, scope: !1132, file: !3, line: 395, type: !1135)
!1138 = !DILocation(line: 0, scope: !1132)
!1139 = !DILocation(line: 396, column: 5, scope: !1132)
!1140 = !DILocation(line: 397, column: 5, scope: !1132)
!1141 = !DILocation(line: 398, column: 5, scope: !1132)
!1142 = !DILocation(line: 399, column: 1, scope: !1132)
!1143 = !DISubprogram(name: "do_accept_new_conns", scope: !6, file: !6, line: 916, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1144 = distinct !DISubprogram(name: "get_worker_thread", scope: !3, file: !3, line: 634, type: !1145, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1147)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!152, !128}
!1147 = !{!1148}
!1148 = !DILocalVariable(name: "id", arg: 1, scope: !1144, file: !3, line: 634, type: !128)
!1149 = !DILocation(line: 0, scope: !1144)
!1150 = !DILocation(line: 635, column: 13, scope: !1144)
!1151 = !DILocation(line: 635, column: 5, scope: !1144)
!1152 = distinct !DISubprogram(name: "dispatch_conn_new", scope: !3, file: !3, line: 717, type: !1153, scopeLine: 719, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1155)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !128, !21, !128, !128, !56, !117, !252, !51}
!1155 = !{!1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165}
!1156 = !DILocalVariable(name: "sfd", arg: 1, scope: !1152, file: !3, line: 717, type: !128)
!1157 = !DILocalVariable(name: "init_state", arg: 2, scope: !1152, file: !3, line: 717, type: !21)
!1158 = !DILocalVariable(name: "event_flags", arg: 3, scope: !1152, file: !3, line: 717, type: !128)
!1159 = !DILocalVariable(name: "read_buffer_size", arg: 4, scope: !1152, file: !3, line: 718, type: !128)
!1160 = !DILocalVariable(name: "transport", arg: 5, scope: !1152, file: !3, line: 718, type: !56)
!1161 = !DILocalVariable(name: "ssl", arg: 6, scope: !1152, file: !3, line: 718, type: !117)
!1162 = !DILocalVariable(name: "conntag", arg: 7, scope: !1152, file: !3, line: 719, type: !252)
!1163 = !DILocalVariable(name: "bproto", arg: 8, scope: !1152, file: !3, line: 719, type: !51)
!1164 = !DILocalVariable(name: "item", scope: !1152, file: !3, line: 720, type: !953)
!1165 = !DILocalVariable(name: "thread", scope: !1152, file: !3, line: 721, type: !152)
!1166 = !DILocation(line: 0, scope: !1152)
!1167 = !DILocation(line: 723, column: 19, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 723, column: 9)
!1169 = !{!837, !772, i64 320}
!1170 = !DILocation(line: 723, column: 10, scope: !1168)
!1171 = !DILocation(line: 723, column: 9, scope: !1152)
!1172 = !DILocation(line: 724, column: 18, scope: !1168)
!1173 = !DILocation(line: 724, column: 9, scope: !1168)
!1174 = !DILocation(line: 726, column: 18, scope: !1168)
!1175 = !DILocation(line: 0, scope: !1168)
!1176 = !DILocation(line: 728, column: 28, scope: !1152)
!1177 = !DILocation(line: 728, column: 12, scope: !1152)
!1178 = !DILocation(line: 729, column: 14, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 729, column: 9)
!1180 = !DILocation(line: 729, column: 9, scope: !1152)
!1181 = !DILocation(line: 730, column: 15, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 729, column: 23)
!1183 = !DILocation(line: 730, column: 9, scope: !1182)
!1184 = !DILocation(line: 732, column: 17, scope: !1182)
!1185 = !DILocation(line: 732, column: 9, scope: !1182)
!1186 = !DILocation(line: 733, column: 9, scope: !1182)
!1187 = !DILocation(line: 736, column: 17, scope: !1152)
!1188 = !DILocation(line: 736, column: 11, scope: !1152)
!1189 = !DILocation(line: 736, column: 15, scope: !1152)
!1190 = !DILocation(line: 737, column: 11, scope: !1152)
!1191 = !DILocation(line: 737, column: 22, scope: !1152)
!1192 = !{!973, !769, i64 4}
!1193 = !DILocation(line: 738, column: 11, scope: !1152)
!1194 = !DILocation(line: 738, column: 23, scope: !1152)
!1195 = !{!973, !772, i64 8}
!1196 = !DILocation(line: 739, column: 11, scope: !1152)
!1197 = !DILocation(line: 739, column: 28, scope: !1152)
!1198 = !{!973, !772, i64 12}
!1199 = !DILocation(line: 740, column: 11, scope: !1152)
!1200 = !DILocation(line: 740, column: 21, scope: !1152)
!1201 = !{!973, !769, i64 16}
!1202 = !DILocation(line: 741, column: 11, scope: !1152)
!1203 = !DILocation(line: 741, column: 16, scope: !1152)
!1204 = !DILocation(line: 742, column: 11, scope: !1152)
!1205 = !DILocation(line: 742, column: 15, scope: !1152)
!1206 = !{!973, !768, i64 32}
!1207 = !DILocation(line: 743, column: 11, scope: !1152)
!1208 = !DILocation(line: 743, column: 19, scope: !1152)
!1209 = !{!973, !838, i64 40}
!1210 = !DILocation(line: 744, column: 11, scope: !1152)
!1211 = !DILocation(line: 744, column: 18, scope: !1152)
!1212 = !{!973, !769, i64 48}
!1213 = !DILocation(line: 747, column: 5, scope: !1152)
!1214 = !DILocation(line: 748, column: 1, scope: !1152)
!1215 = distinct !DISubprogram(name: "select_thread_round_robin", scope: !3, file: !3, line: 644, type: !1216, scopeLine: 645, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1218)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!152}
!1218 = !{!1219}
!1219 = !DILocalVariable(name: "tid", scope: !1215, file: !3, line: 646, type: !128)
!1220 = !DILocation(line: 646, column: 16, scope: !1215)
!1221 = !DILocation(line: 646, column: 28, scope: !1215)
!1222 = !DILocation(line: 646, column: 44, scope: !1215)
!1223 = !DILocation(line: 646, column: 33, scope: !1215)
!1224 = !DILocation(line: 0, scope: !1215)
!1225 = !DILocation(line: 648, column: 17, scope: !1215)
!1226 = !DILocation(line: 650, column: 12, scope: !1215)
!1227 = !DILocation(line: 650, column: 20, scope: !1215)
!1228 = !DILocation(line: 650, column: 5, scope: !1215)
!1229 = distinct !DISubprogram(name: "select_thread_by_napi_id", scope: !3, file: !3, line: 670, type: !1145, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238}
!1231 = !DILocalVariable(name: "sfd", arg: 1, scope: !1229, file: !3, line: 670, type: !128)
!1232 = !DILocalVariable(name: "thread", scope: !1229, file: !3, line: 672, type: !152)
!1233 = !DILocalVariable(name: "napi_id", scope: !1229, file: !3, line: 673, type: !128)
!1234 = !DILocalVariable(name: "err", scope: !1229, file: !3, line: 673, type: !128)
!1235 = !DILocalVariable(name: "i", scope: !1229, file: !3, line: 673, type: !128)
!1236 = !DILocalVariable(name: "len", scope: !1229, file: !3, line: 674, type: !463)
!1237 = !DILocalVariable(name: "tid", scope: !1229, file: !3, line: 675, type: !128)
!1238 = !DILabel(scope: !1229, name: "select", file: !3, line: 686)
!1239 = !DILocation(line: 0, scope: !1229)
!1240 = !DILocation(line: 673, column: 5, scope: !1229)
!1241 = !DILocation(line: 674, column: 5, scope: !1229)
!1242 = !DILocation(line: 677, column: 9, scope: !1229)
!1243 = !DILocation(line: 678, column: 11, scope: !1229)
!1244 = !DILocation(line: 679, column: 14, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 679, column: 9)
!1246 = !DILocation(line: 679, column: 21, scope: !1245)
!1247 = !DILocation(line: 679, column: 25, scope: !1245)
!1248 = !DILocation(line: 679, column: 33, scope: !1245)
!1249 = !DILocation(line: 679, column: 9, scope: !1229)
!1250 = !DILocation(line: 680, column: 9, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 679, column: 40)
!1252 = !DILocation(line: 681, column: 35, scope: !1251)
!1253 = !{!1254, !838, i64 200}
!1254 = !{!"stats", !838, i64 0, !838, i64 8, !838, i64 16, !838, i64 24, !838, i64 32, !838, i64 40, !838, i64 48, !838, i64 56, !838, i64 64, !838, i64 72, !838, i64 80, !838, i64 88, !838, i64 96, !838, i64 104, !838, i64 112, !838, i64 120, !838, i64 128, !838, i64 136, !838, i64 144, !838, i64 152, !838, i64 160, !838, i64 168, !963, i64 176, !838, i64 192, !838, i64 200}
!1255 = !DILocation(line: 682, column: 9, scope: !1251)
!1256 = !DILocation(line: 683, column: 16, scope: !1251)
!1257 = !DILocation(line: 683, column: 9, scope: !1251)
!1258 = !DILocation(line: 679, column: 37, scope: !1245)
!1259 = !DILocation(line: 686, column: 1, scope: !1229)
!1260 = !DILocation(line: 687, column: 19, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 687, column: 5)
!1262 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 687, column: 5)
!1263 = !DILocation(line: 687, column: 5, scope: !1262)
!1264 = !DILocation(line: 689, column: 37, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 689, column: 14)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 687, column: 48)
!1267 = !DILocation(line: 689, column: 14, scope: !1266)
!1268 = !DILocation(line: 690, column: 32, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 689, column: 42)
!1270 = !DILocation(line: 690, column: 22, scope: !1269)
!1271 = !DILocation(line: 690, column: 30, scope: !1269)
!1272 = !{!958, !772, i64 6800}
!1273 = !DILocation(line: 691, column: 37, scope: !1269)
!1274 = !DILocation(line: 693, column: 14, scope: !1269)
!1275 = !DILocation(line: 695, column: 22, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 695, column: 14)
!1277 = !DILocation(line: 695, column: 30, scope: !1276)
!1278 = !DILocation(line: 695, column: 14, scope: !1266)
!1279 = !DILocation(line: 696, column: 20, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 695, column: 42)
!1281 = !DILocation(line: 709, column: 20, scope: !1229)
!1282 = !DILocation(line: 697, column: 14, scope: !1280)
!1283 = !DILocation(line: 687, column: 44, scope: !1261)
!1284 = distinct !{!1284, !1263, !1285, !863}
!1285 = !DILocation(line: 699, column: 5, scope: !1262)
!1286 = !DILocation(line: 702, column: 9, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 701, column: 20)
!1288 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 701, column: 9)
!1289 = !DILocation(line: 703, column: 34, scope: !1287)
!1290 = !{!1254, !838, i64 192}
!1291 = !DILocation(line: 704, column: 9, scope: !1287)
!1292 = !DILocation(line: 705, column: 9, scope: !1287)
!1293 = !DILocation(line: 706, column: 9, scope: !1287)
!1294 = !DILocation(line: 709, column: 5, scope: !1229)
!1295 = !DILocation(line: 710, column: 1, scope: !1229)
!1296 = distinct !DISubprogram(name: "cqi_new", scope: !3, file: !3, line: 317, type: !1297, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1301)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!953, !1299}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "CQ", file: !3, line: 63, baseType: !558)
!1301 = !{!1302, !1303}
!1302 = !DILocalVariable(name: "cq", arg: 1, scope: !1296, file: !3, line: 317, type: !1299)
!1303 = !DILocalVariable(name: "item", scope: !1296, file: !3, line: 318, type: !953)
!1304 = !DILocation(line: 0, scope: !1296)
!1305 = !DILocation(line: 318, column: 37, scope: !1296)
!1306 = !{!1307, !768, i64 56}
!1307 = !{!"conn_queue", !1308, i64 0, !769, i64 16, !768, i64 56}
!1308 = !{!"conn_ev_head", !768, i64 0, !768, i64 8}
!1309 = !DILocation(line: 318, column: 21, scope: !1296)
!1310 = !DILocation(line: 319, column: 14, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 319, column: 9)
!1312 = !DILocation(line: 319, column: 9, scope: !1296)
!1313 = !DILocation(line: 320, column: 9, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 319, column: 23)
!1315 = !DILocation(line: 321, column: 27, scope: !1314)
!1316 = !{!1254, !838, i64 24}
!1317 = !DILocation(line: 322, column: 9, scope: !1314)
!1318 = !DILocation(line: 323, column: 5, scope: !1314)
!1319 = !DILocation(line: 324, column: 5, scope: !1296)
!1320 = !DISubprogram(name: "close", scope: !1321, file: !1321, line: 353, type: !1322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1321 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!128, !128}
!1324 = distinct !DISubprogram(name: "notify_worker", scope: !3, file: !3, line: 340, type: !1325, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1327)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null, !152, !953}
!1327 = !{!1328, !1329, !1330}
!1328 = !DILocalVariable(name: "t", arg: 1, scope: !1324, file: !3, line: 340, type: !152)
!1329 = !DILocalVariable(name: "item", arg: 2, scope: !1324, file: !3, line: 340, type: !953)
!1330 = !DILocalVariable(name: "u", scope: !1324, file: !3, line: 343, type: !252)
!1331 = !DILocation(line: 0, scope: !1324)
!1332 = !DILocation(line: 341, column: 16, scope: !1324)
!1333 = !DILocation(line: 341, column: 5, scope: !1324)
!1334 = !DILocation(line: 343, column: 5, scope: !1324)
!1335 = !DILocation(line: 343, column: 14, scope: !1324)
!1336 = !{!838, !838, i64 0}
!1337 = !DILocation(line: 344, column: 18, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 344, column: 9)
!1339 = !{!958, !772, i64 144}
!1340 = !DILocation(line: 344, column: 9, scope: !1338)
!1341 = !DILocation(line: 344, column: 57, scope: !1338)
!1342 = !DILocation(line: 344, column: 9, scope: !1324)
!1343 = !DILocation(line: 345, column: 9, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 344, column: 78)
!1345 = !DILocation(line: 347, column: 5, scope: !1344)
!1346 = !DILocation(line: 355, column: 1, scope: !1324)
!1347 = distinct !DISubprogram(name: "redispatch_conn", scope: !3, file: !3, line: 754, type: !1348, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1350)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !336}
!1350 = !{!1351}
!1351 = !DILocalVariable(name: "c", arg: 1, scope: !1347, file: !3, line: 754, type: !336)
!1352 = !DILocation(line: 0, scope: !1347)
!1353 = !DILocation(line: 755, column: 25, scope: !1347)
!1354 = !{!1355, !768, i64 456}
!1355 = !{!"conn", !768, i64 0, !772, i64 8, !840, i64 12, !840, i64 13, !840, i64 14, !840, i64 15, !840, i64 16, !840, i64 17, !840, i64 18, !769, i64 20, !769, i64 24, !772, i64 28, !959, i64 32, !962, i64 160, !962, i64 162, !768, i64 168, !768, i64 176, !772, i64 184, !772, i64 188, !768, i64 192, !768, i64 200, !768, i64 208, !772, i64 216, !768, i64 224, !772, i64 232, !772, i64 236, !769, i64 240, !772, i64 312, !769, i64 316, !769, i64 320, !769, i64 324, !772, i64 328, !1356, i64 332, !772, i64 360, !840, i64 364, !1358, i64 368, !769, i64 392, !838, i64 416, !838, i64 424, !962, i64 432, !772, i64 436, !772, i64 440, !768, i64 448, !768, i64 456, !768, i64 464, !768, i64 472, !768, i64 480, !768, i64 488}
!1356 = !{!"sockaddr_in6", !962, i64 0, !962, i64 2, !772, i64 4, !1357, i64 8, !772, i64 24}
!1357 = !{!"in6_addr", !769, i64 0}
!1358 = !{!"", !768, i64 0, !838, i64 8, !838, i64 16}
!1359 = !DILocation(line: 755, column: 36, scope: !1347)
!1360 = !{!1355, !772, i64 8}
!1361 = !DILocation(line: 755, column: 5, scope: !1347)
!1362 = !DILocation(line: 756, column: 1, scope: !1347)
!1363 = distinct !DISubprogram(name: "timeout_conn", scope: !3, file: !3, line: 758, type: !1348, scopeLine: 758, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1364)
!1364 = !{!1365}
!1365 = !DILocalVariable(name: "c", arg: 1, scope: !1363, file: !3, line: 758, type: !336)
!1366 = !DILocation(line: 0, scope: !1363)
!1367 = !DILocation(line: 759, column: 25, scope: !1363)
!1368 = !DILocation(line: 759, column: 36, scope: !1363)
!1369 = !DILocation(line: 759, column: 5, scope: !1363)
!1370 = !DILocation(line: 760, column: 1, scope: !1363)
!1371 = distinct !DISubprogram(name: "return_io_pending", scope: !3, file: !3, line: 767, type: !327, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1372)
!1372 = !{!1373, !1374}
!1373 = !DILocalVariable(name: "io", arg: 1, scope: !1371, file: !3, line: 767, type: !329)
!1374 = !DILocalVariable(name: "item", scope: !1371, file: !3, line: 768, type: !953)
!1375 = !DILocation(line: 0, scope: !1371)
!1376 = !DILocation(line: 768, column: 33, scope: !1371)
!1377 = !{!1378, !768, i64 8}
!1378 = !{!"_io_pending_t", !772, i64 0, !768, i64 8, !768, i64 16, !768, i64 24, !769, i64 32}
!1379 = !DILocation(line: 768, column: 41, scope: !1371)
!1380 = !DILocation(line: 768, column: 21, scope: !1371)
!1381 = !DILocation(line: 769, column: 14, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 769, column: 9)
!1383 = !DILocation(line: 769, column: 9, scope: !1371)
!1384 = !DILocation(line: 774, column: 9, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 769, column: 23)
!1386 = !DILocation(line: 777, column: 5, scope: !1371)
!1387 = !DILocation(line: 777, column: 11, scope: !1371)
!1388 = !DILocation(line: 777, column: 16, scope: !1371)
!1389 = !DILocation(line: 778, column: 11, scope: !1371)
!1390 = !DILocation(line: 778, column: 14, scope: !1371)
!1391 = !{!973, !768, i64 56}
!1392 = !DILocation(line: 780, column: 23, scope: !1371)
!1393 = !DILocation(line: 780, column: 5, scope: !1371)
!1394 = !DILocation(line: 781, column: 1, scope: !1371)
!1395 = distinct !DISubprogram(name: "sidethread_conn_close", scope: !3, file: !3, line: 784, type: !1348, scopeLine: 784, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1396)
!1396 = !{!1397}
!1397 = !DILocalVariable(name: "c", arg: 1, scope: !1395, file: !3, line: 784, type: !336)
!1398 = !DILocation(line: 0, scope: !1395)
!1399 = !DILocation(line: 785, column: 18, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 785, column: 9)
!1401 = !DILocation(line: 785, column: 26, scope: !1400)
!1402 = !DILocation(line: 785, column: 9, scope: !1395)
!1403 = !DILocation(line: 786, column: 17, scope: !1400)
!1404 = !DILocation(line: 786, column: 74, scope: !1400)
!1405 = !DILocation(line: 786, column: 9, scope: !1400)
!1406 = !DILocation(line: 788, column: 8, scope: !1395)
!1407 = !DILocation(line: 788, column: 14, scope: !1395)
!1408 = !{!1355, !769, i64 20}
!1409 = !DILocation(line: 790, column: 5, scope: !1395)
!1410 = !DILocation(line: 791, column: 5, scope: !1395)
!1411 = distinct !DISubprogram(name: "item_alloc", scope: !3, file: !3, line: 799, type: !1412, scopeLine: 799, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1414)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!390, !151, !421, !128, !356, !128}
!1414 = !{!1415, !1416, !1417, !1418, !1419, !1420}
!1415 = !DILocalVariable(name: "key", arg: 1, scope: !1411, file: !3, line: 799, type: !151)
!1416 = !DILocalVariable(name: "nkey", arg: 2, scope: !1411, file: !3, line: 799, type: !421)
!1417 = !DILocalVariable(name: "flags", arg: 3, scope: !1411, file: !3, line: 799, type: !128)
!1418 = !DILocalVariable(name: "exptime", arg: 4, scope: !1411, file: !3, line: 799, type: !356)
!1419 = !DILocalVariable(name: "nbytes", arg: 5, scope: !1411, file: !3, line: 799, type: !128)
!1420 = !DILocalVariable(name: "it", scope: !1411, file: !3, line: 800, type: !390)
!1421 = !DILocation(line: 0, scope: !1411)
!1422 = !DILocation(line: 802, column: 10, scope: !1411)
!1423 = !DILocation(line: 803, column: 5, scope: !1411)
!1424 = !DISubprogram(name: "do_item_alloc", scope: !873, file: !873, line: 14, type: !1425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!390, !151, !1427, !1428, !1429, !1430}
!1427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!1428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!1430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!1431 = distinct !DISubprogram(name: "item_get", scope: !3, file: !3, line: 810, type: !1432, scopeLine: 810, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1434)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!390, !943, !1427, !336, !1135}
!1434 = !{!1435, !1436, !1437, !1438, !1439, !1440}
!1435 = !DILocalVariable(name: "key", arg: 1, scope: !1431, file: !3, line: 810, type: !943)
!1436 = !DILocalVariable(name: "nkey", arg: 2, scope: !1431, file: !3, line: 810, type: !1427)
!1437 = !DILocalVariable(name: "c", arg: 3, scope: !1431, file: !3, line: 810, type: !336)
!1438 = !DILocalVariable(name: "do_update", arg: 4, scope: !1431, file: !3, line: 810, type: !1135)
!1439 = !DILocalVariable(name: "it", scope: !1431, file: !3, line: 811, type: !390)
!1440 = !DILocalVariable(name: "hv", scope: !1431, file: !3, line: 812, type: !443)
!1441 = !DILocation(line: 0, scope: !1431)
!1442 = !DILocation(line: 813, column: 10, scope: !1431)
!1443 = !DILocation(line: 814, column: 5, scope: !1431)
!1444 = !DILocation(line: 815, column: 10, scope: !1431)
!1445 = !DILocation(line: 816, column: 5, scope: !1431)
!1446 = !DILocation(line: 817, column: 5, scope: !1431)
!1447 = !DISubprogram(name: "do_item_get", scope: !873, file: !873, line: 74, type: !1448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!390, !943, !1427, !1450, !336, !1135}
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!1451 = distinct !DISubprogram(name: "item_get_locked", scope: !3, file: !3, line: 823, type: !1452, scopeLine: 823, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1455)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!390, !943, !1427, !336, !1135, !1454}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!1455 = !{!1456, !1457, !1458, !1459, !1460, !1461}
!1456 = !DILocalVariable(name: "key", arg: 1, scope: !1451, file: !3, line: 823, type: !943)
!1457 = !DILocalVariable(name: "nkey", arg: 2, scope: !1451, file: !3, line: 823, type: !1427)
!1458 = !DILocalVariable(name: "c", arg: 3, scope: !1451, file: !3, line: 823, type: !336)
!1459 = !DILocalVariable(name: "do_update", arg: 4, scope: !1451, file: !3, line: 823, type: !1135)
!1460 = !DILocalVariable(name: "hv", arg: 5, scope: !1451, file: !3, line: 823, type: !1454)
!1461 = !DILocalVariable(name: "it", scope: !1451, file: !3, line: 824, type: !390)
!1462 = !DILocation(line: 0, scope: !1451)
!1463 = !DILocation(line: 825, column: 11, scope: !1451)
!1464 = !DILocation(line: 825, column: 9, scope: !1451)
!1465 = !DILocation(line: 826, column: 5, scope: !1451)
!1466 = !DILocation(line: 827, column: 33, scope: !1451)
!1467 = !DILocation(line: 827, column: 10, scope: !1451)
!1468 = !DILocation(line: 828, column: 5, scope: !1451)
!1469 = distinct !DISubprogram(name: "item_touch", scope: !3, file: !3, line: 831, type: !1470, scopeLine: 831, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1472)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!390, !943, !421, !443, !336}
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1478}
!1473 = !DILocalVariable(name: "key", arg: 1, scope: !1469, file: !3, line: 831, type: !943)
!1474 = !DILocalVariable(name: "nkey", arg: 2, scope: !1469, file: !3, line: 831, type: !421)
!1475 = !DILocalVariable(name: "exptime", arg: 3, scope: !1469, file: !3, line: 831, type: !443)
!1476 = !DILocalVariable(name: "c", arg: 4, scope: !1469, file: !3, line: 831, type: !336)
!1477 = !DILocalVariable(name: "it", scope: !1469, file: !3, line: 832, type: !390)
!1478 = !DILocalVariable(name: "hv", scope: !1469, file: !3, line: 833, type: !443)
!1479 = !DILocation(line: 0, scope: !1469)
!1480 = !DILocation(line: 834, column: 10, scope: !1469)
!1481 = !DILocation(line: 835, column: 5, scope: !1469)
!1482 = !DILocation(line: 836, column: 10, scope: !1469)
!1483 = !DILocation(line: 837, column: 5, scope: !1469)
!1484 = !DILocation(line: 838, column: 5, scope: !1469)
!1485 = !DISubprogram(name: "do_item_touch", scope: !873, file: !873, line: 75, type: !1486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!390, !943, !1427, !443, !1450, !336}
!1488 = distinct !DISubprogram(name: "item_link", scope: !3, file: !3, line: 844, type: !1489, scopeLine: 844, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!128, !390}
!1491 = !{!1492, !1493, !1494}
!1492 = !DILocalVariable(name: "item", arg: 1, scope: !1488, file: !3, line: 844, type: !390)
!1493 = !DILocalVariable(name: "ret", scope: !1488, file: !3, line: 845, type: !128)
!1494 = !DILocalVariable(name: "hv", scope: !1488, file: !3, line: 846, type: !443)
!1495 = !DILocation(line: 0, scope: !1488)
!1496 = !DILocation(line: 848, column: 10, scope: !1488)
!1497 = !DILocation(line: 848, column: 15, scope: !1488)
!1498 = !{!962, !962, i64 0}
!1499 = !DILocation(line: 848, column: 37, scope: !1488)
!1500 = !{!769, !769, i64 0}
!1501 = !DILocation(line: 848, column: 31, scope: !1488)
!1502 = !DILocation(line: 849, column: 5, scope: !1488)
!1503 = !DILocation(line: 850, column: 11, scope: !1488)
!1504 = !DILocation(line: 851, column: 5, scope: !1488)
!1505 = !DILocation(line: 852, column: 5, scope: !1488)
!1506 = !DISubprogram(name: "do_item_link", scope: !873, file: !873, line: 20, type: !1507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!128, !390, !1450}
!1509 = distinct !DISubprogram(name: "item_remove", scope: !3, file: !3, line: 859, type: !1510, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1512)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{null, !390}
!1512 = !{!1513, !1514}
!1513 = !DILocalVariable(name: "item", arg: 1, scope: !1509, file: !3, line: 859, type: !390)
!1514 = !DILocalVariable(name: "hv", scope: !1509, file: !3, line: 860, type: !443)
!1515 = !DILocation(line: 0, scope: !1509)
!1516 = !DILocation(line: 861, column: 10, scope: !1509)
!1517 = !DILocation(line: 861, column: 15, scope: !1509)
!1518 = !DILocation(line: 861, column: 37, scope: !1509)
!1519 = !DILocation(line: 861, column: 31, scope: !1509)
!1520 = !DILocation(line: 863, column: 5, scope: !1509)
!1521 = !DILocation(line: 864, column: 5, scope: !1509)
!1522 = !DILocation(line: 865, column: 5, scope: !1509)
!1523 = !DILocation(line: 866, column: 1, scope: !1509)
!1524 = !DISubprogram(name: "do_item_remove", scope: !873, file: !873, line: 23, type: !1510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1525 = distinct !DISubprogram(name: "item_replace", scope: !3, file: !3, line: 873, type: !1526, scopeLine: 873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1528)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!128, !390, !390, !1450}
!1528 = !{!1529, !1530, !1531}
!1529 = !DILocalVariable(name: "old_it", arg: 1, scope: !1525, file: !3, line: 873, type: !390)
!1530 = !DILocalVariable(name: "new_it", arg: 2, scope: !1525, file: !3, line: 873, type: !390)
!1531 = !DILocalVariable(name: "hv", arg: 3, scope: !1525, file: !3, line: 873, type: !1450)
!1532 = !DILocation(line: 0, scope: !1525)
!1533 = !DILocation(line: 874, column: 12, scope: !1525)
!1534 = !DILocation(line: 874, column: 5, scope: !1525)
!1535 = !DISubprogram(name: "do_item_replace", scope: !873, file: !873, line: 26, type: !1526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1536 = distinct !DISubprogram(name: "item_unlink", scope: !3, file: !3, line: 880, type: !1510, scopeLine: 880, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1537)
!1537 = !{!1538, !1539}
!1538 = !DILocalVariable(name: "item", arg: 1, scope: !1536, file: !3, line: 880, type: !390)
!1539 = !DILocalVariable(name: "hv", scope: !1536, file: !3, line: 881, type: !443)
!1540 = !DILocation(line: 0, scope: !1536)
!1541 = !DILocation(line: 882, column: 10, scope: !1536)
!1542 = !DILocation(line: 882, column: 15, scope: !1536)
!1543 = !DILocation(line: 882, column: 37, scope: !1536)
!1544 = !DILocation(line: 882, column: 31, scope: !1536)
!1545 = !DILocation(line: 883, column: 5, scope: !1536)
!1546 = !DILocation(line: 884, column: 5, scope: !1536)
!1547 = !DILocation(line: 885, column: 5, scope: !1536)
!1548 = !DILocation(line: 886, column: 1, scope: !1536)
!1549 = !DISubprogram(name: "do_item_unlink", scope: !873, file: !873, line: 21, type: !1550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{null, !390, !1450}
!1552 = distinct !DISubprogram(name: "add_delta", scope: !3, file: !3, line: 891, type: !1553, scopeLine: 894, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1560)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!85, !336, !943, !1427, !346, !1555, !151, !1559}
!1555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1556)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1557, line: 27, baseType: !1558)
!1557 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !180, line: 44, baseType: !150)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!1560 = !{!1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569}
!1561 = !DILocalVariable(name: "c", arg: 1, scope: !1552, file: !3, line: 891, type: !336)
!1562 = !DILocalVariable(name: "key", arg: 2, scope: !1552, file: !3, line: 891, type: !943)
!1563 = !DILocalVariable(name: "nkey", arg: 3, scope: !1552, file: !3, line: 892, type: !1427)
!1564 = !DILocalVariable(name: "incr", arg: 4, scope: !1552, file: !3, line: 892, type: !346)
!1565 = !DILocalVariable(name: "delta", arg: 5, scope: !1552, file: !3, line: 893, type: !1555)
!1566 = !DILocalVariable(name: "buf", arg: 6, scope: !1552, file: !3, line: 893, type: !151)
!1567 = !DILocalVariable(name: "cas", arg: 7, scope: !1552, file: !3, line: 894, type: !1559)
!1568 = !DILocalVariable(name: "ret", scope: !1552, file: !3, line: 895, type: !85)
!1569 = !DILocalVariable(name: "hv", scope: !1552, file: !3, line: 896, type: !443)
!1570 = !DILocation(line: 0, scope: !1552)
!1571 = !DILocation(line: 898, column: 10, scope: !1552)
!1572 = !DILocation(line: 899, column: 5, scope: !1552)
!1573 = !DILocation(line: 900, column: 11, scope: !1552)
!1574 = !DILocation(line: 901, column: 5, scope: !1552)
!1575 = !DILocation(line: 902, column: 5, scope: !1552)
!1576 = !DISubprogram(name: "do_add_delta", scope: !6, file: !6, line: 917, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!85, !336, !943, !1427, !1135, !1555, !151, !1559, !1450, !1579}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1580 = distinct !DISubprogram(name: "store_item", scope: !3, file: !3, line: 908, type: !1581, scopeLine: 908, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1583)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!92, !390, !128, !336}
!1583 = !{!1584, !1585, !1586, !1587, !1588}
!1584 = !DILocalVariable(name: "item", arg: 1, scope: !1580, file: !3, line: 908, type: !390)
!1585 = !DILocalVariable(name: "comm", arg: 2, scope: !1580, file: !3, line: 908, type: !128)
!1586 = !DILocalVariable(name: "c", arg: 3, scope: !1580, file: !3, line: 908, type: !336)
!1587 = !DILocalVariable(name: "ret", scope: !1580, file: !3, line: 909, type: !92)
!1588 = !DILocalVariable(name: "hv", scope: !1580, file: !3, line: 910, type: !443)
!1589 = !DILocation(line: 0, scope: !1580)
!1590 = !DILocation(line: 912, column: 10, scope: !1580)
!1591 = !DILocation(line: 912, column: 15, scope: !1580)
!1592 = !DILocation(line: 912, column: 37, scope: !1580)
!1593 = !DILocation(line: 912, column: 31, scope: !1580)
!1594 = !DILocation(line: 913, column: 5, scope: !1580)
!1595 = !DILocation(line: 914, column: 11, scope: !1580)
!1596 = !DILocation(line: 915, column: 5, scope: !1580)
!1597 = !DILocation(line: 916, column: 5, scope: !1580)
!1598 = !DISubprogram(name: "do_store_item", scope: !6, file: !6, line: 922, type: !1599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!92, !390, !128, !336, !1450}
!1601 = distinct !DISubprogram(name: "STATS_LOCK", scope: !3, file: !3, line: 921, type: !870, scopeLine: 921, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !778)
!1602 = !DILocation(line: 922, column: 5, scope: !1601)
!1603 = !DILocation(line: 923, column: 1, scope: !1601)
!1604 = distinct !DISubprogram(name: "STATS_UNLOCK", scope: !3, file: !3, line: 925, type: !870, scopeLine: 925, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !778)
!1605 = !DILocation(line: 926, column: 5, scope: !1604)
!1606 = !DILocation(line: 927, column: 1, scope: !1604)
!1607 = distinct !DISubprogram(name: "threadlocal_stats_reset", scope: !3, file: !3, line: 929, type: !870, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1608)
!1608 = !{!1609}
!1609 = !DILocalVariable(name: "ii", scope: !1607, file: !3, line: 930, type: !128)
!1610 = !DILocation(line: 0, scope: !1607)
!1611 = !DILocation(line: 931, column: 32, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 931, column: 5)
!1613 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 931, column: 5)
!1614 = !DILocation(line: 931, column: 21, scope: !1612)
!1615 = !DILocation(line: 931, column: 5, scope: !1613)
!1616 = !DILocation(line: 932, column: 29, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 931, column: 51)
!1618 = !DILocation(line: 932, column: 47, scope: !1617)
!1619 = !DILocation(line: 932, column: 9, scope: !1617)
!1620 = !DILocation(line: 934, column: 9, scope: !1617)
!1621 = !DILocation(line: 936, column: 9, scope: !1617)
!1622 = !DILocation(line: 943, column: 35, scope: !1617)
!1623 = !DILocation(line: 943, column: 16, scope: !1617)
!1624 = !DILocation(line: 943, column: 9, scope: !1617)
!1625 = !DILocation(line: 945, column: 17, scope: !1617)
!1626 = !DILocation(line: 945, column: 35, scope: !1617)
!1627 = !DILocation(line: 945, column: 16, scope: !1617)
!1628 = !DILocation(line: 945, column: 9, scope: !1617)
!1629 = !DILocation(line: 948, column: 31, scope: !1617)
!1630 = !DILocation(line: 948, column: 49, scope: !1617)
!1631 = !DILocation(line: 948, column: 9, scope: !1617)
!1632 = !DILocation(line: 931, column: 45, scope: !1612)
!1633 = distinct !{!1633, !1615, !1634, !863}
!1634 = !DILocation(line: 949, column: 5, scope: !1613)
!1635 = !DILocation(line: 950, column: 1, scope: !1607)
!1636 = !DISubprogram(name: "memset", scope: !1637, file: !1637, line: 61, type: !1638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1637 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!117, !117, !128, !421}
!1640 = distinct !DISubprogram(name: "threadlocal_stats_aggregate", scope: !3, file: !3, line: 952, type: !1641, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1644)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !1643}
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!1644 = !{!1645, !1646, !1647}
!1645 = !DILocalVariable(name: "stats", arg: 1, scope: !1640, file: !3, line: 952, type: !1643)
!1646 = !DILocalVariable(name: "ii", scope: !1640, file: !3, line: 953, type: !128)
!1647 = !DILocalVariable(name: "sid", scope: !1640, file: !3, line: 953, type: !128)
!1648 = !DILocation(line: 0, scope: !1640)
!1649 = !DILocation(line: 957, column: 12, scope: !1640)
!1650 = !DILocation(line: 957, column: 5, scope: !1640)
!1651 = !DILocation(line: 959, column: 32, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 959, column: 5)
!1653 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 959, column: 5)
!1654 = !DILocation(line: 959, column: 21, scope: !1652)
!1655 = !DILocation(line: 959, column: 5, scope: !1653)
!1656 = !DILocation(line: 960, column: 29, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 959, column: 51)
!1658 = !DILocation(line: 960, column: 47, scope: !1657)
!1659 = !DILocation(line: 960, column: 9, scope: !1657)
!1660 = !DILocation(line: 962, column: 9, scope: !1657)
!1661 = !DILocation(line: 964, column: 9, scope: !1657)
!1662 = !DILocation(line: 971, column: 9, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 971, column: 9)
!1664 = !DILocation(line: 974, column: 13, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 971, column: 64)
!1666 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 971, column: 9)
!1667 = !DILocation(line: 971, column: 60, scope: !1666)
!1668 = !DILocation(line: 971, column: 27, scope: !1666)
!1669 = distinct !{!1669, !1662, !1670, !863}
!1670 = !DILocation(line: 976, column: 9, scope: !1663)
!1671 = !DILocation(line: 980, column: 17, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 978, column: 51)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 978, column: 9)
!1674 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 978, column: 9)
!1675 = !DILocation(line: 979, column: 13, scope: !1672)
!1676 = !DILocation(line: 979, column: 34, scope: !1672)
!1677 = !DILocation(line: 982, column: 17, scope: !1672)
!1678 = !DILocation(line: 981, column: 31, scope: !1672)
!1679 = !DILocation(line: 981, column: 47, scope: !1672)
!1680 = !DILocation(line: 981, column: 56, scope: !1672)
!1681 = !{!1682, !838, i64 8}
!1682 = !{!"slab_stats", !838, i64 0, !838, i64 8, !838, i64 16, !838, i64 24, !838, i64 32, !838, i64 40, !838, i64 48, !838, i64 56}
!1683 = !DILocation(line: 978, column: 47, scope: !1673)
!1684 = !DILocation(line: 978, column: 27, scope: !1673)
!1685 = !DILocation(line: 978, column: 9, scope: !1674)
!1686 = distinct !{!1686, !1685, !1687, !863}
!1687 = !DILocation(line: 983, column: 9, scope: !1674)
!1688 = !DILocation(line: 985, column: 46, scope: !1657)
!1689 = !{!958, !768, i64 6752}
!1690 = !DILocation(line: 985, column: 58, scope: !1657)
!1691 = !DILocation(line: 985, column: 34, scope: !1657)
!1692 = !DILocation(line: 985, column: 31, scope: !1657)
!1693 = !{!964, !838, i64 6424}
!1694 = !DILocation(line: 986, column: 64, scope: !1657)
!1695 = !DILocation(line: 986, column: 34, scope: !1657)
!1696 = !DILocation(line: 986, column: 31, scope: !1657)
!1697 = !DILocation(line: 988, column: 49, scope: !1657)
!1698 = !DILocation(line: 988, column: 9, scope: !1657)
!1699 = !DILocation(line: 959, column: 45, scope: !1652)
!1700 = distinct !{!1700, !1655, !1701, !863}
!1701 = !DILocation(line: 989, column: 5, scope: !1653)
!1702 = !DILocation(line: 990, column: 1, scope: !1640)
!1703 = distinct !DISubprogram(name: "slab_stats_aggregate", scope: !3, file: !3, line: 992, type: !1704, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1707)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{null, !1643, !1706}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!1707 = !{!1708, !1709, !1710}
!1708 = !DILocalVariable(name: "stats", arg: 1, scope: !1703, file: !3, line: 992, type: !1643)
!1709 = !DILocalVariable(name: "out", arg: 2, scope: !1703, file: !3, line: 992, type: !1706)
!1710 = !DILocalVariable(name: "sid", scope: !1703, file: !3, line: 993, type: !128)
!1711 = !DILocation(line: 0, scope: !1703)
!1712 = !DILocation(line: 995, column: 12, scope: !1703)
!1713 = !DILocation(line: 995, column: 5, scope: !1703)
!1714 = !DILocation(line: 999, column: 9, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 997, column: 60)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 997, column: 5)
!1717 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 997, column: 5)
!1718 = !DILocation(line: 997, column: 5, scope: !1717)
!1719 = !DILocation(line: 997, column: 56, scope: !1716)
!1720 = !DILocation(line: 997, column: 23, scope: !1716)
!1721 = distinct !{!1721, !1718, !1722, !863}
!1722 = !DILocation(line: 1001, column: 5, scope: !1717)
!1723 = !DILocation(line: 1002, column: 1, scope: !1703)
!1724 = distinct !DISubprogram(name: "memcached_thread_init", scope: !3, file: !3, line: 1009, type: !1725, scopeLine: 1009, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1727)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{null, !128, !117}
!1727 = !{!1728, !1729, !1730, !1731}
!1728 = !DILocalVariable(name: "nthreads", arg: 1, scope: !1724, file: !3, line: 1009, type: !128)
!1729 = !DILocalVariable(name: "arg", arg: 2, scope: !1724, file: !3, line: 1009, type: !117)
!1730 = !DILocalVariable(name: "i", scope: !1724, file: !3, line: 1010, type: !128)
!1731 = !DILocalVariable(name: "power", scope: !1724, file: !3, line: 1011, type: !128)
!1732 = !DILocation(line: 0, scope: !1724)
!1733 = !DILocation(line: 1013, column: 5, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 1013, column: 5)
!1735 = !DILocation(line: 1014, column: 29, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 1013, column: 41)
!1737 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 1013, column: 5)
!1738 = !DILocation(line: 1014, column: 9, scope: !1736)
!1739 = !DILocation(line: 1013, column: 37, scope: !1737)
!1740 = !DILocation(line: 1013, column: 19, scope: !1737)
!1741 = distinct !{!1741, !1733, !1742, !863}
!1742 = !DILocation(line: 1015, column: 5, scope: !1734)
!1743 = !DILocation(line: 1016, column: 5, scope: !1724)
!1744 = !DILocation(line: 1018, column: 5, scope: !1724)
!1745 = !DILocation(line: 1019, column: 5, scope: !1724)
!1746 = !DILocation(line: 1022, column: 18, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 1022, column: 9)
!1748 = !DILocation(line: 1022, column: 9, scope: !1724)
!1749 = !DILocation(line: 1023, column: 15, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 1022, column: 23)
!1751 = !DILocation(line: 1024, column: 5, scope: !1750)
!1752 = !DILocation(line: 1024, column: 25, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 1024, column: 16)
!1754 = !DILocation(line: 1024, column: 16, scope: !1747)
!1755 = !DILocation(line: 1025, column: 15, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 1024, column: 30)
!1757 = !DILocation(line: 1026, column: 5, scope: !1756)
!1758 = !DILocation(line: 1026, column: 25, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 1026, column: 16)
!1760 = !DILocation(line: 1026, column: 16, scope: !1753)
!1761 = !DILocation(line: 1027, column: 15, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 1026, column: 30)
!1763 = !DILocation(line: 1028, column: 5, scope: !1762)
!1764 = !DILocation(line: 1028, column: 25, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 1028, column: 16)
!1766 = !DILocation(line: 1028, column: 16, scope: !1759)
!1767 = !DILocation(line: 1029, column: 15, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 1028, column: 32)
!1769 = !DILocation(line: 1030, column: 5, scope: !1768)
!1770 = !DILocation(line: 1030, column: 25, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 1030, column: 16)
!1772 = !DILocation(line: 1030, column: 16, scope: !1765)
!1773 = !DILocation(line: 1031, column: 15, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 1030, column: 32)
!1775 = !DILocation(line: 1032, column: 5, scope: !1774)
!1776 = !DILocation(line: 1034, column: 15, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 1032, column: 12)
!1778 = !DILocation(line: 0, scope: !1747)
!1779 = !DILocation(line: 1037, column: 18, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 1037, column: 9)
!1781 = !DILocation(line: 1037, column: 15, scope: !1780)
!1782 = !DILocation(line: 1037, column: 9, scope: !1724)
!1783 = !DILocation(line: 1038, column: 17, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 1037, column: 29)
!1785 = !DILocation(line: 1038, column: 9, scope: !1784)
!1786 = !DILocation(line: 1039, column: 17, scope: !1784)
!1787 = !DILocation(line: 1039, column: 9, scope: !1784)
!1788 = !DILocation(line: 1040, column: 17, scope: !1784)
!1789 = !DILocation(line: 1040, column: 9, scope: !1784)
!1790 = !DILocation(line: 1041, column: 9, scope: !1784)
!1791 = !DILocation(line: 1044, column: 23, scope: !1724)
!1792 = !DILocation(line: 1044, column: 21, scope: !1724)
!1793 = !DILocation(line: 1045, column: 25, scope: !1724)
!1794 = !DILocation(line: 1047, column: 25, scope: !1724)
!1795 = !DILocation(line: 1047, column: 18, scope: !1724)
!1796 = !DILocation(line: 1047, column: 16, scope: !1724)
!1797 = !DILocation(line: 1048, column: 11, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 1048, column: 9)
!1799 = !DILocation(line: 1048, column: 9, scope: !1724)
!1800 = !DILocation(line: 1052, column: 21, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 1052, column: 5)
!1802 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 1052, column: 5)
!1803 = !DILocation(line: 1052, column: 19, scope: !1801)
!1804 = !DILocation(line: 1052, column: 5, scope: !1802)
!1805 = !DILocation(line: 1053, column: 9, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 1052, column: 43)
!1807 = !DILocation(line: 1052, column: 39, scope: !1801)
!1808 = distinct !{!1808, !1804, !1809, !863}
!1809 = !DILocation(line: 1054, column: 5, scope: !1802)
!1810 = !DILocation(line: 1049, column: 9, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 1048, column: 23)
!1812 = !DILocation(line: 1050, column: 9, scope: !1811)
!1813 = !DILocation(line: 1053, column: 29, scope: !1806)
!1814 = !DILocation(line: 1056, column: 22, scope: !1724)
!1815 = !DILocation(line: 1056, column: 15, scope: !1724)
!1816 = !DILocation(line: 1056, column: 13, scope: !1724)
!1817 = !DILocation(line: 1057, column: 11, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 1057, column: 9)
!1819 = !DILocation(line: 1057, column: 9, scope: !1724)
!1820 = !DILocation(line: 1062, column: 19, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 1062, column: 5)
!1822 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 1062, column: 5)
!1823 = !DILocation(line: 1062, column: 5, scope: !1822)
!1824 = !DILocation(line: 1058, column: 9, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 1057, column: 20)
!1826 = !DILocation(line: 1059, column: 9, scope: !1825)
!1827 = !DILocation(line: 1088, column: 5, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 1088, column: 5)
!1829 = !DILocation(line: 1088, column: 19, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 1088, column: 5)
!1831 = !DILocation(line: 1064, column: 38, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 1062, column: 36)
!1833 = !DILocation(line: 1064, column: 9, scope: !1832)
!1834 = !DILocation(line: 1064, column: 20, scope: !1832)
!1835 = !DILocation(line: 1064, column: 36, scope: !1832)
!1836 = !DILocation(line: 1065, column: 40, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 1065, column: 13)
!1838 = !DILocation(line: 1065, column: 13, scope: !1832)
!1839 = !DILocation(line: 1066, column: 13, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 1065, column: 47)
!1841 = !DILocation(line: 1067, column: 13, scope: !1840)
!1842 = !DILocation(line: 1080, column: 20, scope: !1832)
!1843 = !DILocation(line: 1080, column: 28, scope: !1832)
!1844 = !{!958, !768, i64 6776}
!1845 = !DILocation(line: 1082, column: 23, scope: !1832)
!1846 = !DILocation(line: 1082, column: 9, scope: !1832)
!1847 = !DILocation(line: 1084, column: 34, scope: !1832)
!1848 = !{!1849, !772, i64 36}
!1849 = !{!"stats_state", !838, i64 0, !838, i64 8, !838, i64 16, !838, i64 24, !772, i64 32, !772, i64 36, !772, i64 40, !772, i64 44, !840, i64 48, !840, i64 49, !840, i64 50, !840, i64 51}
!1850 = !DILocation(line: 1062, column: 32, scope: !1821)
!1851 = distinct !{!1851, !1823, !1852, !863}
!1852 = !DILocation(line: 1085, column: 5, scope: !1822)
!1853 = !DILocation(line: 1089, column: 41, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 1088, column: 36)
!1855 = !DILocation(line: 1089, column: 40, scope: !1854)
!1856 = !DILocation(line: 1089, column: 9, scope: !1854)
!1857 = !DILocation(line: 1088, column: 32, scope: !1830)
!1858 = distinct !{!1858, !1827, !1859, !863}
!1859 = !DILocation(line: 1090, column: 5, scope: !1828)
!1860 = !DILocation(line: 1093, column: 5, scope: !1724)
!1861 = !DILocation(line: 1094, column: 5, scope: !1724)
!1862 = !DILocation(line: 1095, column: 5, scope: !1724)
!1863 = !DILocation(line: 1096, column: 1, scope: !1724)
!1864 = !DISubprogram(name: "pthread_mutex_init", scope: !775, file: !775, line: 725, type: !1865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!128, !118, !1867}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1869)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !120, line: 36, baseType: !1870)
!1870 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !120, line: 32, size: 32, elements: !1871)
!1871 = !{!1872, !1874}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1870, file: !120, line: 34, baseType: !1873, size: 32)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 32, elements: !423)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1870, file: !120, line: 35, baseType: !128, size: 32)
!1875 = !DISubprogram(name: "pthread_cond_init", scope: !775, file: !775, line: 965, type: !1876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!128, !1878, !1880}
!1878 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1879)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1881)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1883)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_condattr_t", file: !120, line: 45, baseType: !1884)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !120, line: 41, size: 32, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1884, file: !120, line: 43, baseType: !1873, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1884, file: !120, line: 44, baseType: !128, size: 32)
!1888 = !DISubprogram(name: "exit", scope: !1889, file: !1889, line: 617, type: !981, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1889 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!1890 = !DISubprogram(name: "calloc", scope: !1889, file: !1889, line: 542, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!117, !421, !421}
!1893 = !DISubprogram(name: "perror", scope: !885, file: !885, line: 775, type: !1894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !943}
!1896 = !DISubprogram(name: "eventfd", scope: !1897, file: !1897, line: 34, type: !1898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1897 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/eventfd.h", directory: "", checksumkind: CSK_MD5, checksum: "ae037f7df3aa60262ec56e2c16eeb121")
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!128, !7, !128}
!1900 = distinct !DISubprogram(name: "setup_thread", scope: !3, file: !3, line: 405, type: !1901, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1903)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{null, !152}
!1903 = !{!1904, !1905, !1908}
!1904 = !DILocalVariable(name: "me", arg: 1, scope: !1900, file: !3, line: 405, type: !152)
!1905 = !DILocalVariable(name: "ev_config", scope: !1900, file: !3, line: 407, type: !1906)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_config", file: !107, line: 295, flags: DIFlagFwdDecl)
!1908 = !DILocalVariable(name: "limit", scope: !1909, file: !3, line: 456, type: !128)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 455, column: 38)
!1910 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 455, column: 9)
!1911 = !DILocation(line: 0, scope: !1900)
!1912 = !DILocation(line: 408, column: 17, scope: !1900)
!1913 = !DILocation(line: 409, column: 5, scope: !1900)
!1914 = !DILocation(line: 410, column: 16, scope: !1900)
!1915 = !DILocation(line: 410, column: 9, scope: !1900)
!1916 = !DILocation(line: 410, column: 14, scope: !1900)
!1917 = !{!958, !768, i64 8}
!1918 = !DILocation(line: 411, column: 5, scope: !1900)
!1919 = !DILocation(line: 416, column: 15, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 416, column: 9)
!1921 = !DILocation(line: 416, column: 11, scope: !1920)
!1922 = !DILocation(line: 416, column: 9, scope: !1900)
!1923 = !DILocation(line: 417, column: 17, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 416, column: 21)
!1925 = !DILocation(line: 417, column: 9, scope: !1924)
!1926 = !DILocation(line: 418, column: 9, scope: !1924)
!1927 = !DILocation(line: 423, column: 20, scope: !1900)
!1928 = !DILocation(line: 423, column: 38, scope: !1900)
!1929 = !DILocation(line: 424, column: 62, scope: !1900)
!1930 = !DILocation(line: 423, column: 5, scope: !1900)
!1931 = !DILocation(line: 429, column: 24, scope: !1900)
!1932 = !DILocation(line: 429, column: 5, scope: !1900)
!1933 = !DILocation(line: 431, column: 9, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 431, column: 9)
!1935 = !DILocation(line: 431, column: 41, scope: !1934)
!1936 = !DILocation(line: 431, column: 9, scope: !1900)
!1937 = !DILocation(line: 432, column: 17, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 431, column: 48)
!1939 = !DILocation(line: 432, column: 9, scope: !1938)
!1940 = !DILocation(line: 433, column: 9, scope: !1938)
!1941 = !DILocation(line: 436, column: 20, scope: !1900)
!1942 = !DILocation(line: 436, column: 9, scope: !1900)
!1943 = !DILocation(line: 436, column: 18, scope: !1900)
!1944 = !DILocation(line: 437, column: 22, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 437, column: 9)
!1946 = !DILocation(line: 437, column: 9, scope: !1900)
!1947 = !DILocation(line: 438, column: 9, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 437, column: 31)
!1949 = !DILocation(line: 439, column: 9, scope: !1948)
!1950 = !DILocation(line: 441, column: 5, scope: !1900)
!1951 = !DILocation(line: 443, column: 39, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 443, column: 9)
!1953 = !DILocation(line: 443, column: 9, scope: !1952)
!1954 = !DILocation(line: 443, column: 52, scope: !1952)
!1955 = !DILocation(line: 443, column: 9, scope: !1900)
!1956 = !DILocation(line: 444, column: 9, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 443, column: 58)
!1958 = !DILocation(line: 445, column: 9, scope: !1957)
!1959 = !DILocation(line: 448, column: 22, scope: !1900)
!1960 = !DILocation(line: 448, column: 9, scope: !1900)
!1961 = !DILocation(line: 448, column: 20, scope: !1900)
!1962 = !DILocation(line: 449, column: 24, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 449, column: 9)
!1964 = !DILocation(line: 449, column: 9, scope: !1900)
!1965 = !DILocation(line: 450, column: 17, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 449, column: 33)
!1967 = !DILocation(line: 450, column: 9, scope: !1966)
!1968 = !DILocation(line: 451, column: 9, scope: !1966)
!1969 = !DILocation(line: 455, column: 18, scope: !1910)
!1970 = !{!837, !772, i64 248}
!1971 = !DILocation(line: 455, column: 9, scope: !1910)
!1972 = !DILocation(line: 455, column: 9, scope: !1900)
!1973 = !DILocation(line: 456, column: 60, scope: !1909)
!1974 = !DILocation(line: 456, column: 49, scope: !1909)
!1975 = !DILocation(line: 0, scope: !1909)
!1976 = !DILocation(line: 457, column: 19, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 457, column: 13)
!1978 = !DILocation(line: 457, column: 13, scope: !1909)
!1979 = !DILocation(line: 458, column: 19, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 457, column: 39)
!1981 = !DILocation(line: 459, column: 9, scope: !1980)
!1982 = !DILocation(line: 460, column: 21, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 459, column: 16)
!1984 = !DILocation(line: 460, column: 27, scope: !1983)
!1985 = !DILocation(line: 0, scope: !1977)
!1986 = !DILocation(line: 462, column: 9, scope: !1909)
!1987 = !DILocation(line: 463, column: 5, scope: !1909)
!1988 = !DILocation(line: 465, column: 20, scope: !1900)
!1989 = !DILocation(line: 465, column: 9, scope: !1900)
!1990 = !DILocation(line: 465, column: 18, scope: !1900)
!1991 = !{!958, !768, i64 6768}
!1992 = !DILocation(line: 466, column: 22, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 466, column: 9)
!1994 = !DILocation(line: 466, column: 9, scope: !1900)
!1995 = !DILocation(line: 467, column: 17, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 466, column: 31)
!1997 = !DILocation(line: 467, column: 9, scope: !1996)
!1998 = !DILocation(line: 468, column: 9, scope: !1996)
!1999 = !DILocation(line: 481, column: 9, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 481, column: 9)
!2001 = !DILocation(line: 481, column: 13, scope: !2000)
!2002 = !DILocation(line: 481, column: 9, scope: !1900)
!2003 = !DILocation(line: 482, column: 29, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 481, column: 22)
!2005 = !DILocation(line: 482, column: 9, scope: !2004)
!2006 = !DILocation(line: 484, column: 5, scope: !2004)
!2007 = !DILocation(line: 496, column: 5, scope: !1900)
!2008 = !DILocation(line: 497, column: 1, scope: !1900)
!2009 = distinct !DISubprogram(name: "create_worker", scope: !3, file: !3, line: 379, type: !2010, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2015)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !2012, !117}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!117, !117}
!2015 = !{!2016, !2017, !2018, !2027}
!2016 = !DILocalVariable(name: "func", arg: 1, scope: !2009, file: !3, line: 379, type: !2012)
!2017 = !DILocalVariable(name: "arg", arg: 2, scope: !2009, file: !3, line: 379, type: !117)
!2018 = !DILocalVariable(name: "attr", scope: !2009, file: !3, line: 380, type: !2019)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !120, line: 62, baseType: !2020)
!2020 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !120, line: 56, size: 448, elements: !2021)
!2021 = !{!2022, !2026}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !2020, file: !120, line: 58, baseType: !2023, size: 448)
!2023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 448, elements: !2024)
!2024 = !{!2025}
!2025 = !DISubrange(count: 56)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !2020, file: !120, line: 59, baseType: !150, size: 64)
!2027 = !DILocalVariable(name: "ret", scope: !2009, file: !3, line: 381, type: !128)
!2028 = !DILocation(line: 0, scope: !2009)
!2029 = !DILocation(line: 380, column: 5, scope: !2009)
!2030 = !DILocation(line: 380, column: 21, scope: !2009)
!2031 = !DILocation(line: 383, column: 5, scope: !2009)
!2032 = !DILocation(line: 385, column: 57, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 385, column: 9)
!2034 = !DILocation(line: 385, column: 16, scope: !2033)
!2035 = !DILocation(line: 385, column: 87, scope: !2033)
!2036 = !DILocation(line: 385, column: 9, scope: !2009)
!2037 = !DILocation(line: 386, column: 17, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2033, file: !3, line: 385, column: 93)
!2039 = !DILocation(line: 387, column: 17, scope: !2038)
!2040 = !DILocation(line: 386, column: 9, scope: !2038)
!2041 = !DILocation(line: 388, column: 9, scope: !2038)
!2042 = !DILocation(line: 390, column: 1, scope: !2009)
!2043 = distinct !DISubprogram(name: "worker_libevent", scope: !3, file: !3, line: 502, type: !2013, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2044)
!2044 = !{!2045, !2046}
!2045 = !DILocalVariable(name: "arg", arg: 1, scope: !2043, file: !3, line: 502, type: !117)
!2046 = !DILocalVariable(name: "me", scope: !2043, file: !3, line: 503, type: !152)
!2047 = !DILocation(line: 0, scope: !2043)
!2048 = !DILocation(line: 508, column: 13, scope: !2043)
!2049 = !DILocation(line: 508, column: 9, scope: !2043)
!2050 = !DILocation(line: 508, column: 11, scope: !2043)
!2051 = !{!958, !768, i64 6784}
!2052 = !DILocation(line: 509, column: 24, scope: !2043)
!2053 = !DILocation(line: 509, column: 9, scope: !2043)
!2054 = !DILocation(line: 509, column: 22, scope: !2043)
!2055 = !{!958, !768, i64 6792}
!2056 = !DILocation(line: 510, column: 13, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 510, column: 9)
!2058 = !DILocation(line: 510, column: 15, scope: !2057)
!2059 = !DILocation(line: 510, column: 23, scope: !2057)
!2060 = !DILocation(line: 511, column: 9, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 510, column: 52)
!2062 = !DILocation(line: 514, column: 18, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 514, column: 9)
!2064 = !{!837, !840, i64 252}
!2065 = !DILocation(line: 514, column: 9, scope: !2043)
!2066 = !DILocation(line: 516, column: 5, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 514, column: 35)
!2068 = !DILocation(line: 518, column: 5, scope: !2043)
!2069 = !DILocation(line: 520, column: 25, scope: !2043)
!2070 = !DILocation(line: 520, column: 5, scope: !2043)
!2071 = !DILocation(line: 523, column: 5, scope: !2043)
!2072 = !DILocation(line: 525, column: 25, scope: !2043)
!2073 = !DILocation(line: 525, column: 5, scope: !2043)
!2074 = !DILocation(line: 526, column: 5, scope: !2043)
!2075 = !DISubprogram(name: "pthread_cond_wait", scope: !775, file: !775, line: 986, type: !2076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!128, !1878, !2078}
!2078 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!2079 = !DISubprogram(name: "getsockopt", scope: !2080, file: !2080, line: 208, type: !2081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2080 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "2fce7039a1b2768148129dec2fa585be")
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!128, !128, !128, !128, !2083, !2084}
!2083 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !117)
!2084 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2085)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!2086 = distinct !DISubprogram(name: "reset_threads_napi_id", scope: !3, file: !3, line: 653, type: !870, scopeLine: 654, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2087)
!2087 = !{!2088, !2089}
!2088 = !DILocalVariable(name: "thread", scope: !2086, file: !3, line: 655, type: !152)
!2089 = !DILocalVariable(name: "i", scope: !2086, file: !3, line: 656, type: !128)
!2090 = !DILocation(line: 0, scope: !2086)
!2091 = !DILocation(line: 658, column: 19, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 658, column: 5)
!2093 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 658, column: 5)
!2094 = !DILocation(line: 658, column: 5, scope: !2093)
!2095 = !DILocation(line: 660, column: 18, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 658, column: 48)
!2097 = !DILocation(line: 660, column: 26, scope: !2096)
!2098 = !DILocation(line: 658, column: 44, scope: !2092)
!2099 = distinct !{!2099, !2094, !2100, !863}
!2100 = !DILocation(line: 661, column: 5, scope: !2093)
!2101 = !DILocation(line: 663, column: 28, scope: !2086)
!2102 = !DILocation(line: 664, column: 1, scope: !2086)
!2103 = !DISubprogram(name: "cache_alloc", scope: !588, file: !588, line: 78, type: !2104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!117, !586}
!2106 = distinct !DISubprogram(name: "cq_push", scope: !3, file: !3, line: 308, type: !2107, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{null, !1299, !953}
!2109 = !{!2110, !2111}
!2110 = !DILocalVariable(name: "cq", arg: 1, scope: !2106, file: !3, line: 308, type: !1299)
!2111 = !DILocalVariable(name: "item", arg: 2, scope: !2106, file: !3, line: 308, type: !953)
!2112 = !DILocation(line: 0, scope: !2106)
!2113 = !DILocation(line: 309, column: 29, scope: !2106)
!2114 = !DILocation(line: 309, column: 5, scope: !2106)
!2115 = !DILocation(line: 310, column: 5, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 310, column: 5)
!2117 = !{!973, !768, i64 64}
!2118 = !{!1307, !768, i64 8}
!2119 = !DILocation(line: 311, column: 5, scope: !2106)
!2120 = !DILocation(line: 312, column: 1, scope: !2106)
!2121 = !DISubprogram(name: "write", scope: !1321, file: !1321, line: 366, type: !2122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!530, !128, !671, !421}
!2124 = !DISubprogram(name: "event_config_new", scope: !107, file: !107, line: 467, type: !2125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!1906}
!2127 = !DISubprogram(name: "event_config_set_flag", scope: !107, file: !107, line: 618, type: !2128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!128, !1906, !128}
!2130 = !DISubprogram(name: "event_base_new_with_config", scope: !107, file: !107, line: 678, type: !2131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!159, !2133}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1907)
!2135 = !DISubprogram(name: "event_config_free", scope: !107, file: !107, line: 475, type: !2136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !1906}
!2138 = !DISubprogram(name: "event_set", scope: !2139, file: !2139, line: 184, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2139 = !DIFile(filename: "/usr/include/event2/event_compat.h", directory: "", checksumkind: CSK_MD5, checksum: "5472349fbd83479f91b432192bf02139")
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !198, !128, !134, !187, !117}
!2142 = distinct !DISubprogram(name: "thread_libevent_process", scope: !3, file: !3, line: 537, type: !188, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2143)
!2143 = !{!2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151}
!2144 = !DILocalVariable(name: "fd", arg: 1, scope: !2142, file: !3, line: 537, type: !128)
!2145 = !DILocalVariable(name: "which", arg: 2, scope: !2142, file: !3, line: 537, type: !134)
!2146 = !DILocalVariable(name: "arg", arg: 3, scope: !2142, file: !3, line: 537, type: !117)
!2147 = !DILocalVariable(name: "me", scope: !2142, file: !3, line: 538, type: !152)
!2148 = !DILocalVariable(name: "item", scope: !2142, file: !3, line: 539, type: !953)
!2149 = !DILocalVariable(name: "c", scope: !2142, file: !3, line: 540, type: !336)
!2150 = !DILocalVariable(name: "ev_count", scope: !2142, file: !3, line: 541, type: !252)
!2151 = !DILocalVariable(name: "x", scope: !2152, file: !3, line: 562, type: !128)
!2152 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 562, column: 5)
!2153 = !DILocation(line: 0, scope: !2142)
!2154 = !DILocation(line: 541, column: 5, scope: !2142)
!2155 = !DILocation(line: 541, column: 14, scope: !2142)
!2156 = !DILocation(line: 546, column: 9, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 546, column: 9)
!2158 = !DILocation(line: 546, column: 47, scope: !2157)
!2159 = !DILocation(line: 546, column: 9, scope: !2142)
!2160 = !DILocation(line: 0, scope: !2152)
!2161 = !DILocation(line: 562, column: 25, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 562, column: 5)
!2163 = !DILocation(line: 562, column: 23, scope: !2162)
!2164 = !DILocation(line: 562, column: 5, scope: !2152)
!2165 = !DILocation(line: 547, column: 22, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 547, column: 13)
!2167 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 546, column: 68)
!2168 = !DILocation(line: 547, column: 30, scope: !2166)
!2169 = !DILocation(line: 547, column: 13, scope: !2167)
!2170 = !DILocation(line: 548, column: 21, scope: !2166)
!2171 = !DILocation(line: 548, column: 13, scope: !2166)
!2172 = !DILocation(line: 549, column: 9, scope: !2167)
!2173 = !DILocation(line: 563, column: 27, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 562, column: 40)
!2175 = !DILocation(line: 563, column: 16, scope: !2174)
!2176 = !DILocation(line: 564, column: 18, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 564, column: 13)
!2178 = !DILocation(line: 564, column: 13, scope: !2174)
!2179 = !DILocation(line: 568, column: 23, scope: !2174)
!2180 = !DILocation(line: 568, column: 9, scope: !2174)
!2181 = !DILocation(line: 570, column: 36, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 568, column: 29)
!2183 = !DILocation(line: 570, column: 47, scope: !2182)
!2184 = !DILocation(line: 570, column: 65, scope: !2182)
!2185 = !DILocation(line: 571, column: 42, scope: !2182)
!2186 = !DILocation(line: 571, column: 66, scope: !2182)
!2187 = !DILocation(line: 572, column: 40, scope: !2182)
!2188 = !DILocation(line: 572, column: 52, scope: !2182)
!2189 = !DILocation(line: 572, column: 63, scope: !2182)
!2190 = !DILocation(line: 572, column: 78, scope: !2182)
!2191 = !DILocation(line: 570, column: 21, scope: !2182)
!2192 = !DILocation(line: 573, column: 23, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 573, column: 21)
!2194 = !DILocation(line: 573, column: 21, scope: !2182)
!2195 = !DILocation(line: 574, column: 25, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 574, column: 25)
!2197 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 573, column: 32)
!2198 = !DILocation(line: 574, column: 25, scope: !2197)
!2199 = !DILocation(line: 575, column: 33, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 574, column: 50)
!2201 = !DILocation(line: 575, column: 25, scope: !2200)
!2202 = !DILocation(line: 576, column: 25, scope: !2200)
!2203 = !DILocation(line: 578, column: 38, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 578, column: 29)
!2205 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 577, column: 28)
!2206 = !DILocation(line: 578, column: 46, scope: !2204)
!2207 = !DILocation(line: 578, column: 29, scope: !2205)
!2208 = !DILocation(line: 579, column: 37, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 578, column: 51)
!2210 = !DILocation(line: 580, column: 39, scope: !2209)
!2211 = !DILocation(line: 579, column: 29, scope: !2209)
!2212 = !DILocation(line: 581, column: 25, scope: !2209)
!2213 = !DILocation(line: 588, column: 37, scope: !2205)
!2214 = !DILocation(line: 588, column: 25, scope: !2205)
!2215 = !DILocation(line: 590, column: 17, scope: !2197)
!2216 = !DILocation(line: 591, column: 33, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 590, column: 24)
!2218 = !DILocation(line: 591, column: 24, scope: !2217)
!2219 = !DILocation(line: 591, column: 31, scope: !2217)
!2220 = !DILocation(line: 592, column: 21, scope: !2217)
!2221 = !DILocation(line: 603, column: 17, scope: !2182)
!2222 = !DILocation(line: 604, column: 17, scope: !2182)
!2223 = !DILocation(line: 607, column: 33, scope: !2182)
!2224 = !DILocation(line: 607, column: 45, scope: !2182)
!2225 = !DILocation(line: 607, column: 17, scope: !2182)
!2226 = !DILocation(line: 608, column: 17, scope: !2182)
!2227 = !DILocation(line: 611, column: 35, scope: !2182)
!2228 = !DILocation(line: 611, column: 47, scope: !2182)
!2229 = !DILocation(line: 611, column: 17, scope: !2182)
!2230 = !DILocation(line: 612, column: 17, scope: !2182)
!2231 = !DILocation(line: 615, column: 37, scope: !2182)
!2232 = !DILocation(line: 615, column: 41, scope: !2182)
!2233 = !DILocation(line: 615, column: 17, scope: !2182)
!2234 = !DILocation(line: 616, column: 17, scope: !2182)
!2235 = !DILocation(line: 619, column: 38, scope: !2182)
!2236 = !DILocation(line: 619, column: 44, scope: !2182)
!2237 = !DILocation(line: 619, column: 17, scope: !2182)
!2238 = !DILocation(line: 620, column: 17, scope: !2182)
!2239 = !DILocation(line: 628, column: 22, scope: !2174)
!2240 = !DILocation(line: 628, column: 9, scope: !2174)
!2241 = !DILocation(line: 562, column: 36, scope: !2162)
!2242 = distinct !{!2242, !2164, !2243, !863}
!2243 = !DILocation(line: 629, column: 5, scope: !2152)
!2244 = !DILocation(line: 630, column: 1, scope: !2142)
!2245 = !DISubprogram(name: "event_base_set", scope: !107, file: !107, line: 787, type: !2246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!128, !159, !198}
!2248 = !DISubprogram(name: "event_add", scope: !107, file: !107, line: 1233, type: !2249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!128, !198, !2251}
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!2253 = !DISubprogram(name: "malloc", scope: !1889, file: !1889, line: 539, type: !2254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!117, !421}
!2256 = distinct !DISubprogram(name: "cq_init", scope: !3, file: !3, line: 277, type: !2257, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2259)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !1299}
!2259 = !{!2260}
!2260 = !DILocalVariable(name: "cq", arg: 1, scope: !2256, file: !3, line: 277, type: !1299)
!2261 = !DILocation(line: 0, scope: !2256)
!2262 = !DILocation(line: 278, column: 29, scope: !2256)
!2263 = !DILocation(line: 278, column: 5, scope: !2256)
!2264 = !DILocation(line: 279, column: 5, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 279, column: 5)
!2266 = !{!1307, !768, i64 0}
!2267 = !DILocation(line: 280, column: 17, scope: !2256)
!2268 = !DILocation(line: 280, column: 9, scope: !2256)
!2269 = !DILocation(line: 280, column: 15, scope: !2256)
!2270 = !DILocation(line: 281, column: 19, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 281, column: 9)
!2272 = !DILocation(line: 281, column: 9, scope: !2256)
!2273 = !DILocation(line: 282, column: 17, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 281, column: 28)
!2275 = !DILocation(line: 282, column: 9, scope: !2274)
!2276 = !DILocation(line: 283, column: 9, scope: !2274)
!2277 = !DILocation(line: 285, column: 1, scope: !2256)
!2278 = !DISubprogram(name: "cache_create", scope: !588, file: !588, line: 59, type: !2279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!586, !943, !421, !421}
!2281 = !DISubprogram(name: "cache_set_limit", scope: !588, file: !588, line: 97, type: !2282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{null, !586, !128}
!2284 = !DISubprogram(name: "thread_io_queue_add", scope: !6, file: !6, line: 923, type: !2285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{null, !152, !128, !117, !311, !311, !325, !325}
!2287 = !DISubprogram(name: "read", scope: !1321, file: !1321, line: 360, type: !2288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!530, !128, !117, !421}
!2290 = distinct !DISubprogram(name: "cq_pop", scope: !3, file: !3, line: 292, type: !1297, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2291)
!2291 = !{!2292, !2293}
!2292 = !DILocalVariable(name: "cq", arg: 1, scope: !2290, file: !3, line: 292, type: !1299)
!2293 = !DILocalVariable(name: "item", scope: !2290, file: !3, line: 293, type: !953)
!2294 = !DILocation(line: 0, scope: !2290)
!2295 = !DILocation(line: 295, column: 29, scope: !2290)
!2296 = !DILocation(line: 295, column: 5, scope: !2290)
!2297 = !DILocation(line: 296, column: 12, scope: !2290)
!2298 = !DILocation(line: 297, column: 14, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 297, column: 9)
!2300 = !DILocation(line: 297, column: 9, scope: !2290)
!2301 = !DILocation(line: 298, column: 9, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 298, column: 9)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 298, column: 9)
!2304 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 297, column: 23)
!2305 = !DILocation(line: 298, column: 9, scope: !2303)
!2306 = !DILocation(line: 299, column: 5, scope: !2304)
!2307 = !DILocation(line: 300, column: 5, scope: !2290)
!2308 = !DILocation(line: 302, column: 5, scope: !2290)
!2309 = !DISubprogram(name: "conn_new", scope: !6, file: !6, line: 928, type: !2310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!336, !1430, !2312, !1430, !1430, !56, !159, !117, !252, !51}
!2312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!2313 = !DISubprogram(name: "conn_io_queue_setup", scope: !6, file: !6, line: 924, type: !1348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2314 = distinct !DISubprogram(name: "register_thread_initialized", scope: !3, file: !3, line: 147, type: !870, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !778)
!2315 = !DILocation(line: 148, column: 5, scope: !2314)
!2316 = !DILocation(line: 149, column: 15, scope: !2314)
!2317 = !DILocation(line: 150, column: 5, scope: !2314)
!2318 = !DILocation(line: 151, column: 5, scope: !2314)
!2319 = !DILocation(line: 153, column: 5, scope: !2314)
!2320 = !DILocation(line: 154, column: 5, scope: !2314)
!2321 = !DILocation(line: 155, column: 1, scope: !2314)
!2322 = !DISubprogram(name: "conn_close_idle", scope: !6, file: !6, line: 969, type: !1348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2323 = !DISubprogram(name: "conn_worker_readd", scope: !6, file: !6, line: 931, type: !1348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2324 = !DISubprogram(name: "event_base_loopexit", scope: !107, file: !107, line: 844, type: !2325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!128, !159, !2251}
!2327 = !DISubprogram(name: "conn_io_queue_return", scope: !6, file: !6, line: 927, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2328 = distinct !DISubprogram(name: "cqi_free", scope: !3, file: !3, line: 330, type: !2107, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2329)
!2329 = !{!2330, !2331}
!2330 = !DILocalVariable(name: "cq", arg: 1, scope: !2328, file: !3, line: 330, type: !1299)
!2331 = !DILocalVariable(name: "item", arg: 2, scope: !2328, file: !3, line: 330, type: !953)
!2332 = !DILocation(line: 0, scope: !2328)
!2333 = !DILocation(line: 331, column: 20, scope: !2328)
!2334 = !DILocation(line: 331, column: 27, scope: !2328)
!2335 = !DILocation(line: 331, column: 5, scope: !2328)
!2336 = !DILocation(line: 332, column: 1, scope: !2328)
!2337 = !DISubprogram(name: "pthread_cond_signal", scope: !775, file: !775, line: 974, type: !2338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!128, !1879}
!2340 = !DISubprogram(name: "cache_free", scope: !588, file: !588, line: 89, type: !2341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{null, !586, !117}
!2343 = !DISubprogram(name: "pthread_attr_init", scope: !775, file: !775, line: 263, type: !2344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!128, !2346}
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2347 = !DISubprogram(name: "pthread_create", scope: !775, file: !775, line: 198, type: !2348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!128, !2350, !2352, !2012, !2083}
!2350 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2351)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2353)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2019)
!2355 = !DISubprogram(name: "strerror", scope: !1637, file: !1637, line: 397, type: !2356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!151, !128}
!2358 = !DISubprogram(name: "logger_create", scope: !68, file: !68, line: 205, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!616}
!2361 = !DISubprogram(name: "item_lru_bump_buf_create", scope: !873, file: !873, line: 36, type: !2362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!117}
!2364 = !DISubprogram(name: "abort", scope: !1889, file: !1889, line: 591, type: !870, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2365 = !DISubprogram(name: "event_base_loop", scope: !107, file: !107, line: 826, type: !2366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!128, !159, !128}
!2368 = !DISubprogram(name: "event_base_free", scope: !107, file: !107, line: 692, type: !2369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{null, !159}
