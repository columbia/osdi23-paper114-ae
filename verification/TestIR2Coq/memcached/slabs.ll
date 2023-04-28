; ModuleID = 'slabs.c'
source_filename = "slabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.settings = type { i64, i32, i32, i32, i8*, i32, i32, i64, i32, i8*, i8*, i32, double, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, double, i32, i32, i8, i32, i8, i8, i8*, i32, i32, i32, i32, double, double, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8, i32, i32, i8*, i32 }
%struct.slabclass_t = type { i32, i32, i8*, i32, i32, i8**, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.slab_rebalance = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8* }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon.0, %union.anon.1, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i64 }
%struct.stats_state = type { i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.timeval, i64, i64 }
%struct.timeval = type { i64, i64 }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, i64* }
%struct._stritem = type { %struct._stritem*, %struct._stritem*, %struct._stritem*, i32, i32, i32, i16, i16, i8, i8, [0 x %union.anon] }
%union.anon = type { i64 }
%struct.slab_stats_automove = type { i32, i32, i64, i64 }
%struct.thread_stats = type { %union.pthread_mutex_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [64 x %struct.slab_stats], [256 x i64], i64, i64, i64 }
%struct.slab_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.io_queue_cb_s = type { i8*, void (%struct.io_queue_s*)*, void (%struct.io_queue_s*)*, void (%struct._io_pending_t*)*, void (%struct._io_pending_t*)*, i32 }
%struct.conn_queue = type opaque
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
%struct.msghdr = type { i8*, i32, %struct.iovec*, i64, i8*, i64, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct._strchunk = type { %struct._strchunk*, %struct._strchunk*, %struct._stritem*, i32, i32, i32, i16, i16, i8, i8, [0 x i8] }

@storage = internal unnamed_addr global i8* null, align 8, !dbg !0
@settings = external dso_local local_unnamed_addr global %struct.settings, align 8
@slabclass = internal global [64 x %struct.slabclass_t] zeroinitializer, align 16, !dbg !150
@power_largest = internal unnamed_addr global i32 0, align 4, !dbg !166
@mem_limit = internal unnamed_addr global i64 0, align 8, !dbg !172
@mem_base = internal unnamed_addr global i8* null, align 8, !dbg !174
@mem_current = internal unnamed_addr global i8* null, align 8, !dbg !176
@mem_avail = internal unnamed_addr global i64 0, align 8, !dbg !178
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [98 x i8] c"Warning: Failed to allocate requested memory in one large chunk.\0AWill allocate in smaller chunks\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"slab class %3d: chunk size %9u perslab %7u\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"T_MEMD_INITIAL_MALLOC\00", align 1
@mem_malloced = internal unnamed_addr global i64 0, align 8, !dbg !180
@slabs_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !185
@slabs_rebalance_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !216
@slab_rebalance_signal = external dso_local global i32, align 4
@slab_rebal = external dso_local local_unnamed_addr global %struct.slab_rebalance, align 8
@rebalance_tid = internal global i64 0, align 8, !dbg !168
@.str.3 = private unnamed_addr constant [31 x i8] c"Can't create rebal thread: %s\0A\00", align 1
@do_run_slab_rebalance_thread = internal global i32 1, align 4, !dbg !226
@slab_rebalance_cond = internal global %union.pthread_cond_t zeroinitializer, align 8, !dbg !229
@.str.4 = private unnamed_addr constant [14 x i8] c"/proc/meminfo\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Hugepagesize:\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Failed to get supported huge page size\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"huge page size: %zu\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Failed to get aligned memory chunk: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Failed to set transparent hugepage hint: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [121 x i8] c"Error while preallocating slab memory!\0AIf using -L or other prealloc options, max memory must be at least %d megabytes.\0A\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"p->sl_curr == 0 || (((item *)p->slots)->it_flags & ITEM_SLABBED)\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"slabs.c\00", align 1
@__PRETTY_FUNCTION__.do_slabs_alloc = private unnamed_addr constant [63 x i8] c"void *do_slabs_alloc(const size_t, unsigned int, unsigned int)\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"size <= p->size\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"id >= POWER_SMALLEST && id <= power_largest\00", align 1
@__PRETTY_FUNCTION__.do_slabs_free = private unnamed_addr constant [55 x i8] c"void do_slabs_free(void *, const size_t, unsigned int)\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"chunk->it_flags == ITEM_CHUNK\00", align 1
@__PRETTY_FUNCTION__.do_slabs_free_chunked = private unnamed_addr constant [49 x i8] c"void do_slabs_free_chunked(item *, const size_t)\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%d:%s\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"chunk_size\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"chunks_per_page\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"total_pages\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"total_chunks\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"used_chunks\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"free_chunks\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"free_chunks_end\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"get_hits\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"cmd_set\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"delete_hits\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"incr_hits\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"decr_hits\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"cas_hits\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"cas_badval\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"touch_hits\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"active_slabs\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"total_malloced\00", align 1
@slabs_reassign_pick_any.cur = internal unnamed_addr global i32 0, align 4, !dbg !218
@.str.39 = private unnamed_addr constant [26 x i8] c"Started a slab rebalance\0A\00", align 1
@stats_state = external dso_local local_unnamed_addr global %struct.stats_state, align 8
@.str.40 = private unnamed_addr constant [28 x i8] c"it->it_flags & ITEM_CHUNKED\00", align 1
@__PRETTY_FUNCTION__.slab_rebalance_move = private unnamed_addr constant [30 x i8] c"int slab_rebalance_move(void)\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"ch == NULL\00", align 1
@hash = external dso_local local_unnamed_addr global i32 (i8*, i64)*, align 8
@.str.42 = private unnamed_addr constant [56 x i8] c"Slab reassign hit a busy item: refcount: %d (%d -> %d)\0A\00", align 1
@current_time = external dso_local global i32, align 4
@.str.43 = private unnamed_addr constant [39 x i8] c"(new_it->it_flags & ITEM_CHUNKED) == 0\00", align 1
@stats = external dso_local local_unnamed_addr global %struct.stats, align 8
@.str.44 = private unnamed_addr constant [29 x i8] c"it->it_flags == ITEM_SLABBED\00", align 1
@__PRETTY_FUNCTION__.slab_rebalance_cut_free = private unnamed_addr constant [52 x i8] c"void slab_rebalance_cut_free(slabclass_t *, item *)\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"finished a slab move\0A\00", align 1
@__llvm_gcov_ctr = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.49 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.50 = internal global [19 x i64] zeroinitializer
@__llvm_gcov_ctr.51 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.52 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.53 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.54 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.55 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.56 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.57 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.58 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.59 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.60 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.61 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.62 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.63 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.64 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.65 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.66 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.67 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.68 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.69 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.70 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.71 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.72 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.73 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.74 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.75 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.76 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.77 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.78 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.79 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.80 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.81 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.82 = internal global [38 x i64] zeroinitializer
@__llvm_gcov_ctr.83 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.84 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.85 = internal global [5 x i64] zeroinitializer
@0 = private unnamed_addr constant [53 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/slabs.gcda\00", align 1
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [41 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 1732378811, i32 759737913 }, %emit_function_args_ty { i32 1, i32 -833342835, i32 759737913 }, %emit_function_args_ty { i32 2, i32 -1509129893, i32 759737913 }, %emit_function_args_ty { i32 3, i32 34614709, i32 759737913 }, %emit_function_args_ty { i32 4, i32 860833555, i32 759737913 }, %emit_function_args_ty { i32 5, i32 281480391, i32 759737913 }, %emit_function_args_ty { i32 6, i32 -393497333, i32 759737913 }, %emit_function_args_ty { i32 7, i32 555729828, i32 759737913 }, %emit_function_args_ty { i32 8, i32 1799958111, i32 759737913 }, %emit_function_args_ty { i32 9, i32 281830542, i32 759737913 }, %emit_function_args_ty { i32 10, i32 961463791, i32 759737913 }, %emit_function_args_ty { i32 11, i32 -1669289277, i32 759737913 }, %emit_function_args_ty { i32 12, i32 1134827545, i32 759737913 }, %emit_function_args_ty { i32 13, i32 2058545710, i32 759737913 }, %emit_function_args_ty { i32 14, i32 1961813620, i32 759737913 }, %emit_function_args_ty { i32 15, i32 -2052370100, i32 759737913 }, %emit_function_args_ty { i32 16, i32 -1702094927, i32 759737913 }, %emit_function_args_ty { i32 17, i32 -1555965631, i32 759737913 }, %emit_function_args_ty { i32 18, i32 903131517, i32 759737913 }, %emit_function_args_ty { i32 19, i32 1296563155, i32 759737913 }, %emit_function_args_ty { i32 20, i32 1847169073, i32 759737913 }, %emit_function_args_ty { i32 21, i32 155682057, i32 759737913 }, %emit_function_args_ty { i32 22, i32 -2049306826, i32 759737913 }, %emit_function_args_ty { i32 23, i32 -454786140, i32 759737913 }, %emit_function_args_ty { i32 24, i32 -1901944361, i32 759737913 }, %emit_function_args_ty { i32 25, i32 601675235, i32 759737913 }, %emit_function_args_ty { i32 26, i32 477719833, i32 759737913 }, %emit_function_args_ty { i32 27, i32 -1381723010, i32 759737913 }, %emit_function_args_ty { i32 28, i32 -1664603756, i32 759737913 }, %emit_function_args_ty { i32 29, i32 -1290089524, i32 759737913 }, %emit_function_args_ty { i32 30, i32 -1163227808, i32 759737913 }, %emit_function_args_ty { i32 31, i32 444581150, i32 759737913 }, %emit_function_args_ty { i32 32, i32 -1772394792, i32 759737913 }, %emit_function_args_ty { i32 33, i32 -383883975, i32 759737913 }, %emit_function_args_ty { i32 34, i32 -1965174145, i32 759737913 }, %emit_function_args_ty { i32 35, i32 755779922, i32 759737913 }, %emit_function_args_ty { i32 36, i32 -1710812863, i32 759737913 }, %emit_function_args_ty { i32 37, i32 -848239234, i32 759737913 }, %emit_function_args_ty { i32 38, i32 324425190, i32 759737913 }, %emit_function_args_ty { i32 39, i32 895463653, i32 759737913 }, %emit_function_args_ty { i32 40, i32 -188986379, i32 759737913 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [41 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.46, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.47, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.48, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.49, i32 0, i32 0) }, %emit_arcs_args_ty { i32 19, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i32 0, i32 0) }, %emit_arcs_args_ty { i32 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.52, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.53, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.54, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.55, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.56, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.57, i32 0, i32 0) }, %emit_arcs_args_ty { i32 11, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.59, i32 0, i32 0) }, %emit_arcs_args_ty { i32 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.60, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.61, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.62, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.63, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.64, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.65, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.66, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.67, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.68, i32 0, i32 0) }, %emit_arcs_args_ty { i32 10, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.70, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.71, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.72, i32 0, i32 0) }, %emit_arcs_args_ty { i32 11, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.74, i32 0, i32 0) }, %emit_arcs_args_ty { i32 10, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.76, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.77, i32 0, i32 0) }, %emit_arcs_args_ty { i32 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.78, i32 0, i32 0) }, %emit_arcs_args_ty { i32 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.79, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.80, i32 0, i32 0) }, %emit_arcs_args_ty { i32 11, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i32 0, i32 0) }, %emit_arcs_args_ty { i32 38, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.83, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.84, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.85, i32 0, i32 0) }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @slabs_set_storage(i8* noundef %arg) local_unnamed_addr #0 !dbg !275 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %arg, metadata !279, metadata !DIExpression()), !dbg !280
  store i8* %arg, i8** @storage, align 8, !dbg !281, !tbaa !282
  ret void, !dbg !286
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @slabs_clsid(i64 noundef %size) local_unnamed_addr #2 !dbg !287 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !292, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 1, metadata !293, metadata !DIExpression()), !dbg !294
  %cmp = icmp eq i64 %size, 0, !dbg !295
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !297

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.46, i64 0, i64 0), align 16, !dbg !298
  %0 = add i64 %gcov_ctr, 1, !dbg !298
  store i64 %0, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.46, i64 0, i64 0), align 16, !dbg !298
  %1 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 22), align 4, !dbg !299, !tbaa !300
  %conv = sext i32 %1 to i64, !dbg !306
  %cmp1 = icmp ult i64 %conv, %size, !dbg !307
  br i1 %cmp1, label %if.then, label %while.cond.preheader, !dbg !308

while.cond.preheader:                             ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i32 1, metadata !293, metadata !DIExpression()), !dbg !294
  %2 = load i32, i32* getelementptr inbounds ([64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 1, i32 0), align 8, !dbg !309, !tbaa !310
  %conv421 = zext i32 %2 to i64, !dbg !312
  %cmp522 = icmp ult i64 %conv421, %size, !dbg !313
  br i1 %cmp522, label %while.body.lr.ph, label %while.end, !dbg !314

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %.promoted = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.46, i64 0, i64 3), align 8
  %3 = load i32, i32* @power_largest, align 4, !tbaa !315
  %4 = zext i32 %3 to i64, !dbg !314
  br label %while.body, !dbg !314

if.then:                                          ; preds = %lor.lhs.false, %entry
  %gcov_ctr11 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.46, i64 0, i64 1), align 8, !dbg !316
  %5 = add i64 %gcov_ctr11, 1, !dbg !316
  store i64 %5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.46, i64 0, i64 1), align 8, !dbg !316
  br label %cleanup, !dbg !316

while.body:                                       ; preds = %while.body.lr.ph, %if.end10
  %indvars.iv = phi i64 [ 1, %while.body.lr.ph ], [ %indvars.iv.next, %if.end10 ]
  %6 = phi i64 [ %.promoted, %while.body.lr.ph ], [ %8, %if.end10 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !293, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !294
  %cmp7 = icmp eq i64 %indvars.iv, %4, !dbg !317
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !319

if.then9:                                         ; preds = %while.body
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.46, i64 0, i64 2), align 16, !dbg !320
  %7 = add i64 %gcov_ctr12, 1, !dbg !320
  store i64 %7, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.46, i64 0, i64 2), align 16, !dbg !320
  br label %cleanup, !dbg !321

if.end10:                                         ; preds = %while.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !322
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !293, metadata !DIExpression()), !dbg !294
  %8 = add i64 %6, 1, !dbg !314
  store i64 %8, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.46, i64 0, i64 3), align 8, !dbg !314
  %size3 = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %indvars.iv.next, i32 0, !dbg !309
  %9 = load i32, i32* %size3, align 8, !dbg !309, !tbaa !310
  %conv4 = zext i32 %9 to i64, !dbg !312
  %cmp5 = icmp ult i64 %conv4, %size, !dbg !313
  br i1 %cmp5, label %while.body, label %while.end.loopexit, !dbg !314, !llvm.loop !323

while.end.loopexit:                               ; preds = %if.end10
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !326
  br label %while.end, !dbg !326

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader
  %res.0.lcssa = phi i32 [ 1, %while.cond.preheader ], [ %10, %while.end.loopexit ], !dbg !294
  %gcov_ctr14 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.46, i64 0, i64 4), align 16, !dbg !326
  %11 = add i64 %gcov_ctr14, 1, !dbg !326
  store i64 %11, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.46, i64 0, i64 4), align 16, !dbg !326
  br label %cleanup, !dbg !327

cleanup:                                          ; preds = %while.end, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %3, %if.then9 ], [ %res.0.lcssa, %while.end ], !dbg !294
  ret i32 %retval.0, !dbg !328
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @slabs_size(i32 noundef %clsid) local_unnamed_addr #0 !dbg !329 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.47, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.47, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 %clsid, metadata !334, metadata !DIExpression()), !dbg !335
  %idxprom = sext i32 %clsid to i64, !dbg !336
  %size = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 0, !dbg !337
  %1 = load i32, i32* %size, align 8, !dbg !337, !tbaa !310
  ret i32 %1, !dbg !338
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @slabs_fixup(i8* noundef %chunk, i32 noundef %border) local_unnamed_addr #4 !dbg !339 {
entry:
  call void @llvm.dbg.value(metadata i8* %chunk, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 %border, metadata !344, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i8* %chunk, metadata !347, metadata !DIExpression()), !dbg !349
  %0 = getelementptr inbounds i8, i8* %chunk, i64 40, !dbg !350
  %1 = load i8, i8* %0, align 8, !dbg !350, !tbaa !351
  %2 = and i8 %1, 63, !dbg !350
  %and = zext i8 %2 to i32, !dbg !350
  call void @llvm.dbg.value(metadata i32 %and, metadata !348, metadata !DIExpression()), !dbg !349
  %cmp = icmp eq i8 %2, 0, !dbg !352
  br i1 %cmp, label %if.then, label %if.end, !dbg !354

if.then:                                          ; preds = %entry
  %gcov_ctr28 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 1), align 8, !dbg !355
  %3 = add i64 %gcov_ctr28, 1, !dbg !355
  store i64 %3, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 1), align 8, !dbg !355
  %call = tail call fastcc i32 @grow_slab_list(i32 noundef 0) #13, !dbg !357
  %4 = load i8**, i8*** getelementptr inbounds ([64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 0, i32 5), align 8, !dbg !358, !tbaa !359
  %5 = load i32, i32* getelementptr inbounds ([64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 0, i32 4), align 4, !dbg !360, !tbaa !361
  %inc = add i32 %5, 1, !dbg !360
  store i32 %inc, i32* getelementptr inbounds ([64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 0, i32 4), align 4, !dbg !360, !tbaa !361
  %idxprom = zext i32 %5 to i64, !dbg !362
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom, !dbg !362
  store i8* %chunk, i8** %arrayidx, align 8, !dbg !363, !tbaa !282
  br label %cleanup, !dbg !364

if.end:                                           ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 0), align 16, !dbg !365
  %6 = add i64 %gcov_ctr, 1, !dbg !365
  store i64 %6, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 0), align 16, !dbg !365
  %idxprom2 = zext i8 %2 to i64, !dbg !366
  call void @llvm.dbg.value(metadata !DIArgList([64 x %struct.slabclass_t]* @slabclass, i64 %idxprom2), metadata !345, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !349
  %cmp4 = icmp eq i32 %border, 0, !dbg !367
  br i1 %cmp4, label %if.then6, label %if.end13, !dbg !369

if.then6:                                         ; preds = %if.end
  %gcov_ctr29 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 2), align 16, !dbg !370
  %7 = add i64 %gcov_ctr29, 1, !dbg !370
  store i64 %7, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 2), align 16, !dbg !370
  %call7 = tail call fastcc i32 @grow_slab_list(i32 noundef %and) #13, !dbg !372
  %slab_list8 = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom2, i32 5, !dbg !373
  %8 = load i8**, i8*** %slab_list8, align 8, !dbg !373, !tbaa !359
  %slabs9 = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom2, i32 4, !dbg !374
  %9 = load i32, i32* %slabs9, align 4, !dbg !375, !tbaa !361
  %inc10 = add i32 %9, 1, !dbg !375
  store i32 %inc10, i32* %slabs9, align 4, !dbg !375, !tbaa !361
  %idxprom11 = zext i32 %9 to i64, !dbg !376
  %arrayidx12 = getelementptr inbounds i8*, i8** %8, i64 %idxprom11, !dbg !376
  store i8* %chunk, i8** %arrayidx12, align 8, !dbg !377, !tbaa !282
  br label %if.end13, !dbg !378

if.end13:                                         ; preds = %if.then6, %if.end
  %it_flags = getelementptr inbounds i8, i8* %chunk, i64 38, !dbg !379
  %10 = bitcast i8* %it_flags to i16*, !dbg !379
  %11 = load i16, i16* %10, align 2, !dbg !379, !tbaa !381
  %cmp15 = icmp eq i16 %11, 4, !dbg !383
  br i1 %cmp15, label %if.then17, label %if.end25, !dbg !384

if.then17:                                        ; preds = %if.end13
  %prev = getelementptr inbounds i8, i8* %chunk, i64 8, !dbg !385
  %12 = bitcast i8* %prev to %struct._stritem**, !dbg !385
  store %struct._stritem* null, %struct._stritem** %12, align 8, !dbg !387, !tbaa !282
  %slots = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom2, i32 2, !dbg !388
  %13 = bitcast i8** %slots to %struct._stritem**, !dbg !388
  %14 = load %struct._stritem*, %struct._stritem** %13, align 8, !dbg !388, !tbaa !389
  %next = bitcast i8* %chunk to %struct._stritem**, !dbg !390
  store %struct._stritem* %14, %struct._stritem** %next, align 8, !dbg !391, !tbaa !282
  %tobool.not = icmp eq %struct._stritem* %14, null, !dbg !392
  br i1 %tobool.not, label %if.end22, label %if.then19, !dbg !394

if.then19:                                        ; preds = %if.then17
  %gcov_ctr30 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 3), align 8, !dbg !395
  %15 = add i64 %gcov_ctr30, 1, !dbg !395
  store i64 %15, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 3), align 8, !dbg !395
  %16 = load %struct._stritem*, %struct._stritem** %next, align 8, !dbg !396, !tbaa !282
  %prev21 = getelementptr inbounds %struct._stritem, %struct._stritem* %16, i64 0, i32 1, !dbg !397
  %17 = bitcast %struct._stritem** %prev21 to i8**, !dbg !398
  store i8* %chunk, i8** %17, align 8, !dbg !398, !tbaa !282
  br label %if.end22, !dbg !399

if.end22:                                         ; preds = %if.then19, %if.then17
  %gcov_ctr31 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 4), align 16, !dbg !400
  %18 = add i64 %gcov_ctr31, 1, !dbg !400
  store i64 %18, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.48, i64 0, i64 4), align 16, !dbg !400
  store i8* %chunk, i8** %slots, align 8, !dbg !401, !tbaa !389
  %sl_curr = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom2, i32 3, !dbg !402
  %19 = load i32, i32* %sl_curr, align 8, !dbg !403, !tbaa !404
  %inc24 = add i32 %19, 1, !dbg !403
  store i32 %inc24, i32* %sl_curr, align 8, !dbg !403, !tbaa !404
  br label %if.end25, !dbg !405

if.end25:                                         ; preds = %if.end22, %if.end13
  %size = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom2, i32 0, !dbg !406
  %20 = load i32, i32* %size, align 8, !dbg !406, !tbaa !310
  br label %cleanup, !dbg !407

cleanup:                                          ; preds = %if.end25, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %20, %if.end25 ], !dbg !349
  ret i32 %retval.0, !dbg !408
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @grow_slab_list(i32 noundef %id) unnamed_addr #4 !dbg !409 {
entry:
  call void @llvm.dbg.value(metadata i32 %id, metadata !414, metadata !DIExpression()), !dbg !420
  %idxprom = zext i32 %id to i64, !dbg !421
  call void @llvm.dbg.value(metadata !DIArgList([64 x %struct.slabclass_t]* @slabclass, i64 %idxprom), metadata !415, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !420
  %slabs = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 4, !dbg !422
  %0 = load i32, i32* %slabs, align 4, !dbg !422, !tbaa !361
  %list_size = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 6, !dbg !423
  %1 = load i32, i32* %list_size, align 8, !dbg !423, !tbaa !424
  %cmp = icmp eq i32 %0, %1, !dbg !425
  br i1 %cmp, label %if.then, label %if.end12, !dbg !426

if.then:                                          ; preds = %entry
  %cmp2.not = icmp eq i32 %0, 0, !dbg !427
  br i1 %cmp2.not, label %cond.false, label %cond.true, !dbg !428

cond.true:                                        ; preds = %if.then
  %mul = shl i32 %0, 1, !dbg !429
  br label %cond.end, !dbg !428

cond.false:                                       ; preds = %if.then
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.49, i64 0, i64 0), align 16, !dbg !428
  %2 = add i64 %gcov_ctr, 1, !dbg !428
  store i64 %2, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.49, i64 0, i64 0), align 16, !dbg !428
  br label %cond.end, !dbg !428

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ 16, %cond.false ], !dbg !428
  %conv = zext i32 %cond to i64, !dbg !428
  call void @llvm.dbg.value(metadata i64 %conv, metadata !416, metadata !DIExpression()), !dbg !430
  %slab_list = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 5, !dbg !431
  %3 = bitcast i8*** %slab_list to i8**, !dbg !431
  %4 = load i8*, i8** %3, align 8, !dbg !431, !tbaa !359
  %mul4 = shl nuw nsw i64 %conv, 3, !dbg !432
  %call = tail call i8* @realloc(i8* noundef %4, i64 noundef %mul4) #14, !dbg !433
  call void @llvm.dbg.value(metadata i8* %call, metadata !419, metadata !DIExpression()), !dbg !430
  %cmp5 = icmp eq i8* %call, null, !dbg !434
  br i1 %cmp5, label %cleanup.thread, label %cleanup.cont, !dbg !436

cleanup.thread:                                   ; preds = %cond.end
  %gcov_ctr14 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.49, i64 0, i64 1), align 8, !dbg !437
  %5 = add i64 %gcov_ctr14, 1, !dbg !437
  store i64 %5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.49, i64 0, i64 1), align 8, !dbg !437
  br label %cleanup13

cleanup.cont:                                     ; preds = %cond.end
  store i32 %cond, i32* %list_size, align 8, !dbg !438, !tbaa !424
  store i8* %call, i8** %3, align 8, !dbg !439, !tbaa !359
  %6 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.49, i64 0, i64 2) to <2 x i64>*), align 16, !dbg !440
  %7 = add <2 x i64> %6, <i64 1, i64 1>, !dbg !440
  store <2 x i64> %7, <2 x i64>* bitcast (i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.49, i64 0, i64 2) to <2 x i64>*), align 16, !dbg !440
  br label %if.end12, !dbg !441

if.end12:                                         ; preds = %cleanup.cont, %entry
  %gcov_ctr17 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.49, i64 0, i64 4), align 16, !dbg !442
  %8 = add i64 %gcov_ctr17, 1, !dbg !442
  store i64 %8, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.49, i64 0, i64 4), align 16, !dbg !442
  br label %cleanup13, !dbg !442

cleanup13:                                        ; preds = %cleanup.thread, %if.end12
  %retval.1 = phi i32 [ 1, %if.end12 ], [ 0, %cleanup.thread ], !dbg !420
  ret i32 %retval.1, !dbg !443
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @slabs_init(i64 noundef %limit, double noundef %factor, i1 noundef zeroext %prealloc, i32* noundef readonly %slab_sizes, i8* noundef %mem_base_external, i1 noundef zeroext %reuse_mem) local_unnamed_addr #4 !dbg !444 {
entry:
  %env_malloced = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %limit, metadata !455, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata double %factor, metadata !456, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i1 %prealloc, metadata !457, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !472
  call void @llvm.dbg.value(metadata i32* %slab_sizes, metadata !458, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i8* %mem_base_external, metadata !459, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i1 %reuse_mem, metadata !460, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !472
  call void @llvm.dbg.value(metadata i32 0, metadata !461, metadata !DIExpression()), !dbg !472
  %0 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 13), align 8, !dbg !473, !tbaa !474
  %add = add i32 %0, 48, !dbg !475
  call void @llvm.dbg.value(metadata i32 %add, metadata !462, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i8 0, metadata !463, metadata !DIExpression()), !dbg !472
  store i64 %limit, i64* @mem_limit, align 8, !dbg !476, !tbaa !477
  br i1 %prealloc, label %land.lhs.true, label %if.end19, !dbg !478

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 0), align 16, !dbg !480
  %1 = add i64 %gcov_ctr, 1, !dbg !480
  store i64 %1, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 0), align 16, !dbg !480
  %cmp = icmp eq i8* %mem_base_external, null, !dbg !481
  br i1 %cmp, label %if.then, label %if.then14, !dbg !482

if.then:                                          ; preds = %land.lhs.true
  %call = tail call fastcc i8* @alloc_large_chunk(i64 noundef %limit) #13, !dbg !483
  store i8* %call, i8** @mem_base, align 8, !dbg !485, !tbaa !282
  %tobool5.not = icmp eq i8* %call, null, !dbg !486
  br i1 %tobool5.not, label %if.else, label %if.then6, !dbg !488

if.then6:                                         ; preds = %if.then
  %gcov_ctr106 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 2), align 16, !dbg !489
  %2 = add i64 %gcov_ctr106, 1, !dbg !489
  store i64 %2, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 2), align 16, !dbg !489
  call void @llvm.dbg.value(metadata i8 1, metadata !463, metadata !DIExpression()), !dbg !472
  store i8* %call, i8** @mem_current, align 8, !dbg !491, !tbaa !282
  %3 = load i64, i64* @mem_limit, align 8, !dbg !492, !tbaa !477
  store i64 %3, i64* @mem_avail, align 8, !dbg !493, !tbaa !477
  br label %if.end20, !dbg !494

if.else:                                          ; preds = %if.then
  %gcov_ctr105 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 1), align 8, !dbg !495
  %4 = add i64 %gcov_ctr105, 1, !dbg !495
  store i64 %4, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 1), align 8, !dbg !495
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !495, !tbaa !282
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0)) #14, !dbg !497
  br label %if.end20

if.then14:                                        ; preds = %land.lhs.true
  %gcov_ctr107 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 3), align 8, !dbg !498
  %6 = add i64 %gcov_ctr107, 1, !dbg !498
  store i64 %6, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 3), align 8, !dbg !498
  call void @llvm.dbg.value(metadata i8 1, metadata !463, metadata !DIExpression()), !dbg !472
  store i8* %mem_base_external, i8** @mem_base, align 8, !dbg !500, !tbaa !282
  br i1 %reuse_mem, label %if.then16, label %if.else17, !dbg !502

if.then16:                                        ; preds = %if.then14
  %gcov_ctr108 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 4), align 16, !dbg !503
  %7 = add i64 %gcov_ctr108, 1, !dbg !503
  store i64 %7, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 4), align 16, !dbg !503
  %add.ptr = getelementptr inbounds i8, i8* %mem_base_external, i64 %limit, !dbg !506
  br label %if.end19.sink.split, !dbg !507

if.else17:                                        ; preds = %if.then14
  %gcov_ctr109 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 5), align 8, !dbg !508
  %8 = add i64 %gcov_ctr109, 1, !dbg !508
  store i64 %8, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 5), align 8, !dbg !508
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.else17, %if.then16
  %add.ptr.sink = phi i8* [ %add.ptr, %if.then16 ], [ %mem_base_external, %if.else17 ]
  %.sink = phi i64 [ 0, %if.then16 ], [ %limit, %if.else17 ]
  store i8* %add.ptr.sink, i8** @mem_current, align 8, !dbg !510, !tbaa !282
  store i64 %.sink, i64* @mem_avail, align 8, !dbg !510, !tbaa !477
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %entry
  call void @llvm.dbg.value(metadata i8 undef, metadata !463, metadata !DIExpression()), !dbg !472
  %gcov_ctr110 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 6), align 16
  %9 = add i64 %gcov_ctr110, 1
  store i64 %9, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 6), align 16
  br label %if.end20

if.end20:                                         ; preds = %if.then6, %if.else, %if.end19
  %do_slab_prealloc.1 = phi i1 [ true, %if.then6 ], [ false, %if.else ], [ %prealloc, %if.end19 ], !dbg !472
  call void @llvm.dbg.value(metadata i8 undef, metadata !463, metadata !DIExpression()), !dbg !472
  %call21 = tail call i8* @memset(i8* noundef bitcast ([64 x %struct.slabclass_t]* @slabclass to i8*), i32 noundef 0, i64 noundef 2560) #14, !dbg !511
  %cmp24.not = icmp eq i32* %slab_sizes, null
  call void @llvm.dbg.value(metadata i32 0, metadata !461, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i32 %add, metadata !462, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i32 1, metadata !461, metadata !DIExpression()), !dbg !472
  br label %while.body, !dbg !512

while.body:                                       ; preds = %if.end20, %if.end73
  %indvars.iv160 = phi i64 [ 0, %if.end20 ], [ %indvars.iv.next161, %if.end73 ]
  %indvars.iv = phi i64 [ 1, %if.end20 ], [ %indvars.iv.next, %if.end73 ]
  %size.0155 = phi i32 [ %add, %if.end20 ], [ %size.3, %if.end73 ]
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1
  call void @llvm.dbg.value(metadata i64 %indvars.iv160, metadata !461, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i32 %size.0155, metadata !462, metadata !DIExpression()), !dbg !472
  br i1 %cmp24.not, label %if.else34, label %if.then26, !dbg !513

if.then26:                                        ; preds = %while.body
  %arrayidx = getelementptr inbounds i32, i32* %slab_sizes, i64 %indvars.iv160, !dbg !515
  %10 = load i32, i32* %arrayidx, align 4, !dbg !515, !tbaa !315
  %cmp27 = icmp eq i32 %10, 0, !dbg !519
  br i1 %cmp27, label %while.end.sink.split, label %if.end30, !dbg !520

if.end30:                                         ; preds = %if.then26
  %gcov_ctr112 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 8), align 16, !dbg !521
  %11 = add i64 %gcov_ctr112, 1, !dbg !521
  store i64 %11, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 8), align 16, !dbg !521
  %12 = load i32, i32* %arrayidx, align 4, !dbg !521, !tbaa !315
  call void @llvm.dbg.value(metadata i32 %12, metadata !462, metadata !DIExpression()), !dbg !472
  br label %if.end41, !dbg !522

if.else34:                                        ; preds = %while.body
  %conv35 = uitofp i32 %size.0155 to double, !dbg !523
  %13 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 23), align 8, !dbg !525, !tbaa !526
  %conv36 = sitofp i32 %13 to double, !dbg !527
  %div = fdiv double %conv36, %factor, !dbg !528
  %cmp37 = fcmp ugt double %div, %conv35, !dbg !529
  br i1 %cmp37, label %if.end40, label %while.end.sink.split, !dbg !530

if.end40:                                         ; preds = %if.else34
  %gcov_ctr114 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 10), align 16
  %14 = add i64 %gcov_ctr114, 1
  store i64 %14, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 10), align 16
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end30
  %size.1 = phi i32 [ %12, %if.end30 ], [ %size.0155, %if.end40 ], !dbg !472
  call void @llvm.dbg.value(metadata i32 %size.1, metadata !462, metadata !DIExpression()), !dbg !472
  %rem = and i32 %size.1, 7, !dbg !531
  %tobool42.not = icmp eq i32 %rem, 0, !dbg !531
  br i1 %tobool42.not, label %if.end47, label %if.then43, !dbg !533

if.then43:                                        ; preds = %if.end41
  %gcov_ctr115 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 11), align 8, !dbg !534
  %15 = add i64 %gcov_ctr115, 1, !dbg !534
  store i64 %15, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 11), align 8, !dbg !534
  %sub45 = add i32 %size.1, 8, !dbg !535
  %add46 = and i32 %sub45, -8, !dbg !536
  call void @llvm.dbg.value(metadata i32 %add46, metadata !462, metadata !DIExpression()), !dbg !472
  br label %if.end47, !dbg !537

if.end47:                                         ; preds = %if.then43, %if.end41
  %size.2 = phi i32 [ %add46, %if.then43 ], [ %size.1, %if.end41 ], !dbg !538
  call void @llvm.dbg.value(metadata i32 %size.2, metadata !462, metadata !DIExpression()), !dbg !472
  %size50 = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %indvars.iv, i32 0, !dbg !539
  store i32 %size.2, i32* %size50, align 8, !dbg !540, !tbaa !310
  %16 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 24), align 4, !dbg !541, !tbaa !542
  %div54 = udiv i32 %16, %size.2, !dbg !543
  %perslab = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %indvars.iv, i32 1, !dbg !544
  store i32 %div54, i32* %perslab, align 4, !dbg !545, !tbaa !546
  br i1 %cmp24.not, label %if.then59, label %if.end62, !dbg !547

if.then59:                                        ; preds = %if.end47
  %gcov_ctr116 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 12), align 16, !dbg !548
  %17 = add i64 %gcov_ctr116, 1, !dbg !548
  store i64 %17, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 12), align 16, !dbg !548
  %conv60 = uitofp i32 %size.2 to double, !dbg !550
  %mul = fmul double %conv60, %factor, !dbg !550
  %conv61 = fptoui double %mul to i32, !dbg !550
  call void @llvm.dbg.value(metadata i32 %conv61, metadata !462, metadata !DIExpression()), !dbg !472
  br label %if.end62, !dbg !551

if.end62:                                         ; preds = %if.then59, %if.end47
  %size.3 = phi i32 [ %conv61, %if.then59 ], [ %size.2, %if.end47 ], !dbg !538
  call void @llvm.dbg.value(metadata i32 %size.3, metadata !462, metadata !DIExpression()), !dbg !472
  %18 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !552, !tbaa !554
  %cmp63 = icmp sgt i32 %18, 1, !dbg !555
  br i1 %cmp63, label %if.then65, label %if.end73, !dbg !556

if.then65:                                        ; preds = %if.end62
  %gcov_ctr117 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 13), align 8, !dbg !557
  %19 = add i64 %gcov_ctr117, 1, !dbg !557
  store i64 %19, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 13), align 8, !dbg !557
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !557, !tbaa !282
  %21 = trunc i64 %indvars.iv to i32, !dbg !559
  %call72 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 noundef %21, i32 noundef %size.2, i32 noundef %div54) #14, !dbg !559
  br label %if.end73, !dbg !560

if.end73:                                         ; preds = %if.then65, %if.end62
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !461, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i32 %size.3, metadata !462, metadata !DIExpression()), !dbg !472
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !561
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !461, metadata !DIExpression()), !dbg !472
  %exitcond.not = icmp eq i64 %indvars.iv.next161, 62, !dbg !562
  br i1 %exitcond.not, label %while.end, label %while.body, !dbg !512, !llvm.loop !563

while.end.sink.split:                             ; preds = %if.else34, %if.then26
  %.sink169 = phi i64* [ getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 7), %if.then26 ], [ getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 9), %if.else34 ]
  %22 = trunc i64 %indvars.iv to i32, !dbg !565
  %gcov_ctr113 = load i64, i64* %.sink169, align 8, !dbg !565
  %23 = add i64 %gcov_ctr113, 1, !dbg !565
  store i64 %23, i64* %.sink169, align 8, !dbg !565
  br label %while.end, !dbg !566

while.end:                                        ; preds = %if.end73, %while.end.sink.split
  %inc154 = phi i32 [ %22, %while.end.sink.split ], [ 63, %if.end73 ]
  store i32 %inc154, i32* @power_largest, align 4, !dbg !566, !tbaa !315
  %24 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 23), align 8, !dbg !567, !tbaa !526
  %idxprom74 = zext i32 %inc154 to i64, !dbg !568
  %size76 = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom74, i32 0, !dbg !569
  store i32 %24, i32* %size76, align 8, !dbg !570, !tbaa !310
  %25 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 24), align 4, !dbg !571, !tbaa !542
  %div77 = sdiv i32 %25, %24, !dbg !572
  %perslab80 = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom74, i32 1, !dbg !573
  store i32 %div77, i32* %perslab80, align 4, !dbg !574, !tbaa !546
  %26 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !575, !tbaa !554
  %cmp81 = icmp sgt i32 %26, 1, !dbg !577
  br i1 %cmp81, label %if.then83, label %if.end91, !dbg !578

if.then83:                                        ; preds = %while.end
  %gcov_ctr118 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 14), align 16, !dbg !579
  %27 = add i64 %gcov_ctr118, 1, !dbg !579
  store i64 %27, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 14), align 16, !dbg !579
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !579, !tbaa !282
  %call90 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 noundef %inc154, i32 noundef %24, i32 noundef %div77) #14, !dbg !581
  br label %if.end91, !dbg !582

if.end91:                                         ; preds = %if.then83, %while.end
  %call92 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0)) #14, !dbg !583
  call void @llvm.dbg.value(metadata i8* %call92, metadata !464, metadata !DIExpression()), !dbg !584
  %tobool93.not = icmp eq i8* %call92, null, !dbg !585
  br i1 %tobool93.not, label %if.end98, label %if.then94, !dbg !586

if.then94:                                        ; preds = %if.end91
  %gcov_ctr119 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 15), align 8, !dbg !587
  %29 = add i64 %gcov_ctr119, 1, !dbg !587
  store i64 %29, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 15), align 8, !dbg !587
  %30 = bitcast i64* %env_malloced to i8*, !dbg !587
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #15, !dbg !587
  call void @llvm.dbg.value(metadata i64* %env_malloced, metadata !466, metadata !DIExpression(DW_OP_deref)), !dbg !588
  %call95 = call zeroext i1 @safe_strtoll(i8* noundef nonnull %call92, i64* noundef nonnull %env_malloced) #14, !dbg !589
  br i1 %call95, label %if.then96, label %if.end97, !dbg !591

if.then96:                                        ; preds = %if.then94
  %gcov_ctr120 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 16), align 16, !dbg !592
  %31 = add i64 %gcov_ctr120, 1, !dbg !592
  store i64 %31, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 16), align 16, !dbg !592
  %32 = load i64, i64* %env_malloced, align 8, !dbg !592, !tbaa !477
  call void @llvm.dbg.value(metadata i64 %32, metadata !466, metadata !DIExpression()), !dbg !588
  store i64 %32, i64* @mem_malloced, align 8, !dbg !594, !tbaa !477
  br label %if.end97, !dbg !595

if.end97:                                         ; preds = %if.then96, %if.then94
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #15, !dbg !596
  br label %if.end98, !dbg !597

if.end98:                                         ; preds = %if.end97, %if.end91
  br i1 %do_slab_prealloc.1, label %if.then100, label %if.end104, !dbg !598

if.then100:                                       ; preds = %if.end98
  br i1 %reuse_mem, label %if.end103, label %if.then102, !dbg !599

if.then102:                                       ; preds = %if.then100
  %gcov_ctr121 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 17), align 8, !dbg !602
  %33 = add i64 %gcov_ctr121, 1, !dbg !602
  store i64 %33, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 17), align 8, !dbg !602
  %34 = load i32, i32* @power_largest, align 4, !dbg !602, !tbaa !315
  call fastcc void @slabs_preallocate(i32 noundef %34) #13, !dbg !605
  br label %if.end103, !dbg !606

if.end103:                                        ; preds = %if.then102, %if.then100
  %gcov_ctr122 = load i64, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 18), align 16, !dbg !607
  %35 = add i64 %gcov_ctr122, 1, !dbg !607
  store i64 %35, i64* getelementptr inbounds ([19 x i64], [19 x i64]* @__llvm_gcov_ctr.50, i64 0, i64 18), align 16, !dbg !607
  br label %if.end104, !dbg !607

if.end104:                                        ; preds = %if.end103, %if.end98
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @alloc_large_chunk(i64 noundef %limit) unnamed_addr #4 !dbg !609 {
entry:
  %ptr = alloca i8*, align 8
  %pagesize = alloca i64, align 8
  %buf = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata i64 %limit, metadata !613, metadata !DIExpression()), !dbg !675
  %0 = bitcast i8** %ptr to i8*, !dbg !676
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15, !dbg !676
  call void @llvm.dbg.value(metadata i8* null, metadata !614, metadata !DIExpression()), !dbg !675
  store i8* null, i8** %ptr, align 8, !dbg !677, !tbaa !282
  %1 = bitcast i64* %pagesize to i8*, !dbg !678
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15, !dbg !678
  call void @llvm.dbg.value(metadata i64 0, metadata !615, metadata !DIExpression()), !dbg !675
  store i64 0, i64* %pagesize, align 8, !dbg !679, !tbaa !477
  %call = tail call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #14, !dbg !680
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, metadata !616, metadata !DIExpression()), !dbg !675
  %cmp.not = icmp eq %struct._IO_FILE* %call, null, !dbg !681
  br i1 %cmp.not, label %if.then11, label %if.then, !dbg !682

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0, !dbg !683
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #15, !dbg !683
  call void @llvm.dbg.declare(metadata [64 x i8]* %buf, metadata !671, metadata !DIExpression()), !dbg !684
  %call146 = call i8* @fgets(i8* noundef nonnull %2, i32 noundef 64, %struct._IO_FILE* noundef nonnull %call) #14, !dbg !685
  %tobool.not47 = icmp eq i8* %call146, null, !dbg !686
  br i1 %tobool.not47, label %if.end9, label %while.body.lr.ph, !dbg !686

while.body.lr.ph:                                 ; preds = %if.then
  %add.ptr = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 13
  br label %while.body, !dbg !686

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %call3 = call i32 @strncmp(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64 noundef 13) #16, !dbg !687
  %tobool4.not = icmp eq i32 %call3, 0, !dbg !687
  br i1 %tobool4.not, label %if.then5, label %if.end, !dbg !689

if.then5:                                         ; preds = %while.body
  %gcov_ctr = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 0), align 16, !dbg !690
  %3 = add i64 %gcov_ctr, 1, !dbg !690
  store i64 %3, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 0), align 16, !dbg !690
  call void @llvm.dbg.value(metadata i64* %pagesize, metadata !615, metadata !DIExpression(DW_OP_deref)), !dbg !675
  %call7 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %add.ptr, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64* noundef nonnull %pagesize) #14, !dbg !692
  call void @llvm.dbg.value(metadata i32 %call7, metadata !670, metadata !DIExpression()), !dbg !675
  %4 = load i64, i64* %pagesize, align 8, !dbg !693, !tbaa !477
  call void @llvm.dbg.value(metadata i64 %4, metadata !615, metadata !DIExpression()), !dbg !675
  %shl = shl i64 %4, 10, !dbg !693
  call void @llvm.dbg.value(metadata i64 %shl, metadata !615, metadata !DIExpression()), !dbg !675
  store i64 %shl, i64* %pagesize, align 8, !dbg !693, !tbaa !477
  br label %if.end, !dbg !694

if.end:                                           ; preds = %if.then5, %while.body
  %gcov_ctr31 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 1), align 8, !dbg !686
  %5 = add i64 %gcov_ctr31, 1, !dbg !686
  store i64 %5, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 1), align 8, !dbg !686
  %call1 = call i8* @fgets(i8* noundef nonnull %2, i32 noundef 64, %struct._IO_FILE* noundef nonnull %call) #14, !dbg !685
  %tobool.not = icmp eq i8* %call1, null, !dbg !686
  br i1 %tobool.not, label %if.end9, label %while.body, !dbg !686, !llvm.loop !695

if.end9:                                          ; preds = %if.end, %if.then
  %gcov_ctr32 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 2), align 16, !dbg !697
  %6 = add i64 %gcov_ctr32, 1, !dbg !697
  store i64 %6, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 2), align 16, !dbg !697
  %call8 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %call) #14, !dbg !698
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #15, !dbg !699
  %.pre = load i64, i64* %pagesize, align 8, !dbg !700, !tbaa !477
  call void @llvm.dbg.value(metadata i64 %.pre, metadata !615, metadata !DIExpression()), !dbg !675
  %tobool10.not = icmp eq i64 %.pre, 0, !dbg !700
  br i1 %tobool10.not, label %if.then11, label %if.end13, !dbg !702

if.then11:                                        ; preds = %entry, %if.end9
  %gcov_ctr33 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 3), align 8, !dbg !703
  %7 = add i64 %gcov_ctr33, 1, !dbg !703
  store i64 %7, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 3), align 8, !dbg !703
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !703, !tbaa !282
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0)) #14, !dbg !705
  br label %cleanup, !dbg !706

if.end13:                                         ; preds = %if.end9
  %9 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !707, !tbaa !554
  %cmp14 = icmp sgt i32 %9, 1, !dbg !709
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !710

if.then15:                                        ; preds = %if.end13
  %gcov_ctr34 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 4), align 16, !dbg !711
  %10 = add i64 %gcov_ctr34, 1, !dbg !711
  store i64 %10, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 4), align 16, !dbg !711
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !711, !tbaa !282
  call void @llvm.dbg.value(metadata i64 %.pre, metadata !615, metadata !DIExpression()), !dbg !675
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 noundef %.pre) #14, !dbg !712
  %.pre48 = load i64, i64* %pagesize, align 8, !dbg !713, !tbaa !477
  br label %if.end17, !dbg !712

if.end17:                                         ; preds = %if.then15, %if.end13
  %12 = phi i64 [ %.pre48, %if.then15 ], [ %.pre, %if.end13 ], !dbg !713
  call void @llvm.dbg.value(metadata i64 %12, metadata !615, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i8** %ptr, metadata !614, metadata !DIExpression(DW_OP_deref)), !dbg !675
  %call18 = call i32 @posix_memalign(i8** noundef nonnull %ptr, i64 noundef %12, i64 noundef %limit) #14, !dbg !714
  call void @llvm.dbg.value(metadata i32 %call18, metadata !670, metadata !DIExpression()), !dbg !675
  %cmp19.not = icmp eq i32 %call18, 0, !dbg !715
  br i1 %cmp19.not, label %if.end22, label %if.then20, !dbg !717

if.then20:                                        ; preds = %if.end17
  %gcov_ctr35 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 5), align 8, !dbg !718
  %13 = add i64 %gcov_ctr35, 1, !dbg !718
  store i64 %13, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 5), align 8, !dbg !718
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !718, !tbaa !282
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 noundef %call18) #14, !dbg !720
  br label %cleanup, !dbg !721

if.end22:                                         ; preds = %if.end17
  %15 = load i8*, i8** %ptr, align 8, !dbg !722, !tbaa !282
  call void @llvm.dbg.value(metadata i8* %15, metadata !614, metadata !DIExpression()), !dbg !675
  %call23 = call i32 @madvise(i8* noundef %15, i64 noundef %limit, i32 noundef 14) #14, !dbg !723
  call void @llvm.dbg.value(metadata i32 %call23, metadata !670, metadata !DIExpression()), !dbg !675
  %cmp24 = icmp slt i32 %call23, 0, !dbg !724
  br i1 %cmp24, label %if.then25, label %if.end22.if.end27_crit_edge, !dbg !726

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  %.pre49 = load i8*, i8** %ptr, align 8, !dbg !727, !tbaa !282
  br label %if.end27, !dbg !726

if.then25:                                        ; preds = %if.end22
  %gcov_ctr36 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 6), align 16, !dbg !728
  %16 = add i64 %gcov_ctr36, 1, !dbg !728
  store i64 %16, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 6), align 16, !dbg !728
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !728, !tbaa !282
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 noundef %call23) #14, !dbg !730
  %18 = load i8*, i8** %ptr, align 8, !dbg !731, !tbaa !282
  call void @llvm.dbg.value(metadata i8* %18, metadata !614, metadata !DIExpression()), !dbg !675
  call void @free(i8* noundef %18) #14, !dbg !732
  call void @llvm.dbg.value(metadata i8* null, metadata !614, metadata !DIExpression()), !dbg !675
  br label %if.end27, !dbg !733

if.end27:                                         ; preds = %if.end22.if.end27_crit_edge, %if.then25
  %19 = phi i8* [ %.pre49, %if.end22.if.end27_crit_edge ], [ null, %if.then25 ], !dbg !727
  %gcov_ctr37 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 7), align 8, !dbg !727
  %20 = add i64 %gcov_ctr37, 1, !dbg !727
  store i64 %20, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.51, i64 0, i64 7), align 8, !dbg !727
  call void @llvm.dbg.value(metadata i8* %19, metadata !614, metadata !DIExpression()), !dbg !675
  br label %cleanup, !dbg !734

cleanup:                                          ; preds = %if.end27, %if.then20, %if.then11
  %retval.0 = phi i8* [ null, %if.then20 ], [ %19, %if.end27 ], [ null, %if.then11 ], !dbg !675
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15, !dbg !735
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15, !dbg !735
  ret i8* %retval.0, !dbg !735
}

declare !dbg !736 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !743 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !747 dso_local i8* @getenv(i8* noundef) local_unnamed_addr #6

declare !dbg !751 dso_local zeroext i1 @safe_strtoll(i8* noundef, i64* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @slabs_preallocate(i32 noundef %maxslabs) unnamed_addr #4 !dbg !756 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.52, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.52, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i32 %maxslabs, metadata !760, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i32 0, metadata !762, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i32 1, metadata !761, metadata !DIExpression()), !dbg !763
  %1 = add i32 %maxslabs, 1, !dbg !764
  br label %for.body, !dbg !764

for.body:                                         ; preds = %entry, %for.inc
  %prealloc.015 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %i.014 = phi i32 [ 1, %entry ], [ %inc6, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %prealloc.015, metadata !762, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i32 %i.014, metadata !761, metadata !DIExpression()), !dbg !763
  %inc = add nuw nsw i32 %prealloc.015, 1, !dbg !766
  call void @llvm.dbg.value(metadata i32 %inc, metadata !762, metadata !DIExpression()), !dbg !763
  %exitcond = icmp eq i32 %i.014, %1, !dbg !770
  br i1 %exitcond, label %if.then, label %if.end, !dbg !771

if.then:                                          ; preds = %for.body
  %gcov_ctr7 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.52, i64 0, i64 1), align 8, !dbg !772
  %2 = add i64 %gcov_ctr7, 1, !dbg !772
  store i64 %2, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.52, i64 0, i64 1), align 8, !dbg !772
  br label %for.end, !dbg !772

if.end:                                           ; preds = %for.body
  %call = tail call fastcc i32 @do_slabs_newslab(i32 noundef %i.014) #13, !dbg !773
  %cmp2 = icmp eq i32 %call, 0, !dbg !775
  br i1 %cmp2, label %if.then3, label %for.inc, !dbg !776

if.then3:                                         ; preds = %if.end
  %gcov_ctr8 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.52, i64 0, i64 2), align 16, !dbg !777
  %3 = add i64 %gcov_ctr8, 1, !dbg !777
  store i64 %3, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.52, i64 0, i64 2), align 16, !dbg !777
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !777, !tbaa !282
  %5 = load i32, i32* @power_largest, align 4, !dbg !779, !tbaa !315
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([121 x i8], [121 x i8]* @.str.12, i64 0, i64 0), i32 noundef %5) #14, !dbg !780
  tail call void @exit(i32 noundef 1) #17, !dbg !781
  unreachable, !dbg !781

for.inc:                                          ; preds = %if.end
  %gcov_ctr9 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.52, i64 0, i64 3), align 8, !dbg !782
  %6 = add i64 %gcov_ctr9, 1, !dbg !782
  store i64 %6, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.52, i64 0, i64 3), align 8, !dbg !782
  %inc6 = add nuw nsw i32 %i.014, 1, !dbg !782
  call void @llvm.dbg.value(metadata i32 %inc, metadata !762, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i32 %inc6, metadata !761, metadata !DIExpression()), !dbg !763
  %exitcond16.not = icmp eq i32 %inc, 63, !dbg !783
  br i1 %exitcond16.not, label %for.end, label %for.body, !dbg !764, !llvm.loop !784

for.end:                                          ; preds = %for.inc, %if.then
  ret void, !dbg !786
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @slabs_prefill_global() local_unnamed_addr #4 !dbg !787 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.53, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.53, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i32 undef, metadata !793, metadata !DIExpression()), !dbg !794
  %1 = load i64, i64* @mem_malloced, align 8, !dbg !795, !tbaa !477
  %2 = load i64, i64* @mem_limit, align 8, !dbg !796, !tbaa !477
  %cmp12 = icmp ult i64 %1, %2, !dbg !797
  br i1 %cmp12, label %land.rhs.lr.ph, label %while.end, !dbg !798

land.rhs.lr.ph:                                   ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 24), align 4, !dbg !799, !tbaa !542
  call void @llvm.dbg.value(metadata i32 %3, metadata !793, metadata !DIExpression()), !dbg !794
  %conv = sext i32 %3 to i64
  br label %land.rhs, !dbg !798

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %gcov_ctr5 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.53, i64 0, i64 1), align 8, !dbg !800
  %4 = add i64 %gcov_ctr5, 1, !dbg !800
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.53, i64 0, i64 1), align 8, !dbg !800
  %call = tail call fastcc i8* @memory_allocate(i64 noundef %conv) #13, !dbg !801
  call void @llvm.dbg.value(metadata i8* %call, metadata !791, metadata !DIExpression()), !dbg !794
  %cmp1.not = icmp eq i8* %call, null, !dbg !802
  br i1 %cmp1.not, label %while.end, label %while.body, !dbg !803

while.body:                                       ; preds = %land.rhs
  %gcov_ctr6 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.53, i64 0, i64 2), align 16, !dbg !804
  %5 = add i64 %gcov_ctr6, 1, !dbg !804
  store i64 %5, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.53, i64 0, i64 2), align 16, !dbg !804
  %call3 = tail call fastcc i32 @grow_slab_list(i32 noundef 0) #13, !dbg !804
  %call4 = tail call i8* @memset(i8* noundef nonnull %call, i32 noundef 0, i64 noundef 48) #14, !dbg !806
  %6 = load i8**, i8*** getelementptr inbounds ([64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 0, i32 5), align 8, !dbg !807, !tbaa !359
  %7 = load i32, i32* getelementptr inbounds ([64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 0, i32 4), align 4, !dbg !808, !tbaa !361
  %inc = add i32 %7, 1, !dbg !808
  store i32 %inc, i32* getelementptr inbounds ([64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 0, i32 4), align 4, !dbg !808, !tbaa !361
  %idxprom = zext i32 %7 to i64, !dbg !809
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom, !dbg !809
  store i8* %call, i8** %arrayidx, align 8, !dbg !810, !tbaa !282
  %8 = load i64, i64* @mem_malloced, align 8, !dbg !795, !tbaa !477
  %9 = load i64, i64* @mem_limit, align 8, !dbg !796, !tbaa !477
  %cmp = icmp ult i64 %8, %9, !dbg !797
  br i1 %cmp, label %land.rhs, label %while.end, !dbg !798, !llvm.loop !811

while.end:                                        ; preds = %land.rhs, %while.body, %entry
  ret void, !dbg !813
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @memory_allocate(i64 noundef %size) unnamed_addr #4 !dbg !814 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !818, metadata !DIExpression()), !dbg !820
  %0 = load i8*, i8** @mem_base, align 8, !dbg !821, !tbaa !282
  %cmp = icmp eq i8* %0, null, !dbg !823
  br i1 %cmp, label %if.then, label %if.else, !dbg !824

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.54, i64 0, i64 0), align 16, !dbg !825
  %1 = add i64 %gcov_ctr, 1, !dbg !825
  store i64 %1, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.54, i64 0, i64 0), align 16, !dbg !825
  %call = tail call noalias i8* @malloc(i64 noundef %size) #14, !dbg !827
  call void @llvm.dbg.value(metadata i8* %call, metadata !819, metadata !DIExpression()), !dbg !820
  br label %cleanup, !dbg !828

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** @mem_current, align 8, !dbg !829, !tbaa !282
  call void @llvm.dbg.value(metadata i8* %2, metadata !819, metadata !DIExpression()), !dbg !820
  %3 = load i64, i64* @mem_avail, align 8, !dbg !831, !tbaa !477
  %cmp1 = icmp ult i64 %3, %size, !dbg !833
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !834

if.end:                                           ; preds = %if.else
  %rem = and i64 %size, 7, !dbg !835
  %tobool.not = icmp eq i64 %rem, 0, !dbg !835
  br i1 %tobool.not, label %if.end5, label %if.then3, !dbg !837

if.then3:                                         ; preds = %if.end
  %gcov_ctr14 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.54, i64 0, i64 2), align 16, !dbg !838
  %4 = add i64 %gcov_ctr14, 1, !dbg !838
  store i64 %4, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.54, i64 0, i64 2), align 16, !dbg !838
  %sub = add i64 %size, 8, !dbg !840
  %add = and i64 %sub, -8, !dbg !841
  call void @llvm.dbg.value(metadata i64 %add, metadata !818, metadata !DIExpression()), !dbg !820
  br label %if.end5, !dbg !842

if.end5:                                          ; preds = %if.then3, %if.end
  %size.addr.0 = phi i64 [ %add, %if.then3 ], [ %size, %if.end ]
  call void @llvm.dbg.value(metadata i64 %size.addr.0, metadata !818, metadata !DIExpression()), !dbg !820
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %size.addr.0, !dbg !843
  store i8* %add.ptr, i8** @mem_current, align 8, !dbg !844, !tbaa !282
  %cmp6 = icmp ugt i64 %3, %size.addr.0, !dbg !845
  br i1 %cmp6, label %if.then7, label %if.else9, !dbg !847

if.then7:                                         ; preds = %if.end5
  %gcov_ctr15 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.54, i64 0, i64 3), align 8, !dbg !848
  %5 = add i64 %gcov_ctr15, 1, !dbg !848
  store i64 %5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.54, i64 0, i64 3), align 8, !dbg !848
  %sub8 = sub i64 %3, %size.addr.0, !dbg !850
  store i64 %sub8, i64* @mem_avail, align 8, !dbg !850, !tbaa !477
  br label %cleanup, !dbg !851

if.else9:                                         ; preds = %if.end5
  %gcov_ctr16 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.54, i64 0, i64 4), align 16, !dbg !852
  %6 = add i64 %gcov_ctr16, 1, !dbg !852
  store i64 %6, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.54, i64 0, i64 4), align 16, !dbg !852
  store i64 0, i64* @mem_avail, align 8, !dbg !852, !tbaa !477
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.else9, %if.then7, %if.else
  %mem_malloced.sink26 = phi i64* [ getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.54, i64 0, i64 1), %if.else ], [ @mem_malloced, %if.then7 ], [ @mem_malloced, %if.else9 ], [ @mem_malloced, %if.then ]
  %size.addr.1.sink = phi i64 [ 1, %if.else ], [ %size.addr.0, %if.then7 ], [ %size.addr.0, %if.else9 ], [ %size, %if.then ]
  %retval.0 = phi i8* [ null, %if.else ], [ %2, %if.then7 ], [ %2, %if.else9 ], [ %call, %if.then ], !dbg !820
  %7 = load i64, i64* %mem_malloced.sink26, align 8, !dbg !820
  %add12 = add i64 %7, %size.addr.1.sink, !dbg !820
  store i64 %add12, i64* %mem_malloced.sink26, align 8, !dbg !820
  ret i8* %retval.0, !dbg !854
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_slab_stats_automove(%struct.slab_stats_automove* nocapture noundef writeonly %am) local_unnamed_addr #4 !dbg !855 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.55, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.55, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.slab_stats_automove* %am, metadata !867, metadata !DIExpression()), !dbg !874
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !875
  call void @llvm.dbg.value(metadata i32 0, metadata !868, metadata !DIExpression()), !dbg !874
  br label %for.body, !dbg !876

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !868, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata !DIArgList([64 x %struct.slabclass_t]* @slabclass, i64 %indvars.iv), metadata !869, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !877
  call void @llvm.dbg.value(metadata !DIArgList(%struct.slab_stats_automove* %am, i64 %indvars.iv), metadata !873, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !877
  %perslab = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %indvars.iv, i32 1, !dbg !878
  %1 = load i32, i32* %perslab, align 4, !dbg !878, !tbaa !546
  %chunks_per_page = getelementptr inbounds %struct.slab_stats_automove, %struct.slab_stats_automove* %am, i64 %indvars.iv, i32 0, !dbg !879
  store i32 %1, i32* %chunks_per_page, align 8, !dbg !880, !tbaa !881
  %sl_curr = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %indvars.iv, i32 3, !dbg !883
  %free_chunks = getelementptr inbounds %struct.slab_stats_automove, %struct.slab_stats_automove* %am, i64 %indvars.iv, i32 2, !dbg !884
  %2 = bitcast i32* %sl_curr to <2 x i32>*, !dbg !883
  %3 = load <2 x i32>, <2 x i32>* %2, align 8, !dbg !883, !tbaa !315
  %4 = zext <2 x i32> %3 to <2 x i64>, !dbg !885
  %5 = bitcast i64* %free_chunks to <2 x i64>*, !dbg !886
  store <2 x i64> %4, <2 x i64>* %5, align 8, !dbg !886, !tbaa !477
  %size = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %indvars.iv, i32 0, !dbg !887
  %6 = load i32, i32* %size, align 8, !dbg !887, !tbaa !310
  %chunk_size = getelementptr inbounds %struct.slab_stats_automove, %struct.slab_stats_automove* %am, i64 %indvars.iv, i32 1, !dbg !888
  store i32 %6, i32* %chunk_size, align 4, !dbg !889, !tbaa !890
  %gcov_ctr5 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.55, i64 0, i64 1), align 8, !dbg !891
  %7 = add i64 %gcov_ctr5, 1, !dbg !891
  store i64 %7, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.55, i64 0, i64 1), align 8, !dbg !891
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !891
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !868, metadata !DIExpression()), !dbg !874
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64, !dbg !892
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !876, !llvm.loop !893

for.end:                                          ; preds = %for.body
  %call4 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !895
  ret void, !dbg !896
}

; Function Attrs: nounwind
declare !dbg !897 dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !902 dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @global_page_pool_size(i8* noundef writeonly %mem_flag) local_unnamed_addr #4 !dbg !903 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.56, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.56, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %mem_flag, metadata !908, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i32 0, metadata !909, metadata !DIExpression()), !dbg !910
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !911
  %cmp.not = icmp eq i8* %mem_flag, null, !dbg !912
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !914

if.then:                                          ; preds = %entry
  %gcov_ctr3 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.56, i64 0, i64 1), align 8, !dbg !915
  %1 = add i64 %gcov_ctr3, 1, !dbg !915
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.56, i64 0, i64 1), align 8, !dbg !915
  %2 = load i64, i64* @mem_malloced, align 8, !dbg !915, !tbaa !477
  %3 = load i64, i64* @mem_limit, align 8, !dbg !916, !tbaa !477
  %cmp1 = icmp uge i64 %2, %3, !dbg !917
  %frombool = zext i1 %cmp1 to i8, !dbg !918
  store i8 %frombool, i8* %mem_flag, align 1, !dbg !918, !tbaa !919
  br label %if.end, !dbg !920

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* getelementptr inbounds ([64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 0, i32 4), align 4, !dbg !921, !tbaa !361
  call void @llvm.dbg.value(metadata i32 %4, metadata !909, metadata !DIExpression()), !dbg !910
  %call2 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !922
  ret i32 %4, !dbg !923
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @slabs_alloc(i64 noundef %size, i32 noundef %id, i32 noundef %flags) local_unnamed_addr #4 !dbg !924 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.57, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.57, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i64 %size, metadata !928, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata i32 %id, metadata !929, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata i32 %flags, metadata !930, metadata !DIExpression()), !dbg !932
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !933
  %call1 = tail call fastcc i8* @do_slabs_alloc(i64 noundef %size, i32 noundef %id, i32 noundef %flags) #13, !dbg !934
  call void @llvm.dbg.value(metadata i8* %call1, metadata !931, metadata !DIExpression()), !dbg !932
  %call2 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !935
  ret i8* %call1, !dbg !936
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @do_slabs_alloc(i64 noundef %size, i32 noundef %id, i32 noundef %flags) unnamed_addr #4 !dbg !937 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !941, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i32 %id, metadata !942, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i32 %flags, metadata !943, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i8* null, metadata !945, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !946, metadata !DIExpression()), !dbg !947
  %cmp = icmp eq i32 %id, 0, !dbg !948
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !950

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 0), align 16, !dbg !951
  %0 = add i64 %gcov_ctr, 1, !dbg !951
  store i64 %0, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 0), align 16, !dbg !951
  %1 = load i32, i32* @power_largest, align 4, !dbg !952, !tbaa !315
  %cmp1 = icmp ult i32 %1, %id, !dbg !953
  br i1 %cmp1, label %if.then, label %if.end, !dbg !954

if.then:                                          ; preds = %lor.lhs.false, %entry
  %gcov_ctr44 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 1), align 8, !dbg !955
  %2 = add i64 %gcov_ctr44, 1, !dbg !955
  store i64 %2, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 1), align 8, !dbg !955
  br label %cleanup, !dbg !955

if.end:                                           ; preds = %lor.lhs.false
  %idxprom = zext i32 %id to i64, !dbg !957
  call void @llvm.dbg.value(metadata !DIArgList([64 x %struct.slabclass_t]* @slabclass, i64 %idxprom), metadata !944, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !947
  %sl_curr = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 3, !dbg !958
  %3 = load i32, i32* %sl_curr, align 8, !dbg !958, !tbaa !404
  %cmp2 = icmp eq i32 %3, 0, !dbg !958
  br i1 %cmp2, label %if.end5, label %lor.lhs.false3, !dbg !958

lor.lhs.false3:                                   ; preds = %if.end
  %gcov_ctr45 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 2), align 16, !dbg !958
  %4 = add i64 %gcov_ctr45, 1, !dbg !958
  store i64 %4, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 2), align 16, !dbg !958
  %slots = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 2, !dbg !958
  %5 = bitcast i8** %slots to %struct._stritem**, !dbg !958
  %6 = load %struct._stritem*, %struct._stritem** %5, align 8, !dbg !958, !tbaa !389
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %6, i64 0, i32 7, !dbg !958
  %7 = load i16, i16* %it_flags, align 2, !dbg !958, !tbaa !381
  %8 = and i16 %7, 4, !dbg !958
  %tobool.not = icmp eq i16 %8, 0, !dbg !958
  br i1 %tobool.not, label %if.else, label %if.end5.thread, !dbg !961

if.else:                                          ; preds = %lor.lhs.false3
  %gcov_ctr46 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 3), align 8, !dbg !958
  %9 = add i64 %gcov_ctr46, 1, !dbg !958
  store i64 %9, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 3), align 8, !dbg !958
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 noundef 417, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.do_slabs_alloc, i64 0, i64 0)) #17, !dbg !958
  unreachable, !dbg !958

if.end5:                                          ; preds = %if.end
  %size6 = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 0, !dbg !962
  %10 = load i32, i32* %size6, align 8, !dbg !962, !tbaa !310
  %conv7 = zext i32 %10 to i64, !dbg !962
  %cmp8.not = icmp ult i64 %conv7, %size, !dbg !962
  br i1 %cmp8.not, label %if.else11, label %land.lhs.true, !dbg !965

if.end5.thread:                                   ; preds = %lor.lhs.false3
  %size673 = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 0, !dbg !962
  %11 = load i32, i32* %size673, align 8, !dbg !962, !tbaa !310
  %conv774 = zext i32 %11 to i64, !dbg !962
  %cmp8.not75 = icmp ult i64 %conv774, %size, !dbg !962
  br i1 %cmp8.not75, label %if.else11, label %if.then23, !dbg !965

if.else11:                                        ; preds = %if.end5.thread, %if.end5
  %gcov_ctr47 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 4), align 16, !dbg !962
  %12 = add i64 %gcov_ctr47, 1, !dbg !962
  store i64 %12, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 4), align 16, !dbg !962
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 noundef 419, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.do_slabs_alloc, i64 0, i64 0)) #17, !dbg !962
  unreachable, !dbg !962

land.lhs.true:                                    ; preds = %if.end5
  %gcov_ctr48 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 5), align 8, !dbg !966
  %13 = add i64 %gcov_ctr48, 1, !dbg !966
  store i64 %13, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 5), align 8, !dbg !966
  %cmp16.not = icmp eq i32 %flags, 1, !dbg !968
  br i1 %cmp16.not, label %if.else40, label %if.end19, !dbg !969

if.end19:                                         ; preds = %land.lhs.true
  %gcov_ctr49 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 6), align 16, !dbg !970
  %14 = add i64 %gcov_ctr49, 1, !dbg !970
  store i64 %14, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 6), align 16, !dbg !970
  %call = tail call fastcc i32 @do_slabs_newslab(i32 noundef %id) #13, !dbg !972
  %.pre = load i32, i32* %sl_curr, align 8, !dbg !973, !tbaa !404
  %cmp21.not = icmp eq i32 %.pre, 0, !dbg !975
  br i1 %cmp21.not, label %if.else40, label %if.then23, !dbg !976

if.then23:                                        ; preds = %if.end5.thread, %if.end19
  %15 = phi i32 [ %.pre, %if.end19 ], [ %3, %if.end5.thread ]
  %slots24 = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 2, !dbg !977
  %16 = load i8*, i8** %slots24, align 8, !dbg !977, !tbaa !389
  call void @llvm.dbg.value(metadata i8* %16, metadata !946, metadata !DIExpression()), !dbg !947
  %next = bitcast i8* %16 to %struct._stritem**, !dbg !979
  %17 = bitcast i8* %16 to i8**, !dbg !979
  %18 = load i8*, i8** %17, align 8, !dbg !979, !tbaa !282
  store i8* %18, i8** %slots24, align 8, !dbg !980, !tbaa !389
  %19 = load %struct._stritem*, %struct._stritem** %next, align 8, !dbg !981, !tbaa !282
  %tobool27.not = icmp eq %struct._stritem* %19, null, !dbg !983
  br i1 %tobool27.not, label %if.then39, label %if.then28, !dbg !984

if.then28:                                        ; preds = %if.then23
  %gcov_ctr50 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 7), align 8, !dbg !985
  %20 = add i64 %gcov_ctr50, 1, !dbg !985
  store i64 %20, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 7), align 8, !dbg !985
  %21 = load %struct._stritem*, %struct._stritem** %next, align 8, !dbg !986, !tbaa !282
  %prev = getelementptr inbounds %struct._stritem, %struct._stritem* %21, i64 0, i32 1, !dbg !987
  store %struct._stritem* null, %struct._stritem** %prev, align 8, !dbg !988, !tbaa !282
  br label %if.then39, !dbg !985

if.then39:                                        ; preds = %if.then28, %if.then23
  %it_flags31 = getelementptr inbounds i8, i8* %16, i64 38, !dbg !989
  %22 = bitcast i8* %it_flags31 to i16*, !dbg !989
  %23 = load i16, i16* %22, align 2, !dbg !990, !tbaa !381
  %24 = and i16 %23, -5, !dbg !990
  store i16 %24, i16* %22, align 2, !dbg !990, !tbaa !381
  %refcount = getelementptr inbounds i8, i8* %16, i64 36, !dbg !991
  %25 = bitcast i8* %refcount to i16*, !dbg !991
  store i16 1, i16* %25, align 4, !dbg !992, !tbaa !381
  %dec = add i32 %15, -1, !dbg !993
  store i32 %dec, i32* %sl_curr, align 8, !dbg !993, !tbaa !404
  call void @llvm.dbg.value(metadata i8* %16, metadata !945, metadata !DIExpression()), !dbg !947
  %gcov_ctr52 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 9), align 8, !dbg !994
  %26 = add i64 %gcov_ctr52, 1, !dbg !994
  store i64 %26, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 9), align 8, !dbg !994
  br label %cleanup, !dbg !994

if.else40:                                        ; preds = %land.lhs.true, %if.end19
  %gcov_ctr51 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 8), align 16, !dbg !997
  %27 = add i64 %gcov_ctr51, 1, !dbg !997
  store i64 %27, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 8), align 16, !dbg !997
  call void @llvm.dbg.value(metadata i8* %16, metadata !945, metadata !DIExpression()), !dbg !947
  %gcov_ctr53 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 10), align 16
  %28 = add i64 %gcov_ctr53, 1
  store i64 %28, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 10), align 16
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.else40, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.else40 ], [ %16, %if.then39 ], !dbg !947
  ret i8* %retval.0, !dbg !999
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @slabs_free(i8* noundef %ptr, i64 %size, i32 noundef %id) local_unnamed_addr #4 !dbg !1000 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.59, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.59, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1004, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i64 undef, metadata !1005, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i32 %id, metadata !1006, metadata !DIExpression()), !dbg !1007
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !1008
  tail call fastcc void @do_slabs_free(i8* noundef %ptr, i32 noundef %id) #13, !dbg !1009
  %call1 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !1010
  ret void, !dbg !1011
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @do_slabs_free(i8* noundef %ptr, i32 noundef %id) unnamed_addr #4 !dbg !1012 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1016, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i64 undef, metadata !1017, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i32 %id, metadata !1018, metadata !DIExpression()), !dbg !1021
  %cmp.not = icmp eq i32 %id, 0, !dbg !1022
  br i1 %cmp.not, label %if.else, label %land.lhs.true, !dbg !1022

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 0), align 16, !dbg !1022
  %0 = add i64 %gcov_ctr, 1, !dbg !1022
  store i64 %0, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 0), align 16, !dbg !1022
  %1 = load i32, i32* @power_largest, align 4, !dbg !1022, !tbaa !315
  %cmp1.not = icmp ult i32 %1, %id, !dbg !1022
  br i1 %cmp1.not, label %if.else, label %if.end5, !dbg !1025

if.else:                                          ; preds = %land.lhs.true, %entry
  %gcov_ctr20 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 1), align 8, !dbg !1022
  %2 = add i64 %gcov_ctr20, 1, !dbg !1022
  store i64 %2, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 1), align 8, !dbg !1022
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 noundef 502, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.do_slabs_free, i64 0, i64 0)) #17, !dbg !1022
  unreachable, !dbg !1022

if.end5:                                          ; preds = %land.lhs.true
  %gcov_ctr21 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 2), align 16, !dbg !1026
  %3 = add i64 %gcov_ctr21, 1, !dbg !1026
  store i64 %3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 2), align 16, !dbg !1026
  %idxprom = zext i32 %id to i64, !dbg !1028
  call void @llvm.dbg.value(metadata !DIArgList([64 x %struct.slabclass_t]* @slabclass, i64 %idxprom), metadata !1019, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1021
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1020, metadata !DIExpression()), !dbg !1021
  %it_flags = getelementptr inbounds i8, i8* %ptr, i64 38, !dbg !1029
  %4 = bitcast i8* %it_flags to i16*, !dbg !1029
  %5 = load i16, i16* %4, align 2, !dbg !1029, !tbaa !381
  %6 = and i16 %5, 32, !dbg !1031
  %cmp6 = icmp eq i16 %6, 0, !dbg !1032
  br i1 %cmp6, label %if.then8, label %if.else17, !dbg !1033

if.then8:                                         ; preds = %if.end5
  store i16 4, i16* %4, align 2, !dbg !1034, !tbaa !381
  %conv10 = trunc i32 %id to i8, !dbg !1036
  %7 = getelementptr inbounds i8, i8* %ptr, i64 40, !dbg !1037
  store i8 %conv10, i8* %7, align 8, !dbg !1038, !tbaa !351
  %prev = getelementptr inbounds i8, i8* %ptr, i64 8, !dbg !1039
  %8 = bitcast i8* %prev to %struct._stritem**, !dbg !1039
  store %struct._stritem* null, %struct._stritem** %8, align 8, !dbg !1040, !tbaa !282
  %slots = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 2, !dbg !1041
  %9 = bitcast i8** %slots to %struct._stritem**, !dbg !1041
  %10 = load %struct._stritem*, %struct._stritem** %9, align 8, !dbg !1041, !tbaa !389
  %next = bitcast i8* %ptr to %struct._stritem**, !dbg !1042
  store %struct._stritem* %10, %struct._stritem** %next, align 8, !dbg !1043, !tbaa !282
  %tobool.not = icmp eq %struct._stritem* %10, null, !dbg !1044
  br i1 %tobool.not, label %if.end15, label %if.then12, !dbg !1046

if.then12:                                        ; preds = %if.then8
  %gcov_ctr22 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 3), align 8, !dbg !1047
  %11 = add i64 %gcov_ctr22, 1, !dbg !1047
  store i64 %11, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 3), align 8, !dbg !1047
  %12 = load %struct._stritem*, %struct._stritem** %next, align 8, !dbg !1048, !tbaa !282
  %prev14 = getelementptr inbounds %struct._stritem, %struct._stritem* %12, i64 0, i32 1, !dbg !1049
  %13 = bitcast %struct._stritem** %prev14 to i8**, !dbg !1050
  store i8* %ptr, i8** %13, align 8, !dbg !1050, !tbaa !282
  br label %if.end15, !dbg !1051

if.end15:                                         ; preds = %if.then12, %if.then8
  %gcov_ctr23 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 4), align 16, !dbg !1052
  %14 = add i64 %gcov_ctr23, 1, !dbg !1052
  store i64 %14, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 4), align 16, !dbg !1052
  store i8* %ptr, i8** %slots, align 8, !dbg !1053, !tbaa !389
  %sl_curr = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 3, !dbg !1054
  %15 = load i32, i32* %sl_curr, align 8, !dbg !1055, !tbaa !404
  %inc = add i32 %15, 1, !dbg !1055
  store i32 %inc, i32* %sl_curr, align 8, !dbg !1055, !tbaa !404
  br label %cleanup, !dbg !1056

if.else17:                                        ; preds = %if.end5
  %16 = bitcast i8* %ptr to %struct._stritem*, !dbg !1057
  call void @llvm.dbg.value(metadata %struct._stritem* %16, metadata !1020, metadata !DIExpression()), !dbg !1021
  %gcov_ctr24 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 5), align 8, !dbg !1058
  %17 = add i64 %gcov_ctr24, 1, !dbg !1058
  store i64 %17, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 5), align 8, !dbg !1058
  tail call fastcc void @do_slabs_free_chunked(%struct._stritem* noundef %16) #13, !dbg !1060
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.else17
  ret void, !dbg !1061
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @slabs_stats(void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, i8* noundef %c) local_unnamed_addr #4 !dbg !1062 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.61, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.61, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata void (i8*, i16, i8*, i32, i8*)* %add_stats, metadata !1073, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i8* %c, metadata !1074, metadata !DIExpression()), !dbg !1075
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !1076
  tail call fastcc void @do_slabs_stats(void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, i8* noundef %c) #13, !dbg !1077
  %call1 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !1078
  ret void, !dbg !1079
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @do_slabs_stats(void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, i8* noundef %c) unnamed_addr #4 !dbg !1080 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 0), align 16
  %thread_stats = alloca %struct.thread_stats, align 8
  %key_str = alloca [128 x i8], align 16
  %val_str = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata void (i8*, i16, i8*, i32, i8*)* %add_stats, metadata !1082, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i8* %c, metadata !1083, metadata !DIExpression()), !dbg !1154
  %1 = bitcast %struct.thread_stats* %thread_stats to i8*, !dbg !1155
  call void @llvm.lifetime.start.p0i8(i64 6448, i8* nonnull %1) #15, !dbg !1155
  call void @llvm.dbg.declare(metadata %struct.thread_stats* %thread_stats, metadata !1086, metadata !DIExpression()), !dbg !1156
  call void @threadlocal_stats_aggregate(%struct.thread_stats* noundef nonnull %thread_stats) #14, !dbg !1157
  call void @llvm.dbg.value(metadata i32 0, metadata !1085, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i32 1, metadata !1084, metadata !DIExpression()), !dbg !1154
  %2 = load i32, i32* @power_largest, align 4, !dbg !1158, !tbaa !315
  %cmp.not239 = icmp slt i32 %2, 1, !dbg !1159
  br i1 %cmp.not239, label %for.end, label %for.body.lr.ph, !dbg !1160

for.body.lr.ph:                                   ; preds = %entry
  %3 = getelementptr inbounds [128 x i8], [128 x i8]* %key_str, i64 0, i64 0
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %val_str, i64 0, i64 0
  br label %for.body, !dbg !1160

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %5 = phi i32 [ %2, %for.body.lr.ph ], [ %21, %if.end ]
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %if.end ]
  %total.0240 = phi i32 [ 0, %for.body.lr.ph ], [ %total.1, %if.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1084, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i32 %total.0240, metadata !1085, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata !DIArgList([64 x %struct.slabclass_t]* @slabclass, i64 %indvars.iv), metadata !1139, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1161
  %slabs = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %indvars.iv, i32 4, !dbg !1162
  %6 = load i32, i32* %slabs, align 4, !dbg !1162, !tbaa !361
  %cmp1.not = icmp eq i32 %6, 0, !dbg !1163
  br i1 %cmp1.not, label %if.end, label %if.then, !dbg !1164

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata !DIArgList([64 x %struct.slabclass_t]* @slabclass, i64 %indvars.iv), metadata !1139, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1161
  %gcov_ctr133 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 1), align 8, !dbg !1165
  %7 = add i64 %gcov_ctr133, 1, !dbg !1165
  store i64 %7, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 1), align 8, !dbg !1165
  call void @llvm.dbg.value(metadata i32 %6, metadata !1146, metadata !DIExpression()), !dbg !1166
  %perslab4 = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %indvars.iv, i32 1, !dbg !1167
  %8 = load i32, i32* %perslab4, align 4, !dbg !1167, !tbaa !546
  call void @llvm.dbg.value(metadata i32 %8, metadata !1143, metadata !DIExpression()), !dbg !1166
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #15, !dbg !1168
  call void @llvm.dbg.declare(metadata [128 x i8]* %key_str, metadata !1147, metadata !DIExpression()), !dbg !1169
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #15, !dbg !1170
  call void @llvm.dbg.declare(metadata [128 x i8]* %val_str, metadata !1151, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i32 0, metadata !1152, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 0, metadata !1153, metadata !DIExpression()), !dbg !1166
  %9 = trunc i64 %indvars.iv to i32, !dbg !1172
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %9, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0)) #14, !dbg !1172
  call void @llvm.dbg.value(metadata i32 %call, metadata !1152, metadata !DIExpression()), !dbg !1166
  %size = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %indvars.iv, i32 0, !dbg !1172
  %10 = load i32, i32* %size, align 8, !dbg !1172, !tbaa !310
  %call6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 noundef %10) #14, !dbg !1172
  call void @llvm.dbg.value(metadata i32 %call6, metadata !1153, metadata !DIExpression()), !dbg !1166
  %conv = trunc i32 %call to i16, !dbg !1172
  call void %add_stats(i8* noundef nonnull %3, i16 noundef zeroext %conv, i8* noundef nonnull %4, i32 noundef %call6, i8* noundef %c) #14, !dbg !1172
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %9, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0)) #14, !dbg !1173
  call void @llvm.dbg.value(metadata i32 %call10, metadata !1152, metadata !DIExpression()), !dbg !1166
  %call12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 noundef %8) #14, !dbg !1173
  call void @llvm.dbg.value(metadata i32 %call12, metadata !1153, metadata !DIExpression()), !dbg !1166
  %conv14 = trunc i32 %call10 to i16, !dbg !1173
  call void %add_stats(i8* noundef nonnull %3, i16 noundef zeroext %conv14, i8* noundef nonnull %4, i32 noundef %call12, i8* noundef %c) #14, !dbg !1173
  %call17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %9, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #14, !dbg !1174
  call void @llvm.dbg.value(metadata i32 %call17, metadata !1152, metadata !DIExpression()), !dbg !1166
  %call19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 noundef %6) #14, !dbg !1174
  call void @llvm.dbg.value(metadata i32 %call19, metadata !1153, metadata !DIExpression()), !dbg !1166
  %conv21 = trunc i32 %call17 to i16, !dbg !1174
  call void %add_stats(i8* noundef nonnull %3, i16 noundef zeroext %conv21, i8* noundef nonnull %4, i32 noundef %call19, i8* noundef %c) #14, !dbg !1174
  %call24 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %9, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0)) #14, !dbg !1175
  call void @llvm.dbg.value(metadata i32 %call24, metadata !1152, metadata !DIExpression()), !dbg !1166
  %mul = mul i32 %8, %6, !dbg !1175
  %call26 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 noundef %mul) #14, !dbg !1175
  call void @llvm.dbg.value(metadata i32 %call26, metadata !1153, metadata !DIExpression()), !dbg !1166
  %conv28 = trunc i32 %call24 to i16, !dbg !1175
  call void %add_stats(i8* noundef nonnull %3, i16 noundef zeroext %conv28, i8* noundef nonnull %4, i32 noundef %call26, i8* noundef %c) #14, !dbg !1175
  %call31 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %9, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0)) #14, !dbg !1176
  call void @llvm.dbg.value(metadata i32 %call31, metadata !1152, metadata !DIExpression()), !dbg !1166
  %sl_curr = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %indvars.iv, i32 3, !dbg !1176
  %11 = load i32, i32* %sl_curr, align 8, !dbg !1176, !tbaa !404
  %sub = sub i32 %mul, %11, !dbg !1176
  %call34 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 noundef %sub) #14, !dbg !1176
  call void @llvm.dbg.value(metadata i32 %call34, metadata !1153, metadata !DIExpression()), !dbg !1166
  %conv36 = trunc i32 %call31 to i16, !dbg !1176
  call void %add_stats(i8* noundef nonnull %3, i16 noundef zeroext %conv36, i8* noundef nonnull %4, i32 noundef %call34, i8* noundef %c) #14, !dbg !1176
  %call39 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %9, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #14, !dbg !1177
  call void @llvm.dbg.value(metadata i32 %call39, metadata !1152, metadata !DIExpression()), !dbg !1166
  %12 = load i32, i32* %sl_curr, align 8, !dbg !1177, !tbaa !404
  %call42 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 noundef %12) #14, !dbg !1177
  call void @llvm.dbg.value(metadata i32 %call42, metadata !1153, metadata !DIExpression()), !dbg !1166
  %conv44 = trunc i32 %call39 to i16, !dbg !1177
  call void %add_stats(i8* noundef nonnull %3, i16 noundef zeroext %conv44, i8* noundef nonnull %4, i32 noundef %call42, i8* noundef %c) #14, !dbg !1177
  %call47 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %9, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0)) #14, !dbg !1178
  call void @llvm.dbg.value(metadata i32 %call47, metadata !1152, metadata !DIExpression()), !dbg !1166
  %call49 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 noundef 0) #14, !dbg !1178
  call void @llvm.dbg.value(metadata i32 %call49, metadata !1153, metadata !DIExpression()), !dbg !1166
  %conv51 = trunc i32 %call47 to i16, !dbg !1178
  call void %add_stats(i8* noundef nonnull %3, i16 noundef zeroext %conv51, i8* noundef nonnull %4, i32 noundef %call49, i8* noundef %c) #14, !dbg !1178
  %call54 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %9, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0)) #14, !dbg !1179
  call void @llvm.dbg.value(metadata i32 %call54, metadata !1152, metadata !DIExpression()), !dbg !1166
  %get_hits = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %thread_stats, i64 0, i32 31, i64 %indvars.iv, i32 1, !dbg !1179
  %13 = load i64, i64* %get_hits, align 8, !dbg !1179, !tbaa !1180
  %call58 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i64 noundef %13) #14, !dbg !1179
  call void @llvm.dbg.value(metadata i32 %call58, metadata !1153, metadata !DIExpression()), !dbg !1166
  %conv60 = trunc i32 %call54 to i16, !dbg !1179
  call void %add_stats(i8* noundef nonnull %3, i16 noundef zeroext %conv60, i8* noundef nonnull %4, i32 noundef %call58, i8* noundef %c) #14, !dbg !1179
  %call63 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %9, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0)) #14, !dbg !1182
  call void @llvm.dbg.value(metadata i32 %call63, metadata !1152, metadata !DIExpression()), !dbg !1166
  %set_cmds = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %thread_stats, i64 0, i32 31, i64 %indvars.iv, i32 0, !dbg !1182
  %14 = load i64, i64* %set_cmds, align 8, !dbg !1182, !tbaa !1183
  %call68 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i64 noundef %14) #14, !dbg !1182
  call void @llvm.dbg.value(metadata i32 %call68, metadata !1153, metadata !DIExpression()), !dbg !1166
  %conv70 = trunc i32 %call63 to i16, !dbg !1182
  call void %add_stats(i8* noundef nonnull %3, i16 noundef zeroext %conv70, i8* noundef nonnull %4, i32 noundef %call68, i8* noundef %c) #14, !dbg !1182
  %call73 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %9, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #14, !dbg !1184
  call void @llvm.dbg.value(metadata i32 %call73, metadata !1152, metadata !DIExpression()), !dbg !1166
  %delete_hits = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %thread_stats, i64 0, i32 31, i64 %indvars.iv, i32 3, !dbg !1184
  %15 = load i64, i64* %delete_hits, align 8, !dbg !1184, !tbaa !1185
  %call78 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i64 noundef %15) #14, !dbg !1184
  call void @llvm.dbg.value(metadata i32 %call78, metadata !1153, metadata !DIExpression()), !dbg !1166
  %conv80 = trunc i32 %call73 to i16, !dbg !1184
  call void %add_stats(i8* noundef nonnull %3, i16 noundef zeroext %conv80, i8* noundef nonnull %4, i32 noundef %call78, i8* noundef %c) #14, !dbg !1184
  %call83 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %9, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)) #14, !dbg !1186
  call void @llvm.dbg.value(metadata i32 %call83, metadata !1152, metadata !DIExpression()), !dbg !1166
  %incr_hits = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %thread_stats, i64 0, i32 31, i64 %indvars.iv, i32 6, !dbg !1186
  %16 = load i64, i64* %incr_hits, align 8, !dbg !1186, !tbaa !1187
  %call88 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i64 noundef %16) #14, !dbg !1186
  call void @llvm.dbg.value(metadata i32 %call88, metadata !1153, metadata !DIExpression()), !dbg !1166
  %conv90 = trunc i32 %call83 to i16, !dbg !1186
  call void %add_stats(i8* noundef nonnull %3, i16 noundef zeroext %conv90, i8* noundef nonnull %4, i32 noundef %call88, i8* noundef %c) #14, !dbg !1186
  %call93 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %9, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)) #14, !dbg !1188
  call void @llvm.dbg.value(metadata i32 %call93, metadata !1152, metadata !DIExpression()), !dbg !1166
  %decr_hits = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %thread_stats, i64 0, i32 31, i64 %indvars.iv, i32 7, !dbg !1188
  %17 = load i64, i64* %decr_hits, align 8, !dbg !1188, !tbaa !1189
  %call98 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i64 noundef %17) #14, !dbg !1188
  call void @llvm.dbg.value(metadata i32 %call98, metadata !1153, metadata !DIExpression()), !dbg !1166
  %conv100 = trunc i32 %call93 to i16, !dbg !1188
  call void %add_stats(i8* noundef nonnull %3, i16 noundef zeroext %conv100, i8* noundef nonnull %4, i32 noundef %call98, i8* noundef %c) #14, !dbg !1188
  %call103 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %9, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0)) #14, !dbg !1190
  call void @llvm.dbg.value(metadata i32 %call103, metadata !1152, metadata !DIExpression()), !dbg !1166
  %cas_hits = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %thread_stats, i64 0, i32 31, i64 %indvars.iv, i32 4, !dbg !1190
  %18 = load i64, i64* %cas_hits, align 8, !dbg !1190, !tbaa !1191
  %call108 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i64 noundef %18) #14, !dbg !1190
  call void @llvm.dbg.value(metadata i32 %call108, metadata !1153, metadata !DIExpression()), !dbg !1166
  %conv110 = trunc i32 %call103 to i16, !dbg !1190
  call void %add_stats(i8* noundef nonnull %3, i16 noundef zeroext %conv110, i8* noundef nonnull %4, i32 noundef %call108, i8* noundef %c) #14, !dbg !1190
  %call113 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %9, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0)) #14, !dbg !1192
  call void @llvm.dbg.value(metadata i32 %call113, metadata !1152, metadata !DIExpression()), !dbg !1166
  %cas_badval = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %thread_stats, i64 0, i32 31, i64 %indvars.iv, i32 5, !dbg !1192
  %19 = load i64, i64* %cas_badval, align 8, !dbg !1192, !tbaa !1193
  %call118 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i64 noundef %19) #14, !dbg !1192
  call void @llvm.dbg.value(metadata i32 %call118, metadata !1153, metadata !DIExpression()), !dbg !1166
  %conv120 = trunc i32 %call113 to i16, !dbg !1192
  call void %add_stats(i8* noundef nonnull %3, i16 noundef zeroext %conv120, i8* noundef nonnull %4, i32 noundef %call118, i8* noundef %c) #14, !dbg !1192
  %call123 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %9, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)) #14, !dbg !1194
  call void @llvm.dbg.value(metadata i32 %call123, metadata !1152, metadata !DIExpression()), !dbg !1166
  %touch_hits = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %thread_stats, i64 0, i32 31, i64 %indvars.iv, i32 2, !dbg !1194
  %20 = load i64, i64* %touch_hits, align 8, !dbg !1194, !tbaa !1195
  %call128 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i64 noundef %20) #14, !dbg !1194
  call void @llvm.dbg.value(metadata i32 %call128, metadata !1153, metadata !DIExpression()), !dbg !1166
  %conv130 = trunc i32 %call123 to i16, !dbg !1194
  call void %add_stats(i8* noundef nonnull %3, i16 noundef zeroext %conv130, i8* noundef nonnull %4, i32 noundef %call128, i8* noundef %c) #14, !dbg !1194
  %inc = add nsw i32 %total.0240, 1, !dbg !1196
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1085, metadata !DIExpression()), !dbg !1154
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #15, !dbg !1197
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #15, !dbg !1197
  %.pre = load i32, i32* @power_largest, align 4, !dbg !1158, !tbaa !315
  br label %if.end, !dbg !1198

if.end:                                           ; preds = %if.then, %for.body
  %21 = phi i32 [ %.pre, %if.then ], [ %5, %for.body ], !dbg !1158
  %total.1 = phi i32 [ %inc, %if.then ], [ %total.0240, %for.body ], !dbg !1154
  call void @llvm.dbg.value(metadata i32 %total.1, metadata !1085, metadata !DIExpression()), !dbg !1154
  %gcov_ctr134 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 2), align 16, !dbg !1199
  %22 = add i64 %gcov_ctr134, 1, !dbg !1199
  store i64 %22, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 2), align 16, !dbg !1199
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1199
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1084, metadata !DIExpression()), !dbg !1154
  %23 = sext i32 %21 to i64, !dbg !1159
  %cmp.not.not = icmp slt i64 %indvars.iv, %23, !dbg !1159
  br i1 %cmp.not.not, label %for.body, label %for.end, !dbg !1160, !llvm.loop !1200

for.end:                                          ; preds = %if.end, %entry
  %total.0.lcssa = phi i32 [ 0, %entry ], [ %total.1, %if.end ], !dbg !1154
  %24 = bitcast i8* %c to %struct.conn*, !dbg !1202
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i32 noundef %total.0.lcssa) #14, !dbg !1202
  %25 = load i64, i64* @mem_malloced, align 8, !dbg !1203, !tbaa !477
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %24, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i64 noundef %25) #14, !dbg !1203
  call void %add_stats(i8* noundef null, i16 noundef zeroext 0, i8* noundef null, i32 noundef 0, i8* noundef %c) #14, !dbg !1204
  call void @llvm.lifetime.end.p0i8(i64 6448, i8* nonnull %1) #15, !dbg !1205
  ret void, !dbg !1205
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @slabs_adjust_mem_limit(i64 noundef %new_mem_limit) local_unnamed_addr #4 !dbg !1206 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.63, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.63, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i64 %new_mem_limit, metadata !1210, metadata !DIExpression()), !dbg !1212
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !1213
  %call1 = tail call fastcc zeroext i1 @do_slabs_adjust_mem_limit(i64 noundef %new_mem_limit) #13, !dbg !1214
  call void @llvm.dbg.value(metadata i1 %call1, metadata !1211, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1212
  %call2 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !1215
  ret i1 %call1, !dbg !1216
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @do_slabs_adjust_mem_limit(i64 noundef %new_mem_limit) unnamed_addr #4 !dbg !1217 {
entry:
  call void @llvm.dbg.value(metadata i64 %new_mem_limit, metadata !1219, metadata !DIExpression()), !dbg !1220
  %0 = load i8*, i8** @mem_base, align 8, !dbg !1221, !tbaa !282
  %cmp.not = icmp eq i8* %0, null, !dbg !1223
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1224

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 0), align 8, !dbg !1225
  %1 = add i64 %gcov_ctr, 1, !dbg !1225
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 0), align 8, !dbg !1225
  br label %return, !dbg !1225

if.end:                                           ; preds = %entry
  %gcov_ctr1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 1), align 8, !dbg !1226
  %2 = add i64 %gcov_ctr1, 1, !dbg !1226
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 1), align 8, !dbg !1226
  store i64 %new_mem_limit, i64* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 0), align 8, !dbg !1227, !tbaa !1228
  store i64 %new_mem_limit, i64* @mem_limit, align 8, !dbg !1229, !tbaa !477
  tail call fastcc void @memory_release() #13, !dbg !1230
  br label %return, !dbg !1231

return:                                           ; preds = %if.end, %if.then
  ret i1 %cmp.not, !dbg !1232
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @slabs_available_chunks(i32 noundef %id, i8* noundef writeonly %mem_flag, i32* noundef writeonly %chunks_perslab) local_unnamed_addr #4 !dbg !1233 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i32 %id, metadata !1238, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i8* %mem_flag, metadata !1239, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i32* %chunks_perslab, metadata !1240, metadata !DIExpression()), !dbg !1243
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !1244
  %idxprom = zext i32 %id to i64, !dbg !1245
  call void @llvm.dbg.value(metadata !DIArgList([64 x %struct.slabclass_t]* @slabclass, i64 %idxprom), metadata !1242, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1243
  %sl_curr = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 3, !dbg !1246
  %1 = load i32, i32* %sl_curr, align 8, !dbg !1246, !tbaa !404
  call void @llvm.dbg.value(metadata i32 %1, metadata !1241, metadata !DIExpression()), !dbg !1243
  %cmp.not = icmp eq i8* %mem_flag, null, !dbg !1247
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1249

if.then:                                          ; preds = %entry
  %gcov_ctr6 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 1), align 8, !dbg !1250
  %2 = add i64 %gcov_ctr6, 1, !dbg !1250
  store i64 %2, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 1), align 8, !dbg !1250
  %3 = load i64, i64* @mem_malloced, align 8, !dbg !1250, !tbaa !477
  %4 = load i64, i64* @mem_limit, align 8, !dbg !1251, !tbaa !477
  %cmp1 = icmp uge i64 %3, %4, !dbg !1252
  %frombool = zext i1 %cmp1 to i8, !dbg !1253
  store i8 %frombool, i8* %mem_flag, align 1, !dbg !1253, !tbaa !919
  br label %if.end, !dbg !1254

if.end:                                           ; preds = %if.then, %entry
  %cmp2.not = icmp eq i32* %chunks_perslab, null, !dbg !1255
  br i1 %cmp2.not, label %if.end4, label %if.then3, !dbg !1257

if.then3:                                         ; preds = %if.end
  %gcov_ctr7 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 2), align 16, !dbg !1258
  %5 = add i64 %gcov_ctr7, 1, !dbg !1258
  store i64 %5, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 2), align 16, !dbg !1258
  %perslab = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 1, !dbg !1259
  %6 = load i32, i32* %perslab, align 4, !dbg !1259, !tbaa !546
  store i32 %6, i32* %chunks_perslab, align 4, !dbg !1260, !tbaa !315
  br label %if.end4, !dbg !1261

if.end4:                                          ; preds = %if.then3, %if.end
  %call5 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !1262
  ret i32 %1, !dbg !1263
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @slabs_mlock() local_unnamed_addr #4 !dbg !1264 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 0), align 8, !dbg !1265
  %0 = add i64 %gcov_ctr, 1, !dbg !1265
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 0), align 8, !dbg !1265
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !1265
  ret void, !dbg !1266
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @slabs_munlock() local_unnamed_addr #4 !dbg !1267 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 0), align 8, !dbg !1268
  %0 = add i64 %gcov_ctr, 1, !dbg !1268
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 0), align 8, !dbg !1268
  %call = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !1268
  ret void, !dbg !1269
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @slabs_reassign(i32 noundef %src, i32 noundef %dst) local_unnamed_addr #4 !dbg !1270 {
entry:
  call void @llvm.dbg.value(metadata i32 %src, metadata !1274, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i32 %dst, metadata !1275, metadata !DIExpression()), !dbg !1277
  %call = tail call i32 @pthread_mutex_trylock(%union.pthread_mutex_t* noundef nonnull @slabs_rebalance_lock) #14, !dbg !1278
  %cmp.not = icmp eq i32 %call, 0, !dbg !1280
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1281

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 0), align 8, !dbg !1282
  %0 = add i64 %gcov_ctr, 1, !dbg !1282
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 0), align 8, !dbg !1282
  br label %cleanup, !dbg !1282

if.end:                                           ; preds = %entry
  %gcov_ctr3 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 1), align 8, !dbg !1284
  %1 = add i64 %gcov_ctr3, 1, !dbg !1284
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 1), align 8, !dbg !1284
  %call1 = tail call fastcc i32 @do_slabs_reassign(i32 noundef %src, i32 noundef %dst) #13, !dbg !1285
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1276, metadata !DIExpression()), !dbg !1277
  %call2 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_rebalance_lock) #14, !dbg !1286
  br label %cleanup, !dbg !1287

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %call1, %if.end ], !dbg !1277
  ret i32 %retval.0, !dbg !1288
}

; Function Attrs: nounwind
declare !dbg !1289 dso_local i32 @pthread_mutex_trylock(%union.pthread_mutex_t* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_slabs_reassign(i32 noundef %src, i32 noundef %dst) unnamed_addr #4 !dbg !1290 {
entry:
  call void @llvm.dbg.value(metadata i32 %src, metadata !1292, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %dst, metadata !1293, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 0, metadata !1294, metadata !DIExpression()), !dbg !1295
  %0 = load volatile i32, i32* @slab_rebalance_signal, align 4, !dbg !1296, !tbaa !315
  %cmp.not = icmp eq i32 %0, 0, !dbg !1298
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1299

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 0), align 16, !dbg !1300
  %1 = add i64 %gcov_ctr, 1, !dbg !1300
  store i64 %1, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 0), align 16, !dbg !1300
  br label %cleanup, !dbg !1300

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %src, %dst, !dbg !1301
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1303

if.then2:                                         ; preds = %if.end
  %gcov_ctr23 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 1), align 8, !dbg !1304
  %2 = add i64 %gcov_ctr23, 1, !dbg !1304
  store i64 %2, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 1), align 8, !dbg !1304
  br label %cleanup, !dbg !1304

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %src, -1, !dbg !1305
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1307

if.then5:                                         ; preds = %if.end3
  %gcov_ctr24 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 2), align 16, !dbg !1308
  %3 = add i64 %gcov_ctr24, 1, !dbg !1308
  store i64 %3, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 2), align 16, !dbg !1308
  %call = tail call fastcc i32 @slabs_reassign_pick_any(i32 noundef %dst) #13, !dbg !1310
  call void @llvm.dbg.value(metadata i32 %call, metadata !1292, metadata !DIExpression()), !dbg !1295
  br label %if.end6, !dbg !1311

if.end6:                                          ; preds = %if.then5, %if.end3
  %src.addr.0 = phi i32 [ %call, %if.then5 ], [ %src, %if.end3 ]
  call void @llvm.dbg.value(metadata i32 %src.addr.0, metadata !1292, metadata !DIExpression()), !dbg !1295
  %cmp7 = icmp slt i32 %src.addr.0, 0, !dbg !1312
  br i1 %cmp7, label %if.then13, label %lor.lhs.false, !dbg !1314

lor.lhs.false:                                    ; preds = %if.end6
  %gcov_ctr25 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 3), align 8, !dbg !1315
  %4 = add i64 %gcov_ctr25, 1, !dbg !1315
  store i64 %4, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 3), align 8, !dbg !1315
  %5 = load i32, i32* @power_largest, align 4, !dbg !1316, !tbaa !315
  %cmp8 = icmp sgt i32 %src.addr.0, %5, !dbg !1317
  br i1 %cmp8, label %if.then13, label %lor.lhs.false9, !dbg !1318

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %gcov_ctr26 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 4), align 16, !dbg !1319
  %6 = add i64 %gcov_ctr26, 1, !dbg !1319
  store i64 %6, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 4), align 16, !dbg !1319
  %cmp10 = icmp slt i32 %dst, 0, !dbg !1320
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11, !dbg !1321

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %gcov_ctr27 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 5), align 8, !dbg !1322
  %7 = add i64 %gcov_ctr27, 1, !dbg !1322
  store i64 %7, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 5), align 8, !dbg !1322
  %cmp12 = icmp slt i32 %5, %dst, !dbg !1323
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1324

if.then13:                                        ; preds = %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false, %if.end6
  %gcov_ctr28 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 6), align 16, !dbg !1325
  %8 = add i64 %gcov_ctr28, 1, !dbg !1325
  store i64 %8, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 6), align 16, !dbg !1325
  br label %cleanup, !dbg !1325

if.end14:                                         ; preds = %lor.lhs.false11
  %call15 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !1326
  %idxprom41 = zext i32 %src.addr.0 to i64, !dbg !1327
  %slabs = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom41, i32 4, !dbg !1329
  %9 = load i32, i32* %slabs, align 4, !dbg !1329, !tbaa !361
  %cmp16 = icmp ult i32 %9, 2, !dbg !1330
  br i1 %cmp16, label %if.then17, label %if.end21.critedge, !dbg !1331

if.then17:                                        ; preds = %if.end14
  %gcov_ctr29 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 7), align 8, !dbg !1332
  %10 = add i64 %gcov_ctr29, 1, !dbg !1332
  store i64 %10, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 7), align 8, !dbg !1332
  call void @llvm.dbg.value(metadata i8 1, metadata !1294, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 undef, metadata !1294, metadata !DIExpression()), !dbg !1295
  %call19 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !1333
  %gcov_ctr30 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 8), align 16, !dbg !1334
  %11 = add i64 %gcov_ctr30, 1, !dbg !1334
  store i64 %11, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 8), align 16, !dbg !1334
  br label %cleanup, !dbg !1334

if.end21.critedge:                                ; preds = %if.end14
  call void @llvm.dbg.value(metadata i8 undef, metadata !1294, metadata !DIExpression()), !dbg !1295
  %call19.c = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !1333
  %gcov_ctr31 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 9), align 8, !dbg !1336
  %12 = add i64 %gcov_ctr31, 1, !dbg !1336
  store i64 %12, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 9), align 8, !dbg !1336
  store i32 %src.addr.0, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 3), align 8, !dbg !1337, !tbaa !1338
  store i32 %dst, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 4), align 4, !dbg !1340, !tbaa !1341
  store volatile i32 1, i32* @slab_rebalance_signal, align 4, !dbg !1342, !tbaa !315
  %call22 = tail call i32 @pthread_cond_signal(%union.pthread_cond_t* noundef nonnull @slab_rebalance_cond) #14, !dbg !1343
  br label %cleanup, !dbg !1344

cleanup:                                          ; preds = %if.end21.critedge, %if.then17, %if.then13, %if.then2, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 4, %if.then2 ], [ 2, %if.then13 ], [ 3, %if.then17 ], [ 0, %if.end21.critedge ], !dbg !1295
  ret i32 %retval.0, !dbg !1345
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @slabs_rebalancer_pause() local_unnamed_addr #4 !dbg !1346 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 0), align 8, !dbg !1347
  %0 = add i64 %gcov_ctr, 1, !dbg !1347
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 0), align 8, !dbg !1347
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_rebalance_lock) #14, !dbg !1347
  ret void, !dbg !1348
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @slabs_rebalancer_resume() local_unnamed_addr #4 !dbg !1349 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 0), align 8, !dbg !1350
  %0 = add i64 %gcov_ctr, 1, !dbg !1350
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 0), align 8, !dbg !1350
  %call = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_rebalance_lock) #14, !dbg !1350
  ret void, !dbg !1351
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @start_slab_maintenance_thread() local_unnamed_addr #4 !dbg !1352 {
entry:
  store volatile i32 0, i32* @slab_rebalance_signal, align 4, !dbg !1357, !tbaa !315
  store i8* null, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 0), align 8, !dbg !1358, !tbaa !1359
  %call = tail call i32 @pthread_create(i64* noundef nonnull @rebalance_tid, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @slab_rebalance_thread, i8* noundef null) #14, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %call, metadata !1356, metadata !DIExpression()), !dbg !1362
  %cmp.not = icmp eq i32 %call, 0, !dbg !1363
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1364

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.72, i64 0, i64 0), align 8, !dbg !1365
  %0 = add i64 %gcov_ctr, 1, !dbg !1365
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.72, i64 0, i64 0), align 8, !dbg !1365
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1365, !tbaa !282
  %call1 = tail call i8* @strerror(i32 noundef %call) #14, !dbg !1367
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call1) #14, !dbg !1368
  br label %cleanup, !dbg !1369

if.end:                                           ; preds = %entry
  %gcov_ctr3 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.72, i64 0, i64 1), align 8, !dbg !1370
  %2 = add i64 %gcov_ctr3, 1, !dbg !1370
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.72, i64 0, i64 1), align 8, !dbg !1370
  br label %cleanup, !dbg !1370

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end ], !dbg !1362
  ret i32 %retval.0, !dbg !1371
}

; Function Attrs: nounwind
declare !dbg !1372 dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @slab_rebalance_thread(i8* nocapture noundef readnone %arg) #4 !dbg !1392 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i8* %arg, metadata !1394, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 0, metadata !1395, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 1, metadata !1396, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 1000, metadata !1397, metadata !DIExpression()), !dbg !1398
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_rebalance_lock) #14, !dbg !1399
  br label %while.cond, !dbg !1400

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %backoff_timer.0 = phi i32 [ 1, %entry ], [ %backoff_timer.3, %while.cond.backedge ], !dbg !1401
  %was_busy.0 = phi i32 [ 0, %entry ], [ %was_busy.245, %while.cond.backedge ], !dbg !1398
  call void @llvm.dbg.value(metadata i32 %was_busy.0, metadata !1395, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 %backoff_timer.0, metadata !1396, metadata !DIExpression()), !dbg !1398
  %1 = load volatile i32, i32* @slab_rebalance_signal, align 4, !dbg !1402, !tbaa !315
  %tobool.not = icmp eq i32 %1, 0, !dbg !1402
  br i1 %tobool.not, label %lor.rhs, label %while.body, !dbg !1403

lor.rhs:                                          ; preds = %while.cond
  %gcov_ctr27 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 1), align 8, !dbg !1404
  %2 = add i64 %gcov_ctr27, 1, !dbg !1404
  store i64 %2, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 1), align 8, !dbg !1404
  %3 = load volatile i32, i32* @do_run_slab_rebalance_thread, align 4, !dbg !1404, !tbaa !315
  %tobool1.not = icmp eq i32 %3, 0, !dbg !1403
  br i1 %tobool1.not, label %while.end, label %while.body, !dbg !1400

while.body:                                       ; preds = %while.cond, %lor.rhs
  %4 = load volatile i32, i32* @slab_rebalance_signal, align 4, !dbg !1405, !tbaa !315
  %cmp = icmp eq i32 %4, 1, !dbg !1408
  br i1 %cmp, label %if.then, label %if.else, !dbg !1409

if.then:                                          ; preds = %while.body
  %call2 = tail call fastcc i32 @slab_rebalance_start() #13, !dbg !1410
  %cmp3 = icmp slt i32 %call2, 0, !dbg !1413
  br i1 %cmp3, label %if.then4, label %if.end10.thread, !dbg !1414

if.then4:                                         ; preds = %if.then
  %gcov_ctr28 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 2), align 16, !dbg !1415
  %5 = add i64 %gcov_ctr28, 1, !dbg !1415
  store i64 %5, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 2), align 16, !dbg !1415
  store volatile i32 0, i32* @slab_rebalance_signal, align 4, !dbg !1415, !tbaa !315
  br label %if.end10.thread, !dbg !1417

if.else:                                          ; preds = %while.body
  %6 = load volatile i32, i32* @slab_rebalance_signal, align 4, !dbg !1418, !tbaa !315
  %tobool5.not = icmp eq i32 %6, 0, !dbg !1418
  br i1 %tobool5.not, label %if.end10, label %land.lhs.true, !dbg !1420

land.lhs.true:                                    ; preds = %if.else
  %gcov_ctr30 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 4), align 16, !dbg !1421
  %7 = add i64 %gcov_ctr30, 1, !dbg !1421
  store i64 %7, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 4), align 16, !dbg !1421
  %8 = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 0), align 8, !dbg !1421, !tbaa !1359
  %cmp6.not = icmp eq i8* %8, null, !dbg !1422
  br i1 %cmp6.not, label %if.end10, label %if.then7, !dbg !1423

if.then7:                                         ; preds = %land.lhs.true
  %gcov_ctr31 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 5), align 8, !dbg !1424
  %9 = add i64 %gcov_ctr31, 1, !dbg !1424
  store i64 %9, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 5), align 8, !dbg !1424
  %call8 = tail call fastcc i32 @slab_rebalance_move() #13, !dbg !1424
  call void @llvm.dbg.value(metadata i32 %call8, metadata !1395, metadata !DIExpression()), !dbg !1398
  br label %if.end10, !dbg !1426

if.end10:                                         ; preds = %if.else, %land.lhs.true, %if.then7
  %was_busy.1 = phi i32 [ %call8, %if.then7 ], [ %was_busy.0, %land.lhs.true ], [ %was_busy.0, %if.else ], !dbg !1398
  call void @llvm.dbg.value(metadata i32 %was_busy.1, metadata !1395, metadata !DIExpression()), !dbg !1398
  %gcov_ctr32 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 6), align 16
  %10 = add i64 %gcov_ctr32, 1
  store i64 %10, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 6), align 16
  %11 = load i8, i8* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 12), align 4, !dbg !1427, !tbaa !1429
  %tobool11.not = icmp eq i8 %11, 0, !dbg !1430
  br i1 %tobool11.not, label %if.else13, label %if.then12, !dbg !1431

if.end10.thread:                                  ; preds = %if.then, %if.then4
  %gcov_ctr29 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 3), align 8, !dbg !1432
  %12 = add i64 %gcov_ctr29, 1, !dbg !1432
  store i64 %12, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 3), align 8, !dbg !1432
  call void @llvm.dbg.value(metadata i32 %was_busy.1, metadata !1395, metadata !DIExpression()), !dbg !1398
  %13 = load i8, i8* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 12), align 4, !dbg !1427, !tbaa !1429
  %tobool11.not44 = icmp eq i8 %13, 0, !dbg !1430
  br i1 %tobool11.not44, label %if.end20, label %if.then12, !dbg !1431

if.then12:                                        ; preds = %if.end10.thread, %if.end10
  %was_busy.246 = phi i32 [ 0, %if.end10.thread ], [ %was_busy.1, %if.end10 ]
  tail call fastcc void @slab_rebalance_finish() #13, !dbg !1433
  br label %if.end21, !dbg !1435

if.else13:                                        ; preds = %if.end10
  %tobool14.not = icmp eq i32 %was_busy.1, 0, !dbg !1436
  br i1 %tobool14.not, label %if.end20, label %if.then15, !dbg !1438

if.then15:                                        ; preds = %if.else13
  %call16 = tail call i32 @usleep(i32 noundef %backoff_timer.0) #14, !dbg !1439
  %mul = shl nsw i32 %backoff_timer.0, 1, !dbg !1441
  call void @llvm.dbg.value(metadata i32 %mul, metadata !1396, metadata !DIExpression()), !dbg !1398
  %cmp17 = icmp sgt i32 %backoff_timer.0, 500, !dbg !1442
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !1444

if.then18:                                        ; preds = %if.then15
  %gcov_ctr33 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 7), align 8, !dbg !1445
  %14 = add i64 %gcov_ctr33, 1, !dbg !1445
  store i64 %14, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 7), align 8, !dbg !1445
  call void @llvm.dbg.value(metadata i32 1000, metadata !1396, metadata !DIExpression()), !dbg !1398
  br label %if.end19, !dbg !1446

if.end19:                                         ; preds = %if.then18, %if.then15
  %backoff_timer.1 = phi i32 [ 1000, %if.then18 ], [ %mul, %if.then15 ], !dbg !1447
  call void @llvm.dbg.value(metadata i32 %backoff_timer.1, metadata !1396, metadata !DIExpression()), !dbg !1398
  %gcov_ctr34 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 8), align 16, !dbg !1448
  %15 = add i64 %gcov_ctr34, 1, !dbg !1448
  store i64 %15, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 8), align 16, !dbg !1448
  br label %if.end20, !dbg !1448

if.end20:                                         ; preds = %if.end10.thread, %if.end19, %if.else13
  %was_busy.24750 = phi i32 [ %was_busy.1, %if.end19 ], [ 0, %if.else13 ], [ 0, %if.end10.thread ]
  %backoff_timer.2 = phi i32 [ %backoff_timer.1, %if.end19 ], [ %backoff_timer.0, %if.else13 ], [ %backoff_timer.0, %if.end10.thread ], !dbg !1398
  call void @llvm.dbg.value(metadata i32 %backoff_timer.2, metadata !1396, metadata !DIExpression()), !dbg !1398
  %gcov_ctr35 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 9), align 8
  %16 = add i64 %gcov_ctr35, 1
  store i64 %16, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 9), align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then12
  %was_busy.245 = phi i32 [ %was_busy.246, %if.then12 ], [ %was_busy.24750, %if.end20 ]
  %backoff_timer.3 = phi i32 [ %backoff_timer.0, %if.then12 ], [ %backoff_timer.2, %if.end20 ], !dbg !1398
  call void @llvm.dbg.value(metadata i32 %backoff_timer.3, metadata !1396, metadata !DIExpression()), !dbg !1398
  %17 = load volatile i32, i32* @slab_rebalance_signal, align 4, !dbg !1449, !tbaa !315
  %cmp22 = icmp eq i32 %17, 0, !dbg !1451
  br i1 %cmp22, label %if.then23, label %while.cond.backedge, !dbg !1452

if.then23:                                        ; preds = %if.end21
  %gcov_ctr36 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 10), align 16, !dbg !1453
  %18 = add i64 %gcov_ctr36, 1, !dbg !1453
  store i64 %18, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 10), align 16, !dbg !1453
  %call24 = tail call i32 @pthread_cond_wait(%union.pthread_cond_t* noundef nonnull @slab_rebalance_cond, %union.pthread_mutex_t* noundef nonnull @slabs_rebalance_lock) #14, !dbg !1453
  br label %while.cond.backedge, !dbg !1455

while.cond.backedge:                              ; preds = %if.then23, %if.end21
  br label %while.cond, !dbg !1398, !llvm.loop !1456

while.end:                                        ; preds = %lor.rhs
  %call26 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_rebalance_lock) #14, !dbg !1458
  ret i8* null, !dbg !1459
}

; Function Attrs: nounwind
declare !dbg !1460 dso_local i8* @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @stop_slab_maintenance_thread() local_unnamed_addr #4 !dbg !1463 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 0), align 8, !dbg !1464
  %0 = add i64 %gcov_ctr, 1, !dbg !1464
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 0), align 8, !dbg !1464
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_rebalance_lock) #14, !dbg !1464
  store volatile i32 0, i32* @do_run_slab_rebalance_thread, align 4, !dbg !1465, !tbaa !315
  %call1 = tail call i32 @pthread_cond_signal(%union.pthread_cond_t* noundef nonnull @slab_rebalance_cond) #14, !dbg !1466
  %call2 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_rebalance_lock) #14, !dbg !1467
  %1 = load i64, i64* @rebalance_tid, align 8, !dbg !1468, !tbaa !477
  %call3 = tail call i32 @pthread_join(i64 noundef %1, i8** noundef null) #14, !dbg !1469
  ret void, !dbg !1470
}

; Function Attrs: nounwind
declare !dbg !1471 dso_local i32 @pthread_cond_signal(%union.pthread_cond_t* noundef) local_unnamed_addr #6

declare !dbg !1475 dso_local i32 @pthread_join(i64 noundef, i8** noundef) local_unnamed_addr #5

declare !dbg !1478 dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) local_unnamed_addr #5

declare !dbg !1481 dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !1485 dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !1488 dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) local_unnamed_addr #6

declare !dbg !1491 dso_local i32 @fclose(%struct._IO_FILE* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !1494 dso_local i32 @posix_memalign(i8** noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !1497 dso_local i32 @madvise(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !1501 dso_local void @free(i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_slabs_newslab(i32 noundef %id) unnamed_addr #4 !dbg !1502 {
entry:
  call void @llvm.dbg.value(metadata i32 %id, metadata !1504, metadata !DIExpression()), !dbg !1509
  %idxprom = zext i32 %id to i64, !dbg !1510
  call void @llvm.dbg.value(metadata !DIArgList([64 x %struct.slabclass_t]* @slabclass, i64 %idxprom), metadata !1505, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1509
  %0 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 31), align 1, !dbg !1511, !tbaa !1512, !range !1513
  %tobool.not = icmp eq i8 %0, 0, !dbg !1511
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cond.true_crit_edge, !dbg !1514

entry.cond.true_crit_edge:                        ; preds = %entry
  %.pre = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 24), align 4, !dbg !1515, !tbaa !542
  br label %cond.end, !dbg !1514

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 0), align 16, !dbg !1516
  %1 = add i64 %gcov_ctr, 1, !dbg !1516
  store i64 %1, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 0), align 16, !dbg !1516
  %2 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 23), align 8, !dbg !1516, !tbaa !526
  %3 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 24), align 4, !dbg !1517, !tbaa !542
  %cmp.not = icmp eq i32 %2, %3, !dbg !1518
  br i1 %cmp.not, label %cond.false, label %cond.end, !dbg !1519

cond.false:                                       ; preds = %lor.lhs.false
  %gcov_ctr32 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 1), align 8, !dbg !1520
  %4 = add i64 %gcov_ctr32, 1, !dbg !1520
  store i64 %4, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 1), align 8, !dbg !1520
  %size = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 0, !dbg !1521
  %5 = load i32, i32* %size, align 8, !dbg !1521, !tbaa !310
  %perslab = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 1, !dbg !1522
  %6 = load i32, i32* %perslab, align 4, !dbg !1522, !tbaa !546
  %mul = mul i32 %6, %5, !dbg !1523
  br label %cond.end, !dbg !1519

cond.end:                                         ; preds = %lor.lhs.false, %entry.cond.true_crit_edge, %cond.false
  %cond = phi i32 [ %mul, %cond.false ], [ %.pre, %entry.cond.true_crit_edge ], [ %3, %lor.lhs.false ], !dbg !1519
  call void @llvm.dbg.value(metadata i32 %cond, metadata !1507, metadata !DIExpression()), !dbg !1509
  %7 = load i64, i64* @mem_limit, align 8, !dbg !1524, !tbaa !477
  %tobool1.not = icmp eq i64 %7, 0, !dbg !1524
  br i1 %tobool1.not, label %if.end, label %land.lhs.true, !dbg !1526

land.lhs.true:                                    ; preds = %cond.end
  %gcov_ctr33 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 2), align 16, !dbg !1527
  %8 = add i64 %gcov_ctr33, 1, !dbg !1527
  store i64 %8, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 2), align 16, !dbg !1527
  %9 = load i64, i64* @mem_malloced, align 8, !dbg !1527, !tbaa !477
  %conv = sext i32 %cond to i64, !dbg !1528
  %add = add i64 %9, %conv, !dbg !1529
  %cmp2 = icmp ugt i64 %add, %7, !dbg !1530
  br i1 %cmp2, label %land.lhs.true4, label %if.end, !dbg !1531

land.lhs.true4:                                   ; preds = %land.lhs.true
  %gcov_ctr34 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 3), align 8, !dbg !1532
  %10 = add i64 %gcov_ctr34, 1, !dbg !1532
  store i64 %10, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 3), align 8, !dbg !1532
  %slabs = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 4, !dbg !1533
  %11 = load i32, i32* %slabs, align 4, !dbg !1533, !tbaa !361
  %cmp5.not = icmp eq i32 %11, 0, !dbg !1534
  br i1 %cmp5.not, label %if.end, label %land.lhs.true7, !dbg !1535

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %gcov_ctr35 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 4), align 16, !dbg !1536
  %12 = add i64 %gcov_ctr35, 1, !dbg !1536
  store i64 %12, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 4), align 16, !dbg !1536
  %13 = load i32, i32* getelementptr inbounds ([64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 0, i32 4), align 4, !dbg !1537, !tbaa !361
  %cmp9 = icmp eq i32 %13, 0, !dbg !1538
  br i1 %cmp9, label %if.then, label %if.end, !dbg !1539

if.then:                                          ; preds = %land.lhs.true7
  %gcov_ctr36 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 5), align 8, !dbg !1540
  %14 = add i64 %gcov_ctr36, 1, !dbg !1540
  store i64 %14, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 5), align 8, !dbg !1540
  br label %cleanup, !dbg !1542

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true4, %land.lhs.true, %cond.end
  %call = tail call fastcc i32 @grow_slab_list(i32 noundef %id) #13, !dbg !1543
  %cmp11 = icmp eq i32 %call, 0, !dbg !1545
  br i1 %cmp11, label %if.then22, label %lor.lhs.false13, !dbg !1546

lor.lhs.false13:                                  ; preds = %if.end
  %gcov_ctr37 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 6), align 16, !dbg !1547
  %15 = add i64 %gcov_ctr37, 1, !dbg !1547
  store i64 %15, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 6), align 16, !dbg !1547
  %call14 = tail call fastcc i8* @get_page_from_global_pool() #13, !dbg !1547
  call void @llvm.dbg.value(metadata i8* %call14, metadata !1508, metadata !DIExpression()), !dbg !1509
  %cmp15 = icmp eq i8* %call14, null, !dbg !1548
  br i1 %cmp15, label %land.lhs.true17, label %lor.lhs.false13.if.end23_crit_edge, !dbg !1549

lor.lhs.false13.if.end23_crit_edge:               ; preds = %lor.lhs.false13
  %.pre55 = sext i32 %cond to i64, !dbg !1550
  br label %if.end23, !dbg !1549

land.lhs.true17:                                  ; preds = %lor.lhs.false13
  %gcov_ctr38 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 7), align 8, !dbg !1551
  %16 = add i64 %gcov_ctr38, 1, !dbg !1551
  store i64 %16, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 7), align 8, !dbg !1551
  %conv18 = sext i32 %cond to i64, !dbg !1552
  %call19 = tail call fastcc i8* @memory_allocate(i64 noundef %conv18) #13, !dbg !1553
  call void @llvm.dbg.value(metadata i8* %call19, metadata !1508, metadata !DIExpression()), !dbg !1509
  %cmp20 = icmp eq i8* %call19, null, !dbg !1554
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !1555

if.then22:                                        ; preds = %land.lhs.true17, %if.end
  %gcov_ctr39 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 8), align 16, !dbg !1556
  %17 = add i64 %gcov_ctr39, 1, !dbg !1556
  store i64 %17, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 8), align 16, !dbg !1556
  br label %cleanup, !dbg !1556

if.end23:                                         ; preds = %lor.lhs.false13.if.end23_crit_edge, %land.lhs.true17
  %conv24.pre-phi = phi i64 [ %.pre55, %lor.lhs.false13.if.end23_crit_edge ], [ %conv18, %land.lhs.true17 ], !dbg !1550
  %ptr.0 = phi i8* [ %call14, %lor.lhs.false13.if.end23_crit_edge ], [ %call19, %land.lhs.true17 ], !dbg !1558
  call void @llvm.dbg.value(metadata i8* %ptr.0, metadata !1508, metadata !DIExpression()), !dbg !1509
  %gcov_ctr40 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 9), align 8, !dbg !1559
  %18 = add i64 %gcov_ctr40, 1, !dbg !1559
  store i64 %18, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 9), align 8, !dbg !1559
  %call25 = tail call i8* @memset(i8* noundef nonnull %ptr.0, i32 noundef 0, i64 noundef %conv24.pre-phi) #14, !dbg !1560
  tail call fastcc void @split_slab_page_into_freelist(i8* noundef nonnull %ptr.0, i32 noundef %id) #13, !dbg !1561
  %slab_list = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 5, !dbg !1562
  %19 = load i8**, i8*** %slab_list, align 8, !dbg !1562, !tbaa !359
  %slabs26 = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 4, !dbg !1563
  %20 = load i32, i32* %slabs26, align 4, !dbg !1564, !tbaa !361
  %inc = add i32 %20, 1, !dbg !1564
  store i32 %inc, i32* %slabs26, align 4, !dbg !1564, !tbaa !361
  %idxprom27 = zext i32 %20 to i64, !dbg !1565
  %arrayidx28 = getelementptr inbounds i8*, i8** %19, i64 %idxprom27, !dbg !1565
  store i8* %ptr.0, i8** %arrayidx28, align 8, !dbg !1566, !tbaa !282
  br label %cleanup, !dbg !1567

cleanup:                                          ; preds = %if.end23, %if.then22, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then22 ], [ 1, %if.end23 ], !dbg !1509
  ret i32 %retval.0, !dbg !1568
}

; Function Attrs: noreturn nounwind
declare !dbg !1569 dso_local void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i8* @get_page_from_global_pool() unnamed_addr #0 !dbg !1572 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 0, i32 4), align 4, !dbg !1578, !tbaa !361
  %cmp = icmp eq i32 %0, 0, !dbg !1580
  br i1 %cmp, label %if.then, label %if.end, !dbg !1581

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 0), align 8, !dbg !1582
  %1 = add i64 %gcov_ctr, 1, !dbg !1582
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 0), align 8, !dbg !1582
  br label %cleanup, !dbg !1582

if.end:                                           ; preds = %entry
  %gcov_ctr3 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 1), align 8, !dbg !1584
  %2 = add i64 %gcov_ctr3, 1, !dbg !1584
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 1), align 8, !dbg !1584
  %3 = load i8**, i8*** getelementptr inbounds ([64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 0, i32 5), align 8, !dbg !1585, !tbaa !359
  %sub = add i32 %0, -1, !dbg !1586
  %idxprom = zext i32 %sub to i64, !dbg !1587
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom, !dbg !1587
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !1587, !tbaa !282
  call void @llvm.dbg.value(metadata i8* %4, metadata !1577, metadata !DIExpression()), !dbg !1588
  store i32 %sub, i32* getelementptr inbounds ([64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 0, i32 4), align 4, !dbg !1589, !tbaa !361
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %4, %if.end ], !dbg !1588
  ret i8* %retval.0, !dbg !1590
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @split_slab_page_into_freelist(i8* noundef %ptr, i32 noundef %id) unnamed_addr #4 !dbg !1591 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1595, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 %id, metadata !1596, metadata !DIExpression()), !dbg !1599
  %idxprom = zext i32 %id to i64, !dbg !1600
  call void @llvm.dbg.value(metadata !DIArgList([64 x %struct.slabclass_t]* @slabclass, i64 %idxprom), metadata !1597, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1599
  call void @llvm.dbg.value(metadata i32 0, metadata !1598, metadata !DIExpression()), !dbg !1599
  %perslab = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 1
  call void @llvm.dbg.value(metadata i32 0, metadata !1598, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !1595, metadata !DIExpression()), !dbg !1599
  %1 = load i32, i32* %perslab, align 4, !dbg !1601, !tbaa !546
  %cmp8.not = icmp eq i32 %1, 0, !dbg !1604
  br i1 %cmp8.not, label %for.end, label %for.body.lr.ph, !dbg !1605

for.body.lr.ph:                                   ; preds = %entry
  %size = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 0
  br label %for.body, !dbg !1605

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %x.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %ptr.addr.09 = phi i8* [ %ptr, %for.body.lr.ph ], [ %add.ptr, %for.body ]
  call void @llvm.dbg.value(metadata i32 %x.010, metadata !1598, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i8* %ptr.addr.09, metadata !1595, metadata !DIExpression()), !dbg !1599
  tail call fastcc void @do_slabs_free(i8* noundef %ptr.addr.09, i32 noundef %id) #13, !dbg !1606
  %2 = load i32, i32* %size, align 8, !dbg !1608, !tbaa !310
  %idx.ext = zext i32 %2 to i64, !dbg !1609
  %add.ptr = getelementptr inbounds i8, i8* %ptr.addr.09, i64 %idx.ext, !dbg !1609
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1595, metadata !DIExpression()), !dbg !1599
  %gcov_ctr1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 1), align 8, !dbg !1610
  %3 = add i64 %gcov_ctr1, 1, !dbg !1610
  store i64 %3, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 1), align 8, !dbg !1610
  %inc = add nuw nsw i32 %x.010, 1, !dbg !1610
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1598, metadata !DIExpression()), !dbg !1599
  %4 = load i32, i32* %perslab, align 4, !dbg !1601, !tbaa !546
  %cmp = icmp ult i32 %inc, %4, !dbg !1604
  br i1 %cmp, label %for.body, label %for.end, !dbg !1605, !llvm.loop !1611

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !1613
}

; Function Attrs: nounwind
declare !dbg !1614 dso_local i8* @realloc(i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !1617 dso_local noalias i8* @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @do_slabs_free_chunked(%struct._stritem* noundef %it) unnamed_addr #4 !dbg !1618 {
entry:
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1622, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i64 undef, metadata !1623, metadata !DIExpression()), !dbg !1627
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 10, !dbg !1628
  %0 = bitcast [0 x %union.anon]* %data to i8*, !dbg !1628
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 9, !dbg !1628
  %1 = load i8, i8* %nkey, align 1, !dbg !1628, !tbaa !351
  %2 = zext i8 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %2, !dbg !1628
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !1628
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !1628
  %3 = load i16, i16* %it_flags, align 2, !dbg !1628, !tbaa !381
  %conv2 = zext i16 %3 to i32, !dbg !1628
  %and = lshr i32 %conv2, 6, !dbg !1628
  %4 = and i32 %and, 4, !dbg !1628
  %5 = zext i32 %4 to i64, !dbg !1628
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr1, i64 %5, !dbg !1628
  %and6 = shl nuw nsw i32 %conv2, 2, !dbg !1628
  %6 = and i32 %and6, 8, !dbg !1628
  %7 = zext i32 %6 to i64, !dbg !1628
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr3, i64 %7, !dbg !1628
  call void @llvm.dbg.value(metadata i8* %add.ptr9, metadata !1624, metadata !DIExpression()), !dbg !1627
  store i16 4, i16* %it_flags, align 2, !dbg !1629, !tbaa !381
  %prev = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 1, !dbg !1630
  store %struct._stritem* null, %struct._stritem** %prev, align 8, !dbg !1631, !tbaa !282
  %8 = getelementptr inbounds i8, i8* %add.ptr9, i64 41, !dbg !1632
  %9 = load i8, i8* %8, align 1, !dbg !1632, !tbaa !351
  %idxprom = zext i8 %9 to i64, !dbg !1633
  call void @llvm.dbg.value(metadata !DIArgList([64 x %struct.slabclass_t]* @slabclass, i64 %idxprom), metadata !1625, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1627
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 8, !dbg !1634
  store i8 %9, i8* %slabs_clsid, align 8, !dbg !1635, !tbaa !351
  %next = bitcast i8* %add.ptr9 to %struct._strchunk**, !dbg !1636
  %10 = load %struct._strchunk*, %struct._strchunk** %next, align 8, !dbg !1636, !tbaa !282
  %tobool12.not = icmp eq %struct._strchunk* %10, null, !dbg !1638
  br i1 %tobool12.not, label %if.else, label %if.then, !dbg !1639

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 0), align 16, !dbg !1640
  %11 = add i64 %gcov_ctr, 1, !dbg !1640
  store i64 %11, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 0), align 16, !dbg !1640
  %12 = load %struct._strchunk*, %struct._strchunk** %next, align 8, !dbg !1642, !tbaa !282
  call void @llvm.dbg.value(metadata %struct._strchunk* %12, metadata !1624, metadata !DIExpression()), !dbg !1627
  %prev14 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %12, i64 0, i32 1, !dbg !1643
  store %struct._strchunk* null, %struct._strchunk** %prev14, align 8, !dbg !1644, !tbaa !282
  br label %if.end, !dbg !1645

if.else:                                          ; preds = %entry
  %gcov_ctr48 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 1), align 8, !dbg !1646
  %13 = add i64 %gcov_ctr48, 1, !dbg !1646
  store i64 %13, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 1), align 8, !dbg !1646
  call void @llvm.dbg.value(metadata %struct._strchunk* null, metadata !1624, metadata !DIExpression()), !dbg !1627
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %chunk.0 = phi %struct._strchunk* [ %12, %if.then ], [ null, %if.else ], !dbg !1648
  call void @llvm.dbg.value(metadata %struct._strchunk* %chunk.0, metadata !1624, metadata !DIExpression()), !dbg !1627
  store %struct._stritem* null, %struct._stritem** %prev, align 8, !dbg !1649, !tbaa !282
  %slots = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 2, !dbg !1650
  %14 = bitcast i8** %slots to %struct._stritem**, !dbg !1650
  %15 = load %struct._stritem*, %struct._stritem** %14, align 8, !dbg !1650, !tbaa !389
  %next16 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 0, !dbg !1651
  store %struct._stritem* %15, %struct._stritem** %next16, align 8, !dbg !1652, !tbaa !282
  %tobool18.not = icmp eq %struct._stritem* %15, null, !dbg !1653
  br i1 %tobool18.not, label %if.end22, label %if.then19, !dbg !1655

if.then19:                                        ; preds = %if.end
  %gcov_ctr49 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 2), align 16, !dbg !1656
  %16 = add i64 %gcov_ctr49, 1, !dbg !1656
  store i64 %16, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 2), align 16, !dbg !1656
  %17 = load %struct._stritem*, %struct._stritem** %next16, align 8, !dbg !1657, !tbaa !282
  %prev21 = getelementptr inbounds %struct._stritem, %struct._stritem* %17, i64 0, i32 1, !dbg !1658
  store %struct._stritem* %it, %struct._stritem** %prev21, align 8, !dbg !1659, !tbaa !282
  br label %if.end22, !dbg !1660

if.end22:                                         ; preds = %if.then19, %if.end
  store %struct._stritem* %it, %struct._stritem** %14, align 8, !dbg !1661, !tbaa !389
  %sl_curr = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 3, !dbg !1662
  %18 = load i32, i32* %sl_curr, align 8, !dbg !1663, !tbaa !404
  %inc = add i32 %18, 1, !dbg !1663
  store i32 %inc, i32* %sl_curr, align 8, !dbg !1663, !tbaa !404
  call void @llvm.dbg.value(metadata %struct._strchunk* %chunk.0, metadata !1624, metadata !DIExpression()), !dbg !1627
  %tobool24.not1 = icmp eq %struct._strchunk* %chunk.0, null, !dbg !1664
  br i1 %tobool24.not1, label %while.end, label %while.body, !dbg !1664

while.body:                                       ; preds = %if.end22, %if.end44
  %chunk.12 = phi %struct._strchunk* [ %22, %if.end44 ], [ %chunk.0, %if.end22 ]
  call void @llvm.dbg.value(metadata %struct._strchunk* %chunk.12, metadata !1624, metadata !DIExpression()), !dbg !1627
  %it_flags25 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %chunk.12, i64 0, i32 7, !dbg !1665
  %19 = load i16, i16* %it_flags25, align 2, !dbg !1665, !tbaa !381
  %cmp = icmp eq i16 %19, 64, !dbg !1665
  br i1 %cmp, label %if.then28, label %if.else29, !dbg !1669

if.then28:                                        ; preds = %while.body
  %gcov_ctr50 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 3), align 8, !dbg !1669
  %20 = add i64 %gcov_ctr50, 1, !dbg !1669
  store i64 %20, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 3), align 8, !dbg !1669
  store i16 4, i16* %it_flags25, align 2, !dbg !1670, !tbaa !381
  %slabs_clsid32 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %chunk.12, i64 0, i32 8, !dbg !1671
  %21 = load i8, i8* %slabs_clsid32, align 8, !dbg !1671, !tbaa !351
  %idxprom33 = zext i8 %21 to i64, !dbg !1672
  call void @llvm.dbg.value(metadata !DIArgList([64 x %struct.slabclass_t]* @slabclass, i64 %idxprom33), metadata !1625, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1627
  %next35 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %chunk.12, i64 0, i32 0, !dbg !1673
  %22 = load %struct._strchunk*, %struct._strchunk** %next35, align 8, !dbg !1673, !tbaa !282
  call void @llvm.dbg.value(metadata %struct._strchunk* %22, metadata !1626, metadata !DIExpression()), !dbg !1627
  %prev36 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %chunk.12, i64 0, i32 1, !dbg !1674
  store %struct._strchunk* null, %struct._strchunk** %prev36, align 8, !dbg !1675, !tbaa !282
  %slots37 = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom33, i32 2, !dbg !1676
  %23 = bitcast i8** %slots37 to %struct._strchunk**, !dbg !1676
  %24 = load %struct._strchunk*, %struct._strchunk** %23, align 8, !dbg !1676, !tbaa !389
  store %struct._strchunk* %24, %struct._strchunk** %next35, align 8, !dbg !1677, !tbaa !282
  %tobool40.not = icmp eq %struct._strchunk* %24, null, !dbg !1678
  br i1 %tobool40.not, label %if.end44, label %if.then41, !dbg !1680

if.else29:                                        ; preds = %while.body
  %gcov_ctr51 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 4), align 16, !dbg !1665
  %25 = add i64 %gcov_ctr51, 1, !dbg !1665
  store i64 %25, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 4), align 16, !dbg !1665
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 noundef 480, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.do_slabs_free_chunked, i64 0, i64 0)) #17, !dbg !1665
  unreachable, !dbg !1665

if.then41:                                        ; preds = %if.then28
  %gcov_ctr52 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 5), align 8, !dbg !1681
  %26 = add i64 %gcov_ctr52, 1, !dbg !1681
  store i64 %26, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 5), align 8, !dbg !1681
  %27 = load %struct._strchunk*, %struct._strchunk** %next35, align 8, !dbg !1682, !tbaa !282
  %prev43 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %27, i64 0, i32 1, !dbg !1683
  store %struct._strchunk* %chunk.12, %struct._strchunk** %prev43, align 8, !dbg !1684, !tbaa !282
  br label %if.end44, !dbg !1685

if.end44:                                         ; preds = %if.then41, %if.then28
  store %struct._strchunk* %chunk.12, %struct._strchunk** %23, align 8, !dbg !1686, !tbaa !389
  %sl_curr46 = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom33, i32 3, !dbg !1687
  %28 = load i32, i32* %sl_curr46, align 8, !dbg !1688, !tbaa !404
  %inc47 = add i32 %28, 1, !dbg !1688
  store i32 %inc47, i32* %sl_curr46, align 8, !dbg !1688, !tbaa !404
  call void @llvm.dbg.value(metadata %struct._strchunk* %22, metadata !1624, metadata !DIExpression()), !dbg !1627
  %tobool24.not = icmp eq %struct._strchunk* %22, null, !dbg !1664
  br i1 %tobool24.not, label %while.end, label %while.body, !dbg !1664, !llvm.loop !1689

while.end:                                        ; preds = %if.end44, %if.end22
  ret void, !dbg !1691
}

declare !dbg !1692 dso_local void @threadlocal_stats_aggregate(%struct.thread_stats* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !1696 dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #6

declare !dbg !1699 dso_local void @append_stat(i8* noundef, void (i8*, i16, i8*, i32, i8*)* noundef, %struct.conn* noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @memory_release() unnamed_addr #4 !dbg !2116 {
entry:
  call void @llvm.dbg.value(metadata i8* null, metadata !2118, metadata !DIExpression()), !dbg !2119
  %0 = load i8*, i8** @mem_base, align 8, !dbg !2120, !tbaa !282
  %cmp.not = icmp eq i8* %0, null, !dbg !2122
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2123

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 0), align 16
  %1 = add i64 %gcov_ctr, 1
  store i64 %1, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 0), align 16
  br label %cleanup, !dbg !2124

if.end:                                           ; preds = %entry
  %2 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 31), align 1, !dbg !2125, !tbaa !1512, !range !1513
  %tobool.not = icmp eq i8 %2, 0, !dbg !2125
  br i1 %tobool.not, label %if.then1, label %while.cond.preheader, !dbg !2127

while.cond.preheader:                             ; preds = %if.end
  %3 = load i64, i64* @mem_malloced, align 8, !dbg !2128, !tbaa !477
  %4 = load i64, i64* @mem_limit, align 8, !dbg !2129, !tbaa !477
  %cmp311 = icmp ugt i64 %3, %4, !dbg !2130
  br i1 %cmp311, label %land.rhs, label %while.end, !dbg !2131

if.then1:                                         ; preds = %if.end
  %gcov_ctr5 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 1), align 8
  %5 = add i64 %gcov_ctr5, 1
  store i64 %5, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 1), align 8
  br label %cleanup, !dbg !2132

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %gcov_ctr6 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 2), align 16, !dbg !2133
  %6 = add i64 %gcov_ctr6, 1, !dbg !2133
  store i64 %6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 2), align 16, !dbg !2133
  %call = tail call fastcc i8* @get_page_from_global_pool() #13, !dbg !2133
  call void @llvm.dbg.value(metadata i8* %call, metadata !2118, metadata !DIExpression()), !dbg !2119
  %cmp4.not = icmp eq i8* %call, null, !dbg !2134
  br i1 %cmp4.not, label %while.end, label %while.body, !dbg !2135

while.body:                                       ; preds = %land.rhs
  %gcov_ctr7 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 3), align 8, !dbg !2136
  %7 = add i64 %gcov_ctr7, 1, !dbg !2136
  store i64 %7, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 3), align 8, !dbg !2136
  tail call void @free(i8* noundef nonnull %call) #14, !dbg !2138
  %8 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 24), align 4, !dbg !2139, !tbaa !542
  %conv = sext i32 %8 to i64, !dbg !2140
  %9 = load i64, i64* @mem_malloced, align 8, !dbg !2141, !tbaa !477
  %sub = sub i64 %9, %conv, !dbg !2141
  store i64 %sub, i64* @mem_malloced, align 8, !dbg !2141, !tbaa !477
  %10 = load i64, i64* @mem_limit, align 8, !dbg !2129, !tbaa !477
  %cmp3 = icmp ugt i64 %sub, %10, !dbg !2130
  br i1 %cmp3, label %land.rhs, label %while.end, !dbg !2131, !llvm.loop !2142

while.end:                                        ; preds = %land.rhs, %while.body, %while.cond.preheader
  %gcov_ctr8 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 4), align 16, !dbg !2144
  %11 = add i64 %gcov_ctr8, 1, !dbg !2144
  store i64 %11, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 4), align 16, !dbg !2144
  br label %cleanup, !dbg !2144

cleanup:                                          ; preds = %while.end, %if.then1, %if.then
  ret void, !dbg !2144
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc i32 @slabs_reassign_pick_any(i32 noundef %dst) unnamed_addr #2 !dbg !220 {
entry:
  call void @llvm.dbg.value(metadata i32 %dst, metadata !224, metadata !DIExpression()), !dbg !2145
  %0 = load i32, i32* @power_largest, align 4, !dbg !2146, !tbaa !315
  call void @llvm.dbg.value(metadata i32 %0, metadata !225, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i32 %0, metadata !225, metadata !DIExpression()), !dbg !2145
  %cmp16 = icmp sgt i32 %0, 0, !dbg !2147
  br i1 %cmp16, label %for.body.preheader, label %cleanup, !dbg !2150

for.body.preheader:                               ; preds = %entry
  %.promoted15 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 1), align 8
  %.promoted14 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 3), align 8
  %.promoted = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 0), align 16
  %slabs_reassign_pick_any.cur.promoted = load i32, i32* @slabs_reassign_pick_any.cur, align 4, !tbaa !315
  br label %for.body, !dbg !2150

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %tries.017 = phi i32 [ %dec, %for.inc ], [ %0, %for.body.preheader ]
  %1 = phi i32 [ %7, %for.inc ], [ %slabs_reassign_pick_any.cur.promoted, %for.body.preheader ]
  %2 = phi i64 [ %6, %for.inc ], [ %.promoted, %for.body.preheader ]
  %3 = phi i64 [ %12, %for.inc ], [ %.promoted14, %for.body.preheader ]
  %4 = phi i64 [ %11, %for.inc ], [ %.promoted15, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i32 %tries.017, metadata !225, metadata !DIExpression()), !dbg !2145
  %inc = add nsw i32 %1, 1, !dbg !2151
  %cmp1.not = icmp slt i32 %1, %0, !dbg !2153
  br i1 %cmp1.not, label %if.end, label %if.then, !dbg !2155

if.then:                                          ; preds = %for.body
  %5 = add i64 %2, 1, !dbg !2156
  store i64 %5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 0), align 16, !dbg !2156
  br label %if.end, !dbg !2157

if.end:                                           ; preds = %if.then, %for.body
  %6 = phi i64 [ %5, %if.then ], [ %2, %for.body ]
  %7 = phi i32 [ 1, %if.then ], [ %inc, %for.body ]
  %cmp2 = icmp eq i32 %7, %dst, !dbg !2158
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !2160

if.then3:                                         ; preds = %if.end
  %8 = add i64 %4, 1, !dbg !2161
  store i64 %8, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 1), align 8, !dbg !2161
  br label %for.inc, !dbg !2161

if.end4:                                          ; preds = %if.end
  %idxprom = sext i32 %7 to i64, !dbg !2162
  %slabs = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 4, !dbg !2164
  %9 = load i32, i32* %slabs, align 4, !dbg !2164, !tbaa !361
  %cmp5 = icmp ugt i32 %9, 1, !dbg !2165
  br i1 %cmp5, label %cleanup.sink.split, label %if.end7, !dbg !2166

if.end7:                                          ; preds = %if.end4
  %10 = add i64 %3, 1, !dbg !2167
  store i64 %10, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 3), align 8, !dbg !2167
  br label %for.inc, !dbg !2167

for.inc:                                          ; preds = %if.end7, %if.then3
  %11 = phi i64 [ %4, %if.end7 ], [ %8, %if.then3 ]
  %12 = phi i64 [ %10, %if.end7 ], [ %3, %if.then3 ]
  %dec = add nsw i32 %tries.017, -1, !dbg !2168
  call void @llvm.dbg.value(metadata i32 %dec, metadata !225, metadata !DIExpression()), !dbg !2145
  %cmp = icmp sgt i32 %tries.017, 1, !dbg !2147
  br i1 %cmp, label %for.body, label %cleanup.sink.split, !dbg !2150, !llvm.loop !2169

cleanup.sink.split:                               ; preds = %for.inc, %if.end4
  %.sink.ph = phi i64* [ getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 2), %if.end4 ], [ getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 4), %for.inc ]
  %retval.0.ph = phi i32 [ %7, %if.end4 ], [ -1, %for.inc ]
  store i32 %7, i32* @slabs_reassign_pick_any.cur, align 4, !dbg !2171, !tbaa !315
  br label %cleanup, !dbg !2145

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %.sink = phi i64* [ getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 4), %entry ], [ %.sink.ph, %cleanup.sink.split ]
  %retval.0 = phi i32 [ -1, %entry ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !2145
  %gcov_ctr11 = load i64, i64* %.sink, align 16, !dbg !2145
  %13 = add i64 %gcov_ctr11, 1, !dbg !2145
  store i64 %13, i64* %.sink, align 16, !dbg !2145
  ret i32 %retval.0, !dbg !2172
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @slab_rebalance_start() unnamed_addr #4 !dbg !2173 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !2176, metadata !DIExpression()), !dbg !2177
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !2178
  %0 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 3), align 8, !dbg !2179, !tbaa !1338
  %cmp = icmp slt i32 %0, 0, !dbg !2181
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2182

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 0), align 16, !dbg !2183
  %1 = add i64 %gcov_ctr, 1, !dbg !2183
  store i64 %1, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 0), align 16, !dbg !2183
  %2 = load i32, i32* @power_largest, align 4, !dbg !2184, !tbaa !315
  %cmp1 = icmp sgt i32 %0, %2, !dbg !2185
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !2186

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %gcov_ctr31 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 1), align 8, !dbg !2187
  %3 = add i64 %gcov_ctr31, 1, !dbg !2187
  store i64 %3, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 1), align 8, !dbg !2187
  %4 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 4), align 4, !dbg !2187, !tbaa !1341
  %cmp3 = icmp slt i32 %4, 0, !dbg !2188
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !2189

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %gcov_ctr32 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 2), align 16, !dbg !2190
  %5 = add i64 %gcov_ctr32, 1, !dbg !2190
  store i64 %5, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 2), align 16, !dbg !2190
  %cmp5 = icmp sgt i32 %4, %2, !dbg !2191
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !2192

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %gcov_ctr33 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 3), align 8, !dbg !2193
  %6 = add i64 %gcov_ctr33, 1, !dbg !2193
  store i64 %6, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 3), align 8, !dbg !2193
  %cmp7 = icmp eq i32 %0, %4, !dbg !2194
  br i1 %cmp7, label %if.then, label %if.end, !dbg !2195

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %gcov_ctr34 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 4), align 16, !dbg !2196
  %7 = add i64 %gcov_ctr34, 1, !dbg !2196
  store i64 %7, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 4), align 16, !dbg !2196
  call void @llvm.dbg.value(metadata i32 -2, metadata !2176, metadata !DIExpression()), !dbg !2177
  %.pre = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 4), align 4, !dbg !2197, !tbaa !1341
  br label %if.end, !dbg !2199

if.end:                                           ; preds = %if.then, %lor.lhs.false6
  %8 = phi i32 [ %.pre, %if.then ], [ %4, %lor.lhs.false6 ], !dbg !2197
  %cmp14.not = phi i1 [ false, %if.then ], [ true, %lor.lhs.false6 ], !dbg !2177
  %no_go.0 = phi i32 [ -2, %if.then ], [ 0, %lor.lhs.false6 ], !dbg !2177
  call void @llvm.dbg.value(metadata i32 %no_go.0, metadata !2176, metadata !DIExpression()), !dbg !2177
  %idxprom = sext i32 %0 to i64, !dbg !2200
  call void @llvm.dbg.value(metadata !DIArgList([64 x %struct.slabclass_t]* @slabclass, i64 %idxprom), metadata !2175, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2177
  %call8 = tail call fastcc i32 @grow_slab_list(i32 noundef %8) #13, !dbg !2201
  %tobool.not = icmp eq i32 %call8, 0, !dbg !2201
  br i1 %tobool.not, label %if.end10.thread, label %if.end10, !dbg !2202

if.end10:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 %no_go.0, metadata !2176, metadata !DIExpression()), !dbg !2177
  %slabs = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 4, !dbg !2203
  %9 = load i32, i32* %slabs, align 4, !dbg !2203, !tbaa !361
  %cmp11 = icmp ult i32 %9, 2, !dbg !2205
  br i1 %cmp11, label %if.end13.thread, label %if.end13, !dbg !2206

if.end10.thread:                                  ; preds = %if.end
  %gcov_ctr35 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 5), align 8, !dbg !2207
  %10 = add i64 %gcov_ctr35, 1, !dbg !2207
  store i64 %10, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 5), align 8, !dbg !2207
  call void @llvm.dbg.value(metadata i32 %no_go.0, metadata !2176, metadata !DIExpression()), !dbg !2177
  %slabs52 = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 4, !dbg !2203
  %11 = load i32, i32* %slabs52, align 4, !dbg !2203, !tbaa !361
  %cmp1153 = icmp ult i32 %11, 2, !dbg !2205
  br i1 %cmp1153, label %if.end13.thread, label %if.then15, !dbg !2206

if.end13.thread:                                  ; preds = %if.end10.thread, %if.end10
  %gcov_ctr36 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 6), align 16, !dbg !2209
  %12 = add i64 %gcov_ctr36, 1, !dbg !2209
  store i64 %12, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 6), align 16, !dbg !2209
  call void @llvm.dbg.value(metadata i32 %no_go.0, metadata !2176, metadata !DIExpression()), !dbg !2177
  br label %if.then15, !dbg !2210

if.end13:                                         ; preds = %if.end10
  call void @llvm.dbg.value(metadata i32 %no_go.0, metadata !2176, metadata !DIExpression()), !dbg !2177
  br i1 %cmp14.not, label %if.end17, label %if.then15, !dbg !2210

if.then15:                                        ; preds = %if.end10.thread, %if.end13.thread, %if.end13
  %no_go.250 = phi i32 [ -3, %if.end13.thread ], [ %no_go.0, %if.end13 ], [ -1, %if.end10.thread ]
  %gcov_ctr37 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 7), align 8, !dbg !2211
  %13 = add i64 %gcov_ctr37, 1, !dbg !2211
  store i64 %13, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 7), align 8, !dbg !2211
  %call16 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !2211
  br label %cleanup, !dbg !2214

if.end17:                                         ; preds = %if.end13
  %slab_list = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 5, !dbg !2215
  %14 = load i8**, i8*** %slab_list, align 8, !dbg !2215, !tbaa !359
  %15 = load i8*, i8** %14, align 8, !dbg !2216, !tbaa !282
  store i8* %15, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 0), align 8, !dbg !2217, !tbaa !1359
  %size = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 0, !dbg !2218
  %16 = load i32, i32* %size, align 8, !dbg !2218, !tbaa !310
  %perslab = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 1, !dbg !2219
  %17 = load i32, i32* %perslab, align 4, !dbg !2219, !tbaa !546
  %mul = mul i32 %17, %16, !dbg !2220
  %idx.ext = zext i32 %mul to i64, !dbg !2221
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext, !dbg !2221
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 1), align 8, !dbg !2222, !tbaa !2223
  store i8* %15, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 2), align 8, !dbg !2224, !tbaa !2225
  store i8 0, i8* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 12), align 4, !dbg !2226, !tbaa !1429
  %18 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 3), align 8, !dbg !2227, !tbaa !1338
  %cmp19 = icmp eq i32 %18, 0, !dbg !2229
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !2230

if.then20:                                        ; preds = %if.end17
  %gcov_ctr38 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 8), align 16, !dbg !2231
  %19 = add i64 %gcov_ctr38, 1, !dbg !2231
  store i64 %19, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 8), align 16, !dbg !2231
  store i8 1, i8* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 12), align 4, !dbg !2231, !tbaa !1429
  br label %if.end21, !dbg !2233

if.end21:                                         ; preds = %if.then20, %if.end17
  %conv = zext i32 %17 to i64, !dbg !2234
  %call23 = tail call noalias i8* @calloc(i64 noundef %conv, i64 noundef 1) #14, !dbg !2235
  store i8* %call23, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 13), align 8, !dbg !2236, !tbaa !2237
  store volatile i32 2, i32* @slab_rebalance_signal, align 4, !dbg !2238, !tbaa !315
  %20 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2239, !tbaa !554
  %cmp24 = icmp sgt i32 %20, 1, !dbg !2241
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !2242

if.then26:                                        ; preds = %if.end21
  %gcov_ctr39 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 9), align 8, !dbg !2243
  %21 = add i64 %gcov_ctr39, 1, !dbg !2243
  store i64 %21, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 9), align 8, !dbg !2243
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2243, !tbaa !282
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i64 0, i64 0)) #14, !dbg !2245
  br label %if.end28, !dbg !2246

if.end28:                                         ; preds = %if.then26, %if.end21
  %gcov_ctr40 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 10), align 16, !dbg !2247
  %23 = add i64 %gcov_ctr40, 1, !dbg !2247
  store i64 %23, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 10), align 16, !dbg !2247
  %call29 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !2247
  tail call void @STATS_LOCK() #14, !dbg !2248
  store i8 1, i8* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 10), align 2, !dbg !2249, !tbaa !2250
  tail call void @STATS_UNLOCK() #14, !dbg !2252
  br label %cleanup, !dbg !2253

cleanup:                                          ; preds = %if.end28, %if.then15
  %retval.0 = phi i32 [ %no_go.250, %if.then15 ], [ 0, %if.end28 ], !dbg !2177
  ret i32 %retval.0, !dbg !2254
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @slab_rebalance_move() unnamed_addr #4 !dbg !2255 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i32 0, metadata !2258, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 0, metadata !2259, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 0, metadata !2262, metadata !DIExpression()), !dbg !2289
  %1 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 3), align 8, !dbg !2290, !tbaa !1338
  %idxprom = sext i32 %1 to i64, !dbg !2291
  %arrayidx = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, !dbg !2291
  call void @llvm.dbg.value(metadata %struct.slabclass_t* %arrayidx, metadata !2257, metadata !DIExpression()), !dbg !2289
  %2 = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 2), align 8, !dbg !2292, !tbaa !2225
  %3 = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 0), align 8, !dbg !2293, !tbaa !1359
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64, !dbg !2294
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64, !dbg !2294
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2294
  %size = getelementptr inbounds %struct.slabclass_t, %struct.slabclass_t* %arrayidx, i64 0, i32 0, !dbg !2295
  %4 = load i32, i32* %size, align 8, !dbg !2295, !tbaa !310
  %conv = zext i32 %4 to i64, !dbg !2296
  %div = sdiv i64 %sub.ptr.sub, %conv, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %div, metadata !2263, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2289
  %5 = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 13), align 8, !dbg !2298, !tbaa !2237
  %sext = shl i64 %div, 32, !dbg !2299
  %idxprom2 = ashr exact i64 %sext, 32, !dbg !2299
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 %idxprom2, !dbg !2299
  %6 = load i8, i8* %arrayidx3, align 1, !dbg !2299, !tbaa !351
  %cmp = icmp eq i8 %6, 0, !dbg !2300
  br i1 %cmp, label %if.then, label %if.end285, !dbg !2301

if.then:                                          ; preds = %entry
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !2302
  call void @llvm.dbg.value(metadata i32 0, metadata !2260, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* null, metadata !2261, metadata !DIExpression()), !dbg !2289
  %7 = load %struct._stritem*, %struct._stritem** bitcast (i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 2) to %struct._stritem**), align 8, !dbg !2303, !tbaa !2225
  call void @llvm.dbg.value(metadata %struct._stritem* %7, metadata !2264, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata %struct._strchunk* null, metadata !2267, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i32 0, metadata !2262, metadata !DIExpression()), !dbg !2289
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %7, i64 0, i32 7, !dbg !2305
  %8 = load i16, i16* %it_flags, align 2, !dbg !2305, !tbaa !381
  %9 = and i16 %8, 64, !dbg !2307
  %tobool.not = icmp eq i16 %9, 0, !dbg !2307
  br i1 %tobool.not, label %if.end13, label %if.then7, !dbg !2308

if.then7:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata %struct._stritem* %7, metadata !2267, metadata !DIExpression()), !dbg !2304
  %10 = getelementptr inbounds %struct._stritem, %struct._stritem* %7, i64 0, i32 2, !dbg !2309
  %11 = load %struct._stritem*, %struct._stritem** %10, align 8, !dbg !2309, !tbaa !282
  call void @llvm.dbg.value(metadata %struct._stritem* %11, metadata !2264, metadata !DIExpression()), !dbg !2304
  %it_flags8 = getelementptr inbounds %struct._stritem, %struct._stritem* %11, i64 0, i32 7, !dbg !2311
  %12 = load i16, i16* %it_flags8, align 2, !dbg !2311, !tbaa !381
  %13 = and i16 %12, 32, !dbg !2311
  %tobool11.not = icmp eq i16 %13, 0, !dbg !2311
  br i1 %tobool11.not, label %if.else, label %if.end13.thread, !dbg !2314

if.else:                                          ; preds = %if.then7
  %gcov_ctr301 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 1), align 8, !dbg !2311
  %14 = add i64 %gcov_ctr301, 1, !dbg !2311
  store i64 %14, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 1), align 8, !dbg !2311
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 noundef 885, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.slab_rebalance_move, i64 0, i64 0)) #17, !dbg !2311
  unreachable, !dbg !2311

if.end13.thread:                                  ; preds = %if.then7
  %15 = bitcast %struct._stritem* %7 to %struct._strchunk*, !dbg !2315
  call void @llvm.dbg.value(metadata %struct._strchunk* %15, metadata !2267, metadata !DIExpression()), !dbg !2304
  %gcov_ctr302 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 2), align 16, !dbg !2316
  %16 = add i64 %gcov_ctr302, 1, !dbg !2316
  store i64 %16, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 2), align 16, !dbg !2316
  call void @llvm.dbg.value(metadata %struct._strchunk* null, metadata !2267, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata %struct._stritem* %7, metadata !2264, metadata !DIExpression()), !dbg !2304
  br label %if.then18, !dbg !2317

if.end13:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata %struct._strchunk* null, metadata !2267, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata %struct._stritem* %7, metadata !2264, metadata !DIExpression()), !dbg !2304
  %cmp16.not = icmp eq i16 %8, 12, !dbg !2318
  br i1 %cmp16.not, label %sw.epilog, label %if.then18, !dbg !2317

if.then18:                                        ; preds = %if.end13.thread, %if.end13
  %conv15484.in = phi i16 [ %12, %if.end13.thread ], [ %8, %if.end13 ]
  %ch.0480 = phi %struct._strchunk* [ %15, %if.end13.thread ], [ null, %if.end13 ]
  %it.0478 = phi %struct._stritem* [ %11, %if.end13.thread ], [ %7, %if.end13 ]
  %it_flags14481 = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0478, i64 0, i32 7, !dbg !2319
  %conv15484 = zext i16 %conv15484.in to i32, !dbg !2320
  %and21 = and i32 %conv15484, 4, !dbg !2321
  %tobool22.not = icmp eq i32 %and21, 0, !dbg !2321
  br i1 %tobool22.not, label %if.else29, label %if.then23, !dbg !2322

if.then23:                                        ; preds = %if.then18
  %cmp24 = icmp eq %struct._strchunk* %ch.0480, null, !dbg !2323
  br i1 %cmp24, label %sw.bb276, label %if.else27, !dbg !2327

if.else27:                                        ; preds = %if.then23
  %gcov_ctr304 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 4), align 16, !dbg !2323
  %17 = add i64 %gcov_ctr304, 1, !dbg !2323
  store i64 %17, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 4), align 16, !dbg !2323
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 noundef 894, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.slab_rebalance_move, i64 0, i64 0)) #17, !dbg !2323
  unreachable, !dbg !2323

if.else29:                                        ; preds = %if.then18
  %and32 = and i32 %conv15484, 1, !dbg !2328
  %cmp33.not = icmp eq i32 %and32, 0, !dbg !2329
  br i1 %cmp33.not, label %if.else89, label %if.then35, !dbg !2330

if.then35:                                        ; preds = %if.else29
  %18 = load i32 (i8*, i64)*, i32 (i8*, i64)** @hash, align 8, !dbg !2331, !tbaa !282
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0478, i64 0, i32 10, !dbg !2332
  %19 = bitcast [0 x %union.anon]* %data to i8*, !dbg !2332
  %and38 = shl nuw nsw i32 %conv15484, 2, !dbg !2332
  %20 = and i32 %and38, 8, !dbg !2332
  %21 = zext i32 %20 to i64, !dbg !2332
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %21, !dbg !2332
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0478, i64 0, i32 9, !dbg !2333
  %22 = load i8, i8* %nkey, align 1, !dbg !2333, !tbaa !351
  %conv40 = zext i8 %22 to i64, !dbg !2334
  %call41 = tail call i32 %18(i8* noundef nonnull %add.ptr, i64 noundef %conv40) #14, !dbg !2331
  call void @llvm.dbg.value(metadata i32 %call41, metadata !2260, metadata !DIExpression()), !dbg !2289
  %call42 = tail call i8* @item_trylock(i32 noundef %call41) #14, !dbg !2335
  call void @llvm.dbg.value(metadata i8* %call42, metadata !2261, metadata !DIExpression()), !dbg !2289
  %cmp43 = icmp eq i8* %call42, null, !dbg !2336
  br i1 %cmp43, label %if.then45, label %if.else46, !dbg !2337

if.then45:                                        ; preds = %if.then35
  %gcov_ctr305 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 5), align 8, !dbg !2338
  %23 = add i64 %gcov_ctr305, 1, !dbg !2338
  store i64 %23, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 5), align 8, !dbg !2338
  call void @llvm.dbg.value(metadata i32 4, metadata !2262, metadata !DIExpression()), !dbg !2289
  br label %sw.bb281, !dbg !2340

if.else46:                                        ; preds = %if.then35
  %24 = load i16, i16* %it_flags14481, align 2, !dbg !2341, !tbaa !381
  %25 = and i16 %24, 1, !dbg !2342
  %tobool50.not = icmp eq i16 %25, 0, !dbg !2343
  call void @llvm.dbg.value(metadata i1 %tobool50.not, metadata !2268, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2344
  %refcount51 = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0478, i64 0, i32 6, !dbg !2345
  %26 = load i16, i16* %refcount51, align 4, !dbg !2345, !tbaa !381
  %inc = add i16 %26, 1, !dbg !2345
  store i16 %inc, i16* %refcount51, align 4, !dbg !2345, !tbaa !381
  call void @llvm.dbg.value(metadata i16 %inc, metadata !2259, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2289
  %cmp53 = icmp eq i16 %inc, 2, !dbg !2346
  br i1 %cmp53, label %if.then55, label %if.else60, !dbg !2348

if.then55:                                        ; preds = %if.else46
  br i1 %tobool50.not, label %if.else58, label %sw.bb, !dbg !2349

if.else58:                                        ; preds = %if.then55
  %gcov_ctr307 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 7), align 8, !dbg !2351
  %27 = add i64 %gcov_ctr307, 1, !dbg !2351
  store i64 %27, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 7), align 8, !dbg !2351
  call void @llvm.dbg.value(metadata i32 3, metadata !2262, metadata !DIExpression()), !dbg !2289
  br label %if.then85

if.else60:                                        ; preds = %if.else46
  call void @llvm.dbg.value(metadata i16 %inc, metadata !2259, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2289
  %cmp61 = icmp ugt i16 %inc, 2, !dbg !2354
  br i1 %cmp61, label %land.lhs.true, label %if.else73, !dbg !2356

land.lhs.true:                                    ; preds = %if.else60
  %gcov_ctr308 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 8), align 16, !dbg !2357
  %28 = add i64 %gcov_ctr308, 1, !dbg !2357
  store i64 %28, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 8), align 16, !dbg !2357
  br i1 %tobool50.not, label %if.else73, label %if.then65, !dbg !2358

if.then65:                                        ; preds = %land.lhs.true
  %29 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 11), align 8, !dbg !2359, !tbaa !2362
  %cmp66 = icmp ugt i32 %29, 1000, !dbg !2363
  br i1 %cmp66, label %if.then68, label %if.end72, !dbg !2364

if.then68:                                        ; preds = %if.then65
  %30 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 10), align 4, !dbg !2365, !tbaa !2367
  %inc69 = add i32 %30, 1, !dbg !2365
  store i32 %inc69, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 10), align 4, !dbg !2365, !tbaa !2367
  %31 = load i8*, i8** @storage, align 8, !dbg !2368, !tbaa !282
  tail call void @storage_delete(i8* noundef %31, %struct._stritem* noundef nonnull %it.0478) #14, !dbg !2368
  %gcov_ctr309 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 9), align 8, !dbg !2370
  %32 = add i64 %gcov_ctr309, 1, !dbg !2370
  store i64 %32, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 9), align 8, !dbg !2370
  %call70 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !2370
  tail call void @do_item_unlink(%struct._stritem* noundef nonnull %it.0478, i32 noundef %call41) #14, !dbg !2371
  %call71 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !2372
  br label %if.end72, !dbg !2373

if.end72:                                         ; preds = %if.then68, %if.then65
  %gcov_ctr310 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 10), align 16, !dbg !2374
  %33 = add i64 %gcov_ctr310, 1, !dbg !2374
  store i64 %33, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 10), align 16, !dbg !2374
  call void @llvm.dbg.value(metadata i32 3, metadata !2262, metadata !DIExpression()), !dbg !2289
  br label %if.then85, !dbg !2375

if.else73:                                        ; preds = %land.lhs.true, %if.else60
  %34 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2376, !tbaa !554
  %cmp74 = icmp sgt i32 %34, 2, !dbg !2379
  br i1 %cmp74, label %if.then76, label %if.end80, !dbg !2380

if.then76:                                        ; preds = %if.else73
  %gcov_ctr311 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 11), align 8, !dbg !2381
  %35 = add i64 %gcov_ctr311, 1, !dbg !2381
  store i64 %35, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 11), align 8, !dbg !2381
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2381, !tbaa !282
  %37 = load i16, i16* %refcount51, align 4, !dbg !2383, !tbaa !381
  %conv78 = zext i16 %37 to i32, !dbg !2384
  %38 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 3), align 8, !dbg !2385, !tbaa !1338
  %39 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 4), align 4, !dbg !2386, !tbaa !1341
  %call79 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv78, i32 noundef %38, i32 noundef %39) #14, !dbg !2387
  br label %if.end80, !dbg !2388

if.end80:                                         ; preds = %if.then76, %if.else73
  %gcov_ctr312 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 12), align 16, !dbg !2389
  %40 = add i64 %gcov_ctr312, 1, !dbg !2389
  store i64 %40, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 12), align 16, !dbg !2389
  call void @llvm.dbg.value(metadata i32 3, metadata !2262, metadata !DIExpression()), !dbg !2289
  br label %if.then85

if.then85:                                        ; preds = %if.end72, %if.end80, %if.else58
  call void @llvm.dbg.value(metadata i32 2, metadata !2262, metadata !DIExpression()), !dbg !2289
  %gcov_ctr313 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 13), align 8, !dbg !2390
  %41 = add i64 %gcov_ctr313, 1, !dbg !2390
  store i64 %41, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 13), align 8, !dbg !2390
  %42 = load i16, i16* %refcount51, align 4, !dbg !2390, !tbaa !381
  %dec = add i16 %42, -1, !dbg !2390
  store i16 %dec, i16* %refcount51, align 4, !dbg !2390, !tbaa !381
  tail call void @item_trylock_unlock(i8* noundef nonnull %call42) #14, !dbg !2393
  br label %sw.bb281, !dbg !2394

if.else89:                                        ; preds = %if.else29
  %gcov_ctr314 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 14), align 16, !dbg !2395
  %43 = add i64 %gcov_ctr314, 1, !dbg !2395
  store i64 %43, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 14), align 16, !dbg !2395
  call void @llvm.dbg.value(metadata i32 3, metadata !2262, metadata !DIExpression()), !dbg !2289
  br label %sw.bb281

sw.bb:                                            ; preds = %if.then55
  %gcov_ctr306 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 6), align 16, !dbg !2397
  %44 = add i64 %gcov_ctr306, 1, !dbg !2397
  store i64 %44, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 6), align 16, !dbg !2397
  call void @llvm.dbg.value(metadata i32 0, metadata !2260, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 1, metadata !2262, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* null, metadata !2261, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 0, metadata !2276, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !2277, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i64 0, metadata !2278, metadata !DIExpression()), !dbg !2304
  %45 = load i8, i8* %nkey, align 1, !dbg !2399, !tbaa !351
  %conv94 = zext i8 %45 to i64, !dbg !2399
  %add95 = add nuw nsw i64 %conv94, 49, !dbg !2399
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0478, i64 0, i32 5, !dbg !2399
  %46 = load i32, i32* %nbytes, align 8, !dbg !2399, !tbaa !315
  %conv96 = sext i32 %46 to i64, !dbg !2399
  %add97 = add nsw i64 %add95, %conv96, !dbg !2399
  %47 = load i16, i16* %it_flags14481, align 2, !dbg !2399, !tbaa !381
  %conv99 = zext i16 %47 to i32, !dbg !2399
  %and100 = lshr i32 %conv99, 6, !dbg !2399
  %48 = and i32 %and100, 4, !dbg !2399
  %49 = zext i32 %48 to i64, !dbg !2399
  %add103 = add nsw i64 %add97, %49, !dbg !2399
  %and106 = shl nuw nsw i32 %conv99, 2, !dbg !2399
  %50 = and i32 %and106, 8, !dbg !2399
  %51 = zext i32 %50 to i64, !dbg !2399
  %add109 = add nsw i64 %add103, %51, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %add109, metadata !2278, metadata !DIExpression()), !dbg !2304
  %and112 = and i32 %conv99, 128, !dbg !2400
  %tobool113.not = icmp eq i32 %and112, 0, !dbg !2400
  br i1 %tobool113.not, label %if.end118, label %if.then114, !dbg !2402

if.then114:                                       ; preds = %sw.bb
  %gcov_ctr316 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 16), align 16, !dbg !2403
  %52 = add i64 %gcov_ctr316, 1, !dbg !2403
  store i64 %52, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 16), align 16, !dbg !2403
  %53 = load i32, i32* %nbytes, align 8, !dbg !2405, !tbaa !315
  %conv116 = sext i32 %53 to i64, !dbg !2406
  %sub = add nsw i64 %add109, 12, !dbg !2407
  %add117 = sub nsw i64 %sub, %conv116, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %add117, metadata !2278, metadata !DIExpression()), !dbg !2304
  br label %if.end118, !dbg !2409

if.end118:                                        ; preds = %if.then114, %sw.bb
  %ntotal.0 = phi i64 [ %add117, %if.then114 ], [ %add109, %sw.bb ], !dbg !2410
  call void @llvm.dbg.value(metadata i64 %ntotal.0, metadata !2278, metadata !DIExpression()), !dbg !2304
  %cmp119 = icmp eq %struct._strchunk* %ch.0480, null, !dbg !2411
  br i1 %cmp119, label %land.lhs.true121, label %if.end129, !dbg !2413

land.lhs.true121:                                 ; preds = %if.end118
  %gcov_ctr317 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 17), align 8, !dbg !2414
  %54 = add i64 %gcov_ctr317, 1, !dbg !2414
  store i64 %54, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 17), align 8, !dbg !2414
  %55 = load i16, i16* %it_flags14481, align 2, !dbg !2415, !tbaa !381
  %56 = and i16 %55, 32, !dbg !2416
  %tobool125.not = icmp eq i16 %56, 0, !dbg !2416
  br i1 %tobool125.not, label %if.end129, label %if.then126, !dbg !2417

if.then126:                                       ; preds = %land.lhs.true121
  %gcov_ctr318 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 18), align 16, !dbg !2418
  %57 = add i64 %gcov_ctr318, 1, !dbg !2418
  store i64 %57, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 18), align 16, !dbg !2418
  %58 = load i32, i32* %size, align 8, !dbg !2420, !tbaa !310
  %conv128 = zext i32 %58 to i64, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %conv128, metadata !2278, metadata !DIExpression()), !dbg !2304
  br label %if.end129, !dbg !2421

if.end129:                                        ; preds = %if.then126, %land.lhs.true121, %if.end118
  %ntotal.1 = phi i64 [ %conv128, %if.then126 ], [ %ntotal.0, %land.lhs.true121 ], [ %ntotal.0, %if.end118 ], !dbg !2410
  call void @llvm.dbg.value(metadata i64 %ntotal.1, metadata !2278, metadata !DIExpression()), !dbg !2304
  %exptime = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0478, i64 0, i32 4, !dbg !2422
  %59 = load i32, i32* %exptime, align 4, !dbg !2422, !tbaa !315
  %cmp130.not = icmp eq i32 %59, 0, !dbg !2424
  br i1 %cmp130.not, label %lor.lhs.false, label %land.lhs.true132, !dbg !2425

land.lhs.true132:                                 ; preds = %if.end129
  %gcov_ctr319 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 19), align 8, !dbg !2426
  %60 = add i64 %gcov_ctr319, 1, !dbg !2426
  store i64 %60, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 19), align 8, !dbg !2426
  %61 = load i32, i32* %exptime, align 4, !dbg !2427, !tbaa !315
  %62 = load volatile i32, i32* @current_time, align 4, !dbg !2428, !tbaa !315
  %cmp134 = icmp ult i32 %61, %62, !dbg !2429
  br i1 %cmp134, label %do.body236, label %lor.lhs.false, !dbg !2430

lor.lhs.false:                                    ; preds = %land.lhs.true132, %if.end129
  %call136 = tail call i32 @item_is_flushed(%struct._stritem* noundef nonnull %it.0478) #14, !dbg !2431
  %tobool137.not = icmp eq i32 %call136, 0, !dbg !2431
  br i1 %tobool137.not, label %if.else139, label %do.body236, !dbg !2432

if.else139:                                       ; preds = %lor.lhs.false
  br i1 %cmp119, label %land.lhs.true142, label %land.lhs.true151, !dbg !2433

land.lhs.true142:                                 ; preds = %if.else139
  %gcov_ctr320 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 20), align 16, !dbg !2435
  %63 = add i64 %gcov_ctr320, 1, !dbg !2435
  store i64 %63, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 20), align 16, !dbg !2435
  %64 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 3), align 8, !dbg !2436, !tbaa !1338
  %call143 = tail call fastcc i8* @slab_rebalance_alloc(i64 noundef %ntotal.1, i32 noundef %64) #13, !dbg !2437
  call void @llvm.dbg.value(metadata i8* %call143, metadata !2277, metadata !DIExpression()), !dbg !2304
  %cmp144 = icmp eq i8* %call143, null, !dbg !2438
  br i1 %cmp144, label %do.body236.sink.split, label %if.then165, !dbg !2439

land.lhs.true151:                                 ; preds = %if.else139
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !2277, metadata !DIExpression()), !dbg !2304
  %gcov_ctr322 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 22), align 16, !dbg !2440
  %65 = add i64 %gcov_ctr322, 1, !dbg !2440
  store i64 %65, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 22), align 16, !dbg !2440
  %66 = load i32, i32* %size, align 8, !dbg !2442, !tbaa !310
  %conv153 = zext i32 %66 to i64, !dbg !2440
  %67 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 3), align 8, !dbg !2443, !tbaa !1338
  %call154 = tail call fastcc i8* @slab_rebalance_alloc(i64 noundef %conv153, i32 noundef %67) #13, !dbg !2444
  call void @llvm.dbg.value(metadata i8* %call154, metadata !2277, metadata !DIExpression()), !dbg !2304
  %cmp155 = icmp eq i8* %call154, null, !dbg !2445
  br i1 %cmp155, label %do.body236.sink.split, label %if.then165, !dbg !2446

if.then165:                                       ; preds = %land.lhs.true142, %land.lhs.true151
  %new_it.1.in = phi i8* [ %call154, %land.lhs.true151 ], [ %call143, %land.lhs.true142 ]
  %new_it.1 = bitcast i8* %new_it.1.in to %struct._stritem*, !dbg !2447
  call void @llvm.dbg.value(metadata %struct._stritem* %new_it.1, metadata !2277, metadata !DIExpression()), !dbg !2304
  %gcov_ctr324 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 24), align 16, !dbg !2448
  %68 = add i64 %gcov_ctr324, 1, !dbg !2448
  store i64 %68, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 24), align 16, !dbg !2448
  call void @llvm.dbg.value(metadata i32 undef, metadata !2276, metadata !DIExpression()), !dbg !2304
  %call163 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !2450
  br i1 %cmp119, label %if.then168, label %if.else215, !dbg !2451

if.then168:                                       ; preds = %if.then165
  %it_flags169 = getelementptr inbounds i8, i8* %new_it.1.in, i64 38, !dbg !2452
  %69 = bitcast i8* %it_flags169 to i16*, !dbg !2452
  %70 = load i16, i16* %69, align 2, !dbg !2452, !tbaa !381
  %71 = and i16 %70, 32, !dbg !2452
  %cmp172 = icmp eq i16 %71, 0, !dbg !2452
  br i1 %cmp172, label %if.end176, label %if.else175, !dbg !2455

if.else175:                                       ; preds = %if.then168
  %gcov_ctr325 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 25), align 8, !dbg !2452
  %72 = add i64 %gcov_ctr325, 1, !dbg !2452
  store i64 %72, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 25), align 8, !dbg !2452
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 noundef 998, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.slab_rebalance_move, i64 0, i64 0)) #17, !dbg !2452
  unreachable, !dbg !2452

if.end176:                                        ; preds = %if.then168
  %73 = bitcast %struct._stritem* %it.0478 to i8*, !dbg !2456
  %call177 = tail call i8* @memcpy(i8* noundef nonnull %new_it.1.in, i8* noundef %73, i64 noundef %ntotal.1) #14, !dbg !2457
  %74 = bitcast i8* %new_it.1.in to <2 x %struct._stritem*>*, !dbg !2458
  store <2 x %struct._stritem*> zeroinitializer, <2 x %struct._stritem*>* %74, align 8, !dbg !2458, !tbaa !282
  %h_next = getelementptr inbounds i8, i8* %new_it.1.in, i64 16, !dbg !2459
  %75 = bitcast i8* %h_next to %struct._stritem**, !dbg !2459
  store %struct._stritem* null, %struct._stritem** %75, align 8, !dbg !2460, !tbaa !282
  %76 = load i16, i16* %69, align 2, !dbg !2461, !tbaa !381
  %77 = and i16 %76, -2, !dbg !2461
  store i16 %77, i16* %69, align 2, !dbg !2461, !tbaa !381
  %refcount182 = getelementptr inbounds i8, i8* %new_it.1.in, i64 36, !dbg !2462
  %78 = bitcast i8* %refcount182 to i16*, !dbg !2462
  store i16 0, i16* %78, align 4, !dbg !2463, !tbaa !381
  %call183 = tail call i32 @do_item_replace(%struct._stritem* noundef nonnull %it.0478, %struct._stritem* noundef nonnull %new_it.1, i32 noundef %call41) #14, !dbg !2464
  %79 = load i16, i16* %69, align 2, !dbg !2465, !tbaa !381
  %conv185 = zext i16 %79 to i32, !dbg !2466
  %and186 = and i32 %conv185, 32, !dbg !2467
  %tobool187.not = icmp eq i32 %and186, 0, !dbg !2467
  br i1 %tobool187.not, label %if.end211, label %if.then188, !dbg !2468

if.then188:                                       ; preds = %if.end176
  %data189 = getelementptr inbounds i8, i8* %new_it.1.in, i64 48, !dbg !2469
  %80 = getelementptr inbounds i8, i8* %new_it.1.in, i64 41, !dbg !2469
  %81 = load i8, i8* %80, align 1, !dbg !2469, !tbaa !351
  %82 = zext i8 %81 to i64
  %add.ptr192 = getelementptr inbounds i8, i8* %data189, i64 %82, !dbg !2469
  %add.ptr193 = getelementptr inbounds i8, i8* %add.ptr192, i64 1, !dbg !2469
  %and196 = lshr i32 %conv185, 6, !dbg !2469
  %83 = and i32 %and196, 4, !dbg !2469
  %84 = zext i32 %83 to i64, !dbg !2469
  %add.ptr199 = getelementptr inbounds i8, i8* %add.ptr193, i64 %84, !dbg !2469
  %and202 = shl nuw nsw i32 %conv185, 2, !dbg !2469
  %85 = and i32 %and202, 8, !dbg !2469
  %86 = zext i32 %85 to i64, !dbg !2469
  %add.ptr205 = getelementptr inbounds i8, i8* %add.ptr199, i64 %86, !dbg !2469
  %87 = bitcast i8* %add.ptr205 to %struct._strchunk*, !dbg !2470
  call void @llvm.dbg.value(metadata %struct._strchunk* %87, metadata !2279, metadata !DIExpression()), !dbg !2471
  %next206 = bitcast i8* %add.ptr205 to %struct._strchunk**, !dbg !2472
  %88 = load %struct._strchunk*, %struct._strchunk** %next206, align 8, !dbg !2472, !tbaa !282
  %prev207 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %88, i64 0, i32 1, !dbg !2473
  %89 = bitcast %struct._strchunk** %prev207 to i8**, !dbg !2474
  store i8* %add.ptr205, i8** %89, align 8, !dbg !2474, !tbaa !282
  br label %while.body, !dbg !2475

while.body:                                       ; preds = %if.then188, %while.body
  %fch.0470 = phi %struct._strchunk* [ %87, %if.then188 ], [ %92, %while.body ]
  call void @llvm.dbg.value(metadata %struct._strchunk* %fch.0470, metadata !2279, metadata !DIExpression()), !dbg !2471
  %gcov_ctr326 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 26), align 16, !dbg !2476
  %90 = add i64 %gcov_ctr326, 1, !dbg !2476
  store i64 %90, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 26), align 16, !dbg !2476
  %head209 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %fch.0470, i64 0, i32 2, !dbg !2478
  %91 = bitcast %struct._stritem** %head209 to i8**, !dbg !2479
  store i8* %new_it.1.in, i8** %91, align 8, !dbg !2479, !tbaa !282
  %next210 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %fch.0470, i64 0, i32 0, !dbg !2480
  %92 = load %struct._strchunk*, %struct._strchunk** %next210, align 8, !dbg !2480, !tbaa !282
  call void @llvm.dbg.value(metadata %struct._strchunk* %92, metadata !2279, metadata !DIExpression()), !dbg !2471
  %tobool208.not = icmp eq %struct._strchunk* %92, null, !dbg !2475
  br i1 %tobool208.not, label %while.end, label %while.body, !dbg !2475, !llvm.loop !2481

while.end:                                        ; preds = %while.body
  %gcov_ctr327 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 27), align 8, !dbg !2483
  %93 = add i64 %gcov_ctr327, 1, !dbg !2483
  store i64 %93, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 27), align 8, !dbg !2483
  br label %if.end211, !dbg !2484

if.end211:                                        ; preds = %while.end, %if.end176
  %gcov_ctr328 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 28), align 16, !dbg !2485
  %94 = add i64 %gcov_ctr328, 1, !dbg !2485
  store i64 %94, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 28), align 16, !dbg !2485
  store i16 0, i16* %refcount51, align 4, !dbg !2486, !tbaa !381
  store i16 12, i16* %it_flags14481, align 2, !dbg !2487, !tbaa !381
  %95 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 6), align 4, !dbg !2488, !tbaa !2489
  %inc214 = add i32 %95, 1, !dbg !2488
  store i32 %inc214, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 6), align 4, !dbg !2488, !tbaa !2489
  br label %if.end232, !dbg !2490

if.else215:                                       ; preds = %if.then165
  call void @llvm.dbg.value(metadata %struct._stritem* %new_it.1, metadata !2287, metadata !DIExpression()), !dbg !2491
  %prev216 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %ch.0480, i64 0, i32 1, !dbg !2492
  %96 = bitcast %struct._strchunk** %prev216 to i8***, !dbg !2492
  %97 = load i8**, i8*** %96, align 8, !dbg !2492, !tbaa !282
  store i8* %new_it.1.in, i8** %97, align 8, !dbg !2493, !tbaa !282
  %next218 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %ch.0480, i64 0, i32 0, !dbg !2494
  %98 = load %struct._strchunk*, %struct._strchunk** %next218, align 8, !dbg !2494, !tbaa !282
  %tobool219.not = icmp eq %struct._strchunk* %98, null, !dbg !2496
  br i1 %tobool219.not, label %if.end223, label %if.then220, !dbg !2497

if.then220:                                       ; preds = %if.else215
  call void @llvm.dbg.value(metadata %struct._stritem* %new_it.1, metadata !2287, metadata !DIExpression()), !dbg !2491
  %gcov_ctr329 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 29), align 8, !dbg !2498
  %99 = add i64 %gcov_ctr329, 1, !dbg !2498
  store i64 %99, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 29), align 8, !dbg !2498
  %100 = load %struct._strchunk*, %struct._strchunk** %next218, align 8, !dbg !2499, !tbaa !282
  %prev222 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %100, i64 0, i32 1, !dbg !2500
  %101 = bitcast %struct._strchunk** %prev222 to i8**, !dbg !2501
  store i8* %new_it.1.in, i8** %101, align 8, !dbg !2501, !tbaa !282
  br label %if.end223, !dbg !2502

if.end223:                                        ; preds = %if.then220, %if.else215
  %gcov_ctr330 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 30), align 16, !dbg !2503
  %102 = add i64 %gcov_ctr330, 1, !dbg !2503
  store i64 %102, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 30), align 16, !dbg !2503
  %103 = bitcast %struct._strchunk* %ch.0480 to i8*, !dbg !2504
  %used = getelementptr inbounds %struct._strchunk, %struct._strchunk* %ch.0480, i64 0, i32 4, !dbg !2505
  %104 = load i32, i32* %used, align 4, !dbg !2505, !tbaa !315
  %conv224 = sext i32 %104 to i64, !dbg !2506
  %add225 = add nsw i64 %conv224, 48, !dbg !2507
  %call226 = tail call i8* @memcpy(i8* noundef nonnull %new_it.1.in, i8* noundef nonnull %103, i64 noundef %add225) #14, !dbg !2508
  %refcount227 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %ch.0480, i64 0, i32 6, !dbg !2509
  store i16 0, i16* %refcount227, align 4, !dbg !2510, !tbaa !381
  %it_flags228 = getelementptr inbounds %struct._strchunk, %struct._strchunk* %ch.0480, i64 0, i32 7, !dbg !2511
  store i16 12, i16* %it_flags228, align 2, !dbg !2512, !tbaa !381
  %105 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 9), align 8, !dbg !2513, !tbaa !2514
  %inc229 = add i32 %105, 1, !dbg !2513
  store i32 %inc229, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 9), align 8, !dbg !2513, !tbaa !2514
  %106 = load i16, i16* %refcount51, align 4, !dbg !2515, !tbaa !381
  %dec231 = add i16 %106, -1, !dbg !2515
  store i16 %dec231, i16* %refcount51, align 4, !dbg !2515, !tbaa !381
  br label %if.end232

if.end232:                                        ; preds = %if.end223, %if.end211
  %107 = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 13), align 8, !dbg !2516, !tbaa !2237
  %arrayidx234 = getelementptr inbounds i8, i8* %107, i64 %idxprom2, !dbg !2517
  store i8 1, i8* %arrayidx234, align 1, !dbg !2518, !tbaa !351
  br label %if.end274, !dbg !2519

do.body236.sink.split:                            ; preds = %land.lhs.true151, %land.lhs.true142
  %.sink = phi i64* [ getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 21), %land.lhs.true142 ], [ getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 23), %land.lhs.true151 ]
  %gcov_ctr321 = load i64, i64* %.sink, align 8, !dbg !2447
  %108 = add i64 %gcov_ctr321, 1, !dbg !2447
  store i64 %108, i64* %.sink, align 8, !dbg !2447
  %109 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 7), align 8, !dbg !2447, !tbaa !2520
  %inc147 = add i32 %109, 1, !dbg !2447
  store i32 %inc147, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 7), align 8, !dbg !2447, !tbaa !2520
  br label %do.body236, !dbg !2450

do.body236:                                       ; preds = %do.body236.sink.split, %lor.lhs.false, %land.lhs.true132
  call void @llvm.dbg.value(metadata %struct._stritem* %new_it.1, metadata !2277, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i32 undef, metadata !2276, metadata !DIExpression()), !dbg !2304
  %call163469 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !2450
  %110 = load i8*, i8** @storage, align 8, !dbg !2521, !tbaa !282
  tail call void @storage_delete(i8* noundef %110, %struct._stritem* noundef nonnull %it.0478) #14, !dbg !2521
  br i1 %cmp119, label %land.lhs.true240, label %if.else251, !dbg !2524

land.lhs.true240:                                 ; preds = %do.body236
  %gcov_ctr331 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 31), align 8, !dbg !2526
  %111 = add i64 %gcov_ctr331, 1, !dbg !2526
  store i64 %111, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 31), align 8, !dbg !2526
  %112 = load i16, i16* %it_flags14481, align 2, !dbg !2527, !tbaa !381
  %113 = and i16 %112, 32, !dbg !2528
  %cmp244 = icmp eq i16 %113, 0, !dbg !2529
  br i1 %cmp244, label %if.then246, label %if.else251, !dbg !2530

if.then246:                                       ; preds = %land.lhs.true240
  %gcov_ctr332 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 32), align 16, !dbg !2531
  %114 = add i64 %gcov_ctr332, 1, !dbg !2531
  store i64 %114, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 32), align 16, !dbg !2531
  tail call void @do_item_unlink(%struct._stritem* noundef nonnull %it.0478, i32 noundef %call41) #14, !dbg !2533
  store i16 12, i16* %it_flags14481, align 2, !dbg !2534, !tbaa !381
  store i16 0, i16* %refcount51, align 4, !dbg !2535, !tbaa !381
  %115 = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 13), align 8, !dbg !2536, !tbaa !2237
  %arrayidx250 = getelementptr inbounds i8, i8* %115, i64 %idxprom2, !dbg !2537
  store i8 1, i8* %arrayidx250, align 1, !dbg !2538, !tbaa !351
  br label %if.end274, !dbg !2539

if.else251:                                       ; preds = %land.lhs.true240, %do.body236
  %gcov_ctr333 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 33), align 8, !dbg !2540
  %116 = add i64 %gcov_ctr333, 1, !dbg !2540
  store i64 %116, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 33), align 8, !dbg !2540
  call void @llvm.dbg.value(metadata !DIArgList(i64 48, i64 undef, i64 undef, i32 undef, i8 undef), metadata !2278, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !2304
  tail call void @do_item_unlink(%struct._stritem* noundef nonnull %it.0478, i32 noundef %call41) #14, !dbg !2542
  %117 = bitcast %struct._stritem* %it.0478 to i8*, !dbg !2543
  %118 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 3), align 8, !dbg !2544, !tbaa !1338
  tail call void @slabs_free(i8* noundef %117, i64 undef, i32 noundef %118) #13, !dbg !2545
  %119 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 5), align 8, !dbg !2546, !tbaa !2547
  %inc271 = add i32 %119, 1, !dbg !2546
  store i32 %inc271, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 5), align 8, !dbg !2546, !tbaa !2547
  call void @llvm.dbg.value(metadata i32 1, metadata !2258, metadata !DIExpression()), !dbg !2289
  br label %if.end274

if.end274:                                        ; preds = %if.then246, %if.else251, %if.end232
  %was_busy.0 = phi i32 [ 0, %if.end232 ], [ 1, %if.else251 ], [ 0, %if.then246 ], !dbg !2289
  call void @llvm.dbg.value(metadata i32 %was_busy.0, metadata !2258, metadata !DIExpression()), !dbg !2289
  tail call void @item_trylock_unlock(i8* noundef nonnull %call42) #14, !dbg !2548
  %call275 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !2549
  br label %sw.epilog, !dbg !2550

sw.bb276:                                         ; preds = %if.then23
  %gcov_ctr303 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 3), align 8, !dbg !2327
  %120 = add i64 %gcov_ctr303, 1, !dbg !2327
  store i64 %120, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 3), align 8, !dbg !2327
  tail call fastcc void @slab_rebalance_cut_free(%struct.slabclass_t* noundef nonnull %arrayidx, %struct._stritem* noundef nonnull %it.0478) #13, !dbg !2551
  call void @llvm.dbg.value(metadata i32 0, metadata !2260, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 1, metadata !2262, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* null, metadata !2261, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 0, metadata !2276, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !2277, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i64 0, metadata !2278, metadata !DIExpression()), !dbg !2304
  %gcov_ctr315 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 15), align 8, !dbg !2552
  %121 = add i64 %gcov_ctr315, 1, !dbg !2552
  store i64 %121, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 15), align 8, !dbg !2552
  %122 = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 13), align 8, !dbg !2552, !tbaa !2237
  %arrayidx278 = getelementptr inbounds i8, i8* %122, i64 %idxprom2, !dbg !2553
  store i8 1, i8* %arrayidx278, align 1, !dbg !2554, !tbaa !351
  %refcount279 = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0478, i64 0, i32 6, !dbg !2555
  store i16 0, i16* %refcount279, align 4, !dbg !2556, !tbaa !381
  store i16 12, i16* %it_flags14481, align 2, !dbg !2557, !tbaa !381
  br label %sw.epilog, !dbg !2558

sw.bb281:                                         ; preds = %if.then45, %if.else89, %if.then85
  call void @llvm.dbg.value(metadata i32 0, metadata !2260, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 1, metadata !2262, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* null, metadata !2261, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 0, metadata !2276, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !2277, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i64 0, metadata !2278, metadata !DIExpression()), !dbg !2304
  %gcov_ctr334 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 34), align 16, !dbg !2559
  %123 = add i64 %gcov_ctr334, 1, !dbg !2559
  store i64 %123, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 34), align 16, !dbg !2559
  %124 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 5), align 8, !dbg !2559, !tbaa !2547
  %inc282 = add i32 %124, 1, !dbg !2559
  store i32 %inc282, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 5), align 8, !dbg !2559, !tbaa !2547
  call void @llvm.dbg.value(metadata i32 1, metadata !2258, metadata !DIExpression()), !dbg !2289
  br label %sw.epilog, !dbg !2560

sw.epilog:                                        ; preds = %if.end13, %sw.bb281, %sw.bb276, %if.end274
  %was_busy.1 = phi i32 [ 1, %sw.bb281 ], [ 0, %sw.bb276 ], [ %was_busy.0, %if.end274 ], [ 0, %if.end13 ], !dbg !2289
  call void @llvm.dbg.value(metadata i32 %was_busy.1, metadata !2258, metadata !DIExpression()), !dbg !2289
  %gcov_ctr335 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 35), align 8, !dbg !2561
  %125 = add i64 %gcov_ctr335, 1, !dbg !2561
  store i64 %125, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 35), align 8, !dbg !2561
  %call284 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !2561
  %.pre = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 2), align 8, !dbg !2562, !tbaa !2225
  %.pre471 = load i32, i32* %size, align 8, !dbg !2563, !tbaa !310
  %.pre472 = zext i32 %.pre471 to i64, !dbg !2564
  br label %if.end285, !dbg !2565

if.end285:                                        ; preds = %sw.epilog, %entry
  %idx.ext287.pre-phi = phi i64 [ %.pre472, %sw.epilog ], [ %conv, %entry ], !dbg !2564
  %126 = phi i8* [ %.pre, %sw.epilog ], [ %2, %entry ], !dbg !2562
  %was_busy.2 = phi i32 [ %was_busy.1, %sw.epilog ], [ 0, %entry ], !dbg !2566
  call void @llvm.dbg.value(metadata i32 %was_busy.2, metadata !2258, metadata !DIExpression()), !dbg !2289
  %add.ptr288 = getelementptr inbounds i8, i8* %126, i64 %idx.ext287.pre-phi, !dbg !2564
  store i8* %add.ptr288, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 2), align 8, !dbg !2567, !tbaa !2225
  %127 = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 1), align 8, !dbg !2568, !tbaa !2223
  %cmp289.not = icmp ult i8* %add.ptr288, %127, !dbg !2570
  br i1 %cmp289.not, label %if.end300, label %if.then291, !dbg !2571

if.then291:                                       ; preds = %if.end285
  %128 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 5), align 8, !dbg !2572, !tbaa !2547
  %tobool292.not = icmp eq i32 %128, 0, !dbg !2575
  br i1 %tobool292.not, label %if.else297, label %if.then293, !dbg !2576

if.then293:                                       ; preds = %if.then291
  %gcov_ctr336 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 36), align 16, !dbg !2577
  %129 = add i64 %gcov_ctr336, 1, !dbg !2577
  store i64 %129, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 36), align 16, !dbg !2577
  %130 = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 0), align 8, !dbg !2577, !tbaa !1359
  store i8* %130, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 2), align 8, !dbg !2579, !tbaa !2225
  tail call void @STATS_LOCK() #14, !dbg !2580
  %131 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 5), align 8, !dbg !2581, !tbaa !2547
  %conv294 = zext i32 %131 to i64, !dbg !2582
  %132 = load i64, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 10), align 8, !dbg !2583, !tbaa !2584
  %add295 = add i64 %132, %conv294, !dbg !2583
  store i64 %add295, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 10), align 8, !dbg !2583, !tbaa !2584
  tail call void @STATS_UNLOCK() #14, !dbg !2587
  store i32 0, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 5), align 8, !dbg !2588, !tbaa !2547
  %133 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 11), align 8, !dbg !2589, !tbaa !2362
  %inc296 = add i32 %133, 1, !dbg !2589
  store i32 %inc296, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 11), align 8, !dbg !2589, !tbaa !2362
  br label %if.end300, !dbg !2590

if.else297:                                       ; preds = %if.then291
  %gcov_ctr337 = load i64, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 37), align 8, !dbg !2591
  %134 = add i64 %gcov_ctr337, 1, !dbg !2591
  store i64 %134, i64* getelementptr inbounds ([38 x i64], [38 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 37), align 8, !dbg !2591
  %135 = load i8, i8* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 12), align 4, !dbg !2591, !tbaa !1429
  %inc298 = add i8 %135, 1, !dbg !2591
  store i8 %inc298, i8* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 12), align 4, !dbg !2591, !tbaa !1429
  br label %if.end300

if.end300:                                        ; preds = %if.then293, %if.else297, %if.end285
  ret i32 %was_busy.2, !dbg !2593
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @slab_rebalance_finish() unnamed_addr #4 !dbg !2594 {
entry:
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !2604
  %0 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 3), align 8, !dbg !2605, !tbaa !1338
  %idxprom = sext i32 %0 to i64, !dbg !2606
  call void @llvm.dbg.value(metadata !DIArgList([64 x %struct.slabclass_t]* @slabclass, i64 %idxprom), metadata !2596, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2607
  %1 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 4), align 4, !dbg !2608, !tbaa !1341
  %idxprom1 = sext i32 %1 to i64, !dbg !2609
  call void @llvm.dbg.value(metadata !DIArgList([64 x %struct.slabclass_t]* @slabclass, i64 %idxprom1), metadata !2597, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2607
  %slabs = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 4, !dbg !2610
  %2 = load i32, i32* %slabs, align 4, !dbg !2611, !tbaa !361
  %dec = add i32 %2, -1, !dbg !2611
  store i32 %dec, i32* %slabs, align 4, !dbg !2611, !tbaa !361
  call void @llvm.dbg.value(metadata i32 0, metadata !2598, metadata !DIExpression()), !dbg !2607
  %cmp57.not = icmp eq i32 %dec, 0, !dbg !2612
  br i1 %cmp57.not, label %for.end, label %for.body.lr.ph, !dbg !2615

for.body.lr.ph:                                   ; preds = %entry
  %slab_list = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 5
  %wide.trip.count = zext i32 %dec to i64, !dbg !2612
  %xtraiter = and i64 %wide.trip.count, 1, !dbg !2615
  %3 = icmp eq i32 %dec, 1, !dbg !2615
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new, !dbg !2615

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294, !dbg !2615
  br label %for.body, !dbg !2615

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.1, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2598, metadata !DIExpression()), !dbg !2607
  %4 = load i8**, i8*** %slab_list, align 8, !dbg !2616, !tbaa !359
  %indvars.iv.next = or i64 %indvars.iv, 1, !dbg !2618
  %arrayidx5 = getelementptr inbounds i8*, i8** %4, i64 %indvars.iv.next, !dbg !2619
  %5 = load i8*, i8** %arrayidx5, align 8, !dbg !2619, !tbaa !282
  %arrayidx8 = getelementptr inbounds i8*, i8** %4, i64 %indvars.iv, !dbg !2620
  store i8* %5, i8** %arrayidx8, align 8, !dbg !2621, !tbaa !282
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 0), align 16, !dbg !2622
  %6 = add i64 %gcov_ctr, 1, !dbg !2622
  store i64 %6, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 0), align 16, !dbg !2622
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2598, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2598, metadata !DIExpression()), !dbg !2607
  %7 = load i8**, i8*** %slab_list, align 8, !dbg !2616, !tbaa !359
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !2618
  %arrayidx5.1 = getelementptr inbounds i8*, i8** %7, i64 %indvars.iv.next.1, !dbg !2619
  %8 = load i8*, i8** %arrayidx5.1, align 8, !dbg !2619, !tbaa !282
  %arrayidx8.1 = getelementptr inbounds i8*, i8** %7, i64 %indvars.iv.next, !dbg !2620
  store i8* %8, i8** %arrayidx8.1, align 8, !dbg !2621, !tbaa !282
  %gcov_ctr.1 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 0), align 16, !dbg !2622
  %9 = add i64 %gcov_ctr.1, 1, !dbg !2622
  store i64 %9, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 0), align 16, !dbg !2622
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !2598, metadata !DIExpression()), !dbg !2607
  %niter.next.1 = add i64 %niter, 2, !dbg !2615
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !2615
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body, !dbg !2615, !llvm.loop !2623

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2615
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil, !dbg !2615

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa
  call void @llvm.dbg.value(metadata i64 %indvars.iv.unr, metadata !2598, metadata !DIExpression()), !dbg !2607
  %10 = load i8**, i8*** %slab_list, align 8, !dbg !2616, !tbaa !359
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.unr, 1, !dbg !2618
  %arrayidx5.epil = getelementptr inbounds i8*, i8** %10, i64 %indvars.iv.next.epil, !dbg !2619
  %11 = load i8*, i8** %arrayidx5.epil, align 8, !dbg !2619, !tbaa !282
  %arrayidx8.epil = getelementptr inbounds i8*, i8** %10, i64 %indvars.iv.unr, !dbg !2620
  store i8* %11, i8** %arrayidx8.epil, align 8, !dbg !2621, !tbaa !282
  %gcov_ctr.epil = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 0), align 16, !dbg !2622
  %12 = add i64 %gcov_ctr.epil, 1, !dbg !2622
  store i64 %12, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 0), align 16, !dbg !2622
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.epil, metadata !2598, metadata !DIExpression()), !dbg !2607
  br label %for.end, !dbg !2625

for.end:                                          ; preds = %for.body.epil, %for.end.loopexit.unr-lcssa, %entry
  %13 = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 0), align 8, !dbg !2625, !tbaa !1359
  %slab_list9 = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom1, i32 5, !dbg !2626
  %14 = load i8**, i8*** %slab_list9, align 8, !dbg !2626, !tbaa !359
  %slabs10 = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom1, i32 4, !dbg !2627
  %15 = load i32, i32* %slabs10, align 4, !dbg !2628, !tbaa !361
  %inc11 = add i32 %15, 1, !dbg !2628
  store i32 %inc11, i32* %slabs10, align 4, !dbg !2628, !tbaa !361
  %idxprom12 = zext i32 %15 to i64, !dbg !2629
  %arrayidx13 = getelementptr inbounds i8*, i8** %14, i64 %idxprom12, !dbg !2629
  store i8* %13, i8** %arrayidx13, align 8, !dbg !2630, !tbaa !282
  %cmp14 = icmp sgt i32 %1, 0, !dbg !2631
  br i1 %cmp14, label %if.then, label %if.else, !dbg !2633

if.then:                                          ; preds = %for.end
  %gcov_ctr38 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 1), align 8, !dbg !2634
  %16 = add i64 %gcov_ctr38, 1, !dbg !2634
  store i64 %16, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 1), align 8, !dbg !2634
  %17 = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 0), align 8, !dbg !2634, !tbaa !1359
  %18 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 24), align 4, !dbg !2636, !tbaa !542
  %conv = sext i32 %18 to i64, !dbg !2637
  %call15 = tail call i8* @memset(i8* noundef %17, i32 noundef 0, i64 noundef %conv) #14, !dbg !2638
  %19 = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 0), align 8, !dbg !2639, !tbaa !1359
  %20 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 4), align 4, !dbg !2640, !tbaa !1341
  tail call fastcc void @split_slab_page_into_freelist(i8* noundef %19, i32 noundef %20) #13, !dbg !2641
  br label %if.end20, !dbg !2642

if.else:                                          ; preds = %for.end
  %cmp16 = icmp eq i32 %1, 0, !dbg !2643
  br i1 %cmp16, label %if.then18, label %if.end, !dbg !2645

if.then18:                                        ; preds = %if.else
  %gcov_ctr39 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 2), align 16, !dbg !2646
  %21 = add i64 %gcov_ctr39, 1, !dbg !2646
  store i64 %21, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 2), align 16, !dbg !2646
  %22 = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 0), align 8, !dbg !2646, !tbaa !1359
  %call19 = tail call i8* @memset(i8* noundef %22, i32 noundef 0, i64 noundef 48) #14, !dbg !2648
  tail call fastcc void @memory_release() #13, !dbg !2649
  br label %if.end, !dbg !2650

if.end:                                           ; preds = %if.then18, %if.else
  %gcov_ctr40 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 3), align 8
  %23 = add i64 %gcov_ctr40, 1
  store i64 %23, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 3), align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then
  store i32 0, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 11), align 8, !dbg !2651, !tbaa !2362
  store i8 0, i8* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 12), align 4, !dbg !2652, !tbaa !1429
  store i32 0, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 3), align 8, !dbg !2653, !tbaa !1338
  store i32 0, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 4), align 4, !dbg !2654, !tbaa !1341
  store <2 x i8*> zeroinitializer, <2 x i8*>* bitcast (%struct.slab_rebalance* @slab_rebal to <2 x i8*>*), align 8, !dbg !2655, !tbaa !282
  store i8* null, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 2), align 8, !dbg !2656, !tbaa !2225
  call void @llvm.dbg.value(metadata i32 undef, metadata !2600, metadata !DIExpression()), !dbg !2607
  %24 = load <2 x i32>, <2 x i32>* bitcast (i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 7) to <2 x i32>*), align 8, !dbg !2657, !tbaa !315
  call void @llvm.dbg.value(metadata i32 undef, metadata !2601, metadata !DIExpression()), !dbg !2607
  %25 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 6), align 4, !dbg !2658, !tbaa !2489
  call void @llvm.dbg.value(metadata i32 %25, metadata !2599, metadata !DIExpression()), !dbg !2607
  %26 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 9), align 8, !dbg !2659, !tbaa !2514
  call void @llvm.dbg.value(metadata i32 %26, metadata !2602, metadata !DIExpression()), !dbg !2607
  %27 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 10), align 4, !dbg !2660, !tbaa !2367
  call void @llvm.dbg.value(metadata i32 %27, metadata !2603, metadata !DIExpression()), !dbg !2607
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 6) to <4 x i32>*), align 4, !dbg !2661, !tbaa !315
  store i32 0, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 10), align 4, !dbg !2662, !tbaa !2367
  store volatile i32 0, i32* @slab_rebalance_signal, align 4, !dbg !2663, !tbaa !315
  %28 = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 13), align 8, !dbg !2664, !tbaa !2237
  tail call void @free(i8* noundef %28) #14, !dbg !2665
  %call21 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @slabs_lock) #14, !dbg !2666
  tail call void @STATS_LOCK() #14, !dbg !2667
  %conv23 = zext i32 %25 to i64, !dbg !2668
  %29 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 5) to <2 x i64>*), align 8, !dbg !2669, !tbaa !477
  %30 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %conv23, i64 1, !dbg !2669
  %31 = add <2 x i64> %29, %30, !dbg !2669
  store <2 x i64> %31, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 5) to <2 x i64>*), align 8, !dbg !2669, !tbaa !477
  %32 = zext <2 x i32> %24 to <2 x i64>, !dbg !2670
  %33 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 7) to <2 x i64>*), align 8, !dbg !2671, !tbaa !477
  %34 = add <2 x i64> %33, %32, !dbg !2671
  store <2 x i64> %34, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 7) to <2 x i64>*), align 8, !dbg !2671, !tbaa !477
  %conv29 = zext i32 %26 to i64, !dbg !2672
  %35 = load i64, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 9), align 8, !dbg !2673, !tbaa !2674
  %add30 = add i64 %35, %conv29, !dbg !2673
  store i64 %add30, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 9), align 8, !dbg !2673, !tbaa !2674
  %conv31 = zext i32 %27 to i64, !dbg !2675
  %36 = load i64, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 11), align 8, !dbg !2676, !tbaa !2677
  %add32 = add i64 %36, %conv31, !dbg !2676
  store i64 %add32, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 11), align 8, !dbg !2676, !tbaa !2677
  store i8 0, i8* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 10), align 2, !dbg !2678, !tbaa !2250
  tail call void @STATS_UNLOCK() #14, !dbg !2679
  %37 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2680, !tbaa !554
  %cmp33 = icmp sgt i32 %37, 1, !dbg !2682
  br i1 %cmp33, label %if.then35, label %if.end37, !dbg !2683

if.then35:                                        ; preds = %if.end20
  %gcov_ctr41 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 4), align 16, !dbg !2684
  %38 = add i64 %gcov_ctr41, 1, !dbg !2684
  store i64 %38, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 4), align 16, !dbg !2684
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2684, !tbaa !282
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0)) #14, !dbg !2686
  br label %if.end37, !dbg !2687

if.end37:                                         ; preds = %if.then35, %if.end20
  ret void, !dbg !2688
}

declare !dbg !2689 dso_local i32 @usleep(i32 noundef) local_unnamed_addr #5

declare !dbg !2694 dso_local i32 @pthread_cond_wait(%union.pthread_cond_t* noundef, %union.pthread_mutex_t* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2699 dso_local noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

declare !dbg !2702 dso_local void @STATS_LOCK() local_unnamed_addr #5

declare !dbg !2703 dso_local void @STATS_UNLOCK() local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @slab_rebalance_cut_free(%struct.slabclass_t* nocapture noundef %s_cls, %struct._stritem* noundef readonly %it) unnamed_addr #4 !dbg !2704 {
entry:
  call void @llvm.dbg.value(metadata %struct.slabclass_t* %s_cls, metadata !2708, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !2709, metadata !DIExpression()), !dbg !2710
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !2711
  %0 = load i16, i16* %it_flags, align 2, !dbg !2711, !tbaa !381
  %cmp = icmp eq i16 %0, 4, !dbg !2711
  br i1 %cmp, label %if.then, label %if.else, !dbg !2714

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 0), align 16, !dbg !2714
  %1 = add i64 %gcov_ctr, 1, !dbg !2714
  store i64 %1, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 0), align 16, !dbg !2714
  %slots = getelementptr inbounds %struct.slabclass_t, %struct.slabclass_t* %s_cls, i64 0, i32 2, !dbg !2715
  %2 = load i8*, i8** %slots, align 8, !dbg !2715, !tbaa !389
  %3 = bitcast %struct._stritem* %it to i8*, !dbg !2717
  %cmp2 = icmp eq i8* %2, %3, !dbg !2718
  br i1 %cmp2, label %if.then4, label %if.end6, !dbg !2719

if.else:                                          ; preds = %entry
  %gcov_ctr19 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 1), align 8, !dbg !2711
  %4 = add i64 %gcov_ctr19, 1, !dbg !2711
  store i64 %4, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 1), align 8, !dbg !2711
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 noundef 824, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.slab_rebalance_cut_free, i64 0, i64 0)) #17, !dbg !2711
  unreachable, !dbg !2711

if.then4:                                         ; preds = %if.then
  %gcov_ctr20 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 2), align 16, !dbg !2720
  %5 = add i64 %gcov_ctr20, 1, !dbg !2720
  store i64 %5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 2), align 16, !dbg !2720
  %6 = bitcast %struct._stritem* %it to i8**, !dbg !2722
  %7 = load i8*, i8** %6, align 8, !dbg !2722, !tbaa !282
  store i8* %7, i8** %slots, align 8, !dbg !2723, !tbaa !389
  br label %if.end6, !dbg !2724

if.end6:                                          ; preds = %if.then4, %if.then
  %next7 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 0, !dbg !2725
  %8 = load %struct._stritem*, %struct._stritem** %next7, align 8, !dbg !2725, !tbaa !282
  %tobool.not = icmp eq %struct._stritem* %8, null, !dbg !2727
  br i1 %tobool.not, label %if.end11, label %if.then8, !dbg !2728

if.then8:                                         ; preds = %if.end6
  %gcov_ctr21 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 3), align 8, !dbg !2729
  %9 = add i64 %gcov_ctr21, 1, !dbg !2729
  store i64 %9, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 3), align 8, !dbg !2729
  %prev = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 1, !dbg !2730
  %10 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !2730, !tbaa !282
  %11 = load %struct._stritem*, %struct._stritem** %next7, align 8, !dbg !2731, !tbaa !282
  %prev10 = getelementptr inbounds %struct._stritem, %struct._stritem* %11, i64 0, i32 1, !dbg !2732
  store %struct._stritem* %10, %struct._stritem** %prev10, align 8, !dbg !2733, !tbaa !282
  br label %if.end11, !dbg !2734

if.end11:                                         ; preds = %if.then8, %if.end6
  %prev12 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 1, !dbg !2735
  %12 = load %struct._stritem*, %struct._stritem** %prev12, align 8, !dbg !2735, !tbaa !282
  %tobool13.not = icmp eq %struct._stritem* %12, null, !dbg !2737
  br i1 %tobool13.not, label %if.end18, label %if.then14, !dbg !2738

if.then14:                                        ; preds = %if.end11
  %gcov_ctr22 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 4), align 16, !dbg !2739
  %13 = add i64 %gcov_ctr22, 1, !dbg !2739
  store i64 %13, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 4), align 16, !dbg !2739
  %14 = load %struct._stritem*, %struct._stritem** %next7, align 8, !dbg !2740, !tbaa !282
  %15 = load %struct._stritem*, %struct._stritem** %prev12, align 8, !dbg !2741, !tbaa !282
  %next17 = getelementptr inbounds %struct._stritem, %struct._stritem* %15, i64 0, i32 0, !dbg !2742
  store %struct._stritem* %14, %struct._stritem** %next17, align 8, !dbg !2743, !tbaa !282
  br label %if.end18, !dbg !2744

if.end18:                                         ; preds = %if.then14, %if.end11
  %sl_curr = getelementptr inbounds %struct.slabclass_t, %struct.slabclass_t* %s_cls, i64 0, i32 3, !dbg !2745
  %16 = load i32, i32* %sl_curr, align 8, !dbg !2746, !tbaa !404
  %dec = add i32 %16, -1, !dbg !2746
  store i32 %dec, i32* %sl_curr, align 8, !dbg !2746, !tbaa !404
  ret void, !dbg !2747
}

declare !dbg !2748 dso_local i8* @item_trylock(i32 noundef) local_unnamed_addr #5

declare !dbg !2751 dso_local void @storage_delete(i8* noundef, %struct._stritem* noundef) local_unnamed_addr #5

declare !dbg !2755 dso_local void @do_item_unlink(%struct._stritem* noundef, i32 noundef) local_unnamed_addr #5

declare !dbg !2759 dso_local void @item_trylock_unlock(i8* noundef) local_unnamed_addr #5

declare !dbg !2760 dso_local i32 @item_is_flushed(%struct._stritem* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @slab_rebalance_alloc(i64 noundef %size, i32 noundef %id) unnamed_addr #4 !dbg !2763 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i64 %size, metadata !2767, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %id, metadata !2768, metadata !DIExpression()), !dbg !2772
  %1 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 3), align 8, !dbg !2773, !tbaa !1338
  %idxprom = sext i32 %1 to i64, !dbg !2774
  call void @llvm.dbg.value(metadata !DIArgList([64 x %struct.slabclass_t]* @slabclass, i64 %idxprom), metadata !2769, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2772
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !2771, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 0, metadata !2770, metadata !DIExpression()), !dbg !2772
  %perslab = getelementptr inbounds [64 x %struct.slabclass_t], [64 x %struct.slabclass_t]* @slabclass, i64 0, i64 %idxprom, i32 1
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !2771, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 0, metadata !2770, metadata !DIExpression()), !dbg !2772
  %2 = load i32, i32* %perslab, align 4, !dbg !2775, !tbaa !546
  %cmp21.not = icmp eq i32 %2, 0, !dbg !2778
  br i1 %cmp21.not, label %for.end, label %for.body, !dbg !2779

for.body:                                         ; preds = %entry, %if.then4
  %x.022 = phi i32 [ %inc6, %if.then4 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i32 %x.022, metadata !2770, metadata !DIExpression()), !dbg !2772
  %call = tail call fastcc i8* @do_slabs_alloc(i64 noundef %size, i32 noundef %id, i32 noundef 1) #13, !dbg !2780
  call void @llvm.dbg.value(metadata i8* %call, metadata !2771, metadata !DIExpression()), !dbg !2772
  %cmp1 = icmp eq i8* %call, null, !dbg !2782
  br i1 %cmp1, label %for.end.sink.split, label %if.end, !dbg !2784

if.end:                                           ; preds = %for.body
  %3 = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 0), align 8, !dbg !2785, !tbaa !1359
  %cmp2.not = icmp ult i8* %call, %3, !dbg !2787
  br i1 %cmp2.not, label %for.end.sink.split, label %land.lhs.true, !dbg !2788

land.lhs.true:                                    ; preds = %if.end
  %gcov_ctr8 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 2), align 16, !dbg !2789
  %4 = add i64 %gcov_ctr8, 1, !dbg !2789
  store i64 %4, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 2), align 16, !dbg !2789
  %5 = load i8*, i8** getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 1), align 8, !dbg !2790, !tbaa !2223
  %cmp3 = icmp ult i8* %call, %5, !dbg !2791
  br i1 %cmp3, label %if.then4, label %for.end.sink.split, !dbg !2792

if.then4:                                         ; preds = %land.lhs.true
  %refcount = getelementptr inbounds i8, i8* %call, i64 36, !dbg !2793
  %6 = bitcast i8* %refcount to i16*, !dbg !2793
  store i16 0, i16* %6, align 4, !dbg !2795, !tbaa !381
  %it_flags = getelementptr inbounds i8, i8* %call, i64 38, !dbg !2796
  %7 = bitcast i8* %it_flags to i16*, !dbg !2796
  store i16 12, i16* %7, align 2, !dbg !2797, !tbaa !381
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !2771, metadata !DIExpression()), !dbg !2772
  %8 = load i32, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 8), align 4, !dbg !2798, !tbaa !2799
  %inc = add i32 %8, 1, !dbg !2798
  store i32 %inc, i32* getelementptr inbounds (%struct.slab_rebalance, %struct.slab_rebalance* @slab_rebal, i64 0, i32 8), align 4, !dbg !2798, !tbaa !2799
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 4), align 16, !dbg !2800
  %9 = add i64 %gcov_ctr10, 1, !dbg !2800
  store i64 %9, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 4), align 16, !dbg !2800
  %inc6 = add nuw nsw i32 %x.022, 1, !dbg !2800
  call void @llvm.dbg.value(metadata i32 %inc6, metadata !2770, metadata !DIExpression()), !dbg !2772
  %10 = load i32, i32* %perslab, align 4, !dbg !2775, !tbaa !546
  %cmp = icmp ult i32 %inc6, %10, !dbg !2778
  br i1 %cmp, label %for.body, label %for.end, !dbg !2779, !llvm.loop !2801

for.end.sink.split:                               ; preds = %if.end, %land.lhs.true, %for.body
  %.sink = phi i64* [ getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 1), %for.body ], [ getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 3), %land.lhs.true ], [ getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 3), %if.end ]
  %.ph = phi i8* [ null, %for.body ], [ %call, %land.lhs.true ], [ %call, %if.end ]
  %gcov_ctr9 = load i64, i64* %.sink, align 8, !dbg !2803
  %11 = add i64 %gcov_ctr9, 1, !dbg !2803
  store i64 %11, i64* %.sink, align 8, !dbg !2803
  br label %for.end, !dbg !2804

for.end:                                          ; preds = %if.then4, %for.end.sink.split, %entry
  %12 = phi i8* [ null, %entry ], [ %.ph, %for.end.sink.split ], [ null, %if.then4 ], !dbg !2772
  call void @llvm.dbg.value(metadata %struct._stritem* undef, metadata !2771, metadata !DIExpression()), !dbg !2772
  ret i8* %12, !dbg !2804
}

; Function Attrs: nounwind
declare !dbg !2805 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare !dbg !2809 dso_local i32 @do_item_replace(%struct._stritem* noundef, %struct._stritem* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #9 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @0, i64 0, i64 0), i32 875575338, i32 759737913) #15
  br label %counter.loop.header

counter.loop.header:                              ; preds = %entry, %counter.loop.header
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %counter.loop.header ]
  %0 = getelementptr inbounds [41 x %emit_function_args_ty], [41 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 0
  %ident = load i32, i32* %0, align 4
  %1 = getelementptr inbounds [41 x %emit_function_args_ty], [41 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 1
  %func_checkssum = load i32, i32* %1, align 4
  %2 = getelementptr inbounds [41 x %emit_function_args_ty], [41 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 2
  %cfg_checksum = load i32, i32* %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #15
  %3 = getelementptr inbounds [41 x %emit_arcs_args_ty], [41 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 0
  %num_counters = load i32, i32* %3, align 16
  %4 = getelementptr inbounds [41 x %emit_arcs_args_ty], [41 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 1
  %counters = load i64*, i64** %4, align 8
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, i64* %counters) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 41
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
define internal void @__llvm_gcov_reset() unnamed_addr #10 {
entry:
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.46 to i8*), i8 0, i64 40, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.47, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.48 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.49 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(152) bitcast ([19 x i64]* @__llvm_gcov_ctr.50 to i8*), i8 0, i64 152, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) bitcast ([8 x i64]* @__llvm_gcov_ctr.51 to i8*), i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.52 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.53 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.54 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.55 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.56 to i8*), i8 0, i64 16, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.57, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(88) bitcast ([11 x i64]* @__llvm_gcov_ctr.58 to i8*), i8 0, i64 88, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.59, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) bitcast ([6 x i64]* @__llvm_gcov_ctr.60 to i8*), i8 0, i64 48, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.61, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.62 to i8*), i8 0, i64 24, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.63, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.64 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.65 to i8*), i8 0, i64 24, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.68 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x i64]* @__llvm_gcov_ctr.69 to i8*), i8 0, i64 80, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.72 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(88) bitcast ([11 x i64]* @__llvm_gcov_ctr.73 to i8*), i8 0, i64 88, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x i64]* @__llvm_gcov_ctr.75 to i8*), i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.76 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.77 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) bitcast ([6 x i64]* @__llvm_gcov_ctr.78 to i8*), i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) bitcast ([6 x i64]* @__llvm_gcov_ctr.79 to i8*), i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.80 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(88) bitcast ([11 x i64]* @__llvm_gcov_ctr.81 to i8*), i8 0, i64 88, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(304) bitcast ([38 x i64]* @__llvm_gcov_ctr.82 to i8*), i8 0, i64 304, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.83 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.84 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.85 to i8*), i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #9 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #15
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #12

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline nounwind uwtable }
attributes #10 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #17 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!269, !270, !271, !272}
!llvm.gcov = !{!273}
!llvm.ident = !{!274}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "storage", scope: !2, file: !3, line: 54, type: !125, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !86, globals: !149, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "slabs.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "99ea916428705e1b72c47979b5554509")
!4 = !{!5, !14, !31, !45, !63, !68, !73, !79}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reassign_result_type", file: !6, line: 55, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./slabs.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "28867aba1f41c79140864d76faedcb32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "REASSIGN_OK", value: 0)
!10 = !DIEnumerator(name: "REASSIGN_RUNNING", value: 1)
!11 = !DIEnumerator(name: "REASSIGN_BADCLASS", value: 2)
!12 = !DIEnumerator(name: "REASSIGN_NOSPARE", value: 3)
!13 = !DIEnumerator(name: "REASSIGN_SRC_DST_SAME", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "conn_states", file: !15, line: 199, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./memcached.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "9260b30e1b6ff2e5471cc4f8f6971051")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!17 = !DIEnumerator(name: "conn_listening", value: 0)
!18 = !DIEnumerator(name: "conn_new_cmd", value: 1)
!19 = !DIEnumerator(name: "conn_waiting", value: 2)
!20 = !DIEnumerator(name: "conn_read", value: 3)
!21 = !DIEnumerator(name: "conn_parse_cmd", value: 4)
!22 = !DIEnumerator(name: "conn_write", value: 5)
!23 = !DIEnumerator(name: "conn_nread", value: 6)
!24 = !DIEnumerator(name: "conn_swallow", value: 7)
!25 = !DIEnumerator(name: "conn_closing", value: 8)
!26 = !DIEnumerator(name: "conn_mwrite", value: 9)
!27 = !DIEnumerator(name: "conn_closed", value: 10)
!28 = !DIEnumerator(name: "conn_watch", value: 11)
!29 = !DIEnumerator(name: "conn_io_queue", value: 12)
!30 = !DIEnumerator(name: "conn_max_state", value: 13)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bin_substates", file: !15, line: 216, baseType: !7, size: 32, elements: !32)
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!33 = !DIEnumerator(name: "bin_no_state", value: 0)
!34 = !DIEnumerator(name: "bin_reading_set_header", value: 1)
!35 = !DIEnumerator(name: "bin_reading_cas_header", value: 2)
!36 = !DIEnumerator(name: "bin_read_set_value", value: 3)
!37 = !DIEnumerator(name: "bin_reading_get_key", value: 4)
!38 = !DIEnumerator(name: "bin_reading_stat", value: 5)
!39 = !DIEnumerator(name: "bin_reading_del_header", value: 6)
!40 = !DIEnumerator(name: "bin_reading_incr_header", value: 7)
!41 = !DIEnumerator(name: "bin_read_flush_exptime", value: 8)
!42 = !DIEnumerator(name: "bin_reading_sasl_auth", value: 9)
!43 = !DIEnumerator(name: "bin_reading_sasl_auth_data", value: 10)
!44 = !DIEnumerator(name: "bin_reading_touch_key", value: 11)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_entry_type", file: !46, line: 16, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./logger.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "920aeded0afd45e7ff5c610f1349e8a7")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!48 = !DIEnumerator(name: "LOGGER_ASCII_CMD", value: 0)
!49 = !DIEnumerator(name: "LOGGER_EVICTION", value: 1)
!50 = !DIEnumerator(name: "LOGGER_ITEM_GET", value: 2)
!51 = !DIEnumerator(name: "LOGGER_ITEM_STORE", value: 3)
!52 = !DIEnumerator(name: "LOGGER_CRAWLER_STATUS", value: 4)
!53 = !DIEnumerator(name: "LOGGER_SLAB_MOVE", value: 5)
!54 = !DIEnumerator(name: "LOGGER_CONNECTION_NEW", value: 6)
!55 = !DIEnumerator(name: "LOGGER_CONNECTION_CLOSE", value: 7)
!56 = !DIEnumerator(name: "LOGGER_EXTSTORE_WRITE", value: 8)
!57 = !DIEnumerator(name: "LOGGER_COMPACT_START", value: 9)
!58 = !DIEnumerator(name: "LOGGER_COMPACT_ABORT", value: 10)
!59 = !DIEnumerator(name: "LOGGER_COMPACT_READ_START", value: 11)
!60 = !DIEnumerator(name: "LOGGER_COMPACT_READ_END", value: 12)
!61 = !DIEnumerator(name: "LOGGER_COMPACT_END", value: 13)
!62 = !DIEnumerator(name: "LOGGER_COMPACT_FRAGINFO", value: 14)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol", file: !15, line: 231, baseType: !7, size: 32, elements: !64)
!64 = !{!65, !66, !67}
!65 = !DIEnumerator(name: "ascii_prot", value: 3)
!66 = !DIEnumerator(name: "binary_prot", value: 4)
!67 = !DIEnumerator(name: "negotiating_prot", value: 5)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "network_transport", file: !15, line: 240, baseType: !7, size: 32, elements: !69)
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "local_transport", value: 0)
!71 = !DIEnumerator(name: "tcp_transport", value: 1)
!72 = !DIEnumerator(name: "udp_transport", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "close_reasons", file: !15, line: 259, baseType: !7, size: 32, elements: !74)
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "ERROR_CLOSE", value: 0)
!76 = !DIEnumerator(name: "NORMAL_CLOSE", value: 1)
!77 = !DIEnumerator(name: "IDLE_TIMEOUT_CLOSE", value: 2)
!78 = !DIEnumerator(name: "SHUTDOWN_CLOSE", value: 3)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "move_status", file: !3, line: 833, baseType: !7, size: 32, elements: !80)
!80 = !{!81, !82, !83, !84, !85}
!81 = !DIEnumerator(name: "MOVE_PASS", value: 0)
!82 = !DIEnumerator(name: "MOVE_FROM_SLAB", value: 1)
!83 = !DIEnumerator(name: "MOVE_FROM_LRU", value: 2)
!84 = !DIEnumerator(name: "MOVE_BUSY", value: 3)
!85 = !DIEnumerator(name: "MOVE_LOCKED", value: 4)
!86 = !{!87, !124, !125, !126, !128, !130, !147, !148}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "item", file: !15, line: 598, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stritem", file: !15, line: 575, size: 384, elements: !90)
!90 = !{!91, !93, !94, !95, !97, !98, !100, !102, !107, !111, !112}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !89, file: !15, line: 577, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !89, file: !15, line: 578, baseType: !92, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "h_next", scope: !89, file: !15, line: 580, baseType: !92, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !89, file: !15, line: 581, baseType: !96, size: 32, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_time_t", file: !46, line: 14, baseType: !7)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "exptime", scope: !89, file: !15, line: 582, baseType: !96, size: 32, offset: 224)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !89, file: !15, line: 583, baseType: !99, size: 32, offset: 256)
!99 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !89, file: !15, line: 584, baseType: !101, size: 16, offset: 288)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !89, file: !15, line: 585, baseType: !103, size: 16, offset: 304)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !104, line: 25, baseType: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !106, line: 40, baseType: !101)
!106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!107 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_clsid", scope: !89, file: !15, line: 586, baseType: !108, size: 8, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !104, line: 24, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !106, line: 38, baseType: !110)
!110 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "nkey", scope: !89, file: !15, line: 587, baseType: !108, size: 8, offset: 328)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !89, file: !15, line: 593, baseType: !113, offset: 384)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, elements: !122)
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !15, line: 590, size: 64, elements: !115)
!115 = !{!116, !120}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !114, file: !15, line: 591, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !104, line: 27, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !106, line: 45, baseType: !119)
!119 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !114, file: !15, line: 592, baseType: !121, size: 8)
!121 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!122 = !{!123}
!123 = !DISubrange(count: -1)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !129, line: 46, baseType: !119)
!129 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "item_chunk", file: !15, line: 635, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_strchunk", file: !15, line: 623, size: 384, elements: !133)
!133 = !{!134, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !15, line: 624, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !15, line: 625, baseType: !135, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !132, file: !15, line: 626, baseType: !92, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !132, file: !15, line: 627, baseType: !99, size: 32, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !132, file: !15, line: 628, baseType: !99, size: 32, offset: 224)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !132, file: !15, line: 629, baseType: !99, size: 32, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !132, file: !15, line: 630, baseType: !101, size: 16, offset: 288)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !132, file: !15, line: 631, baseType: !103, size: 16, offset: 304)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_clsid", scope: !132, file: !15, line: 632, baseType: !108, size: 8, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "orig_clsid", scope: !132, file: !15, line: 633, baseType: !108, size: 8, offset: 328)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !132, file: !15, line: 634, baseType: !146, offset: 336)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, elements: !122)
!147 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!149 = !{!150, !166, !168, !0, !172, !174, !176, !178, !180, !182, !185, !216, !218, !226, !229}
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "slabclass", scope: !2, file: !3, line: 42, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 20480, elements: !164)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "slabclass_t", file: !3, line: 40, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 29, size: 320, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !163}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !154, file: !3, line: 30, baseType: !7, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "perslab", scope: !154, file: !3, line: 31, baseType: !7, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !154, file: !3, line: 33, baseType: !125, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "sl_curr", scope: !154, file: !3, line: 34, baseType: !7, size: 32, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "slabs", scope: !154, file: !3, line: 36, baseType: !7, size: 32, offset: 160)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !154, file: !3, line: 38, baseType: !162, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "list_size", scope: !154, file: !3, line: 39, baseType: !7, size: 32, offset: 256)
!164 = !{!165}
!165 = !DISubrange(count: 64)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "power_largest", scope: !2, file: !3, line: 48, type: !99, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "rebalance_tid", scope: !2, file: !3, line: 1317, type: !170, isLocal: true, isDefinition: true)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !171, line: 27, baseType: !119)
!171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "mem_limit", scope: !2, file: !3, line: 43, type: !128, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "mem_base", scope: !2, file: !3, line: 50, type: !125, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "mem_current", scope: !2, file: !3, line: 51, type: !125, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "mem_avail", scope: !2, file: !3, line: 52, type: !128, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "mem_malloced", scope: !2, file: !3, line: 44, type: !128, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "mem_limit_reached", scope: !2, file: !3, line: 47, type: !184, isLocal: true, isDefinition: true)
!184 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "slabs_lock", scope: !2, file: !3, line: 59, type: !187, isLocal: true, isDefinition: true)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !171, line: 72, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !171, line: 67, size: 320, elements: !189)
!189 = !{!190, !210, !214}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !188, file: !171, line: 69, baseType: !191, size: 320)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !192, line: 22, size: 320, elements: !193)
!192 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!193 = !{!194, !195, !196, !197, !198, !199, !201, !202}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !191, file: !192, line: 24, baseType: !99, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !191, file: !192, line: 25, baseType: !7, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !191, file: !192, line: 26, baseType: !99, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !191, file: !192, line: 28, baseType: !7, size: 32, offset: 96)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !191, file: !192, line: 32, baseType: !99, size: 32, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !191, file: !192, line: 34, baseType: !200, size: 16, offset: 160)
!200 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !191, file: !192, line: 35, baseType: !200, size: 16, offset: 176)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !191, file: !192, line: 36, baseType: !203, size: 128, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !204, line: 53, baseType: !205)
!204 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !204, line: 49, size: 128, elements: !206)
!206 = !{!207, !209}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !205, file: !204, line: 51, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !205, file: !204, line: 52, baseType: !208, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !188, file: !171, line: 70, baseType: !211, size: 320)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 320, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 40)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !188, file: !171, line: 71, baseType: !215, size: 64)
!215 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "slabs_rebalance_lock", scope: !2, file: !3, line: 60, type: !187, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "cur", scope: !220, file: !3, line: 1249, type: !99, isLocal: true, isDefinition: true)
!220 = distinct !DISubprogram(name: "slabs_reassign_pick_any", scope: !3, file: !3, line: 1248, type: !221, scopeLine: 1248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !223)
!221 = !DISubroutineType(types: !222)
!222 = !{!99, !99}
!223 = !{!224, !225}
!224 = !DILocalVariable(name: "dst", arg: 1, scope: !220, file: !3, line: 1248, type: !99)
!225 = !DILocalVariable(name: "tries", scope: !220, file: !3, line: 1250, type: !99)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "do_run_slab_rebalance_thread", scope: !2, file: !3, line: 728, type: !228, isLocal: true, isDefinition: true)
!228 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !99)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "slab_rebalance_cond", scope: !2, file: !3, line: 727, type: !231, isLocal: true, isDefinition: true)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !171, line: 80, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !171, line: 75, size: 384, elements: !233)
!233 = !{!234, !263, !267}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !232, file: !171, line: 77, baseType: !235, size: 384)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !204, line: 92, size: 384, elements: !236)
!236 = !{!237, !246, !255, !259, !260, !261, !262}
!237 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !204, line: 94, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !235, file: !204, line: 94, size: 64, elements: !239)
!239 = !{!240, !241}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !238, file: !204, line: 96, baseType: !147, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !238, file: !204, line: 101, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !238, file: !204, line: 97, size: 64, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !242, file: !204, line: 99, baseType: !7, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !242, file: !204, line: 100, baseType: !7, size: 32, offset: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !204, line: 103, baseType: !247, size: 64, offset: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !235, file: !204, line: 103, size: 64, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !247, file: !204, line: 105, baseType: !147, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !247, file: !204, line: 110, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !204, line: 106, size: 64, elements: !252)
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !251, file: !204, line: 108, baseType: !7, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !251, file: !204, line: 109, baseType: !7, size: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !235, file: !204, line: 112, baseType: !256, size: 64, offset: 128)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 2)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !235, file: !204, line: 113, baseType: !256, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !235, file: !204, line: 114, baseType: !7, size: 32, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !235, file: !204, line: 115, baseType: !7, size: 32, offset: 288)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !235, file: !204, line: 116, baseType: !256, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !232, file: !171, line: 78, baseType: !264, size: 384)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 384, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 48)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !232, file: !171, line: 79, baseType: !268, size: 64)
!268 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!269 = !{i32 7, !"Dwarf Version", i32 5}
!270 = !{i32 2, !"Debug Info Version", i32 3}
!271 = !{i32 1, !"wchar_size", i32 4}
!272 = !{i32 7, !"uwtable", i32 1}
!273 = !{!"/home/xuheng/blackbox/llvm-test/memcached/slabs.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/slabs.gcda", !2}
!274 = !{!"clang version 14.0.0"}
!275 = distinct !DISubprogram(name: "slabs_set_storage", scope: !3, file: !3, line: 78, type: !276, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !125}
!278 = !{!279}
!279 = !DILocalVariable(name: "arg", arg: 1, scope: !275, file: !3, line: 78, type: !125)
!280 = !DILocation(line: 0, scope: !275)
!281 = !DILocation(line: 79, column: 13, scope: !275)
!282 = !{!283, !283, i64 0}
!283 = !{!"any pointer", !284, i64 0}
!284 = !{!"omnipotent char", !285, i64 0}
!285 = !{!"Simple C/C++ TBAA"}
!286 = !DILocation(line: 80, column: 1, scope: !275)
!287 = distinct !DISubprogram(name: "slabs_clsid", scope: !3, file: !3, line: 90, type: !288, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !291)
!288 = !DISubroutineType(types: !289)
!289 = !{!7, !290}
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!291 = !{!292, !293}
!292 = !DILocalVariable(name: "size", arg: 1, scope: !287, file: !3, line: 90, type: !290)
!293 = !DILocalVariable(name: "res", scope: !287, file: !3, line: 91, type: !99)
!294 = !DILocation(line: 0, scope: !287)
!295 = !DILocation(line: 93, column: 14, scope: !296)
!296 = distinct !DILexicalBlock(scope: !287, file: !3, line: 93, column: 9)
!297 = !DILocation(line: 93, column: 19, scope: !296)
!298 = !DILocation(line: 93, column: 22, scope: !296)
!299 = !DILocation(line: 93, column: 38, scope: !296)
!300 = !{!301, !303, i64 124}
!301 = !{!"settings", !302, i64 0, !303, i64 8, !303, i64 12, !303, i64 16, !283, i64 24, !303, i64 32, !303, i64 36, !302, i64 40, !303, i64 48, !283, i64 56, !283, i64 64, !303, i64 72, !304, i64 80, !303, i64 88, !303, i64 92, !303, i64 96, !284, i64 100, !303, i64 104, !303, i64 108, !305, i64 112, !284, i64 116, !303, i64 120, !303, i64 124, !303, i64 128, !303, i64 132, !303, i64 136, !305, i64 140, !305, i64 141, !305, i64 142, !305, i64 143, !305, i64 144, !305, i64 145, !303, i64 148, !304, i64 152, !303, i64 160, !303, i64 164, !305, i64 168, !303, i64 172, !305, i64 176, !305, i64 177, !283, i64 184, !303, i64 192, !303, i64 196, !303, i64 200, !303, i64 204, !304, i64 208, !304, i64 216, !303, i64 224, !305, i64 228, !303, i64 232, !303, i64 236, !303, i64 240, !303, i64 244, !303, i64 248, !305, i64 252, !305, i64 253, !305, i64 254, !305, i64 255, !303, i64 256, !303, i64 260, !303, i64 264, !303, i64 268, !303, i64 272, !303, i64 276, !303, i64 280, !303, i64 284, !303, i64 288, !303, i64 292, !304, i64 296, !304, i64 304, !305, i64 312, !303, i64 316, !303, i64 320, !283, i64 328, !303, i64 336}
!302 = !{!"long", !284, i64 0}
!303 = !{!"int", !284, i64 0}
!304 = !{!"double", !284, i64 0}
!305 = !{!"_Bool", !284, i64 0}
!306 = !DILocation(line: 93, column: 29, scope: !296)
!307 = !DILocation(line: 93, column: 27, scope: !296)
!308 = !DILocation(line: 93, column: 9, scope: !287)
!309 = !DILocation(line: 95, column: 34, scope: !287)
!310 = !{!311, !303, i64 0}
!311 = !{!"", !303, i64 0, !303, i64 4, !283, i64 8, !303, i64 16, !303, i64 20, !283, i64 24, !303, i64 32}
!312 = !DILocation(line: 95, column: 19, scope: !287)
!313 = !DILocation(line: 95, column: 17, scope: !287)
!314 = !DILocation(line: 95, column: 5, scope: !287)
!315 = !{!303, !303, i64 0}
!316 = !DILocation(line: 94, column: 9, scope: !296)
!317 = !DILocation(line: 96, column: 19, scope: !318)
!318 = distinct !DILexicalBlock(scope: !287, file: !3, line: 96, column: 13)
!319 = !DILocation(line: 96, column: 13, scope: !287)
!320 = !DILocation(line: 97, column: 20, scope: !318)
!321 = !DILocation(line: 97, column: 13, scope: !318)
!322 = !DILocation(line: 96, column: 16, scope: !318)
!323 = distinct !{!323, !314, !324, !325}
!324 = !DILocation(line: 97, column: 20, scope: !287)
!325 = !{!"llvm.loop.mustprogress"}
!326 = !DILocation(line: 98, column: 12, scope: !287)
!327 = !DILocation(line: 98, column: 5, scope: !287)
!328 = !DILocation(line: 99, column: 1, scope: !287)
!329 = distinct !DISubprogram(name: "slabs_size", scope: !3, file: !3, line: 101, type: !330, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!330 = !DISubroutineType(types: !331)
!331 = !{!7, !332}
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!333 = !{!334}
!334 = !DILocalVariable(name: "clsid", arg: 1, scope: !329, file: !3, line: 101, type: !332)
!335 = !DILocation(line: 0, scope: !329)
!336 = !DILocation(line: 102, column: 12, scope: !329)
!337 = !DILocation(line: 102, column: 29, scope: !329)
!338 = !DILocation(line: 102, column: 5, scope: !329)
!339 = distinct !DISubprogram(name: "slabs_fixup", scope: !3, file: !3, line: 166, type: !340, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !342)
!340 = !DISubroutineType(types: !341)
!341 = !{!7, !124, !332}
!342 = !{!343, !344, !345, !347, !348}
!343 = !DILocalVariable(name: "chunk", arg: 1, scope: !339, file: !3, line: 166, type: !124)
!344 = !DILocalVariable(name: "border", arg: 2, scope: !339, file: !3, line: 166, type: !332)
!345 = !DILocalVariable(name: "p", scope: !339, file: !3, line: 167, type: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!347 = !DILocalVariable(name: "it", scope: !339, file: !3, line: 168, type: !87)
!348 = !DILocalVariable(name: "id", scope: !339, file: !3, line: 169, type: !99)
!349 = !DILocation(line: 0, scope: !339)
!350 = !DILocation(line: 169, column: 14, scope: !339)
!351 = !{!284, !284, i64 0}
!352 = !DILocation(line: 173, column: 12, scope: !353)
!353 = distinct !DILexicalBlock(scope: !339, file: !3, line: 173, column: 9)
!354 = !DILocation(line: 173, column: 9, scope: !339)
!355 = !DILocation(line: 175, column: 11, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !3, line: 173, column: 18)
!357 = !DILocation(line: 176, column: 9, scope: !356)
!358 = !DILocation(line: 177, column: 12, scope: !356)
!359 = !{!311, !283, i64 24}
!360 = !DILocation(line: 177, column: 30, scope: !356)
!361 = !{!311, !303, i64 20}
!362 = !DILocation(line: 177, column: 9, scope: !356)
!363 = !DILocation(line: 177, column: 34, scope: !356)
!364 = !DILocation(line: 178, column: 9, scope: !356)
!365 = !DILocation(line: 180, column: 20, scope: !339)
!366 = !DILocation(line: 180, column: 10, scope: !339)
!367 = !DILocation(line: 183, column: 16, scope: !368)
!368 = distinct !DILexicalBlock(scope: !339, file: !3, line: 183, column: 9)
!369 = !DILocation(line: 183, column: 9, scope: !339)
!370 = !DILocation(line: 184, column: 24, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !3, line: 183, column: 22)
!372 = !DILocation(line: 184, column: 9, scope: !371)
!373 = !DILocation(line: 185, column: 12, scope: !371)
!374 = !DILocation(line: 185, column: 25, scope: !371)
!375 = !DILocation(line: 185, column: 30, scope: !371)
!376 = !DILocation(line: 185, column: 9, scope: !371)
!377 = !DILocation(line: 185, column: 34, scope: !371)
!378 = !DILocation(line: 186, column: 5, scope: !371)
!379 = !DILocation(line: 189, column: 13, scope: !380)
!380 = distinct !DILexicalBlock(scope: !339, file: !3, line: 189, column: 9)
!381 = !{!382, !382, i64 0}
!382 = !{!"short", !284, i64 0}
!383 = !DILocation(line: 189, column: 22, scope: !380)
!384 = !DILocation(line: 189, column: 9, scope: !339)
!385 = !DILocation(line: 192, column: 13, scope: !386)
!386 = distinct !DILexicalBlock(scope: !380, file: !3, line: 189, column: 39)
!387 = !DILocation(line: 192, column: 18, scope: !386)
!388 = !DILocation(line: 193, column: 23, scope: !386)
!389 = !{!311, !283, i64 8}
!390 = !DILocation(line: 193, column: 13, scope: !386)
!391 = !DILocation(line: 193, column: 18, scope: !386)
!392 = !DILocation(line: 194, column: 13, scope: !393)
!393 = distinct !DILexicalBlock(scope: !386, file: !3, line: 194, column: 13)
!394 = !DILocation(line: 194, column: 13, scope: !386)
!395 = !DILocation(line: 194, column: 40, scope: !393)
!396 = !DILocation(line: 194, column: 27, scope: !393)
!397 = !DILocation(line: 194, column: 33, scope: !393)
!398 = !DILocation(line: 194, column: 38, scope: !393)
!399 = !DILocation(line: 194, column: 23, scope: !393)
!400 = !DILocation(line: 195, column: 20, scope: !386)
!401 = !DILocation(line: 195, column: 18, scope: !386)
!402 = !DILocation(line: 197, column: 12, scope: !386)
!403 = !DILocation(line: 197, column: 19, scope: !386)
!404 = !{!311, !303, i64 16}
!405 = !DILocation(line: 199, column: 5, scope: !386)
!406 = !DILocation(line: 201, column: 15, scope: !339)
!407 = !DILocation(line: 201, column: 5, scope: !339)
!408 = !DILocation(line: 202, column: 1, scope: !339)
!409 = distinct !DISubprogram(name: "grow_slab_list", scope: !3, file: !3, line: 337, type: !410, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !413)
!410 = !DISubroutineType(types: !411)
!411 = !{!99, !412}
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!413 = !{!414, !415, !416, !419}
!414 = !DILocalVariable(name: "id", arg: 1, scope: !409, file: !3, line: 337, type: !412)
!415 = !DILocalVariable(name: "p", scope: !409, file: !3, line: 338, type: !346)
!416 = !DILocalVariable(name: "new_size", scope: !417, file: !3, line: 340, type: !128)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 339, column: 35)
!418 = distinct !DILexicalBlock(scope: !409, file: !3, line: 339, column: 9)
!419 = !DILocalVariable(name: "new_list", scope: !417, file: !3, line: 341, type: !125)
!420 = !DILocation(line: 0, scope: !409)
!421 = !DILocation(line: 338, column: 23, scope: !409)
!422 = !DILocation(line: 339, column: 12, scope: !418)
!423 = !DILocation(line: 339, column: 24, scope: !418)
!424 = !{!311, !303, i64 32}
!425 = !DILocation(line: 339, column: 18, scope: !418)
!426 = !DILocation(line: 339, column: 9, scope: !409)
!427 = !DILocation(line: 340, column: 42, scope: !417)
!428 = !DILocation(line: 340, column: 28, scope: !417)
!429 = !DILocation(line: 340, column: 63, scope: !417)
!430 = !DILocation(line: 0, scope: !417)
!431 = !DILocation(line: 341, column: 37, scope: !417)
!432 = !DILocation(line: 341, column: 57, scope: !417)
!433 = !DILocation(line: 341, column: 26, scope: !417)
!434 = !DILocation(line: 342, column: 22, scope: !435)
!435 = distinct !DILexicalBlock(scope: !417, file: !3, line: 342, column: 13)
!436 = !DILocation(line: 342, column: 13, scope: !417)
!437 = !DILocation(line: 342, column: 28, scope: !435)
!438 = !DILocation(line: 343, column: 22, scope: !417)
!439 = !DILocation(line: 344, column: 22, scope: !417)
!440 = !DILocation(line: 343, column: 24, scope: !417)
!441 = !DILocation(line: 345, column: 5, scope: !417)
!442 = !DILocation(line: 346, column: 5, scope: !409)
!443 = !DILocation(line: 347, column: 1, scope: !409)
!444 = distinct !DISubprogram(name: "slabs_init", scope: !3, file: !3, line: 208, type: !445, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !454)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !290, !447, !449, !450, !125, !184}
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !104, line: 26, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !106, line: 42, baseType: !7)
!454 = !{!455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !466}
!455 = !DILocalVariable(name: "limit", arg: 1, scope: !444, file: !3, line: 208, type: !290)
!456 = !DILocalVariable(name: "factor", arg: 2, scope: !444, file: !3, line: 208, type: !447)
!457 = !DILocalVariable(name: "prealloc", arg: 3, scope: !444, file: !3, line: 208, type: !449)
!458 = !DILocalVariable(name: "slab_sizes", arg: 4, scope: !444, file: !3, line: 208, type: !450)
!459 = !DILocalVariable(name: "mem_base_external", arg: 5, scope: !444, file: !3, line: 208, type: !125)
!460 = !DILocalVariable(name: "reuse_mem", arg: 6, scope: !444, file: !3, line: 208, type: !184)
!461 = !DILocalVariable(name: "i", scope: !444, file: !3, line: 209, type: !99)
!462 = !DILocalVariable(name: "size", scope: !444, file: !3, line: 210, type: !7)
!463 = !DILocalVariable(name: "do_slab_prealloc", scope: !444, file: !3, line: 216, type: !184)
!464 = !DILocalVariable(name: "t_initial_malloc", scope: !465, file: !3, line: 281, type: !124)
!465 = distinct !DILexicalBlock(scope: !444, file: !3, line: 280, column: 5)
!466 = !DILocalVariable(name: "env_malloced", scope: !467, file: !3, line: 283, type: !469)
!467 = distinct !DILexicalBlock(scope: !468, file: !3, line: 282, column: 31)
!468 = distinct !DILexicalBlock(scope: !465, file: !3, line: 282, column: 13)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !470, line: 27, baseType: !471)
!470 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !106, line: 44, baseType: !215)
!472 = !DILocation(line: 0, scope: !444)
!473 = !DILocation(line: 210, column: 49, scope: !444)
!474 = !{!301, !303, i64 88}
!475 = !DILocation(line: 210, column: 38, scope: !444)
!476 = !DILocation(line: 218, column: 15, scope: !444)
!477 = !{!302, !302, i64 0}
!478 = !DILocation(line: 220, column: 18, scope: !479)
!479 = distinct !DILexicalBlock(scope: !444, file: !3, line: 220, column: 9)
!480 = !DILocation(line: 220, column: 21, scope: !479)
!481 = !DILocation(line: 220, column: 39, scope: !479)
!482 = !DILocation(line: 220, column: 9, scope: !444)
!483 = !DILocation(line: 221, column: 20, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !3, line: 220, column: 48)
!485 = !DILocation(line: 221, column: 18, scope: !484)
!486 = !DILocation(line: 222, column: 13, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !3, line: 222, column: 13)
!488 = !DILocation(line: 222, column: 13, scope: !484)
!489 = !DILocation(line: 223, column: 30, scope: !490)
!490 = distinct !DILexicalBlock(scope: !487, file: !3, line: 222, column: 23)
!491 = !DILocation(line: 224, column: 25, scope: !490)
!492 = !DILocation(line: 225, column: 25, scope: !490)
!493 = !DILocation(line: 225, column: 23, scope: !490)
!494 = !DILocation(line: 226, column: 9, scope: !490)
!495 = !DILocation(line: 227, column: 21, scope: !496)
!496 = distinct !DILexicalBlock(scope: !487, file: !3, line: 226, column: 16)
!497 = !DILocation(line: 227, column: 13, scope: !496)
!498 = !DILocation(line: 230, column: 28, scope: !499)
!499 = distinct !DILexicalBlock(scope: !479, file: !3, line: 230, column: 16)
!500 = !DILocation(line: 235, column: 18, scope: !501)
!501 = distinct !DILexicalBlock(scope: !499, file: !3, line: 230, column: 55)
!502 = !DILocation(line: 238, column: 13, scope: !501)
!503 = !DILocation(line: 239, column: 35, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !3, line: 238, column: 24)
!505 = distinct !DILexicalBlock(scope: !501, file: !3, line: 238, column: 13)
!506 = !DILocation(line: 239, column: 45, scope: !504)
!507 = !DILocation(line: 241, column: 9, scope: !504)
!508 = !DILocation(line: 242, column: 27, scope: !509)
!509 = distinct !DILexicalBlock(scope: !505, file: !3, line: 241, column: 16)
!510 = !DILocation(line: 0, scope: !505)
!511 = !DILocation(line: 247, column: 5, scope: !444)
!512 = !DILocation(line: 249, column: 5, scope: !444)
!513 = !DILocation(line: 250, column: 13, scope: !514)
!514 = distinct !DILexicalBlock(scope: !444, file: !3, line: 249, column: 48)
!515 = !DILocation(line: 251, column: 17, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !3, line: 251, column: 17)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 250, column: 33)
!518 = distinct !DILexicalBlock(scope: !514, file: !3, line: 250, column: 13)
!519 = !DILocation(line: 251, column: 33, scope: !516)
!520 = !DILocation(line: 251, column: 17, scope: !517)
!521 = !DILocation(line: 253, column: 20, scope: !517)
!522 = !DILocation(line: 254, column: 9, scope: !517)
!523 = !DILocation(line: 254, column: 20, scope: !524)
!524 = distinct !DILexicalBlock(scope: !518, file: !3, line: 254, column: 20)
!525 = !DILocation(line: 254, column: 37, scope: !524)
!526 = !{!301, !303, i64 128}
!527 = !DILocation(line: 254, column: 28, scope: !524)
!528 = !DILocation(line: 254, column: 57, scope: !524)
!529 = !DILocation(line: 254, column: 25, scope: !524)
!530 = !DILocation(line: 254, column: 20, scope: !518)
!531 = !DILocation(line: 258, column: 18, scope: !532)
!532 = distinct !DILexicalBlock(scope: !514, file: !3, line: 258, column: 13)
!533 = !DILocation(line: 258, column: 13, scope: !514)
!534 = !DILocation(line: 259, column: 42, scope: !532)
!535 = !DILocation(line: 259, column: 39, scope: !532)
!536 = !DILocation(line: 259, column: 18, scope: !532)
!537 = !DILocation(line: 259, column: 13, scope: !532)
!538 = !DILocation(line: 0, scope: !514)
!539 = !DILocation(line: 261, column: 22, scope: !514)
!540 = !DILocation(line: 261, column: 27, scope: !514)
!541 = !DILocation(line: 262, column: 41, scope: !514)
!542 = !{!301, !303, i64 132}
!543 = !DILocation(line: 262, column: 56, scope: !514)
!544 = !DILocation(line: 262, column: 22, scope: !514)
!545 = !DILocation(line: 262, column: 30, scope: !514)
!546 = !{!311, !303, i64 4}
!547 = !DILocation(line: 263, column: 13, scope: !514)
!548 = !DILocation(line: 264, column: 21, scope: !549)
!549 = distinct !DILexicalBlock(scope: !514, file: !3, line: 263, column: 13)
!550 = !DILocation(line: 264, column: 18, scope: !549)
!551 = !DILocation(line: 264, column: 13, scope: !549)
!552 = !DILocation(line: 265, column: 22, scope: !553)
!553 = distinct !DILexicalBlock(scope: !514, file: !3, line: 265, column: 13)
!554 = !{!301, !303, i64 32}
!555 = !DILocation(line: 265, column: 30, scope: !553)
!556 = !DILocation(line: 265, column: 13, scope: !514)
!557 = !DILocation(line: 266, column: 21, scope: !558)
!558 = distinct !DILexicalBlock(scope: !553, file: !3, line: 265, column: 35)
!559 = !DILocation(line: 266, column: 13, scope: !558)
!560 = !DILocation(line: 268, column: 9, scope: !558)
!561 = !DILocation(line: 249, column: 12, scope: !444)
!562 = !DILocation(line: 249, column: 16, scope: !444)
!563 = distinct !{!563, !512, !564, !325}
!564 = !DILocation(line: 269, column: 5, scope: !444)
!565 = !DILocation(line: 0, scope: !518)
!566 = !DILocation(line: 271, column: 19, scope: !444)
!567 = !DILocation(line: 272, column: 46, scope: !444)
!568 = !DILocation(line: 272, column: 5, scope: !444)
!569 = !DILocation(line: 272, column: 30, scope: !444)
!570 = !DILocation(line: 272, column: 35, scope: !444)
!571 = !DILocation(line: 273, column: 49, scope: !444)
!572 = !DILocation(line: 273, column: 64, scope: !444)
!573 = !DILocation(line: 273, column: 30, scope: !444)
!574 = !DILocation(line: 273, column: 38, scope: !444)
!575 = !DILocation(line: 274, column: 18, scope: !576)
!576 = distinct !DILexicalBlock(scope: !444, file: !3, line: 274, column: 9)
!577 = !DILocation(line: 274, column: 26, scope: !576)
!578 = !DILocation(line: 274, column: 9, scope: !444)
!579 = !DILocation(line: 275, column: 17, scope: !580)
!580 = distinct !DILexicalBlock(scope: !576, file: !3, line: 274, column: 31)
!581 = !DILocation(line: 275, column: 9, scope: !580)
!582 = !DILocation(line: 277, column: 5, scope: !580)
!583 = !DILocation(line: 281, column: 34, scope: !465)
!584 = !DILocation(line: 0, scope: !465)
!585 = !DILocation(line: 282, column: 13, scope: !468)
!586 = !DILocation(line: 282, column: 13, scope: !465)
!587 = !DILocation(line: 283, column: 13, scope: !467)
!588 = !DILocation(line: 0, scope: !467)
!589 = !DILocation(line: 284, column: 17, scope: !590)
!590 = distinct !DILexicalBlock(scope: !467, file: !3, line: 284, column: 17)
!591 = !DILocation(line: 284, column: 17, scope: !467)
!592 = !DILocation(line: 285, column: 40, scope: !593)
!593 = distinct !DILexicalBlock(scope: !590, file: !3, line: 284, column: 78)
!594 = !DILocation(line: 285, column: 30, scope: !593)
!595 = !DILocation(line: 286, column: 13, scope: !593)
!596 = !DILocation(line: 287, column: 9, scope: !468)
!597 = !DILocation(line: 287, column: 9, scope: !467)
!598 = !DILocation(line: 291, column: 9, scope: !444)
!599 = !DILocation(line: 292, column: 13, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 291, column: 27)
!601 = distinct !DILexicalBlock(scope: !444, file: !3, line: 291, column: 9)
!602 = !DILocation(line: 293, column: 31, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 292, column: 25)
!604 = distinct !DILexicalBlock(scope: !600, file: !3, line: 292, column: 13)
!605 = !DILocation(line: 293, column: 13, scope: !603)
!606 = !DILocation(line: 294, column: 9, scope: !603)
!607 = !DILocation(line: 295, column: 5, scope: !600)
!608 = !DILocation(line: 296, column: 1, scope: !444)
!609 = distinct !DISubprogram(name: "alloc_large_chunk", scope: !3, file: !3, line: 108, type: !610, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{!125, !290}
!612 = !{!613, !614, !615, !616, !670, !671}
!613 = !DILocalVariable(name: "limit", arg: 1, scope: !609, file: !3, line: 108, type: !290)
!614 = !DILocalVariable(name: "ptr", scope: !609, file: !3, line: 110, type: !125)
!615 = !DILocalVariable(name: "pagesize", scope: !609, file: !3, line: 112, type: !128)
!616 = !DILocalVariable(name: "fp", scope: !609, file: !3, line: 113, type: !617)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !619, line: 7, baseType: !620)
!619 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !621, line: 49, size: 1728, elements: !622)
!621 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!622 = !{!623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !638, !640, !641, !642, !644, !645, !647, !651, !654, !656, !659, !662, !663, !664, !665, !666}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !620, file: !621, line: 51, baseType: !99, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !620, file: !621, line: 54, baseType: !124, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !620, file: !621, line: 55, baseType: !124, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !620, file: !621, line: 56, baseType: !124, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !620, file: !621, line: 57, baseType: !124, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !620, file: !621, line: 58, baseType: !124, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !620, file: !621, line: 59, baseType: !124, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !620, file: !621, line: 60, baseType: !124, size: 64, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !620, file: !621, line: 61, baseType: !124, size: 64, offset: 512)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !620, file: !621, line: 64, baseType: !124, size: 64, offset: 576)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !620, file: !621, line: 65, baseType: !124, size: 64, offset: 640)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !620, file: !621, line: 66, baseType: !124, size: 64, offset: 704)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !620, file: !621, line: 68, baseType: !636, size: 64, offset: 768)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !621, line: 36, flags: DIFlagFwdDecl)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !620, file: !621, line: 70, baseType: !639, size: 64, offset: 832)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !620, file: !621, line: 72, baseType: !99, size: 32, offset: 896)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !620, file: !621, line: 73, baseType: !99, size: 32, offset: 928)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !620, file: !621, line: 74, baseType: !643, size: 64, offset: 960)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !106, line: 152, baseType: !215)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !620, file: !621, line: 77, baseType: !101, size: 16, offset: 1024)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !620, file: !621, line: 78, baseType: !646, size: 8, offset: 1040)
!646 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !620, file: !621, line: 79, baseType: !648, size: 8, offset: 1048)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 8, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 1)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !620, file: !621, line: 81, baseType: !652, size: 64, offset: 1088)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !621, line: 43, baseType: null)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !620, file: !621, line: 89, baseType: !655, size: 64, offset: 1152)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !106, line: 153, baseType: !215)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !620, file: !621, line: 91, baseType: !657, size: 64, offset: 1216)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !621, line: 37, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !620, file: !621, line: 92, baseType: !660, size: 64, offset: 1280)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !621, line: 38, flags: DIFlagFwdDecl)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !620, file: !621, line: 93, baseType: !639, size: 64, offset: 1344)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !620, file: !621, line: 94, baseType: !125, size: 64, offset: 1408)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !620, file: !621, line: 95, baseType: !128, size: 64, offset: 1472)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !620, file: !621, line: 96, baseType: !99, size: 32, offset: 1536)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !620, file: !621, line: 98, baseType: !667, size: 160, offset: 1568)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 160, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 20)
!670 = !DILocalVariable(name: "ret", scope: !609, file: !3, line: 114, type: !99)
!671 = !DILocalVariable(name: "buf", scope: !672, file: !3, line: 119, type: !674)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 118, column: 21)
!673 = distinct !DILexicalBlock(scope: !609, file: !3, line: 118, column: 9)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 512, elements: !164)
!675 = !DILocation(line: 0, scope: !609)
!676 = !DILocation(line: 110, column: 5, scope: !609)
!677 = !DILocation(line: 110, column: 11, scope: !609)
!678 = !DILocation(line: 112, column: 5, scope: !609)
!679 = !DILocation(line: 112, column: 12, scope: !609)
!680 = !DILocation(line: 117, column: 10, scope: !609)
!681 = !DILocation(line: 118, column: 12, scope: !673)
!682 = !DILocation(line: 118, column: 9, scope: !609)
!683 = !DILocation(line: 119, column: 9, scope: !672)
!684 = !DILocation(line: 119, column: 14, scope: !672)
!685 = !DILocation(line: 121, column: 17, scope: !672)
!686 = !DILocation(line: 121, column: 9, scope: !672)
!687 = !DILocation(line: 122, column: 18, scope: !688)
!688 = distinct !DILexicalBlock(scope: !672, file: !3, line: 122, column: 17)
!689 = !DILocation(line: 122, column: 17, scope: !672)
!690 = !DILocation(line: 123, column: 30, scope: !691)
!691 = distinct !DILexicalBlock(scope: !688, file: !3, line: 122, column: 53)
!692 = !DILocation(line: 123, column: 23, scope: !691)
!693 = !DILocation(line: 126, column: 26, scope: !691)
!694 = !DILocation(line: 127, column: 13, scope: !691)
!695 = distinct !{!695, !686, !696, !325}
!696 = !DILocation(line: 127, column: 13, scope: !672)
!697 = !DILocation(line: 128, column: 16, scope: !672)
!698 = !DILocation(line: 128, column: 9, scope: !672)
!699 = !DILocation(line: 129, column: 5, scope: !673)
!700 = !DILocation(line: 131, column: 10, scope: !701)
!701 = distinct !DILexicalBlock(scope: !609, file: !3, line: 131, column: 9)
!702 = !DILocation(line: 131, column: 9, scope: !609)
!703 = !DILocation(line: 132, column: 17, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !3, line: 131, column: 20)
!705 = !DILocation(line: 132, column: 9, scope: !704)
!706 = !DILocation(line: 133, column: 9, scope: !704)
!707 = !DILocation(line: 136, column: 18, scope: !708)
!708 = distinct !DILexicalBlock(scope: !609, file: !3, line: 136, column: 9)
!709 = !DILocation(line: 136, column: 26, scope: !708)
!710 = !DILocation(line: 136, column: 9, scope: !609)
!711 = !DILocation(line: 137, column: 17, scope: !708)
!712 = !DILocation(line: 137, column: 9, scope: !708)
!713 = !DILocation(line: 141, column: 32, scope: !609)
!714 = !DILocation(line: 141, column: 11, scope: !609)
!715 = !DILocation(line: 142, column: 13, scope: !716)
!716 = distinct !DILexicalBlock(scope: !609, file: !3, line: 142, column: 9)
!717 = !DILocation(line: 142, column: 9, scope: !609)
!718 = !DILocation(line: 143, column: 17, scope: !719)
!719 = distinct !DILexicalBlock(scope: !716, file: !3, line: 142, column: 19)
!720 = !DILocation(line: 143, column: 9, scope: !719)
!721 = !DILocation(line: 144, column: 9, scope: !719)
!722 = !DILocation(line: 147, column: 19, scope: !609)
!723 = !DILocation(line: 147, column: 11, scope: !609)
!724 = !DILocation(line: 148, column: 13, scope: !725)
!725 = distinct !DILexicalBlock(scope: !609, file: !3, line: 148, column: 9)
!726 = !DILocation(line: 148, column: 9, scope: !609)
!727 = !DILocation(line: 163, column: 12, scope: !609)
!728 = !DILocation(line: 149, column: 17, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !3, line: 148, column: 18)
!730 = !DILocation(line: 149, column: 9, scope: !729)
!731 = !DILocation(line: 150, column: 14, scope: !729)
!732 = !DILocation(line: 150, column: 9, scope: !729)
!733 = !DILocation(line: 152, column: 5, scope: !729)
!734 = !DILocation(line: 163, column: 5, scope: !609)
!735 = !DILocation(line: 164, column: 1, scope: !609)
!736 = !DISubprogram(name: "fprintf", scope: !737, file: !737, line: 326, type: !738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!737 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!738 = !DISubroutineType(types: !739)
!739 = !{!99, !740, !741, null}
!740 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !617)
!741 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!742 = !{}
!743 = !DISubprogram(name: "memset", scope: !744, file: !744, line: 61, type: !745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!744 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!745 = !DISubroutineType(types: !746)
!746 = !{!125, !125, !99, !128}
!747 = !DISubprogram(name: "getenv", scope: !748, file: !748, line: 634, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!748 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!749 = !DISubroutineType(types: !750)
!750 = !{!124, !126}
!751 = !DISubprogram(name: "safe_strtoll", scope: !752, file: !752, line: 18, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!752 = !DIFile(filename: "./util.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d1ef68c688867746f50aae7567be079a")
!753 = !DISubroutineType(types: !754)
!754 = !{!184, !126, !755}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!756 = distinct !DISubprogram(name: "slabs_preallocate", scope: !3, file: !3, line: 315, type: !757, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !759)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !412}
!759 = !{!760, !761, !762}
!760 = !DILocalVariable(name: "maxslabs", arg: 1, scope: !756, file: !3, line: 315, type: !412)
!761 = !DILocalVariable(name: "i", scope: !756, file: !3, line: 316, type: !99)
!762 = !DILocalVariable(name: "prealloc", scope: !756, file: !3, line: 317, type: !7)
!763 = !DILocation(line: 0, scope: !756)
!764 = !DILocation(line: 325, column: 5, scope: !765)
!765 = distinct !DILexicalBlock(scope: !756, file: !3, line: 325, column: 5)
!766 = !DILocation(line: 326, column: 13, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 326, column: 13)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 325, column: 67)
!769 = distinct !DILexicalBlock(scope: !765, file: !3, line: 325, column: 5)
!770 = !DILocation(line: 326, column: 24, scope: !767)
!771 = !DILocation(line: 326, column: 13, scope: !768)
!772 = !DILocation(line: 327, column: 13, scope: !767)
!773 = !DILocation(line: 328, column: 13, scope: !774)
!774 = distinct !DILexicalBlock(scope: !768, file: !3, line: 328, column: 13)
!775 = !DILocation(line: 328, column: 33, scope: !774)
!776 = !DILocation(line: 328, column: 13, scope: !768)
!777 = !DILocation(line: 329, column: 21, scope: !778)
!778 = distinct !DILexicalBlock(scope: !774, file: !3, line: 328, column: 39)
!779 = !DILocation(line: 331, column: 45, scope: !778)
!780 = !DILocation(line: 329, column: 13, scope: !778)
!781 = !DILocation(line: 332, column: 13, scope: !778)
!782 = !DILocation(line: 325, column: 63, scope: !769)
!783 = !DILocation(line: 325, column: 32, scope: !769)
!784 = distinct !{!784, !764, !785, !325}
!785 = !DILocation(line: 334, column: 5, scope: !765)
!786 = !DILocation(line: 335, column: 1, scope: !756)
!787 = distinct !DISubprogram(name: "slabs_prefill_global", scope: !3, file: !3, line: 298, type: !788, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !790)
!788 = !DISubroutineType(types: !789)
!789 = !{null}
!790 = !{!791, !792, !793}
!791 = !DILocalVariable(name: "ptr", scope: !787, file: !3, line: 299, type: !125)
!792 = !DILocalVariable(name: "p", scope: !787, file: !3, line: 300, type: !346)
!793 = !DILocalVariable(name: "len", scope: !787, file: !3, line: 301, type: !99)
!794 = !DILocation(line: 0, scope: !787)
!795 = !DILocation(line: 303, column: 12, scope: !787)
!796 = !DILocation(line: 303, column: 27, scope: !787)
!797 = !DILocation(line: 303, column: 25, scope: !787)
!798 = !DILocation(line: 304, column: 13, scope: !787)
!799 = !DILocation(line: 301, column: 24, scope: !787)
!800 = !DILocation(line: 304, column: 39, scope: !787)
!801 = !DILocation(line: 304, column: 23, scope: !787)
!802 = !DILocation(line: 304, column: 45, scope: !787)
!803 = !DILocation(line: 303, column: 5, scope: !787)
!804 = !DILocation(line: 305, column: 9, scope: !805)
!805 = distinct !DILexicalBlock(scope: !787, file: !3, line: 304, column: 54)
!806 = !DILocation(line: 309, column: 9, scope: !805)
!807 = !DILocation(line: 310, column: 12, scope: !805)
!808 = !DILocation(line: 310, column: 30, scope: !805)
!809 = !DILocation(line: 310, column: 9, scope: !805)
!810 = !DILocation(line: 310, column: 34, scope: !805)
!811 = distinct !{!811, !803, !812, !325}
!812 = !DILocation(line: 311, column: 5, scope: !787)
!813 = !DILocation(line: 313, column: 1, scope: !787)
!814 = distinct !DISubprogram(name: "memory_allocate", scope: !3, file: !3, line: 610, type: !815, scopeLine: 610, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !817)
!815 = !DISubroutineType(types: !816)
!816 = !{!125, !128}
!817 = !{!818, !819}
!818 = !DILocalVariable(name: "size", arg: 1, scope: !814, file: !3, line: 610, type: !128)
!819 = !DILocalVariable(name: "ret", scope: !814, file: !3, line: 611, type: !125)
!820 = !DILocation(line: 0, scope: !814)
!821 = !DILocation(line: 613, column: 9, scope: !822)
!822 = distinct !DILexicalBlock(scope: !814, file: !3, line: 613, column: 9)
!823 = !DILocation(line: 613, column: 18, scope: !822)
!824 = !DILocation(line: 613, column: 9, scope: !814)
!825 = !DILocation(line: 615, column: 22, scope: !826)
!826 = distinct !DILexicalBlock(scope: !822, file: !3, line: 613, column: 27)
!827 = !DILocation(line: 615, column: 15, scope: !826)
!828 = !DILocation(line: 616, column: 5, scope: !826)
!829 = !DILocation(line: 617, column: 15, scope: !830)
!830 = distinct !DILexicalBlock(scope: !822, file: !3, line: 616, column: 12)
!831 = !DILocation(line: 619, column: 20, scope: !832)
!832 = distinct !DILexicalBlock(scope: !830, file: !3, line: 619, column: 13)
!833 = !DILocation(line: 619, column: 18, scope: !832)
!834 = !DILocation(line: 619, column: 13, scope: !830)
!835 = !DILocation(line: 624, column: 18, scope: !836)
!836 = distinct !DILexicalBlock(scope: !830, file: !3, line: 624, column: 13)
!837 = !DILocation(line: 624, column: 13, scope: !830)
!838 = !DILocation(line: 625, column: 42, scope: !839)
!839 = distinct !DILexicalBlock(scope: !836, file: !3, line: 624, column: 39)
!840 = !DILocation(line: 625, column: 39, scope: !839)
!841 = !DILocation(line: 625, column: 18, scope: !839)
!842 = !DILocation(line: 626, column: 9, scope: !839)
!843 = !DILocation(line: 628, column: 44, scope: !830)
!844 = !DILocation(line: 628, column: 21, scope: !830)
!845 = !DILocation(line: 629, column: 18, scope: !846)
!846 = distinct !DILexicalBlock(scope: !830, file: !3, line: 629, column: 13)
!847 = !DILocation(line: 629, column: 13, scope: !830)
!848 = !DILocation(line: 630, column: 26, scope: !849)
!849 = distinct !DILexicalBlock(scope: !846, file: !3, line: 629, column: 31)
!850 = !DILocation(line: 630, column: 23, scope: !849)
!851 = !DILocation(line: 631, column: 9, scope: !849)
!852 = !DILocation(line: 632, column: 23, scope: !853)
!853 = distinct !DILexicalBlock(scope: !846, file: !3, line: 631, column: 16)
!854 = !DILocation(line: 638, column: 1, scope: !814)
!855 = distinct !DISubprogram(name: "fill_slab_stats_automove", scope: !3, file: !3, line: 528, type: !856, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !866)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !858}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_stats_automove", file: !6, line: 39, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 34, size: 192, elements: !861)
!861 = !{!862, !863, !864, !865}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "chunks_per_page", scope: !860, file: !6, line: 35, baseType: !7, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !860, file: !6, line: 36, baseType: !7, size: 32, offset: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "free_chunks", scope: !860, file: !6, line: 37, baseType: !215, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "total_pages", scope: !860, file: !6, line: 38, baseType: !215, size: 64, offset: 128)
!866 = !{!867, !868, !869, !873}
!867 = !DILocalVariable(name: "am", arg: 1, scope: !855, file: !3, line: 528, type: !858)
!868 = !DILocalVariable(name: "n", scope: !855, file: !3, line: 529, type: !99)
!869 = !DILocalVariable(name: "p", scope: !870, file: !3, line: 532, type: !346)
!870 = distinct !DILexicalBlock(scope: !871, file: !3, line: 531, column: 54)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 531, column: 5)
!872 = distinct !DILexicalBlock(scope: !855, file: !3, line: 531, column: 5)
!873 = !DILocalVariable(name: "cur", scope: !870, file: !3, line: 533, type: !858)
!874 = !DILocation(line: 0, scope: !855)
!875 = !DILocation(line: 530, column: 5, scope: !855)
!876 = !DILocation(line: 531, column: 5, scope: !872)
!877 = !DILocation(line: 0, scope: !870)
!878 = !DILocation(line: 534, column: 35, scope: !870)
!879 = !DILocation(line: 534, column: 14, scope: !870)
!880 = !DILocation(line: 534, column: 30, scope: !870)
!881 = !{!882, !303, i64 0}
!882 = !{!"", !303, i64 0, !303, i64 4, !302, i64 8, !302, i64 16}
!883 = !DILocation(line: 535, column: 31, scope: !870)
!884 = !DILocation(line: 535, column: 14, scope: !870)
!885 = !DILocation(line: 535, column: 28, scope: !870)
!886 = !DILocation(line: 535, column: 26, scope: !870)
!887 = !DILocation(line: 537, column: 30, scope: !870)
!888 = !DILocation(line: 537, column: 14, scope: !870)
!889 = !DILocation(line: 537, column: 25, scope: !870)
!890 = !{!882, !303, i64 4}
!891 = !DILocation(line: 531, column: 50, scope: !871)
!892 = !DILocation(line: 531, column: 19, scope: !871)
!893 = distinct !{!893, !876, !894, !325}
!894 = !DILocation(line: 538, column: 5, scope: !872)
!895 = !DILocation(line: 539, column: 5, scope: !855)
!896 = !DILocation(line: 540, column: 1, scope: !855)
!897 = !DISubprogram(name: "pthread_mutex_lock", scope: !898, file: !898, line: 738, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!898 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!899 = !DISubroutineType(types: !900)
!900 = !{!99, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!902 = !DISubprogram(name: "pthread_mutex_unlock", scope: !898, file: !898, line: 756, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!903 = distinct !DISubprogram(name: "global_page_pool_size", scope: !3, file: !3, line: 545, type: !904, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !907)
!904 = !DISubroutineType(types: !905)
!905 = !{!7, !906}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!907 = !{!908, !909}
!908 = !DILocalVariable(name: "mem_flag", arg: 1, scope: !903, file: !3, line: 545, type: !906)
!909 = !DILocalVariable(name: "ret", scope: !903, file: !3, line: 546, type: !7)
!910 = !DILocation(line: 0, scope: !903)
!911 = !DILocation(line: 547, column: 5, scope: !903)
!912 = !DILocation(line: 548, column: 18, scope: !913)
!913 = distinct !DILexicalBlock(scope: !903, file: !3, line: 548, column: 9)
!914 = !DILocation(line: 548, column: 9, scope: !903)
!915 = !DILocation(line: 549, column: 21, scope: !913)
!916 = !DILocation(line: 549, column: 37, scope: !913)
!917 = !DILocation(line: 549, column: 34, scope: !913)
!918 = !DILocation(line: 549, column: 19, scope: !913)
!919 = !{!305, !305, i64 0}
!920 = !DILocation(line: 549, column: 9, scope: !913)
!921 = !DILocation(line: 550, column: 44, scope: !903)
!922 = !DILocation(line: 551, column: 5, scope: !903)
!923 = !DILocation(line: 552, column: 5, scope: !903)
!924 = distinct !DISubprogram(name: "slabs_alloc", scope: !3, file: !3, line: 656, type: !925, scopeLine: 657, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !927)
!925 = !DISubroutineType(types: !926)
!926 = !{!125, !128, !7, !7}
!927 = !{!928, !929, !930, !931}
!928 = !DILocalVariable(name: "size", arg: 1, scope: !924, file: !3, line: 656, type: !128)
!929 = !DILocalVariable(name: "id", arg: 2, scope: !924, file: !3, line: 656, type: !7)
!930 = !DILocalVariable(name: "flags", arg: 3, scope: !924, file: !3, line: 657, type: !7)
!931 = !DILocalVariable(name: "ret", scope: !924, file: !3, line: 658, type: !125)
!932 = !DILocation(line: 0, scope: !924)
!933 = !DILocation(line: 660, column: 5, scope: !924)
!934 = !DILocation(line: 661, column: 11, scope: !924)
!935 = !DILocation(line: 662, column: 5, scope: !924)
!936 = !DILocation(line: 663, column: 5, scope: !924)
!937 = distinct !DISubprogram(name: "do_slabs_alloc", scope: !3, file: !3, line: 406, type: !938, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !940)
!938 = !DISubroutineType(types: !939)
!939 = !{!125, !290, !7, !7}
!940 = !{!941, !942, !943, !944, !945, !946}
!941 = !DILocalVariable(name: "size", arg: 1, scope: !937, file: !3, line: 406, type: !290)
!942 = !DILocalVariable(name: "id", arg: 2, scope: !937, file: !3, line: 406, type: !7)
!943 = !DILocalVariable(name: "flags", arg: 3, scope: !937, file: !3, line: 407, type: !7)
!944 = !DILocalVariable(name: "p", scope: !937, file: !3, line: 408, type: !346)
!945 = !DILocalVariable(name: "ret", scope: !937, file: !3, line: 409, type: !125)
!946 = !DILocalVariable(name: "it", scope: !937, file: !3, line: 410, type: !87)
!947 = !DILocation(line: 0, scope: !937)
!948 = !DILocation(line: 412, column: 12, scope: !949)
!949 = distinct !DILexicalBlock(scope: !937, file: !3, line: 412, column: 9)
!950 = !DILocation(line: 412, column: 29, scope: !949)
!951 = !DILocation(line: 412, column: 32, scope: !949)
!952 = !DILocation(line: 412, column: 37, scope: !949)
!953 = !DILocation(line: 412, column: 35, scope: !949)
!954 = !DILocation(line: 412, column: 9, scope: !937)
!955 = !DILocation(line: 414, column: 9, scope: !956)
!956 = distinct !DILexicalBlock(scope: !949, file: !3, line: 412, column: 52)
!957 = !DILocation(line: 416, column: 10, scope: !937)
!958 = !DILocation(line: 417, column: 5, scope: !959)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 417, column: 5)
!960 = distinct !DILexicalBlock(scope: !937, file: !3, line: 417, column: 5)
!961 = !DILocation(line: 417, column: 5, scope: !960)
!962 = !DILocation(line: 419, column: 5, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !3, line: 419, column: 5)
!964 = distinct !DILexicalBlock(scope: !937, file: !3, line: 419, column: 5)
!965 = !DILocation(line: 419, column: 5, scope: !964)
!966 = !DILocation(line: 422, column: 28, scope: !967)
!967 = distinct !DILexicalBlock(scope: !937, file: !3, line: 422, column: 9)
!968 = !DILocation(line: 422, column: 34, scope: !967)
!969 = !DILocation(line: 422, column: 9, scope: !937)
!970 = !DILocation(line: 423, column: 26, scope: !971)
!971 = distinct !DILexicalBlock(scope: !967, file: !3, line: 422, column: 61)
!972 = !DILocation(line: 423, column: 9, scope: !971)
!973 = !DILocation(line: 426, column: 12, scope: !974)
!974 = distinct !DILexicalBlock(scope: !937, file: !3, line: 426, column: 9)
!975 = !DILocation(line: 426, column: 20, scope: !974)
!976 = !DILocation(line: 426, column: 9, scope: !937)
!977 = !DILocation(line: 428, column: 25, scope: !978)
!978 = distinct !DILexicalBlock(scope: !974, file: !3, line: 426, column: 26)
!979 = !DILocation(line: 429, column: 24, scope: !978)
!980 = !DILocation(line: 429, column: 18, scope: !978)
!981 = !DILocation(line: 430, column: 17, scope: !982)
!982 = distinct !DILexicalBlock(scope: !978, file: !3, line: 430, column: 13)
!983 = !DILocation(line: 430, column: 13, scope: !982)
!984 = !DILocation(line: 430, column: 13, scope: !978)
!985 = !DILocation(line: 430, column: 23, scope: !982)
!986 = !DILocation(line: 430, column: 27, scope: !982)
!987 = !DILocation(line: 430, column: 33, scope: !982)
!988 = !DILocation(line: 430, column: 38, scope: !982)
!989 = !DILocation(line: 433, column: 13, scope: !978)
!990 = !DILocation(line: 433, column: 22, scope: !978)
!991 = !DILocation(line: 434, column: 13, scope: !978)
!992 = !DILocation(line: 434, column: 22, scope: !978)
!993 = !DILocation(line: 435, column: 19, scope: !978)
!994 = !DILocation(line: 443, column: 5, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 441, column: 14)
!996 = distinct !DILexicalBlock(scope: !937, file: !3, line: 441, column: 9)
!997 = !DILocation(line: 438, column: 13, scope: !998)
!998 = distinct !DILexicalBlock(scope: !974, file: !3, line: 437, column: 12)
!999 = !DILocation(line: 448, column: 1, scope: !937)
!1000 = distinct !DISubprogram(name: "slabs_free", scope: !3, file: !3, line: 666, type: !1001, scopeLine: 666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1003)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !125, !128, !7}
!1003 = !{!1004, !1005, !1006}
!1004 = !DILocalVariable(name: "ptr", arg: 1, scope: !1000, file: !3, line: 666, type: !125)
!1005 = !DILocalVariable(name: "size", arg: 2, scope: !1000, file: !3, line: 666, type: !128)
!1006 = !DILocalVariable(name: "id", arg: 3, scope: !1000, file: !3, line: 666, type: !7)
!1007 = !DILocation(line: 0, scope: !1000)
!1008 = !DILocation(line: 667, column: 5, scope: !1000)
!1009 = !DILocation(line: 668, column: 5, scope: !1000)
!1010 = !DILocation(line: 669, column: 5, scope: !1000)
!1011 = !DILocation(line: 670, column: 1, scope: !1000)
!1012 = distinct !DISubprogram(name: "do_slabs_free", scope: !3, file: !3, line: 498, type: !1013, scopeLine: 498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !125, !290, !7}
!1015 = !{!1016, !1017, !1018, !1019, !1020}
!1016 = !DILocalVariable(name: "ptr", arg: 1, scope: !1012, file: !3, line: 498, type: !125)
!1017 = !DILocalVariable(name: "size", arg: 2, scope: !1012, file: !3, line: 498, type: !290)
!1018 = !DILocalVariable(name: "id", arg: 3, scope: !1012, file: !3, line: 498, type: !7)
!1019 = !DILocalVariable(name: "p", scope: !1012, file: !3, line: 499, type: !346)
!1020 = !DILocalVariable(name: "it", scope: !1012, file: !3, line: 500, type: !87)
!1021 = !DILocation(line: 0, scope: !1012)
!1022 = !DILocation(line: 502, column: 5, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 502, column: 5)
!1024 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 502, column: 5)
!1025 = !DILocation(line: 502, column: 5, scope: !1024)
!1026 = !DILocation(line: 503, column: 32, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 503, column: 9)
!1028 = !DILocation(line: 507, column: 10, scope: !1012)
!1029 = !DILocation(line: 510, column: 14, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 510, column: 9)
!1031 = !DILocation(line: 510, column: 23, scope: !1030)
!1032 = !DILocation(line: 510, column: 39, scope: !1030)
!1033 = !DILocation(line: 510, column: 9, scope: !1012)
!1034 = !DILocation(line: 511, column: 22, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 510, column: 45)
!1036 = !DILocation(line: 512, column: 27, scope: !1035)
!1037 = !DILocation(line: 512, column: 13, scope: !1035)
!1038 = !DILocation(line: 512, column: 25, scope: !1035)
!1039 = !DILocation(line: 513, column: 13, scope: !1035)
!1040 = !DILocation(line: 513, column: 18, scope: !1035)
!1041 = !DILocation(line: 514, column: 23, scope: !1035)
!1042 = !DILocation(line: 514, column: 13, scope: !1035)
!1043 = !DILocation(line: 514, column: 18, scope: !1035)
!1044 = !DILocation(line: 515, column: 13, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 515, column: 13)
!1046 = !DILocation(line: 515, column: 13, scope: !1035)
!1047 = !DILocation(line: 515, column: 40, scope: !1045)
!1048 = !DILocation(line: 515, column: 27, scope: !1045)
!1049 = !DILocation(line: 515, column: 33, scope: !1045)
!1050 = !DILocation(line: 515, column: 38, scope: !1045)
!1051 = !DILocation(line: 515, column: 23, scope: !1045)
!1052 = !DILocation(line: 516, column: 20, scope: !1035)
!1053 = !DILocation(line: 516, column: 18, scope: !1035)
!1054 = !DILocation(line: 518, column: 12, scope: !1035)
!1055 = !DILocation(line: 518, column: 19, scope: !1035)
!1056 = !DILocation(line: 519, column: 5, scope: !1035)
!1057 = !DILocation(line: 509, column: 10, scope: !1012)
!1058 = !DILocation(line: 520, column: 31, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 519, column: 12)
!1060 = !DILocation(line: 520, column: 9, scope: !1059)
!1061 = !DILocation(line: 523, column: 1, scope: !1012)
!1062 = distinct !DISubprogram(name: "slabs_stats", scope: !3, file: !3, line: 672, type: !1063, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1072)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !1065, !125}
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "ADD_STAT", file: !15, line: 189, baseType: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !126, !1069, !126, !451, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1072 = !{!1073, !1074}
!1073 = !DILocalVariable(name: "add_stats", arg: 1, scope: !1062, file: !3, line: 672, type: !1065)
!1074 = !DILocalVariable(name: "c", arg: 2, scope: !1062, file: !3, line: 672, type: !125)
!1075 = !DILocation(line: 0, scope: !1062)
!1076 = !DILocation(line: 673, column: 5, scope: !1062)
!1077 = !DILocation(line: 674, column: 5, scope: !1062)
!1078 = !DILocation(line: 675, column: 5, scope: !1062)
!1079 = !DILocation(line: 676, column: 1, scope: !1062)
!1080 = distinct !DISubprogram(name: "do_slabs_stats", scope: !3, file: !3, line: 556, type: !1063, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1081)
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1139, !1143, !1146, !1147, !1151, !1152, !1153}
!1082 = !DILocalVariable(name: "add_stats", arg: 1, scope: !1080, file: !3, line: 556, type: !1065)
!1083 = !DILocalVariable(name: "c", arg: 2, scope: !1080, file: !3, line: 556, type: !125)
!1084 = !DILocalVariable(name: "i", scope: !1080, file: !3, line: 557, type: !99)
!1085 = !DILocalVariable(name: "total", scope: !1080, file: !3, line: 557, type: !99)
!1086 = !DILocalVariable(name: "thread_stats", scope: !1080, file: !3, line: 559, type: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_stats", file: !15, line: 356, size: 51584, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1132, !1136, !1137, !1138}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1087, file: !15, line: 357, baseType: !187, size: 320)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "get_cmds", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "get_misses", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "get_expired", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 448)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "get_flushed", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 512)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "touch_cmds", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 576)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "touch_misses", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 640)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "delete_misses", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 704)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "incr_misses", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 768)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "decr_misses", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 832)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "cas_misses", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 896)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "meta_cmds", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 960)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_read", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 1024)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 1088)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "flush_cmds", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 1152)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "conn_yields", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 1216)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "auth_cmds", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 1280)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "auth_errors", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 1344)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "idle_kicks", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 1408)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_oom", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 1472)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_count", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 1536)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_bytes", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 1600)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_oom", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 1664)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "store_too_large", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 1728)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "store_no_memory", scope: !1087, file: !15, line: 359, baseType: !117, size: 64, offset: 1792)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "get_extstore", scope: !1087, file: !15, line: 361, baseType: !117, size: 64, offset: 1856)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "get_aborted_extstore", scope: !1087, file: !15, line: 361, baseType: !117, size: 64, offset: 1920)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "get_oom_extstore", scope: !1087, file: !15, line: 361, baseType: !117, size: 64, offset: 1984)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "recache_from_extstore", scope: !1087, file: !15, line: 361, baseType: !117, size: 64, offset: 2048)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "miss_from_extstore", scope: !1087, file: !15, line: 361, baseType: !117, size: 64, offset: 2112)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "badcrc_from_extstore", scope: !1087, file: !15, line: 361, baseType: !117, size: 64, offset: 2176)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "slab_stats", scope: !1087, file: !15, line: 367, baseType: !1121, size: 32768, offset: 2240)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1122, size: 32768, elements: !164)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slab_stats", file: !15, line: 303, size: 512, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "set_cmds", scope: !1122, file: !15, line: 305, baseType: !117, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "get_hits", scope: !1122, file: !15, line: 305, baseType: !117, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "touch_hits", scope: !1122, file: !15, line: 305, baseType: !117, size: 64, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "delete_hits", scope: !1122, file: !15, line: 305, baseType: !117, size: 64, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "cas_hits", scope: !1122, file: !15, line: 305, baseType: !117, size: 64, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "cas_badval", scope: !1122, file: !15, line: 305, baseType: !117, size: 64, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "incr_hits", scope: !1122, file: !15, line: 305, baseType: !117, size: 64, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "decr_hits", scope: !1122, file: !15, line: 305, baseType: !117, size: 64, offset: 448)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "lru_hits", scope: !1087, file: !15, line: 368, baseType: !1133, size: 16384, offset: 35008)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 16384, elements: !1134)
!1134 = !{!1135}
!1135 = !DISubrange(count: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_count", scope: !1087, file: !15, line: 369, baseType: !117, size: 64, offset: 51392)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_bytes", scope: !1087, file: !15, line: 370, baseType: !117, size: 64, offset: 51456)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_bytes_free", scope: !1087, file: !15, line: 371, baseType: !117, size: 64, offset: 51520)
!1139 = !DILocalVariable(name: "p", scope: !1140, file: !3, line: 564, type: !346)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 563, column: 54)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 563, column: 5)
!1142 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 563, column: 5)
!1143 = !DILocalVariable(name: "perslab", scope: !1144, file: !3, line: 566, type: !452)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 565, column: 28)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 565, column: 13)
!1146 = !DILocalVariable(name: "slabs", scope: !1144, file: !3, line: 566, type: !452)
!1147 = !DILocalVariable(name: "key_str", scope: !1144, file: !3, line: 570, type: !1148)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 1024, elements: !1149)
!1149 = !{!1150}
!1150 = !DISubrange(count: 128)
!1151 = !DILocalVariable(name: "val_str", scope: !1144, file: !3, line: 571, type: !1148)
!1152 = !DILocalVariable(name: "klen", scope: !1144, file: !3, line: 572, type: !99)
!1153 = !DILocalVariable(name: "vlen", scope: !1144, file: !3, line: 572, type: !99)
!1154 = !DILocation(line: 0, scope: !1080)
!1155 = !DILocation(line: 559, column: 5, scope: !1080)
!1156 = !DILocation(line: 559, column: 25, scope: !1080)
!1157 = !DILocation(line: 560, column: 5, scope: !1080)
!1158 = !DILocation(line: 563, column: 34, scope: !1141)
!1159 = !DILocation(line: 563, column: 31, scope: !1141)
!1160 = !DILocation(line: 563, column: 5, scope: !1142)
!1161 = !DILocation(line: 0, scope: !1140)
!1162 = !DILocation(line: 565, column: 16, scope: !1145)
!1163 = !DILocation(line: 565, column: 22, scope: !1145)
!1164 = !DILocation(line: 565, column: 13, scope: !1140)
!1165 = !DILocation(line: 566, column: 13, scope: !1144)
!1166 = !DILocation(line: 0, scope: !1144)
!1167 = !DILocation(line: 568, column: 26, scope: !1144)
!1168 = !DILocation(line: 570, column: 13, scope: !1144)
!1169 = !DILocation(line: 570, column: 18, scope: !1144)
!1170 = !DILocation(line: 571, column: 13, scope: !1144)
!1171 = !DILocation(line: 571, column: 18, scope: !1144)
!1172 = !DILocation(line: 574, column: 13, scope: !1144)
!1173 = !DILocation(line: 575, column: 13, scope: !1144)
!1174 = !DILocation(line: 576, column: 13, scope: !1144)
!1175 = !DILocation(line: 577, column: 13, scope: !1144)
!1176 = !DILocation(line: 578, column: 13, scope: !1144)
!1177 = !DILocation(line: 580, column: 13, scope: !1144)
!1178 = !DILocation(line: 582, column: 13, scope: !1144)
!1179 = !DILocation(line: 583, column: 13, scope: !1144)
!1180 = !{!1181, !302, i64 8}
!1181 = !{!"slab_stats", !302, i64 0, !302, i64 8, !302, i64 16, !302, i64 24, !302, i64 32, !302, i64 40, !302, i64 48, !302, i64 56}
!1182 = !DILocation(line: 585, column: 13, scope: !1144)
!1183 = !{!1181, !302, i64 0}
!1184 = !DILocation(line: 587, column: 13, scope: !1144)
!1185 = !{!1181, !302, i64 24}
!1186 = !DILocation(line: 589, column: 13, scope: !1144)
!1187 = !{!1181, !302, i64 48}
!1188 = !DILocation(line: 591, column: 13, scope: !1144)
!1189 = !{!1181, !302, i64 56}
!1190 = !DILocation(line: 593, column: 13, scope: !1144)
!1191 = !{!1181, !302, i64 32}
!1192 = !DILocation(line: 595, column: 13, scope: !1144)
!1193 = !{!1181, !302, i64 40}
!1194 = !DILocation(line: 597, column: 13, scope: !1144)
!1195 = !{!1181, !302, i64 16}
!1196 = !DILocation(line: 599, column: 18, scope: !1144)
!1197 = !DILocation(line: 600, column: 9, scope: !1145)
!1198 = !DILocation(line: 600, column: 9, scope: !1144)
!1199 = !DILocation(line: 563, column: 50, scope: !1141)
!1200 = distinct !{!1200, !1160, !1201, !325}
!1201 = !DILocation(line: 601, column: 5, scope: !1142)
!1202 = !DILocation(line: 605, column: 5, scope: !1080)
!1203 = !DILocation(line: 606, column: 5, scope: !1080)
!1204 = !DILocation(line: 607, column: 5, scope: !1080)
!1205 = !DILocation(line: 608, column: 1, scope: !1080)
!1206 = distinct !DISubprogram(name: "slabs_adjust_mem_limit", scope: !3, file: !3, line: 689, type: !1207, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1209)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!184, !128}
!1209 = !{!1210, !1211}
!1210 = !DILocalVariable(name: "new_mem_limit", arg: 1, scope: !1206, file: !3, line: 689, type: !128)
!1211 = !DILocalVariable(name: "ret", scope: !1206, file: !3, line: 690, type: !184)
!1212 = !DILocation(line: 0, scope: !1206)
!1213 = !DILocation(line: 691, column: 5, scope: !1206)
!1214 = !DILocation(line: 692, column: 11, scope: !1206)
!1215 = !DILocation(line: 693, column: 5, scope: !1206)
!1216 = !DILocation(line: 694, column: 5, scope: !1206)
!1217 = distinct !DISubprogram(name: "do_slabs_adjust_mem_limit", scope: !3, file: !3, line: 678, type: !1207, scopeLine: 678, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1218)
!1218 = !{!1219}
!1219 = !DILocalVariable(name: "new_mem_limit", arg: 1, scope: !1217, file: !3, line: 678, type: !128)
!1220 = !DILocation(line: 0, scope: !1217)
!1221 = !DILocation(line: 680, column: 9, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 680, column: 9)
!1223 = !DILocation(line: 680, column: 18, scope: !1222)
!1224 = !DILocation(line: 680, column: 9, scope: !1217)
!1225 = !DILocation(line: 681, column: 9, scope: !1222)
!1226 = !DILocation(line: 682, column: 25, scope: !1217)
!1227 = !DILocation(line: 682, column: 23, scope: !1217)
!1228 = !{!301, !302, i64 0}
!1229 = !DILocation(line: 683, column: 15, scope: !1217)
!1230 = !DILocation(line: 685, column: 5, scope: !1217)
!1231 = !DILocation(line: 686, column: 5, scope: !1217)
!1232 = !DILocation(line: 687, column: 1, scope: !1217)
!1233 = distinct !DISubprogram(name: "slabs_available_chunks", scope: !3, file: !3, line: 697, type: !1234, scopeLine: 698, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1237)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!7, !412, !906, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1237 = !{!1238, !1239, !1240, !1241, !1242}
!1238 = !DILocalVariable(name: "id", arg: 1, scope: !1233, file: !3, line: 697, type: !412)
!1239 = !DILocalVariable(name: "mem_flag", arg: 2, scope: !1233, file: !3, line: 697, type: !906)
!1240 = !DILocalVariable(name: "chunks_perslab", arg: 3, scope: !1233, file: !3, line: 698, type: !1236)
!1241 = !DILocalVariable(name: "ret", scope: !1233, file: !3, line: 699, type: !7)
!1242 = !DILocalVariable(name: "p", scope: !1233, file: !3, line: 700, type: !346)
!1243 = !DILocation(line: 0, scope: !1233)
!1244 = !DILocation(line: 702, column: 5, scope: !1233)
!1245 = !DILocation(line: 703, column: 10, scope: !1233)
!1246 = !DILocation(line: 704, column: 14, scope: !1233)
!1247 = !DILocation(line: 705, column: 18, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 705, column: 9)
!1249 = !DILocation(line: 705, column: 9, scope: !1233)
!1250 = !DILocation(line: 706, column: 21, scope: !1248)
!1251 = !DILocation(line: 706, column: 37, scope: !1248)
!1252 = !DILocation(line: 706, column: 34, scope: !1248)
!1253 = !DILocation(line: 706, column: 19, scope: !1248)
!1254 = !DILocation(line: 706, column: 9, scope: !1248)
!1255 = !DILocation(line: 707, column: 24, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 707, column: 9)
!1257 = !DILocation(line: 707, column: 9, scope: !1233)
!1258 = !DILocation(line: 708, column: 27, scope: !1256)
!1259 = !DILocation(line: 708, column: 30, scope: !1256)
!1260 = !DILocation(line: 708, column: 25, scope: !1256)
!1261 = !DILocation(line: 708, column: 9, scope: !1256)
!1262 = !DILocation(line: 709, column: 5, scope: !1233)
!1263 = !DILocation(line: 710, column: 5, scope: !1233)
!1264 = distinct !DISubprogram(name: "slabs_mlock", scope: !3, file: !3, line: 719, type: !788, scopeLine: 719, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !742)
!1265 = !DILocation(line: 720, column: 5, scope: !1264)
!1266 = !DILocation(line: 721, column: 1, scope: !1264)
!1267 = distinct !DISubprogram(name: "slabs_munlock", scope: !3, file: !3, line: 723, type: !788, scopeLine: 723, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !742)
!1268 = !DILocation(line: 724, column: 5, scope: !1267)
!1269 = !DILocation(line: 725, column: 1, scope: !1267)
!1270 = distinct !DISubprogram(name: "slabs_reassign", scope: !3, file: !3, line: 1298, type: !1271, scopeLine: 1298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1273)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!5, !99, !99}
!1273 = !{!1274, !1275, !1276}
!1274 = !DILocalVariable(name: "src", arg: 1, scope: !1270, file: !3, line: 1298, type: !99)
!1275 = !DILocalVariable(name: "dst", arg: 2, scope: !1270, file: !3, line: 1298, type: !99)
!1276 = !DILocalVariable(name: "ret", scope: !1270, file: !3, line: 1299, type: !5)
!1277 = !DILocation(line: 0, scope: !1270)
!1278 = !DILocation(line: 1300, column: 9, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 1300, column: 9)
!1280 = !DILocation(line: 1300, column: 54, scope: !1279)
!1281 = !DILocation(line: 1300, column: 9, scope: !1270)
!1282 = !DILocation(line: 1301, column: 9, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 1300, column: 60)
!1284 = !DILocation(line: 1303, column: 29, scope: !1270)
!1285 = !DILocation(line: 1303, column: 11, scope: !1270)
!1286 = !DILocation(line: 1304, column: 5, scope: !1270)
!1287 = !DILocation(line: 1305, column: 5, scope: !1270)
!1288 = !DILocation(line: 1306, column: 1, scope: !1270)
!1289 = !DISubprogram(name: "pthread_mutex_trylock", scope: !898, file: !898, line: 734, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1290 = distinct !DISubprogram(name: "do_slabs_reassign", scope: !3, file: !3, line: 1264, type: !1271, scopeLine: 1264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1291)
!1291 = !{!1292, !1293, !1294}
!1292 = !DILocalVariable(name: "src", arg: 1, scope: !1290, file: !3, line: 1264, type: !99)
!1293 = !DILocalVariable(name: "dst", arg: 2, scope: !1290, file: !3, line: 1264, type: !99)
!1294 = !DILocalVariable(name: "nospare", scope: !1290, file: !3, line: 1265, type: !184)
!1295 = !DILocation(line: 0, scope: !1290)
!1296 = !DILocation(line: 1266, column: 9, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1266, column: 9)
!1298 = !DILocation(line: 1266, column: 31, scope: !1297)
!1299 = !DILocation(line: 1266, column: 9, scope: !1290)
!1300 = !DILocation(line: 1267, column: 9, scope: !1297)
!1301 = !DILocation(line: 1269, column: 13, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1269, column: 9)
!1303 = !DILocation(line: 1269, column: 9, scope: !1290)
!1304 = !DILocation(line: 1270, column: 9, scope: !1302)
!1305 = !DILocation(line: 1273, column: 13, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1273, column: 9)
!1307 = !DILocation(line: 1273, column: 9, scope: !1290)
!1308 = !DILocation(line: 1274, column: 39, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 1273, column: 20)
!1310 = !DILocation(line: 1274, column: 15, scope: !1309)
!1311 = !DILocation(line: 1276, column: 5, scope: !1309)
!1312 = !DILocation(line: 1278, column: 13, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1278, column: 9)
!1314 = !DILocation(line: 1278, column: 37, scope: !1313)
!1315 = !DILocation(line: 1278, column: 40, scope: !1313)
!1316 = !DILocation(line: 1278, column: 46, scope: !1313)
!1317 = !DILocation(line: 1278, column: 44, scope: !1313)
!1318 = !DILocation(line: 1278, column: 60, scope: !1313)
!1319 = !DILocation(line: 1279, column: 9, scope: !1313)
!1320 = !DILocation(line: 1279, column: 13, scope: !1313)
!1321 = !DILocation(line: 1279, column: 37, scope: !1313)
!1322 = !DILocation(line: 1279, column: 40, scope: !1313)
!1323 = !DILocation(line: 1279, column: 44, scope: !1313)
!1324 = !DILocation(line: 1278, column: 9, scope: !1290)
!1325 = !DILocation(line: 1280, column: 9, scope: !1313)
!1326 = !DILocation(line: 1282, column: 5, scope: !1290)
!1327 = !DILocation(line: 1283, column: 9, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1283, column: 9)
!1329 = !DILocation(line: 1283, column: 24, scope: !1328)
!1330 = !DILocation(line: 1283, column: 30, scope: !1328)
!1331 = !DILocation(line: 1283, column: 9, scope: !1290)
!1332 = !DILocation(line: 1284, column: 17, scope: !1328)
!1333 = !DILocation(line: 1285, column: 5, scope: !1290)
!1334 = !DILocation(line: 1287, column: 9, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1286, column: 9)
!1336 = !DILocation(line: 1289, column: 26, scope: !1290)
!1337 = !DILocation(line: 1289, column: 24, scope: !1290)
!1338 = !{!1339, !303, i64 24}
!1339 = !{!"slab_rebalance", !283, i64 0, !283, i64 8, !283, i64 16, !303, i64 24, !303, i64 28, !303, i64 32, !303, i64 36, !303, i64 40, !303, i64 44, !303, i64 48, !303, i64 52, !303, i64 56, !284, i64 60, !283, i64 64}
!1340 = !DILocation(line: 1290, column: 24, scope: !1290)
!1341 = !{!1339, !303, i64 28}
!1342 = !DILocation(line: 1292, column: 27, scope: !1290)
!1343 = !DILocation(line: 1293, column: 5, scope: !1290)
!1344 = !DILocation(line: 1295, column: 5, scope: !1290)
!1345 = !DILocation(line: 1296, column: 1, scope: !1290)
!1346 = distinct !DISubprogram(name: "slabs_rebalancer_pause", scope: !3, file: !3, line: 1309, type: !788, scopeLine: 1309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !742)
!1347 = !DILocation(line: 1310, column: 5, scope: !1346)
!1348 = !DILocation(line: 1311, column: 1, scope: !1346)
!1349 = distinct !DISubprogram(name: "slabs_rebalancer_resume", scope: !3, file: !3, line: 1313, type: !788, scopeLine: 1313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !742)
!1350 = !DILocation(line: 1314, column: 5, scope: !1349)
!1351 = !DILocation(line: 1315, column: 1, scope: !1349)
!1352 = distinct !DISubprogram(name: "start_slab_maintenance_thread", scope: !3, file: !3, line: 1319, type: !1353, scopeLine: 1319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1355)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!99}
!1355 = !{!1356}
!1356 = !DILocalVariable(name: "ret", scope: !1352, file: !3, line: 1320, type: !99)
!1357 = !DILocation(line: 1321, column: 27, scope: !1352)
!1358 = !DILocation(line: 1322, column: 27, scope: !1352)
!1359 = !{!1339, !283, i64 0}
!1360 = !DILocation(line: 1324, column: 16, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1324, column: 9)
!1362 = !DILocation(line: 0, scope: !1352)
!1363 = !DILocation(line: 1325, column: 61, scope: !1361)
!1364 = !DILocation(line: 1324, column: 9, scope: !1352)
!1365 = !DILocation(line: 1326, column: 17, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 1325, column: 67)
!1367 = !DILocation(line: 1326, column: 60, scope: !1366)
!1368 = !DILocation(line: 1326, column: 9, scope: !1366)
!1369 = !DILocation(line: 1327, column: 9, scope: !1366)
!1370 = !DILocation(line: 1329, column: 5, scope: !1352)
!1371 = !DILocation(line: 1330, column: 1, scope: !1352)
!1372 = !DISubprogram(name: "pthread_create", scope: !898, file: !898, line: 198, type: !1373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!99, !1375, !1377, !1388, !1391}
!1375 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1376)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1380)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !171, line: 62, baseType: !1381)
!1381 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !171, line: 56, size: 448, elements: !1382)
!1382 = !{!1383, !1387}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1381, file: !171, line: 58, baseType: !1384, size: 448)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 448, elements: !1385)
!1385 = !{!1386}
!1386 = !DISubrange(count: 56)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1381, file: !171, line: 59, baseType: !215, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!125, !125}
!1391 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!1392 = distinct !DISubprogram(name: "slab_rebalance_thread", scope: !3, file: !3, line: 1202, type: !1389, scopeLine: 1202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1393)
!1393 = !{!1394, !1395, !1396, !1397}
!1394 = !DILocalVariable(name: "arg", arg: 1, scope: !1392, file: !3, line: 1202, type: !125)
!1395 = !DILocalVariable(name: "was_busy", scope: !1392, file: !3, line: 1203, type: !99)
!1396 = !DILocalVariable(name: "backoff_timer", scope: !1392, file: !3, line: 1204, type: !99)
!1397 = !DILocalVariable(name: "backoff_max", scope: !1392, file: !3, line: 1205, type: !99)
!1398 = !DILocation(line: 0, scope: !1392)
!1399 = !DILocation(line: 1207, column: 5, scope: !1392)
!1400 = !DILocation(line: 1210, column: 5, scope: !1392)
!1401 = !DILocation(line: 1204, column: 9, scope: !1392)
!1402 = !DILocation(line: 1210, column: 12, scope: !1392)
!1403 = !DILocation(line: 1210, column: 34, scope: !1392)
!1404 = !DILocation(line: 1210, column: 37, scope: !1392)
!1405 = !DILocation(line: 1211, column: 13, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 1211, column: 13)
!1407 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 1210, column: 67)
!1408 = !DILocation(line: 1211, column: 35, scope: !1406)
!1409 = !DILocation(line: 1211, column: 13, scope: !1407)
!1410 = !DILocation(line: 1212, column: 17, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 1212, column: 17)
!1412 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 1211, column: 41)
!1413 = !DILocation(line: 1212, column: 40, scope: !1411)
!1414 = !DILocation(line: 1212, column: 17, scope: !1412)
!1415 = !DILocation(line: 1214, column: 39, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1212, column: 45)
!1417 = !DILocation(line: 1215, column: 13, scope: !1416)
!1418 = !DILocation(line: 1218, column: 20, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 1218, column: 20)
!1420 = !DILocation(line: 1218, column: 42, scope: !1419)
!1421 = !DILocation(line: 1218, column: 56, scope: !1419)
!1422 = !DILocation(line: 1218, column: 67, scope: !1419)
!1423 = !DILocation(line: 1218, column: 20, scope: !1406)
!1424 = !DILocation(line: 1219, column: 24, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 1218, column: 76)
!1426 = !DILocation(line: 1220, column: 9, scope: !1425)
!1427 = !DILocation(line: 1222, column: 24, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 1222, column: 13)
!1429 = !{!1339, !284, i64 60}
!1430 = !DILocation(line: 1222, column: 13, scope: !1428)
!1431 = !DILocation(line: 1222, column: 13, scope: !1407)
!1432 = !DILocation(line: 1217, column: 22, scope: !1412)
!1433 = !DILocation(line: 1223, column: 13, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 1222, column: 30)
!1435 = !DILocation(line: 1224, column: 9, scope: !1434)
!1436 = !DILocation(line: 1224, column: 20, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 1224, column: 20)
!1438 = !DILocation(line: 1224, column: 20, scope: !1428)
!1439 = !DILocation(line: 1227, column: 13, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 1224, column: 30)
!1441 = !DILocation(line: 1228, column: 43, scope: !1440)
!1442 = !DILocation(line: 1229, column: 31, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 1229, column: 17)
!1444 = !DILocation(line: 1229, column: 17, scope: !1440)
!1445 = !DILocation(line: 1230, column: 33, scope: !1443)
!1446 = !DILocation(line: 1230, column: 17, scope: !1443)
!1447 = !DILocation(line: 0, scope: !1440)
!1448 = !DILocation(line: 1231, column: 9, scope: !1440)
!1449 = !DILocation(line: 1233, column: 13, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 1233, column: 13)
!1451 = !DILocation(line: 1233, column: 35, scope: !1450)
!1452 = !DILocation(line: 1233, column: 13, scope: !1407)
!1453 = !DILocation(line: 1235, column: 13, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 1233, column: 41)
!1455 = !DILocation(line: 1236, column: 9, scope: !1454)
!1456 = distinct !{!1456, !1400, !1457, !325}
!1457 = !DILocation(line: 1237, column: 5, scope: !1392)
!1458 = !DILocation(line: 1240, column: 5, scope: !1392)
!1459 = !DILocation(line: 1241, column: 5, scope: !1392)
!1460 = !DISubprogram(name: "strerror", scope: !744, file: !744, line: 397, type: !1461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!124, !99}
!1463 = distinct !DISubprogram(name: "stop_slab_maintenance_thread", scope: !3, file: !3, line: 1334, type: !788, scopeLine: 1334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !742)
!1464 = !DILocation(line: 1335, column: 5, scope: !1463)
!1465 = !DILocation(line: 1336, column: 34, scope: !1463)
!1466 = !DILocation(line: 1337, column: 5, scope: !1463)
!1467 = !DILocation(line: 1338, column: 5, scope: !1463)
!1468 = !DILocation(line: 1341, column: 18, scope: !1463)
!1469 = !DILocation(line: 1341, column: 5, scope: !1463)
!1470 = !DILocation(line: 1342, column: 1, scope: !1463)
!1471 = !DISubprogram(name: "pthread_cond_signal", scope: !898, file: !898, line: 974, type: !1472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!99, !1474}
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!1475 = !DISubprogram(name: "pthread_join", scope: !898, file: !898, line: 215, type: !1476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!99, !170, !162}
!1478 = !DISubprogram(name: "fopen", scope: !737, file: !737, line: 246, type: !1479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!617, !741, !741}
!1481 = !DISubprogram(name: "fgets", scope: !737, file: !737, line: 564, type: !1482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!124, !1484, !99, !740}
!1484 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!1485 = !DISubprogram(name: "strncmp", scope: !744, file: !744, line: 140, type: !1486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!99, !126, !126, !128}
!1488 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !737, file: !737, line: 412, type: !1489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!99, !741, !741, null}
!1491 = !DISubprogram(name: "fclose", scope: !737, file: !737, line: 213, type: !1492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!99, !617}
!1494 = !DISubprogram(name: "posix_memalign", scope: !748, file: !748, line: 580, type: !1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!99, !162, !128, !128}
!1497 = !DISubprogram(name: "madvise", scope: !1498, file: !1498, line: 94, type: !1499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1498 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/mman.h", directory: "", checksumkind: CSK_MD5, checksum: "2f0ac90c7588adcea5a1a12d771e1e34")
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!99, !125, !128, !99}
!1501 = !DISubprogram(name: "free", scope: !748, file: !748, line: 565, type: !276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1502 = distinct !DISubprogram(name: "do_slabs_newslab", scope: !3, file: !3, line: 369, type: !410, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1503)
!1503 = !{!1504, !1505, !1506, !1507, !1508}
!1504 = !DILocalVariable(name: "id", arg: 1, scope: !1502, file: !3, line: 369, type: !412)
!1505 = !DILocalVariable(name: "p", scope: !1502, file: !3, line: 370, type: !346)
!1506 = !DILocalVariable(name: "g", scope: !1502, file: !3, line: 371, type: !346)
!1507 = !DILocalVariable(name: "len", scope: !1502, file: !3, line: 372, type: !99)
!1508 = !DILocalVariable(name: "ptr", scope: !1502, file: !3, line: 375, type: !124)
!1509 = !DILocation(line: 0, scope: !1502)
!1510 = !DILocation(line: 370, column: 23, scope: !1502)
!1511 = !DILocation(line: 372, column: 25, scope: !1502)
!1512 = !{!301, !305, i64 145}
!1513 = !{i8 0, i8 2}
!1514 = !DILocation(line: 372, column: 39, scope: !1502)
!1515 = !DILocation(line: 373, column: 20, scope: !1502)
!1516 = !DILocation(line: 372, column: 51, scope: !1502)
!1517 = !DILocation(line: 372, column: 83, scope: !1502)
!1518 = !DILocation(line: 372, column: 71, scope: !1502)
!1519 = !DILocation(line: 372, column: 15, scope: !1502)
!1520 = !DILocation(line: 374, column: 11, scope: !1502)
!1521 = !DILocation(line: 374, column: 14, scope: !1502)
!1522 = !DILocation(line: 374, column: 24, scope: !1502)
!1523 = !DILocation(line: 374, column: 19, scope: !1502)
!1524 = !DILocation(line: 377, column: 10, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 377, column: 9)
!1526 = !DILocation(line: 377, column: 20, scope: !1525)
!1527 = !DILocation(line: 377, column: 23, scope: !1525)
!1528 = !DILocation(line: 377, column: 38, scope: !1525)
!1529 = !DILocation(line: 377, column: 36, scope: !1525)
!1530 = !DILocation(line: 377, column: 42, scope: !1525)
!1531 = !DILocation(line: 377, column: 54, scope: !1525)
!1532 = !DILocation(line: 377, column: 57, scope: !1525)
!1533 = !DILocation(line: 377, column: 60, scope: !1525)
!1534 = !DILocation(line: 377, column: 66, scope: !1525)
!1535 = !DILocation(line: 378, column: 10, scope: !1525)
!1536 = !DILocation(line: 378, column: 13, scope: !1525)
!1537 = !DILocation(line: 378, column: 16, scope: !1525)
!1538 = !DILocation(line: 378, column: 22, scope: !1525)
!1539 = !DILocation(line: 377, column: 9, scope: !1502)
!1540 = !DILocation(line: 379, column: 27, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 378, column: 29)
!1542 = !DILocation(line: 381, column: 9, scope: !1541)
!1543 = !DILocation(line: 384, column: 10, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 384, column: 9)
!1545 = !DILocation(line: 384, column: 29, scope: !1544)
!1546 = !DILocation(line: 384, column: 35, scope: !1544)
!1547 = !DILocation(line: 385, column: 18, scope: !1544)
!1548 = !DILocation(line: 385, column: 47, scope: !1544)
!1549 = !DILocation(line: 385, column: 56, scope: !1544)
!1550 = !DILocation(line: 396, column: 20, scope: !1502)
!1551 = !DILocation(line: 386, column: 41, scope: !1544)
!1552 = !DILocation(line: 386, column: 33, scope: !1544)
!1553 = !DILocation(line: 386, column: 17, scope: !1544)
!1554 = !DILocation(line: 386, column: 47, scope: !1544)
!1555 = !DILocation(line: 384, column: 9, scope: !1502)
!1556 = !DILocation(line: 389, column: 9, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 386, column: 55)
!1558 = !DILocation(line: 0, scope: !1544)
!1559 = !DILocation(line: 396, column: 12, scope: !1502)
!1560 = !DILocation(line: 396, column: 5, scope: !1502)
!1561 = !DILocation(line: 397, column: 5, scope: !1502)
!1562 = !DILocation(line: 399, column: 8, scope: !1502)
!1563 = !DILocation(line: 399, column: 21, scope: !1502)
!1564 = !DILocation(line: 399, column: 26, scope: !1502)
!1565 = !DILocation(line: 399, column: 5, scope: !1502)
!1566 = !DILocation(line: 399, column: 30, scope: !1502)
!1567 = !DILocation(line: 402, column: 5, scope: !1502)
!1568 = !DILocation(line: 403, column: 1, scope: !1502)
!1569 = !DISubprogram(name: "exit", scope: !748, file: !748, line: 617, type: !1570, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{null, !99}
!1572 = distinct !DISubprogram(name: "get_page_from_global_pool", scope: !3, file: !3, line: 359, type: !1573, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1575)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!125}
!1575 = !{!1576, !1577}
!1576 = !DILocalVariable(name: "p", scope: !1572, file: !3, line: 360, type: !346)
!1577 = !DILocalVariable(name: "ret", scope: !1572, file: !3, line: 364, type: !124)
!1578 = !DILocation(line: 361, column: 12, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 361, column: 9)
!1580 = !DILocation(line: 361, column: 18, scope: !1579)
!1581 = !DILocation(line: 361, column: 9, scope: !1572)
!1582 = !DILocation(line: 362, column: 9, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 361, column: 23)
!1584 = !DILocation(line: 364, column: 5, scope: !1572)
!1585 = !DILocation(line: 364, column: 20, scope: !1572)
!1586 = !DILocation(line: 364, column: 39, scope: !1572)
!1587 = !DILocation(line: 364, column: 17, scope: !1572)
!1588 = !DILocation(line: 0, scope: !1572)
!1589 = !DILocation(line: 365, column: 13, scope: !1572)
!1590 = !DILocation(line: 367, column: 1, scope: !1572)
!1591 = distinct !DISubprogram(name: "split_slab_page_into_freelist", scope: !3, file: !3, line: 349, type: !1592, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1594)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{null, !124, !412}
!1594 = !{!1595, !1596, !1597, !1598}
!1595 = !DILocalVariable(name: "ptr", arg: 1, scope: !1591, file: !3, line: 349, type: !124)
!1596 = !DILocalVariable(name: "id", arg: 2, scope: !1591, file: !3, line: 349, type: !412)
!1597 = !DILocalVariable(name: "p", scope: !1591, file: !3, line: 350, type: !346)
!1598 = !DILocalVariable(name: "x", scope: !1591, file: !3, line: 351, type: !99)
!1599 = !DILocation(line: 0, scope: !1591)
!1600 = !DILocation(line: 350, column: 23, scope: !1591)
!1601 = !DILocation(line: 352, column: 24, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 352, column: 5)
!1603 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 352, column: 5)
!1604 = !DILocation(line: 352, column: 19, scope: !1602)
!1605 = !DILocation(line: 352, column: 5, scope: !1603)
!1606 = !DILocation(line: 353, column: 9, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 352, column: 38)
!1608 = !DILocation(line: 354, column: 19, scope: !1607)
!1609 = !DILocation(line: 354, column: 13, scope: !1607)
!1610 = !DILocation(line: 352, column: 34, scope: !1602)
!1611 = distinct !{!1611, !1605, !1612, !325}
!1612 = !DILocation(line: 355, column: 5, scope: !1603)
!1613 = !DILocation(line: 356, column: 1, scope: !1591)
!1614 = !DISubprogram(name: "realloc", scope: !748, file: !748, line: 550, type: !1615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!125, !125, !128}
!1617 = !DISubprogram(name: "malloc", scope: !748, file: !748, line: 539, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1618 = distinct !DISubprogram(name: "do_slabs_free_chunked", scope: !3, file: !3, line: 450, type: !1619, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1621)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{null, !87, !290}
!1621 = !{!1622, !1623, !1624, !1625, !1626}
!1622 = !DILocalVariable(name: "it", arg: 1, scope: !1618, file: !3, line: 450, type: !87)
!1623 = !DILocalVariable(name: "size", arg: 2, scope: !1618, file: !3, line: 450, type: !290)
!1624 = !DILocalVariable(name: "chunk", scope: !1618, file: !3, line: 451, type: !130)
!1625 = !DILocalVariable(name: "p", scope: !1618, file: !3, line: 452, type: !346)
!1626 = !DILocalVariable(name: "next_chunk", scope: !1618, file: !3, line: 478, type: !130)
!1627 = !DILocation(line: 0, scope: !1618)
!1628 = !DILocation(line: 451, column: 40, scope: !1618)
!1629 = !DILocation(line: 454, column: 18, scope: !1618)
!1630 = !DILocation(line: 457, column: 9, scope: !1618)
!1631 = !DILocation(line: 457, column: 14, scope: !1618)
!1632 = !DILocation(line: 459, column: 27, scope: !1618)
!1633 = !DILocation(line: 459, column: 10, scope: !1618)
!1634 = !DILocation(line: 461, column: 9, scope: !1618)
!1635 = !DILocation(line: 461, column: 21, scope: !1618)
!1636 = !DILocation(line: 462, column: 16, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 462, column: 9)
!1638 = !DILocation(line: 462, column: 9, scope: !1637)
!1639 = !DILocation(line: 462, column: 9, scope: !1618)
!1640 = !DILocation(line: 463, column: 17, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 462, column: 22)
!1642 = !DILocation(line: 463, column: 24, scope: !1641)
!1643 = !DILocation(line: 464, column: 16, scope: !1641)
!1644 = !DILocation(line: 464, column: 21, scope: !1641)
!1645 = !DILocation(line: 465, column: 5, scope: !1641)
!1646 = !DILocation(line: 467, column: 15, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 465, column: 12)
!1648 = !DILocation(line: 0, scope: !1637)
!1649 = !DILocation(line: 472, column: 14, scope: !1618)
!1650 = !DILocation(line: 473, column: 19, scope: !1618)
!1651 = !DILocation(line: 473, column: 9, scope: !1618)
!1652 = !DILocation(line: 473, column: 14, scope: !1618)
!1653 = !DILocation(line: 474, column: 9, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 474, column: 9)
!1655 = !DILocation(line: 474, column: 9, scope: !1618)
!1656 = !DILocation(line: 474, column: 36, scope: !1654)
!1657 = !DILocation(line: 474, column: 23, scope: !1654)
!1658 = !DILocation(line: 474, column: 29, scope: !1654)
!1659 = !DILocation(line: 474, column: 34, scope: !1654)
!1660 = !DILocation(line: 474, column: 19, scope: !1654)
!1661 = !DILocation(line: 475, column: 14, scope: !1618)
!1662 = !DILocation(line: 476, column: 8, scope: !1618)
!1663 = !DILocation(line: 476, column: 15, scope: !1618)
!1664 = !DILocation(line: 479, column: 5, scope: !1618)
!1665 = !DILocation(line: 480, column: 9, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 480, column: 9)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 480, column: 9)
!1668 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 479, column: 19)
!1669 = !DILocation(line: 480, column: 9, scope: !1667)
!1670 = !DILocation(line: 481, column: 25, scope: !1668)
!1671 = !DILocation(line: 482, column: 31, scope: !1668)
!1672 = !DILocation(line: 482, column: 14, scope: !1668)
!1673 = !DILocation(line: 483, column: 29, scope: !1668)
!1674 = !DILocation(line: 485, column: 16, scope: !1668)
!1675 = !DILocation(line: 485, column: 21, scope: !1668)
!1676 = !DILocation(line: 486, column: 26, scope: !1668)
!1677 = !DILocation(line: 486, column: 21, scope: !1668)
!1678 = !DILocation(line: 487, column: 13, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 487, column: 13)
!1680 = !DILocation(line: 487, column: 13, scope: !1668)
!1681 = !DILocation(line: 487, column: 46, scope: !1679)
!1682 = !DILocation(line: 487, column: 33, scope: !1679)
!1683 = !DILocation(line: 487, column: 39, scope: !1679)
!1684 = !DILocation(line: 487, column: 44, scope: !1679)
!1685 = !DILocation(line: 487, column: 26, scope: !1679)
!1686 = !DILocation(line: 488, column: 18, scope: !1668)
!1687 = !DILocation(line: 489, column: 12, scope: !1668)
!1688 = !DILocation(line: 489, column: 19, scope: !1668)
!1689 = distinct !{!1689, !1664, !1690, !325}
!1690 = !DILocation(line: 492, column: 5, scope: !1618)
!1691 = !DILocation(line: 495, column: 1, scope: !1618)
!1692 = !DISubprogram(name: "threadlocal_stats_aggregate", scope: !15, file: !15, line: 996, type: !1693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{null, !1695}
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1696 = !DISubprogram(name: "snprintf", scope: !737, file: !737, line: 354, type: !1697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!99, !1484, !128, !741, null}
!1699 = !DISubprogram(name: "append_stat", scope: !15, file: !15, line: 1001, type: !1700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !126, !1065, !1702, !126, null}
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn", file: !15, line: 781, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn", file: !15, line: 794, size: 3968, elements: !1705)
!1705 = !{!1706, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2061, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2093, !2100, !2115}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_conn", scope: !1704, file: !15, line: 795, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "sasl_conn_t", file: !1709, line: 16, baseType: !125)
!1709 = !DIFile(filename: "./sasl_defs.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "3a8678a43d09d8e311388b26eedc7a3e")
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "sfd", scope: !1704, file: !15, line: 796, baseType: !99, size: 32, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_started", scope: !1704, file: !15, line: 797, baseType: !184, size: 8, offset: 96)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !1704, file: !15, line: 798, baseType: !184, size: 8, offset: 104)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "set_stale", scope: !1704, file: !15, line: 799, baseType: !184, size: 8, offset: 112)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "mset_res", scope: !1704, file: !15, line: 800, baseType: !184, size: 8, offset: 120)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "close_after_write", scope: !1704, file: !15, line: 801, baseType: !184, size: 8, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_malloced", scope: !1704, file: !15, line: 802, baseType: !184, size: 8, offset: 136)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "item_malloced", scope: !1704, file: !15, line: 803, baseType: !184, size: 8, offset: 144)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1704, file: !15, line: 809, baseType: !14, size: 32, offset: 160)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "substate", scope: !1704, file: !15, line: 810, baseType: !31, size: 32, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd_time", scope: !1704, file: !15, line: 811, baseType: !96, size: 32, offset: 224)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1704, file: !15, line: 812, baseType: !1722, size: 1024, offset: 256)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !1723, line: 123, size: 1024, elements: !1724)
!1723 = !DIFile(filename: "/usr/include/event2/event_struct.h", directory: "", checksumkind: CSK_MD5, checksum: "005d89b34bed2ed9e30b0cc3160619c1")
!1724 = !{!1725, !1756, !1766, !1767, !1770, !1800, !1801, !1802}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "ev_evcallback", scope: !1722, file: !1723, line: 124, baseType: !1726, size: 320)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_callback", file: !1723, line: 107, size: 320, elements: !1727)
!1727 = !{!1728, !1735, !1736, !1737, !1738, !1755}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_active_next", scope: !1726, file: !1723, line: 108, baseType: !1729, size: 128)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1726, file: !1723, line: 108, size: 128, elements: !1730)
!1730 = !{!1731, !1733}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1729, file: !1723, line: 108, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1729, file: !1723, line: 108, baseType: !1734, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_flags", scope: !1726, file: !1723, line: 109, baseType: !200, size: 16, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_pri", scope: !1726, file: !1723, line: 110, baseType: !108, size: 8, offset: 144)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_closure", scope: !1726, file: !1723, line: 111, baseType: !108, size: 8, offset: 152)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cb_union", scope: !1726, file: !1723, line: 118, baseType: !1739, size: 64, offset: 192)
!1739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1726, file: !1723, line: 113, size: 64, elements: !1740)
!1740 = !{!1741, !1745, !1749, !1754}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_callback", scope: !1739, file: !1723, line: 114, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !99, !200, !125}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_selfcb", scope: !1739, file: !1723, line: 115, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{null, !1732, !125}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_evfinalize", scope: !1739, file: !1723, line: 116, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !1753, !125}
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cbfinalize", scope: !1739, file: !1723, line: 117, baseType: !1746, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_arg", scope: !1726, file: !1723, line: 119, baseType: !125, size: 64, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout_pos", scope: !1722, file: !1723, line: 130, baseType: !1757, size: 128, offset: 320)
!1757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1722, file: !1723, line: 127, size: 128, elements: !1758)
!1758 = !{!1759, !1765}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ev_next_with_common_timeout", scope: !1757, file: !1723, line: 128, baseType: !1760, size: 128)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1757, file: !1723, line: 128, size: 128, elements: !1761)
!1761 = !{!1762, !1763}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1760, file: !1723, line: 128, baseType: !1753, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1760, file: !1723, line: 128, baseType: !1764, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "min_heap_idx", scope: !1757, file: !1723, line: 129, baseType: !99, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "ev_fd", scope: !1722, file: !1723, line: 131, baseType: !99, size: 32, offset: 448)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "ev_base", scope: !1722, file: !1723, line: 133, baseType: !1768, size: 64, offset: 512)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !1723, line: 122, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ev_", scope: !1722, file: !1723, line: 149, baseType: !1771, size: 256, offset: 576)
!1771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1722, file: !1723, line: 135, size: 256, elements: !1772)
!1772 = !{!1773, !1789}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io", scope: !1771, file: !1723, line: 140, baseType: !1774, size: 256)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !1723, line: 137, size: 256, elements: !1775)
!1775 = !{!1776, !1781}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io_next", scope: !1774, file: !1723, line: 138, baseType: !1777, size: 128)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1774, file: !1723, line: 138, size: 128, elements: !1778)
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !1777, file: !1723, line: 138, baseType: !1753, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !1777, file: !1723, line: 138, baseType: !1764, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !1774, file: !1723, line: 139, baseType: !1782, size: 128, offset: 128)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1783, line: 8, size: 128, elements: !1784)
!1783 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!1784 = !{!1785, !1787}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1782, file: !1783, line: 10, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !106, line: 160, baseType: !215)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1782, file: !1783, line: 11, baseType: !1788, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !106, line: 162, baseType: !215)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal", scope: !1771, file: !1723, line: 148, baseType: !1790, size: 256)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !1723, line: 143, size: 256, elements: !1791)
!1791 = !{!1792, !1797, !1798}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal_next", scope: !1790, file: !1723, line: 144, baseType: !1793, size: 128)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1790, file: !1723, line: 144, size: 128, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !1793, file: !1723, line: 144, baseType: !1753, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !1793, file: !1723, line: 144, baseType: !1764, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ev_ncalls", scope: !1790, file: !1723, line: 145, baseType: !200, size: 16, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ev_pncalls", scope: !1790, file: !1723, line: 147, baseType: !1799, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ev_events", scope: !1722, file: !1723, line: 151, baseType: !200, size: 16, offset: 832)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ev_res", scope: !1722, file: !1723, line: 152, baseType: !200, size: 16, offset: 848)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !1722, file: !1723, line: 153, baseType: !1782, size: 128, offset: 896)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ev_flags", scope: !1704, file: !15, line: 813, baseType: !200, size: 16, offset: 1280)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !1704, file: !15, line: 814, baseType: !200, size: 16, offset: 1296)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !1704, file: !15, line: 816, baseType: !124, size: 64, offset: 1344)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "rcurr", scope: !1704, file: !15, line: 817, baseType: !124, size: 64, offset: 1408)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "rsize", scope: !1704, file: !15, line: 818, baseType: !99, size: 32, offset: 1472)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "rbytes", scope: !1704, file: !15, line: 819, baseType: !99, size: 32, offset: 1504)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !1704, file: !15, line: 821, baseType: !1810, size: 64, offset: 1536)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "mc_resp", file: !15, line: 770, baseType: !1812)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mc_resp", file: !15, line: 743, size: 9472, elements: !1813)
!1813 = !{!1814, !1826, !1828, !1829, !1830, !1831, !1986, !1987, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2031, !2035}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !1812, file: !15, line: 744, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "mc_resp_bundle", file: !15, line: 703, baseType: !1817)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mc_resp_bundle", file: !15, line: 773, size: 192, elements: !1818)
!1818 = !{!1819, !1820, !1821, !1823, !1824}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1817, file: !15, line: 774, baseType: !108, size: 8)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "next_check", scope: !1817, file: !15, line: 775, baseType: !108, size: 8, offset: 8)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1817, file: !15, line: 776, baseType: !1822, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1817, file: !15, line: 777, baseType: !1822, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1817, file: !15, line: 778, baseType: !1825, offset: 192)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1811, elements: !122)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1812, file: !15, line: 745, baseType: !1827, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "wbytes", scope: !1812, file: !15, line: 746, baseType: !99, size: 32, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "tosend", scope: !1812, file: !15, line: 747, baseType: !99, size: 32, offset: 160)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "write_and_free", scope: !1812, file: !15, line: 748, baseType: !125, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "io_pending", scope: !1812, file: !15, line: 749, baseType: !1832, size: 64, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_pending_t", file: !15, line: 668, baseType: !1834)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_io_pending_t", file: !15, line: 783, size: 1216, elements: !1835)
!1835 = !{!1836, !1837, !1980, !1981, !1982}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "io_queue_type", scope: !1834, file: !15, line: 784, baseType: !99, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1834, file: !15, line: 785, baseType: !1838, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "LIBEVENT_THREAD", file: !15, line: 737, baseType: !1840)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 704, size: 54464, elements: !1841)
!1841 = !{!1842, !1843, !1844, !1845, !1846, !1847, !1876, !1879, !1905, !1906, !1907, !1908, !1978, !1979}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !1840, file: !15, line: 705, baseType: !170, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1840, file: !15, line: 706, baseType: !1768, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !1840, file: !15, line: 707, baseType: !1722, size: 1024, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event_fd", scope: !1840, file: !15, line: 709, baseType: !99, size: 32, offset: 1152)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1840, file: !15, line: 714, baseType: !1087, size: 51584, offset: 1216)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues", scope: !1840, file: !15, line: 715, baseType: !1848, size: 1152, offset: 52800)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1849, size: 1152, elements: !1874)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_cb_t", file: !15, line: 701, baseType: !1850)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_queue_cb_s", file: !15, line: 694, size: 384, elements: !1851)
!1851 = !{!1852, !1853, !1866, !1867, !1872, !1873}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1850, file: !15, line: 695, baseType: !125, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "submit_cb", scope: !1850, file: !15, line: 696, baseType: !1854, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_stack_cb", file: !15, line: 670, baseType: !1855)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1858}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_t", file: !15, line: 669, baseType: !1860)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_queue_s", file: !15, line: 687, size: 192, elements: !1861)
!1861 = !{!1862, !1863, !1864, !1865}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1860, file: !15, line: 688, baseType: !125, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "stack_ctx", scope: !1860, file: !15, line: 689, baseType: !125, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1860, file: !15, line: 690, baseType: !99, size: 32, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1860, file: !15, line: 691, baseType: !99, size: 32, offset: 160)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "complete_cb", scope: !1850, file: !15, line: 697, baseType: !1854, size: 64, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "return_cb", scope: !1850, file: !15, line: 698, baseType: !1868, size: 64, offset: 192)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_cb", file: !15, line: 671, baseType: !1869)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{null, !1832}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_cb", scope: !1850, file: !15, line: 699, baseType: !1868, size: 64, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1850, file: !15, line: 700, baseType: !99, size: 32, offset: 320)
!1874 = !{!1875}
!1875 = !DISubrange(count: 3)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ev_queue", scope: !1840, file: !15, line: 716, baseType: !1877, size: 64, offset: 53952)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "conn_queue", file: !15, line: 716, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_cache", scope: !1840, file: !15, line: 717, baseType: !1880, size: 64, offset: 54016)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_t", file: !1882, line: 39, baseType: !1883)
!1882 = !DIFile(filename: "./cache.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d97639c8540587a19d8550d7d7156448")
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1882, line: 22, size: 704, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1900, !1901, !1902, !1903, !1904}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1883, file: !1882, line: 24, baseType: !187, size: 320)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1883, file: !1882, line: 26, baseType: !124, size: 64, offset: 320)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1883, file: !1882, line: 28, baseType: !1888, size: 128, offset: 384)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_head", file: !1882, line: 28, size: 128, elements: !1889)
!1889 = !{!1890, !1898}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !1888, file: !1882, line: 28, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_free_s", file: !1882, line: 12, size: 64, elements: !1893)
!1893 = !{!1894}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "c_next", scope: !1892, file: !1882, line: 13, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1882, line: 13, size: 64, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !1895, file: !1882, line: 13, baseType: !1891, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !1888, file: !1882, line: 28, baseType: !1899, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !1883, file: !1882, line: 30, baseType: !128, size: 64, offset: 512)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "freetotal", scope: !1883, file: !1882, line: 32, baseType: !99, size: 32, offset: 576)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !1883, file: !1882, line: 34, baseType: !99, size: 32, offset: 608)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "freecurr", scope: !1883, file: !1882, line: 36, baseType: !99, size: 32, offset: 640)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1883, file: !1882, line: 38, baseType: !99, size: 32, offset: 672)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "open_bundle", scope: !1840, file: !15, line: 718, baseType: !1815, size: 64, offset: 54080)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "io_cache", scope: !1840, file: !15, line: 719, baseType: !1880, size: 64, offset: 54144)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !1840, file: !15, line: 721, baseType: !125, size: 64, offset: 54208)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1840, file: !15, line: 723, baseType: !1909, size: 64, offset: 54272)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger", file: !46, line: 171, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_logger", file: !46, line: 159, size: 832, elements: !1912)
!1912 = !{!1913, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1936}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1911, file: !46, line: 160, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1911, file: !46, line: 161, baseType: !1914, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1911, file: !46, line: 162, baseType: !187, size: 320, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !1911, file: !46, line: 163, baseType: !117, size: 64, offset: 448)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dropped", scope: !1911, file: !46, line: 164, baseType: !117, size: 64, offset: 512)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1911, file: !46, line: 165, baseType: !117, size: 64, offset: 576)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "fetcher_ratio", scope: !1911, file: !46, line: 166, baseType: !103, size: 16, offset: 640)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "mutation_ratio", scope: !1911, file: !46, line: 167, baseType: !103, size: 16, offset: 656)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !1911, file: !46, line: 168, baseType: !103, size: 16, offset: 672)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1911, file: !46, line: 169, baseType: !1924, size: 64, offset: 704)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "bipbuf_t", file: !1926, line: 18, baseType: !1927)
!1926 = !DIFile(filename: "./bipbuffer.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "99606bcb8393045e6bc9eef40115066f")
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1926, line: 4, size: 192, elements: !1928)
!1928 = !{!1929, !1930, !1931, !1932, !1933, !1934}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1927, file: !1926, line: 6, baseType: !119, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "a_start", scope: !1927, file: !1926, line: 9, baseType: !7, size: 32, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "a_end", scope: !1927, file: !1926, line: 9, baseType: !7, size: 32, offset: 96)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "b_end", scope: !1927, file: !1926, line: 12, baseType: !7, size: 32, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "b_inuse", scope: !1927, file: !1926, line: 15, baseType: !99, size: 32, offset: 160)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1927, file: !1926, line: 17, baseType: !1935, offset: 192)
!1935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, elements: !122)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "entry_map", scope: !1911, file: !46, line: 170, baseType: !1937, size: 64, offset: 768)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1939)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_details", file: !46, line: 57, baseType: !1940)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_entry_details", file: !46, line: 62, size: 256, elements: !1941)
!1941 = !{!1942, !1943, !1944, !1972, !1977}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "reqlen", scope: !1940, file: !46, line: 63, baseType: !99, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !1940, file: !46, line: 64, baseType: !103, size: 16, offset: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "log_cb", scope: !1940, file: !46, line: 65, baseType: !1945, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_log_cb", file: !46, line: 59, baseType: !1946)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !1949, !1937, !1070, !1964}
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "logentry", file: !46, line: 56, baseType: !1951)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_logentry", file: !46, line: 135, size: 320, elements: !1952)
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958, !1959}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1951, file: !46, line: 136, baseType: !45, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1951, file: !46, line: 137, baseType: !108, size: 8, offset: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !1951, file: !46, line: 138, baseType: !103, size: 16, offset: 48)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1951, file: !46, line: 139, baseType: !117, size: 64, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !1951, file: !46, line: 140, baseType: !1782, size: 128, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1951, file: !46, line: 141, baseType: !99, size: 32, offset: 256)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1951, file: !46, line: 144, baseType: !1960, offset: 288)
!1960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1961, elements: !122)
!1961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1951, file: !46, line: 142, size: 8, elements: !1962)
!1962 = !{!1963}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1961, file: !46, line: 143, baseType: !121, size: 8)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1966)
!1966 = !{!1967, !1969, !1970, !1971}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1965, file: !1968, line: 605, baseType: !7, size: 32)
!1968 = !DIFile(filename: "slabs.c", directory: "/home/xuheng/blackbox/llvm-test/memcached")
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1965, file: !1968, line: 605, baseType: !7, size: 32, offset: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1965, file: !1968, line: 605, baseType: !125, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1965, file: !1968, line: 605, baseType: !125, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "parse_cb", scope: !1940, file: !46, line: 66, baseType: !1973, size: 64, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_parse_cb", file: !46, line: 60, baseType: !1974)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!99, !1949, !124}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1940, file: !46, line: 67, baseType: !124, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "lru_bump_buf", scope: !1840, file: !15, line: 724, baseType: !125, size: 64, offset: 54336)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !1840, file: !15, line: 728, baseType: !99, size: 32, offset: 54400)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !1834, file: !15, line: 786, baseType: !1702, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !1834, file: !15, line: 787, baseType: !1810, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1834, file: !15, line: 788, baseType: !1983, size: 960, offset: 256)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 960, elements: !1984)
!1984 = !{!1985}
!1985 = !DISubrange(count: 120)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !1812, file: !15, line: 751, baseType: !87, size: 64, offset: 320)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !1812, file: !15, line: 752, baseType: !1988, size: 512, offset: 384)
!1988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1989, size: 512, elements: !1994)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1990, line: 26, size: 128, elements: !1991)
!1990 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "6a734cae8feaa37c12e11190a6573675")
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1989, file: !1990, line: 28, baseType: !125, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1989, file: !1990, line: 29, baseType: !128, size: 64, offset: 64)
!1994 = !{!1995}
!1995 = !DISubrange(count: 4)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_total", scope: !1812, file: !15, line: 753, baseType: !99, size: 32, offset: 896)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "iovcnt", scope: !1812, file: !15, line: 754, baseType: !108, size: 8, offset: 928)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_data_iov", scope: !1812, file: !15, line: 755, baseType: !108, size: 8, offset: 936)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !1812, file: !15, line: 760, baseType: !184, size: 8, offset: 944)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1812, file: !15, line: 761, baseType: !184, size: 8, offset: 952)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !1812, file: !15, line: 763, baseType: !103, size: 16, offset: 960)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "udp_sequence", scope: !1812, file: !15, line: 764, baseType: !103, size: 16, offset: 976)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "udp_total", scope: !1812, file: !15, line: 765, baseType: !103, size: 16, offset: 992)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr", scope: !1812, file: !15, line: 766, baseType: !2005, size: 224, offset: 1024)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !2006, line: 253, size: 224, elements: !2007)
!2006 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "6a5254a491bcdb8c3253de75bf3571c1")
!2007 = !{!2008, !2011, !2013, !2014, !2030}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !2005, file: !2006, line: 255, baseType: !2009, size: 16)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !2010, line: 28, baseType: !101)
!2010 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "b70cbaf07ffb7e8bf11ee98d9a21e2fc")
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !2005, file: !2006, line: 256, baseType: !2012, size: 16, offset: 16)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !2006, line: 119, baseType: !103)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !2005, file: !2006, line: 257, baseType: !452, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !2005, file: !2006, line: 258, baseType: !2015, size: 128, offset: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !2006, line: 212, size: 128, elements: !2016)
!2016 = !{!2017}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !2015, file: !2006, line: 219, baseType: !2018, size: 128)
!2018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2015, file: !2006, line: 214, size: 128, elements: !2019)
!2019 = !{!2020, !2024, !2028}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !2018, file: !2006, line: 216, baseType: !2021, size: 128)
!2021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !2022)
!2022 = !{!2023}
!2023 = !DISubrange(count: 16)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !2018, file: !2006, line: 217, baseType: !2025, size: 128)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !2026)
!2026 = !{!2027}
!2027 = !DISubrange(count: 8)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !2018, file: !2006, line: 218, baseType: !2029, size: 128)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 128, elements: !1994)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !2005, file: !2006, line: 259, baseType: !452, size: 32, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr_size", scope: !1812, file: !15, line: 767, baseType: !2032, size: 32, offset: 1248)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !2033, line: 33, baseType: !2034)
!2033 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "b1d3343a573cbf39b225111209e02966")
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !106, line: 209, baseType: !7)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !1812, file: !15, line: 769, baseType: !2036, size: 8192, offset: 1280)
!2036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 8192, elements: !2037)
!2037 = !{!2038}
!2038 = !DISubrange(count: 1024)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "resp_head", scope: !1704, file: !15, line: 822, baseType: !1810, size: 64, offset: 1600)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "ritem", scope: !1704, file: !15, line: 823, baseType: !124, size: 64, offset: 1664)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "rlbytes", scope: !1704, file: !15, line: 824, baseType: !99, size: 32, offset: 1728)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !1704, file: !15, line: 832, baseType: !125, size: 64, offset: 1792)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1704, file: !15, line: 835, baseType: !99, size: 32, offset: 1856)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues_submitted", scope: !1704, file: !15, line: 837, baseType: !99, size: 32, offset: 1888)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues", scope: !1704, file: !15, line: 838, baseType: !2046, size: 576, offset: 1920)
!2046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1859, size: 576, elements: !1874)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "recache_counter", scope: !1704, file: !15, line: 843, baseType: !7, size: 32, offset: 2496)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1704, file: !15, line: 845, baseType: !63, size: 32, offset: 2528)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "transport", scope: !1704, file: !15, line: 846, baseType: !68, size: 32, offset: 2560)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "close_reason", scope: !1704, file: !15, line: 847, baseType: !73, size: 32, offset: 2592)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !1704, file: !15, line: 850, baseType: !99, size: 32, offset: 2624)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr", scope: !1704, file: !15, line: 851, baseType: !2005, size: 224, offset: 2656)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr_size", scope: !1704, file: !15, line: 852, baseType: !2032, size: 32, offset: 2880)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "noreply", scope: !1704, file: !15, line: 854, baseType: !184, size: 8, offset: 2912)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1704, file: !15, line: 860, baseType: !2056, size: 192, offset: 2944)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !15, line: 856, size: 192, elements: !2057)
!2057 = !{!2058, !2059, !2060}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2056, file: !15, line: 857, baseType: !124, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2056, file: !15, line: 858, baseType: !128, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2056, file: !15, line: 859, baseType: !128, size: 64, offset: 128)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "binary_header", scope: !1704, file: !15, line: 864, baseType: !2062, size: 192, offset: 3136)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_header", file: !2063, line: 164, baseType: !2064)
!2063 = !DIFile(filename: "./protocol_binary.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "7a322a65fa8661e9a597acbeeeb23107")
!2064 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !2063, line: 151, size: 192, elements: !2065)
!2065 = !{!2066, !2078}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2064, file: !2063, line: 162, baseType: !2067, size: 192)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2064, file: !2063, line: 152, size: 192, elements: !2068)
!2068 = !{!2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2067, file: !2063, line: 153, baseType: !108, size: 8)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2067, file: !2063, line: 154, baseType: !108, size: 8, offset: 8)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !2067, file: !2063, line: 155, baseType: !103, size: 16, offset: 16)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "extlen", scope: !2067, file: !2063, line: 156, baseType: !108, size: 8, offset: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !2067, file: !2063, line: 157, baseType: !108, size: 8, offset: 40)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2067, file: !2063, line: 158, baseType: !103, size: 16, offset: 48)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "bodylen", scope: !2067, file: !2063, line: 159, baseType: !452, size: 32, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !2067, file: !2063, line: 160, baseType: !452, size: 32, offset: 96)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !2067, file: !2063, line: 161, baseType: !117, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2064, file: !2063, line: 163, baseType: !2079, size: 192)
!2079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 192, elements: !2080)
!2080 = !{!2081}
!2081 = !DISubrange(count: 24)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !1704, file: !15, line: 865, baseType: !117, size: 64, offset: 3328)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1704, file: !15, line: 866, baseType: !117, size: 64, offset: 3392)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1704, file: !15, line: 867, baseType: !200, size: 16, offset: 3456)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !1704, file: !15, line: 868, baseType: !99, size: 32, offset: 3488)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !1704, file: !15, line: 869, baseType: !99, size: 32, offset: 3520)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1704, file: !15, line: 870, baseType: !1702, size: 64, offset: 3584)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1704, file: !15, line: 871, baseType: !1838, size: 64, offset: 3648)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "try_read_command", scope: !1704, file: !15, line: 872, baseType: !2090, size: 64, offset: 3712)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!99, !1702}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1704, file: !15, line: 873, baseType: !2094, size: 64, offset: 3776)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!2097, !1702, !125, !128}
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !2098, line: 108, baseType: !2099)
!2098 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !106, line: 193, baseType: !215)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "sendmsg", scope: !1704, file: !15, line: 874, baseType: !2101, size: 64, offset: 3840)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!2097, !1702, !2104, !99}
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !2033, line: 257, size: 448, elements: !2106)
!2106 = !{!2107, !2108, !2109, !2111, !2112, !2113, !2114}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !2105, file: !2033, line: 259, baseType: !125, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !2105, file: !2033, line: 260, baseType: !2032, size: 32, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !2105, file: !2033, line: 262, baseType: !2110, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !2105, file: !2033, line: 263, baseType: !128, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !2105, file: !2033, line: 265, baseType: !125, size: 64, offset: 256)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !2105, file: !2033, line: 266, baseType: !128, size: 64, offset: 320)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !2105, file: !2033, line: 271, baseType: !99, size: 32, offset: 384)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1704, file: !15, line: 875, baseType: !2094, size: 64, offset: 3904)
!2116 = distinct !DISubprogram(name: "memory_release", scope: !3, file: !3, line: 641, type: !788, scopeLine: 641, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2117)
!2117 = !{!2118}
!2118 = !DILocalVariable(name: "p", scope: !2116, file: !3, line: 642, type: !125)
!2119 = !DILocation(line: 0, scope: !2116)
!2120 = !DILocation(line: 643, column: 9, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 643, column: 9)
!2122 = !DILocation(line: 643, column: 18, scope: !2121)
!2123 = !DILocation(line: 643, column: 9, scope: !2116)
!2124 = !DILocation(line: 644, column: 9, scope: !2121)
!2125 = !DILocation(line: 646, column: 19, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 646, column: 9)
!2127 = !DILocation(line: 646, column: 9, scope: !2116)
!2128 = !DILocation(line: 649, column: 12, scope: !2116)
!2129 = !DILocation(line: 649, column: 27, scope: !2116)
!2130 = !DILocation(line: 649, column: 25, scope: !2116)
!2131 = !DILocation(line: 649, column: 37, scope: !2116)
!2132 = !DILocation(line: 647, column: 9, scope: !2126)
!2133 = !DILocation(line: 650, column: 18, scope: !2116)
!2134 = !DILocation(line: 650, column: 47, scope: !2116)
!2135 = !DILocation(line: 649, column: 5, scope: !2116)
!2136 = !DILocation(line: 651, column: 14, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 650, column: 56)
!2138 = !DILocation(line: 651, column: 9, scope: !2137)
!2139 = !DILocation(line: 652, column: 34, scope: !2137)
!2140 = !DILocation(line: 652, column: 25, scope: !2137)
!2141 = !DILocation(line: 652, column: 22, scope: !2137)
!2142 = distinct !{!2142, !2135, !2143, !325}
!2143 = !DILocation(line: 653, column: 5, scope: !2116)
!2144 = !DILocation(line: 654, column: 1, scope: !2116)
!2145 = !DILocation(line: 0, scope: !220)
!2146 = !DILocation(line: 1250, column: 17, scope: !220)
!2147 = !DILocation(line: 1251, column: 18, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 1251, column: 5)
!2149 = distinct !DILexicalBlock(scope: !220, file: !3, line: 1251, column: 5)
!2150 = !DILocation(line: 1251, column: 5, scope: !2149)
!2151 = !DILocation(line: 1252, column: 12, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 1251, column: 32)
!2153 = !DILocation(line: 1253, column: 17, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 1253, column: 13)
!2155 = !DILocation(line: 1253, column: 13, scope: !2152)
!2156 = !DILocation(line: 1254, column: 17, scope: !2154)
!2157 = !DILocation(line: 1254, column: 13, scope: !2154)
!2158 = !DILocation(line: 1255, column: 17, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 1255, column: 13)
!2160 = !DILocation(line: 1255, column: 13, scope: !2152)
!2161 = !DILocation(line: 1256, column: 13, scope: !2159)
!2162 = !DILocation(line: 1257, column: 13, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 1257, column: 13)
!2164 = !DILocation(line: 1257, column: 28, scope: !2163)
!2165 = !DILocation(line: 1257, column: 34, scope: !2163)
!2166 = !DILocation(line: 1257, column: 13, scope: !2152)
!2167 = !DILocation(line: 1260, column: 5, scope: !2152)
!2168 = !DILocation(line: 1251, column: 28, scope: !2148)
!2169 = distinct !{!2169, !2150, !2170, !325}
!2170 = !DILocation(line: 1260, column: 5, scope: !2149)
!2171 = !DILocation(line: 0, scope: !2152)
!2172 = !DILocation(line: 1262, column: 1, scope: !220)
!2173 = distinct !DISubprogram(name: "slab_rebalance_start", scope: !3, file: !3, line: 730, type: !1353, scopeLine: 730, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2174)
!2174 = !{!2175, !2176}
!2175 = !DILocalVariable(name: "s_cls", scope: !2173, file: !3, line: 731, type: !346)
!2176 = !DILocalVariable(name: "no_go", scope: !2173, file: !3, line: 732, type: !99)
!2177 = !DILocation(line: 0, scope: !2173)
!2178 = !DILocation(line: 734, column: 5, scope: !2173)
!2179 = !DILocation(line: 736, column: 20, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 736, column: 9)
!2181 = !DILocation(line: 736, column: 28, scope: !2180)
!2182 = !DILocation(line: 736, column: 52, scope: !2180)
!2183 = !DILocation(line: 737, column: 20, scope: !2180)
!2184 = !DILocation(line: 737, column: 30, scope: !2180)
!2185 = !DILocation(line: 737, column: 28, scope: !2180)
!2186 = !DILocation(line: 737, column: 45, scope: !2180)
!2187 = !DILocation(line: 738, column: 20, scope: !2180)
!2188 = !DILocation(line: 738, column: 28, scope: !2180)
!2189 = !DILocation(line: 738, column: 52, scope: !2180)
!2190 = !DILocation(line: 739, column: 20, scope: !2180)
!2191 = !DILocation(line: 739, column: 28, scope: !2180)
!2192 = !DILocation(line: 739, column: 45, scope: !2180)
!2193 = !DILocation(line: 740, column: 20, scope: !2180)
!2194 = !DILocation(line: 740, column: 28, scope: !2180)
!2195 = !DILocation(line: 736, column: 9, scope: !2173)
!2196 = !DILocation(line: 741, column: 15, scope: !2180)
!2197 = !DILocation(line: 745, column: 36, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 745, column: 9)
!2199 = !DILocation(line: 741, column: 9, scope: !2180)
!2200 = !DILocation(line: 743, column: 14, scope: !2173)
!2201 = !DILocation(line: 745, column: 10, scope: !2198)
!2202 = !DILocation(line: 745, column: 9, scope: !2173)
!2203 = !DILocation(line: 749, column: 16, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 749, column: 9)
!2205 = !DILocation(line: 749, column: 22, scope: !2204)
!2206 = !DILocation(line: 749, column: 9, scope: !2173)
!2207 = !DILocation(line: 746, column: 15, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 745, column: 46)
!2209 = !DILocation(line: 750, column: 15, scope: !2204)
!2210 = !DILocation(line: 752, column: 9, scope: !2173)
!2211 = !DILocation(line: 753, column: 9, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 752, column: 21)
!2213 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 752, column: 9)
!2214 = !DILocation(line: 754, column: 9, scope: !2212)
!2215 = !DILocation(line: 760, column: 36, scope: !2173)
!2216 = !DILocation(line: 760, column: 29, scope: !2173)
!2217 = !DILocation(line: 760, column: 27, scope: !2173)
!2218 = !DILocation(line: 762, column: 17, scope: !2173)
!2219 = !DILocation(line: 762, column: 31, scope: !2173)
!2220 = !DILocation(line: 762, column: 22, scope: !2173)
!2221 = !DILocation(line: 761, column: 59, scope: !2173)
!2222 = !DILocation(line: 761, column: 27, scope: !2173)
!2223 = !{!1339, !283, i64 8}
!2224 = !DILocation(line: 763, column: 27, scope: !2173)
!2225 = !{!1339, !283, i64 16}
!2226 = !DILocation(line: 764, column: 27, scope: !2173)
!2227 = !DILocation(line: 766, column: 20, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 766, column: 9)
!2229 = !DILocation(line: 766, column: 28, scope: !2228)
!2230 = !DILocation(line: 766, column: 9, scope: !2173)
!2231 = !DILocation(line: 767, column: 25, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 766, column: 54)
!2233 = !DILocation(line: 768, column: 5, scope: !2232)
!2234 = !DILocation(line: 771, column: 45, scope: !2173)
!2235 = !DILocation(line: 771, column: 38, scope: !2173)
!2236 = !DILocation(line: 771, column: 26, scope: !2173)
!2237 = !{!1339, !283, i64 64}
!2238 = !DILocation(line: 773, column: 27, scope: !2173)
!2239 = !DILocation(line: 775, column: 18, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 775, column: 9)
!2241 = !DILocation(line: 775, column: 26, scope: !2240)
!2242 = !DILocation(line: 775, column: 9, scope: !2173)
!2243 = !DILocation(line: 776, column: 17, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 775, column: 31)
!2245 = !DILocation(line: 776, column: 9, scope: !2244)
!2246 = !DILocation(line: 777, column: 5, scope: !2244)
!2247 = !DILocation(line: 779, column: 5, scope: !2173)
!2248 = !DILocation(line: 781, column: 5, scope: !2173)
!2249 = !DILocation(line: 782, column: 39, scope: !2173)
!2250 = !{!2251, !305, i64 50}
!2251 = !{!"stats_state", !302, i64 0, !302, i64 8, !302, i64 16, !302, i64 24, !303, i64 32, !303, i64 36, !303, i64 40, !303, i64 44, !305, i64 48, !305, i64 49, !305, i64 50, !305, i64 51}
!2252 = !DILocation(line: 783, column: 5, scope: !2173)
!2253 = !DILocation(line: 785, column: 5, scope: !2173)
!2254 = !DILocation(line: 786, column: 1, scope: !2173)
!2255 = distinct !DISubprogram(name: "slab_rebalance_move", scope: !3, file: !3, line: 856, type: !1353, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2256)
!2256 = !{!2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2267, !2268, !2276, !2277, !2278, !2279, !2287}
!2257 = !DILocalVariable(name: "s_cls", scope: !2255, file: !3, line: 857, type: !346)
!2258 = !DILocalVariable(name: "was_busy", scope: !2255, file: !3, line: 858, type: !99)
!2259 = !DILocalVariable(name: "refcount", scope: !2255, file: !3, line: 859, type: !99)
!2260 = !DILocalVariable(name: "hv", scope: !2255, file: !3, line: 860, type: !452)
!2261 = !DILocalVariable(name: "hold_lock", scope: !2255, file: !3, line: 861, type: !125)
!2262 = !DILocalVariable(name: "status", scope: !2255, file: !3, line: 862, type: !79)
!2263 = !DILocalVariable(name: "offset", scope: !2255, file: !3, line: 866, type: !99)
!2264 = !DILocalVariable(name: "it", scope: !2265, file: !3, line: 873, type: !87)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 869, column: 44)
!2266 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 869, column: 9)
!2267 = !DILocalVariable(name: "ch", scope: !2265, file: !3, line: 875, type: !130)
!2268 = !DILocalVariable(name: "is_linked", scope: !2269, file: !3, line: 907, type: !184)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 906, column: 24)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 904, column: 21)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 897, column: 59)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 897, column: 24)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 893, column: 17)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 891, column: 58)
!2275 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 891, column: 13)
!2276 = !DILocalVariable(name: "save_item", scope: !2265, file: !3, line: 953, type: !99)
!2277 = !DILocalVariable(name: "new_it", scope: !2265, file: !3, line: 954, type: !87)
!2278 = !DILocalVariable(name: "ntotal", scope: !2265, file: !3, line: 955, type: !128)
!2279 = !DILocalVariable(name: "fch", scope: !2280, file: !3, line: 1010, type: !130)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 1009, column: 62)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 1009, column: 29)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 997, column: 37)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 997, column: 25)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 996, column: 32)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 996, column: 21)
!2286 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 956, column: 25)
!2287 = !DILocalVariable(name: "nch", scope: !2288, file: !3, line: 1024, type: !130)
!2288 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 1023, column: 28)
!2289 = !DILocation(line: 0, scope: !2255)
!2290 = !DILocation(line: 864, column: 35, scope: !2255)
!2291 = !DILocation(line: 864, column: 14, scope: !2255)
!2292 = !DILocation(line: 866, column: 37, scope: !2255)
!2293 = !DILocation(line: 866, column: 64, scope: !2255)
!2294 = !DILocation(line: 866, column: 45, scope: !2255)
!2295 = !DILocation(line: 866, column: 84, scope: !2255)
!2296 = !DILocation(line: 866, column: 76, scope: !2255)
!2297 = !DILocation(line: 866, column: 75, scope: !2255)
!2298 = !DILocation(line: 869, column: 20, scope: !2266)
!2299 = !DILocation(line: 869, column: 9, scope: !2266)
!2300 = !DILocation(line: 869, column: 38, scope: !2266)
!2301 = !DILocation(line: 869, column: 9, scope: !2255)
!2302 = !DILocation(line: 870, column: 9, scope: !2265)
!2303 = !DILocation(line: 873, column: 31, scope: !2265)
!2304 = !DILocation(line: 0, scope: !2265)
!2305 = !DILocation(line: 878, column: 17, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 878, column: 13)
!2307 = !DILocation(line: 878, column: 26, scope: !2306)
!2308 = !DILocation(line: 878, column: 13, scope: !2265)
!2309 = !DILocation(line: 884, column: 22, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 878, column: 40)
!2311 = !DILocation(line: 885, column: 13, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 885, column: 13)
!2313 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 885, column: 13)
!2314 = !DILocation(line: 885, column: 13, scope: !2313)
!2315 = !DILocation(line: 880, column: 18, scope: !2310)
!2316 = !DILocation(line: 886, column: 9, scope: !2310)
!2317 = !DILocation(line: 891, column: 13, scope: !2265)
!2318 = !DILocation(line: 891, column: 26, scope: !2275)
!2319 = !DILocation(line: 891, column: 17, scope: !2275)
!2320 = !DILocation(line: 891, column: 13, scope: !2275)
!2321 = !DILocation(line: 893, column: 30, scope: !2273)
!2322 = !DILocation(line: 893, column: 17, scope: !2274)
!2323 = !DILocation(line: 894, column: 17, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 894, column: 17)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 894, column: 17)
!2326 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 893, column: 46)
!2327 = !DILocation(line: 894, column: 17, scope: !2325)
!2328 = !DILocation(line: 897, column: 38, scope: !2272)
!2329 = !DILocation(line: 897, column: 53, scope: !2272)
!2330 = !DILocation(line: 897, column: 24, scope: !2273)
!2331 = !DILocation(line: 903, column: 22, scope: !2271)
!2332 = !DILocation(line: 903, column: 27, scope: !2271)
!2333 = !DILocation(line: 903, column: 45, scope: !2271)
!2334 = !DILocation(line: 903, column: 41, scope: !2271)
!2335 = !DILocation(line: 904, column: 34, scope: !2270)
!2336 = !DILocation(line: 904, column: 52, scope: !2270)
!2337 = !DILocation(line: 904, column: 21, scope: !2271)
!2338 = !DILocation(line: 905, column: 28, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 904, column: 61)
!2340 = !DILocation(line: 906, column: 17, scope: !2339)
!2341 = !DILocation(line: 907, column: 43, scope: !2269)
!2342 = !DILocation(line: 907, column: 52, scope: !2269)
!2343 = !DILocation(line: 907, column: 38, scope: !2269)
!2344 = !DILocation(line: 0, scope: !2269)
!2345 = !DILocation(line: 908, column: 32, scope: !2269)
!2346 = !DILocation(line: 909, column: 34, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 909, column: 25)
!2348 = !DILocation(line: 909, column: 25, scope: !2269)
!2349 = !DILocation(line: 912, column: 29, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 909, column: 40)
!2351 = !DILocation(line: 918, column: 36, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 914, column: 32)
!2353 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 912, column: 29)
!2354 = !DILocation(line: 920, column: 41, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 920, column: 32)
!2356 = !DILocation(line: 920, column: 45, scope: !2355)
!2357 = !DILocation(line: 920, column: 48, scope: !2355)
!2358 = !DILocation(line: 920, column: 32, scope: !2347)
!2359 = !DILocation(line: 923, column: 40, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 923, column: 29)
!2361 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 920, column: 59)
!2362 = !{!1339, !303, i64 56}
!2363 = !DILocation(line: 923, column: 51, scope: !2360)
!2364 = !DILocation(line: 923, column: 29, scope: !2361)
!2365 = !DILocation(line: 924, column: 52, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 923, column: 74)
!2367 = !{!1339, !303, i64 52}
!2368 = !DILocation(line: 927, column: 29, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 927, column: 29)
!2370 = !DILocation(line: 928, column: 29, scope: !2366)
!2371 = !DILocation(line: 929, column: 29, scope: !2366)
!2372 = !DILocation(line: 930, column: 29, scope: !2366)
!2373 = !DILocation(line: 931, column: 25, scope: !2366)
!2374 = !DILocation(line: 932, column: 32, scope: !2361)
!2375 = !DILocation(line: 933, column: 21, scope: !2361)
!2376 = !DILocation(line: 934, column: 38, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 934, column: 29)
!2378 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 933, column: 28)
!2379 = !DILocation(line: 934, column: 46, scope: !2377)
!2380 = !DILocation(line: 934, column: 29, scope: !2378)
!2381 = !DILocation(line: 935, column: 37, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 934, column: 51)
!2383 = !DILocation(line: 936, column: 37, scope: !2382)
!2384 = !DILocation(line: 936, column: 33, scope: !2382)
!2385 = !DILocation(line: 936, column: 58, scope: !2382)
!2386 = !DILocation(line: 936, column: 78, scope: !2382)
!2387 = !DILocation(line: 935, column: 29, scope: !2382)
!2388 = !DILocation(line: 937, column: 25, scope: !2382)
!2389 = !DILocation(line: 938, column: 32, scope: !2378)
!2390 = !DILocation(line: 942, column: 25, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 941, column: 46)
!2392 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 941, column: 25)
!2393 = !DILocation(line: 943, column: 25, scope: !2391)
!2394 = !DILocation(line: 944, column: 21, scope: !2391)
!2395 = !DILocation(line: 949, column: 24, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 946, column: 20)
!2397 = !DILocation(line: 913, column: 36, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 912, column: 40)
!2399 = !DILocation(line: 965, column: 26, scope: !2286)
!2400 = !DILocation(line: 967, column: 34, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 967, column: 21)
!2402 = !DILocation(line: 967, column: 21, scope: !2286)
!2403 = !DILocation(line: 968, column: 31, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 967, column: 46)
!2405 = !DILocation(line: 968, column: 44, scope: !2404)
!2406 = !DILocation(line: 968, column: 40, scope: !2404)
!2407 = !DILocation(line: 968, column: 38, scope: !2404)
!2408 = !DILocation(line: 968, column: 52, scope: !2404)
!2409 = !DILocation(line: 969, column: 17, scope: !2404)
!2410 = !DILocation(line: 0, scope: !2286)
!2411 = !DILocation(line: 972, column: 24, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 972, column: 21)
!2413 = !DILocation(line: 972, column: 32, scope: !2412)
!2414 = !DILocation(line: 972, column: 36, scope: !2412)
!2415 = !DILocation(line: 972, column: 40, scope: !2412)
!2416 = !DILocation(line: 972, column: 49, scope: !2412)
!2417 = !DILocation(line: 972, column: 21, scope: !2286)
!2418 = !DILocation(line: 975, column: 30, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 972, column: 66)
!2420 = !DILocation(line: 975, column: 37, scope: !2419)
!2421 = !DILocation(line: 976, column: 17, scope: !2419)
!2422 = !DILocation(line: 977, column: 26, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 977, column: 21)
!2424 = !DILocation(line: 977, column: 34, scope: !2423)
!2425 = !DILocation(line: 977, column: 39, scope: !2423)
!2426 = !DILocation(line: 977, column: 42, scope: !2423)
!2427 = !DILocation(line: 977, column: 46, scope: !2423)
!2428 = !DILocation(line: 977, column: 56, scope: !2423)
!2429 = !DILocation(line: 977, column: 54, scope: !2423)
!2430 = !DILocation(line: 978, column: 21, scope: !2423)
!2431 = !DILocation(line: 978, column: 24, scope: !2423)
!2432 = !DILocation(line: 977, column: 21, scope: !2286)
!2433 = !DILocation(line: 981, column: 39, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 981, column: 28)
!2435 = !DILocation(line: 982, column: 56, scope: !2434)
!2436 = !DILocation(line: 982, column: 75, scope: !2434)
!2437 = !DILocation(line: 982, column: 35, scope: !2434)
!2438 = !DILocation(line: 982, column: 85, scope: !2434)
!2439 = !DILocation(line: 981, column: 28, scope: !2423)
!2440 = !DILocation(line: 987, column: 56, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 986, column: 28)
!2442 = !DILocation(line: 987, column: 63, scope: !2441)
!2443 = !DILocation(line: 987, column: 80, scope: !2441)
!2444 = !DILocation(line: 987, column: 35, scope: !2441)
!2445 = !DILocation(line: 987, column: 90, scope: !2441)
!2446 = !DILocation(line: 986, column: 28, scope: !2434)
!2447 = !DILocation(line: 0, scope: !2434)
!2448 = !DILocation(line: 993, column: 31, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 991, column: 24)
!2450 = !DILocation(line: 995, column: 17, scope: !2286)
!2451 = !DILocation(line: 997, column: 25, scope: !2284)
!2452 = !DILocation(line: 998, column: 25, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 998, column: 25)
!2454 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 998, column: 25)
!2455 = !DILocation(line: 998, column: 25, scope: !2454)
!2456 = !DILocation(line: 1000, column: 40, scope: !2282)
!2457 = !DILocation(line: 1000, column: 25, scope: !2282)
!2458 = !DILocation(line: 1002, column: 38, scope: !2282)
!2459 = !DILocation(line: 1003, column: 33, scope: !2282)
!2460 = !DILocation(line: 1003, column: 40, scope: !2282)
!2461 = !DILocation(line: 1005, column: 42, scope: !2282)
!2462 = !DILocation(line: 1006, column: 33, scope: !2282)
!2463 = !DILocation(line: 1006, column: 42, scope: !2282)
!2464 = !DILocation(line: 1007, column: 25, scope: !2282)
!2465 = !DILocation(line: 1009, column: 37, scope: !2281)
!2466 = !DILocation(line: 1009, column: 29, scope: !2281)
!2467 = !DILocation(line: 1009, column: 46, scope: !2281)
!2468 = !DILocation(line: 1009, column: 29, scope: !2282)
!2469 = !DILocation(line: 1010, column: 62, scope: !2280)
!2470 = !DILocation(line: 1010, column: 47, scope: !2280)
!2471 = !DILocation(line: 0, scope: !2280)
!2472 = !DILocation(line: 1011, column: 34, scope: !2280)
!2473 = !DILocation(line: 1011, column: 40, scope: !2280)
!2474 = !DILocation(line: 1011, column: 45, scope: !2280)
!2475 = !DILocation(line: 1012, column: 29, scope: !2280)
!2476 = !DILocation(line: 1013, column: 45, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 1012, column: 41)
!2478 = !DILocation(line: 1013, column: 38, scope: !2477)
!2479 = !DILocation(line: 1013, column: 43, scope: !2477)
!2480 = !DILocation(line: 1014, column: 44, scope: !2477)
!2481 = distinct !{!2481, !2475, !2482, !325}
!2482 = !DILocation(line: 1015, column: 29, scope: !2280)
!2483 = !DILocation(line: 1016, column: 25, scope: !2281)
!2484 = !DILocation(line: 1016, column: 25, scope: !2280)
!2485 = !DILocation(line: 1017, column: 25, scope: !2282)
!2486 = !DILocation(line: 1017, column: 38, scope: !2282)
!2487 = !DILocation(line: 1018, column: 38, scope: !2282)
!2488 = !DILocation(line: 1022, column: 43, scope: !2282)
!2489 = !{!1339, !303, i64 36}
!2490 = !DILocation(line: 1023, column: 21, scope: !2282)
!2491 = !DILocation(line: 0, scope: !2288)
!2492 = !DILocation(line: 1026, column: 29, scope: !2288)
!2493 = !DILocation(line: 1026, column: 40, scope: !2288)
!2494 = !DILocation(line: 1027, column: 33, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 1027, column: 29)
!2496 = !DILocation(line: 1027, column: 29, scope: !2495)
!2497 = !DILocation(line: 1027, column: 29, scope: !2288)
!2498 = !DILocation(line: 1028, column: 46, scope: !2495)
!2499 = !DILocation(line: 1028, column: 33, scope: !2495)
!2500 = !DILocation(line: 1028, column: 39, scope: !2495)
!2501 = !DILocation(line: 1028, column: 44, scope: !2495)
!2502 = !DILocation(line: 1028, column: 29, scope: !2495)
!2503 = !DILocation(line: 1029, column: 32, scope: !2288)
!2504 = !DILocation(line: 1029, column: 37, scope: !2288)
!2505 = !DILocation(line: 1029, column: 45, scope: !2288)
!2506 = !DILocation(line: 1029, column: 41, scope: !2288)
!2507 = !DILocation(line: 1029, column: 50, scope: !2288)
!2508 = !DILocation(line: 1029, column: 25, scope: !2288)
!2509 = !DILocation(line: 1030, column: 29, scope: !2288)
!2510 = !DILocation(line: 1030, column: 38, scope: !2288)
!2511 = !DILocation(line: 1031, column: 29, scope: !2288)
!2512 = !DILocation(line: 1031, column: 38, scope: !2288)
!2513 = !DILocation(line: 1032, column: 49, scope: !2288)
!2514 = !{!1339, !303, i64 48}
!2515 = !DILocation(line: 1036, column: 25, scope: !2288)
!2516 = !DILocation(line: 1038, column: 32, scope: !2284)
!2517 = !DILocation(line: 1038, column: 21, scope: !2284)
!2518 = !DILocation(line: 1038, column: 50, scope: !2284)
!2519 = !DILocation(line: 1039, column: 17, scope: !2284)
!2520 = !{!1339, !303, i64 40}
!2521 = !DILocation(line: 1042, column: 21, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 1042, column: 21)
!2523 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 1039, column: 24)
!2524 = !DILocation(line: 1043, column: 29, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 1043, column: 25)
!2526 = !DILocation(line: 1043, column: 33, scope: !2525)
!2527 = !DILocation(line: 1043, column: 37, scope: !2525)
!2528 = !DILocation(line: 1043, column: 46, scope: !2525)
!2529 = !DILocation(line: 1043, column: 62, scope: !2525)
!2530 = !DILocation(line: 1043, column: 25, scope: !2523)
!2531 = !DILocation(line: 1044, column: 40, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 1043, column: 68)
!2533 = !DILocation(line: 1044, column: 25, scope: !2532)
!2534 = !DILocation(line: 1045, column: 38, scope: !2532)
!2535 = !DILocation(line: 1046, column: 38, scope: !2532)
!2536 = !DILocation(line: 1050, column: 36, scope: !2532)
!2537 = !DILocation(line: 1050, column: 25, scope: !2532)
!2538 = !DILocation(line: 1050, column: 54, scope: !2532)
!2539 = !DILocation(line: 1051, column: 21, scope: !2532)
!2540 = !DILocation(line: 1052, column: 34, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 1051, column: 28)
!2542 = !DILocation(line: 1053, column: 25, scope: !2541)
!2543 = !DILocation(line: 1054, column: 36, scope: !2541)
!2544 = !DILocation(line: 1054, column: 59, scope: !2541)
!2545 = !DILocation(line: 1054, column: 25, scope: !2541)
!2546 = !DILocation(line: 1056, column: 46, scope: !2541)
!2547 = !{!1339, !303, i64 32}
!2548 = !DILocation(line: 1061, column: 17, scope: !2286)
!2549 = !DILocation(line: 1062, column: 17, scope: !2286)
!2550 = !DILocation(line: 1066, column: 17, scope: !2286)
!2551 = !DILocation(line: 895, column: 17, scope: !2326)
!2552 = !DILocation(line: 1068, column: 28, scope: !2286)
!2553 = !DILocation(line: 1068, column: 17, scope: !2286)
!2554 = !DILocation(line: 1068, column: 46, scope: !2286)
!2555 = !DILocation(line: 1069, column: 21, scope: !2286)
!2556 = !DILocation(line: 1069, column: 30, scope: !2286)
!2557 = !DILocation(line: 1070, column: 30, scope: !2286)
!2558 = !DILocation(line: 1074, column: 17, scope: !2286)
!2559 = !DILocation(line: 1077, column: 38, scope: !2286)
!2560 = !DILocation(line: 1079, column: 17, scope: !2286)
!2561 = !DILocation(line: 1084, column: 9, scope: !2265)
!2562 = !DILocation(line: 1090, column: 46, scope: !2255)
!2563 = !DILocation(line: 1090, column: 64, scope: !2255)
!2564 = !DILocation(line: 1090, column: 55, scope: !2255)
!2565 = !DILocation(line: 1085, column: 5, scope: !2265)
!2566 = !DILocation(line: 858, column: 9, scope: !2255)
!2567 = !DILocation(line: 1090, column: 25, scope: !2255)
!2568 = !DILocation(line: 1092, column: 43, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 1092, column: 9)
!2570 = !DILocation(line: 1092, column: 29, scope: !2569)
!2571 = !DILocation(line: 1092, column: 9, scope: !2255)
!2572 = !DILocation(line: 1094, column: 24, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 1094, column: 13)
!2574 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 1092, column: 53)
!2575 = !DILocation(line: 1094, column: 13, scope: !2573)
!2576 = !DILocation(line: 1094, column: 13, scope: !2574)
!2577 = !DILocation(line: 1095, column: 46, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 1094, column: 36)
!2579 = !DILocation(line: 1095, column: 33, scope: !2578)
!2580 = !DILocation(line: 1096, column: 13, scope: !2578)
!2581 = !DILocation(line: 1097, column: 58, scope: !2578)
!2582 = !DILocation(line: 1097, column: 47, scope: !2578)
!2583 = !DILocation(line: 1097, column: 44, scope: !2578)
!2584 = !{!2585, !302, i64 80}
!2585 = !{!"stats", !302, i64 0, !302, i64 8, !302, i64 16, !302, i64 24, !302, i64 32, !302, i64 40, !302, i64 48, !302, i64 56, !302, i64 64, !302, i64 72, !302, i64 80, !302, i64 88, !302, i64 96, !302, i64 104, !302, i64 112, !302, i64 120, !302, i64 128, !302, i64 136, !302, i64 144, !302, i64 152, !302, i64 160, !302, i64 168, !2586, i64 176, !302, i64 192, !302, i64 200}
!2586 = !{!"timeval", !302, i64 0, !302, i64 8}
!2587 = !DILocation(line: 1098, column: 13, scope: !2578)
!2588 = !DILocation(line: 1099, column: 35, scope: !2578)
!2589 = !DILocation(line: 1100, column: 34, scope: !2578)
!2590 = !DILocation(line: 1101, column: 9, scope: !2578)
!2591 = !DILocation(line: 1102, column: 28, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 1101, column: 16)
!2593 = !DILocation(line: 1106, column: 5, scope: !2255)
!2594 = distinct !DISubprogram(name: "slab_rebalance_finish", scope: !3, file: !3, line: 1109, type: !788, scopeLine: 1109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2595)
!2595 = !{!2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603}
!2596 = !DILocalVariable(name: "s_cls", scope: !2594, file: !3, line: 1110, type: !346)
!2597 = !DILocalVariable(name: "d_cls", scope: !2594, file: !3, line: 1111, type: !346)
!2598 = !DILocalVariable(name: "x", scope: !2594, file: !3, line: 1112, type: !99)
!2599 = !DILocalVariable(name: "rescues", scope: !2594, file: !3, line: 1113, type: !452)
!2600 = !DILocalVariable(name: "evictions_nomem", scope: !2594, file: !3, line: 1114, type: !452)
!2601 = !DILocalVariable(name: "inline_reclaim", scope: !2594, file: !3, line: 1115, type: !452)
!2602 = !DILocalVariable(name: "chunk_rescues", scope: !2594, file: !3, line: 1116, type: !452)
!2603 = !DILocalVariable(name: "busy_deletes", scope: !2594, file: !3, line: 1117, type: !452)
!2604 = !DILocation(line: 1119, column: 5, scope: !2594)
!2605 = !DILocation(line: 1121, column: 35, scope: !2594)
!2606 = !DILocation(line: 1121, column: 14, scope: !2594)
!2607 = !DILocation(line: 0, scope: !2594)
!2608 = !DILocation(line: 1122, column: 35, scope: !2594)
!2609 = !DILocation(line: 1122, column: 14, scope: !2594)
!2610 = !DILocation(line: 1142, column: 12, scope: !2594)
!2611 = !DILocation(line: 1142, column: 17, scope: !2594)
!2612 = !DILocation(line: 1143, column: 19, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 1143, column: 5)
!2614 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 1143, column: 5)
!2615 = !DILocation(line: 1143, column: 5, scope: !2614)
!2616 = !DILocation(line: 1144, column: 38, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 1143, column: 40)
!2618 = !DILocation(line: 1144, column: 49, scope: !2617)
!2619 = !DILocation(line: 1144, column: 31, scope: !2617)
!2620 = !DILocation(line: 1144, column: 9, scope: !2617)
!2621 = !DILocation(line: 1144, column: 29, scope: !2617)
!2622 = !DILocation(line: 1143, column: 36, scope: !2613)
!2623 = distinct !{!2623, !2615, !2624, !325}
!2624 = !DILocation(line: 1145, column: 5, scope: !2614)
!2625 = !DILocation(line: 1147, column: 51, scope: !2594)
!2626 = !DILocation(line: 1147, column: 12, scope: !2594)
!2627 = !DILocation(line: 1147, column: 29, scope: !2594)
!2628 = !DILocation(line: 1147, column: 34, scope: !2594)
!2629 = !DILocation(line: 1147, column: 5, scope: !2594)
!2630 = !DILocation(line: 1147, column: 38, scope: !2594)
!2631 = !DILocation(line: 1149, column: 28, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 1149, column: 9)
!2633 = !DILocation(line: 1149, column: 9, scope: !2594)
!2634 = !DILocation(line: 1150, column: 27, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 1149, column: 53)
!2636 = !DILocation(line: 1150, column: 59, scope: !2635)
!2637 = !DILocation(line: 1150, column: 42, scope: !2635)
!2638 = !DILocation(line: 1150, column: 9, scope: !2635)
!2639 = !DILocation(line: 1151, column: 50, scope: !2635)
!2640 = !DILocation(line: 1152, column: 24, scope: !2635)
!2641 = !DILocation(line: 1151, column: 9, scope: !2635)
!2642 = !DILocation(line: 1153, column: 5, scope: !2635)
!2643 = !DILocation(line: 1153, column: 35, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 1153, column: 16)
!2645 = !DILocation(line: 1153, column: 16, scope: !2632)
!2646 = !DILocation(line: 1155, column: 27, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 1153, column: 61)
!2648 = !DILocation(line: 1155, column: 9, scope: !2647)
!2649 = !DILocation(line: 1158, column: 9, scope: !2647)
!2650 = !DILocation(line: 1159, column: 5, scope: !2647)
!2651 = !DILocation(line: 1161, column: 27, scope: !2594)
!2652 = !DILocation(line: 1162, column: 27, scope: !2594)
!2653 = !DILocation(line: 1163, column: 27, scope: !2594)
!2654 = !DILocation(line: 1164, column: 27, scope: !2594)
!2655 = !DILocation(line: 1165, column: 27, scope: !2594)
!2656 = !DILocation(line: 1167, column: 27, scope: !2594)
!2657 = !DILocation(line: 1168, column: 37, scope: !2594)
!2658 = !DILocation(line: 1170, column: 28, scope: !2594)
!2659 = !DILocation(line: 1171, column: 32, scope: !2594)
!2660 = !DILocation(line: 1172, column: 31, scope: !2594)
!2661 = !DILocation(line: 1175, column: 25, scope: !2594)
!2662 = !DILocation(line: 1177, column: 29, scope: !2594)
!2663 = !DILocation(line: 1179, column: 27, scope: !2594)
!2664 = !DILocation(line: 1181, column: 21, scope: !2594)
!2665 = !DILocation(line: 1181, column: 5, scope: !2594)
!2666 = !DILocation(line: 1182, column: 5, scope: !2594)
!2667 = !DILocation(line: 1184, column: 5, scope: !2594)
!2668 = !DILocation(line: 1186, column: 36, scope: !2594)
!2669 = !DILocation(line: 1185, column: 22, scope: !2594)
!2670 = !DILocation(line: 1187, column: 44, scope: !2594)
!2671 = !DILocation(line: 1187, column: 41, scope: !2594)
!2672 = !DILocation(line: 1189, column: 42, scope: !2594)
!2673 = !DILocation(line: 1189, column: 39, scope: !2594)
!2674 = !{!2585, !302, i64 72}
!2675 = !DILocation(line: 1190, column: 41, scope: !2594)
!2676 = !DILocation(line: 1190, column: 38, scope: !2594)
!2677 = !{!2585, !302, i64 88}
!2678 = !DILocation(line: 1191, column: 39, scope: !2594)
!2679 = !DILocation(line: 1192, column: 5, scope: !2594)
!2680 = !DILocation(line: 1194, column: 18, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 1194, column: 9)
!2682 = !DILocation(line: 1194, column: 26, scope: !2681)
!2683 = !DILocation(line: 1194, column: 9, scope: !2594)
!2684 = !DILocation(line: 1195, column: 17, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 1194, column: 31)
!2686 = !DILocation(line: 1195, column: 9, scope: !2685)
!2687 = !DILocation(line: 1196, column: 5, scope: !2685)
!2688 = !DILocation(line: 1197, column: 1, scope: !2594)
!2689 = !DISubprogram(name: "usleep", scope: !2690, file: !2690, line: 460, type: !2691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!2690 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!99, !2693}
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__useconds_t", file: !106, line: 161, baseType: !7)
!2694 = !DISubprogram(name: "pthread_cond_wait", scope: !898, file: !898, line: 986, type: !2695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!99, !2697, !2698}
!2697 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1474)
!2698 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !901)
!2699 = !DISubprogram(name: "calloc", scope: !748, file: !748, line: 542, type: !2700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!125, !128, !128}
!2702 = !DISubprogram(name: "STATS_LOCK", scope: !15, file: !15, line: 991, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!2703 = !DISubprogram(name: "STATS_UNLOCK", scope: !15, file: !15, line: 992, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!2704 = distinct !DISubprogram(name: "slab_rebalance_cut_free", scope: !3, file: !3, line: 822, type: !2705, scopeLine: 822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2707)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{null, !346, !87}
!2707 = !{!2708, !2709}
!2708 = !DILocalVariable(name: "s_cls", arg: 1, scope: !2704, file: !3, line: 822, type: !346)
!2709 = !DILocalVariable(name: "it", arg: 2, scope: !2704, file: !3, line: 822, type: !87)
!2710 = !DILocation(line: 0, scope: !2704)
!2711 = !DILocation(line: 824, column: 5, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 824, column: 5)
!2713 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 824, column: 5)
!2714 = !DILocation(line: 824, column: 5, scope: !2713)
!2715 = !DILocation(line: 825, column: 16, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 825, column: 9)
!2717 = !DILocation(line: 825, column: 25, scope: !2716)
!2718 = !DILocation(line: 825, column: 22, scope: !2716)
!2719 = !DILocation(line: 825, column: 9, scope: !2704)
!2720 = !DILocation(line: 826, column: 24, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 825, column: 29)
!2722 = !DILocation(line: 826, column: 28, scope: !2721)
!2723 = !DILocation(line: 826, column: 22, scope: !2721)
!2724 = !DILocation(line: 827, column: 5, scope: !2721)
!2725 = !DILocation(line: 828, column: 13, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 828, column: 9)
!2727 = !DILocation(line: 828, column: 9, scope: !2726)
!2728 = !DILocation(line: 828, column: 9, scope: !2704)
!2729 = !DILocation(line: 828, column: 36, scope: !2726)
!2730 = !DILocation(line: 828, column: 40, scope: !2726)
!2731 = !DILocation(line: 828, column: 23, scope: !2726)
!2732 = !DILocation(line: 828, column: 29, scope: !2726)
!2733 = !DILocation(line: 828, column: 34, scope: !2726)
!2734 = !DILocation(line: 828, column: 19, scope: !2726)
!2735 = !DILocation(line: 829, column: 13, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 829, column: 9)
!2737 = !DILocation(line: 829, column: 9, scope: !2736)
!2738 = !DILocation(line: 829, column: 9, scope: !2704)
!2739 = !DILocation(line: 829, column: 36, scope: !2736)
!2740 = !DILocation(line: 829, column: 40, scope: !2736)
!2741 = !DILocation(line: 829, column: 23, scope: !2736)
!2742 = !DILocation(line: 829, column: 29, scope: !2736)
!2743 = !DILocation(line: 829, column: 34, scope: !2736)
!2744 = !DILocation(line: 829, column: 19, scope: !2736)
!2745 = !DILocation(line: 830, column: 12, scope: !2704)
!2746 = !DILocation(line: 830, column: 19, scope: !2704)
!2747 = !DILocation(line: 831, column: 1, scope: !2704)
!2748 = !DISubprogram(name: "item_trylock", scope: !15, file: !15, line: 983, type: !2749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!125, !452}
!2751 = !DISubprogram(name: "storage_delete", scope: !2752, file: !2752, line: 4, type: !2753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!2752 = !DIFile(filename: "./storage.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "1366cb74d3c75a613067dc0e748ab303")
!2753 = !DISubroutineType(types: !2754)
!2754 = !{null, !125, !87}
!2755 = !DISubprogram(name: "do_item_unlink", scope: !2756, file: !2756, line: 21, type: !2757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!2756 = !DIFile(filename: "./items.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "24f8c54717bd547418db2338c9044014")
!2757 = !DISubroutineType(types: !2758)
!2758 = !{null, !87, !451}
!2759 = !DISubprogram(name: "item_trylock_unlock", scope: !15, file: !15, line: 984, type: !276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!2760 = !DISubprogram(name: "item_is_flushed", scope: !2756, file: !2756, line: 29, type: !2761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!99, !87}
!2763 = distinct !DISubprogram(name: "slab_rebalance_alloc", scope: !3, file: !3, line: 789, type: !2764, scopeLine: 789, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!125, !290, !7}
!2766 = !{!2767, !2768, !2769, !2770, !2771}
!2767 = !DILocalVariable(name: "size", arg: 1, scope: !2763, file: !3, line: 789, type: !290)
!2768 = !DILocalVariable(name: "id", arg: 2, scope: !2763, file: !3, line: 789, type: !7)
!2769 = !DILocalVariable(name: "s_cls", scope: !2763, file: !3, line: 790, type: !346)
!2770 = !DILocalVariable(name: "x", scope: !2763, file: !3, line: 792, type: !99)
!2771 = !DILocalVariable(name: "new_it", scope: !2763, file: !3, line: 793, type: !87)
!2772 = !DILocation(line: 0, scope: !2763)
!2773 = !DILocation(line: 791, column: 35, scope: !2763)
!2774 = !DILocation(line: 791, column: 14, scope: !2763)
!2775 = !DILocation(line: 795, column: 28, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 795, column: 5)
!2777 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 795, column: 5)
!2778 = !DILocation(line: 795, column: 19, scope: !2776)
!2779 = !DILocation(line: 795, column: 5, scope: !2777)
!2780 = !DILocation(line: 796, column: 18, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 795, column: 42)
!2782 = !DILocation(line: 798, column: 20, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 798, column: 13)
!2784 = !DILocation(line: 798, column: 13, scope: !2781)
!2785 = !DILocation(line: 801, column: 42, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 801, column: 13)
!2787 = !DILocation(line: 801, column: 28, scope: !2786)
!2788 = !DILocation(line: 802, column: 13, scope: !2786)
!2789 = !DILocation(line: 802, column: 24, scope: !2786)
!2790 = !DILocation(line: 802, column: 44, scope: !2786)
!2791 = !DILocation(line: 802, column: 31, scope: !2786)
!2792 = !DILocation(line: 801, column: 13, scope: !2781)
!2793 = !DILocation(line: 806, column: 21, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 802, column: 54)
!2795 = !DILocation(line: 806, column: 30, scope: !2794)
!2796 = !DILocation(line: 807, column: 21, scope: !2794)
!2797 = !DILocation(line: 807, column: 30, scope: !2794)
!2798 = !DILocation(line: 812, column: 38, scope: !2794)
!2799 = !{!1339, !303, i64 44}
!2800 = !DILocation(line: 795, column: 38, scope: !2776)
!2801 = distinct !{!2801, !2779, !2802, !325}
!2802 = !DILocation(line: 816, column: 5, scope: !2777)
!2803 = !DILocation(line: 0, scope: !2781)
!2804 = !DILocation(line: 817, column: 5, scope: !2763)
!2805 = !DISubprogram(name: "memcpy", scope: !744, file: !744, line: 43, type: !2806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!125, !1391, !2808, !128}
!2808 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1070)
!2809 = !DISubprogram(name: "do_item_replace", scope: !2756, file: !2756, line: 26, type: !2810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !742)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!99, !87, !87, !451}
