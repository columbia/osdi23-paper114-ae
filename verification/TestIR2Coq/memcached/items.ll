; ModuleID = 'items.c'
source_filename = "items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.itemstats_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.settings = type { i64, i32, i32, i32, i8*, i32, i32, i64, i32, i8*, i8*, i32, double, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, double, i32, i32, i8, i32, i8, i8, i8*, i32, i32, i32, i32, double, double, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8, i32, i32, i8*, i32 }
%struct._stritem = type { %struct._stritem*, %struct._stritem*, %struct._stritem*, i32, i32, i32, i16, i16, i8, i8, [0 x %union.anon] }
%union.anon = type { i64 }
%struct.stats_state = type { i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.timeval, i64, i64 }
%struct.timeval = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.slab_automove_reg_t = type { i8* (%struct.settings*)*, void (i8*)*, void (i8*, i32*, i32*)* }
%struct._lru_bump_buf = type { %struct._lru_bump_buf*, %struct._lru_bump_buf*, %union.pthread_mutex_t, %struct.bipbuf_t*, i64 }
%struct.bipbuf_t = type { i64, i32, i32, i32, i32, [0 x i8] }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, i64* }
%struct.lru_pull_tail_return = type { %struct._stritem*, i32 }
%struct._logger = type { %struct._logger*, %struct._logger*, %union.pthread_mutex_t, i64, i64, i64, i16, i16, i16, %struct.bipbuf_t*, %struct._entry_details* }
%struct._entry_details = type { i32, i16, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)*, i32 (%struct._logentry*, i8*)*, i8* }
%struct._logentry = type { i32, i8, i16, i64, %struct.timeval, i32, [0 x %union.anon.9] }
%union.anon.9 = type { i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._strchunk = type { %struct._strchunk*, %struct._strchunk*, %struct._stritem*, i32, i32, i32, i16, i16, i8, i8, [0 x i8] }
%struct.item_stats_automove = type { i64, i64, i32 }
%struct.conn = type { i8**, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.event, i16, i16, i8*, i8*, i32, i32, %struct._mc_resp*, %struct._mc_resp*, i8*, i32, i8*, i32, i32, [3 x %struct.io_queue_s], i32, i32, i32, i32, i32, %struct.sockaddr_in6, i32, i8, %struct.anon.11, %union.protocol_binary_request_header, i64, i64, i16, i32, i32, %struct.conn*, %struct.LIBEVENT_THREAD*, i32 (%struct.conn*)*, i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, %struct.msghdr*, i32)*, i64 (%struct.conn*, i8*, i64)* }
%struct.event = type { %struct.event_callback, %union.anon.1, i32, %struct.event_base*, %union.anon.3, i16, i16, %struct.timeval }
%struct.event_callback = type { %struct.anon, i16, i8, i8, %union.anon.0, i8* }
%struct.anon = type { %struct.event_callback*, %struct.event_callback** }
%union.anon.0 = type { void (i32, i16, i8*)* }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.event*, %struct.event** }
%struct.event_base = type opaque
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.anon.5, %struct.timeval }
%struct.anon.5 = type { %struct.event*, %struct.event** }
%struct._mc_resp = type { %struct._mc_resp_bundle*, %struct._mc_resp*, i32, i32, i8*, %struct._io_pending_t*, %struct._stritem*, [4 x %struct.iovec], i32, i8, i8, i8, i8, i16, i16, i16, %struct.sockaddr_in6, i32, [1024 x i8] }
%struct._mc_resp_bundle = type { i8, i8, %struct._mc_resp_bundle*, %struct._mc_resp_bundle*, [0 x %struct._mc_resp] }
%struct._io_pending_t = type { i32, %struct.LIBEVENT_THREAD*, %struct.conn*, %struct._mc_resp*, [120 x i8] }
%struct.iovec = type { i8*, i64 }
%struct.io_queue_s = type { i8*, i8*, i32, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.10 }
%union.anon.10 = type { [4 x i32] }
%struct.anon.11 = type { i8*, i64, i64 }
%union.protocol_binary_request_header = type { %struct.anon.12 }
%struct.anon.12 = type { i8, i8, i16, i8, i8, i16, i32, i32, i64 }
%struct.LIBEVENT_THREAD = type { i64, %struct.event_base*, %struct.event, i32, %struct.thread_stats, [3 x %struct.io_queue_cb_s], %struct.conn_queue*, %struct.cache_t*, %struct._mc_resp_bundle*, %struct.cache_t*, i8*, %struct._logger*, i8*, i32 }
%struct.thread_stats = type { %union.pthread_mutex_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [64 x %struct.slab_stats], [256 x i64], i64, i64, i64 }
%struct.slab_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.io_queue_cb_s = type { i8*, void (%struct.io_queue_s*)*, void (%struct.io_queue_s*)*, void (%struct._io_pending_t*)*, void (%struct._io_pending_t*)*, i32 }
%struct.conn_queue = type opaque
%struct.cache_t = type { %union.pthread_mutex_t, i8*, %struct.cache_head, i64, i32, i32, i32, i32 }
%struct.cache_head = type { %struct.cache_free_s*, %struct.cache_free_s** }
%struct.cache_free_s = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.cache_free_s* }
%struct.msghdr = type { i8*, i32, %struct.iovec*, i64, i8*, i64, i32 }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.crawler_expired_data = type { %union.pthread_mutex_t, [256 x %struct.crawlerstats_t], i32, i32, i8, i8 }
%struct.crawlerstats_t = type { [61 x i64], i64, i64, i64, i64, i32, i32, i8 }
%struct.lru_bump_entry = type { %struct._stritem*, i32 }

@lru_locks = external dso_local global [256 x %union.pthread_mutex_t], align 16
@itemstats = internal global [256 x %struct.itemstats_t] zeroinitializer, align 16, !dbg !0
@cas_id_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !390
@cas_id = internal unnamed_addr global i64 0, align 8, !dbg !392
@settings = external dso_local global %struct.settings, align 8
@current_time = external dso_local global i32, align 4
@sizes = internal unnamed_addr global [256 x i32] zeroinitializer, align 16, !dbg !381
@.str = private unnamed_addr constant [50 x i8] c"it->it_flags == 0 || it->it_flags == ITEM_CHUNKED\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"items.c\00", align 1
@__PRETTY_FUNCTION__.do_item_alloc = private unnamed_addr constant [91 x i8] c"item *do_item_alloc(char *, const size_t, const unsigned int, const rel_time_t, const int)\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"(it->it_flags & ITEM_LINKED) == 0\00", align 1
@__PRETTY_FUNCTION__.item_free = private unnamed_addr constant [23 x i8] c"void item_free(item *)\00", align 1
@heads = internal unnamed_addr global [256 x %struct._stritem*] zeroinitializer, align 16, !dbg !374
@.str.3 = private unnamed_addr constant [29 x i8] c"it != heads[it->slabs_clsid]\00", align 1
@tails = internal unnamed_addr global [256 x %struct._stritem*] zeroinitializer, align 16, !dbg !379
@.str.4 = private unnamed_addr constant [29 x i8] c"it != tails[it->slabs_clsid]\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"it->refcount == 0\00", align 1
@hash = external dso_local local_unnamed_addr global i32 (i8*, i64)*, align 8
@sizes_bytes = internal unnamed_addr global [256 x i64] zeroinitializer, align 16, !dbg !384
@stats_state = external dso_local local_unnamed_addr global %struct.stats_state, align 8
@stats = external dso_local local_unnamed_addr global %struct.stats, align 8
@.str.6 = private unnamed_addr constant [49 x i8] c"(it->it_flags & (ITEM_LINKED|ITEM_SLABBED)) == 0\00", align 1
@__PRETTY_FUNCTION__.do_item_link = private unnamed_addr constant [41 x i8] c"int do_item_link(item *, const uint32_t)\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"(it->it_flags & ITEM_SLABBED) == 0\00", align 1
@__PRETTY_FUNCTION__.do_item_remove = private unnamed_addr constant [28 x i8] c"void do_item_remove(item *)\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"it->refcount > 0\00", align 1
@__PRETTY_FUNCTION__.do_item_update = private unnamed_addr constant [28 x i8] c"void do_item_update(item *)\00", align 1
@__PRETTY_FUNCTION__.do_item_replace = private unnamed_addr constant [52 x i8] c"int do_item_replace(item *, item *, const uint32_t)\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"it->nkey <= KEY_MAX_LENGTH\00", align 1
@__PRETTY_FUNCTION__.item_cachedump = private unnamed_addr constant [77 x i8] c"char *item_cachedump(const unsigned int, const unsigned int, unsigned int *)\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"ITEM %s [%d b; %llu s]\0D\0A\00", align 1
@process_started = external dso_local local_unnamed_addr global i64, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"END\0D\0A\00", align 1
@lru_type_map = internal unnamed_addr constant [4 x i32] [i32 0, i32 64, i32 128, i32 192], align 16, !dbg !394
@.str.12 = private unnamed_addr constant [18 x i8] c"expired_unfetched\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"evicted_unfetched\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"evicted_active\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"evictions\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"reclaimed\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"crawler_reclaimed\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"crawler_items_checked\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"lrutail_reflocked\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"moves_to_cold\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"moves_to_warm\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"moves_within_lru\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"direct_reclaims\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"lru_bumps_dropped\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"items:%d:%s\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"number_hot\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"number_warm\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"number_cold\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"number_temp\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"age_hot\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"age_warm\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"age\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"mem_requested\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"evicted\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"evicted_nonzero\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"evicted_time\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"outofmemory\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"tailrepairs\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"hits_to_hot\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"hits_to_warm\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"hits_to_cold\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"hits_to_temp\00", align 1
@stats_sizes_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !399
@stats_sizes_hist = internal unnamed_addr global i32* null, align 8, !dbg !401
@stats_sizes_buckets = internal unnamed_addr global i32 0, align 4, !dbg !404
@stats_sizes_cas_min = internal unnamed_addr global i64 0, align 8, !dbg !406
@.str.46 = private unnamed_addr constant [13 x i8] c"sizes_status\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.48 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"sizes_error\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"cas_support_disabled\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"no_memory\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.55 = private unnamed_addr constant [13 x i8] c"> NOT FOUND \00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"> FOUND KEY \00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c" -nuked by flush\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c" -nuked by expire\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@logger_key = external dso_local local_unnamed_addr global i32, align 4
@ext_storage = external dso_local local_unnamed_addr global i8*, align 8
@slab_automove_default = dso_local local_unnamed_addr global %struct.slab_automove_reg_t { i8* (%struct.settings*)* @slab_automove_init, void (i8*)* @slab_automove_free, void (i8*, i32*, i32*)* @slab_automove_run }, align 8, !dbg !266
@slab_automove_extstore = dso_local local_unnamed_addr global %struct.slab_automove_reg_t { i8* (%struct.settings*)* @slab_automove_extstore_init, void (i8*)* @slab_automove_extstore_free, void (i8*, i32*, i32*)* @slab_automove_extstore_run }, align 8, !dbg !372
@lru_maintainer_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !424
@do_run_lru_maintainer_thread = internal global i32 0, align 4, !dbg !426
@lru_maintainer_tid = internal global i64 0, align 8, !dbg !387
@.str.61 = private unnamed_addr constant [42 x i8] c"Failed to stop LRU maintainer thread: %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"Can't create LRU maintainer thread: %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"it->it_flags == 1\00", align 1
@__PRETTY_FUNCTION__.do_item_linktail_q = private unnamed_addr constant [32 x i8] c"void do_item_linktail_q(item *)\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"it->nbytes == 0\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"it != *tail\00", align 1
@.str.66 = private unnamed_addr constant [47 x i8] c"(*head && *tail) || (*head == 0 && *tail == 0)\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"it->prev->next == 0\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"it->prev == 0\00", align 1
@__PRETTY_FUNCTION__.do_item_unlinktail_q = private unnamed_addr constant [34 x i8] c"void do_item_unlinktail_q(item *)\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"it->next == 0\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"it->next != it\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"it->prev != it\00", align 1
@__PRETTY_FUNCTION__.do_item_crawl_q = private unnamed_addr constant [30 x i8] c"item *do_item_crawl_q(item *)\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"*head == it\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"it->next->prev == it\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"it->prev->next == it\00", align 1
@__PRETTY_FUNCTION__.do_item_unlink_q = private unnamed_addr constant [30 x i8] c"void do_item_unlink_q(item *)\00", align 1
@__PRETTY_FUNCTION__.do_item_link_q = private unnamed_addr constant [28 x i8] c"void do_item_link_q(item *)\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"it != *head\00", align 1
@bump_buf_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !408
@bump_buf_head = internal unnamed_addr global %struct._lru_bump_buf* null, align 8, !dbg !410
@.str.76 = private unnamed_addr constant [19 x i8] c"b != bump_buf_head\00", align 1
@__PRETTY_FUNCTION__.lru_bump_buf_link_q = private unnamed_addr constant [41 x i8] c"void lru_bump_buf_link_q(lru_bump_buf *)\00", align 1
@bump_buf_tail = internal unnamed_addr global %struct._lru_bump_buf* null, align 8, !dbg !422
@.str.77 = private unnamed_addr constant [59 x i8] c"Failed to allocate crawler data for LRU maintainer thread\0A\00", align 1
@.str.78 = private unnamed_addr constant [53 x i8] c"Failed to allocate logger for LRU maintainer thread\0A\00", align 1
@.str.79 = private unnamed_addr constant [43 x i8] c"Starting LRU maintainer background thread\0A\00", align 1
@.str.80 = private unnamed_addr constant [32 x i8] c"LRU maintainer thread stopping\0A\00", align 1
@lru_maintainer_crawler_check.next_crawls = internal unnamed_addr global [256 x i32] zeroinitializer, align 16, !dbg !429
@lru_maintainer_crawler_check.next_crawl_wait = internal unnamed_addr global [256 x i32] zeroinitializer, align 16, !dbg !483
@.str.82 = private unnamed_addr constant [4 x i8] c"hot\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"warm\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@__llvm_gcov_ctr = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.86 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.87 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.88 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.89 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.90 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.91 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.92 = internal global [41 x i64] zeroinitializer
@__llvm_gcov_ctr.93 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.94 = internal global [16 x i64] zeroinitializer
@__llvm_gcov_ctr.95 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.96 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.97 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.98 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.99 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.100 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.101 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.102 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.103 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.104 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.105 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.106 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.107 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.108 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.109 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.110 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.111 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.112 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.113 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.114 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.115 = internal global [21 x i64] zeroinitializer
@__llvm_gcov_ctr.116 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.117 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.118 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.119 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.120 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.121 = internal global [18 x i64] zeroinitializer
@__llvm_gcov_ctr.122 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.123 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.124 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.125 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.126 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.127 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.128 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.129 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.130 = internal global [33 x i64] zeroinitializer
@__llvm_gcov_ctr.131 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.132 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.133 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.134 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.135 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.136 = internal global [17 x i64] zeroinitializer
@__llvm_gcov_ctr.137 = internal global [13 x i64] zeroinitializer
@__llvm_gcov_ctr.138 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.139 = internal global [20 x i64] zeroinitializer
@0 = private unnamed_addr constant [53 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/items.gcda\00", align 1
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [55 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 1189837663, i32 -1440257473 }, %emit_function_args_ty { i32 1, i32 -210704422, i32 -1440257473 }, %emit_function_args_ty { i32 2, i32 -2000525129, i32 -1440257473 }, %emit_function_args_ty { i32 3, i32 1151071529, i32 -1440257473 }, %emit_function_args_ty { i32 4, i32 -672135179, i32 -1440257473 }, %emit_function_args_ty { i32 5, i32 -648723985, i32 -1440257473 }, %emit_function_args_ty { i32 6, i32 1361644610, i32 -1440257473 }, %emit_function_args_ty { i32 7, i32 -543191974, i32 -1440257473 }, %emit_function_args_ty { i32 8, i32 -1776989564, i32 -1440257473 }, %emit_function_args_ty { i32 9, i32 594076878, i32 -1440257473 }, %emit_function_args_ty { i32 10, i32 289147208, i32 -1440257473 }, %emit_function_args_ty { i32 11, i32 1451215970, i32 -1440257473 }, %emit_function_args_ty { i32 12, i32 -1451376600, i32 -1440257473 }, %emit_function_args_ty { i32 13, i32 -517368348, i32 -1440257473 }, %emit_function_args_ty { i32 14, i32 831656149, i32 -1440257473 }, %emit_function_args_ty { i32 15, i32 1252532102, i32 -1440257473 }, %emit_function_args_ty { i32 16, i32 -546662465, i32 -1440257473 }, %emit_function_args_ty { i32 17, i32 766712800, i32 -1440257473 }, %emit_function_args_ty { i32 18, i32 1309662127, i32 -1440257473 }, %emit_function_args_ty { i32 19, i32 1795783530, i32 -1440257473 }, %emit_function_args_ty { i32 20, i32 1639855465, i32 -1440257473 }, %emit_function_args_ty { i32 21, i32 -1363049724, i32 -1440257473 }, %emit_function_args_ty { i32 22, i32 2915873, i32 -1440257473 }, %emit_function_args_ty { i32 23, i32 -1692632333, i32 -1440257473 }, %emit_function_args_ty { i32 24, i32 463515541, i32 -1440257473 }, %emit_function_args_ty { i32 25, i32 -1492278540, i32 -1440257473 }, %emit_function_args_ty { i32 26, i32 -857186973, i32 -1440257473 }, %emit_function_args_ty { i32 27, i32 -557793686, i32 -1440257473 }, %emit_function_args_ty { i32 28, i32 -464813142, i32 -1440257473 }, %emit_function_args_ty { i32 29, i32 1698845530, i32 -1440257473 }, %emit_function_args_ty { i32 30, i32 -2091578842, i32 -1440257473 }, %emit_function_args_ty { i32 31, i32 -638324259, i32 -1440257473 }, %emit_function_args_ty { i32 32, i32 -2102915673, i32 -1440257473 }, %emit_function_args_ty { i32 33, i32 -499615229, i32 -1440257473 }, %emit_function_args_ty { i32 34, i32 1733808211, i32 -1440257473 }, %emit_function_args_ty { i32 35, i32 452465626, i32 -1440257473 }, %emit_function_args_ty { i32 36, i32 -7297733, i32 -1440257473 }, %emit_function_args_ty { i32 37, i32 -1145790621, i32 -1440257473 }, %emit_function_args_ty { i32 38, i32 -1122329703, i32 -1440257473 }, %emit_function_args_ty { i32 39, i32 71946764, i32 -1440257473 }, %emit_function_args_ty { i32 40, i32 727804012, i32 -1440257473 }, %emit_function_args_ty { i32 41, i32 1689600424, i32 -1440257473 }, %emit_function_args_ty { i32 42, i32 -867583833, i32 -1440257473 }, %emit_function_args_ty { i32 43, i32 -872118981, i32 -1440257473 }, %emit_function_args_ty { i32 44, i32 382957233, i32 -1440257473 }, %emit_function_args_ty { i32 45, i32 1447646956, i32 -1440257473 }, %emit_function_args_ty { i32 46, i32 -769115297, i32 -1440257473 }, %emit_function_args_ty { i32 47, i32 1799565872, i32 -1440257473 }, %emit_function_args_ty { i32 48, i32 -1605254139, i32 -1440257473 }, %emit_function_args_ty { i32 49, i32 -2094964019, i32 -1440257473 }, %emit_function_args_ty { i32 50, i32 22763527, i32 -1440257473 }, %emit_function_args_ty { i32 51, i32 80923105, i32 -1440257473 }, %emit_function_args_ty { i32 52, i32 -595802628, i32 -1440257473 }, %emit_function_args_ty { i32 53, i32 1811785772, i32 -1440257473 }, %emit_function_args_ty { i32 54, i32 131932372, i32 -1440257473 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [55 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.86, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.87, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.88, i32 0, i32 0) }, %emit_arcs_args_ty { i32 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.90, i32 0, i32 0) }, %emit_arcs_args_ty { i32 7, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.91, i32 0, i32 0) }, %emit_arcs_args_ty { i32 41, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.93, i32 0, i32 0) }, %emit_arcs_args_ty { i32 16, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.95, i32 0, i32 0) }, %emit_arcs_args_ty { i32 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.96, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.97, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.98, i32 0, i32 0) }, %emit_arcs_args_ty { i32 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.99, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.100, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.101, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.102, i32 0, i32 0) }, %emit_arcs_args_ty { i32 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.103, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.104, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.105, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.106, i32 0, i32 0) }, %emit_arcs_args_ty { i32 10, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i32 0, i32 0) }, %emit_arcs_args_ty { i32 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.109, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.110, i32 0, i32 0) }, %emit_arcs_args_ty { i32 10, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i32 0, i32 0) }, %emit_arcs_args_ty { i32 7, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.112, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.113, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.114, i32 0, i32 0) }, %emit_arcs_args_ty { i32 21, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.116, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.117, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.118, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.119, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.120, i32 0, i32 0) }, %emit_arcs_args_ty { i32 18, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i32 0, i32 0) }, %emit_arcs_args_ty { i32 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.122, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.123, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.124, i32 0, i32 0) }, %emit_arcs_args_ty { i32 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.126, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.127, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.128, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.129, i32 0, i32 0) }, %emit_arcs_args_ty { i32 33, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.131, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.132, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.133, i32 0, i32 0) }, %emit_arcs_args_ty { i32 10, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i32 0, i32 0) }, %emit_arcs_args_ty { i32 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i32 0, i32 0) }, %emit_arcs_args_ty { i32 17, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i32 0, i32 0) }, %emit_arcs_args_ty { i32 13, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.138, i32 0, i32 0) }, %emit_arcs_args_ty { i32 20, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i32 0, i32 0) }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: noinline nounwind uwtable
define dso_local void @item_stats_reset() local_unnamed_addr #0 !dbg !518 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 0, metadata !522, metadata !DIExpression()), !dbg !523
  br label %for.body, !dbg !524

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !522, metadata !DIExpression()), !dbg !523
  %arrayidx = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %indvars.iv, !dbg !526
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !529
  %arrayidx2 = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %indvars.iv, !dbg !530
  %1 = bitcast %struct.itemstats_t* %arrayidx2 to i8*, !dbg !531
  %call3 = tail call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 168) #12, !dbg !532
  %call6 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !533
  %gcov_ctr7 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !534
  %2 = add i64 %gcov_ctr7, 1, !dbg !534
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !534
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !534
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !522, metadata !DIExpression()), !dbg !523
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256, !dbg !535
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !524, !llvm.loop !536

for.end:                                          ; preds = %for.body
  ret void, !dbg !539
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare !dbg !540 dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !546 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !550 dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @do_item_stats_add_crawl(i32 noundef %i, i64 noundef %reclaimed, i64 noundef %unfetched, i64 noundef %checked) local_unnamed_addr #4 !dbg !551 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 %i, metadata !557, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i64 %reclaimed, metadata !558, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i64 %unfetched, metadata !559, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i64 %checked, metadata !560, metadata !DIExpression()), !dbg !561
  %idxprom = sext i32 %i to i64, !dbg !562
  %crawler_reclaimed = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 8, !dbg !563
  %1 = load i64, i64* %crawler_reclaimed, align 8, !dbg !564, !tbaa !565
  %add = add i64 %1, %reclaimed, !dbg !564
  store i64 %add, i64* %crawler_reclaimed, align 8, !dbg !564, !tbaa !565
  %expired_unfetched = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 5, !dbg !571
  %2 = load i64, i64* %expired_unfetched, align 8, !dbg !572, !tbaa !573
  %add3 = add i64 %2, %unfetched, !dbg !572
  store i64 %add3, i64* %expired_unfetched, align 8, !dbg !572, !tbaa !573
  %crawler_items_checked = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 9, !dbg !574
  %3 = load i64, i64* %crawler_items_checked, align 8, !dbg !575, !tbaa !576
  %add6 = add i64 %3, %checked, !dbg !575
  store i64 %add6, i64* %crawler_items_checked, align 8, !dbg !575, !tbaa !576
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @get_cas_id() local_unnamed_addr #0 !dbg !578 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.87, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.87, i64 0, i64 0), align 8
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @cas_id_lock) #12, !dbg !583
  %1 = load i64, i64* @cas_id, align 8, !dbg !584, !tbaa !585
  %inc = add i64 %1, 1, !dbg !584
  store i64 %inc, i64* @cas_id, align 8, !dbg !584, !tbaa !585
  call void @llvm.dbg.value(metadata i64 %inc, metadata !582, metadata !DIExpression()), !dbg !586
  %call1 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @cas_id_lock) #12, !dbg !587
  ret i64 %inc, !dbg !588
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_cas_id(i64 noundef %new_cas) local_unnamed_addr #0 !dbg !589 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i64 %new_cas, metadata !593, metadata !DIExpression()), !dbg !594
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @cas_id_lock) #12, !dbg !595
  store i64 %new_cas, i64* @cas_id, align 8, !dbg !596, !tbaa !585
  %call1 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @cas_id_lock) #12, !dbg !597
  ret void, !dbg !598
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define dso_local i32 @item_is_flushed(%struct._stritem* nocapture noundef readonly %it) local_unnamed_addr #5 !dbg !599 {
entry:
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !603, metadata !DIExpression()), !dbg !607
  %0 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 6), align 4, !dbg !608, !tbaa !609
  call void @llvm.dbg.value(metadata i32 %0, metadata !604, metadata !DIExpression()), !dbg !607
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !614
  %1 = load i16, i16* %it_flags, align 2, !dbg !614, !tbaa !615
  %2 = and i16 %1, 2, !dbg !614
  %tobool.not = icmp eq i16 %2, 0, !dbg !614
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !614

cond.true:                                        ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 0), align 16, !dbg !614
  %3 = add i64 %gcov_ctr, 1, !dbg !614
  store i64 %3, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 0), align 16, !dbg !614
  %cas1 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 10, i64 0, i32 0, !dbg !614
  %4 = load i64, i64* %cas1, align 8, !dbg !614, !tbaa !617
  br label %cond.end, !dbg !614

cond.false:                                       ; preds = %entry
  %gcov_ctr19 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 1), align 8, !dbg !614
  %5 = add i64 %gcov_ctr19, 1, !dbg !614
  store i64 %5, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 1), align 8, !dbg !614
  br label %cond.end, !dbg !614

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !614
  call void @llvm.dbg.value(metadata i64 %cond, metadata !605, metadata !DIExpression()), !dbg !607
  %6 = load i64, i64* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 7), align 8, !dbg !618, !tbaa !619
  call void @llvm.dbg.value(metadata i64 %6, metadata !606, metadata !DIExpression()), !dbg !607
  %cmp = icmp eq i32 %0, 0, !dbg !620
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !622

lor.lhs.false:                                    ; preds = %cond.end
  %gcov_ctr20 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 2), align 16, !dbg !623
  %7 = add i64 %gcov_ctr20, 1, !dbg !623
  store i64 %7, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 2), align 16, !dbg !623
  %8 = load volatile i32, i32* @current_time, align 4, !dbg !624, !tbaa !625
  %cmp3 = icmp ugt i32 %0, %8, !dbg !626
  br i1 %cmp3, label %cleanup, label %if.end, !dbg !627

if.end:                                           ; preds = %lor.lhs.false
  %time = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 3, !dbg !628
  %9 = load i32, i32* %time, align 8, !dbg !628, !tbaa !625
  %cmp5.not = icmp ugt i32 %9, %0, !dbg !630
  br i1 %cmp5.not, label %lor.lhs.false7, label %if.then15, !dbg !631

lor.lhs.false7:                                   ; preds = %if.end
  %gcov_ctr21 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 3), align 8, !dbg !632
  %10 = add i64 %gcov_ctr21, 1, !dbg !632
  store i64 %10, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 3), align 8, !dbg !632
  %cmp8.not = icmp eq i64 %6, 0, !dbg !633
  br i1 %cmp8.not, label %if.end16, label %land.lhs.true, !dbg !634

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %gcov_ctr22 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 4), align 16, !dbg !635
  %11 = add i64 %gcov_ctr22, 1, !dbg !635
  store i64 %11, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 4), align 16, !dbg !635
  %cmp10.not = icmp eq i64 %cond, 0, !dbg !636
  br i1 %cmp10.not, label %if.end16, label %land.lhs.true12, !dbg !637

land.lhs.true12:                                  ; preds = %land.lhs.true
  %gcov_ctr23 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 5), align 8, !dbg !638
  %12 = add i64 %gcov_ctr23, 1, !dbg !638
  store i64 %12, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 5), align 8, !dbg !638
  %cmp13 = icmp ult i64 %cond, %6, !dbg !639
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !640

if.then15:                                        ; preds = %land.lhs.true12, %if.end
  %gcov_ctr24 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 6), align 16, !dbg !641
  %13 = add i64 %gcov_ctr24, 1, !dbg !641
  store i64 %13, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 6), align 16, !dbg !641
  br label %cleanup, !dbg !641

if.end16:                                         ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false7
  %gcov_ctr25 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 7), align 8, !dbg !643
  %14 = add i64 %gcov_ctr25, 1, !dbg !643
  store i64 %14, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.89, i64 0, i64 7), align 8, !dbg !643
  br label %cleanup, !dbg !643

cleanup:                                          ; preds = %cond.end, %lor.lhs.false, %if.end16, %if.then15
  %retval.0 = phi i32 [ 1, %if.then15 ], [ 0, %if.end16 ], [ 0, %lor.lhs.false ], [ 0, %cond.end ], !dbg !607
  ret i32 %retval.0, !dbg !644
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @do_get_lru_size(i32 noundef %id) local_unnamed_addr #4 !dbg !645 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.90, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.90, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 %id, metadata !649, metadata !DIExpression()), !dbg !650
  %idxprom = zext i32 %id to i64, !dbg !651
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @sizes, i64 0, i64 %idxprom, !dbg !651
  %1 = load i32, i32* %arrayidx, align 4, !dbg !651, !tbaa !625
  ret i32 %1, !dbg !652
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._stritem* @do_item_alloc_pull(i64 noundef %ntotal, i32 noundef %id) local_unnamed_addr #0 !dbg !653 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.91, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.91, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i64 %ntotal, metadata !659, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i32 %id, metadata !660, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !661, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i32 0, metadata !662, metadata !DIExpression()), !dbg !663
  br label %for.body, !dbg !664

for.body:                                         ; preds = %entry, %for.inc
  %i.050 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.050, metadata !662, metadata !DIExpression()), !dbg !663
  %1 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 30), align 8, !dbg !666, !tbaa !670, !range !671
  %tobool.not = icmp eq i8 %1, 0, !dbg !666
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !672

if.then:                                          ; preds = %for.body
  %gcov_ctr23 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.91, i64 0, i64 1), align 8, !dbg !673
  %2 = add i64 %gcov_ctr23, 1, !dbg !673
  store i64 %2, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.91, i64 0, i64 1), align 8, !dbg !673
  %call = tail call i32 @lru_pull_tail(i32 noundef %id, i32 noundef 128, i64 noundef 0, i8 noundef zeroext 0, i32 noundef 0, %struct.lru_pull_tail_return* noundef null) #13, !dbg !675
  br label %if.end, !dbg !676

if.end:                                           ; preds = %if.then, %for.body
  %call1 = tail call i8* @slabs_alloc(i64 noundef %ntotal, i32 noundef %id, i32 noundef 0) #12, !dbg !677
  call void @llvm.dbg.value(metadata i8* %call1, metadata !661, metadata !DIExpression()), !dbg !663
  %cmp2 = icmp eq i8* %call1, null, !dbg !678
  br i1 %cmp2, label %if.then3, label %if.else12, !dbg !680

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @lru_pull_tail(i32 noundef %id, i32 noundef 128, i64 noundef 0, i8 noundef zeroext 1, i32 noundef 0, %struct.lru_pull_tail_return* noundef null) #13, !dbg !681
  %cmp5 = icmp slt i32 %call4, 1, !dbg !684
  br i1 %cmp5, label %if.then6, label %for.inc, !dbg !685

if.then6:                                         ; preds = %if.then3
  %3 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 30), align 8, !dbg !686, !tbaa !670, !range !671
  %tobool7.not = icmp eq i8 %3, 0, !dbg !686
  br i1 %tobool7.not, label %for.end, label %if.then8, !dbg !689

if.then8:                                         ; preds = %if.then6
  %call9 = tail call i32 @lru_pull_tail(i32 noundef %id, i32 noundef 0, i64 noundef 0, i8 noundef zeroext 0, i32 noundef 0, %struct.lru_pull_tail_return* noundef null) #13, !dbg !690
  %gcov_ctr25 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.91, i64 0, i64 3), align 8, !dbg !692
  %4 = add i64 %gcov_ctr25, 1, !dbg !692
  store i64 %4, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.91, i64 0, i64 3), align 8, !dbg !692
  br label %for.inc, !dbg !692

if.else12:                                        ; preds = %if.end
  %5 = bitcast i8* %call1 to %struct._stritem*, !dbg !677
  call void @llvm.dbg.value(metadata %struct._stritem* %5, metadata !661, metadata !DIExpression()), !dbg !663
  br label %for.end, !dbg !693

for.inc:                                          ; preds = %if.then8, %if.then3
  %gcov_ctr27 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.91, i64 0, i64 5), align 8, !dbg !695
  %6 = add i64 %gcov_ctr27, 1, !dbg !695
  store i64 %6, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.91, i64 0, i64 5), align 8, !dbg !695
  %inc = add nuw nsw i32 %i.050, 1, !dbg !695
  call void @llvm.dbg.value(metadata i32 %inc, metadata !662, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !661, metadata !DIExpression()), !dbg !663
  %exitcond.not = icmp eq i32 %inc, 10, !dbg !696
  br i1 %exitcond.not, label %if.then15, label %for.body, !dbg !664, !llvm.loop !697

for.end:                                          ; preds = %if.then6, %if.else12
  %.sink = phi i64* [ getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.91, i64 0, i64 4), %if.else12 ], [ getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.91, i64 0, i64 2), %if.then6 ]
  %it.1 = phi %struct._stritem* [ %5, %if.else12 ], [ null, %if.then6 ], !dbg !663
  %gcov_ctr26 = load i64, i64* %.sink, align 16, !dbg !699
  %7 = add i64 %gcov_ctr26, 1, !dbg !699
  store i64 %7, i64* %.sink, align 16, !dbg !699
  call void @llvm.dbg.value(metadata %struct._stritem* %it.1, metadata !661, metadata !DIExpression()), !dbg !663
  %cmp14.not = icmp eq i32 %i.050, 0, !dbg !700
  br i1 %cmp14.not, label %if.end22, label %if.then15, !dbg !702

if.then15:                                        ; preds = %for.inc, %for.end
  %i.047 = phi i32 [ %i.050, %for.end ], [ 10, %for.inc ]
  %it.143 = phi %struct._stritem* [ %it.1, %for.end ], [ null, %for.inc ]
  %gcov_ctr28 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.91, i64 0, i64 6), align 16, !dbg !703
  %8 = add i64 %gcov_ctr28, 1, !dbg !703
  store i64 %8, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.91, i64 0, i64 6), align 16, !dbg !703
  %idxprom = zext i32 %id to i64, !dbg !705
  %arrayidx = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom, !dbg !705
  %call16 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !706
  %conv = zext i32 %i.047 to i64, !dbg !707
  %direct_reclaims = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 14, !dbg !708
  %9 = load i64, i64* %direct_reclaims, align 8, !dbg !709, !tbaa !710
  %add = add i64 %9, %conv, !dbg !709
  store i64 %add, i64* %direct_reclaims, align 8, !dbg !709, !tbaa !710
  %call21 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !711
  br label %if.end22, !dbg !712

if.end22:                                         ; preds = %if.then15, %for.end
  %it.144 = phi %struct._stritem* [ %it.143, %if.then15 ], [ %it.1, %for.end ]
  ret %struct._stritem* %it.144, !dbg !713
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lru_pull_tail(i32 noundef %orig_id, i32 noundef %cur_lru, i64 noundef %total_bytes, i8 noundef zeroext %flags, i32 noundef %max_age, %struct.lru_pull_tail_return* nocapture noundef writeonly %ret_it) local_unnamed_addr #0 !dbg !714 {
entry:
  call void @llvm.dbg.value(metadata i32 %orig_id, metadata !726, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %cur_lru, metadata !727, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i64 %total_bytes, metadata !728, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i8 %flags, metadata !729, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %max_age, metadata !730, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata %struct.lru_pull_tail_return* %ret_it, metadata !731, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !732, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %orig_id, metadata !733, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 0, metadata !734, metadata !DIExpression()), !dbg !750
  %cmp = icmp eq i32 %orig_id, 0, !dbg !751
  br i1 %cmp, label %if.then, label %if.end, !dbg !753

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 0), align 16, !dbg !754
  %0 = add i64 %gcov_ctr, 1, !dbg !754
  store i64 %0, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 0), align 16, !dbg !754
  br label %cleanup251, !dbg !754

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 5, metadata !735, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i8* null, metadata !738, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 0, metadata !739, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i64 0, metadata !740, metadata !DIExpression()), !dbg !750
  %or = or i32 %cur_lru, %orig_id, !dbg !755
  call void @llvm.dbg.value(metadata i32 %or, metadata !733, metadata !DIExpression()), !dbg !750
  %idxprom = sext i32 %or to i64, !dbg !756
  %arrayidx = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom, !dbg !756
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !757
  %arrayidx2 = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @tails, i64 0, i64 %idxprom, !dbg !758
  %1 = load %struct._stritem*, %struct._stritem** %arrayidx2, align 8, !dbg !758, !tbaa !759
  call void @llvm.dbg.value(metadata %struct._stritem* %1, metadata !736, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i64 0, metadata !740, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 0, metadata !739, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i8* null, metadata !738, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !732, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 5, metadata !735, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 0, metadata !734, metadata !DIExpression()), !dbg !750
  %lrutail_reflocked = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 10
  %tailrepairs = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 4
  %reclaimed = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 2
  %expired_unfetched = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 5
  %2 = tail call i32 @llvm.fshl.i32(i32 %cur_lru, i32 %cur_lru, i32 26), !dbg !750
  %cmp98 = icmp eq i32 %cur_lru, 64
  %moves_within_lru = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 13
  %3 = and i8 %flags, 2
  %tobool.not = icmp eq i8 %3, 0
  br label %land.rhs, !dbg !760

land.rhs:                                         ; preds = %if.end, %for.inc
  %limit.0466 = phi i64 [ 0, %if.end ], [ %limit.5, %for.inc ]
  %search.0463 = phi %struct._stritem* [ %1, %if.end ], [ %5, %for.inc ]
  %tries.0462 = phi i32 [ 5, %if.end ], [ %dec, %for.inc ]
  %removed.0460 = phi i32 [ 0, %if.end ], [ %removed.4, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %limit.0466, metadata !740, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i8* poison, metadata !738, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata %struct._stritem* %search.0463, metadata !736, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %tries.0462, metadata !735, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %removed.0460, metadata !734, metadata !DIExpression()), !dbg !750
  %gcov_ctr254 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 1), align 8, !dbg !761
  %4 = add i64 %gcov_ctr254, 1, !dbg !761
  store i64 %4, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 1), align 8, !dbg !761
  %cmp4.not = icmp eq %struct._stritem* %search.0463, null, !dbg !762
  br i1 %cmp4.not, label %for.end, label %for.body, !dbg !763

for.body:                                         ; preds = %land.rhs
  %prev = getelementptr inbounds %struct._stritem, %struct._stritem* %search.0463, i64 0, i32 1, !dbg !764
  %5 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !764, !tbaa !759
  call void @llvm.dbg.value(metadata %struct._stritem* %5, metadata !737, metadata !DIExpression()), !dbg !750
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %search.0463, i64 0, i32 5, !dbg !765
  %6 = load i32, i32* %nbytes, align 8, !dbg !765, !tbaa !625
  %cmp5 = icmp eq i32 %6, 0, !dbg !767
  br i1 %cmp5, label %land.lhs.true, label %for.body.if.end19_crit_edge, !dbg !768

for.body.if.end19_crit_edge:                      ; preds = %for.body
  %nkey24.phi.trans.insert = getelementptr inbounds %struct._stritem, %struct._stritem* %search.0463, i64 0, i32 9
  %.pre = load i8, i8* %nkey24.phi.trans.insert, align 1, !dbg !769, !tbaa !617
  br label %if.end19, !dbg !768

land.lhs.true:                                    ; preds = %for.body
  %gcov_ctr255 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 2), align 16, !dbg !770
  %7 = add i64 %gcov_ctr255, 1, !dbg !770
  store i64 %7, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 2), align 16, !dbg !770
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %search.0463, i64 0, i32 9, !dbg !771
  %8 = load i8, i8* %nkey, align 1, !dbg !771, !tbaa !617
  %cmp6 = icmp eq i8 %8, 0, !dbg !772
  br i1 %cmp6, label %land.lhs.true8, label %if.end19, !dbg !773

land.lhs.true8:                                   ; preds = %land.lhs.true
  %gcov_ctr256 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 3), align 8, !dbg !774
  %9 = add i64 %gcov_ctr256, 1, !dbg !774
  store i64 %9, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 3), align 8, !dbg !774
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %search.0463, i64 0, i32 7, !dbg !775
  %10 = load i16, i16* %it_flags, align 2, !dbg !775, !tbaa !615
  %cmp10 = icmp eq i16 %10, 1, !dbg !776
  br i1 %cmp10, label %if.then12, label %if.end19, !dbg !777

if.then12:                                        ; preds = %land.lhs.true8
  br i1 %tobool.not, label %if.end18, label %if.then14, !dbg !778

if.then14:                                        ; preds = %if.then12
  %gcov_ctr258 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 5), align 8, !dbg !780
  %11 = add i64 %gcov_ctr258, 1, !dbg !780
  store i64 %11, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 5), align 8, !dbg !780
  %call17 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !783
  br label %cleanup251, !dbg !784

if.end18:                                         ; preds = %if.then12
  %gcov_ctr257 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 4), align 16, !dbg !785
  %12 = add i64 %gcov_ctr257, 1, !dbg !785
  store i64 %12, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 4), align 16, !dbg !785
  %inc = add nuw nsw i32 %tries.0462, 1, !dbg !785
  call void @llvm.dbg.value(metadata i32 %inc, metadata !735, metadata !DIExpression()), !dbg !750
  br label %for.inc, !dbg !786

if.end19:                                         ; preds = %for.body.if.end19_crit_edge, %land.lhs.true8, %land.lhs.true
  %13 = phi i8 [ %.pre, %for.body.if.end19_crit_edge ], [ 0, %land.lhs.true8 ], [ %8, %land.lhs.true ], !dbg !769
  %14 = load i32 (i8*, i64)*, i32 (i8*, i64)** @hash, align 8, !dbg !787, !tbaa !759
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %search.0463, i64 0, i32 10, !dbg !788
  %15 = bitcast [0 x %union.anon]* %data to i8*, !dbg !788
  %it_flags20 = getelementptr inbounds %struct._stritem, %struct._stritem* %search.0463, i64 0, i32 7, !dbg !788
  %16 = load i16, i16* %it_flags20, align 2, !dbg !788, !tbaa !615
  %17 = shl i16 %16, 2, !dbg !788
  %18 = and i16 %17, 8, !dbg !788
  %19 = zext i16 %18 to i64, !dbg !788
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %19, !dbg !788
  %conv25 = zext i8 %13 to i64, !dbg !789
  %call26 = tail call i32 %14(i8* noundef nonnull %add.ptr, i64 noundef %conv25) #12, !dbg !787
  call void @llvm.dbg.value(metadata i32 %call26, metadata !741, metadata !DIExpression()), !dbg !790
  %call27 = tail call i8* @item_trylock(i32 noundef %call26) #12, !dbg !791
  call void @llvm.dbg.value(metadata i8* %call27, metadata !738, metadata !DIExpression()), !dbg !750
  %cmp28 = icmp eq i8* %call27, null, !dbg !793
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !794

if.then30:                                        ; preds = %if.end19
  %gcov_ctr259 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 6), align 16
  %20 = add i64 %gcov_ctr259, 1
  store i64 %20, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 6), align 16
  br label %for.inc, !dbg !795

if.end31:                                         ; preds = %if.end19
  %refcount = getelementptr inbounds %struct._stritem, %struct._stritem* %search.0463, i64 0, i32 6, !dbg !796
  %21 = load i16, i16* %refcount, align 4, !dbg !796, !tbaa !615
  %inc32 = add i16 %21, 1, !dbg !796
  store i16 %inc32, i16* %refcount, align 4, !dbg !796, !tbaa !615
  %cmp34.not = icmp eq i16 %inc32, 2, !dbg !798
  br i1 %cmp34.not, label %if.end50, label %if.then36, !dbg !799

if.then36:                                        ; preds = %if.end31
  %22 = load i64, i64* %lrutail_reflocked, align 8, !dbg !800, !tbaa !802
  %inc39 = add i64 %22, 1, !dbg !800
  store i64 %inc39, i64* %lrutail_reflocked, align 8, !dbg !800, !tbaa !802
  %23 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 37), align 4, !dbg !803, !tbaa !805
  %tobool40.not = icmp eq i32 %23, 0, !dbg !806
  br i1 %tobool40.not, label %if.end49, label %land.lhs.true41, !dbg !807

land.lhs.true41:                                  ; preds = %if.then36
  %gcov_ctr260 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 7), align 8, !dbg !808
  %24 = add i64 %gcov_ctr260, 1, !dbg !808
  store i64 %24, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 7), align 8, !dbg !808
  %time = getelementptr inbounds %struct._stritem, %struct._stritem* %search.0463, i64 0, i32 3, !dbg !809
  %25 = load i32, i32* %time, align 8, !dbg !809, !tbaa !625
  %add = add i32 %25, %23, !dbg !810
  %26 = load volatile i32, i32* @current_time, align 4, !dbg !811, !tbaa !625
  %cmp42 = icmp ult i32 %add, %26, !dbg !812
  br i1 %cmp42, label %if.then44, label %if.end49, !dbg !813

if.then44:                                        ; preds = %land.lhs.true41
  %27 = load i64, i64* %tailrepairs, align 8, !dbg !814, !tbaa !816
  %inc47 = add i64 %27, 1, !dbg !814
  store i64 %inc47, i64* %tailrepairs, align 8, !dbg !814, !tbaa !816
  store i16 1, i16* %refcount, align 4, !dbg !817, !tbaa !615
  %28 = load i8*, i8** @ext_storage, align 8, !dbg !818, !tbaa !759
  tail call void @storage_delete(i8* noundef %28, %struct._stritem* noundef nonnull %search.0463) #12, !dbg !818
  %gcov_ctr261 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 8), align 16, !dbg !820
  %29 = add i64 %gcov_ctr261, 1, !dbg !820
  store i64 %29, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 8), align 16, !dbg !820
  tail call void @do_item_unlink_nolock(%struct._stritem* noundef nonnull %search.0463, i32 noundef %call26) #13, !dbg !821
  tail call void @item_trylock_unlock(i8* noundef nonnull %call27) #12, !dbg !822
  br label %for.inc, !dbg !823

if.end49:                                         ; preds = %land.lhs.true41, %if.then36
  %gcov_ctr262 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 9), align 8, !dbg !824
  %30 = add i64 %gcov_ctr262, 1, !dbg !824
  store i64 %30, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 9), align 8, !dbg !824
  br label %if.end50, !dbg !824

if.end50:                                         ; preds = %if.end49, %if.end31
  %exptime = getelementptr inbounds %struct._stritem, %struct._stritem* %search.0463, i64 0, i32 4, !dbg !825
  %31 = load i32, i32* %exptime, align 4, !dbg !825, !tbaa !625
  %cmp51.not = icmp eq i32 %31, 0, !dbg !827
  br i1 %cmp51.not, label %lor.lhs.false, label %land.lhs.true53, !dbg !828

land.lhs.true53:                                  ; preds = %if.end50
  %gcov_ctr263 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 10), align 16, !dbg !829
  %32 = add i64 %gcov_ctr263, 1, !dbg !829
  store i64 %32, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 10), align 16, !dbg !829
  %33 = load i32, i32* %exptime, align 4, !dbg !830, !tbaa !625
  %34 = load volatile i32, i32* @current_time, align 4, !dbg !831, !tbaa !625
  %cmp55 = icmp ult i32 %33, %34, !dbg !832
  br i1 %cmp55, label %if.then59, label %lor.lhs.false, !dbg !833

lor.lhs.false:                                    ; preds = %land.lhs.true53, %if.end50
  %call57 = tail call i32 @item_is_flushed(%struct._stritem* noundef nonnull %search.0463) #13, !dbg !834
  %tobool58.not = icmp eq i32 %call57, 0, !dbg !834
  br i1 %tobool58.not, label %if.end77, label %if.then59, !dbg !835

if.then59:                                        ; preds = %lor.lhs.false, %land.lhs.true53
  %35 = load i64, i64* %reclaimed, align 8, !dbg !836, !tbaa !838
  %inc62 = add i64 %35, 1, !dbg !836
  store i64 %inc62, i64* %reclaimed, align 8, !dbg !836, !tbaa !838
  %36 = load i16, i16* %it_flags20, align 2, !dbg !839, !tbaa !615
  %37 = and i16 %36, 8, !dbg !841
  %cmp66 = icmp eq i16 %37, 0, !dbg !842
  br i1 %cmp66, label %if.then68, label %if.end72, !dbg !843

if.then68:                                        ; preds = %if.then59
  %gcov_ctr264 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 11), align 8, !dbg !844
  %38 = add i64 %gcov_ctr264, 1, !dbg !844
  store i64 %38, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 11), align 8, !dbg !844
  %39 = load i64, i64* %expired_unfetched, align 8, !dbg !846, !tbaa !573
  %inc71 = add i64 %39, 1, !dbg !846
  store i64 %inc71, i64* %expired_unfetched, align 8, !dbg !846, !tbaa !573
  br label %if.end72, !dbg !847

if.end72:                                         ; preds = %if.then68, %if.then59
  tail call void @do_item_unlink_nolock(%struct._stritem* noundef nonnull %search.0463, i32 noundef %call26) #13, !dbg !848
  %40 = load i8*, i8** @ext_storage, align 8, !dbg !849, !tbaa !759
  tail call void @storage_delete(i8* noundef %40, %struct._stritem* noundef nonnull %search.0463) #12, !dbg !849
  %gcov_ctr265 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 12), align 16, !dbg !851
  %41 = add i64 %gcov_ctr265, 1, !dbg !851
  store i64 %41, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 12), align 16, !dbg !851
  tail call void @do_item_remove(%struct._stritem* noundef nonnull %search.0463) #13, !dbg !852
  tail call void @item_trylock_unlock(i8* noundef nonnull %call27) #12, !dbg !853
  %inc76 = add nsw i32 %removed.0460, 1, !dbg !854
  call void @llvm.dbg.value(metadata i32 %inc76, metadata !734, metadata !DIExpression()), !dbg !750
  br label %for.inc, !dbg !855

if.end77:                                         ; preds = %lor.lhs.false
  switch i32 %2, label %cleanup.cont [
    i32 0, label %sw.bb
    i32 1, label %sw.bb79
    i32 2, label %sw.bb125
    i32 3, label %sw.bb216
  ], !dbg !856

sw.bb:                                            ; preds = %if.end77
  %gcov_ctr266 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 13), align 8, !dbg !857
  %42 = add i64 %gcov_ctr266, 1, !dbg !857
  store i64 %42, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 13), align 8, !dbg !857
  %43 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 43), align 8, !dbg !858, !tbaa !859
  %conv78 = sext i32 %43 to i64, !dbg !860
  %mul = mul i64 %conv78, %total_bytes, !dbg !861
  %div = udiv i64 %mul, 100, !dbg !862
  call void @llvm.dbg.value(metadata i64 %div, metadata !740, metadata !DIExpression()), !dbg !750
  br label %sw.bb79, !dbg !863

sw.bb79:                                          ; preds = %if.end77, %sw.bb
  %limit.1 = phi i64 [ %limit.0466, %if.end77 ], [ %div, %sw.bb ], !dbg !750
  call void @llvm.dbg.value(metadata i64 %limit.1, metadata !740, metadata !DIExpression()), !dbg !750
  %cmp80 = icmp eq i64 %limit.1, 0, !dbg !864
  br i1 %cmp80, label %if.then82, label %if.end86, !dbg !866

if.then82:                                        ; preds = %sw.bb79
  %gcov_ctr267 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 14), align 16, !dbg !867
  %44 = add i64 %gcov_ctr267, 1, !dbg !867
  store i64 %44, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 14), align 16, !dbg !867
  %45 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 44), align 4, !dbg !868, !tbaa !869
  %conv83 = sext i32 %45 to i64, !dbg !870
  %mul84 = mul i64 %conv83, %total_bytes, !dbg !871
  %div85 = udiv i64 %mul84, 100, !dbg !872
  call void @llvm.dbg.value(metadata i64 %div85, metadata !740, metadata !DIExpression()), !dbg !750
  br label %if.end86, !dbg !873

if.end86:                                         ; preds = %if.then82, %sw.bb79
  %limit.2 = phi i64 [ %div85, %if.then82 ], [ %limit.1, %sw.bb79 ], !dbg !750
  call void @llvm.dbg.value(metadata i64 %limit.2, metadata !740, metadata !DIExpression()), !dbg !750
  %46 = load i16, i16* %it_flags20, align 2, !dbg !874, !tbaa !615
  %47 = and i16 %46, 16, !dbg !876
  %cmp90.not = icmp eq i16 %47, 0, !dbg !877
  br i1 %cmp90.not, label %if.else108, label %if.then92, !dbg !878

if.then92:                                        ; preds = %if.end86
  %and95 = and i16 %46, -17, !dbg !879
  store i16 %and95, i16* %it_flags20, align 2, !dbg !879, !tbaa !615
  %inc97 = add nsw i32 %removed.0460, 1, !dbg !881
  call void @llvm.dbg.value(metadata i32 %inc97, metadata !734, metadata !DIExpression()), !dbg !750
  br i1 %cmp98, label %if.then100, label %if.else, !dbg !882

if.then100:                                       ; preds = %if.then92
  %gcov_ctr268 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 15), align 8, !dbg !883
  %48 = add i64 %gcov_ctr268, 1, !dbg !883
  store i64 %48, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 15), align 8, !dbg !883
  %49 = load i64, i64* %moves_within_lru, align 8, !dbg !886, !tbaa !887
  %inc103 = add i64 %49, 1, !dbg !886
  store i64 %inc103, i64* %moves_within_lru, align 8, !dbg !886, !tbaa !887
  tail call fastcc void @do_item_unlink_q(%struct._stritem* noundef nonnull %search.0463) #13, !dbg !888
  tail call fastcc void @do_item_link_q(%struct._stritem* noundef nonnull %search.0463) #13, !dbg !889
  tail call void @do_item_remove(%struct._stritem* noundef nonnull %search.0463) #13, !dbg !890
  tail call void @item_trylock_unlock(i8* noundef nonnull %call27) #12, !dbg !891
  br label %cleanup.cont, !dbg !892

if.else:                                          ; preds = %if.then92
  %gcov_ctr269 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 16), align 16, !dbg !893
  %50 = add i64 %gcov_ctr269, 1, !dbg !893
  store i64 %50, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 16), align 16, !dbg !893
  %moves_to_warm = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 12, !dbg !895
  %51 = load i64, i64* %moves_to_warm, align 8, !dbg !896, !tbaa !897
  %inc106 = add i64 %51, 1, !dbg !896
  store i64 %inc106, i64* %moves_to_warm, align 8, !dbg !896, !tbaa !897
  call void @llvm.dbg.value(metadata i32 64, metadata !739, metadata !DIExpression()), !dbg !750
  tail call fastcc void @do_item_unlink_q(%struct._stritem* noundef nonnull %search.0463) #13, !dbg !898
  call void @llvm.dbg.value(metadata %struct._stritem* %search.0463, metadata !732, metadata !DIExpression()), !dbg !750
  br label %for.end.thread

if.else108:                                       ; preds = %if.end86
  %arrayidx110 = getelementptr inbounds [256 x i64], [256 x i64]* @sizes_bytes, i64 0, i64 %idxprom, !dbg !899
  %52 = load i64, i64* %arrayidx110, align 8, !dbg !899, !tbaa !585
  %cmp111 = icmp ugt i64 %52, %limit.2, !dbg !901
  br i1 %cmp111, label %if.then117, label %lor.lhs.false113, !dbg !902

lor.lhs.false113:                                 ; preds = %if.else108
  %gcov_ctr270 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 17), align 8, !dbg !903
  %53 = add i64 %gcov_ctr270, 1, !dbg !903
  store i64 %53, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 17), align 8, !dbg !903
  %54 = load volatile i32, i32* @current_time, align 4, !dbg !903, !tbaa !625
  %time114 = getelementptr inbounds %struct._stritem, %struct._stritem* %search.0463, i64 0, i32 3, !dbg !904
  %55 = load i32, i32* %time114, align 8, !dbg !904, !tbaa !625
  %sub = sub i32 %54, %55, !dbg !905
  %cmp115 = icmp ugt i32 %sub, %max_age, !dbg !906
  br i1 %cmp115, label %if.then117, label %if.else122, !dbg !907

if.then117:                                       ; preds = %lor.lhs.false113, %if.else108
  %gcov_ctr271 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 18), align 16, !dbg !908
  %56 = add i64 %gcov_ctr271, 1, !dbg !908
  store i64 %56, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 18), align 16, !dbg !908
  %moves_to_cold = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 11, !dbg !910
  %57 = load i64, i64* %moves_to_cold, align 8, !dbg !911, !tbaa !912
  %inc120 = add i64 %57, 1, !dbg !911
  store i64 %inc120, i64* %moves_to_cold, align 8, !dbg !911, !tbaa !912
  call void @llvm.dbg.value(metadata i32 128, metadata !739, metadata !DIExpression()), !dbg !750
  tail call fastcc void @do_item_unlink_q(%struct._stritem* noundef nonnull %search.0463) #13, !dbg !913
  call void @llvm.dbg.value(metadata %struct._stritem* %search.0463, metadata !732, metadata !DIExpression()), !dbg !750
  %inc121 = add nsw i32 %removed.0460, 1, !dbg !914
  call void @llvm.dbg.value(metadata i32 %inc121, metadata !734, metadata !DIExpression()), !dbg !750
  br label %for.end.thread, !dbg !915

if.else122:                                       ; preds = %lor.lhs.false113
  call void @llvm.dbg.value(metadata %struct._stritem* %search.0463, metadata !732, metadata !DIExpression()), !dbg !750
  %gcov_ctr272 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 19), align 8
  %58 = add i64 %gcov_ctr272, 1
  store i64 %58, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 19), align 8
  br label %for.end.thread

sw.bb125:                                         ; preds = %if.end77
  call void @llvm.dbg.value(metadata %struct._stritem* %search.0463, metadata !732, metadata !DIExpression()), !dbg !750
  %conv126 = zext i8 %flags to i32, !dbg !916
  %and127 = and i32 %conv126, 1, !dbg !917
  %tobool128.not = icmp eq i32 %and127, 0, !dbg !917
  br i1 %tobool128.not, label %if.else187, label %if.then129, !dbg !918

if.then129:                                       ; preds = %sw.bb125
  %59 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 8), align 8, !dbg !919, !tbaa !921
  %cmp130 = icmp eq i32 %59, 0, !dbg !922
  br i1 %cmp130, label %if.then132, label %if.end133, !dbg !923

if.then132:                                       ; preds = %if.then129
  %gcov_ctr274 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 21), align 8, !dbg !924
  %60 = add i64 %gcov_ctr274, 1, !dbg !924
  store i64 %60, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 21), align 8, !dbg !924
  br label %for.end.thread, !dbg !924

if.end133:                                        ; preds = %if.then129
  %gcov_ctr273 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 20), align 16, !dbg !926
  %61 = add i64 %gcov_ctr273, 1, !dbg !926
  store i64 %61, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 20), align 16, !dbg !926
  %evicted = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 0, !dbg !927
  %62 = load i64, i64* %evicted, align 8, !dbg !928, !tbaa !929
  %inc136 = add i64 %62, 1, !dbg !928
  store i64 %inc136, i64* %evicted, align 8, !dbg !928, !tbaa !929
  %63 = load volatile i32, i32* @current_time, align 4, !dbg !930, !tbaa !625
  %time137 = getelementptr inbounds %struct._stritem, %struct._stritem* %search.0463, i64 0, i32 3, !dbg !931
  %64 = load i32, i32* %time137, align 8, !dbg !931, !tbaa !625
  %sub138 = sub i32 %63, %64, !dbg !932
  %evicted_time = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 20, !dbg !933
  store i32 %sub138, i32* %evicted_time, align 8, !dbg !934, !tbaa !935
  %65 = load i32, i32* %exptime, align 4, !dbg !936, !tbaa !625
  %cmp142.not = icmp eq i32 %65, 0, !dbg !938
  br i1 %cmp142.not, label %if.end148, label %if.then144, !dbg !939

if.then144:                                       ; preds = %if.end133
  %gcov_ctr275 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 22), align 16, !dbg !940
  %66 = add i64 %gcov_ctr275, 1, !dbg !940
  store i64 %66, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 22), align 16, !dbg !940
  %evicted_nonzero = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 1, !dbg !941
  %67 = load i64, i64* %evicted_nonzero, align 8, !dbg !942, !tbaa !943
  %inc147 = add i64 %67, 1, !dbg !942
  store i64 %inc147, i64* %evicted_nonzero, align 8, !dbg !942, !tbaa !943
  br label %if.end148, !dbg !944

if.end148:                                        ; preds = %if.then144, %if.end133
  %68 = load i16, i16* %it_flags20, align 2, !dbg !945, !tbaa !615
  %69 = and i16 %68, 8, !dbg !947
  %cmp152 = icmp eq i16 %69, 0, !dbg !948
  br i1 %cmp152, label %if.then154, label %if.end158, !dbg !949

if.then154:                                       ; preds = %if.end148
  %gcov_ctr276 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 23), align 8, !dbg !950
  %70 = add i64 %gcov_ctr276, 1, !dbg !950
  store i64 %70, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 23), align 8, !dbg !950
  %evicted_unfetched = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 6, !dbg !952
  %71 = load i64, i64* %evicted_unfetched, align 8, !dbg !953, !tbaa !954
  %inc157 = add i64 %71, 1, !dbg !953
  store i64 %inc157, i64* %evicted_unfetched, align 8, !dbg !953, !tbaa !954
  %.pre493 = load i16, i16* %it_flags20, align 2, !dbg !955, !tbaa !615
  br label %if.end158, !dbg !957

if.end158:                                        ; preds = %if.then154, %if.end148
  %72 = phi i16 [ %.pre493, %if.then154 ], [ %68, %if.end148 ], !dbg !955
  %73 = and i16 %72, 16, !dbg !958
  %tobool162.not = icmp eq i16 %73, 0, !dbg !958
  br i1 %tobool162.not, label %do.body168, label %if.then163, !dbg !959

if.then163:                                       ; preds = %if.end158
  %gcov_ctr277 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 24), align 16, !dbg !960
  %74 = add i64 %gcov_ctr277, 1, !dbg !960
  store i64 %74, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 24), align 16, !dbg !960
  %evicted_active = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 7, !dbg !962
  %75 = load i64, i64* %evicted_active, align 8, !dbg !963, !tbaa !964
  %inc166 = add i64 %75, 1, !dbg !963
  store i64 %inc166, i64* %evicted_active, align 8, !dbg !963, !tbaa !964
  br label %do.body168, !dbg !965

do.body168:                                       ; preds = %if.end158, %if.then163
  call void @llvm.dbg.value(metadata %struct._logger* null, metadata !745, metadata !DIExpression()), !dbg !966
  %76 = load i32, i32* @logger_key, align 4, !dbg !967, !tbaa !625
  %call169 = tail call i8* @pthread_getspecific(i32 noundef %76) #12, !dbg !967
  call void @llvm.dbg.value(metadata i8* %call169, metadata !745, metadata !DIExpression()), !dbg !966
  %eflags = getelementptr inbounds i8, i8* %call169, i64 84, !dbg !969
  %77 = bitcast i8* %eflags to i16*, !dbg !969
  %78 = load i16, i16* %77, align 4, !dbg !969, !tbaa !971
  %79 = and i16 %78, 64, !dbg !969
  %tobool172.not = icmp eq i16 %79, 0, !dbg !969
  br i1 %tobool172.not, label %if.end175, label %if.then173, !dbg !973

if.then173:                                       ; preds = %do.body168
  %80 = bitcast i8* %call169 to %struct._logger*, !dbg !967
  call void @llvm.dbg.value(metadata %struct._logger* %80, metadata !745, metadata !DIExpression()), !dbg !966
  %gcov_ctr278 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 25), align 8, !dbg !969
  %81 = add i64 %gcov_ctr278, 1, !dbg !969
  store i64 %81, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 25), align 8, !dbg !969
  %82 = bitcast %struct._stritem* %search.0463 to i8*, !dbg !969
  %call174 = tail call i32 (%struct._logger*, i32, i8*, ...) @logger_log(%struct._logger* noundef %80, i32 noundef 1, i8* noundef nonnull %82) #12, !dbg !969
  br label %if.end175, !dbg !969

if.end175:                                        ; preds = %if.then173, %do.body168
  %83 = load i8*, i8** @ext_storage, align 8, !dbg !974, !tbaa !759
  tail call void @storage_delete(i8* noundef %83, %struct._stritem* noundef nonnull %search.0463) #12, !dbg !974
  tail call void @do_item_unlink_nolock(%struct._stritem* noundef nonnull %search.0463, i32 noundef %call26) #13, !dbg !976
  %inc181 = add nsw i32 %removed.0460, 1, !dbg !977
  call void @llvm.dbg.value(metadata i32 %inc181, metadata !734, metadata !DIExpression()), !dbg !750
  %84 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 32), align 4, !dbg !978, !tbaa !980
  %cmp182 = icmp eq i32 %84, 2, !dbg !981
  br i1 %cmp182, label %if.then184, label %for.end.thread, !dbg !982

if.then184:                                       ; preds = %if.end175
  %gcov_ctr279 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 26), align 16, !dbg !983
  %85 = add i64 %gcov_ctr279, 1, !dbg !983
  store i64 %85, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 26), align 16, !dbg !983
  %call185 = tail call i32 @slabs_reassign(i32 noundef -1, i32 noundef %orig_id) #12, !dbg !985
  br label %for.end.thread, !dbg !986

if.else187:                                       ; preds = %sw.bb125
  %and189 = and i32 %conv126, 4, !dbg !987
  %tobool190.not = icmp eq i32 %and189, 0, !dbg !987
  br i1 %tobool190.not, label %if.else194, label %if.then191, !dbg !989

if.then191:                                       ; preds = %if.else187
  %gcov_ctr280 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 27), align 8, !dbg !990
  %86 = add i64 %gcov_ctr280, 1, !dbg !990
  store i64 %86, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 27), align 8, !dbg !990
  %it192 = getelementptr inbounds %struct.lru_pull_tail_return, %struct.lru_pull_tail_return* %ret_it, i64 0, i32 0, !dbg !992
  store %struct._stritem* %search.0463, %struct._stritem** %it192, align 8, !dbg !993, !tbaa !994
  %hv193 = getelementptr inbounds %struct.lru_pull_tail_return, %struct.lru_pull_tail_return* %ret_it, i64 0, i32 1, !dbg !996
  store i32 %call26, i32* %hv193, align 8, !dbg !997, !tbaa !998
  br label %for.end.thread, !dbg !999

if.else194:                                       ; preds = %if.else187
  %87 = load i16, i16* %it_flags20, align 2, !dbg !1000, !tbaa !615
  %88 = and i16 %87, 16, !dbg !1002
  %cmp198.not = icmp eq i16 %88, 0, !dbg !1003
  br i1 %cmp198.not, label %if.end213, label %land.lhs.true200, !dbg !1004

land.lhs.true200:                                 ; preds = %if.else194
  %gcov_ctr281 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 28), align 16, !dbg !1005
  %89 = add i64 %gcov_ctr281, 1, !dbg !1005
  store i64 %89, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 28), align 16, !dbg !1005
  %90 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 30), align 8, !dbg !1005, !tbaa !670, !range !671
  %tobool201.not = icmp eq i8 %90, 0, !dbg !1005
  br i1 %tobool201.not, label %if.end213, label %if.then203, !dbg !1006

if.then203:                                       ; preds = %land.lhs.true200
  %gcov_ctr282 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 29), align 8, !dbg !1007
  %91 = add i64 %gcov_ctr282, 1, !dbg !1007
  store i64 %91, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 29), align 8, !dbg !1007
  %moves_to_warm206 = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 12, !dbg !1009
  %92 = load i64, i64* %moves_to_warm206, align 8, !dbg !1010, !tbaa !897
  %inc207 = add i64 %92, 1, !dbg !1010
  store i64 %inc207, i64* %moves_to_warm206, align 8, !dbg !1010, !tbaa !897
  %93 = load i16, i16* %it_flags20, align 2, !dbg !1011, !tbaa !615
  %94 = and i16 %93, -17, !dbg !1011
  store i16 %94, i16* %it_flags20, align 2, !dbg !1011, !tbaa !615
  call void @llvm.dbg.value(metadata i32 64, metadata !739, metadata !DIExpression()), !dbg !750
  tail call fastcc void @do_item_unlink_q(%struct._stritem* noundef nonnull %search.0463) #13, !dbg !1012
  %inc212 = add nsw i32 %removed.0460, 1, !dbg !1013
  call void @llvm.dbg.value(metadata i32 %inc212, metadata !734, metadata !DIExpression()), !dbg !750
  br label %if.end213, !dbg !1014

if.end213:                                        ; preds = %if.then203, %land.lhs.true200, %if.else194
  %removed.1 = phi i32 [ %inc212, %if.then203 ], [ %removed.0460, %land.lhs.true200 ], [ %removed.0460, %if.else194 ], !dbg !750
  %move_to_lru.1 = phi i32 [ 64, %if.then203 ], [ 0, %land.lhs.true200 ], [ 0, %if.else194 ], !dbg !750
  call void @llvm.dbg.value(metadata i32 %move_to_lru.1, metadata !739, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %removed.1, metadata !734, metadata !DIExpression()), !dbg !750
  %gcov_ctr283 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 30), align 16
  %95 = add i64 %gcov_ctr283, 1
  store i64 %95, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 30), align 16
  br label %for.end.thread

sw.bb216:                                         ; preds = %if.end77
  %gcov_ctr284 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 31), align 8, !dbg !1015
  %96 = add i64 %gcov_ctr284, 1, !dbg !1015
  store i64 %96, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 31), align 8, !dbg !1015
  call void @llvm.dbg.value(metadata %struct._stritem* %search.0463, metadata !732, metadata !DIExpression()), !dbg !750
  br label %for.end.thread, !dbg !1016

for.end.thread:                                   ; preds = %sw.bb216, %if.then132, %if.then184, %if.end175, %if.then191, %if.end213, %if.else, %if.then117, %if.else122
  %move_to_lru.2405 = phi i32 [ 0, %if.else122 ], [ 128, %if.then117 ], [ 64, %if.else ], [ %move_to_lru.1, %if.end213 ], [ 0, %if.then191 ], [ 0, %if.end175 ], [ 0, %if.then184 ], [ 0, %if.then132 ], [ 0, %sw.bb216 ]
  %removed.2403 = phi i32 [ %removed.0460, %if.else122 ], [ %inc121, %if.then117 ], [ %inc97, %if.else ], [ %removed.1, %if.end213 ], [ %removed.0460, %if.then191 ], [ %inc181, %if.end175 ], [ %inc181, %if.then184 ], [ %removed.0460, %if.then132 ], [ %removed.0460, %sw.bb216 ]
  %gcov_ctr285 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 32), align 16
  %97 = add i64 %gcov_ctr285, 1
  store i64 %97, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 32), align 16
  call void @llvm.dbg.value(metadata i64 undef, metadata !740, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 0, metadata !739, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i8* undef, metadata !738, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !732, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 undef, metadata !734, metadata !DIExpression()), !dbg !750
  %call223426 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !1017
  %gcov_ctr290 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 37), align 8, !dbg !1018
  %98 = add i64 %gcov_ctr290, 1, !dbg !1018
  store i64 %98, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 37), align 8, !dbg !1018
  %tobool227.not = icmp eq i32 %move_to_lru.2405, 0, !dbg !1018
  br i1 %tobool227.not, label %if.end237, label %if.then228, !dbg !1022

cleanup.cont:                                     ; preds = %if.end77, %if.then100
  %removed.2 = phi i32 [ %removed.0460, %if.end77 ], [ %inc97, %if.then100 ], !dbg !750
  %limit.3 = phi i64 [ %limit.0466, %if.end77 ], [ %limit.2, %if.then100 ], !dbg !750
  call void @llvm.dbg.value(metadata i64 %limit.3, metadata !740, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 0, metadata !739, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !732, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %removed.2, metadata !734, metadata !DIExpression()), !dbg !750
  %gcov_ctr286 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 33), align 8, !dbg !1023
  %99 = add i64 %gcov_ctr286, 1, !dbg !1023
  store i64 %99, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 33), align 8, !dbg !1023
  call void @llvm.dbg.value(metadata i64 undef, metadata !740, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %move_to_lru.2405, metadata !739, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata %struct._stritem* undef, metadata !732, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %removed.2403, metadata !734, metadata !DIExpression()), !dbg !750
  %gcov_ctr288 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 35), align 8, !dbg !1024
  %100 = add i64 %gcov_ctr288, 1, !dbg !1024
  store i64 %100, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 35), align 8, !dbg !1024
  br label %for.inc, !dbg !1024

for.inc:                                          ; preds = %if.end72, %if.then44, %if.then30, %cleanup.cont, %if.end18
  %removed.4 = phi i32 [ %removed.0460, %if.end18 ], [ %removed.2, %cleanup.cont ], [ %inc76, %if.end72 ], [ %removed.0460, %if.then44 ], [ %removed.0460, %if.then30 ], !dbg !1025
  %tries.1 = phi i32 [ %inc, %if.end18 ], [ %tries.0462, %cleanup.cont ], [ %tries.0462, %if.end72 ], [ %tries.0462, %if.then44 ], [ %tries.0462, %if.then30 ], !dbg !750
  %limit.5 = phi i64 [ %limit.0466, %if.end18 ], [ %limit.3, %cleanup.cont ], [ %limit.0466, %if.end72 ], [ %limit.0466, %if.then44 ], [ %limit.0466, %if.then30 ], !dbg !1026
  call void @llvm.dbg.value(metadata i64 %limit.5, metadata !740, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 undef, metadata !739, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i8* undef, metadata !738, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata %struct._stritem* undef, metadata !732, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %tries.1, metadata !735, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %removed.4, metadata !734, metadata !DIExpression()), !dbg !750
  %gcov_ctr289 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 36), align 16, !dbg !1027
  %101 = add i64 %gcov_ctr289, 1, !dbg !1027
  store i64 %101, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 36), align 16, !dbg !1027
  %dec = add nsw i32 %tries.1, -1, !dbg !1027
  call void @llvm.dbg.value(metadata i32 0, metadata !739, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !732, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata %struct._stritem* %5, metadata !736, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %dec, metadata !735, metadata !DIExpression()), !dbg !750
  %cmp3 = icmp sgt i32 %tries.1, 1, !dbg !1028
  br i1 %cmp3, label %land.rhs, label %for.end, !dbg !760, !llvm.loop !1029

for.end:                                          ; preds = %for.inc, %land.rhs
  %removed.0.lcssa = phi i32 [ %removed.4, %for.inc ], [ %removed.0460, %land.rhs ], !dbg !1025
  call void @llvm.dbg.value(metadata i32 0, metadata !739, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i8* undef, metadata !738, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !732, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %removed.0.lcssa, metadata !734, metadata !DIExpression()), !dbg !750
  %call223 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !1017
  br label %if.end244, !dbg !1031

if.then228:                                       ; preds = %for.end.thread
  %gcov_ctr291 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 38), align 16, !dbg !1032
  %102 = add i64 %gcov_ctr291, 1, !dbg !1032
  store i64 %102, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 38), align 16, !dbg !1032
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %search.0463, i64 0, i32 8, !dbg !1032
  %103 = load i8, i8* %slabs_clsid, align 8, !dbg !1032, !tbaa !617
  %104 = and i8 %103, 63, !dbg !1032
  %105 = trunc i32 %move_to_lru.2405 to i8, !dbg !1034
  %conv236 = or i8 %104, %105, !dbg !1034
  store i8 %conv236, i8* %slabs_clsid, align 8, !dbg !1034, !tbaa !617
  tail call fastcc void @item_link_q(%struct._stritem* noundef nonnull %search.0463) #13, !dbg !1035
  br label %if.end237, !dbg !1036

if.end237:                                        ; preds = %if.then228, %for.end.thread
  %106 = and i8 %flags, 4, !dbg !1037
  %cmp240 = icmp eq i8 %106, 0, !dbg !1039
  br i1 %cmp240, label %if.then242, label %if.end244, !dbg !1040

if.then242:                                       ; preds = %if.end237
  %gcov_ctr292 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 39), align 8, !dbg !1041
  %107 = add i64 %gcov_ctr292, 1, !dbg !1041
  store i64 %107, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 39), align 8, !dbg !1041
  tail call void @do_item_remove(%struct._stritem* noundef nonnull %search.0463) #13, !dbg !1043
  tail call void @item_trylock_unlock(i8* noundef nonnull %call27) #12, !dbg !1044
  br label %if.end244, !dbg !1045

if.end244:                                        ; preds = %for.end, %if.end237, %if.then242
  %removed.5429 = phi i32 [ %removed.2403, %if.end237 ], [ %removed.2403, %if.then242 ], [ %removed.0.lcssa, %for.end ]
  %gcov_ctr293 = load i64, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 40), align 16, !dbg !1046
  %108 = add i64 %gcov_ctr293, 1, !dbg !1046
  store i64 %108, i64* getelementptr inbounds ([41 x i64], [41 x i64]* @__llvm_gcov_ctr.92, i64 0, i64 40), align 16, !dbg !1046
  br label %cleanup251, !dbg !1047

cleanup251:                                       ; preds = %if.then14, %if.end244, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.then14 ], [ %removed.5429, %if.end244 ], !dbg !750
  ret i32 %retval.1, !dbg !1048
}

declare !dbg !1049 dso_local i8* @slabs_alloc(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._strchunk* @do_item_alloc_chunk(%struct._strchunk* noundef %ch, i64 noundef %bytes_remain) local_unnamed_addr #0 !dbg !1052 {
entry:
  call void @llvm.dbg.value(metadata %struct._strchunk* %ch, metadata !1056, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i64 %bytes_remain, metadata !1057, metadata !DIExpression()), !dbg !1061
  %add = add i64 %bytes_remain, 48, !dbg !1062
  call void @llvm.dbg.value(metadata i64 %add, metadata !1058, metadata !DIExpression()), !dbg !1061
  %0 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 23), align 8, !dbg !1063, !tbaa !1065
  %conv = sext i32 %0 to i64, !dbg !1066
  %cmp = icmp ugt i64 %add, %conv, !dbg !1067
  br i1 %cmp, label %if.then, label %if.end, !dbg !1068

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.93, i64 0, i64 0), align 16, !dbg !1069
  %1 = add i64 %gcov_ctr, 1, !dbg !1069
  store i64 %1, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.93, i64 0, i64 0), align 16, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %conv, metadata !1058, metadata !DIExpression()), !dbg !1061
  br label %if.end, !dbg !1070

if.end:                                           ; preds = %if.then, %entry
  %size.0 = phi i64 [ %conv, %if.then ], [ %add, %entry ], !dbg !1061
  call void @llvm.dbg.value(metadata i64 %size.0, metadata !1058, metadata !DIExpression()), !dbg !1061
  %call = tail call i32 @slabs_clsid(i64 noundef %size.0) #12, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %call, metadata !1059, metadata !DIExpression()), !dbg !1061
  %call3 = tail call %struct._stritem* @do_item_alloc_pull(i64 noundef %size.0, i32 noundef %call) #13, !dbg !1072
  call void @llvm.dbg.value(metadata %struct._stritem* %call3, metadata !1060, metadata !DIExpression()), !dbg !1061
  %cmp4 = icmp eq %struct._stritem* %call3, null, !dbg !1073
  br i1 %cmp4, label %if.then6, label %if.end19, !dbg !1075

if.then6:                                         ; preds = %if.end
  %2 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 23), align 8, !dbg !1076, !tbaa !1065
  %conv7 = sext i32 %2 to i64, !dbg !1079
  %cmp8 = icmp eq i64 %size.0, %conv7, !dbg !1080
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !1081

if.then10:                                        ; preds = %if.then6
  %gcov_ctr29 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.93, i64 0, i64 1), align 8, !dbg !1082
  %3 = add i64 %gcov_ctr29, 1, !dbg !1082
  store i64 %3, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.93, i64 0, i64 1), align 8, !dbg !1082
  br label %cleanup, !dbg !1082

if.else:                                          ; preds = %if.then6
  call void @llvm.dbg.value(metadata i64 %conv7, metadata !1058, metadata !DIExpression()), !dbg !1061
  %call12 = tail call i32 @slabs_clsid(i64 noundef %conv7) #12, !dbg !1084
  call void @llvm.dbg.value(metadata i32 %call12, metadata !1059, metadata !DIExpression()), !dbg !1061
  %call13 = tail call %struct._stritem* @do_item_alloc_pull(i64 noundef %conv7, i32 noundef %call12) #13, !dbg !1086
  call void @llvm.dbg.value(metadata %struct._stritem* %call13, metadata !1060, metadata !DIExpression()), !dbg !1061
  %cmp14 = icmp eq %struct._stritem* %call13, null, !dbg !1087
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !1089

if.then16:                                        ; preds = %if.else
  %gcov_ctr30 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.93, i64 0, i64 2), align 16, !dbg !1090
  %4 = add i64 %gcov_ctr30, 1, !dbg !1090
  store i64 %4, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.93, i64 0, i64 2), align 16, !dbg !1090
  br label %cleanup, !dbg !1090

if.end18:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct._stritem* %call13, metadata !1060, metadata !DIExpression()), !dbg !1061
  %gcov_ctr31 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.93, i64 0, i64 3), align 8, !dbg !1091
  %5 = add i64 %gcov_ctr31, 1, !dbg !1091
  store i64 %5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.93, i64 0, i64 3), align 8, !dbg !1091
  br label %if.end19, !dbg !1091

if.end19:                                         ; preds = %if.end18, %if.end
  %size.1 = phi i64 [ %conv7, %if.end18 ], [ %size.0, %if.end ], !dbg !1061
  %id.0 = phi i32 [ %call12, %if.end18 ], [ %call, %if.end ], !dbg !1061
  %nch.0.in = phi %struct._stritem* [ %call13, %if.end18 ], [ %call3, %if.end ]
  %nch.0 = bitcast %struct._stritem* %nch.0.in to %struct._strchunk*, !dbg !1061
  call void @llvm.dbg.value(metadata %struct._strchunk* %nch.0, metadata !1060, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i32 %id.0, metadata !1059, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i64 %size.1, metadata !1058, metadata !DIExpression()), !dbg !1061
  %gcov_ctr32 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.93, i64 0, i64 4), align 16, !dbg !1092
  %6 = add i64 %gcov_ctr32, 1, !dbg !1092
  store i64 %6, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.93, i64 0, i64 4), align 16, !dbg !1092
  tail call void @slabs_mlock() #12, !dbg !1092
  %head = getelementptr inbounds %struct._strchunk, %struct._strchunk* %ch, i64 0, i32 2, !dbg !1093
  %7 = load %struct._stritem*, %struct._stritem** %head, align 8, !dbg !1093, !tbaa !759
  %8 = getelementptr inbounds %struct._stritem, %struct._stritem* %nch.0.in, i64 0, i32 2, !dbg !1094
  store %struct._stritem* %7, %struct._stritem** %8, align 8, !dbg !1095, !tbaa !759
  %9 = bitcast %struct._strchunk* %ch to %struct._stritem**, !dbg !1096
  store %struct._stritem* %nch.0.in, %struct._stritem** %9, align 8, !dbg !1096, !tbaa !759
  %prev = getelementptr inbounds %struct._stritem, %struct._stritem* %nch.0.in, i64 0, i32 1, !dbg !1097
  %10 = bitcast %struct._stritem** %prev to %struct._strchunk**, !dbg !1097
  store %struct._strchunk* %ch, %struct._strchunk** %10, align 8, !dbg !1098, !tbaa !759
  %next21 = bitcast %struct._stritem* %nch.0.in to %struct._strchunk**, !dbg !1099
  store %struct._strchunk* null, %struct._strchunk** %next21, align 8, !dbg !1100, !tbaa !759
  %11 = getelementptr inbounds %struct._stritem, %struct._stritem* %nch.0.in, i64 0, i32 4, !dbg !1101
  store i32 0, i32* %11, align 4, !dbg !1102, !tbaa !625
  %conv22 = trunc i32 %id.0 to i8, !dbg !1103
  %12 = getelementptr inbounds %struct._stritem, %struct._stritem* %nch.0.in, i64 0, i32 8, !dbg !1104
  store i8 %conv22, i8* %12, align 8, !dbg !1105, !tbaa !617
  %13 = trunc i64 %size.1 to i32, !dbg !1106
  %conv23 = add i32 %13, -48, !dbg !1106
  %14 = getelementptr inbounds %struct._stritem, %struct._stritem* %nch.0.in, i64 0, i32 3, !dbg !1107
  store i32 %conv23, i32* %14, align 8, !dbg !1108, !tbaa !625
  %15 = getelementptr inbounds %struct._stritem, %struct._stritem* %nch.0.in, i64 0, i32 7, !dbg !1109
  %16 = load i16, i16* %15, align 2, !dbg !1110, !tbaa !615
  %17 = or i16 %16, 64, !dbg !1110
  store i16 %17, i16* %15, align 2, !dbg !1110, !tbaa !615
  tail call void @slabs_munlock() #12, !dbg !1111
  br label %cleanup, !dbg !1112

cleanup:                                          ; preds = %if.end19, %if.then16, %if.then10
  %retval.0 = phi %struct._strchunk* [ null, %if.then10 ], [ null, %if.then16 ], [ %nch.0, %if.end19 ], !dbg !1061
  ret %struct._strchunk* %retval.0, !dbg !1113
}

declare !dbg !1114 dso_local i32 @slabs_clsid(i64 noundef) local_unnamed_addr #6

declare !dbg !1117 dso_local void @slabs_mlock() local_unnamed_addr #6

declare !dbg !1118 dso_local void @slabs_munlock() local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._stritem* @do_item_alloc(i8* noundef %key, i64 noundef %nkey, i32 noundef %flags, i32 noundef %exptime, i32 noundef %nbytes) local_unnamed_addr #0 !dbg !1119 {
entry:
  %flags.addr = alloca i32, align 4
  %nsuffix = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8* %key, metadata !1123, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !1124, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1125, metadata !DIExpression()), !dbg !1140
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !625
  call void @llvm.dbg.value(metadata i32 %exptime, metadata !1126, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i32 %nbytes, metadata !1127, metadata !DIExpression()), !dbg !1140
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %nsuffix) #14, !dbg !1141
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !1129, metadata !DIExpression()), !dbg !1140
  %cmp = icmp slt i32 %nbytes, 2, !dbg !1142
  br i1 %cmp, label %if.then, label %if.end, !dbg !1144

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 0), align 16, !dbg !1145
  %0 = add i64 %gcov_ctr, 1, !dbg !1145
  store i64 %0, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 0), align 16, !dbg !1145
  br label %cleanup142, !dbg !1145

if.end:                                           ; preds = %entry
  %add = add i64 %nkey, 1, !dbg !1146
  %conv = trunc i64 %add to i8, !dbg !1147
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1125, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i8* %nsuffix, metadata !1128, metadata !DIExpression(DW_OP_deref)), !dbg !1140
  %call = call fastcc i64 @item_make_header(i8 noundef zeroext %conv, i32 noundef %flags, i32 noundef %nbytes, i8* noundef nonnull %nsuffix) #13, !dbg !1148
  call void @llvm.dbg.value(metadata i64 %call, metadata !1131, metadata !DIExpression()), !dbg !1140
  %1 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 19), align 8, !dbg !1149, !tbaa !1151, !range !671
  %tobool.not = icmp eq i8 %1, 0, !dbg !1149
  br i1 %tobool.not, label %if.end3, label %if.then1, !dbg !1152

if.then1:                                         ; preds = %if.end
  %gcov_ctr145 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 1), align 8, !dbg !1153
  %2 = add i64 %gcov_ctr145, 1, !dbg !1153
  store i64 %2, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 1), align 8, !dbg !1153
  %add2 = add i64 %call, 8, !dbg !1153
  call void @llvm.dbg.value(metadata i64 %add2, metadata !1131, metadata !DIExpression()), !dbg !1140
  br label %if.end3, !dbg !1155

if.end3:                                          ; preds = %if.then1, %if.end
  %ntotal.0 = phi i64 [ %add2, %if.then1 ], [ %call, %if.end ], !dbg !1140
  call void @llvm.dbg.value(metadata i64 %ntotal.0, metadata !1131, metadata !DIExpression()), !dbg !1140
  %call4 = tail call i32 @slabs_clsid(i64 noundef %ntotal.0) #12, !dbg !1156
  call void @llvm.dbg.value(metadata i32 %call4, metadata !1132, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i32 0, metadata !1133, metadata !DIExpression()), !dbg !1140
  %cmp5 = icmp eq i32 %call4, 0, !dbg !1157
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !1159

if.then7:                                         ; preds = %if.end3
  %gcov_ctr146 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 2), align 16, !dbg !1160
  %3 = add i64 %gcov_ctr146, 1, !dbg !1160
  store i64 %3, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 2), align 16, !dbg !1160
  br label %cleanup142, !dbg !1160

if.end8:                                          ; preds = %if.end3
  %4 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 23), align 8, !dbg !1161, !tbaa !1065
  %conv9 = sext i32 %4 to i64, !dbg !1162
  %cmp10 = icmp ugt i64 %ntotal.0, %conv9, !dbg !1163
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !1164

if.then12:                                        ; preds = %if.end8
  %5 = load i8, i8* %nsuffix, align 1, !dbg !1165, !tbaa !617
  call void @llvm.dbg.value(metadata i8 %5, metadata !1128, metadata !DIExpression()), !dbg !1140
  %conv14 = zext i8 %5 to i64, !dbg !1165
  %add15 = add i64 %add, %conv14, !dbg !1166
  %conv18 = add i64 %add15, 96, !dbg !1167
  call void @llvm.dbg.value(metadata i64 %add15, metadata !1134, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 96, DW_OP_stack_value)), !dbg !1168
  %6 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 19), align 8, !dbg !1169, !tbaa !1151, !range !671
  %tobool19.not = icmp eq i8 %6, 0, !dbg !1169
  br i1 %tobool19.not, label %if.end24, label %if.then20, !dbg !1171

if.then20:                                        ; preds = %if.then12
  %gcov_ctr147 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 3), align 8, !dbg !1172
  %7 = add i64 %gcov_ctr147, 1, !dbg !1172
  store i64 %7, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 3), align 8, !dbg !1172
  %add22 = add i64 %add15, 104, !dbg !1172
  call void @llvm.dbg.value(metadata i64 %add15, metadata !1134, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 104, DW_OP_stack_value)), !dbg !1168
  br label %if.end24, !dbg !1174

if.end24:                                         ; preds = %if.then20, %if.then12
  %htotal.0 = phi i64 [ %add22, %if.then20 ], [ %conv18, %if.then12 ], !dbg !1168
  call void @llvm.dbg.value(metadata i32 undef, metadata !1134, metadata !DIExpression()), !dbg !1168
  %sext = shl i64 %htotal.0, 32, !dbg !1175
  %conv25 = ashr exact i64 %sext, 32, !dbg !1175
  %call26 = tail call i32 @slabs_clsid(i64 noundef %conv25) #12, !dbg !1176
  call void @llvm.dbg.value(metadata i32 %call26, metadata !1133, metadata !DIExpression()), !dbg !1140
  %call28 = tail call %struct._stritem* @do_item_alloc_pull(i64 noundef %conv25, i32 noundef %call26) #13, !dbg !1177
  call void @llvm.dbg.value(metadata %struct._stritem* %call28, metadata !1129, metadata !DIExpression()), !dbg !1140
  %cmp29.not = icmp eq %struct._stritem* %call28, null, !dbg !1178
  br i1 %cmp29.not, label %if.end34, label %if.then31, !dbg !1180

if.then31:                                        ; preds = %if.end24
  %gcov_ctr148 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 4), align 16, !dbg !1181
  %8 = add i64 %gcov_ctr148, 1, !dbg !1181
  store i64 %8, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 4), align 16, !dbg !1181
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %call28, i64 0, i32 7, !dbg !1182
  %9 = load i16, i16* %it_flags, align 2, !dbg !1183, !tbaa !615
  %10 = or i16 %9, 32, !dbg !1183
  store i16 %10, i16* %it_flags, align 2, !dbg !1183, !tbaa !615
  br label %if.end34, !dbg !1181

if.end34:                                         ; preds = %if.then31, %if.end24
  %phi.cast = trunc i32 %call26 to i8, !dbg !1184
  br label %if.end36, !dbg !1184

if.else:                                          ; preds = %if.end8
  %gcov_ctr149 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 5), align 8, !dbg !1185
  %11 = add i64 %gcov_ctr149, 1, !dbg !1185
  store i64 %11, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 5), align 8, !dbg !1185
  %call35 = tail call %struct._stritem* @do_item_alloc_pull(i64 noundef %ntotal.0, i32 noundef %call4) #13, !dbg !1187
  call void @llvm.dbg.value(metadata %struct._stritem* %call35, metadata !1129, metadata !DIExpression()), !dbg !1140
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end34
  %it.0 = phi %struct._stritem* [ %call28, %if.end34 ], [ %call35, %if.else ], !dbg !1188
  %hdr_id.0 = phi i8 [ %phi.cast, %if.end34 ], [ 0, %if.else ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1133, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata %struct._stritem* %it.0, metadata !1129, metadata !DIExpression()), !dbg !1140
  %cmp37 = icmp eq %struct._stritem* %it.0, null, !dbg !1189
  br i1 %cmp37, label %if.then39, label %if.end46, !dbg !1191

if.then39:                                        ; preds = %if.end36
  %gcov_ctr150 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 6), align 16, !dbg !1192
  %12 = add i64 %gcov_ctr150, 1, !dbg !1192
  store i64 %12, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 6), align 16, !dbg !1192
  %idxprom = zext i32 %call4 to i64, !dbg !1194
  %arrayidx = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom, !dbg !1194
  %call40 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !1195
  %outofmemory = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom, i32 3, !dbg !1196
  %13 = load i64, i64* %outofmemory, align 8, !dbg !1197, !tbaa !1198
  %inc = add i64 %13, 1, !dbg !1197
  store i64 %inc, i64* %outofmemory, align 8, !dbg !1197, !tbaa !1198
  %call45 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !1199
  br label %cleanup142, !dbg !1200

if.end46:                                         ; preds = %if.end36
  %it_flags47 = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 7, !dbg !1201
  %14 = load i16, i16* %it_flags47, align 2, !dbg !1201, !tbaa !615
  %cmp49 = icmp eq i16 %14, 0, !dbg !1201
  br i1 %cmp49, label %if.end57, label %lor.lhs.false, !dbg !1201

lor.lhs.false:                                    ; preds = %if.end46
  %gcov_ctr151 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 7), align 8, !dbg !1201
  %15 = add i64 %gcov_ctr151, 1, !dbg !1201
  store i64 %15, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 7), align 8, !dbg !1201
  %16 = load i16, i16* %it_flags47, align 2, !dbg !1201, !tbaa !615
  %cmp53 = icmp eq i16 %16, 32, !dbg !1201
  br i1 %cmp53, label %if.end57, label %if.else56, !dbg !1204

if.else56:                                        ; preds = %lor.lhs.false
  %gcov_ctr152 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 8), align 16, !dbg !1201
  %17 = add i64 %gcov_ctr152, 1, !dbg !1201
  store i64 %17, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 8), align 16, !dbg !1201
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @__PRETTY_FUNCTION__.do_item_alloc, i64 0, i64 0)) #15, !dbg !1201
  unreachable, !dbg !1201

if.end57:                                         ; preds = %if.end46, %lor.lhs.false
  %18 = bitcast %struct._stritem* %it.0 to <2 x %struct._stritem*>*, !dbg !1205
  store <2 x %struct._stritem*> zeroinitializer, <2 x %struct._stritem*>* %18, align 8, !dbg !1205, !tbaa !759
  %19 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 48), align 4, !dbg !1206, !tbaa !1208, !range !671
  %tobool58.not = icmp eq i8 %19, 0, !dbg !1206
  br i1 %tobool58.not, label %if.else64, label %land.lhs.true, !dbg !1209

land.lhs.true:                                    ; preds = %if.end57
  %gcov_ctr153 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 9), align 8, !dbg !1210
  %20 = add i64 %gcov_ctr153, 1, !dbg !1210
  store i64 %20, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 9), align 8, !dbg !1210
  %21 = load volatile i32, i32* @current_time, align 4, !dbg !1211, !tbaa !625
  %sub = sub i32 %exptime, %21, !dbg !1212
  %22 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 49), align 8, !dbg !1213, !tbaa !1214
  %cmp60.not = icmp ugt i32 %sub, %22, !dbg !1215
  br i1 %cmp60.not, label %if.else64, label %if.then62, !dbg !1216

if.then62:                                        ; preds = %land.lhs.true
  %gcov_ctr154 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 10), align 16, !dbg !1217
  %23 = add i64 %gcov_ctr154, 1, !dbg !1217
  store i64 %23, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 10), align 16, !dbg !1217
  %or63 = or i32 %call4, 192, !dbg !1217
  call void @llvm.dbg.value(metadata i32 %or63, metadata !1132, metadata !DIExpression()), !dbg !1140
  br label %if.end71, !dbg !1219

if.else64:                                        ; preds = %land.lhs.true, %if.end57
  %24 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 30), align 8, !dbg !1220, !tbaa !670, !range !671
  %tobool65.not = icmp eq i8 %24, 0, !dbg !1220
  br i1 %tobool65.not, label %if.else68, label %if.then66, !dbg !1222

if.then66:                                        ; preds = %if.else64
  %gcov_ctr155 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 11), align 8, !dbg !1223
  %25 = add i64 %gcov_ctr155, 1, !dbg !1223
  store i64 %25, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 11), align 8, !dbg !1223
  call void @llvm.dbg.value(metadata i32 %call4, metadata !1132, metadata !DIExpression()), !dbg !1140
  br label %if.end71, !dbg !1225

if.else68:                                        ; preds = %if.else64
  %gcov_ctr156 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 12), align 16, !dbg !1226
  %26 = add i64 %gcov_ctr156, 1, !dbg !1226
  store i64 %26, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 12), align 16, !dbg !1226
  %or69 = or i32 %call4, 128, !dbg !1226
  call void @llvm.dbg.value(metadata i32 %or69, metadata !1132, metadata !DIExpression()), !dbg !1140
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.else68, %if.then62
  %id.0 = phi i32 [ %or63, %if.then62 ], [ %call4, %if.then66 ], [ %or69, %if.else68 ], !dbg !1228
  call void @llvm.dbg.value(metadata i32 %id.0, metadata !1132, metadata !DIExpression()), !dbg !1140
  %conv72 = trunc i32 %id.0 to i8, !dbg !1229
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 8, !dbg !1230
  store i8 %conv72, i8* %slabs_clsid, align 8, !dbg !1231, !tbaa !617
  %27 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 19), align 8, !dbg !1232, !tbaa !1151, !range !671
  %tobool73.not = icmp eq i8 %27, 0, !dbg !1232
  %cond = select i1 %tobool73.not, i16 0, i16 2, !dbg !1233
  %28 = load i16, i16* %it_flags47, align 2, !dbg !1234, !tbaa !615
  %or77 = or i16 %cond, %28, !dbg !1234
  %29 = load i8, i8* %nsuffix, align 1, !dbg !1235, !tbaa !617
  call void @llvm.dbg.value(metadata i8 %29, metadata !1128, metadata !DIExpression()), !dbg !1140
  %cmp80.not = icmp eq i8 %29, 0, !dbg !1236
  %cond82 = select i1 %cmp80.not, i16 0, i16 256, !dbg !1235
  %or85 = or i16 %cond82, %or77, !dbg !1237
  store i16 %or85, i16* %it_flags47, align 2, !dbg !1237, !tbaa !615
  %conv87 = trunc i64 %nkey to i8, !dbg !1238
  %nkey88 = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 9, !dbg !1239
  store i8 %conv87, i8* %nkey88, align 1, !dbg !1240, !tbaa !617
  %nbytes89 = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 5, !dbg !1241
  store i32 %nbytes, i32* %nbytes89, align 8, !dbg !1242, !tbaa !625
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 10, !dbg !1243
  %30 = bitcast [0 x %union.anon]* %data to i8*, !dbg !1243
  %31 = shl i16 %or77, 2, !dbg !1243
  %32 = and i16 %31, 8, !dbg !1243
  %33 = zext i16 %32 to i64, !dbg !1243
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %33, !dbg !1243
  %call94 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %key, i64 noundef %nkey) #12, !dbg !1244
  %exptime95 = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 4, !dbg !1245
  store i32 %exptime, i32* %exptime95, align 4, !dbg !1246, !tbaa !625
  call void @llvm.dbg.value(metadata i8 %29, metadata !1128, metadata !DIExpression()), !dbg !1140
  br i1 %cmp80.not, label %if.end112, label %if.then99, !dbg !1247

if.then99:                                        ; preds = %if.end71
  %gcov_ctr158 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 14), align 16, !dbg !1248
  %34 = add i64 %gcov_ctr158, 1, !dbg !1248
  store i64 %34, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 14), align 16, !dbg !1248
  %35 = load i8, i8* %nkey88, align 1, !dbg !1248, !tbaa !617
  %36 = zext i8 %35 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %30, i64 %36, !dbg !1248
  %add.ptr104 = getelementptr inbounds i8, i8* %add.ptr103, i64 1, !dbg !1248
  %37 = load i16, i16* %it_flags47, align 2, !dbg !1248, !tbaa !615
  %38 = shl i16 %37, 2, !dbg !1248
  %39 = and i16 %38, 8, !dbg !1248
  %40 = zext i16 %39 to i64, !dbg !1248
  %add.ptr110 = getelementptr inbounds i8, i8* %add.ptr104, i64 %40, !dbg !1248
  %41 = bitcast i32* %flags.addr to i8*, !dbg !1251
  call void @llvm.dbg.value(metadata i32* %flags.addr, metadata !1125, metadata !DIExpression(DW_OP_deref)), !dbg !1140
  %call111 = call i8* @memcpy(i8* noundef nonnull %add.ptr110, i8* noundef nonnull %41, i64 noundef 4) #12, !dbg !1252
  br label %if.end112, !dbg !1253

if.end112:                                        ; preds = %if.then99, %if.end71
  %42 = load i16, i16* %it_flags47, align 2, !dbg !1254, !tbaa !615
  %43 = and i16 %42, 32, !dbg !1255
  %tobool116.not = icmp eq i16 %43, 0, !dbg !1255
  br i1 %tobool116.not, label %if.end139, label %if.then117, !dbg !1256

if.then117:                                       ; preds = %if.end112
  %gcov_ctr159 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 15), align 8, !dbg !1257
  %44 = add i64 %gcov_ctr159, 1, !dbg !1257
  store i64 %44, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.94, i64 0, i64 15), align 8, !dbg !1257
  %45 = load i8, i8* %nkey88, align 1, !dbg !1258, !tbaa !617
  %46 = zext i8 %45 to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %30, i64 %46, !dbg !1258
  %add.ptr123 = getelementptr inbounds i8, i8* %add.ptr122, i64 1, !dbg !1258
  %47 = load i16, i16* %it_flags47, align 2, !dbg !1258, !tbaa !615
  %conv125 = zext i16 %47 to i32, !dbg !1258
  %and126 = lshr i32 %conv125, 6, !dbg !1258
  %48 = and i32 %and126, 4, !dbg !1258
  %49 = zext i32 %48 to i64, !dbg !1258
  %add.ptr129 = getelementptr inbounds i8, i8* %add.ptr123, i64 %49, !dbg !1258
  %and132 = shl nuw nsw i32 %conv125, 2, !dbg !1258
  %50 = and i32 %and132, 8, !dbg !1258
  %51 = zext i32 %50 to i64, !dbg !1258
  %add.ptr135 = getelementptr inbounds i8, i8* %add.ptr129, i64 %51, !dbg !1258
  call void @llvm.dbg.value(metadata i8* %add.ptr135, metadata !1137, metadata !DIExpression()), !dbg !1259
  %next136 = bitcast i8* %add.ptr135 to %struct._strchunk**, !dbg !1260
  store %struct._strchunk* null, %struct._strchunk** %next136, align 8, !dbg !1261, !tbaa !759
  %prev137 = getelementptr inbounds i8, i8* %add.ptr135, i64 8, !dbg !1262
  %52 = bitcast i8* %prev137 to %struct._strchunk**, !dbg !1262
  store %struct._strchunk* null, %struct._strchunk** %52, align 8, !dbg !1263, !tbaa !759
  %used = getelementptr inbounds i8, i8* %add.ptr135, i64 28, !dbg !1264
  %53 = bitcast i8* %used to i32*, !dbg !1264
  store i32 0, i32* %53, align 4, !dbg !1265, !tbaa !625
  %size = getelementptr inbounds i8, i8* %add.ptr135, i64 24, !dbg !1266
  %54 = bitcast i8* %size to i32*, !dbg !1266
  store i32 0, i32* %54, align 8, !dbg !1267, !tbaa !625
  %head = getelementptr inbounds i8, i8* %add.ptr135, i64 16, !dbg !1268
  %55 = bitcast i8* %head to %struct._stritem**, !dbg !1268
  store %struct._stritem* %it.0, %struct._stritem** %55, align 8, !dbg !1269, !tbaa !759
  %56 = getelementptr inbounds i8, i8* %add.ptr135, i64 41, !dbg !1270
  store i8 %hdr_id.0, i8* %56, align 1, !dbg !1271, !tbaa !617
  br label %if.end139, !dbg !1272

if.end139:                                        ; preds = %if.then117, %if.end112
  %h_next = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0, i64 0, i32 2, !dbg !1273
  store %struct._stritem* null, %struct._stritem** %h_next, align 8, !dbg !1274, !tbaa !759
  br label %cleanup142, !dbg !1275

cleanup142:                                       ; preds = %if.then7, %if.then39, %if.end139, %if.then
  %retval.1 = phi %struct._stritem* [ null, %if.then ], [ null, %if.then7 ], [ null, %if.then39 ], [ %it.0, %if.end139 ], !dbg !1140
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %nsuffix) #14, !dbg !1276
  ret %struct._stritem* %retval.1, !dbg !1276
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i64 @item_make_header(i8 noundef zeroext %nkey, i32 noundef %flags, i32 noundef %nbytes, i8* nocapture noundef writeonly %nsuffix) unnamed_addr #4 !dbg !1277 {
entry:
  call void @llvm.dbg.value(metadata i8 %nkey, metadata !1282, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1283, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i32 %nbytes, metadata !1284, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i8* undef, metadata !1285, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i8* %nsuffix, metadata !1286, metadata !DIExpression()), !dbg !1287
  %cmp = icmp eq i32 %flags, 0, !dbg !1288
  %. = select i1 %cmp, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.95, i64 0, i64 0), i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.95, i64 0, i64 1)
  %.2 = select i1 %cmp, i8 0, i8 4
  %gcov_ctr5 = load i64, i64* %., align 8, !dbg !1290
  %0 = add i64 %gcov_ctr5, 1, !dbg !1290
  store i64 %0, i64* %., align 8, !dbg !1290
  store i8 %.2, i8* %nsuffix, align 1, !dbg !1290, !tbaa !617
  %conv = zext i8 %nkey to i64, !dbg !1291
  %add = add nuw nsw i64 %conv, 48, !dbg !1292
  %conv1 = zext i8 %.2 to i64, !dbg !1293
  %conv3 = sext i32 %nbytes to i64, !dbg !1294
  %add2 = add nsw i64 %add, %conv3, !dbg !1295
  %add4 = add nsw i64 %add2, %conv1, !dbg !1296
  ret i64 %add4, !dbg !1297
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !1298 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @item_free(%struct._stritem* noundef %it) local_unnamed_addr #0 !dbg !1303 {
entry:
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1307, metadata !DIExpression()), !dbg !1310
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 9, !dbg !1311
  %0 = load i8, i8* %nkey, align 1, !dbg !1311, !tbaa !617
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 5, !dbg !1311
  %1 = load i32, i32* %nbytes, align 8, !dbg !1311, !tbaa !625
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !1311
  %2 = load i16, i16* %it_flags, align 2, !dbg !1311, !tbaa !615
  %conv4 = zext i16 %2 to i32, !dbg !1311
  call void @llvm.dbg.value(metadata !DIArgList(i8 %0, i32 %conv4, i32 %conv4, i32 %1), metadata !1308, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 49, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1310
  %and14 = and i32 %conv4, 1, !dbg !1312
  %cmp = icmp eq i32 %and14, 0, !dbg !1312
  br i1 %cmp, label %if.end, label %if.else, !dbg !1315

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.96, i64 0, i64 0), align 16, !dbg !1312
  %3 = add i64 %gcov_ctr, 1, !dbg !1312
  store i64 %3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.96, i64 0, i64 0), align 16, !dbg !1312
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 366, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.item_free, i64 0, i64 0)) #15, !dbg !1312
  unreachable, !dbg !1312

if.end:                                           ; preds = %entry
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 8, !dbg !1316
  %4 = load i8, i8* %slabs_clsid, align 8, !dbg !1316, !tbaa !617
  %idxprom = zext i8 %4 to i64, !dbg !1316
  %arrayidx = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @heads, i64 0, i64 %idxprom, !dbg !1316
  %5 = load %struct._stritem*, %struct._stritem** %arrayidx, align 8, !dbg !1316, !tbaa !759
  %cmp16.not = icmp eq %struct._stritem* %5, %it, !dbg !1316
  br i1 %cmp16.not, label %if.else19, label %if.end20, !dbg !1319

if.else19:                                        ; preds = %if.end
  %gcov_ctr38 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.96, i64 0, i64 1), align 8, !dbg !1316
  %6 = add i64 %gcov_ctr38, 1, !dbg !1316
  store i64 %6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.96, i64 0, i64 1), align 8, !dbg !1316
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.item_free, i64 0, i64 0)) #15, !dbg !1316
  unreachable, !dbg !1316

if.end20:                                         ; preds = %if.end
  %arrayidx23 = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @tails, i64 0, i64 %idxprom, !dbg !1320
  %7 = load %struct._stritem*, %struct._stritem** %arrayidx23, align 8, !dbg !1320, !tbaa !759
  %cmp24.not = icmp eq %struct._stritem* %7, %it, !dbg !1320
  br i1 %cmp24.not, label %if.else27, label %if.end28, !dbg !1323

if.else27:                                        ; preds = %if.end20
  %gcov_ctr39 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.96, i64 0, i64 2), align 16, !dbg !1320
  %8 = add i64 %gcov_ctr39, 1, !dbg !1320
  store i64 %8, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.96, i64 0, i64 2), align 16, !dbg !1320
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.item_free, i64 0, i64 0)) #15, !dbg !1320
  unreachable, !dbg !1320

if.end28:                                         ; preds = %if.end20
  %refcount = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 6, !dbg !1324
  %9 = load i16, i16* %refcount, align 4, !dbg !1324, !tbaa !615
  %cmp30 = icmp eq i16 %9, 0, !dbg !1324
  br i1 %cmp30, label %if.end34, label %if.else33, !dbg !1327

if.else33:                                        ; preds = %if.end28
  %gcov_ctr40 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.96, i64 0, i64 3), align 8, !dbg !1324
  %10 = add i64 %gcov_ctr40, 1, !dbg !1324
  store i64 %10, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.96, i64 0, i64 3), align 8, !dbg !1324
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.item_free, i64 0, i64 0)) #15, !dbg !1324
  unreachable, !dbg !1324

if.end34:                                         ; preds = %if.end28
  %conv = zext i8 %0 to i64, !dbg !1311
  call void @llvm.dbg.value(metadata !DIArgList(i64 %conv, i32 %conv4, i32 %conv4, i32 %1), metadata !1308, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 49, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1310
  %add1 = add nuw nsw i64 %conv, 49, !dbg !1311
  call void @llvm.dbg.value(metadata !DIArgList(i64 %add1, i32 %conv4, i32 %conv4, i32 %1), metadata !1308, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1310
  %conv2 = sext i32 %1 to i64, !dbg !1311
  call void @llvm.dbg.value(metadata !DIArgList(i8 %0, i32 %conv4, i32 %conv4, i64 %conv2), metadata !1308, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 49, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1310
  %add3 = add nsw i64 %add1, %conv2, !dbg !1311
  call void @llvm.dbg.value(metadata !DIArgList(i64 %add3, i32 %conv4, i32 %conv4), metadata !1308, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1310
  %and = lshr i32 %conv4, 6, !dbg !1311
  call void @llvm.dbg.value(metadata !DIArgList(i8 %0, i32 %conv4, i32 %and, i32 %1), metadata !1308, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 49, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1310
  %11 = and i32 %and, 4, !dbg !1311
  call void @llvm.dbg.value(metadata !DIArgList(i8 %0, i32 %conv4, i32 %11, i32 %1), metadata !1308, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 49, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1310
  %12 = zext i32 %11 to i64, !dbg !1311
  call void @llvm.dbg.value(metadata !DIArgList(i8 %0, i32 %conv4, i64 %12, i32 %1), metadata !1308, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 49, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1310
  %add5 = add nsw i64 %add3, %12, !dbg !1311
  call void @llvm.dbg.value(metadata !DIArgList(i64 %add5, i32 %conv4), metadata !1308, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1310
  %and8 = shl nuw nsw i32 %conv4, 2, !dbg !1311
  call void @llvm.dbg.value(metadata !DIArgList(i8 %0, i32 %and8, i32 %conv4, i32 %1), metadata !1308, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 49, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1310
  %13 = and i32 %and8, 8, !dbg !1311
  call void @llvm.dbg.value(metadata !DIArgList(i8 %0, i32 %13, i32 %conv4, i32 %1), metadata !1308, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 49, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1310
  %14 = zext i32 %13 to i64, !dbg !1311
  call void @llvm.dbg.value(metadata !DIArgList(i8 %0, i64 %14, i32 %conv4, i32 %1), metadata !1308, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus_uconst, 49, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1310
  %add11 = add nsw i64 %add5, %14, !dbg !1311
  call void @llvm.dbg.value(metadata i64 %add11, metadata !1308, metadata !DIExpression()), !dbg !1310
  %gcov_ctr41 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.96, i64 0, i64 4), align 16, !dbg !1328
  %15 = add i64 %gcov_ctr41, 1, !dbg !1328
  store i64 %15, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.96, i64 0, i64 4), align 16, !dbg !1328
  %16 = and i8 %4, 63, !dbg !1328
  %and37 = zext i8 %16 to i32, !dbg !1328
  call void @llvm.dbg.value(metadata i32 %and37, metadata !1309, metadata !DIExpression()), !dbg !1310
  %17 = bitcast %struct._stritem* %it to i8*, !dbg !1329
  tail call void @slabs_free(i8* noundef %17, i64 noundef %add11, i32 noundef %and37) #12, !dbg !1330
  ret void, !dbg !1331
}

declare !dbg !1332 dso_local void @slabs_free(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @item_size_ok(i64 noundef %nkey, i32 noundef %flags, i32 noundef %nbytes) local_unnamed_addr #0 !dbg !1335 {
entry:
  %nsuffix = alloca i8, align 1
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !1339, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1340, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i32 %nbytes, metadata !1341, metadata !DIExpression()), !dbg !1345
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %nsuffix) #14, !dbg !1346
  %cmp = icmp slt i32 %nbytes, 2, !dbg !1347
  br i1 %cmp, label %if.then, label %if.end, !dbg !1349

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.97, i64 0, i64 0), align 16, !dbg !1350
  %0 = add i64 %gcov_ctr, 1, !dbg !1350
  store i64 %0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.97, i64 0, i64 0), align 16, !dbg !1350
  br label %cleanup, !dbg !1350

if.end:                                           ; preds = %entry
  %1 = trunc i64 %nkey to i8, !dbg !1351
  %conv = add i8 %1, 1, !dbg !1351
  call void @llvm.dbg.value(metadata i8* %nsuffix, metadata !1343, metadata !DIExpression(DW_OP_deref)), !dbg !1345
  %call = call fastcc i64 @item_make_header(i8 noundef zeroext %conv, i32 noundef %flags, i32 noundef %nbytes, i8* noundef nonnull %nsuffix) #13, !dbg !1352
  call void @llvm.dbg.value(metadata i64 %call, metadata !1344, metadata !DIExpression()), !dbg !1345
  %2 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 19), align 8, !dbg !1353, !tbaa !1151, !range !671
  %tobool.not = icmp eq i8 %2, 0, !dbg !1353
  br i1 %tobool.not, label %if.end3, label %if.then1, !dbg !1355

if.then1:                                         ; preds = %if.end
  %gcov_ctr8 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.97, i64 0, i64 1), align 8, !dbg !1356
  %3 = add i64 %gcov_ctr8, 1, !dbg !1356
  store i64 %3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.97, i64 0, i64 1), align 8, !dbg !1356
  %add2 = add i64 %call, 8, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %add2, metadata !1344, metadata !DIExpression()), !dbg !1345
  br label %if.end3, !dbg !1358

if.end3:                                          ; preds = %if.then1, %if.end
  %ntotal.0 = phi i64 [ %add2, %if.then1 ], [ %call, %if.end ], !dbg !1345
  call void @llvm.dbg.value(metadata i64 %ntotal.0, metadata !1344, metadata !DIExpression()), !dbg !1345
  %gcov_ctr9 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.97, i64 0, i64 2), align 16, !dbg !1359
  %4 = add i64 %gcov_ctr9, 1, !dbg !1359
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.97, i64 0, i64 2), align 16, !dbg !1359
  %call4 = tail call i32 @slabs_clsid(i64 noundef %ntotal.0) #12, !dbg !1360
  %cmp5 = icmp ne i32 %call4, 0, !dbg !1361
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ %cmp5, %if.end3 ], !dbg !1345
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %nsuffix) #14, !dbg !1362
  ret i1 %retval.0, !dbg !1362
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_item_link_fixup(%struct._stritem* noundef %it) local_unnamed_addr #0 !dbg !1363 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.98, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.98, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1365, metadata !DIExpression()), !dbg !1371
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 9, !dbg !1372
  %1 = load i8, i8* %nkey, align 1, !dbg !1372, !tbaa !617
  %conv = zext i8 %1 to i64, !dbg !1372
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 5, !dbg !1372
  %2 = load i32, i32* %nbytes, align 8, !dbg !1372, !tbaa !625
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !1372
  %3 = load i16, i16* %it_flags, align 2, !dbg !1372, !tbaa !615
  %conv4 = zext i16 %3 to i32, !dbg !1372
  %and8 = shl nuw nsw i32 %conv4, 2, !dbg !1372
  %4 = and i32 %and8, 8, !dbg !1372
  %5 = zext i32 %4 to i64, !dbg !1372
  call void @llvm.dbg.value(metadata !DIArgList(i64 %conv, i64 %5, i32 %conv4, i32 %2), metadata !1369, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 49, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1371
  %6 = load i32 (i8*, i64)*, i32 (i8*, i64)** @hash, align 8, !dbg !1373, !tbaa !759
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 10, !dbg !1374
  %7 = bitcast [0 x %union.anon]* %data to i8*, !dbg !1374
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %5, !dbg !1374
  %call = tail call i32 %6(i8* noundef nonnull %add.ptr, i64 noundef %conv) #12, !dbg !1373
  call void @llvm.dbg.value(metadata i32 %call, metadata !1370, metadata !DIExpression()), !dbg !1371
  %call20 = tail call i32 @assoc_insert(%struct._stritem* noundef %it, i32 noundef %call) #12, !dbg !1375
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 8, !dbg !1376
  %8 = load i8, i8* %slabs_clsid, align 8, !dbg !1376, !tbaa !617
  %idxprom = zext i8 %8 to i64, !dbg !1377
  %arrayidx = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @heads, i64 0, i64 %idxprom, !dbg !1377
  call void @llvm.dbg.value(metadata %struct._stritem** %arrayidx, metadata !1366, metadata !DIExpression()), !dbg !1371
  %arrayidx23 = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @tails, i64 0, i64 %idxprom, !dbg !1378
  call void @llvm.dbg.value(metadata %struct._stritem** %arrayidx23, metadata !1368, metadata !DIExpression()), !dbg !1371
  %prev = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 1, !dbg !1379
  %9 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !1379, !tbaa !759
  %cmp = icmp eq %struct._stritem* %9, null, !dbg !1381
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1382

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr46 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.98, i64 0, i64 1), align 8, !dbg !1383
  %10 = add i64 %gcov_ctr46, 1, !dbg !1383
  store i64 %10, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.98, i64 0, i64 1), align 8, !dbg !1383
  %11 = load %struct._stritem*, %struct._stritem** %arrayidx, align 8, !dbg !1384, !tbaa !759
  %cmp25 = icmp eq %struct._stritem* %11, null, !dbg !1385
  br i1 %cmp25, label %if.then, label %if.end, !dbg !1386

if.then:                                          ; preds = %land.lhs.true
  %gcov_ctr47 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.98, i64 0, i64 2), align 16, !dbg !1387
  %12 = add i64 %gcov_ctr47, 1, !dbg !1387
  store i64 %12, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.98, i64 0, i64 2), align 16, !dbg !1387
  store %struct._stritem* %it, %struct._stritem** %arrayidx, align 8, !dbg !1388, !tbaa !759
  br label %if.end, !dbg !1389

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %next = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 0, !dbg !1390
  %13 = load %struct._stritem*, %struct._stritem** %next, align 8, !dbg !1390, !tbaa !759
  %cmp27 = icmp eq %struct._stritem* %13, null, !dbg !1392
  br i1 %cmp27, label %land.lhs.true29, label %if.end33, !dbg !1393

land.lhs.true29:                                  ; preds = %if.end
  %gcov_ctr48 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.98, i64 0, i64 3), align 8, !dbg !1394
  %14 = add i64 %gcov_ctr48, 1, !dbg !1394
  store i64 %14, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.98, i64 0, i64 3), align 8, !dbg !1394
  %15 = load %struct._stritem*, %struct._stritem** %arrayidx23, align 8, !dbg !1395, !tbaa !759
  %cmp30 = icmp eq %struct._stritem* %15, null, !dbg !1396
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !1397

if.then32:                                        ; preds = %land.lhs.true29
  %gcov_ctr49 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.98, i64 0, i64 4), align 16, !dbg !1398
  %16 = add i64 %gcov_ctr49, 1, !dbg !1398
  store i64 %16, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.98, i64 0, i64 4), align 16, !dbg !1398
  store %struct._stritem* %it, %struct._stritem** %arrayidx23, align 8, !dbg !1399, !tbaa !759
  br label %if.end33, !dbg !1400

if.end33:                                         ; preds = %if.then32, %land.lhs.true29, %if.end
  %and = lshr i32 %conv4, 6, !dbg !1372
  call void @llvm.dbg.value(metadata !DIArgList(i64 %conv, i64 %5, i32 %and, i32 %2), metadata !1369, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 49, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1371
  %17 = and i32 %and, 4, !dbg !1372
  call void @llvm.dbg.value(metadata !DIArgList(i64 %conv, i64 %5, i32 %17, i32 %2), metadata !1369, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 49, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1371
  %18 = zext i8 %1 to i32, !dbg !1372
  %19 = add nuw nsw i32 %18, 49, !dbg !1372
  %20 = add i32 %19, %2, !dbg !1372
  %21 = add i32 %20, %17, !dbg !1372
  %conv12 = add i32 %21, %4, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %conv12, metadata !1369, metadata !DIExpression()), !dbg !1371
  %arrayidx36 = getelementptr inbounds [256 x i32], [256 x i32]* @sizes, i64 0, i64 %idxprom, !dbg !1401
  %22 = load i32, i32* %arrayidx36, align 4, !dbg !1402, !tbaa !625
  %inc = add i32 %22, 1, !dbg !1402
  store i32 %inc, i32* %arrayidx36, align 4, !dbg !1402, !tbaa !625
  %conv37 = sext i32 %conv12 to i64, !dbg !1403
  %arrayidx40 = getelementptr inbounds [256 x i64], [256 x i64]* @sizes_bytes, i64 0, i64 %idxprom, !dbg !1404
  %23 = load i64, i64* %arrayidx40, align 8, !dbg !1405, !tbaa !585
  %add41 = add i64 %23, %conv37, !dbg !1405
  store i64 %add41, i64* %arrayidx40, align 8, !dbg !1405, !tbaa !585
  tail call void @STATS_LOCK() #12, !dbg !1406
  %24 = load <2 x i64>, <2 x i64>* bitcast (%struct.stats_state* @stats_state to <2 x i64>*), align 8, !dbg !1407, !tbaa !585
  %25 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %conv37, i64 1, !dbg !1407
  %26 = add <2 x i64> %24, %25, !dbg !1407
  store <2 x i64> %26, <2 x i64>* bitcast (%struct.stats_state* @stats_state to <2 x i64>*), align 8, !dbg !1407, !tbaa !585
  %27 = load i64, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 0), align 8, !dbg !1408, !tbaa !1409
  %add45 = add i64 %27, 1, !dbg !1408
  store i64 %add45, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 0), align 8, !dbg !1408, !tbaa !1409
  tail call void @STATS_UNLOCK() #12, !dbg !1412
  tail call void @item_stats_sizes_add(%struct._stritem* noundef nonnull %it) #13, !dbg !1413
  ret void, !dbg !1414
}

declare !dbg !1415 dso_local i32 @assoc_insert(%struct._stritem* noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !1420 dso_local void @STATS_LOCK() local_unnamed_addr #6

declare !dbg !1421 dso_local void @STATS_UNLOCK() local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @item_stats_sizes_add(%struct._stritem* nocapture noundef readonly %it) local_unnamed_addr #4 !dbg !1422 {
entry:
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1424, metadata !DIExpression()), !dbg !1427
  %0 = load i32*, i32** @stats_sizes_hist, align 8, !dbg !1428, !tbaa !759
  %cmp = icmp eq i32* %0, null, !dbg !1430
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1431

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* @stats_sizes_cas_min, align 8, !dbg !1432, !tbaa !585
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !1433
  %2 = load i16, i16* %it_flags, align 2, !dbg !1433, !tbaa !615
  %3 = and i16 %2, 2, !dbg !1433
  %tobool.not = icmp eq i16 %3, 0, !dbg !1433
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !1433

cond.true:                                        ; preds = %lor.lhs.false
  %gcov_ctr = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.99, i64 0, i64 0), align 16, !dbg !1433
  %4 = add i64 %gcov_ctr, 1, !dbg !1433
  store i64 %4, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.99, i64 0, i64 0), align 16, !dbg !1433
  %cas = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 10, i64 0, i32 0, !dbg !1433
  %5 = load i64, i64* %cas, align 8, !dbg !1433, !tbaa !617
  br label %cond.end, !dbg !1433

cond.false:                                       ; preds = %lor.lhs.false
  %gcov_ctr29 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.99, i64 0, i64 1), align 8, !dbg !1433
  %6 = add i64 %gcov_ctr29, 1, !dbg !1433
  store i64 %6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.99, i64 0, i64 1), align 8, !dbg !1433
  br label %cond.end, !dbg !1433

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ 0, %cond.false ], !dbg !1433
  %cmp1 = icmp ugt i64 %1, %cond, !dbg !1434
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1435

if.then:                                          ; preds = %cond.end, %entry
  %gcov_ctr30 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.99, i64 0, i64 2), align 16, !dbg !1436
  %7 = add i64 %gcov_ctr30, 1, !dbg !1436
  store i64 %7, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.99, i64 0, i64 2), align 16, !dbg !1436
  br label %return, !dbg !1436

if.end:                                           ; preds = %cond.end
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 9, !dbg !1437
  %8 = load i8, i8* %nkey, align 1, !dbg !1437, !tbaa !617
  %conv3 = zext i8 %8 to i32, !dbg !1437
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 5, !dbg !1437
  %9 = load i32, i32* %nbytes, align 8, !dbg !1437, !tbaa !625
  %conv8 = zext i16 %2 to i32, !dbg !1437
  %and9 = lshr i32 %conv8, 6, !dbg !1437
  %10 = and i32 %and9, 4, !dbg !1437
  %and15 = shl nuw nsw i32 %conv8, 2, !dbg !1437
  %11 = and i32 %and15, 8, !dbg !1437
  %add4 = or i32 %10, %11, !dbg !1437
  %add6 = or i32 %add4, 49, !dbg !1437
  %add12 = add nuw nsw i32 %add6, %conv3, !dbg !1437
  %add18 = add i32 %add12, %9, !dbg !1437
  call void @llvm.dbg.value(metadata i32 %add18, metadata !1425, metadata !DIExpression()), !dbg !1427
  %div = sdiv i32 %add18, 32, !dbg !1438
  call void @llvm.dbg.value(metadata i32 %div, metadata !1426, metadata !DIExpression()), !dbg !1427
  %12 = and i32 %add18, 31, !dbg !1439
  %cmp20.not = icmp eq i32 %12, 0, !dbg !1439
  br i1 %cmp20.not, label %if.end23, label %if.then22, !dbg !1441

if.then22:                                        ; preds = %if.end
  %gcov_ctr31 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.99, i64 0, i64 3), align 8, !dbg !1442
  %13 = add i64 %gcov_ctr31, 1, !dbg !1442
  store i64 %13, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.99, i64 0, i64 3), align 8, !dbg !1442
  %inc = add nsw i32 %div, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1426, metadata !DIExpression()), !dbg !1427
  br label %if.end23, !dbg !1443

if.end23:                                         ; preds = %if.then22, %if.end
  %bucket.0 = phi i32 [ %inc, %if.then22 ], [ %div, %if.end ], !dbg !1427
  call void @llvm.dbg.value(metadata i32 %bucket.0, metadata !1426, metadata !DIExpression()), !dbg !1427
  %14 = load i32, i32* @stats_sizes_buckets, align 4, !dbg !1444, !tbaa !625
  %cmp24 = icmp slt i32 %bucket.0, %14, !dbg !1446
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !1447

if.then26:                                        ; preds = %if.end23
  %gcov_ctr32 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.99, i64 0, i64 4), align 16, !dbg !1448
  %15 = add i64 %gcov_ctr32, 1, !dbg !1448
  store i64 %15, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.99, i64 0, i64 4), align 16, !dbg !1448
  %idxprom = sext i32 %bucket.0 to i64, !dbg !1448
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !1448
  %16 = load i32, i32* %arrayidx, align 4, !dbg !1449, !tbaa !625
  %inc27 = add i32 %16, 1, !dbg !1449
  store i32 %inc27, i32* %arrayidx, align 4, !dbg !1449, !tbaa !625
  br label %if.end28, !dbg !1448

if.end28:                                         ; preds = %if.then26, %if.end23
  %gcov_ctr33 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.99, i64 0, i64 5), align 8, !dbg !1450
  %17 = add i64 %gcov_ctr33, 1, !dbg !1450
  store i64 %17, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.99, i64 0, i64 5), align 8, !dbg !1450
  br label %return

return:                                           ; preds = %if.end28, %if.then
  ret void, !dbg !1450
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @do_item_link(%struct._stritem* noundef %it, i32 noundef %hv) local_unnamed_addr #0 !dbg !1451 {
entry:
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1453, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata i32 %hv, metadata !1454, metadata !DIExpression()), !dbg !1455
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !1456
  %0 = load i16, i16* %it_flags, align 2, !dbg !1456, !tbaa !615
  %1 = and i16 %0, 5, !dbg !1456
  %cmp = icmp eq i16 %1, 0, !dbg !1456
  br i1 %cmp, label %if.then, label %if.else, !dbg !1459

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.100, i64 0, i64 0), align 16, !dbg !1459
  %2 = add i64 %gcov_ctr, 1, !dbg !1459
  store i64 %2, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.100, i64 0, i64 0), align 16, !dbg !1459
  %3 = or i16 %0, 1, !dbg !1460
  store i16 %3, i16* %it_flags, align 2, !dbg !1460, !tbaa !615
  %4 = load volatile i32, i32* @current_time, align 4, !dbg !1461, !tbaa !625
  %time = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 3, !dbg !1462
  store i32 %4, i32* %time, align 8, !dbg !1463, !tbaa !625
  tail call void @STATS_LOCK() #12, !dbg !1464
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 9, !dbg !1465
  %5 = load i8, i8* %nkey, align 1, !dbg !1465, !tbaa !617
  %conv5 = zext i8 %5 to i64, !dbg !1465
  %add6 = add nuw nsw i64 %conv5, 49, !dbg !1465
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 5, !dbg !1465
  %6 = load i32, i32* %nbytes, align 8, !dbg !1465, !tbaa !625
  %conv7 = sext i32 %6 to i64, !dbg !1465
  %add8 = add nsw i64 %add6, %conv7, !dbg !1465
  %7 = load i16, i16* %it_flags, align 2, !dbg !1465, !tbaa !615
  %conv10 = zext i16 %7 to i32, !dbg !1465
  %and11 = lshr i32 %conv10, 6, !dbg !1465
  %8 = and i32 %and11, 4, !dbg !1465
  %9 = zext i32 %8 to i64, !dbg !1465
  %and15 = shl nuw nsw i32 %conv10, 2, !dbg !1465
  %10 = and i32 %and15, 8, !dbg !1465
  %11 = zext i32 %10 to i64, !dbg !1465
  %12 = load i64, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 1), align 8, !dbg !1466, !tbaa !1467
  %add12 = add i64 %add8, %12, !dbg !1465
  %add18 = add i64 %add12, %9, !dbg !1465
  %add19 = add i64 %add18, %11, !dbg !1466
  store i64 %add19, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 1), align 8, !dbg !1466, !tbaa !1467
  %13 = load i64, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 0), align 8, !dbg !1469, !tbaa !1470
  %add20 = add i64 %13, 1, !dbg !1469
  store i64 %add20, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 0), align 8, !dbg !1469, !tbaa !1470
  %14 = load i64, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 0), align 8, !dbg !1471, !tbaa !1409
  %add21 = add i64 %14, 1, !dbg !1471
  store i64 %add21, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 0), align 8, !dbg !1471, !tbaa !1409
  tail call void @STATS_UNLOCK() #12, !dbg !1472
  %15 = load i16, i16* %it_flags, align 2, !dbg !1473, !tbaa !615
  %16 = and i16 %15, 2, !dbg !1473
  %tobool25.not = icmp eq i16 %16, 0, !dbg !1473
  br i1 %tobool25.not, label %if.end30, label %if.then26, !dbg !1476

if.else:                                          ; preds = %entry
  %gcov_ctr32 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.100, i64 0, i64 1), align 8, !dbg !1456
  %17 = add i64 %gcov_ctr32, 1, !dbg !1456
  store i64 %17, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.100, i64 0, i64 1), align 8, !dbg !1456
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 501, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.do_item_link, i64 0, i64 0)) #15, !dbg !1456
  unreachable, !dbg !1456

if.then26:                                        ; preds = %if.then
  %18 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 19), align 8, !dbg !1477, !tbaa !1151, !range !671
  %tobool27.not = icmp eq i8 %18, 0, !dbg !1477
  br i1 %tobool27.not, label %cond.false, label %cond.true, !dbg !1477

cond.true:                                        ; preds = %if.then26
  %gcov_ctr33 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.100, i64 0, i64 2), align 16, !dbg !1477
  %19 = add i64 %gcov_ctr33, 1, !dbg !1477
  store i64 %19, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.100, i64 0, i64 2), align 16, !dbg !1477
  %call = tail call i64 @get_cas_id() #13, !dbg !1477
  br label %cond.end, !dbg !1477

cond.false:                                       ; preds = %if.then26
  %gcov_ctr34 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.100, i64 0, i64 3), align 8, !dbg !1477
  %20 = add i64 %gcov_ctr34, 1, !dbg !1477
  store i64 %20, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.100, i64 0, i64 3), align 8, !dbg !1477
  br label %cond.end, !dbg !1477

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond29 = phi i64 [ %call, %cond.true ], [ 0, %cond.false ], !dbg !1477
  %cas = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 10, i64 0, i32 0, !dbg !1477
  store i64 %cond29, i64* %cas, align 8, !dbg !1477, !tbaa !617
  br label %if.end30, !dbg !1477

if.end30:                                         ; preds = %cond.end, %if.then
  %call31 = tail call i32 @assoc_insert(%struct._stritem* noundef nonnull %it, i32 noundef %hv) #12, !dbg !1479
  tail call fastcc void @item_link_q(%struct._stritem* noundef nonnull %it) #13, !dbg !1480
  %refcount = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 6, !dbg !1481
  %21 = load i16, i16* %refcount, align 4, !dbg !1481, !tbaa !615
  %inc = add i16 %21, 1, !dbg !1481
  store i16 %inc, i16* %refcount, align 4, !dbg !1481, !tbaa !615
  tail call void @item_stats_sizes_add(%struct._stritem* noundef nonnull %it) #13, !dbg !1482
  ret i32 1, !dbg !1483
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @item_link_q(%struct._stritem* noundef %it) unnamed_addr #0 !dbg !1484 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.101, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.101, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1486, metadata !DIExpression()), !dbg !1487
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 8, !dbg !1488
  %1 = load i8, i8* %slabs_clsid, align 8, !dbg !1488, !tbaa !617
  %idxprom = zext i8 %1 to i64, !dbg !1489
  %arrayidx = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom, !dbg !1489
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !1490
  tail call fastcc void @do_item_link_q(%struct._stritem* noundef %it) #13, !dbg !1491
  %2 = load i8, i8* %slabs_clsid, align 8, !dbg !1492, !tbaa !617
  %idxprom2 = zext i8 %2 to i64, !dbg !1493
  %arrayidx3 = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom2, !dbg !1493
  %call4 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx3) #12, !dbg !1494
  ret void, !dbg !1495
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_item_unlink(%struct._stritem* noundef %it, i32 noundef %hv) local_unnamed_addr #0 !dbg !1496 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.102, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.102, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1500, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %hv, metadata !1501, metadata !DIExpression()), !dbg !1502
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !1503
  %1 = load i16, i16* %it_flags, align 2, !dbg !1503, !tbaa !615
  %2 = and i16 %1, 1, !dbg !1505
  %cmp.not = icmp eq i16 %2, 0, !dbg !1506
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1507

if.then:                                          ; preds = %entry
  %gcov_ctr28 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.102, i64 0, i64 1), align 8, !dbg !1508
  %3 = add i64 %gcov_ctr28, 1, !dbg !1508
  store i64 %3, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.102, i64 0, i64 1), align 8, !dbg !1508
  %4 = and i16 %1, -2, !dbg !1510
  store i16 %4, i16* %it_flags, align 2, !dbg !1510, !tbaa !615
  tail call void @STATS_LOCK() #12, !dbg !1511
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 9, !dbg !1512
  %5 = load i8, i8* %nkey, align 1, !dbg !1512, !tbaa !617
  %conv6 = zext i8 %5 to i64, !dbg !1512
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 5, !dbg !1512
  %6 = load i32, i32* %nbytes, align 8, !dbg !1512, !tbaa !625
  %conv8 = sext i32 %6 to i64, !dbg !1512
  %7 = load i16, i16* %it_flags, align 2, !dbg !1512, !tbaa !615
  %conv11 = zext i16 %7 to i32, !dbg !1512
  %and12 = lshr i32 %conv11, 6, !dbg !1512
  %8 = and i32 %and12, 4, !dbg !1512
  %9 = zext i32 %8 to i64, !dbg !1512
  %and16 = shl nuw nsw i32 %conv11, 2, !dbg !1512
  %10 = and i32 %and16, 8, !dbg !1512
  %11 = zext i32 %10 to i64, !dbg !1512
  %12 = load i64, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 1), align 8, !dbg !1513, !tbaa !1467
  %13 = add nsw i64 %conv6, %conv8, !dbg !1512
  %14 = add i64 %12, -49, !dbg !1512
  %15 = add nsw i64 %13, %9, !dbg !1512
  %16 = add nsw i64 %15, %11, !dbg !1513
  %sub = sub i64 %14, %16, !dbg !1513
  store i64 %sub, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 1), align 8, !dbg !1513, !tbaa !1467
  %17 = load i64, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 0), align 8, !dbg !1514, !tbaa !1470
  %sub20 = add i64 %17, -1, !dbg !1514
  store i64 %sub20, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 0), align 8, !dbg !1514, !tbaa !1470
  tail call void @STATS_UNLOCK() #12, !dbg !1515
  tail call void @item_stats_sizes_remove(%struct._stritem* noundef nonnull %it) #13, !dbg !1516
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 10, !dbg !1517
  %18 = bitcast [0 x %union.anon]* %data to i8*, !dbg !1517
  %19 = load i16, i16* %it_flags, align 2, !dbg !1517, !tbaa !615
  %20 = shl i16 %19, 2, !dbg !1517
  %21 = and i16 %20, 8, !dbg !1517
  %22 = zext i16 %21 to i64, !dbg !1517
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %22, !dbg !1517
  %23 = load i8, i8* %nkey, align 1, !dbg !1518, !tbaa !617
  %conv27 = zext i8 %23 to i64, !dbg !1519
  tail call void @assoc_delete(i8* noundef nonnull %add.ptr, i64 noundef %conv27, i32 noundef %hv) #12, !dbg !1520
  tail call fastcc void @item_unlink_q(%struct._stritem* noundef nonnull %it) #13, !dbg !1521
  tail call void @do_item_remove(%struct._stritem* noundef nonnull %it) #13, !dbg !1522
  br label %if.end, !dbg !1523

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1524
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @item_stats_sizes_remove(%struct._stritem* nocapture noundef readonly %it) local_unnamed_addr #4 !dbg !1525 {
entry:
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1527, metadata !DIExpression()), !dbg !1530
  %0 = load i32*, i32** @stats_sizes_hist, align 8, !dbg !1531, !tbaa !759
  %cmp = icmp eq i32* %0, null, !dbg !1533
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1534

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* @stats_sizes_cas_min, align 8, !dbg !1535, !tbaa !585
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !1536
  %2 = load i16, i16* %it_flags, align 2, !dbg !1536, !tbaa !615
  %3 = and i16 %2, 2, !dbg !1536
  %tobool.not = icmp eq i16 %3, 0, !dbg !1536
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !1536

cond.true:                                        ; preds = %lor.lhs.false
  %gcov_ctr = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.103, i64 0, i64 0), align 16, !dbg !1536
  %4 = add i64 %gcov_ctr, 1, !dbg !1536
  store i64 %4, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.103, i64 0, i64 0), align 16, !dbg !1536
  %cas = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 10, i64 0, i32 0, !dbg !1536
  %5 = load i64, i64* %cas, align 8, !dbg !1536, !tbaa !617
  br label %cond.end, !dbg !1536

cond.false:                                       ; preds = %lor.lhs.false
  %gcov_ctr28 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.103, i64 0, i64 1), align 8, !dbg !1536
  %6 = add i64 %gcov_ctr28, 1, !dbg !1536
  store i64 %6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.103, i64 0, i64 1), align 8, !dbg !1536
  br label %cond.end, !dbg !1536

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ 0, %cond.false ], !dbg !1536
  %cmp1 = icmp ugt i64 %1, %cond, !dbg !1537
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1538

if.then:                                          ; preds = %cond.end, %entry
  %gcov_ctr29 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.103, i64 0, i64 2), align 16, !dbg !1539
  %7 = add i64 %gcov_ctr29, 1, !dbg !1539
  store i64 %7, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.103, i64 0, i64 2), align 16, !dbg !1539
  br label %return, !dbg !1539

if.end:                                           ; preds = %cond.end
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 9, !dbg !1540
  %8 = load i8, i8* %nkey, align 1, !dbg !1540, !tbaa !617
  %conv3 = zext i8 %8 to i32, !dbg !1540
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 5, !dbg !1540
  %9 = load i32, i32* %nbytes, align 8, !dbg !1540, !tbaa !625
  %conv8 = zext i16 %2 to i32, !dbg !1540
  %and9 = lshr i32 %conv8, 6, !dbg !1540
  %10 = and i32 %and9, 4, !dbg !1540
  %and15 = shl nuw nsw i32 %conv8, 2, !dbg !1540
  %11 = and i32 %and15, 8, !dbg !1540
  %add4 = or i32 %10, %11, !dbg !1540
  %add6 = or i32 %add4, 49, !dbg !1540
  %add12 = add nuw nsw i32 %add6, %conv3, !dbg !1540
  %add18 = add i32 %add12, %9, !dbg !1540
  call void @llvm.dbg.value(metadata i32 %add18, metadata !1528, metadata !DIExpression()), !dbg !1530
  %div = sdiv i32 %add18, 32, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %div, metadata !1529, metadata !DIExpression()), !dbg !1530
  %12 = and i32 %add18, 31, !dbg !1542
  %cmp20.not = icmp eq i32 %12, 0, !dbg !1542
  br i1 %cmp20.not, label %if.end23, label %if.then22, !dbg !1544

if.then22:                                        ; preds = %if.end
  %gcov_ctr30 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.103, i64 0, i64 3), align 8, !dbg !1545
  %13 = add i64 %gcov_ctr30, 1, !dbg !1545
  store i64 %13, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.103, i64 0, i64 3), align 8, !dbg !1545
  %inc = add nsw i32 %div, 1, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1529, metadata !DIExpression()), !dbg !1530
  br label %if.end23, !dbg !1546

if.end23:                                         ; preds = %if.then22, %if.end
  %bucket.0 = phi i32 [ %inc, %if.then22 ], [ %div, %if.end ], !dbg !1530
  call void @llvm.dbg.value(metadata i32 %bucket.0, metadata !1529, metadata !DIExpression()), !dbg !1530
  %14 = load i32, i32* @stats_sizes_buckets, align 4, !dbg !1547, !tbaa !625
  %cmp24 = icmp slt i32 %bucket.0, %14, !dbg !1549
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !1550

if.then26:                                        ; preds = %if.end23
  %gcov_ctr31 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.103, i64 0, i64 4), align 16, !dbg !1551
  %15 = add i64 %gcov_ctr31, 1, !dbg !1551
  store i64 %15, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.103, i64 0, i64 4), align 16, !dbg !1551
  %idxprom = sext i32 %bucket.0 to i64, !dbg !1551
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !1551
  %16 = load i32, i32* %arrayidx, align 4, !dbg !1552, !tbaa !625
  %dec = add i32 %16, -1, !dbg !1552
  store i32 %dec, i32* %arrayidx, align 4, !dbg !1552, !tbaa !625
  br label %if.end27, !dbg !1551

if.end27:                                         ; preds = %if.then26, %if.end23
  %gcov_ctr32 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.103, i64 0, i64 5), align 8, !dbg !1553
  %17 = add i64 %gcov_ctr32, 1, !dbg !1553
  store i64 %17, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.103, i64 0, i64 5), align 8, !dbg !1553
  br label %return

return:                                           ; preds = %if.end27, %if.then
  ret void, !dbg !1553
}

declare !dbg !1554 dso_local void @assoc_delete(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @item_unlink_q(%struct._stritem* noundef %it) unnamed_addr #0 !dbg !1559 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.104, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.104, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1561, metadata !DIExpression()), !dbg !1562
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 8, !dbg !1563
  %1 = load i8, i8* %slabs_clsid, align 8, !dbg !1563, !tbaa !617
  %idxprom = zext i8 %1 to i64, !dbg !1564
  %arrayidx = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom, !dbg !1564
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !1565
  tail call fastcc void @do_item_unlink_q(%struct._stritem* noundef %it) #13, !dbg !1566
  %2 = load i8, i8* %slabs_clsid, align 8, !dbg !1567, !tbaa !617
  %idxprom2 = zext i8 %2 to i64, !dbg !1568
  %arrayidx3 = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom2, !dbg !1568
  %call4 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx3) #12, !dbg !1569
  ret void, !dbg !1570
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_item_remove(%struct._stritem* noundef %it) local_unnamed_addr #0 !dbg !1571 {
entry:
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1573, metadata !DIExpression()), !dbg !1574
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !1575
  %0 = load i16, i16* %it_flags, align 2, !dbg !1575, !tbaa !615
  %1 = and i16 %0, 4, !dbg !1575
  %cmp = icmp eq i16 %1, 0, !dbg !1575
  br i1 %cmp, label %if.end, label %if.else, !dbg !1578

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.105, i64 0, i64 0), align 16, !dbg !1575
  %2 = add i64 %gcov_ctr, 1, !dbg !1575
  store i64 %2, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.105, i64 0, i64 0), align 16, !dbg !1575
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 554, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.do_item_remove, i64 0, i64 0)) #15, !dbg !1575
  unreachable, !dbg !1575

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 6, !dbg !1579
  %3 = load i16, i16* %refcount, align 4, !dbg !1579, !tbaa !615
  %cmp3.not = icmp eq i16 %3, 0, !dbg !1579
  br i1 %cmp3.not, label %if.else6, label %if.then5, !dbg !1582

if.then5:                                         ; preds = %if.end
  %gcov_ctr15 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.105, i64 0, i64 2), align 16, !dbg !1582
  %4 = add i64 %gcov_ctr15, 1, !dbg !1582
  store i64 %4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.105, i64 0, i64 2), align 16, !dbg !1582
  %dec = add i16 %3, -1, !dbg !1583
  store i16 %dec, i16* %refcount, align 4, !dbg !1583, !tbaa !615
  %cmp10 = icmp eq i16 %dec, 0, !dbg !1585
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1586

if.else6:                                         ; preds = %if.end
  %gcov_ctr14 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.105, i64 0, i64 1), align 8, !dbg !1579
  %5 = add i64 %gcov_ctr14, 1, !dbg !1579
  store i64 %5, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.105, i64 0, i64 1), align 8, !dbg !1579
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 555, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.do_item_remove, i64 0, i64 0)) #15, !dbg !1579
  unreachable, !dbg !1579

if.then12:                                        ; preds = %if.then5
  %gcov_ctr16 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.105, i64 0, i64 3), align 8, !dbg !1587
  %6 = add i64 %gcov_ctr16, 1, !dbg !1587
  store i64 %6, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.105, i64 0, i64 3), align 8, !dbg !1587
  tail call void @item_free(%struct._stritem* noundef nonnull %it) #13, !dbg !1589
  br label %if.end13, !dbg !1590

if.end13:                                         ; preds = %if.then12, %if.then5
  ret void, !dbg !1591
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_item_unlink_nolock(%struct._stritem* noundef %it, i32 noundef %hv) local_unnamed_addr #0 !dbg !1592 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1594, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i32 %hv, metadata !1595, metadata !DIExpression()), !dbg !1596
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !1597
  %1 = load i16, i16* %it_flags, align 2, !dbg !1597, !tbaa !615
  %2 = and i16 %1, 1, !dbg !1599
  %cmp.not = icmp eq i16 %2, 0, !dbg !1600
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1601

if.then:                                          ; preds = %entry
  %gcov_ctr28 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 1), align 8, !dbg !1602
  %3 = add i64 %gcov_ctr28, 1, !dbg !1602
  store i64 %3, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 1), align 8, !dbg !1602
  %4 = and i16 %1, -2, !dbg !1604
  store i16 %4, i16* %it_flags, align 2, !dbg !1604, !tbaa !615
  tail call void @STATS_LOCK() #12, !dbg !1605
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 9, !dbg !1606
  %5 = load i8, i8* %nkey, align 1, !dbg !1606, !tbaa !617
  %conv6 = zext i8 %5 to i64, !dbg !1606
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 5, !dbg !1606
  %6 = load i32, i32* %nbytes, align 8, !dbg !1606, !tbaa !625
  %conv8 = sext i32 %6 to i64, !dbg !1606
  %7 = load i16, i16* %it_flags, align 2, !dbg !1606, !tbaa !615
  %conv11 = zext i16 %7 to i32, !dbg !1606
  %and12 = lshr i32 %conv11, 6, !dbg !1606
  %8 = and i32 %and12, 4, !dbg !1606
  %9 = zext i32 %8 to i64, !dbg !1606
  %and16 = shl nuw nsw i32 %conv11, 2, !dbg !1606
  %10 = and i32 %and16, 8, !dbg !1606
  %11 = zext i32 %10 to i64, !dbg !1606
  %12 = load i64, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 1), align 8, !dbg !1607, !tbaa !1467
  %13 = add nsw i64 %conv6, %conv8, !dbg !1606
  %14 = add i64 %12, -49, !dbg !1606
  %15 = add nsw i64 %13, %9, !dbg !1606
  %16 = add nsw i64 %15, %11, !dbg !1607
  %sub = sub i64 %14, %16, !dbg !1607
  store i64 %sub, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 1), align 8, !dbg !1607, !tbaa !1467
  %17 = load i64, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 0), align 8, !dbg !1608, !tbaa !1470
  %sub20 = add i64 %17, -1, !dbg !1608
  store i64 %sub20, i64* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 0), align 8, !dbg !1608, !tbaa !1470
  tail call void @STATS_UNLOCK() #12, !dbg !1609
  tail call void @item_stats_sizes_remove(%struct._stritem* noundef nonnull %it) #13, !dbg !1610
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 10, !dbg !1611
  %18 = bitcast [0 x %union.anon]* %data to i8*, !dbg !1611
  %19 = load i16, i16* %it_flags, align 2, !dbg !1611, !tbaa !615
  %20 = shl i16 %19, 2, !dbg !1611
  %21 = and i16 %20, 8, !dbg !1611
  %22 = zext i16 %21 to i64, !dbg !1611
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %22, !dbg !1611
  %23 = load i8, i8* %nkey, align 1, !dbg !1612, !tbaa !617
  %conv27 = zext i8 %23 to i64, !dbg !1613
  tail call void @assoc_delete(i8* noundef nonnull %add.ptr, i64 noundef %conv27, i32 noundef %hv) #12, !dbg !1614
  tail call fastcc void @do_item_unlink_q(%struct._stritem* noundef nonnull %it) #13, !dbg !1615
  tail call void @do_item_remove(%struct._stritem* noundef nonnull %it) #13, !dbg !1616
  br label %if.end, !dbg !1617

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1618
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @do_item_unlink_q(%struct._stritem* noundef readonly %it) unnamed_addr #0 !dbg !1619 {
entry:
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1621, metadata !DIExpression()), !dbg !1624
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 8, !dbg !1625
  %0 = load i8, i8* %slabs_clsid, align 8, !dbg !1625, !tbaa !617
  %idxprom = zext i8 %0 to i64, !dbg !1626
  %arrayidx = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @heads, i64 0, i64 %idxprom, !dbg !1626
  call void @llvm.dbg.value(metadata %struct._stritem** %arrayidx, metadata !1622, metadata !DIExpression()), !dbg !1624
  %arrayidx3 = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @tails, i64 0, i64 %idxprom, !dbg !1627
  call void @llvm.dbg.value(metadata %struct._stritem** %arrayidx3, metadata !1623, metadata !DIExpression()), !dbg !1624
  %1 = load %struct._stritem*, %struct._stritem** %arrayidx, align 8, !dbg !1628, !tbaa !759
  %cmp = icmp eq %struct._stritem* %1, %it, !dbg !1630
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1631

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 1, !dbg !1632
  %2 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !1632, !tbaa !759
  %cmp4 = icmp eq %struct._stritem* %2, null, !dbg !1632
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !1636

if.then5:                                         ; preds = %if.then
  %gcov_ctr = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 0), align 16, !dbg !1636
  %3 = add i64 %gcov_ctr, 1, !dbg !1636
  store i64 %3, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 0), align 16, !dbg !1636
  %next = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 0, !dbg !1637
  %4 = load %struct._stritem*, %struct._stritem** %next, align 8, !dbg !1637, !tbaa !759
  store %struct._stritem* %4, %struct._stritem** %arrayidx, align 8, !dbg !1638, !tbaa !759
  br label %if.end6, !dbg !1639

if.else:                                          ; preds = %if.then
  %gcov_ctr91 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 1), align 8, !dbg !1632
  %5 = add i64 %gcov_ctr91, 1, !dbg !1632
  store i64 %5, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 1), align 8, !dbg !1632
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 467, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.do_item_unlink_q, i64 0, i64 0)) #15, !dbg !1632
  unreachable, !dbg !1632

if.end6:                                          ; preds = %if.then5, %entry
  %6 = load %struct._stritem*, %struct._stritem** %arrayidx3, align 8, !dbg !1640, !tbaa !759
  %cmp7 = icmp eq %struct._stritem* %6, %it, !dbg !1642
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !1643

if.then8:                                         ; preds = %if.end6
  %next9 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 0, !dbg !1644
  %7 = load %struct._stritem*, %struct._stritem** %next9, align 8, !dbg !1644, !tbaa !759
  %cmp10 = icmp eq %struct._stritem* %7, null, !dbg !1644
  br i1 %cmp10, label %if.end13, label %if.else12, !dbg !1648

if.else12:                                        ; preds = %if.then8
  %gcov_ctr92 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 2), align 16, !dbg !1644
  %8 = add i64 %gcov_ctr92, 1, !dbg !1644
  store i64 %8, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 2), align 16, !dbg !1644
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 471, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.do_item_unlink_q, i64 0, i64 0)) #15, !dbg !1644
  unreachable, !dbg !1644

if.end13:                                         ; preds = %if.then8
  %gcov_ctr93 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 3), align 8, !dbg !1649
  %9 = add i64 %gcov_ctr93, 1, !dbg !1649
  store i64 %9, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 3), align 8, !dbg !1649
  %prev14 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 1, !dbg !1650
  %10 = load %struct._stritem*, %struct._stritem** %prev14, align 8, !dbg !1650, !tbaa !759
  store %struct._stritem* %10, %struct._stritem** %arrayidx3, align 8, !dbg !1651, !tbaa !759
  br label %if.end15, !dbg !1652

if.end15:                                         ; preds = %if.end13, %if.end6
  %next16 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 0, !dbg !1653
  %11 = load %struct._stritem*, %struct._stritem** %next16, align 8, !dbg !1653, !tbaa !759
  %cmp17.not = icmp eq %struct._stritem* %11, %it, !dbg !1653
  br i1 %cmp17.not, label %if.else19, label %if.end20, !dbg !1656

if.else19:                                        ; preds = %if.end15
  %gcov_ctr94 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 4), align 16, !dbg !1653
  %12 = add i64 %gcov_ctr94, 1, !dbg !1653
  store i64 %12, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 4), align 16, !dbg !1653
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 474, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.do_item_unlink_q, i64 0, i64 0)) #15, !dbg !1653
  unreachable, !dbg !1653

if.end20:                                         ; preds = %if.end15
  %prev21 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 1, !dbg !1657
  %13 = load %struct._stritem*, %struct._stritem** %prev21, align 8, !dbg !1657, !tbaa !759
  %cmp22.not = icmp eq %struct._stritem* %13, %it, !dbg !1657
  br i1 %cmp22.not, label %if.else24, label %if.end25, !dbg !1660

if.else24:                                        ; preds = %if.end20
  %gcov_ctr95 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 5), align 8, !dbg !1657
  %14 = add i64 %gcov_ctr95, 1, !dbg !1657
  store i64 %14, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 5), align 8, !dbg !1657
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 475, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.do_item_unlink_q, i64 0, i64 0)) #15, !dbg !1657
  unreachable, !dbg !1657

if.end25:                                         ; preds = %if.end20
  %tobool.not = icmp eq %struct._stritem* %11, null, !dbg !1661
  br i1 %tobool.not, label %if.end31, label %if.then27, !dbg !1663

if.then27:                                        ; preds = %if.end25
  %gcov_ctr96 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 6), align 16, !dbg !1664
  %15 = add i64 %gcov_ctr96, 1, !dbg !1664
  store i64 %15, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 6), align 16, !dbg !1664
  %16 = load %struct._stritem*, %struct._stritem** %prev21, align 8, !dbg !1665, !tbaa !759
  %17 = load %struct._stritem*, %struct._stritem** %next16, align 8, !dbg !1666, !tbaa !759
  %prev30 = getelementptr inbounds %struct._stritem, %struct._stritem* %17, i64 0, i32 1, !dbg !1667
  store %struct._stritem* %16, %struct._stritem** %prev30, align 8, !dbg !1668, !tbaa !759
  %.pr = load %struct._stritem*, %struct._stritem** %prev21, align 8, !dbg !1669, !tbaa !759
  br label %if.end31, !dbg !1671

if.end31:                                         ; preds = %if.then27, %if.end25
  %18 = phi %struct._stritem* [ %.pr, %if.then27 ], [ %13, %if.end25 ], !dbg !1669
  %tobool33.not = icmp eq %struct._stritem* %18, null, !dbg !1672
  br i1 %tobool33.not, label %if.end38, label %if.then34, !dbg !1673

if.then34:                                        ; preds = %if.end31
  %gcov_ctr97 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 7), align 8, !dbg !1674
  %19 = add i64 %gcov_ctr97, 1, !dbg !1674
  store i64 %19, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 7), align 8, !dbg !1674
  %20 = load %struct._stritem*, %struct._stritem** %next16, align 8, !dbg !1675, !tbaa !759
  %21 = load %struct._stritem*, %struct._stritem** %prev21, align 8, !dbg !1676, !tbaa !759
  %next37 = getelementptr inbounds %struct._stritem, %struct._stritem* %21, i64 0, i32 0, !dbg !1677
  store %struct._stritem* %20, %struct._stritem** %next37, align 8, !dbg !1678, !tbaa !759
  br label %if.end38, !dbg !1679

if.end38:                                         ; preds = %if.then34, %if.end31
  %22 = load i8, i8* %slabs_clsid, align 8, !dbg !1680, !tbaa !617
  %idxprom40 = zext i8 %22 to i64, !dbg !1681
  %arrayidx41 = getelementptr inbounds [256 x i32], [256 x i32]* @sizes, i64 0, i64 %idxprom40, !dbg !1681
  %23 = load i32, i32* %arrayidx41, align 4, !dbg !1682, !tbaa !625
  %dec = add i32 %23, -1, !dbg !1682
  store i32 %dec, i32* %arrayidx41, align 4, !dbg !1682, !tbaa !625
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !1683
  %24 = load i16, i16* %it_flags, align 2, !dbg !1683, !tbaa !615
  %25 = and i16 %24, 128, !dbg !1685
  %tobool42.not = icmp eq i16 %25, 0, !dbg !1685
  br i1 %tobool42.not, label %if.else66, label %if.then43, !dbg !1686

if.then43:                                        ; preds = %if.end38
  %gcov_ctr98 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 8), align 16, !dbg !1687
  %26 = add i64 %gcov_ctr98, 1, !dbg !1687
  store i64 %26, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 8), align 16, !dbg !1687
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 9, !dbg !1687
  %27 = load i8, i8* %nkey, align 1, !dbg !1687, !tbaa !617
  %conv44 = zext i8 %27 to i64, !dbg !1687
  %28 = load i16, i16* %it_flags, align 2, !dbg !1687, !tbaa !615
  %conv49 = zext i16 %28 to i32, !dbg !1687
  %and50 = lshr i32 %conv49, 6, !dbg !1687
  %29 = and i32 %and50, 4, !dbg !1687
  %30 = zext i32 %29 to i64, !dbg !1687
  %and55 = shl nuw nsw i32 %conv49, 2, !dbg !1687
  %31 = and i32 %and55, 8, !dbg !1687
  %32 = zext i32 %31 to i64, !dbg !1687
  %33 = load i8, i8* %slabs_clsid, align 8, !dbg !1689, !tbaa !617
  %idxprom63 = zext i8 %33 to i64, !dbg !1690
  %arrayidx64 = getelementptr inbounds [256 x i64], [256 x i64]* @sizes_bytes, i64 0, i64 %idxprom63, !dbg !1690
  %34 = load i64, i64* %arrayidx64, align 8, !dbg !1691, !tbaa !585
  %35 = add i64 %34, -61, !dbg !1692
  %36 = add nuw nsw i64 %conv44, %30, !dbg !1692
  %37 = add nuw nsw i64 %36, %32, !dbg !1691
  %sub65 = sub i64 %35, %37, !dbg !1691
  store i64 %sub65, i64* %arrayidx64, align 8, !dbg !1691, !tbaa !585
  br label %if.end90, !dbg !1693

if.else66:                                        ; preds = %if.end38
  %gcov_ctr99 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 9), align 8, !dbg !1694
  %38 = add i64 %gcov_ctr99, 1, !dbg !1694
  store i64 %38, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 9), align 8, !dbg !1694
  %nkey67 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 9, !dbg !1694
  %39 = load i8, i8* %nkey67, align 1, !dbg !1694, !tbaa !617
  %conv68 = zext i8 %39 to i64, !dbg !1694
  %nbytes71 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 5, !dbg !1694
  %40 = load i32, i32* %nbytes71, align 8, !dbg !1694, !tbaa !625
  %conv72 = sext i32 %40 to i64, !dbg !1694
  %41 = load i16, i16* %it_flags, align 2, !dbg !1694, !tbaa !615
  %conv75 = zext i16 %41 to i32, !dbg !1694
  %and76 = lshr i32 %conv75, 6, !dbg !1694
  %42 = and i32 %and76, 4, !dbg !1694
  %43 = zext i32 %42 to i64, !dbg !1694
  %and82 = shl nuw nsw i32 %conv75, 2, !dbg !1694
  %44 = and i32 %and82, 8, !dbg !1694
  %45 = zext i32 %44 to i64, !dbg !1694
  %46 = load i8, i8* %slabs_clsid, align 8, !dbg !1696, !tbaa !617
  %idxprom87 = zext i8 %46 to i64, !dbg !1697
  %arrayidx88 = getelementptr inbounds [256 x i64], [256 x i64]* @sizes_bytes, i64 0, i64 %idxprom87, !dbg !1697
  %47 = load i64, i64* %arrayidx88, align 8, !dbg !1698, !tbaa !585
  %48 = add nsw i64 %conv68, %conv72, !dbg !1694
  %49 = add i64 %47, -49, !dbg !1694
  %50 = add nsw i64 %48, %43, !dbg !1694
  %51 = add nsw i64 %50, %45, !dbg !1698
  %sub89 = sub i64 %49, %51, !dbg !1698
  store i64 %sub89, i64* %arrayidx88, align 8, !dbg !1698, !tbaa !585
  br label %if.end90

if.end90:                                         ; preds = %if.else66, %if.then43
  ret void, !dbg !1699
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_item_update(%struct._stritem* noundef %it) local_unnamed_addr #0 !dbg !1700 {
entry:
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1702, metadata !DIExpression()), !dbg !1703
  %0 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 30), align 8, !dbg !1704, !tbaa !670, !range !671
  %tobool.not = icmp eq i8 %0, 0, !dbg !1704
  br i1 %tobool.not, label %if.else34, label %if.then, !dbg !1706

if.then:                                          ; preds = %entry
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !1707
  %1 = load i16, i16* %it_flags, align 2, !dbg !1707, !tbaa !615
  %conv = zext i16 %1 to i32, !dbg !1707
  %and = and i32 %conv, 4, !dbg !1707
  %cmp = icmp eq i32 %and, 0, !dbg !1707
  br i1 %cmp, label %if.end, label %if.else, !dbg !1711

if.else:                                          ; preds = %if.then
  %gcov_ctr57 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 1), align 8, !dbg !1707
  %2 = add i64 %gcov_ctr57, 1, !dbg !1707
  store i64 %2, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 1), align 8, !dbg !1707
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 568, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.do_item_update, i64 0, i64 0)) #15, !dbg !1707
  unreachable, !dbg !1707

if.end:                                           ; preds = %if.then
  %and5 = and i32 %conv, 1, !dbg !1712
  %cmp6.not = icmp eq i32 %and5, 0, !dbg !1714
  br i1 %cmp6.not, label %if.end33, label %if.then8, !dbg !1715

if.then8:                                         ; preds = %if.end
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 8, !dbg !1716
  %3 = load i8, i8* %slabs_clsid, align 8, !dbg !1716, !tbaa !617
  %4 = and i8 %3, -64, !dbg !1716
  %cmp11 = icmp eq i8 %4, -128, !dbg !1719
  br i1 %cmp11, label %land.lhs.true, label %if.else30, !dbg !1720

land.lhs.true:                                    ; preds = %if.then8
  %gcov_ctr58 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 2), align 16, !dbg !1721
  %5 = add i64 %gcov_ctr58, 1, !dbg !1721
  store i64 %5, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 2), align 16, !dbg !1721
  %6 = and i16 %1, 16, !dbg !1722
  %tobool16.not = icmp eq i16 %6, 0, !dbg !1722
  br i1 %tobool16.not, label %if.else30, label %if.then17, !dbg !1723

if.then17:                                        ; preds = %land.lhs.true
  %gcov_ctr59 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 3), align 8, !dbg !1724
  %7 = add i64 %gcov_ctr59, 1, !dbg !1724
  store i64 %7, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 3), align 8, !dbg !1724
  %8 = load volatile i32, i32* @current_time, align 4, !dbg !1724, !tbaa !625
  %time = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 3, !dbg !1726
  store i32 %8, i32* %time, align 8, !dbg !1727, !tbaa !625
  tail call fastcc void @item_unlink_q(%struct._stritem* noundef nonnull %it) #13, !dbg !1728
  %9 = load i8, i8* %slabs_clsid, align 8, !dbg !1729, !tbaa !617
  %10 = and i8 %9, 63, !dbg !1729
  %11 = or i8 %10, 64, !dbg !1730
  store i8 %11, i8* %slabs_clsid, align 8, !dbg !1730, !tbaa !617
  %12 = load i16, i16* %it_flags, align 2, !dbg !1731, !tbaa !615
  %13 = and i16 %12, -17, !dbg !1731
  store i16 %13, i16* %it_flags, align 2, !dbg !1731, !tbaa !615
  tail call fastcc void @item_link_q_warm(%struct._stritem* noundef nonnull %it) #13, !dbg !1732
  br label %if.end33, !dbg !1733

if.else30:                                        ; preds = %land.lhs.true, %if.then8
  %gcov_ctr60 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 4), align 16, !dbg !1734
  %14 = add i64 %gcov_ctr60, 1, !dbg !1734
  store i64 %14, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 4), align 16, !dbg !1734
  %15 = load volatile i32, i32* @current_time, align 4, !dbg !1734, !tbaa !625
  %time31 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 3, !dbg !1736
  store i32 %15, i32* %time31, align 8, !dbg !1737, !tbaa !625
  br label %if.end33

if.end33:                                         ; preds = %if.then17, %if.else30, %if.end
  %gcov_ctr61 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 5), align 8, !dbg !1738
  %16 = add i64 %gcov_ctr61, 1, !dbg !1738
  store i64 %16, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 5), align 8, !dbg !1738
  br label %if.end56, !dbg !1738

if.else34:                                        ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 0), align 16, !dbg !1739
  %17 = add i64 %gcov_ctr, 1, !dbg !1739
  store i64 %17, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 0), align 16, !dbg !1739
  %time35 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 3, !dbg !1741
  %18 = load i32, i32* %time35, align 8, !dbg !1741, !tbaa !625
  %19 = load volatile i32, i32* @current_time, align 4, !dbg !1742, !tbaa !625
  %sub = add i32 %19, -60, !dbg !1743
  %cmp36 = icmp ult i32 %18, %sub, !dbg !1744
  br i1 %cmp36, label %if.then38, label %if.end56, !dbg !1745

if.then38:                                        ; preds = %if.else34
  %it_flags39 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !1746
  %20 = load i16, i16* %it_flags39, align 2, !dbg !1746, !tbaa !615
  %conv40 = zext i16 %20 to i32, !dbg !1746
  %and41 = and i32 %conv40, 4, !dbg !1746
  %cmp42 = icmp eq i32 %and41, 0, !dbg !1746
  br i1 %cmp42, label %if.end46, label %if.else45, !dbg !1750

if.else45:                                        ; preds = %if.then38
  %gcov_ctr62 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 6), align 16, !dbg !1746
  %21 = add i64 %gcov_ctr62, 1, !dbg !1746
  store i64 %21, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 6), align 16, !dbg !1746
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 582, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.do_item_update, i64 0, i64 0)) #15, !dbg !1746
  unreachable, !dbg !1746

if.end46:                                         ; preds = %if.then38
  %and49 = and i32 %conv40, 1, !dbg !1751
  %cmp50.not = icmp eq i32 %and49, 0, !dbg !1753
  br i1 %cmp50.not, label %if.end54, label %if.then52, !dbg !1754

if.then52:                                        ; preds = %if.end46
  %gcov_ctr63 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 7), align 8, !dbg !1755
  %22 = add i64 %gcov_ctr63, 1, !dbg !1755
  store i64 %22, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 7), align 8, !dbg !1755
  %23 = load volatile i32, i32* @current_time, align 4, !dbg !1755, !tbaa !625
  store i32 %23, i32* %time35, align 8, !dbg !1757, !tbaa !625
  tail call fastcc void @item_unlink_q(%struct._stritem* noundef nonnull %it) #13, !dbg !1758
  tail call fastcc void @item_link_q(%struct._stritem* noundef nonnull %it) #13, !dbg !1759
  br label %if.end54, !dbg !1760

if.end54:                                         ; preds = %if.then52, %if.end46
  %gcov_ctr64 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 8), align 16, !dbg !1761
  %24 = add i64 %gcov_ctr64, 1, !dbg !1761
  store i64 %24, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 8), align 16, !dbg !1761
  br label %if.end56, !dbg !1761

if.end56:                                         ; preds = %if.else34, %if.end54, %if.end33
  ret void, !dbg !1762
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @item_link_q_warm(%struct._stritem* noundef %it) unnamed_addr #0 !dbg !1763 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.109, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.109, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1765, metadata !DIExpression()), !dbg !1766
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 8, !dbg !1767
  %1 = load i8, i8* %slabs_clsid, align 8, !dbg !1767, !tbaa !617
  %idxprom = zext i8 %1 to i64, !dbg !1768
  %arrayidx = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom, !dbg !1768
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !1769
  tail call fastcc void @do_item_link_q(%struct._stritem* noundef %it) #13, !dbg !1770
  %2 = load i8, i8* %slabs_clsid, align 8, !dbg !1771, !tbaa !617
  %idxprom2 = zext i8 %2 to i64, !dbg !1772
  %moves_to_warm = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom2, i32 12, !dbg !1773
  %3 = load i64, i64* %moves_to_warm, align 8, !dbg !1774, !tbaa !897
  %inc = add i64 %3, 1, !dbg !1774
  store i64 %inc, i64* %moves_to_warm, align 8, !dbg !1774, !tbaa !897
  %4 = load i8, i8* %slabs_clsid, align 8, !dbg !1775, !tbaa !617
  %idxprom5 = zext i8 %4 to i64, !dbg !1776
  %arrayidx6 = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom5, !dbg !1776
  %call7 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx6) #12, !dbg !1777
  ret void, !dbg !1778
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @do_item_replace(%struct._stritem* noundef %it, %struct._stritem* noundef %new_it, i32 noundef %hv) local_unnamed_addr #0 !dbg !1779 {
entry:
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1783, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata %struct._stritem* %new_it, metadata !1784, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i32 %hv, metadata !1785, metadata !DIExpression()), !dbg !1786
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !1787
  %0 = load i16, i16* %it_flags, align 2, !dbg !1787, !tbaa !615
  %1 = and i16 %0, 4, !dbg !1787
  %cmp = icmp eq i16 %1, 0, !dbg !1787
  br i1 %cmp, label %if.then, label %if.else, !dbg !1790

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.110, i64 0, i64 0), align 8, !dbg !1790
  %2 = add i64 %gcov_ctr, 1, !dbg !1790
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.110, i64 0, i64 0), align 8, !dbg !1790
  tail call void @do_item_unlink(%struct._stritem* noundef nonnull %it, i32 noundef %hv) #13, !dbg !1791
  %call = tail call i32 @do_item_link(%struct._stritem* noundef %new_it, i32 noundef %hv) #13, !dbg !1792
  ret i32 1, !dbg !1793

if.else:                                          ; preds = %entry
  %gcov_ctr2 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.110, i64 0, i64 1), align 8, !dbg !1787
  %3 = add i64 %gcov_ctr2, 1, !dbg !1787
  store i64 %3, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.110, i64 0, i64 1), align 8, !dbg !1787
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 595, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.do_item_replace, i64 0, i64 0)) #15, !dbg !1787
  unreachable, !dbg !1787
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @item_cachedump(i32 noundef %slabs_clsid, i32 noundef %limit, i32* nocapture noundef writeonly %bytes) local_unnamed_addr #0 !dbg !1794 {
entry:
  %key_temp = alloca [251 x i8], align 16
  %temp = alloca [512 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %slabs_clsid, metadata !1798, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %limit, metadata !1799, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32* %bytes, metadata !1800, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 2097152, metadata !1801, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 0, metadata !1806, metadata !DIExpression()), !dbg !1816
  %0 = getelementptr inbounds [251 x i8], [251 x i8]* %key_temp, i64 0, i64 0, !dbg !1817
  call void @llvm.lifetime.start.p0i8(i64 251, i8* nonnull %0) #14, !dbg !1817
  call void @llvm.dbg.declare(metadata [251 x i8]* %key_temp, metadata !1807, metadata !DIExpression()), !dbg !1818
  %1 = getelementptr inbounds [512 x i8], [512 x i8]* %temp, i64 0, i64 0, !dbg !1819
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %1) #14, !dbg !1819
  call void @llvm.dbg.declare(metadata [512 x i8]* %temp, metadata !1811, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i32 %slabs_clsid, metadata !1815, metadata !DIExpression()), !dbg !1816
  %or = or i32 %slabs_clsid, 128, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %or, metadata !1815, metadata !DIExpression()), !dbg !1816
  %idxprom = zext i32 %or to i64, !dbg !1822
  %arrayidx = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom, !dbg !1822
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !1823
  %arrayidx2 = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @heads, i64 0, i64 %idxprom, !dbg !1824
  %2 = load %struct._stritem*, %struct._stritem** %arrayidx2, align 8, !dbg !1824, !tbaa !759
  call void @llvm.dbg.value(metadata %struct._stritem* %2, metadata !1804, metadata !DIExpression()), !dbg !1816
  %call3 = tail call noalias i8* @malloc(i64 noundef 2097152) #12, !dbg !1825
  call void @llvm.dbg.value(metadata i8* %call3, metadata !1802, metadata !DIExpression()), !dbg !1816
  %cmp = icmp eq i8* %call3, null, !dbg !1826
  br i1 %cmp, label %if.then, label %if.end, !dbg !1828

if.then:                                          ; preds = %entry
  %gcov_ctr74 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 1), align 8, !dbg !1829
  %3 = add i64 %gcov_ctr74, 1, !dbg !1829
  store i64 %3, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 1), align 8, !dbg !1829
  %call7 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !1831
  br label %cleanup, !dbg !1832

if.end:                                           ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 0), align 16, !dbg !1833
  %4 = add i64 %gcov_ctr, 1, !dbg !1833
  store i64 %4, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 0), align 16, !dbg !1833
  call void @llvm.dbg.value(metadata i32 0, metadata !1803, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 0, metadata !1806, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata %struct._stritem* %2, metadata !1804, metadata !DIExpression()), !dbg !1816
  %cmp8.not126131 = icmp eq %struct._stritem* %2, null, !dbg !1834
  br i1 %cmp8.not126131, label %while.end, label %land.rhs.lr.ph.lr.ph, !dbg !1835

land.rhs.lr.ph.lr.ph:                             ; preds = %if.end
  %cmp10 = icmp eq i32 %limit, 0
  br label %land.rhs.lr.ph, !dbg !1835

land.rhs.lr.ph:                                   ; preds = %land.rhs.lr.ph.lr.ph, %if.end52
  %shown.0.ph134 = phi i32 [ 0, %land.rhs.lr.ph.lr.ph ], [ %inc, %if.end52 ]
  %it.0.ph133 = phi %struct._stritem* [ %2, %land.rhs.lr.ph.lr.ph ], [ %29, %if.end52 ]
  %bufcurr.0.ph132 = phi i32 [ 0, %land.rhs.lr.ph.lr.ph ], [ %add47, %if.end52 ]
  call void @llvm.dbg.value(metadata i32 %shown.0.ph134, metadata !1806, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata %struct._stritem* %it.0.ph133, metadata !1804, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %bufcurr.0.ph132, metadata !1803, metadata !DIExpression()), !dbg !1816
  %cmp12 = icmp ult i32 %shown.0.ph134, %limit
  br label %land.rhs, !dbg !1835

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.then26
  %it.0127 = phi %struct._stritem* [ %it.0.ph133, %land.rhs.lr.ph ], [ %17, %if.then26 ]
  call void @llvm.dbg.value(metadata %struct._stritem* %it.0127, metadata !1804, metadata !DIExpression()), !dbg !1816
  br i1 %cmp10, label %while.body.critedge, label %lor.rhs, !dbg !1836

lor.rhs:                                          ; preds = %land.rhs
  %5 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 2) to <2 x i64>*), align 16, !dbg !1837
  %6 = add <2 x i64> %5, <i64 1, i64 1>, !dbg !1837
  store <2 x i64> %6, <2 x i64>* bitcast (i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 2) to <2 x i64>*), align 16, !dbg !1837
  br i1 %cmp12, label %while.body, label %while.end, !dbg !1838

while.body.critedge:                              ; preds = %land.rhs
  %gcov_ctr76.c = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 3), align 8
  %7 = add i64 %gcov_ctr76.c, 1
  store i64 %7, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 3), align 8
  br label %while.body, !dbg !1838

while.body:                                       ; preds = %while.body.critedge, %lor.rhs
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0127, i64 0, i32 9, !dbg !1839
  %8 = load i8, i8* %nkey, align 1, !dbg !1839, !tbaa !617
  %cmp15 = icmp ult i8 %8, -5, !dbg !1839
  br i1 %cmp15, label %if.end18, label %if.else, !dbg !1843

if.else:                                          ; preds = %while.body
  %gcov_ctr77 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 4), align 16, !dbg !1839
  %9 = add i64 %gcov_ctr77, 1, !dbg !1839
  store i64 %9, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 4), align 16, !dbg !1839
  call void @__assert_fail(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 631, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @__PRETTY_FUNCTION__.item_cachedump, i64 0, i64 0)) #15, !dbg !1839
  unreachable, !dbg !1839

if.end18:                                         ; preds = %while.body
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0127, i64 0, i32 5, !dbg !1844
  %10 = load i32, i32* %nbytes, align 8, !dbg !1844, !tbaa !625
  %cmp19 = icmp eq i32 %10, 0, !dbg !1846
  br i1 %cmp19, label %land.lhs.true, label %lor.lhs.false, !dbg !1847

land.lhs.true:                                    ; preds = %if.end18
  %gcov_ctr78 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 5), align 8, !dbg !1848
  %11 = add i64 %gcov_ctr78, 1, !dbg !1848
  store i64 %11, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 5), align 8, !dbg !1848
  %12 = load i8, i8* %nkey, align 1, !dbg !1849, !tbaa !617
  %cmp23 = icmp eq i8 %12, 0, !dbg !1850
  br i1 %cmp23, label %if.then26, label %lor.lhs.false, !dbg !1851

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end18
  %13 = phi i8 [ %12, %land.lhs.true ], [ %8, %if.end18 ]
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0127, i64 0, i32 7, !dbg !1852
  %14 = load i16, i16* %it_flags, align 2, !dbg !1852, !tbaa !615
  %15 = and i16 %14, 4096, !dbg !1853
  %tobool.not = icmp eq i16 %15, 0, !dbg !1853
  br i1 %tobool.not, label %if.end27, label %if.then26, !dbg !1854

if.then26:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %gcov_ctr79 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 6), align 16, !dbg !1855
  %16 = add i64 %gcov_ctr79, 1, !dbg !1855
  store i64 %16, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 6), align 16, !dbg !1855
  %next = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0127, i64 0, i32 0, !dbg !1857
  %17 = load %struct._stritem*, %struct._stritem** %next, align 8, !dbg !1857, !tbaa !759
  call void @llvm.dbg.value(metadata i32 %shown.0.ph134, metadata !1806, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata %struct._stritem* %17, metadata !1804, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %bufcurr.0.ph132, metadata !1803, metadata !DIExpression()), !dbg !1816
  %cmp8.not = icmp eq %struct._stritem* %17, null, !dbg !1834
  br i1 %cmp8.not, label %while.end, label %land.rhs, !dbg !1835, !llvm.loop !1858

if.end27:                                         ; preds = %lor.lhs.false
  %nbytes.le = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0127, i64 0, i32 5, !dbg !1844
  %conv25.le = zext i16 %14 to i64, !dbg !1860
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0127, i64 0, i32 10, !dbg !1861
  %18 = bitcast [0 x %union.anon]* %data to i8*, !dbg !1861
  %and30 = shl nuw nsw i64 %conv25.le, 2, !dbg !1861
  %19 = and i64 %and30, 8, !dbg !1861
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !1861
  %conv33 = zext i8 %13 to i64, !dbg !1862
  %call34 = call i8* @strncpy(i8* noundef nonnull %0, i8* noundef nonnull %add.ptr, i64 noundef %conv33) #12, !dbg !1863
  %20 = load i8, i8* %nkey, align 1, !dbg !1864, !tbaa !617
  %idxprom36 = zext i8 %20 to i64, !dbg !1865
  %arrayidx37 = getelementptr inbounds [251 x i8], [251 x i8]* %key_temp, i64 0, i64 %idxprom36, !dbg !1865
  store i8 0, i8* %arrayidx37, align 1, !dbg !1866, !tbaa !617
  %21 = load i32, i32* %nbytes.le, align 8, !dbg !1867, !tbaa !625
  %sub = add nsw i32 %21, -2, !dbg !1868
  %exptime = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0127, i64 0, i32 4, !dbg !1869
  %22 = load i32, i32* %exptime, align 4, !dbg !1869, !tbaa !625
  %cmp41 = icmp eq i32 %22, 0, !dbg !1870
  br i1 %cmp41, label %cond.true, label %cond.false, !dbg !1871

cond.true:                                        ; preds = %if.end27
  %gcov_ctr80 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 7), align 8, !dbg !1871
  %23 = add i64 %gcov_ctr80, 1, !dbg !1871
  store i64 %23, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 7), align 8, !dbg !1871
  br label %cond.end, !dbg !1871

cond.false:                                       ; preds = %if.end27
  %gcov_ctr81 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 8), align 16, !dbg !1872
  %24 = add i64 %gcov_ctr81, 1, !dbg !1872
  store i64 %24, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 8), align 16, !dbg !1872
  %25 = load i32, i32* %exptime, align 4, !dbg !1873, !tbaa !625
  %conv44 = zext i32 %25 to i64, !dbg !1874
  %26 = load i64, i64* @process_started, align 8, !dbg !1875, !tbaa !585
  %add = add i64 %26, %conv44, !dbg !1876
  br label %cond.end, !dbg !1871

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond45 = phi i64 [ 0, %cond.true ], [ %add, %cond.false ], !dbg !1871
  %call46 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %1, i64 noundef 512, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %0, i32 noundef %sub, i64 noundef %cond45) #12, !dbg !1877
  call void @llvm.dbg.value(metadata i32 %call46, metadata !1805, metadata !DIExpression()), !dbg !1816
  %add47 = add i32 %call46, %bufcurr.0.ph132, !dbg !1878
  %27 = add i32 %add47, -2097147, !dbg !1880
  %cmp49 = icmp ult i32 %27, -2097153, !dbg !1880
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !1881

if.then51:                                        ; preds = %cond.end
  %gcov_ctr82 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 9), align 8, !dbg !1882
  %28 = add i64 %gcov_ctr82, 1, !dbg !1882
  store i64 %28, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 9), align 8, !dbg !1882
  br label %while.end, !dbg !1882

if.end52:                                         ; preds = %cond.end
  %idx.ext = zext i32 %bufcurr.0.ph132 to i64, !dbg !1883
  %add.ptr53 = getelementptr inbounds i8, i8* %call3, i64 %idx.ext, !dbg !1883
  %conv55 = zext i32 %call46 to i64, !dbg !1884
  %call56 = call i8* @memcpy(i8* noundef nonnull %add.ptr53, i8* noundef nonnull %1, i64 noundef %conv55) #12, !dbg !1885
  call void @llvm.dbg.value(metadata i32 %add47, metadata !1803, metadata !DIExpression()), !dbg !1816
  %inc = add i32 %shown.0.ph134, 1, !dbg !1886
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1806, metadata !DIExpression()), !dbg !1816
  %next58 = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0127, i64 0, i32 0, !dbg !1887
  %29 = load %struct._stritem*, %struct._stritem** %next58, align 8, !dbg !1887, !tbaa !759
  call void @llvm.dbg.value(metadata %struct._stritem* %29, metadata !1804, metadata !DIExpression()), !dbg !1816
  %cmp8.not126 = icmp eq %struct._stritem* %29, null, !dbg !1834
  br i1 %cmp8.not126, label %while.end, label %land.rhs.lr.ph, !dbg !1835, !llvm.loop !1858

while.end:                                        ; preds = %if.end52, %lor.rhs, %if.then26, %if.end, %if.then51
  %bufcurr.0.ph125 = phi i32 [ %bufcurr.0.ph132, %if.then51 ], [ 0, %if.end ], [ %bufcurr.0.ph132, %if.then26 ], [ %bufcurr.0.ph132, %lor.rhs ], [ %add47, %if.end52 ]
  %idx.ext59 = zext i32 %bufcurr.0.ph125 to i64, !dbg !1888
  %add.ptr60 = getelementptr inbounds i8, i8* %call3, i64 %idx.ext59, !dbg !1888
  %call61 = call i8* @memcpy(i8* noundef nonnull %add.ptr60, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 noundef 6) #12, !dbg !1889
  %add62 = add i32 %bufcurr.0.ph125, 5, !dbg !1890
  call void @llvm.dbg.value(metadata i32 %add62, metadata !1803, metadata !DIExpression()), !dbg !1816
  store i32 %add62, i32* %bytes, align 4, !dbg !1891, !tbaa !625
  %call65 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !1892
  br label %cleanup, !dbg !1893

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %1) #14, !dbg !1894
  call void @llvm.lifetime.end.p0i8(i64 251, i8* nonnull %0) #14, !dbg !1894
  ret i8* %call3, !dbg !1894
}

; Function Attrs: nounwind
declare !dbg !1895 dso_local noalias i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1899 dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1904 dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_item_stats_automove(%struct.item_stats_automove* nocapture noundef writeonly %am) local_unnamed_addr #0 !dbg !1908 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata %struct.item_stats_automove* %am, metadata !1922, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i32 0, metadata !1923, metadata !DIExpression()), !dbg !1929
  br label %for.body, !dbg !1930

for.body:                                         ; preds = %entry, %if.end49
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end49 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1923, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata !DIArgList(%struct.item_stats_automove* %am, i64 %indvars.iv), metadata !1924, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1928, metadata !DIExpression()), !dbg !1931
  %arrayidx2 = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %indvars.iv, !dbg !1932
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx2) #12, !dbg !1933
  %outofmemory = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %indvars.iv, i32 3, !dbg !1934
  %1 = load i64, i64* %outofmemory, align 8, !dbg !1934, !tbaa !1198
  %outofmemory5 = getelementptr inbounds %struct.item_stats_automove, %struct.item_stats_automove* %am, i64 %indvars.iv, i32 1, !dbg !1935
  store i64 %1, i64* %outofmemory5, align 8, !dbg !1936, !tbaa !1937
  %call8 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx2) #12, !dbg !1939
  %or9 = and i64 %indvars.iv, 4294967167, !dbg !1940
  %idxprom10 = or i64 %or9, 128, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1928, metadata !DIExpression(DW_OP_constu, 128, DW_OP_or, DW_OP_stack_value)), !dbg !1931
  %arrayidx11 = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom10, !dbg !1940
  %call12 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx11) #12, !dbg !1941
  %evicted = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom10, i32 0, !dbg !1942
  %2 = load i64, i64* %evicted, align 8, !dbg !1942, !tbaa !929
  %evicted15 = getelementptr inbounds %struct.item_stats_automove, %struct.item_stats_automove* %am, i64 %indvars.iv, i32 0, !dbg !1943
  store i64 %2, i64* %evicted15, align 8, !dbg !1944, !tbaa !1945
  %arrayidx17 = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @tails, i64 0, i64 %idxprom10, !dbg !1946
  %3 = load %struct._stritem*, %struct._stritem** %arrayidx17, align 8, !dbg !1946, !tbaa !759
  %tobool.not = icmp eq %struct._stritem* %3, null, !dbg !1946
  br i1 %tobool.not, label %if.then, label %if.else, !dbg !1948

if.then:                                          ; preds = %for.body
  %gcov_ctr53 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 1), align 8, !dbg !1949
  %4 = add i64 %gcov_ctr53, 1, !dbg !1949
  store i64 %4, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 1), align 8, !dbg !1949
  br label %if.end49, !dbg !1951

if.else:                                          ; preds = %for.body
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %3, i64 0, i32 5, !dbg !1952
  %5 = load i32, i32* %nbytes, align 8, !dbg !1952, !tbaa !625
  %cmp20 = icmp eq i32 %5, 0, !dbg !1954
  br i1 %cmp20, label %land.lhs.true, label %if.else42, !dbg !1955

land.lhs.true:                                    ; preds = %if.else
  %gcov_ctr54 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 2), align 16, !dbg !1956
  %6 = add i64 %gcov_ctr54, 1, !dbg !1956
  store i64 %6, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 2), align 16, !dbg !1956
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %3, i64 0, i32 9, !dbg !1957
  %7 = load i8, i8* %nkey, align 1, !dbg !1957, !tbaa !617
  %cmp23 = icmp eq i8 %7, 0, !dbg !1958
  br i1 %cmp23, label %land.lhs.true25, label %if.else42, !dbg !1959

land.lhs.true25:                                  ; preds = %land.lhs.true
  %gcov_ctr55 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 3), align 8, !dbg !1960
  %8 = add i64 %gcov_ctr55, 1, !dbg !1960
  store i64 %8, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 3), align 8, !dbg !1960
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %3, i64 0, i32 7, !dbg !1961
  %9 = load i16, i16* %it_flags, align 2, !dbg !1961, !tbaa !615
  %cmp29 = icmp eq i16 %9, 1, !dbg !1962
  br i1 %cmp29, label %if.then31, label %if.else42, !dbg !1963

if.then31:                                        ; preds = %land.lhs.true25
  %prev = getelementptr inbounds %struct._stritem, %struct._stritem* %3, i64 0, i32 1, !dbg !1964
  %10 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !1964, !tbaa !759
  %tobool34.not = icmp eq %struct._stritem* %10, null, !dbg !1967
  br i1 %tobool34.not, label %if.else40, label %if.then35, !dbg !1968

if.then35:                                        ; preds = %if.then31
  %gcov_ctr57 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 5), align 8, !dbg !1969
  %11 = add i64 %gcov_ctr57, 1, !dbg !1969
  store i64 %11, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 5), align 8, !dbg !1969
  %12 = load volatile i32, i32* @current_time, align 4, !dbg !1969, !tbaa !625
  %13 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !1971, !tbaa !759
  %time = getelementptr inbounds %struct._stritem, %struct._stritem* %13, i64 0, i32 3, !dbg !1972
  %14 = load i32, i32* %time, align 8, !dbg !1972, !tbaa !625
  %sub = sub i32 %12, %14, !dbg !1973
  br label %if.end49, !dbg !1974

if.else40:                                        ; preds = %if.then31
  %gcov_ctr56 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 4), align 16, !dbg !1975
  %15 = add i64 %gcov_ctr56, 1, !dbg !1975
  store i64 %15, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 4), align 16, !dbg !1975
  br label %if.end49

if.else42:                                        ; preds = %land.lhs.true25, %land.lhs.true, %if.else
  %gcov_ctr58 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 6), align 16, !dbg !1977
  %16 = add i64 %gcov_ctr58, 1, !dbg !1977
  store i64 %16, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 6), align 16, !dbg !1977
  %17 = load volatile i32, i32* @current_time, align 4, !dbg !1977, !tbaa !625
  %time45 = getelementptr inbounds %struct._stritem, %struct._stritem* %3, i64 0, i32 3, !dbg !1979
  %18 = load i32, i32* %time45, align 8, !dbg !1979, !tbaa !625
  %sub46 = sub i32 %17, %18, !dbg !1980
  br label %if.end49

if.end49:                                         ; preds = %if.else42, %if.else40, %if.then35, %if.then
  %sub46.sink = phi i32 [ %sub46, %if.else42 ], [ 0, %if.else40 ], [ %sub, %if.then35 ], [ 0, %if.then ]
  %age47 = getelementptr inbounds %struct.item_stats_automove, %struct.item_stats_automove* %am, i64 %indvars.iv, i32 2, !dbg !1981
  store i32 %sub46.sink, i32* %age47, align 8, !dbg !1981, !tbaa !1982
  %call52 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx11) #12, !dbg !1983
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1923, metadata !DIExpression()), !dbg !1929
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64, !dbg !1985
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1930, !llvm.loop !1986

for.end:                                          ; preds = %if.end49
  ret void, !dbg !1988
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @item_stats_totals(void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, i8* noundef %c) local_unnamed_addr #0 !dbg !1989 {
entry:
  %totals = alloca %struct.itemstats_t, align 8
  call void @llvm.dbg.value(metadata void (i8*, i16, i8*, i32, i8*)* %add_stats, metadata !1998, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8* %c, metadata !1999, metadata !DIExpression()), !dbg !2007
  %0 = bitcast %struct.itemstats_t* %totals to i8*, !dbg !2008
  call void @llvm.lifetime.start.p0i8(i64 168, i8* nonnull %0) #14, !dbg !2008
  call void @llvm.dbg.declare(metadata %struct.itemstats_t* %totals, metadata !2000, metadata !DIExpression()), !dbg !2009
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 168) #12, !dbg !2010
  call void @llvm.dbg.value(metadata i32 0, metadata !2001, metadata !DIExpression()), !dbg !2007
  %expired_unfetched9 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 5
  %evicted_unfetched12 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 6
  %evicted_active16 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 7
  %evicted20 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 0
  %reclaimed24 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 2
  %crawler_reclaimed28 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 8
  %crawler_items_checked32 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 9
  %lrutail_reflocked36 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 10
  %moves_to_cold40 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 11
  %moves_to_warm44 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 12
  %moves_within_lru48 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 13
  %direct_reclaims52 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 14
  call void @llvm.dbg.value(metadata i32 0, metadata !2001, metadata !DIExpression()), !dbg !2007
  %1 = bitcast i64* %expired_unfetched9 to <2 x i64>*
  %2 = bitcast i64* %expired_unfetched9 to <2 x i64>*
  %3 = bitcast i64* %evicted_active16 to <2 x i64>*
  %4 = bitcast i64* %evicted_active16 to <2 x i64>*
  %5 = bitcast i64* %crawler_items_checked32 to <2 x i64>*
  %6 = bitcast i64* %crawler_items_checked32 to <2 x i64>*
  %7 = bitcast i64* %moves_to_cold40 to <2 x i64>*
  %8 = bitcast i64* %moves_to_cold40 to <2 x i64>*
  %9 = bitcast i64* %moves_within_lru48 to <2 x i64>*
  %10 = bitcast i64* %moves_within_lru48 to <2 x i64>*
  br label %for.cond1.preheader, !dbg !2011

for.cond1.preheader:                              ; preds = %entry, %for.end
  %n.0125 = phi i32 [ 0, %entry ], [ %inc58, %for.end ]
  call void @llvm.dbg.value(metadata i32 %n.0125, metadata !2001, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 0, metadata !2002, metadata !DIExpression()), !dbg !2012
  br label %for.body3, !dbg !2013

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2002, metadata !DIExpression()), !dbg !2012
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @lru_type_map, i64 0, i64 %indvars.iv, !dbg !2015
  %11 = load i32, i32* %arrayidx, align 4, !dbg !2015, !tbaa !625
  %or = or i32 %11, %n.0125, !dbg !2018
  call void @llvm.dbg.value(metadata i32 %or, metadata !2006, metadata !DIExpression()), !dbg !2012
  %idxprom4 = sext i32 %or to i64, !dbg !2019
  %arrayidx5 = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom4, !dbg !2019
  %call6 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx5) #12, !dbg !2020
  %expired_unfetched = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom4, i32 5, !dbg !2021
  %12 = bitcast i64* %expired_unfetched to <2 x i64>*, !dbg !2021
  %13 = load <2 x i64>, <2 x i64>* %12, align 8, !dbg !2021, !tbaa !585
  %14 = load <2 x i64>, <2 x i64>* %1, align 8, !dbg !2022, !tbaa !585
  %15 = add <2 x i64> %14, %13, !dbg !2022
  store <2 x i64> %15, <2 x i64>* %2, align 8, !dbg !2022, !tbaa !585
  %evicted_active = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom4, i32 7, !dbg !2023
  %evicted = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom4, i32 0, !dbg !2024
  %16 = load i64, i64* %evicted, align 8, !dbg !2024, !tbaa !929
  %17 = load i64, i64* %evicted20, align 8, !dbg !2025, !tbaa !929
  %add21 = add i64 %17, %16, !dbg !2025
  store i64 %add21, i64* %evicted20, align 8, !dbg !2025, !tbaa !929
  %reclaimed = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom4, i32 2, !dbg !2026
  %18 = load i64, i64* %reclaimed, align 8, !dbg !2026, !tbaa !838
  %19 = load i64, i64* %reclaimed24, align 8, !dbg !2027, !tbaa !838
  %add25 = add i64 %19, %18, !dbg !2027
  store i64 %add25, i64* %reclaimed24, align 8, !dbg !2027, !tbaa !838
  %20 = bitcast i64* %evicted_active to <2 x i64>*, !dbg !2023
  %21 = load <2 x i64>, <2 x i64>* %20, align 8, !dbg !2023, !tbaa !585
  %22 = load <2 x i64>, <2 x i64>* %3, align 8, !dbg !2028, !tbaa !585
  %23 = add <2 x i64> %22, %21, !dbg !2028
  store <2 x i64> %23, <2 x i64>* %4, align 8, !dbg !2028, !tbaa !585
  %crawler_items_checked = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom4, i32 9, !dbg !2029
  %24 = bitcast i64* %crawler_items_checked to <2 x i64>*, !dbg !2029
  %25 = load <2 x i64>, <2 x i64>* %24, align 8, !dbg !2029, !tbaa !585
  %26 = load <2 x i64>, <2 x i64>* %5, align 8, !dbg !2030, !tbaa !585
  %27 = add <2 x i64> %26, %25, !dbg !2030
  store <2 x i64> %27, <2 x i64>* %6, align 8, !dbg !2030, !tbaa !585
  %moves_to_cold = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom4, i32 11, !dbg !2031
  %28 = bitcast i64* %moves_to_cold to <2 x i64>*, !dbg !2031
  %29 = load <2 x i64>, <2 x i64>* %28, align 8, !dbg !2031, !tbaa !585
  %30 = load <2 x i64>, <2 x i64>* %7, align 8, !dbg !2032, !tbaa !585
  %31 = add <2 x i64> %30, %29, !dbg !2032
  store <2 x i64> %31, <2 x i64>* %8, align 8, !dbg !2032, !tbaa !585
  %moves_within_lru = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom4, i32 13, !dbg !2033
  %32 = bitcast i64* %moves_within_lru to <2 x i64>*, !dbg !2033
  %33 = load <2 x i64>, <2 x i64>* %32, align 8, !dbg !2033, !tbaa !585
  %34 = load <2 x i64>, <2 x i64>* %9, align 8, !dbg !2034, !tbaa !585
  %35 = add <2 x i64> %34, %33, !dbg !2034
  store <2 x i64> %35, <2 x i64>* %10, align 8, !dbg !2034, !tbaa !585
  %call56 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx5) #12, !dbg !2035
  %gcov_ctr76 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.113, i64 0, i64 1), align 8, !dbg !2036
  %36 = add i64 %gcov_ctr76, 1, !dbg !2036
  store i64 %36, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.113, i64 0, i64 1), align 8, !dbg !2036
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2002, metadata !DIExpression()), !dbg !2012
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !2037
  br i1 %exitcond.not, label %for.end, label %for.body3, !dbg !2013, !llvm.loop !2038

for.end:                                          ; preds = %for.body3
  %gcov_ctr77 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.113, i64 0, i64 2), align 16, !dbg !2040
  %37 = add i64 %gcov_ctr77, 1, !dbg !2040
  store i64 %37, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.113, i64 0, i64 2), align 16, !dbg !2040
  %inc58 = add nuw nsw i32 %n.0125, 1, !dbg !2040
  call void @llvm.dbg.value(metadata i32 %inc58, metadata !2001, metadata !DIExpression()), !dbg !2007
  %exitcond127.not = icmp eq i32 %inc58, 64, !dbg !2041
  br i1 %exitcond127.not, label %for.end59, label %for.cond1.preheader, !dbg !2011, !llvm.loop !2042

for.end59:                                        ; preds = %for.end
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.113, i64 0, i64 0), align 16, !dbg !2044
  %38 = add i64 %gcov_ctr, 1, !dbg !2044
  store i64 %38, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.113, i64 0, i64 0), align 16, !dbg !2044
  %39 = bitcast i8* %c to %struct.conn*, !dbg !2044
  %40 = load i64, i64* %expired_unfetched9, align 8, !dbg !2044, !tbaa !573
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %40) #12, !dbg !2044
  %41 = load i64, i64* %evicted_unfetched12, align 8, !dbg !2045, !tbaa !954
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %41) #12, !dbg !2045
  %42 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 29), align 1, !dbg !2046, !tbaa !2048, !range !671
  %tobool.not = icmp eq i8 %42, 0, !dbg !2046
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2049

if.then:                                          ; preds = %for.end59
  %gcov_ctr78 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.113, i64 0, i64 3), align 8, !dbg !2050
  %43 = add i64 %gcov_ctr78, 1, !dbg !2050
  store i64 %43, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.113, i64 0, i64 3), align 8, !dbg !2050
  %44 = load i64, i64* %evicted_active16, align 8, !dbg !2050, !tbaa !964
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %44) #12, !dbg !2050
  br label %if.end, !dbg !2052

if.end:                                           ; preds = %if.then, %for.end59
  %45 = load i64, i64* %evicted20, align 8, !dbg !2053, !tbaa !929
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %45) #12, !dbg !2053
  %46 = load i64, i64* %reclaimed24, align 8, !dbg !2054, !tbaa !838
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %46) #12, !dbg !2054
  %47 = load i64, i64* %crawler_reclaimed28, align 8, !dbg !2055, !tbaa !565
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %47) #12, !dbg !2055
  %48 = load i64, i64* %crawler_items_checked32, align 8, !dbg !2056, !tbaa !576
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %48) #12, !dbg !2056
  %49 = load i64, i64* %lrutail_reflocked36, align 8, !dbg !2057, !tbaa !802
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %49) #12, !dbg !2057
  %50 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 29), align 1, !dbg !2058, !tbaa !2048, !range !671
  %tobool68.not = icmp eq i8 %50, 0, !dbg !2058
  br i1 %tobool68.not, label %if.end75, label %if.then69, !dbg !2060

if.then69:                                        ; preds = %if.end
  %gcov_ctr79 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.113, i64 0, i64 4), align 16, !dbg !2061
  %51 = add i64 %gcov_ctr79, 1, !dbg !2061
  store i64 %51, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.113, i64 0, i64 4), align 16, !dbg !2061
  %52 = load i64, i64* %moves_to_cold40, align 8, !dbg !2061, !tbaa !912
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %52) #12, !dbg !2061
  %53 = load i64, i64* %moves_to_warm44, align 8, !dbg !2063, !tbaa !897
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %53) #12, !dbg !2063
  %54 = load i64, i64* %moves_within_lru48, align 8, !dbg !2064, !tbaa !887
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %54) #12, !dbg !2064
  %55 = load i64, i64* %direct_reclaims52, align 8, !dbg !2065, !tbaa !710
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %55) #12, !dbg !2065
  %call74 = call fastcc i64 @lru_total_bumps_dropped() #13, !dbg !2066
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %call74) #12, !dbg !2066
  br label %if.end75, !dbg !2067

if.end75:                                         ; preds = %if.then69, %if.end
  call void @llvm.lifetime.end.p0i8(i64 168, i8* nonnull %0) #14, !dbg !2068
  ret void, !dbg !2068
}

declare !dbg !2069 dso_local void @append_stat(i8* noundef, void (i8*, i16, i8*, i32, i8*)* noundef, %struct.conn* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @lru_total_bumps_dropped() unnamed_addr #0 !dbg !2459 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.114, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.114, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2461, metadata !DIExpression()), !dbg !2463
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @bump_buf_lock) #12, !dbg !2464
  call void @llvm.dbg.value(metadata %struct._lru_bump_buf* undef, metadata !2462, metadata !DIExpression()), !dbg !2463
  %b.013 = load %struct._lru_bump_buf*, %struct._lru_bump_buf** @bump_buf_head, align 8, !dbg !2465, !tbaa !759
  call void @llvm.dbg.value(metadata %struct._lru_bump_buf* %b.013, metadata !2462, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 0, metadata !2461, metadata !DIExpression()), !dbg !2463
  %cmp.not14 = icmp eq %struct._lru_bump_buf* %b.013, null, !dbg !2467
  br i1 %cmp.not14, label %for.end, label %for.body, !dbg !2469

for.body:                                         ; preds = %entry, %for.body
  %b.016 = phi %struct._lru_bump_buf* [ %b.0, %for.body ], [ %b.013, %entry ]
  %total.015 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %total.015, metadata !2461, metadata !DIExpression()), !dbg !2463
  %mutex = getelementptr inbounds %struct._lru_bump_buf, %struct._lru_bump_buf* %b.016, i64 0, i32 2, !dbg !2470
  %call1 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !2472
  %dropped = getelementptr inbounds %struct._lru_bump_buf, %struct._lru_bump_buf* %b.016, i64 0, i32 4, !dbg !2473
  %1 = load i64, i64* %dropped, align 8, !dbg !2473, !tbaa !2474
  %add = add i64 %1, %total.015, !dbg !2476
  call void @llvm.dbg.value(metadata i64 %add, metadata !2461, metadata !DIExpression()), !dbg !2463
  %call3 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !2477
  %gcov_ctr5 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.114, i64 0, i64 1), align 8, !dbg !2478
  %2 = add i64 %gcov_ctr5, 1, !dbg !2478
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.114, i64 0, i64 1), align 8, !dbg !2478
  %next = getelementptr inbounds %struct._lru_bump_buf, %struct._lru_bump_buf* %b.016, i64 0, i32 1, !dbg !2479
  call void @llvm.dbg.value(metadata %struct._lru_bump_buf* undef, metadata !2462, metadata !DIExpression()), !dbg !2463
  %b.0 = load %struct._lru_bump_buf*, %struct._lru_bump_buf** %next, align 8, !dbg !2465, !tbaa !759
  call void @llvm.dbg.value(metadata %struct._lru_bump_buf* %b.0, metadata !2462, metadata !DIExpression()), !dbg !2463
  %cmp.not = icmp eq %struct._lru_bump_buf* %b.0, null, !dbg !2467
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !2469, !llvm.loop !2480

for.end:                                          ; preds = %for.body, %entry
  %total.0.lcssa = phi i64 [ 0, %entry ], [ %add, %for.body ], !dbg !2463
  %call4 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @bump_buf_lock) #12, !dbg !2482
  ret i64 %total.0.lcssa, !dbg !2483
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @item_stats(void (i8*, i16, i8*, i32, i8*)* noundef readonly %add_stats, i8* noundef %c) local_unnamed_addr #0 !dbg !2484 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 0), align 16
  %thread_stats = alloca %struct.thread_stats, align 8
  %totals = alloca %struct.itemstats_t, align 16
  %lru_size_map = alloca [4 x i32], align 16
  %key_str = alloca [128 x i8], align 16
  %val_str = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata void (i8*, i16, i8*, i32, i8*)* %add_stats, metadata !2486, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8* %c, metadata !2487, metadata !DIExpression()), !dbg !2509
  %1 = bitcast %struct.thread_stats* %thread_stats to i8*, !dbg !2510
  call void @llvm.lifetime.start.p0i8(i64 6448, i8* nonnull %1) #14, !dbg !2510
  call void @llvm.dbg.declare(metadata %struct.thread_stats* %thread_stats, metadata !2488, metadata !DIExpression()), !dbg !2511
  call void @threadlocal_stats_aggregate(%struct.thread_stats* noundef nonnull %thread_stats) #12, !dbg !2512
  %2 = bitcast %struct.itemstats_t* %totals to i8*, !dbg !2513
  call void @llvm.lifetime.start.p0i8(i64 168, i8* nonnull %2) #14, !dbg !2513
  call void @llvm.dbg.declare(metadata %struct.itemstats_t* %totals, metadata !2489, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 0, metadata !2490, metadata !DIExpression()), !dbg !2509
  %3 = bitcast [4 x i32]* %lru_size_map to i8*
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %key_str, i64 0, i64 0
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %val_str, i64 0, i64 0
  %evicted9 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 0
  %evicted_nonzero12 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 1
  %outofmemory16 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 3
  %tailrepairs20 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 4
  %reclaimed24 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 2
  %expired_unfetched28 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 5
  %evicted_unfetched32 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 6
  %evicted_active36 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 7
  %crawler_reclaimed40 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 8
  %crawler_items_checked44 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 9
  %lrutail_reflocked48 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 10
  %moves_to_cold52 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 11
  %moves_to_warm56 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 12
  %moves_within_lru60 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 13
  %direct_reclaims64 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 14
  %mem_requested = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 19
  %evicted_time117 = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 20
  %hits_to_temp = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 18
  %hits_to_cold = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 17
  %hits_to_warm = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 16
  %hits_to_hot = getelementptr inbounds %struct.itemstats_t, %struct.itemstats_t* %totals, i64 0, i32 15
  %arrayidx150 = getelementptr inbounds [4 x i32], [4 x i32]* %lru_size_map, i64 0, i64 0
  %arrayidx158 = getelementptr inbounds [4 x i32], [4 x i32]* %lru_size_map, i64 0, i64 1
  %arrayidx166 = getelementptr inbounds [4 x i32], [4 x i32]* %lru_size_map, i64 0, i64 2
  %arrayidx176 = getelementptr inbounds [4 x i32], [4 x i32]* %lru_size_map, i64 0, i64 3
  %6 = bitcast %struct.itemstats_t* %totals to <2 x i64>*
  %7 = bitcast %struct.itemstats_t* %totals to <2 x i64>*
  %8 = bitcast i64* %reclaimed24 to <2 x i64>*
  %9 = bitcast i64* %reclaimed24 to <2 x i64>*
  %10 = bitcast i64* %tailrepairs20 to <2 x i64>*
  %11 = bitcast i64* %tailrepairs20 to <2 x i64>*
  %12 = bitcast i64* %evicted_unfetched32 to <2 x i64>*
  %13 = bitcast i64* %evicted_unfetched32 to <2 x i64>*
  %14 = bitcast i64* %crawler_reclaimed40 to <2 x i64>*
  %15 = bitcast i64* %crawler_reclaimed40 to <2 x i64>*
  %16 = bitcast i64* %lrutail_reflocked48 to <2 x i64>*
  %17 = bitcast i64* %lrutail_reflocked48 to <2 x i64>*
  %18 = bitcast i64* %moves_to_warm56 to <2 x i64>*
  %19 = bitcast i64* %moves_to_warm56 to <2 x i64>*
  br label %for.body, !dbg !2515

for.body:                                         ; preds = %entry, %for.inc389
  %n.0665 = phi i32 [ 0, %entry ], [ %inc390, %for.inc389 ]
  call void @llvm.dbg.value(metadata i32 %n.0665, metadata !2490, metadata !DIExpression()), !dbg !2509
  %call = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 168) #12, !dbg !2516
  call void @llvm.dbg.value(metadata i32 0, metadata !2496, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 0, metadata !2497, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 0, metadata !2498, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 0, metadata !2499, metadata !DIExpression()), !dbg !2517
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #14, !dbg !2518
  call void @llvm.dbg.declare(metadata [4 x i32]* %lru_size_map, metadata !2500, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), metadata !2501, metadata !DIExpression()), !dbg !2517
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #14, !dbg !2520
  call void @llvm.dbg.declare(metadata [128 x i8]* %key_str, metadata !2502, metadata !DIExpression()), !dbg !2521
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #14, !dbg !2522
  call void @llvm.dbg.declare(metadata [128 x i8]* %val_str, metadata !2506, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i32 0, metadata !2507, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 0, metadata !2508, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 0, metadata !2491, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 0, metadata !2499, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 0, metadata !2498, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 0, metadata !2497, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 0, metadata !2496, metadata !DIExpression()), !dbg !2517
  br label %for.body3, !dbg !2524

for.body3:                                        ; preds = %for.body, %sw.epilog
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %sw.epilog ]
  %age_warm.0664 = phi i32 [ 0, %for.body ], [ %age_warm.2643, %sw.epilog ]
  %age_hot.0663 = phi i32 [ 0, %for.body ], [ %age_hot.1641, %sw.epilog ]
  %age.0662 = phi i32 [ 0, %for.body ], [ %age.1639, %sw.epilog ]
  %size.0661 = phi i32 [ 0, %for.body ], [ %add71, %sw.epilog ]
  call void @llvm.dbg.value(metadata i32 %age_warm.0664, metadata !2499, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %age_hot.0663, metadata !2498, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %age.0662, metadata !2497, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %size.0661, metadata !2496, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2491, metadata !DIExpression()), !dbg !2517
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @lru_type_map, i64 0, i64 %indvars.iv, !dbg !2526
  %20 = load i32, i32* %arrayidx, align 4, !dbg !2526, !tbaa !625
  %or = or i32 %20, %n.0665, !dbg !2529
  call void @llvm.dbg.value(metadata i32 %or, metadata !2495, metadata !DIExpression()), !dbg !2517
  %idxprom4 = sext i32 %or to i64, !dbg !2530
  %arrayidx5 = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom4, !dbg !2530
  %call6 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx5) #12, !dbg !2531
  %evicted = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom4, i32 0, !dbg !2532
  %21 = bitcast i64* %evicted to <2 x i64>*, !dbg !2532
  %22 = load <2 x i64>, <2 x i64>* %21, align 8, !dbg !2532, !tbaa !585
  %23 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !2533, !tbaa !585
  %24 = add <2 x i64> %23, %22, !dbg !2533
  store <2 x i64> %24, <2 x i64>* %7, align 16, !dbg !2533, !tbaa !585
  %tailrepairs = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom4, i32 4, !dbg !2534
  %reclaimed = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom4, i32 2, !dbg !2535
  %25 = bitcast i64* %reclaimed to <2 x i64>*, !dbg !2535
  %26 = load <2 x i64>, <2 x i64>* %25, align 8, !dbg !2535, !tbaa !585
  %27 = load <2 x i64>, <2 x i64>* %8, align 16, !dbg !2536, !tbaa !585
  %28 = add <2 x i64> %27, %26, !dbg !2536
  store <2 x i64> %28, <2 x i64>* %9, align 16, !dbg !2536, !tbaa !585
  %29 = bitcast i64* %tailrepairs to <2 x i64>*, !dbg !2534
  %30 = load <2 x i64>, <2 x i64>* %29, align 8, !dbg !2534, !tbaa !585
  %31 = load <2 x i64>, <2 x i64>* %10, align 16, !dbg !2537, !tbaa !585
  %32 = add <2 x i64> %31, %30, !dbg !2537
  store <2 x i64> %32, <2 x i64>* %11, align 16, !dbg !2537, !tbaa !585
  %evicted_unfetched = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom4, i32 6, !dbg !2538
  %33 = bitcast i64* %evicted_unfetched to <2 x i64>*, !dbg !2538
  %34 = load <2 x i64>, <2 x i64>* %33, align 8, !dbg !2538, !tbaa !585
  %35 = load <2 x i64>, <2 x i64>* %12, align 16, !dbg !2539, !tbaa !585
  %36 = add <2 x i64> %35, %34, !dbg !2539
  store <2 x i64> %36, <2 x i64>* %13, align 16, !dbg !2539, !tbaa !585
  %crawler_reclaimed = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom4, i32 8, !dbg !2540
  %37 = bitcast i64* %crawler_reclaimed to <2 x i64>*, !dbg !2540
  %38 = load <2 x i64>, <2 x i64>* %37, align 8, !dbg !2540, !tbaa !585
  %39 = load <2 x i64>, <2 x i64>* %14, align 16, !dbg !2541, !tbaa !585
  %40 = add <2 x i64> %39, %38, !dbg !2541
  store <2 x i64> %40, <2 x i64>* %15, align 16, !dbg !2541, !tbaa !585
  %lrutail_reflocked = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom4, i32 10, !dbg !2542
  %41 = bitcast i64* %lrutail_reflocked to <2 x i64>*, !dbg !2542
  %42 = load <2 x i64>, <2 x i64>* %41, align 8, !dbg !2542, !tbaa !585
  %43 = load <2 x i64>, <2 x i64>* %16, align 16, !dbg !2543, !tbaa !585
  %44 = add <2 x i64> %43, %42, !dbg !2543
  store <2 x i64> %44, <2 x i64>* %17, align 16, !dbg !2543, !tbaa !585
  %moves_to_warm = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom4, i32 12, !dbg !2544
  %45 = bitcast i64* %moves_to_warm to <2 x i64>*, !dbg !2544
  %46 = load <2 x i64>, <2 x i64>* %45, align 8, !dbg !2544, !tbaa !585
  %47 = load <2 x i64>, <2 x i64>* %18, align 16, !dbg !2545, !tbaa !585
  %48 = add <2 x i64> %47, %46, !dbg !2545
  store <2 x i64> %48, <2 x i64>* %19, align 16, !dbg !2545, !tbaa !585
  %direct_reclaims = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom4, i32 14, !dbg !2546
  %49 = load i64, i64* %direct_reclaims, align 8, !dbg !2546, !tbaa !710
  %50 = load i64, i64* %direct_reclaims64, align 16, !dbg !2547, !tbaa !710
  %add65 = add i64 %50, %49, !dbg !2547
  store i64 %add65, i64* %direct_reclaims64, align 16, !dbg !2547, !tbaa !710
  %arrayidx67 = getelementptr inbounds [256 x i64], [256 x i64]* @sizes_bytes, i64 0, i64 %idxprom4, !dbg !2548
  %51 = load i64, i64* %arrayidx67, align 8, !dbg !2548, !tbaa !585
  %52 = load i64, i64* %mem_requested, align 8, !dbg !2549, !tbaa !2550
  %add68 = add i64 %52, %51, !dbg !2549
  store i64 %add68, i64* %mem_requested, align 8, !dbg !2549, !tbaa !2550
  %arrayidx70 = getelementptr inbounds [256 x i32], [256 x i32]* @sizes, i64 0, i64 %idxprom4, !dbg !2551
  %53 = load i32, i32* %arrayidx70, align 4, !dbg !2551, !tbaa !625
  %add71 = add i32 %53, %size.0661, !dbg !2552
  call void @llvm.dbg.value(metadata i32 %add71, metadata !2496, metadata !DIExpression()), !dbg !2517
  %arrayidx75 = getelementptr inbounds [4 x i32], [4 x i32]* %lru_size_map, i64 0, i64 %indvars.iv, !dbg !2553
  store i32 %53, i32* %arrayidx75, align 4, !dbg !2554, !tbaa !625
  %54 = trunc i64 %indvars.iv to i32, !dbg !2555
  switch i32 %54, label %if.end110 [
    i32 2, label %land.lhs.true
    i32 0, label %land.lhs.true87
    i32 1, label %land.lhs.true100
  ], !dbg !2555

land.lhs.true:                                    ; preds = %for.body3
  %gcov_ctr392 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 1), align 8, !dbg !2557
  %55 = add i64 %gcov_ctr392, 1, !dbg !2557
  store i64 %55, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 1), align 8, !dbg !2557
  %arrayidx80 = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @tails, i64 0, i64 %idxprom4, !dbg !2558
  %56 = load %struct._stritem*, %struct._stritem** %arrayidx80, align 8, !dbg !2558, !tbaa !759
  %cmp81.not = icmp eq %struct._stritem* %56, null, !dbg !2559
  br i1 %cmp81.not, label %if.end110.thread654, label %if.end110.thread, !dbg !2560

if.end110.thread654:                              ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i32 %age_warm.0664, metadata !2499, metadata !DIExpression()), !dbg !2517
  %gcov_ctr398656 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 7), align 8
  %57 = add i64 %gcov_ctr398656, 1
  store i64 %57, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 7), align 8
  call void @llvm.dbg.value(metadata i32 %age_warm.0664, metadata !2499, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %age_hot.0663, metadata !2498, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %age.0662, metadata !2497, metadata !DIExpression()), !dbg !2517
  br label %if.then114, !dbg !2561

if.end110.thread:                                 ; preds = %land.lhs.true
  %gcov_ctr393 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 2), align 16, !dbg !2562
  %58 = add i64 %gcov_ctr393, 1, !dbg !2562
  store i64 %58, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 2), align 16, !dbg !2562
  %59 = load volatile i32, i32* @current_time, align 4, !dbg !2562, !tbaa !625
  %time = getelementptr inbounds %struct._stritem, %struct._stritem* %56, i64 0, i32 3, !dbg !2564
  %60 = load i32, i32* %time, align 8, !dbg !2564, !tbaa !625
  %sub = sub i32 %59, %60, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %age_warm.0664, metadata !2499, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %age_hot.0663, metadata !2498, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 undef, metadata !2497, metadata !DIExpression()), !dbg !2517
  br label %if.then114, !dbg !2561

land.lhs.true87:                                  ; preds = %for.body3
  %gcov_ctr394 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 3), align 8, !dbg !2566
  %61 = add i64 %gcov_ctr394, 1, !dbg !2566
  store i64 %61, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 3), align 8, !dbg !2566
  %arrayidx89 = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @tails, i64 0, i64 %idxprom4, !dbg !2568
  %62 = load %struct._stritem*, %struct._stritem** %arrayidx89, align 8, !dbg !2568, !tbaa !759
  %cmp90.not = icmp eq %struct._stritem* %62, null, !dbg !2569
  br i1 %cmp90.not, label %if.end110.thread650, label %if.end110.thread645, !dbg !2570

if.end110.thread645:                              ; preds = %land.lhs.true87
  %gcov_ctr395 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 4), align 16, !dbg !2571
  %63 = add i64 %gcov_ctr395, 1, !dbg !2571
  store i64 %63, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 4), align 16, !dbg !2571
  %64 = load volatile i32, i32* @current_time, align 4, !dbg !2571, !tbaa !625
  %time94 = getelementptr inbounds %struct._stritem, %struct._stritem* %62, i64 0, i32 3, !dbg !2573
  %65 = load i32, i32* %time94, align 8, !dbg !2573, !tbaa !625
  %sub95 = sub i32 %64, %65, !dbg !2574
  call void @llvm.dbg.value(metadata i32 %age_warm.0664, metadata !2499, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 undef, metadata !2498, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %age.0662, metadata !2497, metadata !DIExpression()), !dbg !2517
  br label %if.end118, !dbg !2561

land.lhs.true100:                                 ; preds = %for.body3
  %gcov_ctr396 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 5), align 8, !dbg !2575
  %66 = add i64 %gcov_ctr396, 1, !dbg !2575
  store i64 %66, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 5), align 8, !dbg !2575
  %arrayidx102 = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @tails, i64 0, i64 %idxprom4, !dbg !2577
  %67 = load %struct._stritem*, %struct._stritem** %arrayidx102, align 8, !dbg !2577, !tbaa !759
  %cmp103.not = icmp eq %struct._stritem* %67, null, !dbg !2578
  br i1 %cmp103.not, label %if.end110.thread650, label %if.then104, !dbg !2579

if.then104:                                       ; preds = %land.lhs.true100
  %gcov_ctr397 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 6), align 16, !dbg !2580
  %68 = add i64 %gcov_ctr397, 1, !dbg !2580
  store i64 %68, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 6), align 16, !dbg !2580
  %69 = load volatile i32, i32* @current_time, align 4, !dbg !2580, !tbaa !625
  %time107 = getelementptr inbounds %struct._stritem, %struct._stritem* %67, i64 0, i32 3, !dbg !2582
  %70 = load i32, i32* %time107, align 8, !dbg !2582, !tbaa !625
  %sub108 = sub i32 %69, %70, !dbg !2583
  call void @llvm.dbg.value(metadata i32 %sub108, metadata !2499, metadata !DIExpression()), !dbg !2517
  br label %if.end110.thread650, !dbg !2584

if.end110.thread650:                              ; preds = %land.lhs.true100, %if.then104, %land.lhs.true87
  %age_warm.1.ph = phi i32 [ %age_warm.0664, %land.lhs.true87 ], [ %age_warm.0664, %land.lhs.true100 ], [ %sub108, %if.then104 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !2499, metadata !DIExpression()), !dbg !2517
  %gcov_ctr398652 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 7), align 8
  %71 = add i64 %gcov_ctr398652, 1
  store i64 %71, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 7), align 8
  call void @llvm.dbg.value(metadata i32 %age_hot.0663, metadata !2498, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %age.0662, metadata !2497, metadata !DIExpression()), !dbg !2517
  br label %if.end118, !dbg !2561

if.end110:                                        ; preds = %for.body3
  call void @llvm.dbg.value(metadata i32 %age_warm.0664, metadata !2499, metadata !DIExpression()), !dbg !2517
  %gcov_ctr398 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 7), align 8
  %72 = add i64 %gcov_ctr398, 1
  store i64 %72, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 7), align 8
  call void @llvm.dbg.value(metadata i32 %age_hot.0663, metadata !2498, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %age.0662, metadata !2497, metadata !DIExpression()), !dbg !2517
  br label %if.end118, !dbg !2561

if.then114:                                       ; preds = %if.end110.thread654, %if.end110.thread
  %age.1640 = phi i32 [ %sub, %if.end110.thread ], [ %age.0662, %if.end110.thread654 ]
  %gcov_ctr399 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 8), align 16, !dbg !2585
  %73 = add i64 %gcov_ctr399, 1, !dbg !2585
  store i64 %73, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 8), align 16, !dbg !2585
  %evicted_time = getelementptr inbounds [256 x %struct.itemstats_t], [256 x %struct.itemstats_t]* @itemstats, i64 0, i64 %idxprom4, i32 20, !dbg !2587
  %74 = load i32, i32* %evicted_time, align 8, !dbg !2587, !tbaa !935
  store i32 %74, i32* %evicted_time117, align 16, !dbg !2588, !tbaa !935
  br label %if.end118, !dbg !2589

if.end118:                                        ; preds = %if.end110, %if.end110.thread650, %if.end110.thread645, %if.then114
  %age_warm.2643 = phi i32 [ %age_warm.0664, %if.then114 ], [ %age_warm.0664, %if.end110 ], [ %age_warm.0664, %if.end110.thread645 ], [ %age_warm.1.ph, %if.end110.thread650 ]
  %age_hot.1641 = phi i32 [ %age_hot.0663, %if.then114 ], [ %age_hot.0663, %if.end110 ], [ %sub95, %if.end110.thread645 ], [ %age_hot.0663, %if.end110.thread650 ]
  %age.1639 = phi i32 [ %age.1640, %if.then114 ], [ %age.0662, %if.end110 ], [ %age.0662, %if.end110.thread645 ], [ %age.0662, %if.end110.thread650 ]
  %75 = call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 26), !dbg !2590
  switch i32 %75, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb123
    i32 2, label %sw.bb127
    i32 3, label %sw.bb131
  ], !dbg !2590

sw.bb:                                            ; preds = %if.end118
  %gcov_ctr400 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 9), align 8, !dbg !2591
  %76 = add i64 %gcov_ctr400, 1, !dbg !2591
  store i64 %76, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 9), align 8, !dbg !2591
  br label %sw.epilog.sink.split, !dbg !2593

sw.bb123:                                         ; preds = %if.end118
  %gcov_ctr401 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 10), align 16, !dbg !2594
  %77 = add i64 %gcov_ctr401, 1, !dbg !2594
  store i64 %77, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 10), align 16, !dbg !2594
  br label %sw.epilog.sink.split, !dbg !2595

sw.bb127:                                         ; preds = %if.end118
  %gcov_ctr402 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 11), align 8, !dbg !2596
  %78 = add i64 %gcov_ctr402, 1, !dbg !2596
  store i64 %78, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 11), align 8, !dbg !2596
  br label %sw.epilog.sink.split, !dbg !2597

sw.bb131:                                         ; preds = %if.end118
  %gcov_ctr403 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 12), align 16, !dbg !2598
  %79 = add i64 %gcov_ctr403, 1, !dbg !2598
  store i64 %79, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 12), align 16, !dbg !2598
  br label %sw.epilog.sink.split, !dbg !2599

sw.epilog.sink.split:                             ; preds = %sw.bb, %sw.bb123, %sw.bb127, %sw.bb131
  %hits_to_temp.sink = phi i64* [ %hits_to_temp, %sw.bb131 ], [ %hits_to_cold, %sw.bb127 ], [ %hits_to_warm, %sw.bb123 ], [ %hits_to_hot, %sw.bb ]
  %arrayidx134 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %thread_stats, i64 0, i32 32, i64 %idxprom4, !dbg !2600
  %80 = load i64, i64* %arrayidx134, align 8, !dbg !2600, !tbaa !585
  store i64 %80, i64* %hits_to_temp.sink, align 8, !dbg !2600, !tbaa !585
  br label %sw.epilog, !dbg !2601

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end118
  %call137 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx5) #12, !dbg !2601
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2602
  call void @llvm.dbg.value(metadata i32 %age_warm.2643, metadata !2499, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %age_hot.1641, metadata !2498, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %age.1639, metadata !2497, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %add71, metadata !2496, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2491, metadata !DIExpression()), !dbg !2517
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !2603
  br i1 %exitcond.not, label %for.end, label %for.body3, !dbg !2524, !llvm.loop !2604

for.end:                                          ; preds = %sw.epilog
  %cmp138 = icmp eq i32 %add71, 0, !dbg !2606
  br i1 %cmp138, label %cleanup, label %if.end140, !dbg !2608

if.end140:                                        ; preds = %for.end
  %call141 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)) #12, !dbg !2609
  call void @llvm.dbg.value(metadata i32 %call141, metadata !2507, metadata !DIExpression()), !dbg !2517
  %call143 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 noundef %add71) #12, !dbg !2609
  call void @llvm.dbg.value(metadata i32 %call143, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv = trunc i32 %call141 to i16, !dbg !2609
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv, i8* noundef nonnull %5, i32 noundef %call143, i8* noundef %c) #12, !dbg !2609
  %81 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 29), align 1, !dbg !2610, !tbaa !2048, !range !671
  %tobool.not = icmp eq i8 %81, 0, !dbg !2610
  br i1 %tobool.not, label %if.end196, label %if.then146, !dbg !2612

if.then146:                                       ; preds = %if.end140
  %call148 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0)) #12, !dbg !2613
  call void @llvm.dbg.value(metadata i32 %call148, metadata !2507, metadata !DIExpression()), !dbg !2517
  %82 = load i32, i32* %arrayidx150, align 16, !dbg !2613, !tbaa !625
  %call151 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 noundef %82) #12, !dbg !2613
  call void @llvm.dbg.value(metadata i32 %call151, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv153 = trunc i32 %call148 to i16, !dbg !2613
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv153, i8* noundef nonnull %5, i32 noundef %call151, i8* noundef %c) #12, !dbg !2613
  %call156 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #12, !dbg !2615
  call void @llvm.dbg.value(metadata i32 %call156, metadata !2507, metadata !DIExpression()), !dbg !2517
  %83 = load i32, i32* %arrayidx158, align 4, !dbg !2615, !tbaa !625
  %call159 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 noundef %83) #12, !dbg !2615
  call void @llvm.dbg.value(metadata i32 %call159, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv161 = trunc i32 %call156 to i16, !dbg !2615
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv161, i8* noundef nonnull %5, i32 noundef %call159, i8* noundef %c) #12, !dbg !2615
  %call164 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #12, !dbg !2616
  call void @llvm.dbg.value(metadata i32 %call164, metadata !2507, metadata !DIExpression()), !dbg !2517
  %84 = load i32, i32* %arrayidx166, align 8, !dbg !2616, !tbaa !625
  %call167 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 noundef %84) #12, !dbg !2616
  call void @llvm.dbg.value(metadata i32 %call167, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv169 = trunc i32 %call164 to i16, !dbg !2616
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv169, i8* noundef nonnull %5, i32 noundef %call167, i8* noundef %c) #12, !dbg !2616
  %85 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 48), align 4, !dbg !2617, !tbaa !1208, !range !671
  %tobool171.not = icmp eq i8 %85, 0, !dbg !2617
  br i1 %tobool171.not, label %if.end181, label %if.then172, !dbg !2619

if.then172:                                       ; preds = %if.then146
  %gcov_ctr405 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 14), align 16, !dbg !2620
  %86 = add i64 %gcov_ctr405, 1, !dbg !2620
  store i64 %86, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 14), align 16, !dbg !2620
  %call174 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0)) #12, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %call174, metadata !2507, metadata !DIExpression()), !dbg !2517
  %87 = load i32, i32* %arrayidx176, align 4, !dbg !2620, !tbaa !625
  %call177 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 noundef %87) #12, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %call177, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv179 = trunc i32 %call174 to i16, !dbg !2620
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv179, i8* noundef nonnull %5, i32 noundef %call177, i8* noundef %c) #12, !dbg !2620
  br label %if.end181, !dbg !2622

if.end181:                                        ; preds = %if.then172, %if.then146
  %gcov_ctr406 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 15), align 8, !dbg !2623
  %88 = add i64 %gcov_ctr406, 1, !dbg !2623
  store i64 %88, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 15), align 8, !dbg !2623
  %call183 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0)) #12, !dbg !2623
  call void @llvm.dbg.value(metadata i32 %call183, metadata !2507, metadata !DIExpression()), !dbg !2517
  %call185 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 noundef %age_hot.1641) #12, !dbg !2623
  call void @llvm.dbg.value(metadata i32 %call185, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv187 = trunc i32 %call183 to i16, !dbg !2623
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv187, i8* noundef nonnull %5, i32 noundef %call185, i8* noundef %c) #12, !dbg !2623
  %call190 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0)) #12, !dbg !2624
  call void @llvm.dbg.value(metadata i32 %call190, metadata !2507, metadata !DIExpression()), !dbg !2517
  %call192 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 noundef %age_warm.2643) #12, !dbg !2624
  call void @llvm.dbg.value(metadata i32 %call192, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv194 = trunc i32 %call190 to i16, !dbg !2624
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv194, i8* noundef nonnull %5, i32 noundef %call192, i8* noundef %c) #12, !dbg !2624
  br label %if.end196, !dbg !2625

if.end196:                                        ; preds = %if.end181, %if.end140
  %call198 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0)) #12, !dbg !2626
  call void @llvm.dbg.value(metadata i32 %call198, metadata !2507, metadata !DIExpression()), !dbg !2517
  %call200 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 noundef %age.1639) #12, !dbg !2626
  call void @llvm.dbg.value(metadata i32 %call200, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv202 = trunc i32 %call198 to i16, !dbg !2626
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv202, i8* noundef nonnull %5, i32 noundef %call200, i8* noundef %c) #12, !dbg !2626
  %call205 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0)) #12, !dbg !2627
  call void @llvm.dbg.value(metadata i32 %call205, metadata !2507, metadata !DIExpression()), !dbg !2517
  %89 = load i64, i64* %mem_requested, align 8, !dbg !2627, !tbaa !2550
  %call208 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %89) #12, !dbg !2627
  call void @llvm.dbg.value(metadata i32 %call208, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv210 = trunc i32 %call205 to i16, !dbg !2627
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv210, i8* noundef nonnull %5, i32 noundef %call208, i8* noundef %c) #12, !dbg !2627
  %call213 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0)) #12, !dbg !2628
  call void @llvm.dbg.value(metadata i32 %call213, metadata !2507, metadata !DIExpression()), !dbg !2517
  %90 = load i64, i64* %evicted9, align 16, !dbg !2628, !tbaa !929
  %call216 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %90) #12, !dbg !2628
  call void @llvm.dbg.value(metadata i32 %call216, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv218 = trunc i32 %call213 to i16, !dbg !2628
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv218, i8* noundef nonnull %5, i32 noundef %call216, i8* noundef %c) #12, !dbg !2628
  %call221 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0)) #12, !dbg !2629
  call void @llvm.dbg.value(metadata i32 %call221, metadata !2507, metadata !DIExpression()), !dbg !2517
  %91 = load i64, i64* %evicted_nonzero12, align 8, !dbg !2629, !tbaa !943
  %call224 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %91) #12, !dbg !2629
  call void @llvm.dbg.value(metadata i32 %call224, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv226 = trunc i32 %call221 to i16, !dbg !2629
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv226, i8* noundef nonnull %5, i32 noundef %call224, i8* noundef %c) #12, !dbg !2629
  %call229 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0)) #12, !dbg !2630
  call void @llvm.dbg.value(metadata i32 %call229, metadata !2507, metadata !DIExpression()), !dbg !2517
  %92 = load i32, i32* %evicted_time117, align 16, !dbg !2630, !tbaa !935
  %call232 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 noundef %92) #12, !dbg !2630
  call void @llvm.dbg.value(metadata i32 %call232, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv234 = trunc i32 %call229 to i16, !dbg !2630
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv234, i8* noundef nonnull %5, i32 noundef %call232, i8* noundef %c) #12, !dbg !2630
  %call237 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)) #12, !dbg !2631
  call void @llvm.dbg.value(metadata i32 %call237, metadata !2507, metadata !DIExpression()), !dbg !2517
  %93 = load i64, i64* %outofmemory16, align 8, !dbg !2631, !tbaa !1198
  %call240 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %93) #12, !dbg !2631
  call void @llvm.dbg.value(metadata i32 %call240, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv242 = trunc i32 %call237 to i16, !dbg !2631
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv242, i8* noundef nonnull %5, i32 noundef %call240, i8* noundef %c) #12, !dbg !2631
  %call245 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0)) #12, !dbg !2632
  call void @llvm.dbg.value(metadata i32 %call245, metadata !2507, metadata !DIExpression()), !dbg !2517
  %94 = load i64, i64* %tailrepairs20, align 16, !dbg !2632, !tbaa !816
  %call248 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %94) #12, !dbg !2632
  call void @llvm.dbg.value(metadata i32 %call248, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv250 = trunc i32 %call245 to i16, !dbg !2632
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv250, i8* noundef nonnull %5, i32 noundef %call248, i8* noundef %c) #12, !dbg !2632
  %call253 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !2633
  call void @llvm.dbg.value(metadata i32 %call253, metadata !2507, metadata !DIExpression()), !dbg !2517
  %95 = load i64, i64* %reclaimed24, align 16, !dbg !2633, !tbaa !838
  %call256 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %95) #12, !dbg !2633
  call void @llvm.dbg.value(metadata i32 %call256, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv258 = trunc i32 %call253 to i16, !dbg !2633
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv258, i8* noundef nonnull %5, i32 noundef %call256, i8* noundef %c) #12, !dbg !2633
  %call261 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !2634
  call void @llvm.dbg.value(metadata i32 %call261, metadata !2507, metadata !DIExpression()), !dbg !2517
  %96 = load i64, i64* %expired_unfetched28, align 8, !dbg !2634, !tbaa !573
  %call264 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %96) #12, !dbg !2634
  call void @llvm.dbg.value(metadata i32 %call264, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv266 = trunc i32 %call261 to i16, !dbg !2634
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv266, i8* noundef nonnull %5, i32 noundef %call264, i8* noundef %c) #12, !dbg !2634
  %call269 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %call269, metadata !2507, metadata !DIExpression()), !dbg !2517
  %97 = load i64, i64* %evicted_unfetched32, align 16, !dbg !2635, !tbaa !954
  %call272 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %97) #12, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %call272, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv274 = trunc i32 %call269 to i16, !dbg !2635
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv274, i8* noundef nonnull %5, i32 noundef %call272, i8* noundef %c) #12, !dbg !2635
  %98 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 29), align 1, !dbg !2636, !tbaa !2048, !range !671
  %tobool276.not = icmp eq i8 %98, 0, !dbg !2636
  br i1 %tobool276.not, label %if.end286, label %if.then277, !dbg !2638

if.then277:                                       ; preds = %if.end196
  %gcov_ctr407 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 16), align 16, !dbg !2639
  %99 = add i64 %gcov_ctr407, 1, !dbg !2639
  store i64 %99, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 16), align 16, !dbg !2639
  %call279 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0)) #12, !dbg !2639
  call void @llvm.dbg.value(metadata i32 %call279, metadata !2507, metadata !DIExpression()), !dbg !2517
  %100 = load i64, i64* %evicted_active36, align 8, !dbg !2639, !tbaa !964
  %call282 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %100) #12, !dbg !2639
  call void @llvm.dbg.value(metadata i32 %call282, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv284 = trunc i32 %call279 to i16, !dbg !2639
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv284, i8* noundef nonnull %5, i32 noundef %call282, i8* noundef %c) #12, !dbg !2639
  br label %if.end286, !dbg !2641

if.end286:                                        ; preds = %if.then277, %if.end196
  %call288 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0)) #12, !dbg !2642
  call void @llvm.dbg.value(metadata i32 %call288, metadata !2507, metadata !DIExpression()), !dbg !2517
  %101 = load i64, i64* %crawler_reclaimed40, align 16, !dbg !2642, !tbaa !565
  %call291 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %101) #12, !dbg !2642
  call void @llvm.dbg.value(metadata i32 %call291, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv293 = trunc i32 %call288 to i16, !dbg !2642
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv293, i8* noundef nonnull %5, i32 noundef %call291, i8* noundef %c) #12, !dbg !2642
  %call296 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0)) #12, !dbg !2643
  call void @llvm.dbg.value(metadata i32 %call296, metadata !2507, metadata !DIExpression()), !dbg !2517
  %102 = load i64, i64* %crawler_items_checked44, align 8, !dbg !2643, !tbaa !576
  %call299 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %102) #12, !dbg !2643
  call void @llvm.dbg.value(metadata i32 %call299, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv301 = trunc i32 %call296 to i16, !dbg !2643
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv301, i8* noundef nonnull %5, i32 noundef %call299, i8* noundef %c) #12, !dbg !2643
  %call304 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0)) #12, !dbg !2644
  call void @llvm.dbg.value(metadata i32 %call304, metadata !2507, metadata !DIExpression()), !dbg !2517
  %103 = load i64, i64* %lrutail_reflocked48, align 16, !dbg !2644, !tbaa !802
  %call307 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %103) #12, !dbg !2644
  call void @llvm.dbg.value(metadata i32 %call307, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv309 = trunc i32 %call304 to i16, !dbg !2644
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv309, i8* noundef nonnull %5, i32 noundef %call307, i8* noundef %c) #12, !dbg !2644
  %104 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 29), align 1, !dbg !2645, !tbaa !2048, !range !671
  %tobool311.not = icmp eq i8 %104, 0, !dbg !2645
  br i1 %tobool311.not, label %cleanup.cont, label %if.then312, !dbg !2647

if.then312:                                       ; preds = %if.end286
  %gcov_ctr408 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 17), align 8, !dbg !2648
  %105 = add i64 %gcov_ctr408, 1, !dbg !2648
  store i64 %105, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 17), align 8, !dbg !2648
  %call314 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0)) #12, !dbg !2648
  call void @llvm.dbg.value(metadata i32 %call314, metadata !2507, metadata !DIExpression()), !dbg !2517
  %106 = load i64, i64* %moves_to_cold52, align 8, !dbg !2648, !tbaa !912
  %call317 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %106) #12, !dbg !2648
  call void @llvm.dbg.value(metadata i32 %call317, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv319 = trunc i32 %call314 to i16, !dbg !2648
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv319, i8* noundef nonnull %5, i32 noundef %call317, i8* noundef %c) #12, !dbg !2648
  %call322 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0)) #12, !dbg !2650
  call void @llvm.dbg.value(metadata i32 %call322, metadata !2507, metadata !DIExpression()), !dbg !2517
  %107 = load i64, i64* %moves_to_warm56, align 16, !dbg !2650, !tbaa !897
  %call325 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %107) #12, !dbg !2650
  call void @llvm.dbg.value(metadata i32 %call325, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv327 = trunc i32 %call322 to i16, !dbg !2650
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv327, i8* noundef nonnull %5, i32 noundef %call325, i8* noundef %c) #12, !dbg !2650
  %call330 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0)) #12, !dbg !2651
  call void @llvm.dbg.value(metadata i32 %call330, metadata !2507, metadata !DIExpression()), !dbg !2517
  %108 = load i64, i64* %moves_within_lru60, align 8, !dbg !2651, !tbaa !887
  %call333 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %108) #12, !dbg !2651
  call void @llvm.dbg.value(metadata i32 %call333, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv335 = trunc i32 %call330 to i16, !dbg !2651
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv335, i8* noundef nonnull %5, i32 noundef %call333, i8* noundef %c) #12, !dbg !2651
  %call338 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0)) #12, !dbg !2652
  call void @llvm.dbg.value(metadata i32 %call338, metadata !2507, metadata !DIExpression()), !dbg !2517
  %109 = load i64, i64* %direct_reclaims64, align 16, !dbg !2652, !tbaa !710
  %call341 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %109) #12, !dbg !2652
  call void @llvm.dbg.value(metadata i32 %call341, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv343 = trunc i32 %call338 to i16, !dbg !2652
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv343, i8* noundef nonnull %5, i32 noundef %call341, i8* noundef %c) #12, !dbg !2652
  %call346 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0)) #12, !dbg !2653
  call void @llvm.dbg.value(metadata i32 %call346, metadata !2507, metadata !DIExpression()), !dbg !2517
  %110 = load i64, i64* %hits_to_hot, align 8, !dbg !2653, !tbaa !2654
  %call349 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %110) #12, !dbg !2653
  call void @llvm.dbg.value(metadata i32 %call349, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv351 = trunc i32 %call346 to i16, !dbg !2653
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv351, i8* noundef nonnull %5, i32 noundef %call349, i8* noundef %c) #12, !dbg !2653
  %call354 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0)) #12, !dbg !2655
  call void @llvm.dbg.value(metadata i32 %call354, metadata !2507, metadata !DIExpression()), !dbg !2517
  %111 = load i64, i64* %hits_to_warm, align 16, !dbg !2655, !tbaa !2656
  %call357 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %111) #12, !dbg !2655
  call void @llvm.dbg.value(metadata i32 %call357, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv359 = trunc i32 %call354 to i16, !dbg !2655
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv359, i8* noundef nonnull %5, i32 noundef %call357, i8* noundef %c) #12, !dbg !2655
  %call362 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0)) #12, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %call362, metadata !2507, metadata !DIExpression()), !dbg !2517
  %112 = load i64, i64* %hits_to_cold, align 8, !dbg !2657, !tbaa !2658
  %call365 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %112) #12, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %call365, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv367 = trunc i32 %call362 to i16, !dbg !2657
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv367, i8* noundef nonnull %5, i32 noundef %call365, i8* noundef %c) #12, !dbg !2657
  %call370 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 noundef %n.0665, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0)) #12, !dbg !2659
  call void @llvm.dbg.value(metadata i32 %call370, metadata !2507, metadata !DIExpression()), !dbg !2517
  %113 = load i64, i64* %hits_to_temp, align 16, !dbg !2659, !tbaa !2660
  %call373 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %5, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 noundef %113) #12, !dbg !2659
  call void @llvm.dbg.value(metadata i32 %call373, metadata !2508, metadata !DIExpression()), !dbg !2517
  %conv375 = trunc i32 %call370 to i16, !dbg !2659
  call void %add_stats(i8* noundef nonnull %4, i16 noundef zeroext %conv375, i8* noundef nonnull %5, i32 noundef %call373, i8* noundef %c) #12, !dbg !2659
  br label %cleanup.cont, !dbg !2661

cleanup:                                          ; preds = %for.end
  %gcov_ctr404 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 13), align 8
  %114 = add i64 %gcov_ctr404, 1
  store i64 %114, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 13), align 8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #14, !dbg !2662
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #14, !dbg !2662
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #14, !dbg !2662
  br label %for.inc389

cleanup.cont:                                     ; preds = %if.end286, %if.then312
  %gcov_ctr409 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 18), align 16, !dbg !2662
  %115 = add i64 %gcov_ctr409, 1, !dbg !2662
  store i64 %115, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 18), align 16, !dbg !2662
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #14, !dbg !2662
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #14, !dbg !2662
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #14, !dbg !2662
  %gcov_ctr411 = load i64, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 20), align 16, !dbg !2663
  %116 = add i64 %gcov_ctr411, 1, !dbg !2663
  store i64 %116, i64* getelementptr inbounds ([21 x i64], [21 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 20), align 16, !dbg !2663
  br label %for.inc389, !dbg !2663

for.inc389:                                       ; preds = %cleanup, %cleanup.cont
  %inc390 = add nuw nsw i32 %n.0665, 1, !dbg !2664
  call void @llvm.dbg.value(metadata i32 %inc390, metadata !2490, metadata !DIExpression()), !dbg !2509
  %exitcond667.not = icmp eq i32 %inc390, 64, !dbg !2665
  br i1 %exitcond667.not, label %for.end391, label %for.body, !dbg !2515, !llvm.loop !2666

for.end391:                                       ; preds = %for.inc389
  call void %add_stats(i8* noundef null, i16 noundef zeroext 0, i8* noundef null, i32 noundef 0, i8* noundef %c) #12, !dbg !2668
  call void @llvm.lifetime.end.p0i8(i64 168, i8* nonnull %2) #14, !dbg !2669
  call void @llvm.lifetime.end.p0i8(i64 6448, i8* nonnull %1) #14, !dbg !2669
  ret void, !dbg !2669
}

declare !dbg !2670 dso_local void @threadlocal_stats_aggregate(%struct.thread_stats* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @item_stats_sizes_status() local_unnamed_addr #0 !dbg !2674 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.116, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.116, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8 0, metadata !2678, metadata !DIExpression()), !dbg !2679
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @stats_sizes_lock) #12, !dbg !2680
  %1 = load i32*, i32** @stats_sizes_hist, align 8, !dbg !2681, !tbaa !759
  %cmp.not = icmp eq i32* %1, null, !dbg !2683
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2684

if.then:                                          ; preds = %entry
  %gcov_ctr2 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.116, i64 0, i64 1), align 8, !dbg !2685
  %2 = add i64 %gcov_ctr2, 1, !dbg !2685
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.116, i64 0, i64 1), align 8, !dbg !2685
  call void @llvm.dbg.value(metadata i8 1, metadata !2678, metadata !DIExpression()), !dbg !2679
  br label %if.end, !dbg !2686

if.end:                                           ; preds = %if.then, %entry
  %3 = xor i1 %cmp.not, true, !dbg !2679
  call void @llvm.dbg.value(metadata i8 undef, metadata !2678, metadata !DIExpression()), !dbg !2679
  %call1 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @stats_sizes_lock) #12, !dbg !2687
  ret i1 %3, !dbg !2688
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @item_stats_sizes_init() local_unnamed_addr #0 !dbg !2689 {
entry:
  %0 = load i32*, i32** @stats_sizes_hist, align 8, !dbg !2690, !tbaa !759
  %cmp.not = icmp eq i32* %0, null, !dbg !2692
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2693

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.117, i64 0, i64 0), align 16, !dbg !2694
  %1 = add i64 %gcov_ctr, 1, !dbg !2694
  store i64 %1, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.117, i64 0, i64 0), align 16, !dbg !2694
  br label %return, !dbg !2694

if.end:                                           ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 22), align 4, !dbg !2695, !tbaa !2696
  %div = sdiv i32 %2, 32, !dbg !2697
  %add = add nsw i32 %div, 1, !dbg !2698
  store i32 %add, i32* @stats_sizes_buckets, align 4, !dbg !2699, !tbaa !625
  %conv = sext i32 %add to i64, !dbg !2700
  %call = tail call noalias i8* @calloc(i64 noundef %conv, i64 noundef 4) #12, !dbg !2701
  store i8* %call, i8** bitcast (i32** @stats_sizes_hist to i8**), align 8, !dbg !2702, !tbaa !759
  %3 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 19), align 8, !dbg !2703, !tbaa !1151, !range !671
  %tobool.not = icmp eq i8 %3, 0, !dbg !2703
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !2704

cond.true:                                        ; preds = %if.end
  %gcov_ctr3 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.117, i64 0, i64 1), align 8, !dbg !2705
  %4 = add i64 %gcov_ctr3, 1, !dbg !2705
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.117, i64 0, i64 1), align 8, !dbg !2705
  %call2 = tail call i64 @get_cas_id() #13, !dbg !2705
  br label %cond.end, !dbg !2704

cond.false:                                       ; preds = %if.end
  %gcov_ctr4 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.117, i64 0, i64 2), align 16, !dbg !2704
  %5 = add i64 %gcov_ctr4, 1, !dbg !2704
  store i64 %5, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.117, i64 0, i64 2), align 16, !dbg !2704
  br label %cond.end, !dbg !2704

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ 0, %cond.false ], !dbg !2704
  store i64 %cond, i64* @stats_sizes_cas_min, align 8, !dbg !2706, !tbaa !585
  br label %return, !dbg !2707

return:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !2707
}

; Function Attrs: nounwind
declare !dbg !2708 dso_local noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @item_stats_sizes_enable(void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, i8* noundef %c) local_unnamed_addr #0 !dbg !2711 {
entry:
  call void @llvm.dbg.value(metadata void (i8*, i16, i8*, i32, i8*)* %add_stats, metadata !2713, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8* %c, metadata !2714, metadata !DIExpression()), !dbg !2715
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @stats_sizes_lock) #12, !dbg !2716
  %0 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 19), align 8, !dbg !2717, !tbaa !1151, !range !671
  %tobool.not = icmp eq i8 %0, 0, !dbg !2717
  br i1 %tobool.not, label %if.then, label %if.else, !dbg !2719

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.118, i64 0, i64 0), align 16, !dbg !2720
  %1 = add i64 %gcov_ctr, 1, !dbg !2720
  store i64 %1, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.118, i64 0, i64 0), align 16, !dbg !2720
  %2 = bitcast i8* %c to %struct.conn*, !dbg !2720
  tail call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.48, i64 0, i64 0)) #12, !dbg !2720
  tail call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.48, i64 0, i64 0)) #12, !dbg !2722
  br label %if.end7, !dbg !2723

if.else:                                          ; preds = %entry
  %3 = load i32*, i32** @stats_sizes_hist, align 8, !dbg !2724, !tbaa !759
  %cmp = icmp eq i32* %3, null, !dbg !2726
  br i1 %cmp, label %if.then1, label %if.else5, !dbg !2727

if.then1:                                         ; preds = %if.else
  tail call void @item_stats_sizes_init() #13, !dbg !2728
  %4 = load i32*, i32** @stats_sizes_hist, align 8, !dbg !2730, !tbaa !759
  %cmp2.not = icmp eq i32* %4, null, !dbg !2732
  br i1 %cmp2.not, label %if.else4, label %if.then3, !dbg !2733

if.then3:                                         ; preds = %if.then1
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.118, i64 0, i64 2), align 16, !dbg !2734
  %5 = add i64 %gcov_ctr10, 1, !dbg !2734
  store i64 %5, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.118, i64 0, i64 2), align 16, !dbg !2734
  %6 = bitcast i8* %c to %struct.conn*, !dbg !2734
  tail call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %6, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.48, i64 0, i64 0)) #12, !dbg !2734
  br label %if.end7, !dbg !2736

if.else4:                                         ; preds = %if.then1
  %gcov_ctr9 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.118, i64 0, i64 1), align 8, !dbg !2737
  %7 = add i64 %gcov_ctr9, 1, !dbg !2737
  store i64 %7, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.118, i64 0, i64 1), align 8, !dbg !2737
  %8 = bitcast i8* %c to %struct.conn*, !dbg !2737
  tail call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.48, i64 0, i64 0)) #12, !dbg !2737
  tail call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.48, i64 0, i64 0)) #12, !dbg !2739
  br label %if.end7

if.else5:                                         ; preds = %if.else
  %gcov_ctr11 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.118, i64 0, i64 3), align 8, !dbg !2740
  %9 = add i64 %gcov_ctr11, 1, !dbg !2740
  store i64 %9, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.118, i64 0, i64 3), align 8, !dbg !2740
  %10 = bitcast i8* %c to %struct.conn*, !dbg !2740
  tail call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %10, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.48, i64 0, i64 0)) #12, !dbg !2740
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.else4, %if.then3, %if.then
  %call8 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @stats_sizes_lock) #12, !dbg !2742
  ret void, !dbg !2743
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @item_stats_sizes_disable(void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, i8* noundef %c) local_unnamed_addr #0 !dbg !2744 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata void (i8*, i16, i8*, i32, i8*)* %add_stats, metadata !2746, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %c, metadata !2747, metadata !DIExpression()), !dbg !2748
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @stats_sizes_lock) #12, !dbg !2749
  %1 = load i32*, i32** @stats_sizes_hist, align 8, !dbg !2750, !tbaa !759
  %cmp.not = icmp eq i32* %1, null, !dbg !2752
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2753

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %1 to i8*, !dbg !2753
  %gcov_ctr2 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 1), align 8, !dbg !2754
  %3 = add i64 %gcov_ctr2, 1, !dbg !2754
  store i64 %3, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 1), align 8, !dbg !2754
  tail call void @free(i8* noundef nonnull %2) #12, !dbg !2756
  store i32* null, i32** @stats_sizes_hist, align 8, !dbg !2757, !tbaa !759
  br label %if.end, !dbg !2758

if.end:                                           ; preds = %if.then, %entry
  %4 = bitcast i8* %c to %struct.conn*, !dbg !2759
  tail call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.48, i64 0, i64 0)) #12, !dbg !2759
  %call1 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @stats_sizes_lock) #12, !dbg !2760
  ret void, !dbg !2761
}

; Function Attrs: nounwind
declare !dbg !2762 dso_local void @free(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @item_stats_sizes(void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, i8* noundef %c) local_unnamed_addr #0 !dbg !2763 {
entry:
  %key = alloca [12 x i8], align 1
  call void @llvm.dbg.value(metadata void (i8*, i16, i8*, i32, i8*)* %add_stats, metadata !2765, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i8* %c, metadata !2766, metadata !DIExpression()), !dbg !2779
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @stats_sizes_lock) #12, !dbg !2780
  %0 = load i32*, i32** @stats_sizes_hist, align 8, !dbg !2781, !tbaa !759
  %cmp.not = icmp eq i32* %0, null, !dbg !2782
  br i1 %cmp.not, label %if.else, label %for.cond.preheader, !dbg !2783

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !2767, metadata !DIExpression()), !dbg !2784
  %1 = load i32, i32* @stats_sizes_buckets, align 4, !dbg !2785, !tbaa !625
  %cmp122 = icmp sgt i32 %1, 0, !dbg !2786
  br i1 %cmp122, label %for.body.lr.ph, label %for.end, !dbg !2787

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = getelementptr inbounds [12 x i8], [12 x i8]* %key, i64 0, i64 0
  %3 = bitcast i8* %c to %struct.conn*
  %gcov_ctr10.pre26 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 1), align 8, !dbg !2788
  br label %for.body, !dbg !2787

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %4 = phi i32 [ %1, %for.body.lr.ph ], [ %12, %for.inc ]
  %5 = phi i32* [ %0, %for.body.lr.ph ], [ %13, %for.inc ], !dbg !2788
  %gcov_ctr10 = phi i64 [ %gcov_ctr10.pre26, %for.body.lr.ph ], [ %gcov_ctr1027, %for.inc ], !dbg !2788
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2767, metadata !DIExpression()), !dbg !2784
  %6 = add i64 %gcov_ctr10, 1, !dbg !2788
  store i64 %6, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 1), align 8, !dbg !2788
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %indvars.iv, !dbg !2788
  %7 = load i32, i32* %arrayidx, align 4, !dbg !2788, !tbaa !625
  %cmp2.not = icmp eq i32 %7, 0, !dbg !2789
  br i1 %cmp2.not, label %for.inc, label %if.then3, !dbg !2790

if.then3:                                         ; preds = %for.body
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 3), align 8, !dbg !2791
  %8 = add i64 %gcov_ctr12, 1, !dbg !2791
  store i64 %8, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 3), align 8, !dbg !2791
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %2) #14, !dbg !2791
  call void @llvm.dbg.declare(metadata [12 x i8]* %key, metadata !2770, metadata !DIExpression()), !dbg !2792
  %9 = trunc i64 %indvars.iv to i32, !dbg !2793
  %mul = shl nsw i32 %9, 5, !dbg !2793
  %call4 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %2, i64 noundef 12, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i32 noundef %mul) #12, !dbg !2794
  %10 = load i32*, i32** @stats_sizes_hist, align 8, !dbg !2795, !tbaa !759
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 %indvars.iv, !dbg !2795
  %11 = load i32, i32* %arrayidx7, align 4, !dbg !2795, !tbaa !625
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef nonnull %2, void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 noundef %11) #12, !dbg !2795
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %2) #14, !dbg !2796
  %gcov_ctr10.pre = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 1), align 8, !dbg !2788
  %.pre = load i32*, i32** @stats_sizes_hist, align 8, !dbg !2788, !tbaa !759
  %.pre30 = load i32, i32* @stats_sizes_buckets, align 4, !dbg !2785, !tbaa !625
  br label %for.inc, !dbg !2797

for.inc:                                          ; preds = %for.body, %if.then3
  %12 = phi i32 [ %4, %for.body ], [ %.pre30, %if.then3 ], !dbg !2785
  %13 = phi i32* [ %5, %for.body ], [ %.pre, %if.then3 ]
  %gcov_ctr1027 = phi i64 [ %6, %for.body ], [ %gcov_ctr10.pre, %if.then3 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2767, metadata !DIExpression()), !dbg !2784
  %14 = sext i32 %12 to i64, !dbg !2786
  %cmp1 = icmp slt i64 %indvars.iv.next, %14, !dbg !2786
  br i1 %cmp1, label %for.body, label %for.end, !dbg !2787, !llvm.loop !2799

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %gcov_ctr11 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 2), align 16, !dbg !2801
  %15 = add i64 %gcov_ctr11, 1, !dbg !2801
  store i64 %15, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 2), align 16, !dbg !2801
  br label %if.end8, !dbg !2802

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 0), align 16, !dbg !2803
  %16 = add i64 %gcov_ctr, 1, !dbg !2803
  store i64 %16, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 0), align 16, !dbg !2803
  %17 = bitcast i8* %c to %struct.conn*, !dbg !2803
  tail call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %17, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.48, i64 0, i64 0)) #12, !dbg !2803
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  call void %add_stats(i8* noundef null, i16 noundef zeroext 0, i8* noundef null, i32 noundef 0, i8* noundef %c) #12, !dbg !2805
  %call9 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @stats_sizes_lock) #12, !dbg !2806
  ret void, !dbg !2807
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._stritem* @do_item_get(i8* noundef %key, i64 noundef %nkey, i32 noundef %hv, %struct.conn* nocapture noundef readonly %c, i1 noundef zeroext %do_update) local_unnamed_addr #0 !dbg !2808 {
entry:
  call void @llvm.dbg.value(metadata i8* %key, metadata !2813, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !2814, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i32 %hv, metadata !2815, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !2816, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i1 %do_update, metadata !2817, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2825
  %call = tail call %struct._stritem* @assoc_find(i8* noundef %key, i64 noundef %nkey, i32 noundef %hv) #12, !dbg !2826
  call void @llvm.dbg.value(metadata %struct._stritem* %call, metadata !2818, metadata !DIExpression()), !dbg !2825
  %cmp.not = icmp eq %struct._stritem* %call, null, !dbg !2827
  br i1 %cmp.not, label %if.end, label %if.end.thread, !dbg !2829

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !2819, metadata !DIExpression()), !dbg !2825
  %0 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2830, !tbaa !2831
  %cmp1 = icmp sgt i32 %0, 2, !dbg !2832
  br i1 %cmp1, label %if.then4, label %do.body73, !dbg !2833

if.end.thread:                                    ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 0), align 16, !dbg !2834
  %1 = add i64 %gcov_ctr, 1, !dbg !2834
  store i64 %1, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 0), align 16, !dbg !2834
  %refcount = getelementptr inbounds %struct._stritem, %struct._stritem* %call, i64 0, i32 6, !dbg !2834
  %2 = load i16, i16* %refcount, align 4, !dbg !2834, !tbaa !615
  %inc = add i16 %2, 1, !dbg !2834
  store i16 %inc, i16* %refcount, align 4, !dbg !2834, !tbaa !615
  call void @llvm.dbg.value(metadata i32 0, metadata !2819, metadata !DIExpression()), !dbg !2825
  %3 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2830, !tbaa !2831
  %cmp1157 = icmp sgt i32 %3, 2, !dbg !2832
  br i1 %cmp1157, label %if.else, label %if.then16, !dbg !2833

if.then4:                                         ; preds = %if.end
  %gcov_ctr97 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 1), align 8, !dbg !2836
  %4 = add i64 %gcov_ctr97, 1, !dbg !2836
  store i64 %4, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 1), align 8, !dbg !2836
  br label %if.end7, !dbg !2839

if.else:                                          ; preds = %if.end.thread
  %gcov_ctr98 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 2), align 16, !dbg !2840
  %5 = add i64 %gcov_ctr98, 1, !dbg !2840
  store i64 %5, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 2), align 16, !dbg !2840
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %.sink171 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), %if.else ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i64 0, i64 0), %if.then4 ]
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2842, !tbaa !759
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef %.sink171) #12, !dbg !2842
  call void @llvm.dbg.value(metadata i32 0, metadata !2820, metadata !DIExpression()), !dbg !2843
  %cmp8161.not = icmp eq i64 %nkey, 0, !dbg !2844
  br i1 %cmp8161.not, label %if.end13, label %for.body, !dbg !2847

for.body:                                         ; preds = %if.end7, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end7 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2820, metadata !DIExpression()), !dbg !2843
  %gcov_ctr99 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 3), align 8, !dbg !2848
  %7 = add i64 %gcov_ctr99, 1, !dbg !2848
  store i64 %7, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 3), align 8, !dbg !2848
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2848, !tbaa !759
  %arrayidx = getelementptr inbounds i8, i8* %key, i64 %indvars.iv, !dbg !2850
  %9 = load i8, i8* %arrayidx, align 1, !dbg !2850, !tbaa !617
  %conv10 = sext i8 %9 to i32, !dbg !2850
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv10) #12, !dbg !2851
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !2852
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2820, metadata !DIExpression()), !dbg !2843
  %exitcond.not = icmp eq i64 %indvars.iv.next, %nkey, !dbg !2844
  br i1 %exitcond.not, label %if.end13, label %for.body, !dbg !2847, !llvm.loop !2853

if.end13:                                         ; preds = %for.body, %if.end7
  br i1 %cmp.not, label %if.end67, label %if.then16, !dbg !2855

if.then16:                                        ; preds = %if.end.thread, %if.end13
  call void @llvm.dbg.value(metadata i32 1, metadata !2819, metadata !DIExpression()), !dbg !2825
  %call17 = tail call i32 @item_is_flushed(%struct._stritem* noundef nonnull %call) #13, !dbg !2856
  %tobool.not = icmp eq i32 %call17, 0, !dbg !2856
  br i1 %tobool.not, label %if.else33, label %if.then18, !dbg !2860

if.then18:                                        ; preds = %if.then16
  tail call void @do_item_unlink(%struct._stritem* noundef nonnull %call, i32 noundef %hv) #13, !dbg !2861
  %thread = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !2863
  %10 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2863, !tbaa !2865
  %storage = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %10, i64 0, i32 10, !dbg !2863
  %11 = load i8*, i8** %storage, align 8, !dbg !2863, !tbaa !2873
  tail call void @storage_delete(i8* noundef %11, %struct._stritem* noundef nonnull %call) #12, !dbg !2863
  tail call void @do_item_remove(%struct._stritem* noundef nonnull %call) #13, !dbg !2876
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !2818, metadata !DIExpression()), !dbg !2825
  %12 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2877, !tbaa !2865
  %mutex = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %12, i64 0, i32 4, i32 0, !dbg !2878
  %call20 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !2879
  %13 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !2880, !tbaa !2865
  %get_flushed = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %13, i64 0, i32 4, i32 4, !dbg !2881
  %14 = load i64, i64* %get_flushed, align 8, !dbg !2882, !tbaa !2883
  %inc23 = add i64 %14, 1, !dbg !2882
  store i64 %inc23, i64* %get_flushed, align 8, !dbg !2882, !tbaa !2883
  %mutex26 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %13, i64 0, i32 4, i32 0, !dbg !2884
  %call27 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex26) #12, !dbg !2885
  %15 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2886, !tbaa !2831
  %cmp28 = icmp sgt i32 %15, 2, !dbg !2888
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !2889

if.then30:                                        ; preds = %if.then18
  %gcov_ctr100 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 4), align 16, !dbg !2890
  %16 = add i64 %gcov_ctr100, 1, !dbg !2890
  store i64 %16, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 4), align 16, !dbg !2890
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2890, !tbaa !759
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0)) #12, !dbg !2892
  br label %if.end32, !dbg !2893

if.end32:                                         ; preds = %if.then30, %if.then18
  %gcov_ctr101 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 5), align 8, !dbg !2894
  %18 = add i64 %gcov_ctr101, 1, !dbg !2894
  store i64 %18, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 5), align 8, !dbg !2894
  call void @llvm.dbg.value(metadata i32 2, metadata !2819, metadata !DIExpression()), !dbg !2825
  br label %if.end67, !dbg !2895

if.else33:                                        ; preds = %if.then16
  %exptime = getelementptr inbounds %struct._stritem, %struct._stritem* %call, i64 0, i32 4, !dbg !2896
  %19 = load i32, i32* %exptime, align 4, !dbg !2896, !tbaa !625
  %cmp34.not = icmp eq i32 %19, 0, !dbg !2898
  br i1 %cmp34.not, label %if.else61, label %land.lhs.true, !dbg !2899

land.lhs.true:                                    ; preds = %if.else33
  %gcov_ctr102 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 6), align 16, !dbg !2900
  %20 = add i64 %gcov_ctr102, 1, !dbg !2900
  store i64 %20, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 6), align 16, !dbg !2900
  %21 = load i32, i32* %exptime, align 4, !dbg !2901, !tbaa !625
  %22 = load volatile i32, i32* @current_time, align 4, !dbg !2902, !tbaa !625
  %cmp37.not = icmp ugt i32 %21, %22, !dbg !2903
  br i1 %cmp37.not, label %if.else61, label %if.then39, !dbg !2904

if.then39:                                        ; preds = %land.lhs.true
  tail call void @do_item_unlink(%struct._stritem* noundef nonnull %call, i32 noundef %hv) #13, !dbg !2905
  %thread41 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !2907
  %23 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread41, align 8, !dbg !2907, !tbaa !2865
  %storage42 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %23, i64 0, i32 10, !dbg !2907
  %24 = load i8*, i8** %storage42, align 8, !dbg !2907, !tbaa !2873
  tail call void @storage_delete(i8* noundef %24, %struct._stritem* noundef nonnull %call) #12, !dbg !2907
  tail call void @do_item_remove(%struct._stritem* noundef nonnull %call) #13, !dbg !2909
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !2818, metadata !DIExpression()), !dbg !2825
  %25 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread41, align 8, !dbg !2910, !tbaa !2865
  %mutex47 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %25, i64 0, i32 4, i32 0, !dbg !2911
  %call48 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex47) #12, !dbg !2912
  %26 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread41, align 8, !dbg !2913, !tbaa !2865
  %get_expired = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %26, i64 0, i32 4, i32 3, !dbg !2914
  %27 = load i64, i64* %get_expired, align 8, !dbg !2915, !tbaa !2916
  %inc51 = add i64 %27, 1, !dbg !2915
  store i64 %inc51, i64* %get_expired, align 8, !dbg !2915, !tbaa !2916
  %mutex54 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %26, i64 0, i32 4, i32 0, !dbg !2917
  %call55 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex54) #12, !dbg !2918
  %28 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2919, !tbaa !2831
  %cmp56 = icmp sgt i32 %28, 2, !dbg !2921
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !2922

if.then58:                                        ; preds = %if.then39
  %gcov_ctr103 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 7), align 8, !dbg !2923
  %29 = add i64 %gcov_ctr103, 1, !dbg !2923
  store i64 %29, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 7), align 8, !dbg !2923
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2923, !tbaa !759
  %call59 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i64 0, i64 0)) #12, !dbg !2925
  br label %if.end60, !dbg !2926

if.end60:                                         ; preds = %if.then58, %if.then39
  %gcov_ctr104 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 8), align 16, !dbg !2927
  %31 = add i64 %gcov_ctr104, 1, !dbg !2927
  store i64 %31, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 8), align 16, !dbg !2927
  call void @llvm.dbg.value(metadata i32 3, metadata !2819, metadata !DIExpression()), !dbg !2825
  br label %if.end67, !dbg !2928

if.else61:                                        ; preds = %land.lhs.true, %if.else33
  br i1 %do_update, label %if.then63, label %while.end, !dbg !2929

if.then63:                                        ; preds = %if.else61
  %gcov_ctr105 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 9), align 8, !dbg !2931
  %32 = add i64 %gcov_ctr105, 1, !dbg !2931
  store i64 %32, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 9), align 8, !dbg !2931
  tail call void @do_item_bump(%struct.conn* noundef %c, %struct._stritem* noundef nonnull %call, i32 noundef %hv) #13, !dbg !2934
  br label %while.end, !dbg !2935

while.end:                                        ; preds = %if.then63, %if.else61
  %gcov_ctr107 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 11), align 8
  %33 = add i64 %gcov_ctr107, 1
  store i64 %33, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 11), align 8
  br label %if.end67

if.end67:                                         ; preds = %if.end32, %while.end, %if.end60, %if.end13
  %it.0.ph = phi %struct._stritem* [ null, %if.end13 ], [ %call, %while.end ], [ null, %if.end60 ], [ null, %if.end32 ]
  %was_found.0.ph = phi i32 [ 0, %if.end13 ], [ 1, %while.end ], [ 3, %if.end60 ], [ 2, %if.end32 ]
  %.pr = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !2936, !tbaa !2831
  call void @llvm.dbg.value(metadata i32 %was_found.0.ph, metadata !2819, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata %struct._stritem* %it.0.ph, metadata !2818, metadata !DIExpression()), !dbg !2825
  %cmp68 = icmp sgt i32 %.pr, 2, !dbg !2938
  br i1 %cmp68, label %if.then70, label %do.body73, !dbg !2939

if.then70:                                        ; preds = %if.end67
  %gcov_ctr108 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 12), align 16, !dbg !2940
  %34 = add i64 %gcov_ctr108, 1, !dbg !2940
  store i64 %34, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 12), align 16, !dbg !2940
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2940, !tbaa !759
  %call71 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #12, !dbg !2941
  br label %do.body73, !dbg !2941

do.body73:                                        ; preds = %if.end, %if.end67, %if.then70
  %was_found.0170 = phi i32 [ %was_found.0.ph, %if.end67 ], [ %was_found.0.ph, %if.then70 ], [ 0, %if.end ]
  %it.0168 = phi %struct._stritem* [ %it.0.ph, %if.end67 ], [ %it.0.ph, %if.then70 ], [ null, %if.end ]
  %thread74 = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !2942
  %36 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread74, align 8, !dbg !2942, !tbaa !2865
  %l = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 0, i32 11, !dbg !2942
  %37 = load %struct._logger*, %struct._logger** %l, align 8, !dbg !2942, !tbaa !2943
  call void @llvm.dbg.value(metadata %struct._logger* %37, metadata !2823, metadata !DIExpression()), !dbg !2944
  %cmp77 = icmp eq %struct._logger* %37, null, !dbg !2945
  br i1 %cmp77, label %if.then79, label %if.end81, !dbg !2942

if.then79:                                        ; preds = %do.body73
  %gcov_ctr109 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 13), align 8, !dbg !2945
  %38 = add i64 %gcov_ctr109, 1, !dbg !2945
  store i64 %38, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 13), align 8, !dbg !2945
  %39 = load i32, i32* @logger_key, align 4, !dbg !2945, !tbaa !625
  %call80 = tail call i8* @pthread_getspecific(i32 noundef %39) #12, !dbg !2945
  %40 = bitcast i8* %call80 to %struct._logger*, !dbg !2945
  call void @llvm.dbg.value(metadata %struct._logger* %40, metadata !2823, metadata !DIExpression()), !dbg !2944
  br label %if.end81, !dbg !2945

if.end81:                                         ; preds = %if.then79, %do.body73
  %myl.0 = phi %struct._logger* [ %40, %if.then79 ], [ %37, %do.body73 ], !dbg !2944
  call void @llvm.dbg.value(metadata %struct._logger* %myl.0, metadata !2823, metadata !DIExpression()), !dbg !2944
  %eflags = getelementptr inbounds %struct._logger, %struct._logger* %myl.0, i64 0, i32 8, !dbg !2947
  %41 = load i16, i16* %eflags, align 4, !dbg !2947, !tbaa !971
  %42 = and i16 %41, 4, !dbg !2947
  %tobool83.not = icmp eq i16 %42, 0, !dbg !2947
  br i1 %tobool83.not, label %if.end94, label %if.then84, !dbg !2942

if.then84:                                        ; preds = %if.end81
  %tobool85.not = icmp eq %struct._stritem* %it.0168, null, !dbg !2947
  br i1 %tobool85.not, label %cond.false90, label %cond.true87, !dbg !2947

cond.true87:                                      ; preds = %if.then84
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0168, i64 0, i32 5, !dbg !2947
  %43 = load i32, i32* %nbytes, align 8, !dbg !2947, !tbaa !625
  %gcov_ctr111 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 15), align 8, !dbg !2947
  %44 = add i64 %gcov_ctr111, 1, !dbg !2947
  store i64 %44, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 15), align 8, !dbg !2947
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it.0168, i64 0, i32 8, !dbg !2947
  %45 = load i8, i8* %slabs_clsid, align 8, !dbg !2947, !tbaa !617
  %46 = and i8 %45, 63, !dbg !2947
  %and89 = zext i8 %46 to i32, !dbg !2947
  br label %cond.end91, !dbg !2947

cond.false90:                                     ; preds = %if.then84
  %gcov_ctr110 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 14), align 16, !dbg !2947
  %47 = add i64 %gcov_ctr110, 1, !dbg !2947
  store i64 %47, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 14), align 16, !dbg !2947
  %gcov_ctr112 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 16), align 16, !dbg !2947
  %48 = add i64 %gcov_ctr112, 1, !dbg !2947
  store i64 %48, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 16), align 16, !dbg !2947
  br label %cond.end91, !dbg !2947

cond.end91:                                       ; preds = %cond.false90, %cond.true87
  %cond159 = phi i32 [ %43, %cond.true87 ], [ 0, %cond.false90 ]
  %cond92 = phi i32 [ %and89, %cond.true87 ], [ 0, %cond.false90 ], !dbg !2947
  %sfd = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 1, !dbg !2947
  %49 = load i32, i32* %sfd, align 8, !dbg !2947, !tbaa !2949
  %call93 = tail call i32 (%struct._logger*, i32, i8*, ...) @logger_log(%struct._logger* noundef nonnull %myl.0, i32 noundef 2, i8* noundef null, i32 noundef %was_found.0170, i8* noundef %key, i64 noundef %nkey, i32 noundef %cond159, i32 noundef %cond92, i32 noundef %49) #12, !dbg !2947
  br label %if.end94, !dbg !2947

if.end94:                                         ; preds = %cond.end91, %if.end81
  %gcov_ctr113 = load i64, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 17), align 8, !dbg !2942
  %50 = add i64 %gcov_ctr113, 1, !dbg !2942
  store i64 %50, i64* getelementptr inbounds ([18 x i64], [18 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 17), align 8, !dbg !2942
  ret %struct._stritem* %it.0168, !dbg !2950
}

declare !dbg !2951 dso_local %struct._stritem* @assoc_find(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !2954 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #6

declare !dbg !3011 dso_local void @storage_delete(i8* noundef, %struct._stritem* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_item_bump(%struct.conn* nocapture noundef readonly %c, %struct._stritem* noundef %it, i32 noundef %hv) local_unnamed_addr #0 !dbg !3015 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !3019, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !3020, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 %hv, metadata !3021, metadata !DIExpression()), !dbg !3022
  %0 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 30), align 8, !dbg !3023, !tbaa !670, !range !671
  %tobool.not = icmp eq i8 %0, 0, !dbg !3023
  br i1 %tobool.not, label %if.else30, label %if.then, !dbg !3025

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.122, i64 0, i64 0), align 16, !dbg !3026
  %1 = add i64 %gcov_ctr, 1, !dbg !3026
  store i64 %1, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.122, i64 0, i64 0), align 16, !dbg !3026
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !3029
  %2 = load i16, i16* %it_flags, align 2, !dbg !3029, !tbaa !615
  %conv = zext i16 %2 to i32, !dbg !3026
  %and = and i32 %conv, 16, !dbg !3030
  %cmp = icmp eq i32 %and, 0, !dbg !3031
  br i1 %cmp, label %if.then2, label %if.end35, !dbg !3032

if.then2:                                         ; preds = %if.then
  %and5 = and i32 %conv, 8, !dbg !3033
  %cmp6 = icmp eq i32 %and5, 0, !dbg !3036
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !3037

if.then8:                                         ; preds = %if.then2
  %gcov_ctr36 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.122, i64 0, i64 1), align 8, !dbg !3038
  %3 = add i64 %gcov_ctr36, 1, !dbg !3038
  store i64 %3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.122, i64 0, i64 1), align 8, !dbg !3038
  %4 = or i16 %2, 8, !dbg !3040
  store i16 %4, i16* %it_flags, align 2, !dbg !3040, !tbaa !615
  br label %if.end35, !dbg !3041

if.else:                                          ; preds = %if.then2
  %or14 = or i16 %2, 16, !dbg !3042
  store i16 %or14, i16* %it_flags, align 2, !dbg !3042, !tbaa !615
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 8, !dbg !3044
  %5 = load i8, i8* %slabs_clsid, align 8, !dbg !3044, !tbaa !617
  %6 = and i8 %5, -64, !dbg !3044
  %cmp18.not = icmp eq i8 %6, -128, !dbg !3046
  br i1 %cmp18.not, label %if.else21, label %if.then20, !dbg !3047

if.then20:                                        ; preds = %if.else
  %gcov_ctr37 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.122, i64 0, i64 2), align 16, !dbg !3048
  %7 = add i64 %gcov_ctr37, 1, !dbg !3048
  store i64 %7, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.122, i64 0, i64 2), align 16, !dbg !3048
  %8 = load volatile i32, i32* @current_time, align 4, !dbg !3048, !tbaa !625
  %time = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 3, !dbg !3050
  store i32 %8, i32* %time, align 8, !dbg !3051, !tbaa !625
  br label %if.end35, !dbg !3052

if.else21:                                        ; preds = %if.else
  %thread = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !3053
  %9 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !3053, !tbaa !2865
  %lru_bump_buf = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %9, i64 0, i32 12, !dbg !3055
  %10 = bitcast i8** %lru_bump_buf to %struct._lru_bump_buf**, !dbg !3055
  %11 = load %struct._lru_bump_buf*, %struct._lru_bump_buf** %10, align 8, !dbg !3055, !tbaa !3056
  %call = tail call fastcc zeroext i1 @lru_bump_async(%struct._lru_bump_buf* noundef %11, %struct._stritem* noundef nonnull %it, i32 noundef %hv) #13, !dbg !3057
  br i1 %call, label %if.end, label %if.then22, !dbg !3058

if.then22:                                        ; preds = %if.else21
  %gcov_ctr38 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.122, i64 0, i64 3), align 8, !dbg !3059
  %12 = add i64 %gcov_ctr38, 1, !dbg !3059
  store i64 %12, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.122, i64 0, i64 3), align 8, !dbg !3059
  %13 = load i16, i16* %it_flags, align 2, !dbg !3061, !tbaa !615
  %14 = and i16 %13, -17, !dbg !3061
  store i16 %14, i16* %it_flags, align 2, !dbg !3061, !tbaa !615
  br label %if.end, !dbg !3062

if.end:                                           ; preds = %if.then22, %if.else21
  %gcov_ctr39 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.122, i64 0, i64 4), align 16
  %15 = add i64 %gcov_ctr39, 1
  store i64 %15, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.122, i64 0, i64 4), align 16
  br label %if.end35

if.else30:                                        ; preds = %entry
  %gcov_ctr40 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.122, i64 0, i64 5), align 8, !dbg !3063
  %16 = add i64 %gcov_ctr40, 1, !dbg !3063
  store i64 %16, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.122, i64 0, i64 5), align 8, !dbg !3063
  %it_flags31 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !3065
  %17 = load i16, i16* %it_flags31, align 2, !dbg !3066, !tbaa !615
  %18 = or i16 %17, 8, !dbg !3066
  store i16 %18, i16* %it_flags31, align 2, !dbg !3066, !tbaa !615
  tail call void @do_item_update(%struct._stritem* noundef %it) #13, !dbg !3067
  br label %if.end35

if.end35:                                         ; preds = %if.then, %if.then20, %if.end, %if.then8, %if.else30
  ret void, !dbg !3068
}

; Function Attrs: nounwind
declare !dbg !3069 dso_local i8* @pthread_getspecific(i32 noundef) local_unnamed_addr #3

declare !dbg !3073 dso_local i32 @logger_log(%struct._logger* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @lru_bump_async(%struct._lru_bump_buf* noundef %b, %struct._stritem* noundef %it, i32 noundef %hv) unnamed_addr #0 !dbg !3077 {
entry:
  call void @llvm.dbg.value(metadata %struct._lru_bump_buf* %b, metadata !3081, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !3082, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i32 %hv, metadata !3083, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i8 1, metadata !3084, metadata !DIExpression()), !dbg !3086
  %refcount = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 6, !dbg !3087
  %0 = load i16, i16* %refcount, align 4, !dbg !3087, !tbaa !615
  %inc = add i16 %0, 1, !dbg !3087
  store i16 %inc, i16* %refcount, align 4, !dbg !3087, !tbaa !615
  %mutex = getelementptr inbounds %struct._lru_bump_buf, %struct._lru_bump_buf* %b, i64 0, i32 2, !dbg !3088
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !3089
  %buf = getelementptr inbounds %struct._lru_bump_buf, %struct._lru_bump_buf* %b, i64 0, i32 3, !dbg !3090
  %1 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf, align 8, !dbg !3090, !tbaa !3091
  %call1 = tail call i8* @bipbuf_request(%struct.bipbuf_t* noundef %1, i32 noundef 16) #12, !dbg !3092
  call void @llvm.dbg.value(metadata i8* %call1, metadata !3085, metadata !DIExpression()), !dbg !3086
  %cmp.not = icmp eq i8* %call1, null, !dbg !3093
  br i1 %cmp.not, label %if.end11.thread, label %if.then, !dbg !3095

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %call1, metadata !3085, metadata !DIExpression()), !dbg !3086
  %it2 = bitcast i8* %call1 to %struct._stritem**, !dbg !3096
  store %struct._stritem* %it, %struct._stritem** %it2, align 8, !dbg !3098, !tbaa !3099
  %hv3 = getelementptr inbounds i8, i8* %call1, i64 8, !dbg !3101
  %2 = bitcast i8* %hv3 to i32*, !dbg !3101
  store i32 %hv, i32* %2, align 8, !dbg !3102, !tbaa !3103
  %3 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf, align 8, !dbg !3104, !tbaa !3091
  %call5 = tail call i32 @bipbuf_push(%struct.bipbuf_t* noundef %3, i32 noundef 16) #12, !dbg !3106
  %cmp6 = icmp eq i32 %call5, 0, !dbg !3107
  br i1 %cmp6, label %if.end11, label %if.end11.thread35, !dbg !3108

if.end11.thread35:                                ; preds = %if.then
  call void @llvm.dbg.value(metadata i8 undef, metadata !3084, metadata !DIExpression()), !dbg !3086
  %gcov_ctr1836 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 1), align 8, !dbg !3109
  %4 = add i64 %gcov_ctr1836, 1, !dbg !3109
  store i64 %4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 1), align 8, !dbg !3109
  call void @llvm.dbg.value(metadata i8 undef, metadata !3084, metadata !DIExpression()), !dbg !3086
  br label %if.end14, !dbg !3110

if.end11.thread:                                  ; preds = %entry
  %gcov_ctr19 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 2), align 16, !dbg !3111
  %5 = add i64 %gcov_ctr19, 1, !dbg !3111
  store i64 %5, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 2), align 16, !dbg !3111
  call void @llvm.dbg.value(metadata i8 0, metadata !3084, metadata !DIExpression()), !dbg !3086
  %dropped9 = getelementptr inbounds %struct._lru_bump_buf, %struct._lru_bump_buf* %b, i64 0, i32 4, !dbg !3113
  call void @llvm.dbg.value(metadata i8 undef, metadata !3084, metadata !DIExpression()), !dbg !3086
  br label %if.then12, !dbg !3110

if.end11:                                         ; preds = %if.then
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 0), align 16, !dbg !3114
  %6 = add i64 %gcov_ctr, 1, !dbg !3114
  store i64 %6, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 0), align 16, !dbg !3114
  call void @llvm.dbg.value(metadata i8 0, metadata !3084, metadata !DIExpression()), !dbg !3086
  %dropped = getelementptr inbounds %struct._lru_bump_buf, %struct._lru_bump_buf* %b, i64 0, i32 4, !dbg !3116
  %7 = load i64, i64* %dropped, align 8, !dbg !3117, !tbaa !2474
  %inc8 = add i64 %7, 1, !dbg !3117
  store i64 %inc8, i64* %dropped, align 8, !dbg !3117, !tbaa !2474
  call void @llvm.dbg.value(metadata i8 undef, metadata !3084, metadata !DIExpression()), !dbg !3086
  br label %if.then12

if.then12:                                        ; preds = %if.end11, %if.end11.thread
  %.sink = phi i64* [ getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 1), %if.end11 ], [ %dropped9, %if.end11.thread ]
  %gcov_ctr18 = load i64, i64* %.sink, align 8, !dbg !3118
  %8 = add i64 %gcov_ctr18, 1, !dbg !3118
  store i64 %8, i64* %.sink, align 8, !dbg !3118
  %gcov_ctr20 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 3), align 8, !dbg !3119
  %9 = add i64 %gcov_ctr20, 1, !dbg !3119
  store i64 %9, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 3), align 8, !dbg !3119
  %10 = load i16, i16* %refcount, align 4, !dbg !3119, !tbaa !615
  %dec = add i16 %10, -1, !dbg !3119
  store i16 %dec, i16* %refcount, align 4, !dbg !3119, !tbaa !615
  br label %if.end14, !dbg !3122

if.end14:                                         ; preds = %if.end11.thread35, %if.then12
  %ret.134 = phi i1 [ false, %if.then12 ], [ true, %if.end11.thread35 ]
  %call16 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !3123
  ret i1 %ret.134, !dbg !3124
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._stritem* @do_item_touch(i8* noundef %key, i64 noundef %nkey, i32 noundef %exptime, i32 noundef %hv, %struct.conn* nocapture noundef readonly %c) local_unnamed_addr #0 !dbg !3125 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.124, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.124, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %key, metadata !3129, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i64 %nkey, metadata !3130, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i32 %exptime, metadata !3131, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i32 %hv, metadata !3132, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !3133, metadata !DIExpression()), !dbg !3135
  %call = tail call %struct._stritem* @do_item_get(i8* noundef %key, i64 noundef %nkey, i32 noundef %hv, %struct.conn* noundef %c, i1 noundef zeroext true) #13, !dbg !3136
  call void @llvm.dbg.value(metadata %struct._stritem* %call, metadata !3134, metadata !DIExpression()), !dbg !3135
  %cmp.not = icmp eq %struct._stritem* %call, null, !dbg !3137
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3139

if.then:                                          ; preds = %entry
  %gcov_ctr2 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.124, i64 0, i64 1), align 8, !dbg !3140
  %1 = add i64 %gcov_ctr2, 1, !dbg !3140
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.124, i64 0, i64 1), align 8, !dbg !3140
  %exptime1 = getelementptr inbounds %struct._stritem, %struct._stritem* %call, i64 0, i32 4, !dbg !3142
  store i32 %exptime, i32* %exptime1, align 4, !dbg !3143, !tbaa !625
  br label %if.end, !dbg !3144

if.end:                                           ; preds = %if.then, %entry
  ret %struct._stritem* %call, !dbg !3145
}

declare !dbg !3146 dso_local i8* @item_trylock(i32 noundef) local_unnamed_addr #6

declare !dbg !3149 dso_local void @item_trylock_unlock(i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @do_item_link_q(%struct._stritem* noundef %it) unnamed_addr #0 !dbg !3150 {
entry:
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !3152, metadata !DIExpression()), !dbg !3155
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !3156
  %0 = load i16, i16* %it_flags, align 2, !dbg !3156, !tbaa !615
  %1 = and i16 %0, 4, !dbg !3156
  %cmp = icmp eq i16 %1, 0, !dbg !3156
  br i1 %cmp, label %if.end, label %if.else, !dbg !3159

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 0), align 16, !dbg !3156
  %2 = add i64 %gcov_ctr, 1, !dbg !3156
  store i64 %2, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 0), align 16, !dbg !3156
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 423, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.do_item_link_q, i64 0, i64 0)) #15, !dbg !3156
  unreachable, !dbg !3156

if.end:                                           ; preds = %entry
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 8, !dbg !3160
  %3 = load i8, i8* %slabs_clsid, align 8, !dbg !3160, !tbaa !617
  %idxprom = zext i8 %3 to i64, !dbg !3161
  %arrayidx = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @heads, i64 0, i64 %idxprom, !dbg !3161
  call void @llvm.dbg.value(metadata %struct._stritem** %arrayidx, metadata !3153, metadata !DIExpression()), !dbg !3155
  %arrayidx4 = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @tails, i64 0, i64 %idxprom, !dbg !3162
  call void @llvm.dbg.value(metadata %struct._stritem** %arrayidx4, metadata !3154, metadata !DIExpression()), !dbg !3155
  %4 = load %struct._stritem*, %struct._stritem** %arrayidx, align 8, !dbg !3163, !tbaa !759
  %cmp5.not = icmp eq %struct._stritem* %4, %it, !dbg !3163
  br i1 %cmp5.not, label %if.else8, label %if.end9, !dbg !3166

if.else8:                                         ; preds = %if.end
  %gcov_ctr84 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 1), align 8, !dbg !3163
  %5 = add i64 %gcov_ctr84, 1, !dbg !3163
  store i64 %5, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 1), align 8, !dbg !3163
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 427, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.do_item_link_q, i64 0, i64 0)) #15, !dbg !3163
  unreachable, !dbg !3163

if.end9:                                          ; preds = %if.end
  %tobool.not = icmp eq %struct._stritem* %4, null, !dbg !3167
  br i1 %tobool.not, label %land.lhs.true13, label %land.lhs.true, !dbg !3167

land.lhs.true:                                    ; preds = %if.end9
  %gcov_ctr85 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 2), align 16, !dbg !3167
  %6 = add i64 %gcov_ctr85, 1, !dbg !3167
  store i64 %6, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 2), align 16, !dbg !3167
  %7 = load %struct._stritem*, %struct._stritem** %arrayidx4, align 8, !dbg !3167, !tbaa !759
  %tobool10.not = icmp eq %struct._stritem* %7, null, !dbg !3167
  br i1 %tobool10.not, label %if.else17, label %if.end24, !dbg !3167

land.lhs.true13:                                  ; preds = %if.end9
  %gcov_ctr86 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 3), align 8, !dbg !3167
  %8 = add i64 %gcov_ctr86, 1, !dbg !3167
  store i64 %8, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 3), align 8, !dbg !3167
  %9 = load %struct._stritem*, %struct._stritem** %arrayidx4, align 8, !dbg !3167, !tbaa !759
  %cmp14 = icmp eq %struct._stritem* %9, null, !dbg !3167
  br i1 %cmp14, label %if.then27, label %if.else17, !dbg !3170

if.else17:                                        ; preds = %land.lhs.true, %land.lhs.true13
  %gcov_ctr87 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 4), align 16, !dbg !3167
  %10 = add i64 %gcov_ctr87, 1, !dbg !3167
  store i64 %10, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 4), align 16, !dbg !3167
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 428, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.do_item_link_q, i64 0, i64 0)) #15, !dbg !3167
  unreachable, !dbg !3167

if.end24:                                         ; preds = %land.lhs.true
  %prev = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 1, !dbg !3171
  store %struct._stritem* null, %struct._stritem** %prev, align 8, !dbg !3172, !tbaa !759
  %next = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 0, !dbg !3173
  store %struct._stritem* %4, %struct._stritem** %next, align 8, !dbg !3174, !tbaa !759
  %gcov_ctr88 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 5), align 8, !dbg !3175
  %11 = add i64 %gcov_ctr88, 1, !dbg !3175
  store i64 %11, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 5), align 8, !dbg !3175
  %12 = load %struct._stritem*, %struct._stritem** %next, align 8, !dbg !3177, !tbaa !759
  %prev23 = getelementptr inbounds %struct._stritem, %struct._stritem* %12, i64 0, i32 1, !dbg !3178
  store %struct._stritem* %it, %struct._stritem** %prev23, align 8, !dbg !3179, !tbaa !759
  br label %if.end28, !dbg !3180

if.then27:                                        ; preds = %land.lhs.true13
  %13 = bitcast %struct._stritem* %it to <2 x %struct._stritem*>*, !dbg !3174
  store <2 x %struct._stritem*> zeroinitializer, <2 x %struct._stritem*>* %13, align 8, !dbg !3174, !tbaa !759
  store %struct._stritem* %it, %struct._stritem** %arrayidx, align 8, !dbg !3181, !tbaa !759
  %gcov_ctr89 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 6), align 16, !dbg !3182
  %14 = add i64 %gcov_ctr89, 1, !dbg !3182
  store i64 %14, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 6), align 16, !dbg !3182
  br label %if.end28, !dbg !3184

if.end28:                                         ; preds = %if.end24, %if.then27
  %arrayidx.sink = phi %struct._stritem** [ %arrayidx, %if.end24 ], [ %arrayidx4, %if.then27 ]
  store %struct._stritem* %it, %struct._stritem** %arrayidx.sink, align 8, !dbg !3155, !tbaa !759
  %15 = load i8, i8* %slabs_clsid, align 8, !dbg !3185, !tbaa !617
  %idxprom30 = zext i8 %15 to i64, !dbg !3186
  %arrayidx31 = getelementptr inbounds [256 x i32], [256 x i32]* @sizes, i64 0, i64 %idxprom30, !dbg !3186
  %16 = load i32, i32* %arrayidx31, align 4, !dbg !3187, !tbaa !625
  %inc = add i32 %16, 1, !dbg !3187
  store i32 %inc, i32* %arrayidx31, align 4, !dbg !3187, !tbaa !625
  %17 = load i16, i16* %it_flags, align 2, !dbg !3188, !tbaa !615
  %18 = and i16 %17, 128, !dbg !3190
  %tobool35.not = icmp eq i16 %18, 0, !dbg !3190
  br i1 %tobool35.not, label %if.else59, label %if.then36, !dbg !3191

if.then36:                                        ; preds = %if.end28
  %gcov_ctr90 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 7), align 8, !dbg !3192
  %19 = add i64 %gcov_ctr90, 1, !dbg !3192
  store i64 %19, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 7), align 8, !dbg !3192
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 9, !dbg !3192
  %20 = load i8, i8* %nkey, align 1, !dbg !3192, !tbaa !617
  %conv37 = zext i8 %20 to i64, !dbg !3192
  %21 = load i16, i16* %it_flags, align 2, !dbg !3192, !tbaa !615
  %conv42 = zext i16 %21 to i32, !dbg !3192
  %and43 = lshr i32 %conv42, 6, !dbg !3192
  %22 = and i32 %and43, 4, !dbg !3192
  %23 = zext i32 %22 to i64, !dbg !3192
  %and48 = shl nuw nsw i32 %conv42, 2, !dbg !3192
  %24 = and i32 %and48, 8, !dbg !3192
  %25 = zext i32 %24 to i64, !dbg !3192
  %26 = load i8, i8* %slabs_clsid, align 8, !dbg !3194, !tbaa !617
  %idxprom56 = zext i8 %26 to i64, !dbg !3195
  %arrayidx57 = getelementptr inbounds [256 x i64], [256 x i64]* @sizes_bytes, i64 0, i64 %idxprom56, !dbg !3195
  %27 = load i64, i64* %arrayidx57, align 8, !dbg !3196, !tbaa !585
  %add51 = add nuw nsw i64 %conv37, 61, !dbg !3192
  %sub = add i64 %add51, %27, !dbg !3197
  %add54 = add i64 %sub, %23, !dbg !3198
  %add58 = add i64 %add54, %25, !dbg !3196
  store i64 %add58, i64* %arrayidx57, align 8, !dbg !3196, !tbaa !585
  br label %if.end83, !dbg !3199

if.else59:                                        ; preds = %if.end28
  %gcov_ctr91 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 8), align 16, !dbg !3200
  %28 = add i64 %gcov_ctr91, 1, !dbg !3200
  store i64 %28, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 8), align 16, !dbg !3200
  %nkey60 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 9, !dbg !3200
  %29 = load i8, i8* %nkey60, align 1, !dbg !3200, !tbaa !617
  %conv61 = zext i8 %29 to i64, !dbg !3200
  %add63 = add nuw nsw i64 %conv61, 49, !dbg !3200
  %nbytes64 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 5, !dbg !3200
  %30 = load i32, i32* %nbytes64, align 8, !dbg !3200, !tbaa !625
  %conv65 = sext i32 %30 to i64, !dbg !3200
  %add66 = add nsw i64 %add63, %conv65, !dbg !3200
  %31 = load i16, i16* %it_flags, align 2, !dbg !3200, !tbaa !615
  %conv68 = zext i16 %31 to i32, !dbg !3200
  %and69 = lshr i32 %conv68, 6, !dbg !3200
  %32 = and i32 %and69, 4, !dbg !3200
  %33 = zext i32 %32 to i64, !dbg !3200
  %and75 = shl nuw nsw i32 %conv68, 2, !dbg !3200
  %34 = and i32 %and75, 8, !dbg !3200
  %35 = zext i32 %34 to i64, !dbg !3200
  %36 = load i8, i8* %slabs_clsid, align 8, !dbg !3202, !tbaa !617
  %idxprom80 = zext i8 %36 to i64, !dbg !3203
  %arrayidx81 = getelementptr inbounds [256 x i64], [256 x i64]* @sizes_bytes, i64 0, i64 %idxprom80, !dbg !3203
  %37 = load i64, i64* %arrayidx81, align 8, !dbg !3204, !tbaa !585
  %add72 = add i64 %add66, %37, !dbg !3200
  %add78 = add i64 %add72, %33, !dbg !3200
  %add82 = add i64 %add78, %35, !dbg !3204
  store i64 %add82, i64* %arrayidx81, align 8, !dbg !3204, !tbaa !585
  br label %if.end83

if.end83:                                         ; preds = %if.else59, %if.then36
  ret void, !dbg !3205
}

declare !dbg !3206 dso_local i32 @slabs_reassign(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @item_lru_bump_buf_create() local_unnamed_addr #0 !dbg !3209 {
entry:
  %call = tail call noalias i8* @calloc(i64 noundef 1, i64 noundef 72) #12, !dbg !3214
  %0 = bitcast i8* %call to %struct._lru_bump_buf*, !dbg !3214
  call void @llvm.dbg.value(metadata %struct._lru_bump_buf* %0, metadata !3213, metadata !DIExpression()), !dbg !3215
  %cmp = icmp eq i8* %call, null, !dbg !3216
  br i1 %cmp, label %if.then, label %if.end, !dbg !3218

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.126, i64 0, i64 0), align 16, !dbg !3219
  %1 = add i64 %gcov_ctr, 1, !dbg !3219
  store i64 %1, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.126, i64 0, i64 0), align 16, !dbg !3219
  br label %cleanup, !dbg !3219

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.bipbuf_t* @bipbuf_new(i32 noundef 131072) #12, !dbg !3221
  %buf = getelementptr inbounds i8, i8* %call, i64 56, !dbg !3222
  %2 = bitcast i8* %buf to %struct.bipbuf_t**, !dbg !3222
  store %struct.bipbuf_t* %call1, %struct.bipbuf_t** %2, align 8, !dbg !3223, !tbaa !3091
  %cmp3 = icmp eq %struct.bipbuf_t* %call1, null, !dbg !3224
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !3226

if.then4:                                         ; preds = %if.end
  %gcov_ctr7 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.126, i64 0, i64 1), align 8, !dbg !3227
  %3 = add i64 %gcov_ctr7, 1, !dbg !3227
  store i64 %3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.126, i64 0, i64 1), align 8, !dbg !3227
  tail call void @free(i8* noundef nonnull %call) #12, !dbg !3229
  br label %cleanup, !dbg !3230

if.end5:                                          ; preds = %if.end
  %gcov_ctr8 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.126, i64 0, i64 2), align 16, !dbg !3231
  %4 = add i64 %gcov_ctr8, 1, !dbg !3231
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.126, i64 0, i64 2), align 16, !dbg !3231
  %mutex = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3232
  %5 = bitcast i8* %mutex to %union.pthread_mutex_t*, !dbg !3232
  %call6 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull %5, %union.pthread_mutexattr_t* noundef null) #12, !dbg !3233
  tail call fastcc void @lru_bump_buf_link_q(%struct._lru_bump_buf* noundef nonnull %0) #13, !dbg !3234
  br label %cleanup, !dbg !3235

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then4 ], [ %call, %if.end5 ], !dbg !3215
  ret i8* %retval.0, !dbg !3236
}

declare !dbg !3237 dso_local %struct.bipbuf_t* @bipbuf_new(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3240 dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef, %union.pthread_mutexattr_t* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lru_bump_buf_link_q(%struct._lru_bump_buf* noundef %b) unnamed_addr #0 !dbg !3251 {
entry:
  call void @llvm.dbg.value(metadata %struct._lru_bump_buf* %b, metadata !3255, metadata !DIExpression()), !dbg !3256
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @bump_buf_lock) #12, !dbg !3257
  %0 = load %struct._lru_bump_buf*, %struct._lru_bump_buf** @bump_buf_head, align 8, !dbg !3258, !tbaa !759
  %cmp.not = icmp eq %struct._lru_bump_buf* %0, %b, !dbg !3258
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !3261

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.127, i64 0, i64 0), align 16, !dbg !3261
  %1 = add i64 %gcov_ctr, 1, !dbg !3261
  store i64 %1, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.127, i64 0, i64 0), align 16, !dbg !3261
  %prev = getelementptr inbounds %struct._lru_bump_buf, %struct._lru_bump_buf* %b, i64 0, i32 0, !dbg !3262
  store %struct._lru_bump_buf* null, %struct._lru_bump_buf** %prev, align 8, !dbg !3263, !tbaa !3264
  %2 = load %struct._lru_bump_buf*, %struct._lru_bump_buf** @bump_buf_head, align 8, !dbg !3265, !tbaa !759
  %next = getelementptr inbounds %struct._lru_bump_buf, %struct._lru_bump_buf* %b, i64 0, i32 1, !dbg !3266
  store %struct._lru_bump_buf* %2, %struct._lru_bump_buf** %next, align 8, !dbg !3267, !tbaa !3268
  %tobool.not = icmp eq %struct._lru_bump_buf* %2, null, !dbg !3269
  br i1 %tobool.not, label %if.end5, label %if.then2, !dbg !3271

if.else:                                          ; preds = %entry
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.127, i64 0, i64 1), align 8, !dbg !3258
  %3 = add i64 %gcov_ctr10, 1, !dbg !3258
  store i64 %3, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.127, i64 0, i64 1), align 8, !dbg !3258
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1283, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.lru_bump_buf_link_q, i64 0, i64 0)) #15, !dbg !3258
  unreachable, !dbg !3258

if.then2:                                         ; preds = %if.then
  %gcov_ctr11 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.127, i64 0, i64 2), align 16, !dbg !3272
  %4 = add i64 %gcov_ctr11, 1, !dbg !3272
  store i64 %4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.127, i64 0, i64 2), align 16, !dbg !3272
  %5 = load %struct._lru_bump_buf*, %struct._lru_bump_buf** %next, align 8, !dbg !3273, !tbaa !3268
  %prev4 = getelementptr inbounds %struct._lru_bump_buf, %struct._lru_bump_buf* %5, i64 0, i32 0, !dbg !3274
  store %struct._lru_bump_buf* %b, %struct._lru_bump_buf** %prev4, align 8, !dbg !3275, !tbaa !3264
  br label %if.end5, !dbg !3276

if.end5:                                          ; preds = %if.then2, %if.then
  store %struct._lru_bump_buf* %b, %struct._lru_bump_buf** @bump_buf_head, align 8, !dbg !3277, !tbaa !759
  %6 = load %struct._lru_bump_buf*, %struct._lru_bump_buf** @bump_buf_tail, align 8, !dbg !3278, !tbaa !759
  %cmp6 = icmp eq %struct._lru_bump_buf* %6, null, !dbg !3280
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !3281

if.then7:                                         ; preds = %if.end5
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.127, i64 0, i64 3), align 8, !dbg !3282
  %7 = add i64 %gcov_ctr12, 1, !dbg !3282
  store i64 %7, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.127, i64 0, i64 3), align 8, !dbg !3282
  store %struct._lru_bump_buf* %b, %struct._lru_bump_buf** @bump_buf_tail, align 8, !dbg !3283, !tbaa !759
  br label %if.end8, !dbg !3284

if.end8:                                          ; preds = %if.then7, %if.end5
  %call9 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @bump_buf_lock) #12, !dbg !3285
  ret void, !dbg !3286
}

declare dso_local i8* @slab_automove_init(%struct.settings* noundef) #6

declare dso_local void @slab_automove_free(i8* noundef) #6

declare dso_local void @slab_automove_run(i8* noundef, i32* noundef, i32* noundef) #6

declare dso_local i8* @slab_automove_extstore_init(%struct.settings* noundef) #6

declare dso_local void @slab_automove_extstore_free(i8* noundef) #6

declare dso_local void @slab_automove_extstore_run(i8* noundef, i32* noundef, i32* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @stop_lru_maintainer_thread() local_unnamed_addr #0 !dbg !3287 {
entry:
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @lru_maintainer_lock) #12, !dbg !3292
  store volatile i32 0, i32* @do_run_lru_maintainer_thread, align 4, !dbg !3293, !tbaa !625
  %call1 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_maintainer_lock) #12, !dbg !3294
  %0 = load i64, i64* @lru_maintainer_tid, align 8, !dbg !3295, !tbaa !585
  %call2 = tail call i32 @pthread_join(i64 noundef %0, i8** noundef null) #12, !dbg !3297
  call void @llvm.dbg.value(metadata i32 %call2, metadata !3291, metadata !DIExpression()), !dbg !3298
  %cmp.not = icmp eq i32 %call2, 0, !dbg !3299
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3300

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 0), align 8, !dbg !3301
  %1 = add i64 %gcov_ctr, 1, !dbg !3301
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 0), align 8, !dbg !3301
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3301, !tbaa !759
  %call3 = tail call i8* @strerror(i32 noundef %call2) #12, !dbg !3303
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.61, i64 0, i64 0), i8* noundef %call3) #12, !dbg !3304
  br label %cleanup, !dbg !3305

if.end:                                           ; preds = %entry
  %gcov_ctr5 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 1), align 8, !dbg !3306
  %3 = add i64 %gcov_ctr5, 1, !dbg !3306
  store i64 %3, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 1), align 8, !dbg !3306
  store i8 0, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 29), align 1, !dbg !3306, !tbaa !2048
  br label %cleanup, !dbg !3307

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end ], !dbg !3298
  ret i32 %retval.0, !dbg !3308
}

declare !dbg !3309 dso_local i32 @pthread_join(i64 noundef, i8** noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3313 dso_local i8* @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @start_lru_maintainer_thread(i8* noundef %arg) local_unnamed_addr #0 !dbg !3316 {
entry:
  call void @llvm.dbg.value(metadata i8* %arg, metadata !3320, metadata !DIExpression()), !dbg !3322
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @lru_maintainer_lock) #12, !dbg !3323
  store volatile i32 1, i32* @do_run_lru_maintainer_thread, align 4, !dbg !3324, !tbaa !625
  store i8 1, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 29), align 1, !dbg !3325, !tbaa !2048
  %call1 = tail call i32 @pthread_create(i64* noundef nonnull @lru_maintainer_tid, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @lru_maintainer_thread, i8* noundef %arg) #12, !dbg !3326
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3321, metadata !DIExpression()), !dbg !3322
  %cmp.not = icmp eq i32 %call1, 0, !dbg !3328
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3329

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.129, i64 0, i64 0), align 8, !dbg !3330
  %0 = add i64 %gcov_ctr, 1, !dbg !3330
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.129, i64 0, i64 0), align 8, !dbg !3330
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3330, !tbaa !759
  %call2 = tail call i8* @strerror(i32 noundef %call1) #12, !dbg !3332
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.62, i64 0, i64 0), i8* noundef %call2) #12, !dbg !3333
  br label %cleanup, !dbg !3334

if.end:                                           ; preds = %entry
  %gcov_ctr6 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.129, i64 0, i64 1), align 8, !dbg !3335
  %2 = add i64 %gcov_ctr6, 1, !dbg !3335
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.129, i64 0, i64 1), align 8, !dbg !3335
  br label %cleanup, !dbg !3336

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end ], !dbg !3322
  %call5 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_maintainer_lock) #12, !dbg !3322
  ret i32 %retval.0, !dbg !3337
}

; Function Attrs: nounwind
declare !dbg !3338 dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i8* @lru_maintainer_thread(i8* noundef readnone %arg) #0 !dbg !3357 {
entry:
  %next_juggles = alloca [64 x i32], align 16
  %backoff_juggles = alloca [64 x i32], align 16
  %src = alloca i32, align 4
  %dst = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %arg, metadata !3359, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata %struct.slab_automove_reg_t* @slab_automove_default, metadata !3360, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i8* %arg, metadata !3362, metadata !DIExpression()), !dbg !3390
  %cmp.not = icmp eq i8* %arg, null, !dbg !3391
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3393

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 0), align 16, !dbg !3394
  %0 = add i64 %gcov_ctr, 1, !dbg !3394
  store i64 %0, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 0), align 16, !dbg !3394
  call void @llvm.dbg.value(metadata %struct.slab_automove_reg_t* @slab_automove_extstore, metadata !3360, metadata !DIExpression()), !dbg !3390
  br label %if.end, !dbg !3395

if.end:                                           ; preds = %if.then, %entry
  %sam.0 = phi %struct.slab_automove_reg_t* [ @slab_automove_extstore, %if.then ], [ @slab_automove_default, %entry ], !dbg !3390
  call void @llvm.dbg.value(metadata %struct.slab_automove_reg_t* %sam.0, metadata !3360, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 1000, metadata !3364, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 1000, metadata !3367, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 0, metadata !3368, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 0, metadata !3369, metadata !DIExpression()), !dbg !3390
  %1 = bitcast [64 x i32]* %next_juggles to i8*, !dbg !3396
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #14, !dbg !3396
  call void @llvm.dbg.declare(metadata [64 x i32]* %next_juggles, metadata !3370, metadata !DIExpression()), !dbg !3397
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) %1, i8 0, i64 256, i1 false), !dbg !3397
  %2 = bitcast [64 x i32]* %backoff_juggles to i8*, !dbg !3398
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #14, !dbg !3398
  call void @llvm.dbg.declare(metadata [64 x i32]* %backoff_juggles, metadata !3372, metadata !DIExpression()), !dbg !3399
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) %2, i8 0, i64 256, i1 false), !dbg !3399
  %call = tail call noalias i8* @calloc(i64 noundef 1, i64 noundef 137272) #12, !dbg !3400
  %3 = bitcast i8* %call to %struct.crawler_expired_data*, !dbg !3400
  call void @llvm.dbg.value(metadata %struct.crawler_expired_data* %3, metadata !3373, metadata !DIExpression()), !dbg !3390
  %cmp1 = icmp eq i8* %call, null, !dbg !3401
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !3403

if.then2:                                         ; preds = %if.end
  %gcov_ctr147 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 1), align 8, !dbg !3404
  %4 = add i64 %gcov_ctr147, 1, !dbg !3404
  store i64 %4, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 1), align 8, !dbg !3404
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3404, !tbaa !759
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.77, i64 0, i64 0)) #12, !dbg !3406
  tail call void @abort() #15, !dbg !3407
  unreachable, !dbg !3407

if.end4:                                          ; preds = %if.end
  %lock = bitcast i8* %call to %union.pthread_mutex_t*, !dbg !3408
  %call5 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull %lock, %union.pthread_mutexattr_t* noundef null) #12, !dbg !3409
  %6 = getelementptr inbounds i8, i8* %call, i64 137264, !dbg !3410
  store i8 1, i8* %6, align 8, !dbg !3411, !tbaa !3412
  %call6 = tail call %struct._logger* @logger_create() #12, !dbg !3414
  call void @llvm.dbg.value(metadata %struct._logger* %call6, metadata !3374, metadata !DIExpression()), !dbg !3390
  %cmp7 = icmp eq %struct._logger* %call6, null, !dbg !3415
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !3417

if.then8:                                         ; preds = %if.end4
  %gcov_ctr148 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 2), align 16, !dbg !3418
  %7 = add i64 %gcov_ctr148, 1, !dbg !3418
  store i64 %7, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 2), align 16, !dbg !3418
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3418, !tbaa !759
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.78, i64 0, i64 0)) #12, !dbg !3420
  tail call void @abort() #15, !dbg !3421
  unreachable, !dbg !3421

if.end10:                                         ; preds = %if.end4
  %9 = load double, double* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 33), align 8, !dbg !3422, !tbaa !3423
  call void @llvm.dbg.value(metadata double %9, metadata !3375, metadata !DIExpression()), !dbg !3390
  %init = getelementptr inbounds %struct.slab_automove_reg_t, %struct.slab_automove_reg_t* %sam.0, i64 0, i32 0, !dbg !3424
  %10 = load i8* (%struct.settings*)*, i8* (%struct.settings*)** %init, align 8, !dbg !3424, !tbaa !3425
  %call11 = tail call i8* %10(%struct.settings* noundef nonnull @settings) #12, !dbg !3427
  call void @llvm.dbg.value(metadata i8* %call11, metadata !3376, metadata !DIExpression()), !dbg !3390
  %call12 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @lru_maintainer_lock) #12, !dbg !3428
  %11 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !3429, !tbaa !2831
  %cmp13 = icmp sgt i32 %11, 2, !dbg !3431
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !3432

if.then14:                                        ; preds = %if.end10
  %gcov_ctr149 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 3), align 8, !dbg !3433
  %12 = add i64 %gcov_ctr149, 1, !dbg !3433
  store i64 %12, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 3), align 8, !dbg !3433
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3433, !tbaa !759
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.79, i64 0, i64 0)) #12, !dbg !3434
  br label %if.end16, !dbg !3434

if.end16:                                         ; preds = %if.then14, %if.end10
  call void @llvm.dbg.value(metadata i8* %call11, metadata !3376, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata double %9, metadata !3375, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 1000, metadata !3364, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 0, metadata !3369, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 0, metadata !3368, metadata !DIExpression()), !dbg !3390
  %14 = load volatile i32, i32* @do_run_lru_maintainer_thread, align 4, !dbg !3435, !tbaa !625
  %tobool.not248 = icmp eq i32 %14, 0, !dbg !3436
  br i1 %tobool.not248, label %while.end, label %while.body.lr.ph, !dbg !3436

while.body.lr.ph:                                 ; preds = %if.end16
  %free = getelementptr inbounds %struct.slab_automove_reg_t, %struct.slab_automove_reg_t* %sam.0, i64 0, i32 1
  %15 = bitcast i32* %src to i8*
  %16 = bitcast i32* %dst to i8*
  %run = getelementptr inbounds %struct.slab_automove_reg_t, %struct.slab_automove_reg_t* %sam.0, i64 0, i32 2
  %eflags = getelementptr inbounds %struct._logger, %struct._logger* %call6, i64 0, i32 8
  br label %while.body, !dbg !3436

while.body:                                       ; preds = %while.body.lr.ph, %if.end139
  %am.0253 = phi i8* [ %call11, %while.body.lr.ph ], [ %am.2, %if.end139 ]
  %last_ratio.0252 = phi double [ %9, %while.body.lr.ph ], [ %last_ratio.2, %if.end139 ]
  %to_sleep.0251 = phi i32 [ 1000, %while.body.lr.ph ], [ %to_sleep.8, %if.end139 ]
  %last_automove_check.0250 = phi i32 [ 0, %while.body.lr.ph ], [ %last_automove_check.2, %if.end139 ]
  %last_crawler_check.0249 = phi i32 [ 0, %while.body.lr.ph ], [ %last_crawler_check.1, %if.end139 ]
  call void @llvm.dbg.value(metadata i8* %am.0253, metadata !3376, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata double %last_ratio.0252, metadata !3375, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 %to_sleep.0251, metadata !3364, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 %last_automove_check.0250, metadata !3369, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 %last_crawler_check.0249, metadata !3368, metadata !DIExpression()), !dbg !3390
  %call17 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_maintainer_lock) #12, !dbg !3437
  %tobool18.not = icmp eq i32 %to_sleep.0251, 0, !dbg !3438
  br i1 %tobool18.not, label %if.end21.thread, label %if.end21, !dbg !3440

if.end21.thread:                                  ; preds = %while.body
  %call22239 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @lru_maintainer_lock) #12, !dbg !3441
  br label %cond.false, !dbg !3442

if.end21:                                         ; preds = %while.body
  %gcov_ctr151 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 5), align 8, !dbg !3443
  %17 = add i64 %gcov_ctr151, 1, !dbg !3443
  store i64 %17, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 5), align 8, !dbg !3443
  %call20 = call i32 @usleep(i32 noundef %to_sleep.0251) #12, !dbg !3444
  %call22 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @lru_maintainer_lock) #12, !dbg !3441
  %cmp23 = icmp ugt i32 %to_sleep.0251, 1000, !dbg !3445
  br i1 %cmp23, label %cond.true, label %cond.false, !dbg !3442

cond.true:                                        ; preds = %if.end21
  %gcov_ctr152 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 6), align 16, !dbg !3446
  %18 = add i64 %gcov_ctr152, 1, !dbg !3446
  store i64 %18, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 6), align 16, !dbg !3446
  br label %cond.end, !dbg !3442

cond.false:                                       ; preds = %if.end21.thread, %if.end21
  %gcov_ctr153 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 7), align 8, !dbg !3442
  %19 = add i64 %gcov_ctr153, 1, !dbg !3442
  store i64 %19, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 7), align 8, !dbg !3442
  br label %cond.end, !dbg !3442

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %to_sleep.0251, %cond.true ], [ 1000, %cond.false ], !dbg !3442
  call void @llvm.dbg.value(metadata i32 %cond, metadata !3367, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 1000000, metadata !3364, metadata !DIExpression()), !dbg !3390
  call void @STATS_LOCK() #12, !dbg !3447
  %20 = load i64, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 13), align 8, !dbg !3448, !tbaa !3449
  %inc = add i64 %20, 1, !dbg !3448
  store i64 %inc, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 13), align 8, !dbg !3448, !tbaa !3449
  call void @STATS_UNLOCK() #12, !dbg !3450
  call void @llvm.dbg.value(metadata i32 1, metadata !3363, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 1000000, metadata !3364, metadata !DIExpression()), !dbg !3390
  br label %for.body, !dbg !3451

for.body:                                         ; preds = %cond.end, %for.inc
  %indvars.iv = phi i64 [ 1, %cond.end ], [ %indvars.iv.next, %for.inc ]
  %to_sleep.1246 = phi i32 [ 1000000, %cond.end ], [ %to_sleep.4, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3363, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 %to_sleep.1246, metadata !3364, metadata !DIExpression()), !dbg !3390
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %next_juggles, i64 0, i64 %indvars.iv, !dbg !3452
  %21 = load i32, i32* %arrayidx, align 4, !dbg !3452, !tbaa !625
  %cmp25 = icmp ugt i32 %21, %cond, !dbg !3453
  br i1 %cmp25, label %cond.end30, label %cond.end30.thread, !dbg !3452

cond.end30.thread:                                ; preds = %for.body
  %gcov_ctr154 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 8), align 16, !dbg !3452
  %22 = add i64 %gcov_ctr154, 1, !dbg !3452
  store i64 %22, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 8), align 16, !dbg !3452
  store i32 0, i32* %arrayidx, align 4, !dbg !3454, !tbaa !625
  br label %if.end45, !dbg !3455

cond.end30:                                       ; preds = %for.body
  %sub = sub i32 %21, %cond, !dbg !3456
  store i32 %sub, i32* %arrayidx, align 4, !dbg !3454, !tbaa !625
  %cmp36.not = icmp eq i32 %sub, 0, !dbg !3457
  br i1 %cmp36.not, label %if.end45, label %if.then37, !dbg !3455

if.then37:                                        ; preds = %cond.end30
  %cmp40 = icmp ult i32 %sub, %to_sleep.1246, !dbg !3459
  br i1 %cmp40, label %if.then41, label %if.end44, !dbg !3462

if.then41:                                        ; preds = %if.then37
  %gcov_ctr155 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 9), align 8, !dbg !3463
  %23 = add i64 %gcov_ctr155, 1, !dbg !3463
  store i64 %23, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 9), align 8, !dbg !3463
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3364, metadata !DIExpression()), !dbg !3390
  br label %if.end44, !dbg !3464

if.end44:                                         ; preds = %if.then41, %if.then37
  %to_sleep.2 = phi i32 [ %sub, %if.then41 ], [ %to_sleep.1246, %if.then37 ], !dbg !3465
  call void @llvm.dbg.value(metadata i32 %to_sleep.2, metadata !3364, metadata !DIExpression()), !dbg !3390
  %gcov_ctr156 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 10), align 16, !dbg !3466
  %24 = add i64 %gcov_ctr156, 1, !dbg !3466
  store i64 %24, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 10), align 16, !dbg !3466
  br label %for.inc, !dbg !3466

if.end45:                                         ; preds = %cond.end30.thread, %cond.end30
  %25 = trunc i64 %indvars.iv to i32, !dbg !3467
  %call46 = call fastcc i32 @lru_maintainer_juggle(i32 noundef %25) #13, !dbg !3467
  call void @llvm.dbg.value(metadata i32 %call46, metadata !3377, metadata !DIExpression()), !dbg !3468
  %cmp47 = icmp eq i32 %call46, 0, !dbg !3469
  br i1 %cmp47, label %if.then48, label %if.else67, !dbg !3471

if.then48:                                        ; preds = %if.end45
  %arrayidx50 = getelementptr inbounds [64 x i32], [64 x i32]* %backoff_juggles, i64 0, i64 %indvars.iv, !dbg !3472
  %26 = load i32, i32* %arrayidx50, align 4, !dbg !3472, !tbaa !625
  %cmp51.not = icmp eq i32 %26, 0, !dbg !3475
  br i1 %cmp51.not, label %if.end59.thread, label %if.end59, !dbg !3476

if.end59.thread:                                  ; preds = %if.then48
  %gcov_ctr159 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 13), align 8, !dbg !3477
  %27 = add i64 %gcov_ctr159, 1, !dbg !3477
  store i64 %27, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 13), align 8, !dbg !3477
  store i32 1000, i32* %arrayidx50, align 4, !dbg !3479, !tbaa !625
  br label %if.end83, !dbg !3480

if.end59:                                         ; preds = %if.then48
  %gcov_ctr158 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 12), align 16, !dbg !3481
  %28 = add i64 %gcov_ctr158, 1, !dbg !3481
  store i64 %28, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 12), align 16, !dbg !3481
  %div = lshr i32 %26, 3, !dbg !3483
  %add = add i32 %div, %26, !dbg !3484
  store i32 %add, i32* %arrayidx50, align 4, !dbg !3479, !tbaa !625
  %cmp62 = icmp ugt i32 %add, 1000000, !dbg !3485
  br i1 %cmp62, label %if.then63, label %if.end83, !dbg !3480

if.then63:                                        ; preds = %if.end59
  %gcov_ctr160 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 14), align 16, !dbg !3487
  %29 = add i64 %gcov_ctr160, 1, !dbg !3487
  store i64 %29, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 14), align 16, !dbg !3487
  store i32 1000000, i32* %arrayidx50, align 4, !dbg !3488, !tbaa !625
  br label %if.end83, !dbg !3489

if.else67:                                        ; preds = %if.end45
  %gcov_ctr157 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 11), align 8, !dbg !3490
  %30 = add i64 %gcov_ctr157, 1, !dbg !3490
  store i64 %30, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 11), align 8, !dbg !3490
  %arrayidx69 = getelementptr inbounds [64 x i32], [64 x i32]* %backoff_juggles, i64 0, i64 %indvars.iv, !dbg !3492
  %31 = load i32, i32* %arrayidx69, align 4, !dbg !3492, !tbaa !625
  %cmp70.not = icmp eq i32 %31, 0, !dbg !3493
  br i1 %cmp70.not, label %if.end83, label %if.then71, !dbg !3494

if.then71:                                        ; preds = %if.else67
  %div74 = lshr i32 %31, 1, !dbg !3495
  store i32 %div74, i32* %arrayidx69, align 4, !dbg !3495, !tbaa !625
  %cmp77 = icmp ult i32 %31, 2000, !dbg !3497
  br i1 %cmp77, label %if.then78, label %if.end81, !dbg !3499

if.then78:                                        ; preds = %if.then71
  %gcov_ctr161 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 15), align 8, !dbg !3500
  %32 = add i64 %gcov_ctr161, 1, !dbg !3500
  store i64 %32, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 15), align 8, !dbg !3500
  store i32 0, i32* %arrayidx69, align 4, !dbg !3502, !tbaa !625
  br label %if.end81, !dbg !3503

if.end81:                                         ; preds = %if.then78, %if.then71
  %33 = phi i32 [ 0, %if.then78 ], [ %div74, %if.then71 ]
  %gcov_ctr162 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 16), align 16, !dbg !3504
  %34 = add i64 %gcov_ctr162, 1, !dbg !3504
  store i64 %34, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 16), align 16, !dbg !3504
  br label %if.end83, !dbg !3504

if.end83:                                         ; preds = %if.end59.thread, %if.else67, %if.end81, %if.end59, %if.then63
  %35 = phi i32 [ 1000, %if.end59.thread ], [ 0, %if.else67 ], [ %33, %if.end81 ], [ %add, %if.end59 ], [ 1000000, %if.then63 ], !dbg !3505
  store i32 %35, i32* %arrayidx, align 4, !dbg !3506, !tbaa !625
  %cmp90 = icmp ult i32 %35, %to_sleep.1246, !dbg !3507
  br i1 %cmp90, label %if.then91, label %for.inc, !dbg !3509

if.then91:                                        ; preds = %if.end83
  %gcov_ctr163 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 17), align 8, !dbg !3510
  %36 = add i64 %gcov_ctr163, 1, !dbg !3510
  store i64 %36, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 17), align 8, !dbg !3510
  call void @llvm.dbg.value(metadata i32 %35, metadata !3364, metadata !DIExpression()), !dbg !3390
  br label %for.inc, !dbg !3511

for.inc:                                          ; preds = %if.end83, %if.then91, %if.end44
  %to_sleep.4 = phi i32 [ %to_sleep.2, %if.end44 ], [ %35, %if.then91 ], [ %to_sleep.1246, %if.end83 ], !dbg !3468
  call void @llvm.dbg.value(metadata i32 %to_sleep.4, metadata !3364, metadata !DIExpression()), !dbg !3390
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3512
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3363, metadata !DIExpression()), !dbg !3390
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64, !dbg !3513
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !3451, !llvm.loop !3514

for.end:                                          ; preds = %for.inc
  %37 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 30), align 8, !dbg !3516, !tbaa !670, !range !671
  %tobool96.not = icmp eq i8 %37, 0, !dbg !3516
  br i1 %tobool96.not, label %if.end101, label %land.lhs.true, !dbg !3518

land.lhs.true:                                    ; preds = %for.end
  %gcov_ctr164 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 18), align 16, !dbg !3519
  %38 = add i64 %gcov_ctr164, 1, !dbg !3519
  store i64 %38, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 18), align 16, !dbg !3519
  %call97 = call fastcc zeroext i1 @lru_maintainer_bumps() #13, !dbg !3519
  br i1 %call97, label %land.lhs.true98, label %if.end101, !dbg !3520

land.lhs.true98:                                  ; preds = %land.lhs.true
  %gcov_ctr165 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 19), align 8, !dbg !3521
  %39 = add i64 %gcov_ctr165, 1, !dbg !3521
  store i64 %39, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 19), align 8, !dbg !3521
  %cmp99 = icmp ugt i32 %to_sleep.4, 1000, !dbg !3522
  br i1 %cmp99, label %if.then100, label %if.end101, !dbg !3523

if.then100:                                       ; preds = %land.lhs.true98
  %gcov_ctr166 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 20), align 16, !dbg !3524
  %40 = add i64 %gcov_ctr166, 1, !dbg !3524
  store i64 %40, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 20), align 16, !dbg !3524
  call void @llvm.dbg.value(metadata i32 1000, metadata !3364, metadata !DIExpression()), !dbg !3390
  br label %if.end101, !dbg !3526

if.end101:                                        ; preds = %if.then100, %land.lhs.true98, %land.lhs.true, %for.end
  %to_sleep.5 = phi i32 [ 1000, %if.then100 ], [ %to_sleep.4, %land.lhs.true98 ], [ %to_sleep.4, %land.lhs.true ], [ %to_sleep.4, %for.end ], !dbg !3465
  call void @llvm.dbg.value(metadata i32 %to_sleep.5, metadata !3364, metadata !DIExpression()), !dbg !3390
  %41 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 28), align 2, !dbg !3527, !tbaa !3529, !range !671
  %tobool102.not = icmp eq i8 %41, 0, !dbg !3527
  br i1 %tobool102.not, label %if.end106, label %land.lhs.true103, !dbg !3530

land.lhs.true103:                                 ; preds = %if.end101
  %gcov_ctr167 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 21), align 8, !dbg !3531
  %42 = add i64 %gcov_ctr167, 1, !dbg !3531
  store i64 %42, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 21), align 8, !dbg !3531
  %43 = load volatile i32, i32* @current_time, align 4, !dbg !3532, !tbaa !625
  %cmp104.not = icmp eq i32 %last_crawler_check.0249, %43, !dbg !3533
  br i1 %cmp104.not, label %if.end106, label %if.then105, !dbg !3534

if.then105:                                       ; preds = %land.lhs.true103
  %gcov_ctr168 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 22), align 16, !dbg !3535
  %44 = add i64 %gcov_ctr168, 1, !dbg !3535
  store i64 %44, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 22), align 16, !dbg !3535
  call fastcc void @lru_maintainer_crawler_check(%struct.crawler_expired_data* noundef nonnull %3, %struct._logger* noundef nonnull %call6) #13, !dbg !3537
  %45 = load volatile i32, i32* @current_time, align 4, !dbg !3538, !tbaa !625
  call void @llvm.dbg.value(metadata i32 %45, metadata !3368, metadata !DIExpression()), !dbg !3390
  br label %if.end106, !dbg !3539

if.end106:                                        ; preds = %if.then105, %land.lhs.true103, %if.end101
  %last_crawler_check.1 = phi i32 [ %45, %if.then105 ], [ %last_crawler_check.0249, %land.lhs.true103 ], [ %last_crawler_check.0249, %if.end101 ], !dbg !3390
  call void @llvm.dbg.value(metadata i32 %last_crawler_check.1, metadata !3368, metadata !DIExpression()), !dbg !3390
  %46 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 32), align 4, !dbg !3540, !tbaa !980
  %cmp107 = icmp eq i32 %46, 1, !dbg !3541
  br i1 %cmp107, label %land.lhs.true108, label %if.end139, !dbg !3542

land.lhs.true108:                                 ; preds = %if.end106
  %gcov_ctr169 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 23), align 8, !dbg !3543
  %47 = add i64 %gcov_ctr169, 1, !dbg !3543
  store i64 %47, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 23), align 8, !dbg !3543
  %48 = load volatile i32, i32* @current_time, align 4, !dbg !3544, !tbaa !625
  %cmp109.not = icmp eq i32 %last_automove_check.0250, %48, !dbg !3545
  br i1 %cmp109.not, label %if.end139, label %if.then110, !dbg !3546

if.then110:                                       ; preds = %land.lhs.true108
  %49 = load double, double* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 33), align 8, !dbg !3547, !tbaa !3423
  %cmp111 = fcmp une double %last_ratio.0252, %49, !dbg !3549
  br i1 %cmp111, label %if.then112, label %if.end115, !dbg !3550

if.then112:                                       ; preds = %if.then110
  %gcov_ctr170 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 24), align 16, !dbg !3551
  %50 = add i64 %gcov_ctr170, 1, !dbg !3551
  store i64 %50, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 24), align 16, !dbg !3551
  %51 = load void (i8*)*, void (i8*)** %free, align 8, !dbg !3553, !tbaa !3554
  call void %51(i8* noundef %am.0253) #12, !dbg !3551
  %52 = load i8* (%struct.settings*)*, i8* (%struct.settings*)** %init, align 8, !dbg !3555, !tbaa !3425
  %call114 = call i8* %52(%struct.settings* noundef nonnull @settings) #12, !dbg !3556
  call void @llvm.dbg.value(metadata i8* %call114, metadata !3376, metadata !DIExpression()), !dbg !3390
  %53 = load double, double* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 33), align 8, !dbg !3557, !tbaa !3423
  call void @llvm.dbg.value(metadata double %53, metadata !3375, metadata !DIExpression()), !dbg !3390
  br label %if.end115, !dbg !3558

if.end115:                                        ; preds = %if.then112, %if.then110
  %last_ratio.1 = phi double [ %53, %if.then112 ], [ %last_ratio.0252, %if.then110 ], !dbg !3390
  %am.1 = phi i8* [ %call114, %if.then112 ], [ %am.0253, %if.then110 ], !dbg !3390
  call void @llvm.dbg.value(metadata i8* %am.1, metadata !3376, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata double %last_ratio.1, metadata !3375, metadata !DIExpression()), !dbg !3390
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #14, !dbg !3559
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #14, !dbg !3559
  %54 = load void (i8*, i32*, i32*)*, void (i8*, i32*, i32*)** %run, align 8, !dbg !3560, !tbaa !3561
  call void @llvm.dbg.value(metadata i32* %src, metadata !3382, metadata !DIExpression(DW_OP_deref)), !dbg !3562
  call void @llvm.dbg.value(metadata i32* %dst, metadata !3385, metadata !DIExpression(DW_OP_deref)), !dbg !3562
  call void %54(i8* noundef %am.1, i32* noundef nonnull %src, i32* noundef nonnull %dst) #12, !dbg !3563
  %55 = load i32, i32* %src, align 4, !dbg !3564, !tbaa !625
  call void @llvm.dbg.value(metadata i32 %55, metadata !3382, metadata !DIExpression()), !dbg !3562
  %cmp116.not = icmp eq i32 %55, -1, !dbg !3565
  br i1 %cmp116.not, label %if.end129, label %land.lhs.true117, !dbg !3566

land.lhs.true117:                                 ; preds = %if.end115
  %gcov_ctr171 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 25), align 8, !dbg !3567
  %56 = add i64 %gcov_ctr171, 1, !dbg !3567
  store i64 %56, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 25), align 8, !dbg !3567
  %57 = load i32, i32* %dst, align 4, !dbg !3567, !tbaa !625
  call void @llvm.dbg.value(metadata i32 %57, metadata !3385, metadata !DIExpression()), !dbg !3562
  %cmp118.not = icmp eq i32 %57, -1, !dbg !3568
  br i1 %cmp118.not, label %if.then132, label %if.then119, !dbg !3569

if.then119:                                       ; preds = %land.lhs.true117
  call void @llvm.dbg.value(metadata i32 %55, metadata !3382, metadata !DIExpression()), !dbg !3562
  %call120 = call i32 @slabs_reassign(i32 noundef %55, i32 noundef %57) #12, !dbg !3570
  call void @llvm.dbg.value(metadata %struct._logger* %call6, metadata !3386, metadata !DIExpression()), !dbg !3571
  %58 = load i16, i16* %eflags, align 4, !dbg !3572, !tbaa !971
  %59 = and i16 %58, 2, !dbg !3572
  %tobool125.not = icmp eq i16 %59, 0, !dbg !3572
  br i1 %tobool125.not, label %if.end128, label %if.then126, !dbg !3574

if.then126:                                       ; preds = %if.then119
  %gcov_ctr173 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 27), align 8, !dbg !3572
  %60 = add i64 %gcov_ctr173, 1, !dbg !3572
  store i64 %60, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 27), align 8, !dbg !3572
  %61 = load i32, i32* %src, align 4, !dbg !3572, !tbaa !625
  call void @llvm.dbg.value(metadata i32 %61, metadata !3382, metadata !DIExpression()), !dbg !3562
  %62 = load i32, i32* %dst, align 4, !dbg !3572, !tbaa !625
  call void @llvm.dbg.value(metadata i32 %62, metadata !3385, metadata !DIExpression()), !dbg !3562
  %call127 = call i32 (%struct._logger*, i32, i8*, ...) @logger_log(%struct._logger* noundef nonnull %call6, i32 noundef 5, i8* noundef null, i32 noundef %61, i32 noundef %62) #12, !dbg !3572
  br label %if.end128, !dbg !3572

if.end128:                                        ; preds = %if.then126, %if.then119
  %gcov_ctr174 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 28), align 16, !dbg !3575
  %63 = add i64 %gcov_ctr174, 1, !dbg !3575
  store i64 %63, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 28), align 16, !dbg !3575
  br label %if.end129, !dbg !3575

if.end129:                                        ; preds = %if.end128, %if.end115
  %.pr = load i32, i32* %dst, align 4, !dbg !3576, !tbaa !625
  call void @llvm.dbg.value(metadata i32 %.pr, metadata !3385, metadata !DIExpression()), !dbg !3562
  %cmp130.not = icmp eq i32 %.pr, 0, !dbg !3578
  br i1 %cmp130.not, label %if.then136, label %if.then132, !dbg !3579

if.then132:                                       ; preds = %land.lhs.true117, %if.end129
  %gcov_ctr175 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 29), align 8, !dbg !3580
  %64 = add i64 %gcov_ctr175, 1, !dbg !3580
  store i64 %64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 29), align 8, !dbg !3580
  %65 = load volatile i32, i32* @current_time, align 4, !dbg !3580, !tbaa !625
  call void @llvm.dbg.value(metadata i32 %65, metadata !3369, metadata !DIExpression()), !dbg !3390
  br label %if.end138, !dbg !3582

if.then136:                                       ; preds = %if.end129
  call void @llvm.dbg.value(metadata i32 1000, metadata !3364, metadata !DIExpression()), !dbg !3390
  %66 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 30) to <2 x i64>*), align 16, !dbg !3583
  %67 = add <2 x i64> %66, <i64 1, i64 1>, !dbg !3583
  store <2 x i64> %67, <2 x i64>* bitcast (i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 30) to <2 x i64>*), align 16, !dbg !3583
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %if.then132
  %last_automove_check.1 = phi i32 [ %65, %if.then132 ], [ %last_automove_check.0250, %if.then136 ], !dbg !3390
  %to_sleep.7 = phi i32 [ %to_sleep.5, %if.then132 ], [ 1000, %if.then136 ], !dbg !3465
  call void @llvm.dbg.value(metadata i32 %to_sleep.7, metadata !3364, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 %last_automove_check.1, metadata !3369, metadata !DIExpression()), !dbg !3390
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #14, !dbg !3586
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #14, !dbg !3586
  br label %if.end139, !dbg !3587

if.end139:                                        ; preds = %if.end138, %land.lhs.true108, %if.end106
  %last_automove_check.2 = phi i32 [ %last_automove_check.1, %if.end138 ], [ %last_automove_check.0250, %land.lhs.true108 ], [ %last_automove_check.0250, %if.end106 ], !dbg !3390
  %to_sleep.8 = phi i32 [ %to_sleep.7, %if.end138 ], [ %to_sleep.5, %land.lhs.true108 ], [ %to_sleep.5, %if.end106 ], !dbg !3524
  %last_ratio.2 = phi double [ %last_ratio.1, %if.end138 ], [ %last_ratio.0252, %land.lhs.true108 ], [ %last_ratio.0252, %if.end106 ], !dbg !3390
  %am.2 = phi i8* [ %am.1, %if.end138 ], [ %am.0253, %land.lhs.true108 ], [ %am.0253, %if.end106 ], !dbg !3390
  call void @llvm.dbg.value(metadata i8* %am.2, metadata !3376, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata double %last_ratio.2, metadata !3375, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 %to_sleep.8, metadata !3364, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 %last_automove_check.2, metadata !3369, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 %last_crawler_check.1, metadata !3368, metadata !DIExpression()), !dbg !3390
  %68 = load volatile i32, i32* @do_run_lru_maintainer_thread, align 4, !dbg !3435, !tbaa !625
  %tobool.not = icmp eq i32 %68, 0, !dbg !3436
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !3436, !llvm.loop !3588

while.end:                                        ; preds = %if.end139, %if.end16
  %am.0.lcssa = phi i8* [ %call11, %if.end16 ], [ %am.2, %if.end139 ], !dbg !3390
  %gcov_ctr150 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 4), align 16, !dbg !3590
  %69 = add i64 %gcov_ctr150, 1, !dbg !3590
  store i64 %69, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 4), align 16, !dbg !3590
  %call140 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_maintainer_lock) #12, !dbg !3590
  %free141 = getelementptr inbounds %struct.slab_automove_reg_t, %struct.slab_automove_reg_t* %sam.0, i64 0, i32 1, !dbg !3591
  %70 = load void (i8*)*, void (i8*)** %free141, align 8, !dbg !3591, !tbaa !3554
  call void %70(i8* noundef %am.0.lcssa) #12, !dbg !3592
  call void @free(i8* noundef nonnull %call) #12, !dbg !3593
  %71 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 5), align 8, !dbg !3594, !tbaa !2831
  %cmp142 = icmp sgt i32 %71, 2, !dbg !3596
  br i1 %cmp142, label %if.then144, label %if.end146, !dbg !3597

if.then144:                                       ; preds = %while.end
  %gcov_ctr178 = load i64, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 32), align 16, !dbg !3598
  %72 = add i64 %gcov_ctr178, 1, !dbg !3598
  store i64 %72, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 32), align 16, !dbg !3598
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3598, !tbaa !759
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.80, i64 0, i64 0)) #12, !dbg !3599
  br label %if.end146, !dbg !3599

if.end146:                                        ; preds = %if.then144, %while.end
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #14, !dbg !3600
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #14, !dbg !3600
  ret i8* null, !dbg !3601
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @lru_maintainer_pause() local_unnamed_addr #0 !dbg !3602 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 0), align 8, !dbg !3603
  %0 = add i64 %gcov_ctr, 1, !dbg !3603
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 0), align 8, !dbg !3603
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @lru_maintainer_lock) #12, !dbg !3603
  ret void, !dbg !3604
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @lru_maintainer_resume() local_unnamed_addr #0 !dbg !3605 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.132, i64 0, i64 0), align 8, !dbg !3606
  %0 = add i64 %gcov_ctr, 1, !dbg !3606
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.132, i64 0, i64 0), align 8, !dbg !3606
  %call = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @lru_maintainer_lock) #12, !dbg !3606
  ret void, !dbg !3607
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @init_lru_maintainer() local_unnamed_addr #4 !dbg !3608 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.133, i64 0, i64 0), align 8, !dbg !3609
  %0 = add i64 %gcov_ctr, 1, !dbg !3609
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.133, i64 0, i64 0), align 8, !dbg !3609
  ret i32 0, !dbg !3610
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_item_linktail_q(%struct._stritem* noundef %it) local_unnamed_addr #0 !dbg !3611 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !3613, metadata !DIExpression()), !dbg !3616
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !3617
  %1 = load i16, i16* %it_flags, align 2, !dbg !3617, !tbaa !615
  %cmp = icmp eq i16 %1, 1, !dbg !3617
  br i1 %cmp, label %if.end, label %if.else, !dbg !3620

if.else:                                          ; preds = %entry
  %gcov_ctr41 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 1), align 8, !dbg !3617
  %2 = add i64 %gcov_ctr41, 1, !dbg !3617
  store i64 %2, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 1), align 8, !dbg !3617
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1755, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.do_item_linktail_q, i64 0, i64 0)) #15, !dbg !3617
  unreachable, !dbg !3617

if.end:                                           ; preds = %entry
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 5, !dbg !3621
  %3 = load i32, i32* %nbytes, align 8, !dbg !3621, !tbaa !625
  %cmp2 = icmp eq i32 %3, 0, !dbg !3621
  br i1 %cmp2, label %if.end6, label %if.else5, !dbg !3624

if.else5:                                         ; preds = %if.end
  %gcov_ctr42 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 2), align 16, !dbg !3621
  %4 = add i64 %gcov_ctr42, 1, !dbg !3621
  store i64 %4, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 2), align 16, !dbg !3621
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1756, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.do_item_linktail_q, i64 0, i64 0)) #15, !dbg !3621
  unreachable, !dbg !3621

if.end6:                                          ; preds = %if.end
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 8, !dbg !3625
  %5 = load i8, i8* %slabs_clsid, align 8, !dbg !3625, !tbaa !617
  %idxprom = zext i8 %5 to i64, !dbg !3626
  %arrayidx = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @heads, i64 0, i64 %idxprom, !dbg !3626
  call void @llvm.dbg.value(metadata %struct._stritem** %arrayidx, metadata !3614, metadata !DIExpression()), !dbg !3616
  %arrayidx9 = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @tails, i64 0, i64 %idxprom, !dbg !3627
  call void @llvm.dbg.value(metadata %struct._stritem** %arrayidx9, metadata !3615, metadata !DIExpression()), !dbg !3616
  %6 = load %struct._stritem*, %struct._stritem** %arrayidx9, align 8, !dbg !3628, !tbaa !759
  %cmp10.not = icmp eq %struct._stritem* %6, %it, !dbg !3628
  br i1 %cmp10.not, label %if.else13, label %if.end14, !dbg !3631

if.else13:                                        ; preds = %if.end6
  %gcov_ctr43 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 3), align 8, !dbg !3628
  %7 = add i64 %gcov_ctr43, 1, !dbg !3628
  store i64 %7, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 3), align 8, !dbg !3628
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1761, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.do_item_linktail_q, i64 0, i64 0)) #15, !dbg !3628
  unreachable, !dbg !3628

if.end14:                                         ; preds = %if.end6
  %8 = load %struct._stritem*, %struct._stritem** %arrayidx, align 8, !dbg !3632, !tbaa !759
  %tobool.not = icmp eq %struct._stritem* %8, null, !dbg !3632
  br i1 %tobool.not, label %land.lhs.true18, label %land.lhs.true, !dbg !3632

land.lhs.true:                                    ; preds = %if.end14
  %gcov_ctr44 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 4), align 16, !dbg !3632
  %9 = add i64 %gcov_ctr44, 1, !dbg !3632
  store i64 %9, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 4), align 16, !dbg !3632
  %tobool15.not = icmp eq %struct._stritem* %6, null, !dbg !3632
  br i1 %tobool15.not, label %if.else22, label %if.then26, !dbg !3632

land.lhs.true18:                                  ; preds = %if.end14
  %gcov_ctr45 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 5), align 8, !dbg !3632
  %10 = add i64 %gcov_ctr45, 1, !dbg !3632
  store i64 %10, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 5), align 8, !dbg !3632
  %cmp19 = icmp eq %struct._stritem* %6, null, !dbg !3632
  br i1 %cmp19, label %if.then39, label %if.else22, !dbg !3635

if.else22:                                        ; preds = %land.lhs.true, %land.lhs.true18
  %gcov_ctr46 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 6), align 16, !dbg !3632
  %11 = add i64 %gcov_ctr46, 1, !dbg !3632
  store i64 %11, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 6), align 16, !dbg !3632
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1762, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.do_item_linktail_q, i64 0, i64 0)) #15, !dbg !3632
  unreachable, !dbg !3632

if.then26:                                        ; preds = %land.lhs.true
  %prev = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 1, !dbg !3636
  store %struct._stritem* %6, %struct._stritem** %prev, align 8, !dbg !3637, !tbaa !759
  %next = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 0, !dbg !3638
  store %struct._stritem* null, %struct._stritem** %next, align 8, !dbg !3639, !tbaa !759
  %next28 = getelementptr inbounds %struct._stritem, %struct._stritem* %6, i64 0, i32 0, !dbg !3640
  %12 = load %struct._stritem*, %struct._stritem** %next28, align 8, !dbg !3640, !tbaa !759
  %cmp29 = icmp eq %struct._stritem* %12, null, !dbg !3640
  br i1 %cmp29, label %if.end36, label %if.else32, !dbg !3645

if.else32:                                        ; preds = %if.then26
  %gcov_ctr47 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 7), align 8, !dbg !3640
  %13 = add i64 %gcov_ctr47, 1, !dbg !3640
  store i64 %13, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 7), align 8, !dbg !3640
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1766, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.do_item_linktail_q, i64 0, i64 0)) #15, !dbg !3640
  unreachable, !dbg !3640

if.end36:                                         ; preds = %if.then26
  %gcov_ctr48 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 8), align 16, !dbg !3646
  %14 = add i64 %gcov_ctr48, 1, !dbg !3646
  store i64 %14, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 8), align 16, !dbg !3646
  %15 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !3647, !tbaa !759
  %next35 = getelementptr inbounds %struct._stritem, %struct._stritem* %15, i64 0, i32 0, !dbg !3648
  store %struct._stritem* %it, %struct._stritem** %next35, align 8, !dbg !3649, !tbaa !759
  br label %if.end40, !dbg !3650

if.then39:                                        ; preds = %land.lhs.true18
  %16 = bitcast %struct._stritem* %it to <2 x %struct._stritem*>*, !dbg !3639
  store <2 x %struct._stritem*> zeroinitializer, <2 x %struct._stritem*>* %16, align 8, !dbg !3639, !tbaa !759
  store %struct._stritem* %it, %struct._stritem** %arrayidx9, align 8, !dbg !3651, !tbaa !759
  %gcov_ctr49 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 9), align 8, !dbg !3652
  %17 = add i64 %gcov_ctr49, 1, !dbg !3652
  store i64 %17, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.134, i64 0, i64 9), align 8, !dbg !3652
  br label %if.end40, !dbg !3654

if.end40:                                         ; preds = %if.end36, %if.then39
  %arrayidx9.sink = phi %struct._stritem** [ %arrayidx9, %if.end36 ], [ %arrayidx, %if.then39 ]
  store %struct._stritem* %it, %struct._stritem** %arrayidx9.sink, align 8, !dbg !3616, !tbaa !759
  ret void, !dbg !3655
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_item_unlinktail_q(%struct._stritem* noundef readonly %it) local_unnamed_addr #0 !dbg !3656 {
entry:
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !3658, metadata !DIExpression()), !dbg !3661
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 8, !dbg !3662
  %0 = load i8, i8* %slabs_clsid, align 8, !dbg !3662, !tbaa !617
  %idxprom = zext i8 %0 to i64, !dbg !3663
  %arrayidx = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @heads, i64 0, i64 %idxprom, !dbg !3663
  call void @llvm.dbg.value(metadata %struct._stritem** %arrayidx, metadata !3659, metadata !DIExpression()), !dbg !3661
  %arrayidx3 = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @tails, i64 0, i64 %idxprom, !dbg !3664
  call void @llvm.dbg.value(metadata %struct._stritem** %arrayidx3, metadata !3660, metadata !DIExpression()), !dbg !3661
  %1 = load %struct._stritem*, %struct._stritem** %arrayidx, align 8, !dbg !3665, !tbaa !759
  %cmp = icmp eq %struct._stritem* %1, %it, !dbg !3667
  br i1 %cmp, label %if.then, label %if.end6, !dbg !3668

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 1, !dbg !3669
  %2 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !3669, !tbaa !759
  %cmp4 = icmp eq %struct._stritem* %2, null, !dbg !3669
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !3673

if.then5:                                         ; preds = %if.then
  %gcov_ctr = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 0), align 16, !dbg !3673
  %3 = add i64 %gcov_ctr, 1, !dbg !3673
  store i64 %3, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 0), align 16, !dbg !3673
  %next = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 0, !dbg !3674
  %4 = load %struct._stritem*, %struct._stritem** %next, align 8, !dbg !3674, !tbaa !759
  store %struct._stritem* %4, %struct._stritem** %arrayidx, align 8, !dbg !3675, !tbaa !759
  br label %if.end6, !dbg !3676

if.else:                                          ; preds = %if.then
  %gcov_ctr39 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 1), align 8, !dbg !3669
  %5 = add i64 %gcov_ctr39, 1, !dbg !3669
  store i64 %5, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 1), align 8, !dbg !3669
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1780, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.do_item_unlinktail_q, i64 0, i64 0)) #15, !dbg !3669
  unreachable, !dbg !3669

if.end6:                                          ; preds = %if.then5, %entry
  %6 = load %struct._stritem*, %struct._stritem** %arrayidx3, align 8, !dbg !3677, !tbaa !759
  %cmp7 = icmp eq %struct._stritem* %6, %it, !dbg !3679
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !3680

if.then8:                                         ; preds = %if.end6
  %next9 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 0, !dbg !3681
  %7 = load %struct._stritem*, %struct._stritem** %next9, align 8, !dbg !3681, !tbaa !759
  %cmp10 = icmp eq %struct._stritem* %7, null, !dbg !3681
  br i1 %cmp10, label %if.end13, label %if.else12, !dbg !3685

if.else12:                                        ; preds = %if.then8
  %gcov_ctr40 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 2), align 16, !dbg !3681
  %8 = add i64 %gcov_ctr40, 1, !dbg !3681
  store i64 %8, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 2), align 16, !dbg !3681
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1784, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.do_item_unlinktail_q, i64 0, i64 0)) #15, !dbg !3681
  unreachable, !dbg !3681

if.end13:                                         ; preds = %if.then8
  %gcov_ctr41 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 3), align 8, !dbg !3686
  %9 = add i64 %gcov_ctr41, 1, !dbg !3686
  store i64 %9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 3), align 8, !dbg !3686
  %prev14 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 1, !dbg !3687
  %10 = load %struct._stritem*, %struct._stritem** %prev14, align 8, !dbg !3687, !tbaa !759
  store %struct._stritem* %10, %struct._stritem** %arrayidx3, align 8, !dbg !3688, !tbaa !759
  br label %if.end15, !dbg !3689

if.end15:                                         ; preds = %if.end13, %if.end6
  %next16 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 0, !dbg !3690
  %11 = load %struct._stritem*, %struct._stritem** %next16, align 8, !dbg !3690, !tbaa !759
  %cmp17.not = icmp eq %struct._stritem* %11, %it, !dbg !3690
  br i1 %cmp17.not, label %if.else19, label %if.end20, !dbg !3693

if.else19:                                        ; preds = %if.end15
  %gcov_ctr42 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 4), align 16, !dbg !3690
  %12 = add i64 %gcov_ctr42, 1, !dbg !3690
  store i64 %12, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 4), align 16, !dbg !3690
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1787, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.do_item_unlinktail_q, i64 0, i64 0)) #15, !dbg !3690
  unreachable, !dbg !3690

if.end20:                                         ; preds = %if.end15
  %prev21 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 1, !dbg !3694
  %13 = load %struct._stritem*, %struct._stritem** %prev21, align 8, !dbg !3694, !tbaa !759
  %cmp22.not = icmp eq %struct._stritem* %13, %it, !dbg !3694
  br i1 %cmp22.not, label %if.else24, label %if.then23, !dbg !3697

if.then23:                                        ; preds = %if.end20
  %gcov_ctr43 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 5), align 8, !dbg !3697
  %14 = add i64 %gcov_ctr43, 1, !dbg !3697
  store i64 %14, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 5), align 8, !dbg !3697
  %15 = load %struct._stritem*, %struct._stritem** %next16, align 8, !dbg !3698, !tbaa !759
  %tobool.not = icmp eq %struct._stritem* %15, null, !dbg !3700
  br i1 %tobool.not, label %if.end31, label %if.then27, !dbg !3701

if.else24:                                        ; preds = %if.end20
  %gcov_ctr44 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 6), align 16, !dbg !3694
  %16 = add i64 %gcov_ctr44, 1, !dbg !3694
  store i64 %16, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 6), align 16, !dbg !3694
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1788, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.do_item_unlinktail_q, i64 0, i64 0)) #15, !dbg !3694
  unreachable, !dbg !3694

if.then27:                                        ; preds = %if.then23
  %gcov_ctr45 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 7), align 8, !dbg !3702
  %17 = add i64 %gcov_ctr45, 1, !dbg !3702
  store i64 %17, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 7), align 8, !dbg !3702
  %18 = load %struct._stritem*, %struct._stritem** %prev21, align 8, !dbg !3703, !tbaa !759
  %19 = load %struct._stritem*, %struct._stritem** %next16, align 8, !dbg !3704, !tbaa !759
  %prev30 = getelementptr inbounds %struct._stritem, %struct._stritem* %19, i64 0, i32 1, !dbg !3705
  store %struct._stritem* %18, %struct._stritem** %prev30, align 8, !dbg !3706, !tbaa !759
  br label %if.end31, !dbg !3707

if.end31:                                         ; preds = %if.then27, %if.then23
  %20 = load %struct._stritem*, %struct._stritem** %prev21, align 8, !dbg !3708, !tbaa !759
  %tobool33.not = icmp eq %struct._stritem* %20, null, !dbg !3710
  br i1 %tobool33.not, label %if.end38, label %if.then34, !dbg !3711

if.then34:                                        ; preds = %if.end31
  %gcov_ctr46 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 8), align 16, !dbg !3712
  %21 = add i64 %gcov_ctr46, 1, !dbg !3712
  store i64 %21, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.135, i64 0, i64 8), align 16, !dbg !3712
  %22 = load %struct._stritem*, %struct._stritem** %next16, align 8, !dbg !3713, !tbaa !759
  %23 = load %struct._stritem*, %struct._stritem** %prev21, align 8, !dbg !3714, !tbaa !759
  %next37 = getelementptr inbounds %struct._stritem, %struct._stritem* %23, i64 0, i32 0, !dbg !3715
  store %struct._stritem* %22, %struct._stritem** %next37, align 8, !dbg !3716, !tbaa !759
  br label %if.end38, !dbg !3717

if.end38:                                         ; preds = %if.then34, %if.end31
  ret void, !dbg !3718
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._stritem* @do_item_crawl_q(%struct._stritem* noundef %it) local_unnamed_addr #0 !dbg !3719 {
entry:
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !3723, metadata !DIExpression()), !dbg !3726
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !3727
  %0 = load i16, i16* %it_flags, align 2, !dbg !3727, !tbaa !615
  %cmp = icmp eq i16 %0, 1, !dbg !3727
  br i1 %cmp, label %if.end, label %if.else, !dbg !3730

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 0), align 16, !dbg !3727
  %1 = add i64 %gcov_ctr, 1, !dbg !3727
  store i64 %1, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 0), align 16, !dbg !3727
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1799, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.do_item_crawl_q, i64 0, i64 0)) #15, !dbg !3727
  unreachable, !dbg !3727

if.end:                                           ; preds = %entry
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 5, !dbg !3731
  %2 = load i32, i32* %nbytes, align 8, !dbg !3731, !tbaa !625
  %cmp2 = icmp eq i32 %2, 0, !dbg !3731
  br i1 %cmp2, label %if.end6, label %if.else5, !dbg !3734

if.else5:                                         ; preds = %if.end
  %gcov_ctr104 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 1), align 8, !dbg !3731
  %3 = add i64 %gcov_ctr104, 1, !dbg !3731
  store i64 %3, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 1), align 8, !dbg !3731
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1800, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.do_item_crawl_q, i64 0, i64 0)) #15, !dbg !3731
  unreachable, !dbg !3731

if.end6:                                          ; preds = %if.end
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 8, !dbg !3735
  %4 = load i8, i8* %slabs_clsid, align 8, !dbg !3735, !tbaa !617
  %idxprom = zext i8 %4 to i64, !dbg !3736
  %arrayidx = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @heads, i64 0, i64 %idxprom, !dbg !3736
  call void @llvm.dbg.value(metadata %struct._stritem** %arrayidx, metadata !3724, metadata !DIExpression()), !dbg !3726
  %arrayidx9 = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @tails, i64 0, i64 %idxprom, !dbg !3737
  call void @llvm.dbg.value(metadata %struct._stritem** %arrayidx9, metadata !3725, metadata !DIExpression()), !dbg !3726
  %prev = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 1, !dbg !3738
  %5 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !3738, !tbaa !759
  %cmp10 = icmp eq %struct._stritem* %5, null, !dbg !3740
  br i1 %cmp10, label %if.then12, label %if.end30, !dbg !3741

if.then12:                                        ; preds = %if.end6
  %6 = load %struct._stritem*, %struct._stritem** %arrayidx, align 8, !dbg !3742, !tbaa !759
  %cmp13 = icmp eq %struct._stritem* %6, %it, !dbg !3742
  br i1 %cmp13, label %if.end17, label %if.else16, !dbg !3746

if.else16:                                        ; preds = %if.then12
  %gcov_ctr105 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 2), align 16, !dbg !3742
  %7 = add i64 %gcov_ctr105, 1, !dbg !3742
  store i64 %7, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 2), align 16, !dbg !3742
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1806, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.do_item_crawl_q, i64 0, i64 0)) #15, !dbg !3742
  unreachable, !dbg !3742

if.end17:                                         ; preds = %if.then12
  %next = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 0, !dbg !3747
  %8 = load %struct._stritem*, %struct._stritem** %next, align 8, !dbg !3747, !tbaa !759
  %tobool.not = icmp eq %struct._stritem* %8, null, !dbg !3749
  br i1 %tobool.not, label %if.end29, label %if.then18, !dbg !3750

if.then18:                                        ; preds = %if.end17
  store %struct._stritem* %8, %struct._stritem** %arrayidx, align 8, !dbg !3751, !tbaa !759
  %prev21 = getelementptr inbounds %struct._stritem, %struct._stritem* %8, i64 0, i32 1, !dbg !3753
  %9 = load %struct._stritem*, %struct._stritem** %prev21, align 8, !dbg !3753, !tbaa !759
  %cmp22 = icmp eq %struct._stritem* %9, %it, !dbg !3753
  br i1 %cmp22, label %if.end26, label %if.else25, !dbg !3756

if.else25:                                        ; preds = %if.then18
  %gcov_ctr106 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 3), align 8, !dbg !3753
  %10 = add i64 %gcov_ctr106, 1, !dbg !3753
  store i64 %10, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 3), align 8, !dbg !3753
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1809, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.do_item_crawl_q, i64 0, i64 0)) #15, !dbg !3753
  unreachable, !dbg !3753

if.end26:                                         ; preds = %if.then18
  %gcov_ctr107 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 4), align 16, !dbg !3757
  %11 = add i64 %gcov_ctr107, 1, !dbg !3757
  store i64 %11, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 4), align 16, !dbg !3757
  %12 = load %struct._stritem*, %struct._stritem** %next, align 8, !dbg !3758, !tbaa !759
  %prev28 = getelementptr inbounds %struct._stritem, %struct._stritem* %12, i64 0, i32 1, !dbg !3759
  store %struct._stritem* null, %struct._stritem** %prev28, align 8, !dbg !3760, !tbaa !759
  br label %if.end29, !dbg !3761

if.end29:                                         ; preds = %if.end26, %if.end17
  %gcov_ctr108 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 5), align 8, !dbg !3762
  %13 = add i64 %gcov_ctr108, 1, !dbg !3762
  store i64 %13, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 5), align 8, !dbg !3762
  br label %cleanup, !dbg !3762

if.end30:                                         ; preds = %if.end6
  %cmp32.not = icmp eq %struct._stritem* %5, %it, !dbg !3763
  br i1 %cmp32.not, label %if.else35, label %if.then39, !dbg !3766

if.else35:                                        ; preds = %if.end30
  %gcov_ctr109 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 6), align 16, !dbg !3763
  %14 = add i64 %gcov_ctr109, 1, !dbg !3763
  store i64 %14, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 6), align 16, !dbg !3763
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1817, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.do_item_crawl_q, i64 0, i64 0)) #15, !dbg !3763
  unreachable, !dbg !3763

if.then39:                                        ; preds = %if.end30
  %15 = load %struct._stritem*, %struct._stritem** %arrayidx, align 8, !dbg !3767, !tbaa !759
  %cmp41 = icmp eq %struct._stritem* %15, %5, !dbg !3771
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !3772

if.then43:                                        ; preds = %if.then39
  %gcov_ctr110 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 7), align 8, !dbg !3773
  %16 = add i64 %gcov_ctr110, 1, !dbg !3773
  store i64 %16, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 7), align 8, !dbg !3773
  store %struct._stritem* %it, %struct._stritem** %arrayidx, align 8, !dbg !3775, !tbaa !759
  br label %if.end44, !dbg !3776

if.end44:                                         ; preds = %if.then43, %if.then39
  %17 = load %struct._stritem*, %struct._stritem** %arrayidx9, align 8, !dbg !3777, !tbaa !759
  %cmp45 = icmp eq %struct._stritem* %17, %it, !dbg !3779
  br i1 %cmp45, label %if.then47, label %if.end49, !dbg !3780

if.then47:                                        ; preds = %if.end44
  %gcov_ctr111 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 8), align 16, !dbg !3781
  %18 = add i64 %gcov_ctr111, 1, !dbg !3781
  store i64 %18, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 8), align 16, !dbg !3781
  %19 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !3783, !tbaa !759
  store %struct._stritem* %19, %struct._stritem** %arrayidx9, align 8, !dbg !3784, !tbaa !759
  br label %if.end49, !dbg !3785

if.end49:                                         ; preds = %if.then47, %if.end44
  %next50 = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 0, !dbg !3786
  %20 = load %struct._stritem*, %struct._stritem** %next50, align 8, !dbg !3786, !tbaa !759
  %cmp51.not = icmp eq %struct._stritem* %20, %it, !dbg !3786
  br i1 %cmp51.not, label %if.else54, label %if.end55, !dbg !3789

if.else54:                                        ; preds = %if.end49
  %gcov_ctr112 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 9), align 8, !dbg !3786
  %21 = add i64 %gcov_ctr112, 1, !dbg !3786
  store i64 %21, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 9), align 8, !dbg !3786
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1827, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.do_item_crawl_q, i64 0, i64 0)) #15, !dbg !3786
  unreachable, !dbg !3786

if.end55:                                         ; preds = %if.end49
  %tobool57.not = icmp eq %struct._stritem* %20, null, !dbg !3790
  br i1 %tobool57.not, label %if.else72, label %if.then58, !dbg !3792

if.then58:                                        ; preds = %if.end55
  %22 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !3793, !tbaa !759
  %next60 = getelementptr inbounds %struct._stritem, %struct._stritem* %22, i64 0, i32 0, !dbg !3793
  %23 = load %struct._stritem*, %struct._stritem** %next60, align 8, !dbg !3793, !tbaa !759
  %cmp61 = icmp eq %struct._stritem* %23, %it, !dbg !3793
  br i1 %cmp61, label %if.then63, label %if.else64, !dbg !3797

if.then63:                                        ; preds = %if.then58
  %gcov_ctr113 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 10), align 16, !dbg !3797
  %24 = add i64 %gcov_ctr113, 1, !dbg !3797
  store i64 %24, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 10), align 16, !dbg !3797
  %25 = load %struct._stritem*, %struct._stritem** %next50, align 8, !dbg !3798, !tbaa !759
  %26 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !3799, !tbaa !759
  %next68 = getelementptr inbounds %struct._stritem, %struct._stritem* %26, i64 0, i32 0, !dbg !3800
  store %struct._stritem* %25, %struct._stritem** %next68, align 8, !dbg !3801, !tbaa !759
  %27 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !3802, !tbaa !759
  %28 = load %struct._stritem*, %struct._stritem** %next50, align 8, !dbg !3803, !tbaa !759
  %prev71 = getelementptr inbounds %struct._stritem, %struct._stritem* %28, i64 0, i32 1, !dbg !3804
  store %struct._stritem* %27, %struct._stritem** %prev71, align 8, !dbg !3805, !tbaa !759
  br label %if.end75, !dbg !3806

if.else64:                                        ; preds = %if.then58
  %gcov_ctr114 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 11), align 8, !dbg !3793
  %29 = add i64 %gcov_ctr114, 1, !dbg !3793
  store i64 %29, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 11), align 8, !dbg !3793
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1829, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.do_item_crawl_q, i64 0, i64 0)) #15, !dbg !3793
  unreachable, !dbg !3793

if.else72:                                        ; preds = %if.end55
  %gcov_ctr115 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 12), align 16, !dbg !3807
  %30 = add i64 %gcov_ctr115, 1, !dbg !3807
  store i64 %30, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 12), align 16, !dbg !3807
  %31 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !3809, !tbaa !759
  %next74 = getelementptr inbounds %struct._stritem, %struct._stritem* %31, i64 0, i32 0, !dbg !3810
  store %struct._stritem* null, %struct._stritem** %next74, align 8, !dbg !3811, !tbaa !759
  br label %if.end75

if.end75:                                         ; preds = %if.else72, %if.then63
  %32 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !3812, !tbaa !759
  store %struct._stritem* %32, %struct._stritem** %next50, align 8, !dbg !3813, !tbaa !759
  %prev79 = getelementptr inbounds %struct._stritem, %struct._stritem* %32, i64 0, i32 1, !dbg !3814
  %33 = load %struct._stritem*, %struct._stritem** %prev79, align 8, !dbg !3814, !tbaa !759
  store %struct._stritem* %33, %struct._stritem** %prev, align 8, !dbg !3815, !tbaa !759
  store %struct._stritem* %it, %struct._stritem** %prev79, align 8, !dbg !3816, !tbaa !759
  %34 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !3817, !tbaa !759
  %tobool84.not = icmp eq %struct._stritem* %34, null, !dbg !3819
  br i1 %tobool84.not, label %if.end89, label %if.then85, !dbg !3820

if.then85:                                        ; preds = %if.end75
  %gcov_ctr116 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 13), align 8, !dbg !3821
  %35 = add i64 %gcov_ctr116, 1, !dbg !3821
  store i64 %35, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 13), align 8, !dbg !3821
  %36 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !3823, !tbaa !759
  %next87 = getelementptr inbounds %struct._stritem, %struct._stritem* %36, i64 0, i32 0, !dbg !3824
  store %struct._stritem* %it, %struct._stritem** %next87, align 8, !dbg !3825, !tbaa !759
  br label %if.end89, !dbg !3826

if.end89:                                         ; preds = %if.end75, %if.then85
  %37 = load %struct._stritem*, %struct._stritem** %next50, align 8, !dbg !3827, !tbaa !759
  %cmp91.not = icmp eq %struct._stritem* %37, %it, !dbg !3827
  br i1 %cmp91.not, label %if.else94, label %if.end95, !dbg !3830

if.else94:                                        ; preds = %if.end89
  %gcov_ctr117 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 14), align 16, !dbg !3827
  %38 = add i64 %gcov_ctr117, 1, !dbg !3827
  store i64 %38, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 14), align 16, !dbg !3827
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1845, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.do_item_crawl_q, i64 0, i64 0)) #15, !dbg !3827
  unreachable, !dbg !3827

if.end95:                                         ; preds = %if.end89
  %39 = load %struct._stritem*, %struct._stritem** %prev, align 8, !dbg !3831, !tbaa !759
  %cmp97.not = icmp eq %struct._stritem* %39, %it, !dbg !3831
  br i1 %cmp97.not, label %if.else100, label %if.then99, !dbg !3834

if.then99:                                        ; preds = %if.end95
  %gcov_ctr118 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 15), align 8, !dbg !3834
  %40 = add i64 %gcov_ctr118, 1, !dbg !3834
  store i64 %40, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 15), align 8, !dbg !3834
  %41 = load %struct._stritem*, %struct._stritem** %next50, align 8, !dbg !3835, !tbaa !759
  br label %cleanup, !dbg !3836

if.else100:                                       ; preds = %if.end95
  %gcov_ctr119 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 16), align 16, !dbg !3831
  %42 = add i64 %gcov_ctr119, 1, !dbg !3831
  store i64 %42, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.136, i64 0, i64 16), align 16, !dbg !3831
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1846, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.do_item_crawl_q, i64 0, i64 0)) #15, !dbg !3831
  unreachable, !dbg !3831

cleanup:                                          ; preds = %if.then99, %if.end29
  %retval.0 = phi %struct._stritem* [ null, %if.end29 ], [ %41, %if.then99 ], !dbg !3726
  ret %struct._stritem* %retval.0, !dbg !3837
}

declare !dbg !3838 dso_local i8* @bipbuf_request(%struct.bipbuf_t* noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !3842 dso_local i32 @bipbuf_push(%struct.bipbuf_t* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noreturn nounwind
declare !dbg !3845 dso_local void @abort() local_unnamed_addr #7

declare !dbg !3846 dso_local %struct._logger* @logger_create() local_unnamed_addr #6

declare !dbg !3849 dso_local i32 @usleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @lru_maintainer_juggle(i32 noundef %slabs_clsid) unnamed_addr #0 !dbg !3853 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 0), align 16
  %chunks_perslab = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %slabs_clsid, metadata !3857, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 0, metadata !3859, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i64 0, metadata !3860, metadata !DIExpression()), !dbg !3869
  %1 = bitcast i32* %chunks_perslab to i8*, !dbg !3870
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #14, !dbg !3870
  call void @llvm.dbg.value(metadata i32 0, metadata !3861, metadata !DIExpression()), !dbg !3869
  store i32 0, i32* %chunks_perslab, align 4, !dbg !3871, !tbaa !625
  call void @llvm.dbg.value(metadata i32* %chunks_perslab, metadata !3861, metadata !DIExpression(DW_OP_deref)), !dbg !3869
  %call = call i32 @slabs_available_chunks(i32 noundef %slabs_clsid, i8* noundef null, i32* noundef nonnull %chunks_perslab) #12, !dbg !3872
  %2 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 48), align 4, !dbg !3873, !tbaa !1208, !range !671
  %tobool.not = icmp eq i8 %2, 0, !dbg !3873
  br i1 %tobool.not, label %if.end5, label %for.body, !dbg !3875

for.body:                                         ; preds = %entry, %if.else
  %did_moves.0141 = phi i32 [ %inc, %if.else ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i32 %did_moves.0141, metadata !3859, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 %did_moves.0141, metadata !3858, metadata !DIExpression()), !dbg !3869
  %call1 = call i32 @lru_pull_tail(i32 noundef %slabs_clsid, i32 noundef 192, i64 noundef 0, i8 noundef zeroext 0, i32 noundef 0, %struct.lru_pull_tail_return* noundef null) #13, !dbg !3876
  %cmp2 = icmp slt i32 %call1, 1, !dbg !3882
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !3883

if.then3:                                         ; preds = %for.body
  %gcov_ctr85 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 1), align 8, !dbg !3884
  %3 = add i64 %gcov_ctr85, 1, !dbg !3884
  store i64 %3, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 1), align 8, !dbg !3884
  br label %for.end, !dbg !3884

if.else:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %did_moves.0141, 1, !dbg !3886
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3859, metadata !DIExpression()), !dbg !3869
  %gcov_ctr86 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 2), align 16, !dbg !3888
  %4 = add i64 %gcov_ctr86, 1, !dbg !3888
  store i64 %4, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 2), align 16, !dbg !3888
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3858, metadata !DIExpression()), !dbg !3869
  %exitcond.not = icmp eq i32 %inc, 500, !dbg !3889
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !3890, !llvm.loop !3891

for.end:                                          ; preds = %if.else, %if.then3
  %did_moves.0139 = phi i32 [ %did_moves.0141, %if.then3 ], [ 500, %if.else ]
  %gcov_ctr87 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 3), align 8, !dbg !3893
  %5 = add i64 %gcov_ctr87, 1, !dbg !3893
  store i64 %5, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 3), align 8, !dbg !3893
  br label %if.end5, !dbg !3893

if.end5:                                          ; preds = %for.end, %entry
  %did_moves.1 = phi i32 [ %did_moves.0139, %for.end ], [ 0, %entry ], !dbg !3894
  call void @llvm.dbg.value(metadata i32 %did_moves.1, metadata !3859, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 0, metadata !3863, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 0, metadata !3864, metadata !DIExpression()), !dbg !3869
  %6 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 30), align 8, !dbg !3895, !tbaa !670, !range !671
  %tobool6.not = icmp eq i8 %6, 0, !dbg !3895
  br i1 %tobool6.not, label %if.end53, label %if.then7, !dbg !3897

if.then7:                                         ; preds = %if.end5
  %or = or i32 %slabs_clsid, 128, !dbg !3898
  %idxprom = sext i32 %or to i64, !dbg !3900
  %arrayidx = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom, !dbg !3900
  %call8 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !3901
  %arrayidx11 = getelementptr inbounds [256 x %struct._stritem*], [256 x %struct._stritem*]* @tails, i64 0, i64 %idxprom, !dbg !3902
  %7 = load %struct._stritem*, %struct._stritem** %arrayidx11, align 8, !dbg !3902, !tbaa !759
  %tobool12.not = icmp eq %struct._stritem* %7, null, !dbg !3902
  br i1 %tobool12.not, label %if.end17, label %if.then13, !dbg !3904

if.then13:                                        ; preds = %if.then7
  %gcov_ctr88 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 4), align 16, !dbg !3905
  %8 = add i64 %gcov_ctr88, 1, !dbg !3905
  store i64 %8, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 4), align 16, !dbg !3905
  %9 = load volatile i32, i32* @current_time, align 4, !dbg !3905, !tbaa !625
  %time = getelementptr inbounds %struct._stritem, %struct._stritem* %7, i64 0, i32 3, !dbg !3907
  %10 = load i32, i32* %time, align 8, !dbg !3907, !tbaa !625
  %sub = sub i32 %9, %10, !dbg !3908
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3862, metadata !DIExpression()), !dbg !3869
  %phi.cast = uitofp i32 %sub to double, !dbg !3909
  br label %if.end17, !dbg !3909

if.end17:                                         ; preds = %if.then13, %if.then7
  %cold_age.0 = phi double [ %phi.cast, %if.then13 ], [ 0.000000e+00, %if.then7 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3862, metadata !DIExpression()), !dbg !3869
  %gcov_ctr89 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 5), align 8, !dbg !3910
  %11 = add i64 %gcov_ctr89, 1, !dbg !3910
  store i64 %11, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 5), align 8, !dbg !3910
  %arrayidx20 = getelementptr inbounds [256 x i64], [256 x i64]* @sizes_bytes, i64 0, i64 %idxprom, !dbg !3911
  %12 = load i64, i64* %arrayidx20, align 8, !dbg !3911, !tbaa !585
  call void @llvm.dbg.value(metadata i64 %12, metadata !3860, metadata !DIExpression()), !dbg !3869
  %call24 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx) #12, !dbg !3912
  %13 = load double, double* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 45), align 8, !dbg !3913, !tbaa !3914
  %mul = fmul double %cold_age.0, %13, !dbg !3915
  %conv25 = fptoui double %mul to i32, !dbg !3916
  call void @llvm.dbg.value(metadata i32 %conv25, metadata !3863, metadata !DIExpression()), !dbg !3869
  %14 = load double, double* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 46), align 8, !dbg !3917, !tbaa !3918
  %mul27 = fmul double %cold_age.0, %14, !dbg !3919
  %conv28 = fptoui double %mul27 to i32, !dbg !3920
  call void @llvm.dbg.value(metadata i32 %conv28, metadata !3864, metadata !DIExpression()), !dbg !3869
  %idxprom30 = sext i32 %slabs_clsid to i64, !dbg !3921
  %arrayidx31 = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom30, !dbg !3921
  %call32 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx31) #12, !dbg !3922
  %arrayidx35 = getelementptr inbounds [256 x i64], [256 x i64]* @sizes_bytes, i64 0, i64 %idxprom30, !dbg !3923
  %15 = load i64, i64* %arrayidx35, align 8, !dbg !3923, !tbaa !585
  %add36 = add i64 %15, %12, !dbg !3924
  call void @llvm.dbg.value(metadata i64 %add36, metadata !3860, metadata !DIExpression()), !dbg !3869
  %call40 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx31) #12, !dbg !3925
  %or41 = or i32 %slabs_clsid, 64, !dbg !3926
  %idxprom42 = sext i32 %or41 to i64, !dbg !3927
  %arrayidx43 = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %idxprom42, !dbg !3927
  %call44 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx43) #12, !dbg !3928
  %arrayidx47 = getelementptr inbounds [256 x i64], [256 x i64]* @sizes_bytes, i64 0, i64 %idxprom42, !dbg !3929
  %16 = load i64, i64* %arrayidx47, align 8, !dbg !3929, !tbaa !585
  %add48 = add i64 %add36, %16, !dbg !3930
  call void @llvm.dbg.value(metadata i64 %add48, metadata !3860, metadata !DIExpression()), !dbg !3869
  %call52 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx43) #12, !dbg !3931
  br label %if.end53, !dbg !3932

if.end53:                                         ; preds = %if.end17, %if.end5
  %total_bytes.0 = phi i64 [ %add48, %if.end17 ], [ 0, %if.end5 ], !dbg !3869
  %hot_age.0 = phi i32 [ %conv25, %if.end17 ], [ 0, %if.end5 ], !dbg !3869
  %warm_age.0 = phi i32 [ %conv28, %if.end17 ], [ 0, %if.end5 ], !dbg !3869
  call void @llvm.dbg.value(metadata i32 %warm_age.0, metadata !3864, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 %hot_age.0, metadata !3863, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i64 %total_bytes.0, metadata !3860, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 0, metadata !3858, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 %did_moves.1, metadata !3859, metadata !DIExpression()), !dbg !3869
  %17 = add nuw nsw i32 %did_moves.1, 500, !dbg !3933
  br label %for.body57, !dbg !3933

for.body57:                                       ; preds = %if.end53, %for.inc75
  %did_moves.2143 = phi i32 [ %did_moves.1, %if.end53 ], [ %inc74, %for.inc75 ]
  call void @llvm.dbg.value(metadata i32 %did_moves.2143, metadata !3859, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 undef, metadata !3858, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 0, metadata !3865, metadata !DIExpression()), !dbg !3934
  %call58 = call i32 @lru_pull_tail(i32 noundef %slabs_clsid, i32 noundef 0, i64 noundef %total_bytes.0, i8 noundef zeroext 2, i32 noundef %hot_age.0, %struct.lru_pull_tail_return* noundef null) #13, !dbg !3935
  %tobool59.not = icmp eq i32 %call58, 0, !dbg !3935
  br i1 %tobool59.not, label %lor.lhs.false, label %if.then62, !dbg !3937

lor.lhs.false:                                    ; preds = %for.body57
  %gcov_ctr90 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 6), align 16, !dbg !3938
  %18 = add i64 %gcov_ctr90, 1, !dbg !3938
  store i64 %18, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 6), align 16, !dbg !3938
  %call60 = call i32 @lru_pull_tail(i32 noundef %slabs_clsid, i32 noundef 64, i64 noundef %total_bytes.0, i8 noundef zeroext 2, i32 noundef %warm_age.0, %struct.lru_pull_tail_return* noundef null) #13, !dbg !3939
  %tobool61.not = icmp eq i32 %call60, 0, !dbg !3939
  br i1 %tobool61.not, label %if.end64, label %if.then62, !dbg !3940

if.then62:                                        ; preds = %lor.lhs.false, %for.body57
  %gcov_ctr91 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 7), align 8, !dbg !3941
  %19 = add i64 %gcov_ctr91, 1, !dbg !3941
  store i64 %19, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 7), align 8, !dbg !3941
  call void @llvm.dbg.value(metadata i32 1, metadata !3865, metadata !DIExpression()), !dbg !3934
  br label %if.end64, !dbg !3943

if.end64:                                         ; preds = %if.then62, %lor.lhs.false
  %do_more.0 = phi i32 [ 1, %if.then62 ], [ 0, %lor.lhs.false ], !dbg !3934
  call void @llvm.dbg.value(metadata i32 %do_more.0, metadata !3865, metadata !DIExpression()), !dbg !3934
  %20 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 30), align 8, !dbg !3944, !tbaa !670, !range !671
  %tobool65.not = icmp eq i8 %20, 0, !dbg !3944
  br i1 %tobool65.not, label %if.end69, label %if.then66, !dbg !3946

if.then66:                                        ; preds = %if.end64
  %gcov_ctr92 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 8), align 16, !dbg !3947
  %21 = add i64 %gcov_ctr92, 1, !dbg !3947
  store i64 %21, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 8), align 16, !dbg !3947
  %call67 = call i32 @lru_pull_tail(i32 noundef %slabs_clsid, i32 noundef 128, i64 noundef %total_bytes.0, i8 noundef zeroext 2, i32 noundef 0, %struct.lru_pull_tail_return* noundef null) #13, !dbg !3949
  %add68 = add nsw i32 %call67, %do_more.0, !dbg !3950
  call void @llvm.dbg.value(metadata i32 %add68, metadata !3865, metadata !DIExpression()), !dbg !3934
  br label %if.end69, !dbg !3951

if.end69:                                         ; preds = %if.then66, %if.end64
  %do_more.1 = phi i32 [ %add68, %if.then66 ], [ %do_more.0, %if.end64 ], !dbg !3934
  call void @llvm.dbg.value(metadata i32 %do_more.1, metadata !3865, metadata !DIExpression()), !dbg !3934
  %cmp70 = icmp eq i32 %do_more.1, 0, !dbg !3952
  br i1 %cmp70, label %cleanup, label %for.inc75, !dbg !3954

cleanup:                                          ; preds = %if.end69
  %gcov_ctr93 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 9), align 8
  %22 = add i64 %gcov_ctr93, 1
  store i64 %22, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 9), align 8
  call void @llvm.dbg.value(metadata i32 %did_moves.2143, metadata !3859, metadata !DIExpression()), !dbg !3869
  br label %for.end77

for.inc75:                                        ; preds = %if.end69
  %gcov_ctr94 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 10), align 16, !dbg !3955
  %23 = add i64 %gcov_ctr94, 1, !dbg !3955
  store i64 %23, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 10), align 16, !dbg !3955
  %inc74 = add nuw nsw i32 %did_moves.2143, 1, !dbg !3955
  call void @llvm.dbg.value(metadata i32 %did_moves.2143, metadata !3859, metadata !DIExpression()), !dbg !3869
  %gcov_ctr96 = load i64, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 12), align 16, !dbg !3956
  %24 = add i64 %gcov_ctr96, 1, !dbg !3956
  store i64 %24, i64* getelementptr inbounds ([13 x i64], [13 x i64]* @__llvm_gcov_ctr.137, i64 0, i64 12), align 16, !dbg !3956
  call void @llvm.dbg.value(metadata i32 %inc74, metadata !3859, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 undef, metadata !3858, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3869
  %exitcond146.not = icmp eq i32 %inc74, %17, !dbg !3957
  br i1 %exitcond146.not, label %for.end77, label %for.body57, !dbg !3933, !llvm.loop !3958

for.end77:                                        ; preds = %for.inc75, %cleanup
  %did_moves.2137 = phi i32 [ %did_moves.2143, %cleanup ], [ %17, %for.inc75 ]
  call void @llvm.dbg.value(metadata i32 %did_moves.2137, metadata !3859, metadata !DIExpression()), !dbg !3869
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14, !dbg !3960
  ret i32 %did_moves.2137, !dbg !3961
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i1 @lru_maintainer_bumps() unnamed_addr #0 !dbg !3962 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.138, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.138, i64 0, i64 0), align 16
  %size = alloca i32, align 4
  %1 = bitcast i32* %size to i8*, !dbg !3969
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #14, !dbg !3969
  call void @llvm.dbg.value(metadata i8 0, metadata !3968, metadata !DIExpression()), !dbg !3970
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @bump_buf_lock) #12, !dbg !3971
  call void @llvm.dbg.value(metadata %struct._lru_bump_buf* undef, metadata !3964, metadata !DIExpression()), !dbg !3970
  %b.039 = load %struct._lru_bump_buf*, %struct._lru_bump_buf** @bump_buf_head, align 8, !dbg !3972, !tbaa !759
  call void @llvm.dbg.value(metadata i8 0, metadata !3968, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata %struct._lru_bump_buf* %b.039, metadata !3964, metadata !DIExpression()), !dbg !3970
  %cmp.not40 = icmp eq %struct._lru_bump_buf* %b.039, null, !dbg !3974
  br i1 %cmp.not40, label %for.end, label %for.body, !dbg !3976

for.body:                                         ; preds = %entry, %for.inc
  %b.042 = phi %struct._lru_bump_buf* [ %b.0, %for.inc ], [ %b.039, %entry ]
  %bumped.041 = phi i8 [ %bumped.1, %for.inc ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i8 %bumped.041, metadata !3968, metadata !DIExpression()), !dbg !3970
  %mutex = getelementptr inbounds %struct._lru_bump_buf, %struct._lru_bump_buf* %b.042, i64 0, i32 2, !dbg !3977
  %call1 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !3979
  %buf = getelementptr inbounds %struct._lru_bump_buf, %struct._lru_bump_buf* %b.042, i64 0, i32 3, !dbg !3980
  %2 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf, align 8, !dbg !3980, !tbaa !3091
  call void @llvm.dbg.value(metadata i32* %size, metadata !3966, metadata !DIExpression(DW_OP_deref)), !dbg !3970
  %call2 = call i8* @bipbuf_peek_all(%struct.bipbuf_t* noundef %2, i32* noundef nonnull %size) #12, !dbg !3981
  call void @llvm.dbg.value(metadata i8* %call2, metadata !3965, metadata !DIExpression()), !dbg !3970
  %call4 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !3982
  %cmp5 = icmp eq i8* %call2, null, !dbg !3983
  br i1 %cmp5, label %if.then, label %if.end, !dbg !3985

if.then:                                          ; preds = %for.body
  %gcov_ctr17 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.138, i64 0, i64 1), align 8, !dbg !3986
  %3 = add i64 %gcov_ctr17, 1, !dbg !3986
  store i64 %3, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.138, i64 0, i64 1), align 8, !dbg !3986
  br label %for.inc, !dbg !3986

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata i8* %call2, metadata !3965, metadata !DIExpression()), !dbg !3970
  %4 = load i32, i32* %size, align 4, !dbg !3988, !tbaa !625
  call void @llvm.dbg.value(metadata i32 %4, metadata !3966, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 %4, metadata !3967, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i8 1, metadata !3968, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i8* %call2, metadata !3965, metadata !DIExpression()), !dbg !3970
  %tobool.not36 = icmp eq i32 %4, 0, !dbg !3989
  br i1 %tobool.not36, label %while.end, label %while.body.preheader, !dbg !3989

while.body.preheader:                             ; preds = %if.end
  %5 = bitcast i8* %call2 to %struct.lru_bump_entry*, !dbg !3990
  call void @llvm.dbg.value(metadata %struct.lru_bump_entry* %5, metadata !3965, metadata !DIExpression()), !dbg !3970
  br label %while.body, !dbg !3989

while.body:                                       ; preds = %while.body.preheader, %while.body
  %todo.038 = phi i32 [ %sub, %while.body ], [ %4, %while.body.preheader ]
  %be.037 = phi %struct.lru_bump_entry* [ %incdec.ptr, %while.body ], [ %5, %while.body.preheader ]
  call void @llvm.dbg.value(metadata i32 %todo.038, metadata !3967, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata %struct.lru_bump_entry* %be.037, metadata !3965, metadata !DIExpression()), !dbg !3970
  %gcov_ctr18 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.138, i64 0, i64 2), align 16, !dbg !3991
  %6 = add i64 %gcov_ctr18, 1, !dbg !3991
  store i64 %6, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.138, i64 0, i64 2), align 16, !dbg !3991
  %hv = getelementptr inbounds %struct.lru_bump_entry, %struct.lru_bump_entry* %be.037, i64 0, i32 1, !dbg !3993
  %7 = load i32, i32* %hv, align 8, !dbg !3993, !tbaa !3103
  call void @item_lock(i32 noundef %7) #12, !dbg !3994
  %it = getelementptr inbounds %struct.lru_bump_entry, %struct.lru_bump_entry* %be.037, i64 0, i32 0, !dbg !3995
  %8 = load %struct._stritem*, %struct._stritem** %it, align 8, !dbg !3995, !tbaa !3099
  call void @do_item_update(%struct._stritem* noundef %8) #13, !dbg !3996
  %9 = load %struct._stritem*, %struct._stritem** %it, align 8, !dbg !3997, !tbaa !3099
  call void @do_item_remove(%struct._stritem* noundef %9) #13, !dbg !3998
  %10 = load i32, i32* %hv, align 8, !dbg !3999, !tbaa !3103
  call void @item_unlock(i32 noundef %10) #12, !dbg !4000
  %incdec.ptr = getelementptr inbounds %struct.lru_bump_entry, %struct.lru_bump_entry* %be.037, i64 1, !dbg !4001
  call void @llvm.dbg.value(metadata %struct.lru_bump_entry* %incdec.ptr, metadata !3965, metadata !DIExpression()), !dbg !3970
  %sub = add i32 %todo.038, -16, !dbg !4002
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3967, metadata !DIExpression()), !dbg !3970
  %tobool.not = icmp eq i32 %sub, 0, !dbg !3989
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !3989, !llvm.loop !4003

while.end:                                        ; preds = %while.body, %if.end
  %gcov_ctr19 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.138, i64 0, i64 3), align 8, !dbg !4005
  %11 = add i64 %gcov_ctr19, 1, !dbg !4005
  store i64 %11, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.138, i64 0, i64 3), align 8, !dbg !4005
  %call10 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !4006
  %12 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf, align 8, !dbg !4007, !tbaa !3091
  %13 = load i32, i32* %size, align 4, !dbg !4008, !tbaa !625
  call void @llvm.dbg.value(metadata i32 %13, metadata !3966, metadata !DIExpression()), !dbg !3970
  %call12 = call i8* @bipbuf_poll(%struct.bipbuf_t* noundef %12, i32 noundef %13) #12, !dbg !4009
  call void @llvm.dbg.value(metadata i8* %call12, metadata !3965, metadata !DIExpression()), !dbg !3970
  %call14 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #12, !dbg !4010
  br label %for.inc, !dbg !4011

for.inc:                                          ; preds = %while.end, %if.then
  %bumped.1 = phi i8 [ %bumped.041, %if.then ], [ 1, %while.end ], !dbg !3970
  call void @llvm.dbg.value(metadata i8 %bumped.1, metadata !3968, metadata !DIExpression()), !dbg !3970
  %next = getelementptr inbounds %struct._lru_bump_buf, %struct._lru_bump_buf* %b.042, i64 0, i32 1, !dbg !4012
  call void @llvm.dbg.value(metadata %struct._lru_bump_buf* undef, metadata !3964, metadata !DIExpression()), !dbg !3970
  %b.0 = load %struct._lru_bump_buf*, %struct._lru_bump_buf** %next, align 8, !dbg !3972, !tbaa !759
  call void @llvm.dbg.value(metadata %struct._lru_bump_buf* %b.0, metadata !3964, metadata !DIExpression()), !dbg !3970
  %cmp.not = icmp eq %struct._lru_bump_buf* %b.0, null, !dbg !3974
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !3976, !llvm.loop !4013

for.end:                                          ; preds = %for.inc, %entry
  %bumped.0.lcssa = phi i8 [ 0, %entry ], [ %bumped.1, %for.inc ], !dbg !4015
  %call15 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @bump_buf_lock) #12, !dbg !4016
  %14 = and i8 %bumped.0.lcssa, 1, !dbg !4017
  %tobool16 = icmp ne i8 %14, 0, !dbg !4017
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14, !dbg !4018
  ret i1 %tobool16, !dbg !4019
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lru_maintainer_crawler_check(%struct.crawler_expired_data* noundef %cdata, %struct._logger* noundef %l) unnamed_addr #0 !dbg !431 {
entry:
  %todo = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.crawler_expired_data* %cdata, metadata !460, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata %struct._logger* %l, metadata !461, metadata !DIExpression()), !dbg !4020
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %todo, i64 0, i64 0, !dbg !4021
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #14, !dbg !4021
  call void @llvm.dbg.declare(metadata [256 x i8]* %todo, metadata !463, metadata !DIExpression()), !dbg !4022
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 256) #12, !dbg !4023
  call void @llvm.dbg.value(metadata i8 0, metadata !465, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i32 0, metadata !466, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i32 1, metadata !462, metadata !DIExpression()), !dbg !4020
  %lock = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %cdata, i64 0, i32 0
  %cmp49 = icmp eq %struct._logger* %l, null
  br label %for.body, !dbg !4024

for.body:                                         ; preds = %entry, %if.end93
  %indvars.iv197 = phi i64 [ 1, %entry ], [ %indvars.iv.next198, %if.end93 ]
  %do_run.0190 = phi i8 [ 0, %entry ], [ %do_run.1, %if.end93 ]
  %tocrawl_limit.0189 = phi i32 [ 0, %entry ], [ %tocrawl_limit.2, %if.end93 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv197, metadata !462, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i8 %do_run.0190, metadata !465, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i32 %tocrawl_limit.0189, metadata !466, metadata !DIExpression()), !dbg !4020
  %gcov_ctr = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 0), align 16, !dbg !4025
  %1 = add i64 %gcov_ctr, 1, !dbg !4025
  store i64 %1, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 0), align 16, !dbg !4025
  call void @llvm.dbg.value(metadata !DIArgList(%struct.crawler_expired_data* %cdata, i64 %indvars.iv197), metadata !467, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 536, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 40, DW_OP_stack_value)), !dbg !4026
  %run_complete = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %cdata, i64 0, i32 1, i64 %indvars.iv197, i32 7, !dbg !4027
  %2 = load i8, i8* %run_complete, align 8, !dbg !4027, !tbaa !4028, !range !671
  %tobool.not = icmp eq i8 %2, 0, !dbg !4027
  br i1 %tobool.not, label %if.end68, label %if.then, !dbg !4030

if.then:                                          ; preds = %for.body
  %call1 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %lock) #12, !dbg !4031
  %seen = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %cdata, i64 0, i32 1, i64 %indvars.iv197, i32 4, !dbg !4032
  %3 = load i64, i64* %seen, align 8, !dbg !4032, !tbaa !4033
  %noexp = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %cdata, i64 0, i32 1, i64 %indvars.iv197, i32 2, !dbg !4034
  %4 = load i64, i64* %noexp, align 8, !dbg !4034, !tbaa !4035
  %sub = sub i64 %3, %4, !dbg !4036
  call void @llvm.dbg.value(metadata i64 %sub, metadata !476, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 0, metadata !477, metadata !DIExpression()), !dbg !4037
  %div = udiv i64 %sub, 100, !dbg !4038
  %add = add nuw nsw i64 %div, 1, !dbg !4039
  call void @llvm.dbg.value(metadata i64 %add, metadata !478, metadata !DIExpression()), !dbg !4037
  %5 = load volatile i32, i32* @current_time, align 4, !dbg !4040, !tbaa !625
  %end_time = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %cdata, i64 0, i32 1, i64 %indvars.iv197, i32 6, !dbg !4041
  %6 = load i32, i32* %end_time, align 4, !dbg !4041, !tbaa !4042
  %sub2 = sub i32 %5, %6, !dbg !4043
  call void @llvm.dbg.value(metadata i32 %sub2, metadata !479, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i32 0, metadata !475, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 0, metadata !477, metadata !DIExpression()), !dbg !4037
  br label %for.body5, !dbg !4044

for.body5:                                        ; preds = %for.inc.1, %if.then
  %indvars.iv = phi i64 [ 0, %if.then ], [ %indvars.iv.next.1, %for.inc.1 ]
  %available_reclaims.0188 = phi i64 [ 0, %if.then ], [ %add8.1, %for.inc.1 ]
  call void @llvm.dbg.value(metadata i64 %available_reclaims.0188, metadata !477, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !475, metadata !DIExpression()), !dbg !4037
  %arrayidx7 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %cdata, i64 0, i32 1, i64 %indvars.iv197, i32 0, i64 %indvars.iv, !dbg !4046
  %7 = load i64, i64* %arrayidx7, align 8, !dbg !4046, !tbaa !585
  %add8 = add i64 %7, %available_reclaims.0188, !dbg !4049
  call void @llvm.dbg.value(metadata i64 %add8, metadata !477, metadata !DIExpression()), !dbg !4037
  %cmp9 = icmp ugt i64 %add8, %add, !dbg !4050
  br i1 %cmp9, label %if.then10, label %for.inc, !dbg !4052

if.then10:                                        ; preds = %for.inc, %for.body5
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.body5 ], [ %indvars.iv.next, %for.inc ]
  %add8.lcssa = phi i64 [ %add8, %for.body5 ], [ %add8.1, %for.inc ], !dbg !4049
  %8 = trunc i64 %indvars.iv.lcssa to i32, !dbg !4053
  %arrayidx12 = getelementptr inbounds [256 x i32], [256 x i32]* @lru_maintainer_crawler_check.next_crawl_wait, i64 0, i64 %indvars.iv197, !dbg !4053
  %9 = load i32, i32* %arrayidx12, align 4, !dbg !4053, !tbaa !625
  %mul = mul nuw nsw i32 %8, 60, !dbg !4056
  %cmp13 = icmp ult i32 %9, %mul, !dbg !4057
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !4058

if.then14:                                        ; preds = %if.then10
  %gcov_ctr108 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 2), align 16, !dbg !4059
  %10 = add i64 %gcov_ctr108, 1, !dbg !4059
  store i64 %10, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 2), align 16, !dbg !4059
  %add17 = add i32 %9, 60, !dbg !4061
  store i32 %add17, i32* %arrayidx12, align 4, !dbg !4061, !tbaa !625
  br label %if.end32, !dbg !4062

if.else:                                          ; preds = %if.then10
  %cmp20 = icmp ugt i32 %9, 59, !dbg !4063
  br i1 %cmp20, label %if.then21, label %if.end, !dbg !4065

if.then21:                                        ; preds = %if.else
  %gcov_ctr109 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 3), align 8, !dbg !4066
  %11 = add i64 %gcov_ctr109, 1, !dbg !4066
  store i64 %11, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 3), align 8, !dbg !4066
  %sub24 = add i32 %9, -60, !dbg !4068
  store i32 %sub24, i32* %arrayidx12, align 4, !dbg !4068, !tbaa !625
  br label %if.end, !dbg !4069

if.end:                                           ; preds = %if.then21, %if.else
  %12 = phi i32 [ %sub24, %if.then21 ], [ %9, %if.else ]
  %gcov_ctr110 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 4), align 16
  %13 = add i64 %gcov_ctr110, 1
  store i64 %13, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 4), align 16
  br label %if.end32

for.inc:                                          ; preds = %for.body5
  %gcov_ctr111 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 5), align 8, !dbg !4070
  %14 = add i64 %gcov_ctr111, 1, !dbg !4070
  store i64 %14, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 5), align 8, !dbg !4070
  %indvars.iv.next = or i64 %indvars.iv, 1, !dbg !4070
  call void @llvm.dbg.value(metadata i64 %add8, metadata !477, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !475, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 %add8, metadata !477, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !475, metadata !DIExpression()), !dbg !4037
  %arrayidx7.1 = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %cdata, i64 0, i32 1, i64 %indvars.iv197, i32 0, i64 %indvars.iv.next, !dbg !4046
  %15 = load i64, i64* %arrayidx7.1, align 8, !dbg !4046, !tbaa !585
  %add8.1 = add i64 %15, %add8, !dbg !4049
  call void @llvm.dbg.value(metadata i64 %add8.1, metadata !477, metadata !DIExpression()), !dbg !4037
  %cmp9.1 = icmp ugt i64 %add8.1, %add, !dbg !4050
  br i1 %cmp9.1, label %if.then10, label %for.inc.1, !dbg !4052

for.inc.1:                                        ; preds = %for.inc
  %gcov_ctr111.1 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 5), align 8, !dbg !4070
  %16 = add i64 %gcov_ctr111.1, 1, !dbg !4070
  store i64 %16, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 5), align 8, !dbg !4070
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !4070
  call void @llvm.dbg.value(metadata i64 %add8.1, metadata !477, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !475, metadata !DIExpression()), !dbg !4037
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 60, !dbg !4071
  br i1 %exitcond.not.1, label %for.end, label %for.body5, !dbg !4044, !llvm.loop !4072

for.end:                                          ; preds = %for.inc.1
  call void @llvm.dbg.value(metadata i64 %add8.1, metadata !477, metadata !DIExpression()), !dbg !4037
  %cmp27 = icmp eq i64 %add8.1, 0, !dbg !4074
  br i1 %cmp27, label %if.then28, label %for.end.if.end32_crit_edge, !dbg !4076

for.end.if.end32_crit_edge:                       ; preds = %for.end
  %arrayidx34.phi.trans.insert = getelementptr inbounds [256 x i32], [256 x i32]* @lru_maintainer_crawler_check.next_crawl_wait, i64 0, i64 %indvars.iv197
  %.pre = load i32, i32* %arrayidx34.phi.trans.insert, align 4, !dbg !4077, !tbaa !625
  br label %if.end32, !dbg !4076

if.then28:                                        ; preds = %for.end
  %gcov_ctr112 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 6), align 16, !dbg !4079
  %17 = add i64 %gcov_ctr112, 1, !dbg !4079
  store i64 %17, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 6), align 16, !dbg !4079
  %arrayidx30 = getelementptr inbounds [256 x i32], [256 x i32]* @lru_maintainer_crawler_check.next_crawl_wait, i64 0, i64 %indvars.iv197, !dbg !4081
  %18 = load i32, i32* %arrayidx30, align 4, !dbg !4082, !tbaa !625
  %add31 = add i32 %18, 60, !dbg !4082
  store i32 %add31, i32* %arrayidx30, align 4, !dbg !4082, !tbaa !625
  br label %if.end32, !dbg !4083

if.end32:                                         ; preds = %for.end.if.end32_crit_edge, %if.end, %if.then14, %if.then28
  %add8207 = phi i64 [ %add8.1, %if.then28 ], [ %add8.1, %for.end.if.end32_crit_edge ], [ %add8.lcssa, %if.then14 ], [ %add8.lcssa, %if.end ]
  %19 = phi i32 [ %add31, %if.then28 ], [ %.pre, %for.end.if.end32_crit_edge ], [ %add17, %if.then14 ], [ %12, %if.end ], !dbg !4077
  %cmp35 = icmp ugt i32 %19, 3600, !dbg !4084
  br i1 %cmp35, label %if.then36, label %if.end39, !dbg !4085

if.then36:                                        ; preds = %if.end32
  %arrayidx34 = getelementptr inbounds [256 x i32], [256 x i32]* @lru_maintainer_crawler_check.next_crawl_wait, i64 0, i64 %indvars.iv197, !dbg !4077
  %gcov_ctr113 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 7), align 8, !dbg !4086
  %20 = add i64 %gcov_ctr113, 1, !dbg !4086
  store i64 %20, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 7), align 8, !dbg !4086
  store i32 3600, i32* %arrayidx34, align 4, !dbg !4088, !tbaa !625
  br label %if.end39, !dbg !4089

if.end39:                                         ; preds = %if.then36, %if.end32
  %21 = phi i32 [ 3600, %if.then36 ], [ %19, %if.end32 ], !dbg !4090
  %22 = load volatile i32, i32* @current_time, align 4, !dbg !4091, !tbaa !625
  %add42 = add i32 %22, 5, !dbg !4092
  %add43 = add i32 %add42, %21, !dbg !4093
  %arrayidx45 = getelementptr inbounds [256 x i32], [256 x i32]* @lru_maintainer_crawler_check.next_crawls, i64 0, i64 %indvars.iv197, !dbg !4094
  store i32 %add43, i32* %arrayidx45, align 4, !dbg !4095, !tbaa !625
  %23 = trunc i64 %indvars.iv197 to i32, !dbg !4096
  %and = lshr i32 %23, 6, !dbg !4096
  %24 = and i32 %and, 3, !dbg !4096
  switch i32 %24, label %if.end39.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb46
    i32 2, label %sw.bb47
    i32 3, label %sw.bb48
  ], !dbg !4096

sw.bb:                                            ; preds = %if.end39
  %gcov_ctr114 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 8), align 16, !dbg !4097
  %25 = add i64 %gcov_ctr114, 1, !dbg !4097
  store i64 %25, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 8), align 16, !dbg !4097
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0), metadata !472, metadata !DIExpression()), !dbg !4037
  br label %do.body, !dbg !4099

sw.bb46:                                          ; preds = %if.end39
  %gcov_ctr115 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 9), align 8, !dbg !4100
  %26 = add i64 %gcov_ctr115, 1, !dbg !4100
  store i64 %26, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 9), align 8, !dbg !4100
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), metadata !472, metadata !DIExpression()), !dbg !4037
  br label %do.body, !dbg !4101

sw.bb47:                                          ; preds = %if.end39
  %gcov_ctr116 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 10), align 16, !dbg !4102
  %27 = add i64 %gcov_ctr116, 1, !dbg !4102
  store i64 %27, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 10), align 16, !dbg !4102
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i64 0, i64 0), metadata !472, metadata !DIExpression()), !dbg !4037
  br label %do.body, !dbg !4103

sw.bb48:                                          ; preds = %if.end39
  %gcov_ctr117 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 11), align 8, !dbg !4104
  %28 = add i64 %gcov_ctr117, 1, !dbg !4104
  store i64 %28, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 11), align 8, !dbg !4104
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), metadata !472, metadata !DIExpression()), !dbg !4037
  br label %do.body, !dbg !4105

if.end39.unreachabledefault:                      ; preds = %if.end39
  unreachable

do.body:                                          ; preds = %sw.bb, %sw.bb46, %sw.bb47, %sw.bb48
  %lru_name.0 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), %sw.bb48 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i64 0, i64 0), %sw.bb47 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), %sw.bb46 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0), %sw.bb ], !dbg !4106
  call void @llvm.dbg.value(metadata i8* %lru_name.0, metadata !472, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata %struct._logger* %l, metadata !480, metadata !DIExpression()), !dbg !4107
  br i1 %cmp49, label %if.then50, label %if.end52, !dbg !4108

if.then50:                                        ; preds = %do.body
  %gcov_ctr118 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 12), align 16, !dbg !4109
  %29 = add i64 %gcov_ctr118, 1, !dbg !4109
  store i64 %29, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 12), align 16, !dbg !4109
  %30 = load i32, i32* @logger_key, align 4, !dbg !4109, !tbaa !625
  %call51 = call i8* @pthread_getspecific(i32 noundef %30) #12, !dbg !4109
  %31 = bitcast i8* %call51 to %struct._logger*, !dbg !4109
  call void @llvm.dbg.value(metadata %struct._logger* %31, metadata !480, metadata !DIExpression()), !dbg !4107
  br label %if.end52, !dbg !4109

if.end52:                                         ; preds = %if.then50, %do.body
  %myl.0 = phi %struct._logger* [ %31, %if.then50 ], [ %l, %do.body ], !dbg !4107
  call void @llvm.dbg.value(metadata %struct._logger* %myl.0, metadata !480, metadata !DIExpression()), !dbg !4107
  %eflags = getelementptr inbounds %struct._logger, %struct._logger* %myl.0, i64 0, i32 8, !dbg !4111
  %32 = load i16, i16* %eflags, align 4, !dbg !4111, !tbaa !971
  %33 = and i16 %32, 2, !dbg !4111
  %tobool54.not = icmp eq i16 %33, 0, !dbg !4111
  br i1 %tobool54.not, label %if.end64, label %if.then55, !dbg !4108

if.then55:                                        ; preds = %if.end52
  %gcov_ctr119 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 13), align 8, !dbg !4111
  %34 = add i64 %gcov_ctr119, 1, !dbg !4111
  store i64 %34, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 13), align 8, !dbg !4111
  %and56 = and i32 %23, 2147483455, !dbg !4111
  %35 = load i32, i32* %arrayidx45, align 4, !dbg !4111, !tbaa !625
  %36 = load volatile i32, i32* @current_time, align 4, !dbg !4111, !tbaa !625
  %sub59 = sub i32 %35, %36, !dbg !4111
  %37 = load i32, i32* %end_time, align 4, !dbg !4111, !tbaa !4042
  %start_time = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %cdata, i64 0, i32 1, i64 %indvars.iv197, i32 5, !dbg !4111
  %38 = load i32, i32* %start_time, align 8, !dbg !4111, !tbaa !4113
  %sub61 = sub i32 %37, %38, !dbg !4111
  %39 = load i64, i64* %seen, align 8, !dbg !4111, !tbaa !4033
  %reclaimed = getelementptr inbounds %struct.crawler_expired_data, %struct.crawler_expired_data* %cdata, i64 0, i32 1, i64 %indvars.iv197, i32 3, !dbg !4111
  %40 = load i64, i64* %reclaimed, align 8, !dbg !4111, !tbaa !4114
  %call63 = call i32 (%struct._logger*, i32, i8*, ...) @logger_log(%struct._logger* noundef nonnull %myl.0, i32 noundef 4, i8* noundef null, i32 noundef %and56, i8* noundef %lru_name.0, i64 noundef %add, i64 noundef %add8207, i32 noundef %sub2, i32 noundef %sub59, i32 noundef %sub61, i64 noundef %39, i64 noundef %40) #12, !dbg !4111
  br label %if.end64, !dbg !4111

if.end64:                                         ; preds = %if.then55, %if.end52
  %gcov_ctr120 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 14), align 16, !dbg !4115
  %41 = add i64 %gcov_ctr120, 1, !dbg !4115
  store i64 %41, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 14), align 16, !dbg !4115
  store i8 0, i8* %run_complete, align 8, !dbg !4116, !tbaa !4028
  %call67 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %lock) #12, !dbg !4117
  br label %if.end68, !dbg !4118

if.end68:                                         ; preds = %if.end64, %for.body
  %42 = load volatile i32, i32* @current_time, align 4, !dbg !4119, !tbaa !625
  %arrayidx70 = getelementptr inbounds [256 x i32], [256 x i32]* @lru_maintainer_crawler_check.next_crawls, i64 0, i64 %indvars.iv197, !dbg !4121
  %43 = load i32, i32* %arrayidx70, align 4, !dbg !4121, !tbaa !625
  %cmp71 = icmp ugt i32 %42, %43, !dbg !4122
  br i1 %cmp71, label %if.then73, label %if.end93, !dbg !4123

if.then73:                                        ; preds = %if.end68
  %arrayidx75 = getelementptr inbounds [256 x %union.pthread_mutex_t], [256 x %union.pthread_mutex_t]* @lru_locks, i64 0, i64 %indvars.iv197, !dbg !4124
  %call76 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %arrayidx75) #12, !dbg !4126
  %arrayidx78 = getelementptr inbounds [256 x i32], [256 x i32]* @sizes, i64 0, i64 %indvars.iv197, !dbg !4127
  %44 = load i32, i32* %arrayidx78, align 4, !dbg !4127, !tbaa !625
  %cmp79 = icmp ugt i32 %44, %tocrawl_limit.0189, !dbg !4129
  br i1 %cmp79, label %if.then81, label %if.end84, !dbg !4130

if.then81:                                        ; preds = %if.then73
  %gcov_ctr121 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 15), align 8, !dbg !4131
  %45 = add i64 %gcov_ctr121, 1, !dbg !4131
  store i64 %45, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 15), align 8, !dbg !4131
  call void @llvm.dbg.value(metadata i32 %44, metadata !466, metadata !DIExpression()), !dbg !4020
  br label %if.end84, !dbg !4133

if.end84:                                         ; preds = %if.then81, %if.then73
  %tocrawl_limit.1 = phi i32 [ %44, %if.then81 ], [ %tocrawl_limit.0189, %if.then73 ], !dbg !4020
  call void @llvm.dbg.value(metadata i32 %tocrawl_limit.1, metadata !466, metadata !DIExpression()), !dbg !4020
  %gcov_ctr122 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 16), align 16, !dbg !4134
  %46 = add i64 %gcov_ctr122, 1, !dbg !4134
  store i64 %46, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 16), align 16, !dbg !4134
  %call87 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %arrayidx75) #12, !dbg !4135
  %arrayidx89 = getelementptr inbounds [256 x i8], [256 x i8]* %todo, i64 0, i64 %indvars.iv197, !dbg !4136
  store i8 1, i8* %arrayidx89, align 1, !dbg !4137, !tbaa !617
  call void @llvm.dbg.value(metadata i8 1, metadata !465, metadata !DIExpression()), !dbg !4020
  %47 = load volatile i32, i32* @current_time, align 4, !dbg !4138, !tbaa !625
  %add90 = add i32 %47, 5, !dbg !4139
  store i32 %add90, i32* %arrayidx70, align 4, !dbg !4140, !tbaa !625
  br label %if.end93, !dbg !4141

if.end93:                                         ; preds = %if.end84, %if.end68
  %tocrawl_limit.2 = phi i32 [ %tocrawl_limit.1, %if.end84 ], [ %tocrawl_limit.0189, %if.end68 ], !dbg !4020
  %do_run.1 = phi i8 [ 1, %if.end84 ], [ %do_run.0190, %if.end68 ], !dbg !4020
  call void @llvm.dbg.value(metadata i8 %do_run.1, metadata !465, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i32 %tocrawl_limit.2, metadata !466, metadata !DIExpression()), !dbg !4020
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1, !dbg !4142
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next198, metadata !462, metadata !DIExpression()), !dbg !4020
  %exitcond199.not = icmp eq i64 %indvars.iv.next198, 256, !dbg !4143
  br i1 %exitcond199.not, label %for.end96, label %for.body, !dbg !4024, !llvm.loop !4144

for.end96:                                        ; preds = %if.end93
  %gcov_ctr107 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 1), align 8, !dbg !4146
  %48 = add i64 %gcov_ctr107, 1, !dbg !4146
  store i64 %48, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 1), align 8, !dbg !4146
  %49 = and i8 %do_run.1, 1, !dbg !4146
  %tobool97.not = icmp eq i8 %49, 0, !dbg !4146
  br i1 %tobool97.not, label %if.end106, label %if.then98, !dbg !4148

if.then98:                                        ; preds = %for.end96
  %50 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 42), align 4, !dbg !4149, !tbaa !4152
  %tobool99.not = icmp eq i32 %50, 0, !dbg !4153
  br i1 %tobool99.not, label %if.end103, label %land.lhs.true, !dbg !4154

land.lhs.true:                                    ; preds = %if.then98
  %gcov_ctr123 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 17), align 8, !dbg !4155
  %51 = add i64 %gcov_ctr123, 1, !dbg !4155
  store i64 %51, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 17), align 8, !dbg !4155
  %cmp100 = icmp ult i32 %50, %tocrawl_limit.2, !dbg !4156
  br i1 %cmp100, label %if.then102, label %if.end103, !dbg !4157

if.then102:                                       ; preds = %land.lhs.true
  %gcov_ctr124 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 18), align 16, !dbg !4158
  %52 = add i64 %gcov_ctr124, 1, !dbg !4158
  store i64 %52, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 18), align 16, !dbg !4158
  call void @llvm.dbg.value(metadata i32 %50, metadata !466, metadata !DIExpression()), !dbg !4020
  br label %if.end103, !dbg !4160

if.end103:                                        ; preds = %if.then102, %land.lhs.true, %if.then98
  %tocrawl_limit.3 = phi i32 [ %50, %if.then102 ], [ %tocrawl_limit.2, %land.lhs.true ], [ %tocrawl_limit.2, %if.then98 ], !dbg !4020
  call void @llvm.dbg.value(metadata i32 %tocrawl_limit.3, metadata !466, metadata !DIExpression()), !dbg !4020
  %gcov_ctr125 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 19), align 8, !dbg !4161
  %53 = add i64 %gcov_ctr125, 1, !dbg !4161
  store i64 %53, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @__llvm_gcov_ctr.139, i64 0, i64 19), align 8, !dbg !4161
  %54 = bitcast %struct.crawler_expired_data* %cdata to i8*, !dbg !4162
  %call105 = call i32 @lru_crawler_start(i8* noundef nonnull %0, i32 noundef %tocrawl_limit.3, i32 noundef 0, i8* noundef %54, i8* noundef null, i32 noundef 0) #12, !dbg !4163
  br label %if.end106, !dbg !4164

if.end106:                                        ; preds = %if.end103, %for.end96
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #14, !dbg !4165
  ret void, !dbg !4165
}

declare !dbg !4166 dso_local i32 @slabs_available_chunks(i32 noundef, i8* noundef, i32* noundef) local_unnamed_addr #6

declare !dbg !4170 dso_local i8* @bipbuf_peek_all(%struct.bipbuf_t* noundef, i32* noundef) local_unnamed_addr #6

declare !dbg !4175 dso_local void @item_lock(i32 noundef) local_unnamed_addr #6

declare !dbg !4178 dso_local void @item_unlock(i32 noundef) local_unnamed_addr #6

declare !dbg !4179 dso_local i8* @bipbuf_poll(%struct.bipbuf_t* noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !4182 dso_local i32 @lru_crawler_start(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #9 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @0, i64 0, i64 0), i32 875575338, i32 -1440257473) #14
  br label %counter.loop.header

counter.loop.header:                              ; preds = %entry, %counter.loop.header
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %counter.loop.header ]
  %0 = getelementptr inbounds [55 x %emit_function_args_ty], [55 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 0
  %ident = load i32, i32* %0, align 4
  %1 = getelementptr inbounds [55 x %emit_function_args_ty], [55 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 1
  %func_checkssum = load i32, i32* %1, align 4
  %2 = getelementptr inbounds [55 x %emit_function_args_ty], [55 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 2
  %cfg_checksum = load i32, i32* %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #14
  %3 = getelementptr inbounds [55 x %emit_arcs_args_ty], [55 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 0
  %num_counters = load i32, i32* %3, align 16
  %4 = getelementptr inbounds [55 x %emit_arcs_args_ty], [55 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 1
  %counters = load i64*, i64** %4, align 8
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, i64* %counters) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 55
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
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr to i8*), i8 0, i64 16, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.87, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.88, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) bitcast ([8 x i64]* @__llvm_gcov_ctr.89 to i8*), i8 0, i64 64, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.90, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(56) bitcast ([7 x i64]* @__llvm_gcov_ctr.91 to i8*), i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(328) bitcast ([41 x i64]* @__llvm_gcov_ctr.92 to i8*), i8 0, i64 328, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.93 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) bitcast ([16 x i64]* @__llvm_gcov_ctr.94 to i8*), i8 0, i64 128, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.95 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) bitcast ([6 x i64]* @__llvm_gcov_ctr.96 to i8*), i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.97 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.98 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) bitcast ([6 x i64]* @__llvm_gcov_ctr.99 to i8*), i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.100 to i8*), i8 0, i64 32, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.101, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.102 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) bitcast ([6 x i64]* @__llvm_gcov_ctr.103 to i8*), i8 0, i64 48, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.104, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.105 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.106 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x i64]* @__llvm_gcov_ctr.107 to i8*), i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(72) bitcast ([9 x i64]* @__llvm_gcov_ctr.108 to i8*), i8 0, i64 72, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.109, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.110 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x i64]* @__llvm_gcov_ctr.111 to i8*), i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(56) bitcast ([7 x i64]* @__llvm_gcov_ctr.112 to i8*), i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.113 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.114 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(168) bitcast ([21 x i64]* @__llvm_gcov_ctr.115 to i8*), i8 0, i64 168, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.116 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.117 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.118 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.119 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.120 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(144) bitcast ([18 x i64]* @__llvm_gcov_ctr.121 to i8*), i8 0, i64 144, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) bitcast ([6 x i64]* @__llvm_gcov_ctr.122 to i8*), i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.123 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.124 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(72) bitcast ([9 x i64]* @__llvm_gcov_ctr.125 to i8*), i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.126 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.127 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.128 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.129 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(264) bitcast ([33 x i64]* @__llvm_gcov_ctr.130 to i8*), i8 0, i64 264, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.132, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.133, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x i64]* @__llvm_gcov_ctr.134 to i8*), i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(72) bitcast ([9 x i64]* @__llvm_gcov_ctr.135 to i8*), i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(136) bitcast ([17 x i64]* @__llvm_gcov_ctr.136 to i8*), i8 0, i64 136, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(104) bitcast ([13 x i64]* @__llvm_gcov_ctr.137 to i8*), i8 0, i64 104, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.138 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(160) bitcast ([20 x i64]* @__llvm_gcov_ctr.139 to i8*), i8 0, i64 160, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #9 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #14
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { noinline nounwind uwtable }
attributes #10 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!512, !513, !514, !515}
!llvm.gcov = !{!516}
!llvm.ident = !{!517}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "itemstats", scope: !2, file: !3, line: 57, type: !487, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !89, globals: !265, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "items.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "cbf5cfd7ec283f5f0459720c23754530")
!4 = !{!5, !23, !37, !55, !60, !65, !71, !76, !84}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "conn_states", file: !6, line: 199, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./memcached.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "9260b30e1b6ff2e5471cc4f8f6971051")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!9 = !DIEnumerator(name: "conn_listening", value: 0)
!10 = !DIEnumerator(name: "conn_new_cmd", value: 1)
!11 = !DIEnumerator(name: "conn_waiting", value: 2)
!12 = !DIEnumerator(name: "conn_read", value: 3)
!13 = !DIEnumerator(name: "conn_parse_cmd", value: 4)
!14 = !DIEnumerator(name: "conn_write", value: 5)
!15 = !DIEnumerator(name: "conn_nread", value: 6)
!16 = !DIEnumerator(name: "conn_swallow", value: 7)
!17 = !DIEnumerator(name: "conn_closing", value: 8)
!18 = !DIEnumerator(name: "conn_mwrite", value: 9)
!19 = !DIEnumerator(name: "conn_closed", value: 10)
!20 = !DIEnumerator(name: "conn_watch", value: 11)
!21 = !DIEnumerator(name: "conn_io_queue", value: 12)
!22 = !DIEnumerator(name: "conn_max_state", value: 13)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bin_substates", file: !6, line: 216, baseType: !7, size: 32, elements: !24)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!25 = !DIEnumerator(name: "bin_no_state", value: 0)
!26 = !DIEnumerator(name: "bin_reading_set_header", value: 1)
!27 = !DIEnumerator(name: "bin_reading_cas_header", value: 2)
!28 = !DIEnumerator(name: "bin_read_set_value", value: 3)
!29 = !DIEnumerator(name: "bin_reading_get_key", value: 4)
!30 = !DIEnumerator(name: "bin_reading_stat", value: 5)
!31 = !DIEnumerator(name: "bin_reading_del_header", value: 6)
!32 = !DIEnumerator(name: "bin_reading_incr_header", value: 7)
!33 = !DIEnumerator(name: "bin_read_flush_exptime", value: 8)
!34 = !DIEnumerator(name: "bin_reading_sasl_auth", value: 9)
!35 = !DIEnumerator(name: "bin_reading_sasl_auth_data", value: 10)
!36 = !DIEnumerator(name: "bin_reading_touch_key", value: 11)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_entry_type", file: !38, line: 16, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./logger.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "920aeded0afd45e7ff5c610f1349e8a7")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!40 = !DIEnumerator(name: "LOGGER_ASCII_CMD", value: 0)
!41 = !DIEnumerator(name: "LOGGER_EVICTION", value: 1)
!42 = !DIEnumerator(name: "LOGGER_ITEM_GET", value: 2)
!43 = !DIEnumerator(name: "LOGGER_ITEM_STORE", value: 3)
!44 = !DIEnumerator(name: "LOGGER_CRAWLER_STATUS", value: 4)
!45 = !DIEnumerator(name: "LOGGER_SLAB_MOVE", value: 5)
!46 = !DIEnumerator(name: "LOGGER_CONNECTION_NEW", value: 6)
!47 = !DIEnumerator(name: "LOGGER_CONNECTION_CLOSE", value: 7)
!48 = !DIEnumerator(name: "LOGGER_EXTSTORE_WRITE", value: 8)
!49 = !DIEnumerator(name: "LOGGER_COMPACT_START", value: 9)
!50 = !DIEnumerator(name: "LOGGER_COMPACT_ABORT", value: 10)
!51 = !DIEnumerator(name: "LOGGER_COMPACT_READ_START", value: 11)
!52 = !DIEnumerator(name: "LOGGER_COMPACT_READ_END", value: 12)
!53 = !DIEnumerator(name: "LOGGER_COMPACT_END", value: 13)
!54 = !DIEnumerator(name: "LOGGER_COMPACT_FRAGINFO", value: 14)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol", file: !6, line: 231, baseType: !7, size: 32, elements: !56)
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "ascii_prot", value: 3)
!58 = !DIEnumerator(name: "binary_prot", value: 4)
!59 = !DIEnumerator(name: "negotiating_prot", value: 5)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "network_transport", file: !6, line: 240, baseType: !7, size: 32, elements: !61)
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "local_transport", value: 0)
!63 = !DIEnumerator(name: "tcp_transport", value: 1)
!64 = !DIEnumerator(name: "udp_transport", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "close_reasons", file: !6, line: 259, baseType: !7, size: 32, elements: !66)
!66 = !{!67, !68, !69, !70}
!67 = !DIEnumerator(name: "ERROR_CLOSE", value: 0)
!68 = !DIEnumerator(name: "NORMAL_CLOSE", value: 1)
!69 = !DIEnumerator(name: "IDLE_TIMEOUT_CLOSE", value: 2)
!70 = !DIEnumerator(name: "SHUTDOWN_CLOSE", value: 3)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "logger_ret_type", file: !38, line: 44, baseType: !7, size: 32, elements: !72)
!72 = !{!73, !74, !75}
!73 = !DIEnumerator(name: "LOGGER_RET_OK", value: 0)
!74 = !DIEnumerator(name: "LOGGER_RET_NOSPACE", value: 1)
!75 = !DIEnumerator(name: "LOGGER_RET_ERR", value: 2)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reassign_result_type", file: !77, line: 55, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./slabs.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "28867aba1f41c79140864d76faedcb32")
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "REASSIGN_OK", value: 0)
!80 = !DIEnumerator(name: "REASSIGN_RUNNING", value: 1)
!81 = !DIEnumerator(name: "REASSIGN_BADCLASS", value: 2)
!82 = !DIEnumerator(name: "REASSIGN_NOSPARE", value: 3)
!83 = !DIEnumerator(name: "REASSIGN_SRC_DST_SAME", value: 4)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "crawler_run_type", file: !6, line: 601, baseType: !7, size: 32, elements: !85)
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "CRAWLER_AUTOEXPIRE", value: 0)
!87 = !DIEnumerator(name: "CRAWLER_EXPIRED", value: 1)
!88 = !DIEnumerator(name: "CRAWLER_METADUMP", value: 2)
!89 = !{!90, !95, !96, !143, !144, !146, !147, !255, !7}
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !91, line: 27, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !93, line: 45, baseType: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!94 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "item_chunk", file: !6, line: 635, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_strchunk", file: !6, line: 623, size: 384, elements: !99)
!99 = !{!100, !102, !103, !134, !135, !136, !137, !138, !139, !140, !141}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !6, line: 624, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !98, file: !6, line: 625, baseType: !101, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !98, file: !6, line: 626, baseType: !104, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stritem", file: !6, line: 575, size: 384, elements: !106)
!106 = !{!107, !108, !109, !110, !112, !113, !115, !117, !120, !124, !125}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !6, line: 577, baseType: !104, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !105, file: !6, line: 578, baseType: !104, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "h_next", scope: !105, file: !6, line: 580, baseType: !104, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !105, file: !6, line: 581, baseType: !111, size: 32, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_time_t", file: !38, line: 14, baseType: !7)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "exptime", scope: !105, file: !6, line: 582, baseType: !111, size: 32, offset: 224)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !105, file: !6, line: 583, baseType: !114, size: 32, offset: 256)
!114 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !105, file: !6, line: 584, baseType: !116, size: 16, offset: 288)
!116 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !105, file: !6, line: 585, baseType: !118, size: 16, offset: 304)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !116)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_clsid", scope: !105, file: !6, line: 586, baseType: !121, size: 8, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !91, line: 24, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !93, line: 38, baseType: !123)
!123 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "nkey", scope: !105, file: !6, line: 587, baseType: !121, size: 8, offset: 328)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !105, file: !6, line: 593, baseType: !126, offset: 384)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, elements: !132)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !6, line: 590, size: 64, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !127, file: !6, line: 591, baseType: !90, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !127, file: !6, line: 592, baseType: !131, size: 8)
!131 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!132 = !{!133}
!133 = !DISubrange(count: -1)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !98, file: !6, line: 627, baseType: !114, size: 32, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !98, file: !6, line: 628, baseType: !114, size: 32, offset: 224)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !98, file: !6, line: 629, baseType: !114, size: 32, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !98, file: !6, line: 630, baseType: !116, size: 16, offset: 288)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !98, file: !6, line: 631, baseType: !118, size: 16, offset: 304)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_clsid", scope: !98, file: !6, line: 632, baseType: !121, size: 8, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "orig_clsid", scope: !98, file: !6, line: 633, baseType: !121, size: 8, offset: 328)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !98, file: !6, line: 634, baseType: !142, offset: 336)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, elements: !132)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !145, line: 46, baseType: !94)
!145 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!146 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger", file: !38, line: 171, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_logger", file: !38, line: 159, size: 832, elements: !150)
!150 = !{!151, !153, !154, !185, !186, !187, !188, !189, !190, !191, !204}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !149, file: !38, line: 160, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !38, line: 161, baseType: !152, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !149, file: !38, line: 162, baseType: !155, size: 320, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !156, line: 72, baseType: !157)
!156 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !156, line: 67, size: 320, elements: !158)
!158 = !{!159, !179, !183}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !157, file: !156, line: 69, baseType: !160, size: 320)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !161, line: 22, size: 320, elements: !162)
!161 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!162 = !{!163, !164, !165, !166, !167, !168, !170, !171}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !160, file: !161, line: 24, baseType: !114, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !160, file: !161, line: 25, baseType: !7, size: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !160, file: !161, line: 26, baseType: !114, size: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !160, file: !161, line: 28, baseType: !7, size: 32, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !160, file: !161, line: 32, baseType: !114, size: 32, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !160, file: !161, line: 34, baseType: !169, size: 16, offset: 160)
!169 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !160, file: !161, line: 35, baseType: !169, size: 16, offset: 176)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !160, file: !161, line: 36, baseType: !172, size: 128, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !173, line: 53, baseType: !174)
!173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !173, line: 49, size: 128, elements: !175)
!175 = !{!176, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !174, file: !173, line: 51, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !174, file: !173, line: 52, baseType: !177, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !157, file: !156, line: 70, baseType: !180, size: 320)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 320, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 40)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !157, file: !156, line: 71, baseType: !184, size: 64)
!184 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !149, file: !38, line: 163, baseType: !90, size: 64, offset: 448)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "dropped", scope: !149, file: !38, line: 164, baseType: !90, size: 64, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !149, file: !38, line: 165, baseType: !90, size: 64, offset: 576)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "fetcher_ratio", scope: !149, file: !38, line: 166, baseType: !118, size: 16, offset: 640)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "mutation_ratio", scope: !149, file: !38, line: 167, baseType: !118, size: 16, offset: 656)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !149, file: !38, line: 168, baseType: !118, size: 16, offset: 672)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !149, file: !38, line: 169, baseType: !192, size: 64, offset: 704)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "bipbuf_t", file: !194, line: 18, baseType: !195)
!194 = !DIFile(filename: "./bipbuffer.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "99606bcb8393045e6bc9eef40115066f")
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !194, line: 4, size: 192, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !195, file: !194, line: 6, baseType: !94, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "a_start", scope: !195, file: !194, line: 9, baseType: !7, size: 32, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "a_end", scope: !195, file: !194, line: 9, baseType: !7, size: 32, offset: 96)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "b_end", scope: !195, file: !194, line: 12, baseType: !7, size: 32, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "b_inuse", scope: !195, file: !194, line: 15, baseType: !114, size: 32, offset: 160)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !195, file: !194, line: 17, baseType: !203, offset: 192)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, elements: !132)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "entry_map", scope: !149, file: !38, line: 170, baseType: !205, size: 64, offset: 768)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_details", file: !38, line: 57, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_entry_details", file: !38, line: 62, size: 256, elements: !209)
!209 = !{!210, !211, !212, !249, !254}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "reqlen", scope: !208, file: !38, line: 63, baseType: !114, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !208, file: !38, line: 64, baseType: !118, size: 16, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "log_cb", scope: !208, file: !38, line: 65, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_log_cb", file: !38, line: 59, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !217, !205, !239, !241}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "logentry", file: !38, line: 56, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_logentry", file: !38, line: 135, size: 320, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !233, !234}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !219, file: !38, line: 136, baseType: !37, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !219, file: !38, line: 137, baseType: !121, size: 8, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !219, file: !38, line: 138, baseType: !118, size: 16, offset: 48)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !219, file: !38, line: 139, baseType: !90, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !219, file: !38, line: 140, baseType: !226, size: 128, offset: 128)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !227, line: 8, size: 128, elements: !228)
!227 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!228 = !{!229, !231}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !226, file: !227, line: 10, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !93, line: 160, baseType: !184)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !226, file: !227, line: 11, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !93, line: 162, baseType: !184)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !219, file: !38, line: 141, baseType: !114, size: 32, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !219, file: !38, line: 144, baseType: !235, offset: 288)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, elements: !132)
!236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !219, file: !38, line: 142, size: 8, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !236, file: !38, line: 143, baseType: !131, size: 8)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !243)
!243 = !{!244, !246, !247, !248}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !242, file: !245, line: 719, baseType: !7, size: 32)
!245 = !DIFile(filename: "items.c", directory: "/home/xuheng/blackbox/llvm-test/memcached")
!246 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !242, file: !245, line: 719, baseType: !7, size: 32, offset: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !242, file: !245, line: 719, baseType: !95, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !242, file: !245, line: 719, baseType: !95, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parse_cb", scope: !208, file: !38, line: 66, baseType: !250, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_parse_cb", file: !38, line: 60, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!114, !217, !143}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !208, file: !38, line: 67, baseType: !143, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "lru_bump_entry", file: !3, line: 99, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 96, size: 128, elements: !258)
!258 = !{!259, !262}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !257, file: !3, line: 97, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "item", file: !6, line: 598, baseType: !105)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "hv", scope: !257, file: !3, line: 98, baseType: !263, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !91, line: 26, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !93, line: 42, baseType: !7)
!265 = !{!266, !372, !374, !379, !0, !381, !384, !387, !390, !392, !394, !399, !401, !404, !406, !408, !410, !422, !424, !426, !429, !483, !485}
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "slab_automove_default", scope: !2, file: !3, line: 1568, type: !268, isLocal: false, isDefinition: true)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_automove_reg_t", file: !269, line: 17, baseType: !270)
!269 = !DIFile(filename: "./slab_automove.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "6e7f28420ac5e26e1c021dee6706e0c0")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 13, size: 192, elements: !271)
!271 = !{!272, !361, !366}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !270, file: !269, line: 14, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_automove_init_func", file: !269, line: 9, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!95, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "settings", file: !6, line: 436, size: 2752, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !294, !295, !296, !297, !298, !299, !300, !302, !303, !304, !305, !306, !307, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "maxbytes", scope: !278, file: !6, line: 437, baseType: !144, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "maxconns", scope: !278, file: !6, line: 438, baseType: !114, size: 32, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !278, file: !6, line: 439, baseType: !114, size: 32, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "udpport", scope: !278, file: !6, line: 440, baseType: !114, size: 32, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !278, file: !6, line: 441, baseType: !143, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !278, file: !6, line: 442, baseType: !114, size: 32, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "oldest_live", scope: !278, file: !6, line: 443, baseType: !111, size: 32, offset: 288)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "oldest_cas", scope: !278, file: !6, line: 444, baseType: !90, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "evict_to_free", scope: !278, file: !6, line: 445, baseType: !114, size: 32, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "socketpath", scope: !278, file: !6, line: 446, baseType: !143, size: 64, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "auth_file", scope: !278, file: !6, line: 447, baseType: !143, size: 64, offset: 512)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !278, file: !6, line: 448, baseType: !114, size: 32, offset: 576)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "factor", scope: !278, file: !6, line: 449, baseType: !293, size: 64, offset: 640)
!293 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !278, file: !6, line: 450, baseType: !114, size: 32, offset: 704)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "num_threads", scope: !278, file: !6, line: 451, baseType: !114, size: 32, offset: 736)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "num_threads_per_udp", scope: !278, file: !6, line: 452, baseType: !114, size: 32, offset: 768)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_delimiter", scope: !278, file: !6, line: 453, baseType: !131, size: 8, offset: 800)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "detail_enabled", scope: !278, file: !6, line: 454, baseType: !114, size: 32, offset: 832)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "reqs_per_event", scope: !278, file: !6, line: 455, baseType: !114, size: 32, offset: 864)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "use_cas", scope: !278, file: !6, line: 457, baseType: !301, size: 8, offset: 896)
!301 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "binding_protocol", scope: !278, file: !6, line: 458, baseType: !55, size: 32, offset: 928)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !278, file: !6, line: 459, baseType: !114, size: 32, offset: 960)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "item_size_max", scope: !278, file: !6, line: 460, baseType: !114, size: 32, offset: 992)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "slab_chunk_size_max", scope: !278, file: !6, line: 461, baseType: !114, size: 32, offset: 1024)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "slab_page_size", scope: !278, file: !6, line: 462, baseType: !114, size: 32, offset: 1056)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "sig_hup", scope: !278, file: !6, line: 463, baseType: !308, size: 32, offset: 1088)
!308 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "sig_atomic_t", file: !310, line: 8, baseType: !311)
!310 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sig_atomic_t.h", directory: "", checksumkind: CSK_MD5, checksum: "d9236f7e3e7f10f53aa9d4cd97f503cf")
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sig_atomic_t", file: !93, line: 214, baseType: !114)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sasl", scope: !278, file: !6, line: 464, baseType: !301, size: 8, offset: 1120)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "maxconns_fast", scope: !278, file: !6, line: 465, baseType: !301, size: 8, offset: 1128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "lru_crawler", scope: !278, file: !6, line: 466, baseType: !301, size: 8, offset: 1136)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "lru_maintainer_thread", scope: !278, file: !6, line: 467, baseType: !301, size: 8, offset: 1144)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "lru_segmented", scope: !278, file: !6, line: 468, baseType: !301, size: 8, offset: 1152)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "slab_reassign", scope: !278, file: !6, line: 469, baseType: !301, size: 8, offset: 1160)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "slab_automove", scope: !278, file: !6, line: 470, baseType: !114, size: 32, offset: 1184)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "slab_automove_ratio", scope: !278, file: !6, line: 471, baseType: !293, size: 64, offset: 1216)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "slab_automove_window", scope: !278, file: !6, line: 472, baseType: !7, size: 32, offset: 1280)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "hashpower_init", scope: !278, file: !6, line: 473, baseType: !114, size: 32, offset: 1312)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_command", scope: !278, file: !6, line: 474, baseType: !301, size: 8, offset: 1344)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tail_repair_time", scope: !278, file: !6, line: 475, baseType: !114, size: 32, offset: 1376)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flush_enabled", scope: !278, file: !6, line: 476, baseType: !301, size: 8, offset: 1408)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "dump_enabled", scope: !278, file: !6, line: 477, baseType: !301, size: 8, offset: 1416)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algorithm", scope: !278, file: !6, line: 478, baseType: !143, size: 64, offset: 1472)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "lru_crawler_sleep", scope: !278, file: !6, line: 479, baseType: !114, size: 32, offset: 1536)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "lru_crawler_tocrawl", scope: !278, file: !6, line: 480, baseType: !263, size: 32, offset: 1568)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "hot_lru_pct", scope: !278, file: !6, line: 481, baseType: !114, size: 32, offset: 1600)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "warm_lru_pct", scope: !278, file: !6, line: 482, baseType: !114, size: 32, offset: 1632)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "hot_max_factor", scope: !278, file: !6, line: 483, baseType: !293, size: 64, offset: 1664)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "warm_max_factor", scope: !278, file: !6, line: 484, baseType: !293, size: 64, offset: 1728)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "crawls_persleep", scope: !278, file: !6, line: 485, baseType: !114, size: 32, offset: 1792)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "temp_lru", scope: !278, file: !6, line: 486, baseType: !301, size: 8, offset: 1824)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "temporary_ttl", scope: !278, file: !6, line: 487, baseType: !263, size: 32, offset: 1856)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "idle_timeout", scope: !278, file: !6, line: 488, baseType: !114, size: 32, offset: 1888)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "logger_watcher_buf_size", scope: !278, file: !6, line: 489, baseType: !7, size: 32, offset: 1920)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "logger_buf_size", scope: !278, file: !6, line: 490, baseType: !7, size: 32, offset: 1952)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_mem_limit", scope: !278, file: !6, line: 491, baseType: !7, size: 32, offset: 1984)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "drop_privileges", scope: !278, file: !6, line: 492, baseType: !301, size: 8, offset: 2016)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "watch_enabled", scope: !278, file: !6, line: 493, baseType: !301, size: 8, offset: 2024)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "relaxed_privileges", scope: !278, file: !6, line: 494, baseType: !301, size: 8, offset: 2032)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "meta_response_old", scope: !278, file: !6, line: 495, baseType: !301, size: 8, offset: 2040)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ext_io_threadcount", scope: !278, file: !6, line: 497, baseType: !7, size: 32, offset: 2048)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ext_page_size", scope: !278, file: !6, line: 498, baseType: !7, size: 32, offset: 2080)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ext_item_size", scope: !278, file: !6, line: 499, baseType: !7, size: 32, offset: 2112)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "ext_item_age", scope: !278, file: !6, line: 500, baseType: !7, size: 32, offset: 2144)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ext_low_ttl", scope: !278, file: !6, line: 501, baseType: !7, size: 32, offset: 2176)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ext_recache_rate", scope: !278, file: !6, line: 502, baseType: !7, size: 32, offset: 2208)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ext_wbuf_size", scope: !278, file: !6, line: 503, baseType: !7, size: 32, offset: 2240)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ext_compact_under", scope: !278, file: !6, line: 504, baseType: !7, size: 32, offset: 2272)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ext_drop_under", scope: !278, file: !6, line: 505, baseType: !7, size: 32, offset: 2304)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ext_max_sleep", scope: !278, file: !6, line: 506, baseType: !7, size: 32, offset: 2336)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ext_max_frag", scope: !278, file: !6, line: 507, baseType: !293, size: 64, offset: 2368)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "slab_automove_freeratio", scope: !278, file: !6, line: 508, baseType: !293, size: 64, offset: 2432)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ext_drop_unread", scope: !278, file: !6, line: 509, baseType: !301, size: 8, offset: 2496)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ext_global_pool_min", scope: !278, file: !6, line: 511, baseType: !7, size: 32, offset: 2528)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "num_napi_ids", scope: !278, file: !6, line: 528, baseType: !114, size: 32, offset: 2560)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "memory_file", scope: !278, file: !6, line: 529, baseType: !143, size: 64, offset: 2624)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "sock_cookie_id", scope: !278, file: !6, line: 537, baseType: !263, size: 32, offset: 2688)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !270, file: !269, line: 15, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_automove_free_func", file: !269, line: 10, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !95}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !270, file: !269, line: 16, baseType: !367, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_automove_run_func", file: !269, line: 11, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !95, !371, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "slab_automove_extstore", scope: !2, file: !3, line: 1574, type: !268, isLocal: false, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "heads", scope: !2, file: !3, line: 55, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 16384, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 256)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "tails", scope: !2, file: !3, line: 56, type: !376, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "sizes", scope: !2, file: !3, line: 58, type: !383, isLocal: true, isDefinition: true)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, elements: !377)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "sizes_bytes", scope: !2, file: !3, line: 59, type: !386, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 16384, elements: !377)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "lru_maintainer_tid", scope: !2, file: !3, line: 1580, type: !389, isLocal: true, isDefinition: true)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !156, line: 27, baseType: !94)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "cas_id_lock", scope: !2, file: !3, line: 68, type: !155, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "cas_id", scope: !2, file: !3, line: 63, type: !90, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "lru_type_map", scope: !2, file: !3, line: 28, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 4)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "stats_sizes_lock", scope: !2, file: !3, line: 69, type: !155, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "stats_sizes_hist", scope: !2, file: !3, line: 60, type: !403, isLocal: true, isDefinition: true)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "stats_sizes_buckets", scope: !2, file: !3, line: 62, type: !114, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "stats_sizes_cas_min", scope: !2, file: !3, line: 61, type: !90, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "bump_buf_lock", scope: !2, file: !3, line: 103, type: !155, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "bump_buf_head", scope: !2, file: !3, line: 101, type: !412, isLocal: true, isDefinition: true)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "lru_bump_buf", file: !3, line: 94, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lru_bump_buf", file: !3, line: 88, size: 576, elements: !415)
!415 = !{!416, !418, !419, !420, !421}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !414, file: !3, line: 89, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !414, file: !3, line: 90, baseType: !417, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !414, file: !3, line: 91, baseType: !155, size: 320, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !414, file: !3, line: 92, baseType: !192, size: 64, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "dropped", scope: !414, file: !3, line: 93, baseType: !90, size: 64, offset: 512)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "bump_buf_tail", scope: !2, file: !3, line: 102, type: !412, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "lru_maintainer_lock", scope: !2, file: !3, line: 67, type: !155, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "do_run_lru_maintainer_thread", scope: !2, file: !3, line: 65, type: !428, isLocal: true, isDefinition: true)
!428 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !114)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "next_crawls", scope: !431, file: !3, line: 1476, type: !482, isLocal: true, isDefinition: true)
!431 = distinct !DISubprogram(name: "lru_maintainer_crawler_check", scope: !3, file: !3, line: 1474, type: !432, scopeLine: 1474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !459)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !434, !147}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crawler_expired_data", file: !436, line: 17, size: 1098176, elements: !437)
!436 = !DIFile(filename: "./crawler.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "4dc9e6e54966538ea20b64490631aef9")
!437 = !{!438, !439, !455, !456, !457, !458}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !435, file: !436, line: 18, baseType: !155, size: 320)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "crawlerstats", scope: !435, file: !436, line: 19, baseType: !440, size: 1097728, offset: 320)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 1097728, elements: !377)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "crawlerstats_t", file: !436, line: 15, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 6, size: 4288, elements: !443)
!443 = !{!444, !448, !449, !450, !451, !452, !453, !454}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "histo", scope: !442, file: !436, line: 7, baseType: !445, size: 3904)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 3904, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 61)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ttl_hourplus", scope: !442, file: !436, line: 8, baseType: !90, size: 64, offset: 3904)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "noexp", scope: !442, file: !436, line: 9, baseType: !90, size: 64, offset: 3968)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !442, file: !436, line: 10, baseType: !90, size: 64, offset: 4032)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "seen", scope: !442, file: !436, line: 11, baseType: !90, size: 64, offset: 4096)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !442, file: !436, line: 12, baseType: !111, size: 32, offset: 4160)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "end_time", scope: !442, file: !436, line: 13, baseType: !111, size: 32, offset: 4192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "run_complete", scope: !442, file: !436, line: 14, baseType: !301, size: 8, offset: 4224)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !435, file: !436, line: 21, baseType: !111, size: 32, offset: 1098048)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "end_time", scope: !435, file: !436, line: 22, baseType: !111, size: 32, offset: 1098080)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "crawl_complete", scope: !435, file: !436, line: 23, baseType: !301, size: 8, offset: 1098112)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "is_external", scope: !435, file: !436, line: 24, baseType: !301, size: 8, offset: 1098120)
!459 = !{!460, !461, !462, !463, !465, !466, !467, !472, !475, !476, !477, !478, !479, !480}
!460 = !DILocalVariable(name: "cdata", arg: 1, scope: !431, file: !3, line: 1474, type: !434)
!461 = !DILocalVariable(name: "l", arg: 2, scope: !431, file: !3, line: 1474, type: !147)
!462 = !DILocalVariable(name: "i", scope: !431, file: !3, line: 1475, type: !114)
!463 = !DILocalVariable(name: "todo", scope: !431, file: !3, line: 1478, type: !464)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 2048, elements: !377)
!465 = !DILocalVariable(name: "do_run", scope: !431, file: !3, line: 1480, type: !301)
!466 = !DILocalVariable(name: "tocrawl_limit", scope: !431, file: !3, line: 1481, type: !7)
!467 = !DILocalVariable(name: "s", scope: !468, file: !3, line: 1485, type: !471)
!468 = distinct !DILexicalBlock(scope: !469, file: !3, line: 1484, column: 54)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 1484, column: 5)
!470 = distinct !DILexicalBlock(scope: !431, file: !3, line: 1484, column: 5)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!472 = !DILocalVariable(name: "lru_name", scope: !473, file: !3, line: 1488, type: !143)
!473 = distinct !DILexicalBlock(scope: !474, file: !3, line: 1487, column: 30)
!474 = distinct !DILexicalBlock(scope: !468, file: !3, line: 1487, column: 13)
!475 = !DILocalVariable(name: "x", scope: !473, file: !3, line: 1490, type: !114)
!476 = !DILocalVariable(name: "possible_reclaims", scope: !473, file: !3, line: 1492, type: !90)
!477 = !DILocalVariable(name: "available_reclaims", scope: !473, file: !3, line: 1493, type: !90)
!478 = !DILocalVariable(name: "low_watermark", scope: !473, file: !3, line: 1497, type: !90)
!479 = !DILocalVariable(name: "since_run", scope: !473, file: !3, line: 1498, type: !111)
!480 = !DILocalVariable(name: "myl", scope: !481, file: !3, line: 1535, type: !147)
!481 = distinct !DILexicalBlock(scope: !473, file: !3, line: 1535, column: 13)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 8192, elements: !377)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "next_crawl_wait", scope: !431, file: !3, line: 1477, type: !482, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "lru_maintainer_initialized", scope: !2, file: !3, line: 66, type: !114, isLocal: true, isDefinition: true)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 344064, elements: !377)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "itemstats_t", file: !3, line: 53, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 31, size: 1344, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "evicted", scope: !489, file: !3, line: 32, baseType: !90, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "evicted_nonzero", scope: !489, file: !3, line: 33, baseType: !90, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !489, file: !3, line: 34, baseType: !90, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "outofmemory", scope: !489, file: !3, line: 35, baseType: !90, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "tailrepairs", scope: !489, file: !3, line: 36, baseType: !90, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "expired_unfetched", scope: !489, file: !3, line: 37, baseType: !90, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "evicted_unfetched", scope: !489, file: !3, line: 38, baseType: !90, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "evicted_active", scope: !489, file: !3, line: 39, baseType: !90, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "crawler_reclaimed", scope: !489, file: !3, line: 40, baseType: !90, size: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "crawler_items_checked", scope: !489, file: !3, line: 41, baseType: !90, size: 64, offset: 576)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "lrutail_reflocked", scope: !489, file: !3, line: 42, baseType: !90, size: 64, offset: 640)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "moves_to_cold", scope: !489, file: !3, line: 43, baseType: !90, size: 64, offset: 704)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "moves_to_warm", scope: !489, file: !3, line: 44, baseType: !90, size: 64, offset: 768)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "moves_within_lru", scope: !489, file: !3, line: 45, baseType: !90, size: 64, offset: 832)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "direct_reclaims", scope: !489, file: !3, line: 46, baseType: !90, size: 64, offset: 896)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "hits_to_hot", scope: !489, file: !3, line: 47, baseType: !90, size: 64, offset: 960)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "hits_to_warm", scope: !489, file: !3, line: 48, baseType: !90, size: 64, offset: 1024)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "hits_to_cold", scope: !489, file: !3, line: 49, baseType: !90, size: 64, offset: 1088)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "hits_to_temp", scope: !489, file: !3, line: 50, baseType: !90, size: 64, offset: 1152)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mem_requested", scope: !489, file: !3, line: 51, baseType: !90, size: 64, offset: 1216)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "evicted_time", scope: !489, file: !3, line: 52, baseType: !111, size: 32, offset: 1280)
!512 = !{i32 7, !"Dwarf Version", i32 5}
!513 = !{i32 2, !"Debug Info Version", i32 3}
!514 = !{i32 1, !"wchar_size", i32 4}
!515 = !{i32 7, !"uwtable", i32 1}
!516 = !{!"/home/xuheng/blackbox/llvm-test/memcached/items.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/items.gcda", !2}
!517 = !{!"clang version 14.0.0"}
!518 = distinct !DISubprogram(name: "item_stats_reset", scope: !3, file: !3, line: 71, type: !519, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{null}
!521 = !{!522}
!522 = !DILocalVariable(name: "i", scope: !518, file: !3, line: 72, type: !114)
!523 = !DILocation(line: 0, scope: !518)
!524 = !DILocation(line: 73, column: 5, scope: !525)
!525 = distinct !DILexicalBlock(scope: !518, file: !3, line: 73, column: 5)
!526 = !DILocation(line: 74, column: 29, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !3, line: 73, column: 38)
!528 = distinct !DILexicalBlock(scope: !525, file: !3, line: 73, column: 5)
!529 = !DILocation(line: 74, column: 9, scope: !527)
!530 = !DILocation(line: 75, column: 17, scope: !527)
!531 = !DILocation(line: 75, column: 16, scope: !527)
!532 = !DILocation(line: 75, column: 9, scope: !527)
!533 = !DILocation(line: 76, column: 9, scope: !527)
!534 = !DILocation(line: 73, column: 34, scope: !528)
!535 = !DILocation(line: 73, column: 19, scope: !528)
!536 = distinct !{!536, !524, !537, !538}
!537 = !DILocation(line: 77, column: 5, scope: !525)
!538 = !{!"llvm.loop.mustprogress"}
!539 = !DILocation(line: 78, column: 1, scope: !518)
!540 = !DISubprogram(name: "pthread_mutex_lock", scope: !541, file: !541, line: 738, type: !542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!541 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!542 = !DISubroutineType(types: !543)
!543 = !{!114, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!545 = !{}
!546 = !DISubprogram(name: "memset", scope: !547, file: !547, line: 61, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!547 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!548 = !DISubroutineType(types: !549)
!549 = !{!95, !95, !114, !144}
!550 = !DISubprogram(name: "pthread_mutex_unlock", scope: !541, file: !541, line: 756, type: !542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!551 = distinct !DISubprogram(name: "do_item_stats_add_crawl", scope: !3, file: !3, line: 81, type: !552, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !556)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !554, !555, !555, !555}
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!556 = !{!557, !558, !559, !560}
!557 = !DILocalVariable(name: "i", arg: 1, scope: !551, file: !3, line: 81, type: !554)
!558 = !DILocalVariable(name: "reclaimed", arg: 2, scope: !551, file: !3, line: 81, type: !555)
!559 = !DILocalVariable(name: "unfetched", arg: 3, scope: !551, file: !3, line: 82, type: !555)
!560 = !DILocalVariable(name: "checked", arg: 4, scope: !551, file: !3, line: 82, type: !555)
!561 = !DILocation(line: 0, scope: !551)
!562 = !DILocation(line: 83, column: 5, scope: !551)
!563 = !DILocation(line: 83, column: 18, scope: !551)
!564 = !DILocation(line: 83, column: 36, scope: !551)
!565 = !{!566, !567, i64 64}
!566 = !{!"", !567, i64 0, !567, i64 8, !567, i64 16, !567, i64 24, !567, i64 32, !567, i64 40, !567, i64 48, !567, i64 56, !567, i64 64, !567, i64 72, !567, i64 80, !567, i64 88, !567, i64 96, !567, i64 104, !567, i64 112, !567, i64 120, !567, i64 128, !567, i64 136, !567, i64 144, !567, i64 152, !570, i64 160}
!567 = !{!"long", !568, i64 0}
!568 = !{!"omnipotent char", !569, i64 0}
!569 = !{!"Simple C/C++ TBAA"}
!570 = !{!"int", !568, i64 0}
!571 = !DILocation(line: 84, column: 18, scope: !551)
!572 = !DILocation(line: 84, column: 36, scope: !551)
!573 = !{!566, !567, i64 40}
!574 = !DILocation(line: 85, column: 18, scope: !551)
!575 = !DILocation(line: 85, column: 40, scope: !551)
!576 = !{!566, !567, i64 72}
!577 = !DILocation(line: 86, column: 1, scope: !551)
!578 = distinct !DISubprogram(name: "get_cas_id", scope: !3, file: !3, line: 112, type: !579, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !581)
!579 = !DISubroutineType(types: !580)
!580 = !{!90}
!581 = !{!582}
!582 = !DILocalVariable(name: "next_id", scope: !578, file: !3, line: 114, type: !90)
!583 = !DILocation(line: 113, column: 5, scope: !578)
!584 = !DILocation(line: 114, column: 24, scope: !578)
!585 = !{!567, !567, i64 0}
!586 = !DILocation(line: 0, scope: !578)
!587 = !DILocation(line: 115, column: 5, scope: !578)
!588 = !DILocation(line: 116, column: 5, scope: !578)
!589 = distinct !DISubprogram(name: "set_cas_id", scope: !3, file: !3, line: 119, type: !590, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !592)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !90}
!592 = !{!593}
!593 = !DILocalVariable(name: "new_cas", arg: 1, scope: !589, file: !3, line: 119, type: !90)
!594 = !DILocation(line: 0, scope: !589)
!595 = !DILocation(line: 120, column: 5, scope: !589)
!596 = !DILocation(line: 121, column: 12, scope: !589)
!597 = !DILocation(line: 122, column: 5, scope: !589)
!598 = !DILocation(line: 123, column: 1, scope: !589)
!599 = distinct !DISubprogram(name: "item_is_flushed", scope: !3, file: !3, line: 125, type: !600, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{!114, !260}
!602 = !{!603, !604, !605, !606}
!603 = !DILocalVariable(name: "it", arg: 1, scope: !599, file: !3, line: 125, type: !260)
!604 = !DILocalVariable(name: "oldest_live", scope: !599, file: !3, line: 126, type: !111)
!605 = !DILocalVariable(name: "cas", scope: !599, file: !3, line: 127, type: !90)
!606 = !DILocalVariable(name: "oldest_cas", scope: !599, file: !3, line: 128, type: !90)
!607 = !DILocation(line: 0, scope: !599)
!608 = !DILocation(line: 126, column: 39, scope: !599)
!609 = !{!610, !570, i64 36}
!610 = !{!"settings", !567, i64 0, !570, i64 8, !570, i64 12, !570, i64 16, !611, i64 24, !570, i64 32, !570, i64 36, !567, i64 40, !570, i64 48, !611, i64 56, !611, i64 64, !570, i64 72, !612, i64 80, !570, i64 88, !570, i64 92, !570, i64 96, !568, i64 100, !570, i64 104, !570, i64 108, !613, i64 112, !568, i64 116, !570, i64 120, !570, i64 124, !570, i64 128, !570, i64 132, !570, i64 136, !613, i64 140, !613, i64 141, !613, i64 142, !613, i64 143, !613, i64 144, !613, i64 145, !570, i64 148, !612, i64 152, !570, i64 160, !570, i64 164, !613, i64 168, !570, i64 172, !613, i64 176, !613, i64 177, !611, i64 184, !570, i64 192, !570, i64 196, !570, i64 200, !570, i64 204, !612, i64 208, !612, i64 216, !570, i64 224, !613, i64 228, !570, i64 232, !570, i64 236, !570, i64 240, !570, i64 244, !570, i64 248, !613, i64 252, !613, i64 253, !613, i64 254, !613, i64 255, !570, i64 256, !570, i64 260, !570, i64 264, !570, i64 268, !570, i64 272, !570, i64 276, !570, i64 280, !570, i64 284, !570, i64 288, !570, i64 292, !612, i64 296, !612, i64 304, !613, i64 312, !570, i64 316, !570, i64 320, !611, i64 328, !570, i64 336}
!611 = !{!"any pointer", !568, i64 0}
!612 = !{!"double", !568, i64 0}
!613 = !{!"_Bool", !568, i64 0}
!614 = !DILocation(line: 127, column: 20, scope: !599)
!615 = !{!616, !616, i64 0}
!616 = !{!"short", !568, i64 0}
!617 = !{!568, !568, i64 0}
!618 = !DILocation(line: 128, column: 36, scope: !599)
!619 = !{!610, !567, i64 40}
!620 = !DILocation(line: 129, column: 21, scope: !621)
!621 = distinct !DILexicalBlock(scope: !599, file: !3, line: 129, column: 9)
!622 = !DILocation(line: 129, column: 26, scope: !621)
!623 = !DILocation(line: 129, column: 29, scope: !621)
!624 = !DILocation(line: 129, column: 43, scope: !621)
!625 = !{!570, !570, i64 0}
!626 = !DILocation(line: 129, column: 41, scope: !621)
!627 = !DILocation(line: 129, column: 9, scope: !599)
!628 = !DILocation(line: 131, column: 14, scope: !629)
!629 = distinct !DILexicalBlock(scope: !599, file: !3, line: 131, column: 9)
!630 = !DILocation(line: 131, column: 19, scope: !629)
!631 = !DILocation(line: 132, column: 13, scope: !629)
!632 = !DILocation(line: 132, column: 17, scope: !629)
!633 = !DILocation(line: 132, column: 28, scope: !629)
!634 = !DILocation(line: 132, column: 33, scope: !629)
!635 = !DILocation(line: 132, column: 36, scope: !629)
!636 = !DILocation(line: 132, column: 40, scope: !629)
!637 = !DILocation(line: 132, column: 45, scope: !629)
!638 = !DILocation(line: 132, column: 48, scope: !629)
!639 = !DILocation(line: 132, column: 52, scope: !629)
!640 = !DILocation(line: 131, column: 9, scope: !599)
!641 = !DILocation(line: 133, column: 9, scope: !642)
!642 = distinct !DILexicalBlock(scope: !629, file: !3, line: 132, column: 67)
!643 = !DILocation(line: 135, column: 5, scope: !599)
!644 = !DILocation(line: 136, column: 1, scope: !599)
!645 = distinct !DISubprogram(name: "do_get_lru_size", scope: !3, file: !3, line: 139, type: !646, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !648)
!646 = !DISubroutineType(types: !647)
!647 = !{!7, !263}
!648 = !{!649}
!649 = !DILocalVariable(name: "id", arg: 1, scope: !645, file: !3, line: 139, type: !263)
!650 = !DILocation(line: 0, scope: !645)
!651 = !DILocation(line: 140, column: 12, scope: !645)
!652 = !DILocation(line: 140, column: 5, scope: !645)
!653 = distinct !DISubprogram(name: "do_item_alloc_pull", scope: !3, file: !3, line: 175, type: !654, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !658)
!654 = !DISubroutineType(types: !655)
!655 = !{!260, !656, !657}
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!658 = !{!659, !660, !661, !662}
!659 = !DILocalVariable(name: "ntotal", arg: 1, scope: !653, file: !3, line: 175, type: !656)
!660 = !DILocalVariable(name: "id", arg: 2, scope: !653, file: !3, line: 175, type: !657)
!661 = !DILocalVariable(name: "it", scope: !653, file: !3, line: 176, type: !260)
!662 = !DILocalVariable(name: "i", scope: !653, file: !3, line: 177, type: !114)
!663 = !DILocation(line: 0, scope: !653)
!664 = !DILocation(line: 184, column: 5, scope: !665)
!665 = distinct !DILexicalBlock(scope: !653, file: !3, line: 184, column: 5)
!666 = !DILocation(line: 186, column: 23, scope: !667)
!667 = distinct !DILexicalBlock(scope: !668, file: !3, line: 186, column: 13)
!668 = distinct !DILexicalBlock(scope: !669, file: !3, line: 184, column: 30)
!669 = distinct !DILexicalBlock(scope: !665, file: !3, line: 184, column: 5)
!670 = !{!610, !613, i64 144}
!671 = !{i8 0, i8 2}
!672 = !DILocation(line: 186, column: 13, scope: !668)
!673 = !DILocation(line: 187, column: 27, scope: !674)
!674 = distinct !DILexicalBlock(scope: !667, file: !3, line: 186, column: 38)
!675 = !DILocation(line: 187, column: 13, scope: !674)
!676 = !DILocation(line: 188, column: 9, scope: !674)
!677 = !DILocation(line: 189, column: 14, scope: !668)
!678 = !DILocation(line: 191, column: 16, scope: !679)
!679 = distinct !DILexicalBlock(scope: !668, file: !3, line: 191, column: 13)
!680 = !DILocation(line: 191, column: 13, scope: !668)
!681 = !DILocation(line: 195, column: 17, scope: !682)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 195, column: 17)
!683 = distinct !DILexicalBlock(scope: !679, file: !3, line: 191, column: 25)
!684 = !DILocation(line: 195, column: 73, scope: !682)
!685 = !DILocation(line: 195, column: 17, scope: !683)
!686 = !DILocation(line: 196, column: 30, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 196, column: 21)
!688 = distinct !DILexicalBlock(scope: !682, file: !3, line: 195, column: 79)
!689 = !DILocation(line: 196, column: 21, scope: !688)
!690 = !DILocation(line: 197, column: 21, scope: !691)
!691 = distinct !DILexicalBlock(scope: !687, file: !3, line: 196, column: 45)
!692 = !DILocation(line: 201, column: 13, scope: !688)
!693 = !DILocation(line: 203, column: 13, scope: !694)
!694 = distinct !DILexicalBlock(scope: !679, file: !3, line: 202, column: 16)
!695 = !DILocation(line: 184, column: 26, scope: !669)
!696 = !DILocation(line: 184, column: 19, scope: !669)
!697 = distinct !{!697, !664, !698, !538}
!698 = !DILocation(line: 205, column: 5, scope: !665)
!699 = !DILocation(line: 0, scope: !679)
!700 = !DILocation(line: 207, column: 11, scope: !701)
!701 = distinct !DILexicalBlock(scope: !653, file: !3, line: 207, column: 9)
!702 = !DILocation(line: 207, column: 9, scope: !653)
!703 = !DILocation(line: 208, column: 39, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !3, line: 207, column: 16)
!705 = !DILocation(line: 208, column: 29, scope: !704)
!706 = !DILocation(line: 208, column: 9, scope: !704)
!707 = !DILocation(line: 209, column: 42, scope: !704)
!708 = !DILocation(line: 209, column: 23, scope: !704)
!709 = !DILocation(line: 209, column: 39, scope: !704)
!710 = !{!566, !567, i64 112}
!711 = !DILocation(line: 210, column: 9, scope: !704)
!712 = !DILocation(line: 211, column: 5, scope: !704)
!713 = !DILocation(line: 213, column: 5, scope: !653)
!714 = distinct !DISubprogram(name: "lru_pull_tail", scope: !3, file: !3, line: 1103, type: !715, scopeLine: 1105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !725)
!715 = !DISubroutineType(types: !716)
!716 = !{!114, !554, !554, !555, !717, !718, !719}
!717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lru_pull_tail_return", file: !721, line: 42, size: 128, elements: !722)
!721 = !DIFile(filename: "./items.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "24f8c54717bd547418db2338c9044014")
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !720, file: !721, line: 43, baseType: !260, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "hv", scope: !720, file: !721, line: 44, baseType: !263, size: 32, offset: 64)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !745}
!726 = !DILocalVariable(name: "orig_id", arg: 1, scope: !714, file: !3, line: 1103, type: !554)
!727 = !DILocalVariable(name: "cur_lru", arg: 2, scope: !714, file: !3, line: 1103, type: !554)
!728 = !DILocalVariable(name: "total_bytes", arg: 3, scope: !714, file: !3, line: 1104, type: !555)
!729 = !DILocalVariable(name: "flags", arg: 4, scope: !714, file: !3, line: 1104, type: !717)
!730 = !DILocalVariable(name: "max_age", arg: 5, scope: !714, file: !3, line: 1104, type: !718)
!731 = !DILocalVariable(name: "ret_it", arg: 6, scope: !714, file: !3, line: 1105, type: !719)
!732 = !DILocalVariable(name: "it", scope: !714, file: !3, line: 1106, type: !260)
!733 = !DILocalVariable(name: "id", scope: !714, file: !3, line: 1107, type: !114)
!734 = !DILocalVariable(name: "removed", scope: !714, file: !3, line: 1108, type: !114)
!735 = !DILocalVariable(name: "tries", scope: !714, file: !3, line: 1112, type: !114)
!736 = !DILocalVariable(name: "search", scope: !714, file: !3, line: 1113, type: !260)
!737 = !DILocalVariable(name: "next_it", scope: !714, file: !3, line: 1114, type: !260)
!738 = !DILocalVariable(name: "hold_lock", scope: !714, file: !3, line: 1115, type: !95)
!739 = !DILocalVariable(name: "move_to_lru", scope: !714, file: !3, line: 1116, type: !7)
!740 = !DILocalVariable(name: "limit", scope: !714, file: !3, line: 1117, type: !90)
!741 = !DILocalVariable(name: "hv", scope: !742, file: !3, line: 1135, type: !263)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 1123, column: 66)
!743 = distinct !DILexicalBlock(scope: !744, file: !3, line: 1123, column: 5)
!744 = distinct !DILexicalBlock(scope: !714, file: !3, line: 1123, column: 5)
!745 = !DILocalVariable(name: "myl", scope: !746, file: !3, line: 1234, type: !147)
!746 = distinct !DILexicalBlock(scope: !747, file: !3, line: 1234, column: 21)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 1219, column: 45)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 1219, column: 21)
!749 = distinct !DILexicalBlock(scope: !742, file: !3, line: 1181, column: 26)
!750 = !DILocation(line: 0, scope: !714)
!751 = !DILocation(line: 1109, column: 12, scope: !752)
!752 = distinct !DILexicalBlock(scope: !714, file: !3, line: 1109, column: 9)
!753 = !DILocation(line: 1109, column: 9, scope: !714)
!754 = !DILocation(line: 1110, column: 9, scope: !752)
!755 = !DILocation(line: 1119, column: 8, scope: !714)
!756 = !DILocation(line: 1120, column: 25, scope: !714)
!757 = !DILocation(line: 1120, column: 5, scope: !714)
!758 = !DILocation(line: 1121, column: 14, scope: !714)
!759 = !{!611, !611, i64 0}
!760 = !DILocation(line: 1123, column: 22, scope: !743)
!761 = !DILocation(line: 1123, column: 25, scope: !743)
!762 = !DILocation(line: 1123, column: 32, scope: !743)
!763 = !DILocation(line: 1123, column: 5, scope: !744)
!764 = !DILocation(line: 1125, column: 27, scope: !742)
!765 = !DILocation(line: 1126, column: 21, scope: !766)
!766 = distinct !DILexicalBlock(scope: !742, file: !3, line: 1126, column: 13)
!767 = !DILocation(line: 1126, column: 28, scope: !766)
!768 = !DILocation(line: 1126, column: 33, scope: !766)
!769 = !DILocation(line: 1135, column: 54, scope: !742)
!770 = !DILocation(line: 1126, column: 36, scope: !766)
!771 = !DILocation(line: 1126, column: 44, scope: !766)
!772 = !DILocation(line: 1126, column: 49, scope: !766)
!773 = !DILocation(line: 1126, column: 54, scope: !766)
!774 = !DILocation(line: 1126, column: 57, scope: !766)
!775 = !DILocation(line: 1126, column: 65, scope: !766)
!776 = !DILocation(line: 1126, column: 74, scope: !766)
!777 = !DILocation(line: 1126, column: 13, scope: !742)
!778 = !DILocation(line: 1128, column: 17, scope: !779)
!779 = distinct !DILexicalBlock(scope: !766, file: !3, line: 1126, column: 80)
!780 = !DILocation(line: 1129, column: 49, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 1128, column: 48)
!782 = distinct !DILexicalBlock(scope: !779, file: !3, line: 1128, column: 17)
!783 = !DILocation(line: 1129, column: 17, scope: !781)
!784 = !DILocation(line: 1130, column: 17, scope: !781)
!785 = !DILocation(line: 1132, column: 18, scope: !779)
!786 = !DILocation(line: 1133, column: 13, scope: !779)
!787 = !DILocation(line: 1135, column: 23, scope: !742)
!788 = !DILocation(line: 1135, column: 28, scope: !742)
!789 = !DILocation(line: 1135, column: 46, scope: !742)
!790 = !DILocation(line: 0, scope: !742)
!791 = !DILocation(line: 1138, column: 26, scope: !792)
!792 = distinct !DILexicalBlock(scope: !742, file: !3, line: 1138, column: 13)
!793 = !DILocation(line: 1138, column: 44, scope: !792)
!794 = !DILocation(line: 1138, column: 13, scope: !742)
!795 = !DILocation(line: 1139, column: 13, scope: !792)
!796 = !DILocation(line: 1141, column: 13, scope: !797)
!797 = distinct !DILexicalBlock(scope: !742, file: !3, line: 1141, column: 13)
!798 = !DILocation(line: 1141, column: 35, scope: !797)
!799 = !DILocation(line: 1141, column: 13, scope: !742)
!800 = !DILocation(line: 1144, column: 44, scope: !801)
!801 = distinct !DILexicalBlock(scope: !797, file: !3, line: 1141, column: 41)
!802 = !{!566, !567, i64 80}
!803 = !DILocation(line: 1147, column: 26, scope: !804)
!804 = distinct !DILexicalBlock(scope: !801, file: !3, line: 1147, column: 17)
!805 = !{!610, !570, i64 172}
!806 = !DILocation(line: 1147, column: 17, scope: !804)
!807 = !DILocation(line: 1147, column: 43, scope: !804)
!808 = !DILocation(line: 1148, column: 21, scope: !804)
!809 = !DILocation(line: 1148, column: 29, scope: !804)
!810 = !DILocation(line: 1148, column: 34, scope: !804)
!811 = !DILocation(line: 1148, column: 64, scope: !804)
!812 = !DILocation(line: 1148, column: 62, scope: !804)
!813 = !DILocation(line: 1147, column: 17, scope: !801)
!814 = !DILocation(line: 1149, column: 42, scope: !815)
!815 = distinct !DILexicalBlock(scope: !804, file: !3, line: 1148, column: 78)
!816 = !{!566, !567, i64 32}
!817 = !DILocation(line: 1150, column: 34, scope: !815)
!818 = !DILocation(line: 1152, column: 17, scope: !819)
!819 = distinct !DILexicalBlock(scope: !815, file: !3, line: 1152, column: 17)
!820 = !DILocation(line: 1153, column: 39, scope: !815)
!821 = !DILocation(line: 1153, column: 17, scope: !815)
!822 = !DILocation(line: 1154, column: 17, scope: !815)
!823 = !DILocation(line: 1155, column: 17, scope: !815)
!824 = !DILocation(line: 1157, column: 9, scope: !801)
!825 = !DILocation(line: 1160, column: 22, scope: !826)
!826 = distinct !DILexicalBlock(scope: !742, file: !3, line: 1160, column: 13)
!827 = !DILocation(line: 1160, column: 30, scope: !826)
!828 = !DILocation(line: 1160, column: 35, scope: !826)
!829 = !DILocation(line: 1160, column: 38, scope: !826)
!830 = !DILocation(line: 1160, column: 46, scope: !826)
!831 = !DILocation(line: 1160, column: 56, scope: !826)
!832 = !DILocation(line: 1160, column: 54, scope: !826)
!833 = !DILocation(line: 1161, column: 13, scope: !826)
!834 = !DILocation(line: 1161, column: 16, scope: !826)
!835 = !DILocation(line: 1160, column: 13, scope: !742)
!836 = !DILocation(line: 1162, column: 36, scope: !837)
!837 = distinct !DILexicalBlock(scope: !826, file: !3, line: 1161, column: 41)
!838 = !{!566, !567, i64 16}
!839 = !DILocation(line: 1163, column: 26, scope: !840)
!840 = distinct !DILexicalBlock(scope: !837, file: !3, line: 1163, column: 17)
!841 = !DILocation(line: 1163, column: 35, scope: !840)
!842 = !DILocation(line: 1163, column: 51, scope: !840)
!843 = !DILocation(line: 1163, column: 17, scope: !837)
!844 = !DILocation(line: 1164, column: 27, scope: !845)
!845 = distinct !DILexicalBlock(scope: !840, file: !3, line: 1163, column: 57)
!846 = !DILocation(line: 1164, column: 48, scope: !845)
!847 = !DILocation(line: 1165, column: 13, scope: !845)
!848 = !DILocation(line: 1167, column: 13, scope: !837)
!849 = !DILocation(line: 1168, column: 13, scope: !850)
!850 = distinct !DILexicalBlock(scope: !837, file: !3, line: 1168, column: 13)
!851 = !DILocation(line: 1170, column: 28, scope: !837)
!852 = !DILocation(line: 1170, column: 13, scope: !837)
!853 = !DILocation(line: 1171, column: 13, scope: !837)
!854 = !DILocation(line: 1172, column: 20, scope: !837)
!855 = !DILocation(line: 1175, column: 13, scope: !837)
!856 = !DILocation(line: 1181, column: 9, scope: !742)
!857 = !DILocation(line: 1183, column: 25, scope: !749)
!858 = !DILocation(line: 1183, column: 48, scope: !749)
!859 = !{!610, !570, i64 200}
!860 = !DILocation(line: 1183, column: 39, scope: !749)
!861 = !DILocation(line: 1183, column: 37, scope: !749)
!862 = !DILocation(line: 1183, column: 60, scope: !749)
!863 = !DILocation(line: 1183, column: 17, scope: !749)
!864 = !DILocation(line: 1185, column: 27, scope: !865)
!865 = distinct !DILexicalBlock(scope: !749, file: !3, line: 1185, column: 21)
!866 = !DILocation(line: 1185, column: 21, scope: !749)
!867 = !DILocation(line: 1186, column: 29, scope: !865)
!868 = !DILocation(line: 1186, column: 52, scope: !865)
!869 = !{!610, !570, i64 204}
!870 = !DILocation(line: 1186, column: 43, scope: !865)
!871 = !DILocation(line: 1186, column: 41, scope: !865)
!872 = !DILocation(line: 1186, column: 65, scope: !865)
!873 = !DILocation(line: 1186, column: 21, scope: !865)
!874 = !DILocation(line: 1188, column: 30, scope: !875)
!875 = distinct !DILexicalBlock(scope: !749, file: !3, line: 1188, column: 21)
!876 = !DILocation(line: 1188, column: 39, scope: !875)
!877 = !DILocation(line: 1188, column: 54, scope: !875)
!878 = !DILocation(line: 1188, column: 21, scope: !749)
!879 = !DILocation(line: 1189, column: 38, scope: !880)
!880 = distinct !DILexicalBlock(scope: !875, file: !3, line: 1188, column: 60)
!881 = !DILocation(line: 1190, column: 28, scope: !880)
!882 = !DILocation(line: 1191, column: 25, scope: !880)
!883 = !DILocation(line: 1192, column: 35, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 1191, column: 46)
!885 = distinct !DILexicalBlock(scope: !880, file: !3, line: 1191, column: 25)
!886 = !DILocation(line: 1192, column: 55, scope: !884)
!887 = !{!566, !567, i64 104}
!888 = !DILocation(line: 1193, column: 25, scope: !884)
!889 = !DILocation(line: 1194, column: 25, scope: !884)
!890 = !DILocation(line: 1195, column: 25, scope: !884)
!891 = !DILocation(line: 1196, column: 25, scope: !884)
!892 = !DILocation(line: 1197, column: 21, scope: !884)
!893 = !DILocation(line: 1199, column: 35, scope: !894)
!894 = distinct !DILexicalBlock(scope: !885, file: !3, line: 1197, column: 28)
!895 = !DILocation(line: 1199, column: 39, scope: !894)
!896 = !DILocation(line: 1199, column: 52, scope: !894)
!897 = !{!566, !567, i64 96}
!898 = !DILocation(line: 1201, column: 25, scope: !894)
!899 = !DILocation(line: 1204, column: 28, scope: !900)
!900 = distinct !DILexicalBlock(scope: !875, file: !3, line: 1204, column: 28)
!901 = !DILocation(line: 1204, column: 44, scope: !900)
!902 = !DILocation(line: 1204, column: 52, scope: !900)
!903 = !DILocation(line: 1205, column: 28, scope: !900)
!904 = !DILocation(line: 1205, column: 51, scope: !900)
!905 = !DILocation(line: 1205, column: 41, scope: !900)
!906 = !DILocation(line: 1205, column: 56, scope: !900)
!907 = !DILocation(line: 1204, column: 28, scope: !875)
!908 = !DILocation(line: 1206, column: 31, scope: !909)
!909 = distinct !DILexicalBlock(scope: !900, file: !3, line: 1205, column: 67)
!910 = !DILocation(line: 1206, column: 35, scope: !909)
!911 = !DILocation(line: 1206, column: 48, scope: !909)
!912 = !{!566, !567, i64 88}
!913 = !DILocation(line: 1208, column: 21, scope: !909)
!914 = !DILocation(line: 1210, column: 28, scope: !909)
!915 = !DILocation(line: 1211, column: 21, scope: !909)
!916 = !DILocation(line: 1219, column: 21, scope: !748)
!917 = !DILocation(line: 1219, column: 27, scope: !748)
!918 = !DILocation(line: 1219, column: 21, scope: !749)
!919 = !DILocation(line: 1220, column: 34, scope: !920)
!920 = distinct !DILexicalBlock(scope: !747, file: !3, line: 1220, column: 25)
!921 = !{!610, !570, i64 48}
!922 = !DILocation(line: 1220, column: 48, scope: !920)
!923 = !DILocation(line: 1220, column: 25, scope: !747)
!924 = !DILocation(line: 1222, column: 25, scope: !925)
!925 = distinct !DILexicalBlock(scope: !920, file: !3, line: 1220, column: 54)
!926 = !DILocation(line: 1224, column: 31, scope: !747)
!927 = !DILocation(line: 1224, column: 35, scope: !747)
!928 = !DILocation(line: 1224, column: 42, scope: !747)
!929 = !{!566, !567, i64 0}
!930 = !DILocation(line: 1225, column: 50, scope: !747)
!931 = !DILocation(line: 1225, column: 73, scope: !747)
!932 = !DILocation(line: 1225, column: 63, scope: !747)
!933 = !DILocation(line: 1225, column: 35, scope: !747)
!934 = !DILocation(line: 1225, column: 48, scope: !747)
!935 = !{!566, !570, i64 160}
!936 = !DILocation(line: 1226, column: 33, scope: !937)
!937 = distinct !DILexicalBlock(scope: !747, file: !3, line: 1226, column: 25)
!938 = !DILocation(line: 1226, column: 41, scope: !937)
!939 = !DILocation(line: 1226, column: 25, scope: !747)
!940 = !DILocation(line: 1227, column: 35, scope: !937)
!941 = !DILocation(line: 1227, column: 39, scope: !937)
!942 = !DILocation(line: 1227, column: 54, scope: !937)
!943 = !{!566, !567, i64 8}
!944 = !DILocation(line: 1227, column: 25, scope: !937)
!945 = !DILocation(line: 1228, column: 34, scope: !946)
!946 = distinct !DILexicalBlock(scope: !747, file: !3, line: 1228, column: 25)
!947 = !DILocation(line: 1228, column: 43, scope: !946)
!948 = !DILocation(line: 1228, column: 59, scope: !946)
!949 = !DILocation(line: 1228, column: 25, scope: !747)
!950 = !DILocation(line: 1229, column: 35, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !3, line: 1228, column: 65)
!952 = !DILocation(line: 1229, column: 39, scope: !951)
!953 = !DILocation(line: 1229, column: 56, scope: !951)
!954 = !{!566, !567, i64 48}
!955 = !DILocation(line: 1231, column: 34, scope: !956)
!956 = distinct !DILexicalBlock(scope: !747, file: !3, line: 1231, column: 25)
!957 = !DILocation(line: 1230, column: 21, scope: !951)
!958 = !DILocation(line: 1231, column: 43, scope: !956)
!959 = !DILocation(line: 1231, column: 25, scope: !747)
!960 = !DILocation(line: 1232, column: 35, scope: !961)
!961 = distinct !DILexicalBlock(scope: !956, file: !3, line: 1231, column: 59)
!962 = !DILocation(line: 1232, column: 39, scope: !961)
!963 = !DILocation(line: 1232, column: 53, scope: !961)
!964 = !{!566, !567, i64 56}
!965 = !DILocation(line: 1233, column: 21, scope: !961)
!966 = !DILocation(line: 0, scope: !746)
!967 = !DILocation(line: 1234, column: 21, scope: !968)
!968 = distinct !DILexicalBlock(scope: !746, file: !3, line: 1234, column: 21)
!969 = !DILocation(line: 1234, column: 21, scope: !970)
!970 = distinct !DILexicalBlock(scope: !746, file: !3, line: 1234, column: 21)
!971 = !{!972, !616, i64 84}
!972 = !{!"_logger", !611, i64 0, !611, i64 8, !568, i64 16, !567, i64 56, !567, i64 64, !567, i64 72, !616, i64 80, !616, i64 82, !616, i64 84, !611, i64 88, !611, i64 96}
!973 = !DILocation(line: 1234, column: 21, scope: !746)
!974 = !DILocation(line: 1235, column: 21, scope: !975)
!975 = distinct !DILexicalBlock(scope: !747, file: !3, line: 1235, column: 21)
!976 = !DILocation(line: 1236, column: 21, scope: !747)
!977 = !DILocation(line: 1237, column: 28, scope: !747)
!978 = !DILocation(line: 1238, column: 34, scope: !979)
!979 = distinct !DILexicalBlock(scope: !747, file: !3, line: 1238, column: 25)
!980 = !{!610, !570, i64 148}
!981 = !DILocation(line: 1238, column: 48, scope: !979)
!982 = !DILocation(line: 1238, column: 25, scope: !747)
!983 = !DILocation(line: 1239, column: 44, scope: !984)
!984 = distinct !DILexicalBlock(scope: !979, file: !3, line: 1238, column: 54)
!985 = !DILocation(line: 1239, column: 25, scope: !984)
!986 = !DILocation(line: 1240, column: 21, scope: !984)
!987 = !DILocation(line: 1241, column: 34, scope: !988)
!988 = distinct !DILexicalBlock(scope: !748, file: !3, line: 1241, column: 28)
!989 = !DILocation(line: 1241, column: 28, scope: !748)
!990 = !DILocation(line: 1243, column: 34, scope: !991)
!991 = distinct !DILexicalBlock(scope: !988, file: !3, line: 1241, column: 58)
!992 = !DILocation(line: 1243, column: 29, scope: !991)
!993 = !DILocation(line: 1243, column: 32, scope: !991)
!994 = !{!995, !611, i64 0}
!995 = !{!"lru_pull_tail_return", !611, i64 0, !570, i64 8}
!996 = !DILocation(line: 1244, column: 29, scope: !991)
!997 = !DILocation(line: 1244, column: 32, scope: !991)
!998 = !{!995, !570, i64 8}
!999 = !DILocation(line: 1245, column: 17, scope: !991)
!1000 = !DILocation(line: 1245, column: 37, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !988, file: !3, line: 1245, column: 28)
!1002 = !DILocation(line: 1245, column: 46, scope: !1001)
!1003 = !DILocation(line: 1245, column: 61, scope: !1001)
!1004 = !DILocation(line: 1246, column: 25, scope: !1001)
!1005 = !DILocation(line: 1246, column: 37, scope: !1001)
!1006 = !DILocation(line: 1245, column: 28, scope: !988)
!1007 = !DILocation(line: 1247, column: 31, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 1246, column: 52)
!1009 = !DILocation(line: 1247, column: 35, scope: !1008)
!1010 = !DILocation(line: 1247, column: 48, scope: !1008)
!1011 = !DILocation(line: 1248, column: 38, scope: !1008)
!1012 = !DILocation(line: 1250, column: 21, scope: !1008)
!1013 = !DILocation(line: 1251, column: 28, scope: !1008)
!1014 = !DILocation(line: 1252, column: 17, scope: !1008)
!1015 = !DILocation(line: 1255, column: 22, scope: !749)
!1016 = !DILocation(line: 1256, column: 17, scope: !749)
!1017 = !DILocation(line: 1262, column: 5, scope: !714)
!1018 = !DILocation(line: 1265, column: 13, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 1265, column: 13)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 1264, column: 21)
!1021 = distinct !DILexicalBlock(scope: !714, file: !3, line: 1264, column: 9)
!1022 = !DILocation(line: 1265, column: 13, scope: !1020)
!1023 = !DILocation(line: 1260, column: 5, scope: !743)
!1024 = !DILocation(line: 1260, column: 5, scope: !742)
!1025 = !DILocation(line: 1108, column: 9, scope: !714)
!1026 = !DILocation(line: 1117, column: 14, scope: !714)
!1027 = !DILocation(line: 1123, column: 46, scope: !743)
!1028 = !DILocation(line: 1123, column: 18, scope: !743)
!1029 = distinct !{!1029, !763, !1030, !538}
!1030 = !DILocation(line: 1260, column: 5, scope: !744)
!1031 = !DILocation(line: 1264, column: 9, scope: !714)
!1032 = !DILocation(line: 1266, column: 31, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 1265, column: 26)
!1034 = !DILocation(line: 1267, column: 29, scope: !1033)
!1035 = !DILocation(line: 1268, column: 13, scope: !1033)
!1036 = !DILocation(line: 1269, column: 9, scope: !1033)
!1037 = !DILocation(line: 1270, column: 20, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 1270, column: 13)
!1039 = !DILocation(line: 1270, column: 44, scope: !1038)
!1040 = !DILocation(line: 1270, column: 13, scope: !1020)
!1041 = !DILocation(line: 1271, column: 28, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 1270, column: 50)
!1043 = !DILocation(line: 1271, column: 13, scope: !1042)
!1044 = !DILocation(line: 1272, column: 13, scope: !1042)
!1045 = !DILocation(line: 1273, column: 9, scope: !1042)
!1046 = !DILocation(line: 1276, column: 12, scope: !714)
!1047 = !DILocation(line: 1276, column: 5, scope: !714)
!1048 = !DILocation(line: 1277, column: 1, scope: !714)
!1049 = !DISubprogram(name: "slabs_alloc", scope: !77, file: !77, line: 26, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!95, !656, !7, !7}
!1052 = distinct !DISubprogram(name: "do_item_alloc_chunk", scope: !3, file: !3, line: 221, type: !1053, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!96, !96, !656}
!1055 = !{!1056, !1057, !1058, !1059, !1060}
!1056 = !DILocalVariable(name: "ch", arg: 1, scope: !1052, file: !3, line: 221, type: !96)
!1057 = !DILocalVariable(name: "bytes_remain", arg: 2, scope: !1052, file: !3, line: 221, type: !656)
!1058 = !DILocalVariable(name: "size", scope: !1052, file: !3, line: 223, type: !144)
!1059 = !DILocalVariable(name: "id", scope: !1052, file: !3, line: 226, type: !7)
!1060 = !DILocalVariable(name: "nch", scope: !1052, file: !3, line: 228, type: !96)
!1061 = !DILocation(line: 0, scope: !1052)
!1062 = !DILocation(line: 223, column: 32, scope: !1052)
!1063 = !DILocation(line: 224, column: 25, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 224, column: 9)
!1065 = !{!610, !570, i64 128}
!1066 = !DILocation(line: 224, column: 16, scope: !1064)
!1067 = !DILocation(line: 224, column: 14, scope: !1064)
!1068 = !DILocation(line: 224, column: 9, scope: !1052)
!1069 = !DILocation(line: 225, column: 25, scope: !1064)
!1070 = !DILocation(line: 225, column: 9, scope: !1064)
!1071 = !DILocation(line: 226, column: 23, scope: !1052)
!1072 = !DILocation(line: 228, column: 38, scope: !1052)
!1073 = !DILocation(line: 229, column: 13, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 229, column: 9)
!1075 = !DILocation(line: 229, column: 9, scope: !1052)
!1076 = !DILocation(line: 235, column: 30, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 235, column: 13)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 229, column: 22)
!1079 = !DILocation(line: 235, column: 21, scope: !1077)
!1080 = !DILocation(line: 235, column: 18, scope: !1077)
!1081 = !DILocation(line: 235, column: 13, scope: !1078)
!1082 = !DILocation(line: 236, column: 13, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 235, column: 51)
!1084 = !DILocation(line: 239, column: 18, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 237, column: 16)
!1086 = !DILocation(line: 240, column: 34, scope: !1085)
!1087 = !DILocation(line: 242, column: 21, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 242, column: 17)
!1089 = !DILocation(line: 242, column: 17, scope: !1085)
!1090 = !DILocation(line: 243, column: 17, scope: !1088)
!1091 = !DILocation(line: 245, column: 5, scope: !1078)
!1092 = !DILocation(line: 249, column: 5, scope: !1052)
!1093 = !DILocation(line: 250, column: 21, scope: !1052)
!1094 = !DILocation(line: 250, column: 10, scope: !1052)
!1095 = !DILocation(line: 250, column: 15, scope: !1052)
!1096 = !DILocation(line: 251, column: 14, scope: !1052)
!1097 = !DILocation(line: 252, column: 10, scope: !1052)
!1098 = !DILocation(line: 252, column: 15, scope: !1052)
!1099 = !DILocation(line: 253, column: 10, scope: !1052)
!1100 = !DILocation(line: 253, column: 15, scope: !1052)
!1101 = !DILocation(line: 254, column: 10, scope: !1052)
!1102 = !DILocation(line: 254, column: 15, scope: !1052)
!1103 = !DILocation(line: 255, column: 24, scope: !1052)
!1104 = !DILocation(line: 255, column: 10, scope: !1052)
!1105 = !DILocation(line: 255, column: 22, scope: !1052)
!1106 = !DILocation(line: 256, column: 17, scope: !1052)
!1107 = !DILocation(line: 256, column: 10, scope: !1052)
!1108 = !DILocation(line: 256, column: 15, scope: !1052)
!1109 = !DILocation(line: 257, column: 10, scope: !1052)
!1110 = !DILocation(line: 257, column: 19, scope: !1052)
!1111 = !DILocation(line: 258, column: 5, scope: !1052)
!1112 = !DILocation(line: 259, column: 5, scope: !1052)
!1113 = !DILocation(line: 260, column: 1, scope: !1052)
!1114 = !DISubprogram(name: "slabs_clsid", scope: !77, file: !77, line: 21, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!7, !656}
!1117 = !DISubprogram(name: "slabs_mlock", scope: !77, file: !77, line: 49, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1118 = !DISubprogram(name: "slabs_munlock", scope: !77, file: !77, line: 50, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1119 = distinct !DISubprogram(name: "do_item_alloc", scope: !3, file: !3, line: 262, type: !1120, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1122)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!260, !143, !656, !657, !718, !554}
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1137}
!1123 = !DILocalVariable(name: "key", arg: 1, scope: !1119, file: !3, line: 262, type: !143)
!1124 = !DILocalVariable(name: "nkey", arg: 2, scope: !1119, file: !3, line: 262, type: !656)
!1125 = !DILocalVariable(name: "flags", arg: 3, scope: !1119, file: !3, line: 262, type: !657)
!1126 = !DILocalVariable(name: "exptime", arg: 4, scope: !1119, file: !3, line: 263, type: !718)
!1127 = !DILocalVariable(name: "nbytes", arg: 5, scope: !1119, file: !3, line: 263, type: !554)
!1128 = !DILocalVariable(name: "nsuffix", scope: !1119, file: !3, line: 264, type: !121)
!1129 = !DILocalVariable(name: "it", scope: !1119, file: !3, line: 265, type: !260)
!1130 = !DILocalVariable(name: "suffix", scope: !1119, file: !3, line: 266, type: !180)
!1131 = !DILocalVariable(name: "ntotal", scope: !1119, file: !3, line: 271, type: !144)
!1132 = !DILocalVariable(name: "id", scope: !1119, file: !3, line: 276, type: !7)
!1133 = !DILocalVariable(name: "hdr_id", scope: !1119, file: !3, line: 277, type: !7)
!1134 = !DILocalVariable(name: "htotal", scope: !1135, file: !3, line: 289, type: !114)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 284, column: 48)
!1136 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 284, column: 9)
!1137 = !DILocalVariable(name: "chunk", scope: !1138, file: !3, line: 349, type: !96)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 348, column: 38)
!1139 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 348, column: 9)
!1140 = !DILocation(line: 0, scope: !1119)
!1141 = !DILocation(line: 264, column: 5, scope: !1119)
!1142 = !DILocation(line: 268, column: 16, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 268, column: 9)
!1144 = !DILocation(line: 268, column: 9, scope: !1119)
!1145 = !DILocation(line: 269, column: 9, scope: !1143)
!1146 = !DILocation(line: 271, column: 43, scope: !1119)
!1147 = !DILocation(line: 271, column: 38, scope: !1119)
!1148 = !DILocation(line: 271, column: 21, scope: !1119)
!1149 = !DILocation(line: 272, column: 18, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 272, column: 9)
!1151 = !{!610, !613, i64 112}
!1152 = !DILocation(line: 272, column: 9, scope: !1119)
!1153 = !DILocation(line: 273, column: 16, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 272, column: 27)
!1155 = !DILocation(line: 274, column: 5, scope: !1154)
!1156 = !DILocation(line: 276, column: 23, scope: !1119)
!1157 = !DILocation(line: 278, column: 12, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 278, column: 9)
!1159 = !DILocation(line: 278, column: 9, scope: !1119)
!1160 = !DILocation(line: 279, column: 9, scope: !1158)
!1161 = !DILocation(line: 284, column: 27, scope: !1136)
!1162 = !DILocation(line: 284, column: 18, scope: !1136)
!1163 = !DILocation(line: 284, column: 16, scope: !1136)
!1164 = !DILocation(line: 284, column: 9, scope: !1119)
!1165 = !DILocation(line: 289, column: 33, scope: !1135)
!1166 = !DILocation(line: 289, column: 31, scope: !1135)
!1167 = !DILocation(line: 289, column: 22, scope: !1135)
!1168 = !DILocation(line: 0, scope: !1135)
!1169 = !DILocation(line: 290, column: 22, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 290, column: 13)
!1171 = !DILocation(line: 290, column: 13, scope: !1135)
!1172 = !DILocation(line: 291, column: 20, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 290, column: 31)
!1174 = !DILocation(line: 292, column: 9, scope: !1173)
!1175 = !DILocation(line: 300, column: 30, scope: !1135)
!1176 = !DILocation(line: 300, column: 18, scope: !1135)
!1177 = !DILocation(line: 301, column: 14, scope: !1135)
!1178 = !DILocation(line: 303, column: 16, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 303, column: 13)
!1180 = !DILocation(line: 303, column: 13, scope: !1135)
!1181 = !DILocation(line: 304, column: 13, scope: !1179)
!1182 = !DILocation(line: 304, column: 17, scope: !1179)
!1183 = !DILocation(line: 304, column: 26, scope: !1179)
!1184 = !DILocation(line: 305, column: 5, scope: !1135)
!1185 = !DILocation(line: 306, column: 33, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 305, column: 12)
!1187 = !DILocation(line: 306, column: 14, scope: !1186)
!1188 = !DILocation(line: 0, scope: !1136)
!1189 = !DILocation(line: 309, column: 12, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 309, column: 9)
!1191 = !DILocation(line: 309, column: 9, scope: !1119)
!1192 = !DILocation(line: 310, column: 39, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 309, column: 21)
!1194 = !DILocation(line: 310, column: 29, scope: !1193)
!1195 = !DILocation(line: 310, column: 9, scope: !1193)
!1196 = !DILocation(line: 311, column: 23, scope: !1193)
!1197 = !DILocation(line: 311, column: 34, scope: !1193)
!1198 = !{!566, !567, i64 24}
!1199 = !DILocation(line: 312, column: 9, scope: !1193)
!1200 = !DILocation(line: 313, column: 9, scope: !1193)
!1201 = !DILocation(line: 316, column: 5, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 316, column: 5)
!1203 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 316, column: 5)
!1204 = !DILocation(line: 316, column: 5, scope: !1203)
!1205 = !DILocation(line: 320, column: 14, scope: !1119)
!1206 = !DILocation(line: 325, column: 18, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 325, column: 9)
!1208 = !{!610, !613, i64 228}
!1209 = !DILocation(line: 325, column: 27, scope: !1207)
!1210 = !DILocation(line: 326, column: 13, scope: !1207)
!1211 = !DILocation(line: 326, column: 23, scope: !1207)
!1212 = !DILocation(line: 326, column: 21, scope: !1207)
!1213 = !DILocation(line: 326, column: 48, scope: !1207)
!1214 = !{!610, !570, i64 232}
!1215 = !DILocation(line: 326, column: 36, scope: !1207)
!1216 = !DILocation(line: 325, column: 9, scope: !1119)
!1217 = !DILocation(line: 327, column: 12, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 326, column: 63)
!1219 = !DILocation(line: 328, column: 5, scope: !1218)
!1220 = !DILocation(line: 328, column: 25, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 328, column: 16)
!1222 = !DILocation(line: 328, column: 16, scope: !1207)
!1223 = !DILocation(line: 329, column: 12, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 328, column: 40)
!1225 = !DILocation(line: 330, column: 5, scope: !1224)
!1226 = !DILocation(line: 332, column: 12, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 330, column: 12)
!1228 = !DILocation(line: 0, scope: !1207)
!1229 = !DILocation(line: 334, column: 23, scope: !1119)
!1230 = !DILocation(line: 334, column: 9, scope: !1119)
!1231 = !DILocation(line: 334, column: 21, scope: !1119)
!1232 = !DILocation(line: 337, column: 30, scope: !1119)
!1233 = !DILocation(line: 337, column: 21, scope: !1119)
!1234 = !DILocation(line: 337, column: 18, scope: !1119)
!1235 = !DILocation(line: 338, column: 21, scope: !1119)
!1236 = !DILocation(line: 338, column: 29, scope: !1119)
!1237 = !DILocation(line: 338, column: 18, scope: !1119)
!1238 = !DILocation(line: 339, column: 16, scope: !1119)
!1239 = !DILocation(line: 339, column: 9, scope: !1119)
!1240 = !DILocation(line: 339, column: 14, scope: !1119)
!1241 = !DILocation(line: 340, column: 9, scope: !1119)
!1242 = !DILocation(line: 340, column: 16, scope: !1119)
!1243 = !DILocation(line: 341, column: 12, scope: !1119)
!1244 = !DILocation(line: 341, column: 5, scope: !1119)
!1245 = !DILocation(line: 342, column: 9, scope: !1119)
!1246 = !DILocation(line: 342, column: 17, scope: !1119)
!1247 = !DILocation(line: 343, column: 9, scope: !1119)
!1248 = !DILocation(line: 344, column: 16, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 343, column: 22)
!1250 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 343, column: 9)
!1251 = !DILocation(line: 344, column: 33, scope: !1249)
!1252 = !DILocation(line: 344, column: 9, scope: !1249)
!1253 = !DILocation(line: 345, column: 5, scope: !1249)
!1254 = !DILocation(line: 348, column: 13, scope: !1139)
!1255 = !DILocation(line: 348, column: 22, scope: !1139)
!1256 = !DILocation(line: 348, column: 9, scope: !1119)
!1257 = !DILocation(line: 349, column: 9, scope: !1138)
!1258 = !DILocation(line: 349, column: 44, scope: !1138)
!1259 = !DILocation(line: 0, scope: !1138)
!1260 = !DILocation(line: 351, column: 16, scope: !1138)
!1261 = !DILocation(line: 351, column: 21, scope: !1138)
!1262 = !DILocation(line: 352, column: 16, scope: !1138)
!1263 = !DILocation(line: 352, column: 21, scope: !1138)
!1264 = !DILocation(line: 353, column: 16, scope: !1138)
!1265 = !DILocation(line: 353, column: 21, scope: !1138)
!1266 = !DILocation(line: 354, column: 16, scope: !1138)
!1267 = !DILocation(line: 354, column: 21, scope: !1138)
!1268 = !DILocation(line: 355, column: 16, scope: !1138)
!1269 = !DILocation(line: 355, column: 21, scope: !1138)
!1270 = !DILocation(line: 356, column: 16, scope: !1138)
!1271 = !DILocation(line: 356, column: 27, scope: !1138)
!1272 = !DILocation(line: 357, column: 5, scope: !1138)
!1273 = !DILocation(line: 358, column: 9, scope: !1119)
!1274 = !DILocation(line: 358, column: 16, scope: !1119)
!1275 = !DILocation(line: 360, column: 5, scope: !1119)
!1276 = !DILocation(line: 361, column: 1, scope: !1119)
!1277 = distinct !DISubprogram(name: "item_make_header", scope: !3, file: !3, line: 165, type: !1278, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1281)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!144, !717, !657, !554, !143, !1280}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!1281 = !{!1282, !1283, !1284, !1285, !1286}
!1282 = !DILocalVariable(name: "nkey", arg: 1, scope: !1277, file: !3, line: 165, type: !717)
!1283 = !DILocalVariable(name: "flags", arg: 2, scope: !1277, file: !3, line: 165, type: !657)
!1284 = !DILocalVariable(name: "nbytes", arg: 3, scope: !1277, file: !3, line: 165, type: !554)
!1285 = !DILocalVariable(name: "suffix", arg: 4, scope: !1277, file: !3, line: 166, type: !143)
!1286 = !DILocalVariable(name: "nsuffix", arg: 5, scope: !1277, file: !3, line: 166, type: !1280)
!1287 = !DILocation(line: 0, scope: !1277)
!1288 = !DILocation(line: 167, column: 15, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 167, column: 9)
!1290 = !DILocation(line: 0, scope: !1289)
!1291 = !DILocation(line: 172, column: 27, scope: !1277)
!1292 = !DILocation(line: 172, column: 25, scope: !1277)
!1293 = !DILocation(line: 172, column: 34, scope: !1277)
!1294 = !DILocation(line: 172, column: 45, scope: !1277)
!1295 = !DILocation(line: 172, column: 32, scope: !1277)
!1296 = !DILocation(line: 172, column: 43, scope: !1277)
!1297 = !DILocation(line: 172, column: 5, scope: !1277)
!1298 = !DISubprogram(name: "memcpy", scope: !547, file: !547, line: 43, type: !1299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!95, !1301, !1302, !144}
!1301 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !95)
!1302 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !239)
!1303 = distinct !DISubprogram(name: "item_free", scope: !3, file: !3, line: 363, type: !1304, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1306)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !260}
!1306 = !{!1307, !1308, !1309}
!1307 = !DILocalVariable(name: "it", arg: 1, scope: !1303, file: !3, line: 363, type: !260)
!1308 = !DILocalVariable(name: "ntotal", scope: !1303, file: !3, line: 364, type: !144)
!1309 = !DILocalVariable(name: "clsid", scope: !1303, file: !3, line: 365, type: !7)
!1310 = !DILocation(line: 0, scope: !1303)
!1311 = !DILocation(line: 364, column: 21, scope: !1303)
!1312 = !DILocation(line: 366, column: 5, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 366, column: 5)
!1314 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 366, column: 5)
!1315 = !DILocation(line: 366, column: 5, scope: !1314)
!1316 = !DILocation(line: 367, column: 5, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 367, column: 5)
!1318 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 367, column: 5)
!1319 = !DILocation(line: 367, column: 5, scope: !1318)
!1320 = !DILocation(line: 368, column: 5, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 368, column: 5)
!1322 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 368, column: 5)
!1323 = !DILocation(line: 368, column: 5, scope: !1322)
!1324 = !DILocation(line: 369, column: 5, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 369, column: 5)
!1326 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 369, column: 5)
!1327 = !DILocation(line: 369, column: 5, scope: !1326)
!1328 = !DILocation(line: 372, column: 13, scope: !1303)
!1329 = !DILocation(line: 374, column: 16, scope: !1303)
!1330 = !DILocation(line: 374, column: 5, scope: !1303)
!1331 = !DILocation(line: 375, column: 1, scope: !1303)
!1332 = !DISubprogram(name: "slabs_free", scope: !77, file: !77, line: 29, type: !1333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{null, !95, !144, !7}
!1335 = distinct !DISubprogram(name: "item_size_ok", scope: !3, file: !3, line: 381, type: !1336, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1338)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!301, !656, !554, !554}
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344}
!1339 = !DILocalVariable(name: "nkey", arg: 1, scope: !1335, file: !3, line: 381, type: !656)
!1340 = !DILocalVariable(name: "flags", arg: 2, scope: !1335, file: !3, line: 381, type: !554)
!1341 = !DILocalVariable(name: "nbytes", arg: 3, scope: !1335, file: !3, line: 381, type: !554)
!1342 = !DILocalVariable(name: "prefix", scope: !1335, file: !3, line: 382, type: !180)
!1343 = !DILocalVariable(name: "nsuffix", scope: !1335, file: !3, line: 383, type: !121)
!1344 = !DILocalVariable(name: "ntotal", scope: !1335, file: !3, line: 387, type: !144)
!1345 = !DILocation(line: 0, scope: !1335)
!1346 = !DILocation(line: 383, column: 5, scope: !1335)
!1347 = !DILocation(line: 384, column: 16, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 384, column: 9)
!1349 = !DILocation(line: 384, column: 9, scope: !1335)
!1350 = !DILocation(line: 385, column: 9, scope: !1348)
!1351 = !DILocation(line: 387, column: 38, scope: !1335)
!1352 = !DILocation(line: 387, column: 21, scope: !1335)
!1353 = !DILocation(line: 389, column: 18, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 389, column: 9)
!1355 = !DILocation(line: 389, column: 9, scope: !1335)
!1356 = !DILocation(line: 390, column: 16, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 389, column: 27)
!1358 = !DILocation(line: 391, column: 5, scope: !1357)
!1359 = !DILocation(line: 393, column: 24, scope: !1335)
!1360 = !DILocation(line: 393, column: 12, scope: !1335)
!1361 = !DILocation(line: 393, column: 32, scope: !1335)
!1362 = !DILocation(line: 394, column: 1, scope: !1335)
!1363 = distinct !DISubprogram(name: "do_item_link_fixup", scope: !3, file: !3, line: 397, type: !1304, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1364)
!1364 = !{!1365, !1366, !1368, !1369, !1370}
!1365 = !DILocalVariable(name: "it", arg: 1, scope: !1363, file: !3, line: 397, type: !260)
!1366 = !DILocalVariable(name: "head", scope: !1363, file: !3, line: 398, type: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1368 = !DILocalVariable(name: "tail", scope: !1363, file: !3, line: 398, type: !1367)
!1369 = !DILocalVariable(name: "ntotal", scope: !1363, file: !3, line: 399, type: !114)
!1370 = !DILocalVariable(name: "hv", scope: !1363, file: !3, line: 400, type: !263)
!1371 = !DILocation(line: 0, scope: !1363)
!1372 = !DILocation(line: 399, column: 18, scope: !1363)
!1373 = !DILocation(line: 400, column: 19, scope: !1363)
!1374 = !DILocation(line: 400, column: 24, scope: !1363)
!1375 = !DILocation(line: 401, column: 5, scope: !1363)
!1376 = !DILocation(line: 403, column: 23, scope: !1363)
!1377 = !DILocation(line: 403, column: 13, scope: !1363)
!1378 = !DILocation(line: 404, column: 13, scope: !1363)
!1379 = !DILocation(line: 405, column: 13, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 405, column: 9)
!1381 = !DILocation(line: 405, column: 18, scope: !1380)
!1382 = !DILocation(line: 405, column: 23, scope: !1380)
!1383 = !DILocation(line: 405, column: 27, scope: !1380)
!1384 = !DILocation(line: 405, column: 26, scope: !1380)
!1385 = !DILocation(line: 405, column: 32, scope: !1380)
!1386 = !DILocation(line: 405, column: 9, scope: !1363)
!1387 = !DILocation(line: 405, column: 46, scope: !1380)
!1388 = !DILocation(line: 405, column: 44, scope: !1380)
!1389 = !DILocation(line: 405, column: 38, scope: !1380)
!1390 = !DILocation(line: 406, column: 13, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 406, column: 9)
!1392 = !DILocation(line: 406, column: 18, scope: !1391)
!1393 = !DILocation(line: 406, column: 23, scope: !1391)
!1394 = !DILocation(line: 406, column: 27, scope: !1391)
!1395 = !DILocation(line: 406, column: 26, scope: !1391)
!1396 = !DILocation(line: 406, column: 32, scope: !1391)
!1397 = !DILocation(line: 406, column: 9, scope: !1363)
!1398 = !DILocation(line: 406, column: 46, scope: !1391)
!1399 = !DILocation(line: 406, column: 44, scope: !1391)
!1400 = !DILocation(line: 406, column: 38, scope: !1391)
!1401 = !DILocation(line: 407, column: 5, scope: !1363)
!1402 = !DILocation(line: 407, column: 27, scope: !1363)
!1403 = !DILocation(line: 408, column: 37, scope: !1363)
!1404 = !DILocation(line: 408, column: 5, scope: !1363)
!1405 = !DILocation(line: 408, column: 34, scope: !1363)
!1406 = !DILocation(line: 410, column: 5, scope: !1363)
!1407 = !DILocation(line: 412, column: 28, scope: !1363)
!1408 = !DILocation(line: 413, column: 23, scope: !1363)
!1409 = !{!1410, !567, i64 0}
!1410 = !{!"stats", !567, i64 0, !567, i64 8, !567, i64 16, !567, i64 24, !567, i64 32, !567, i64 40, !567, i64 48, !567, i64 56, !567, i64 64, !567, i64 72, !567, i64 80, !567, i64 88, !567, i64 96, !567, i64 104, !567, i64 112, !567, i64 120, !567, i64 128, !567, i64 136, !567, i64 144, !567, i64 152, !567, i64 160, !567, i64 168, !1411, i64 176, !567, i64 192, !567, i64 200}
!1411 = !{!"timeval", !567, i64 0, !567, i64 8}
!1412 = !DILocation(line: 414, column: 5, scope: !1363)
!1413 = !DILocation(line: 416, column: 5, scope: !1363)
!1414 = !DILocation(line: 419, column: 1, scope: !1363)
!1415 = !DISubprogram(name: "assoc_insert", scope: !1416, file: !1416, line: 4, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1416 = !DIFile(filename: "./assoc.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d97284e3db472a02a2024ce98e65eb75")
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!114, !260, !1419}
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!1420 = !DISubprogram(name: "STATS_LOCK", scope: !6, file: !6, line: 991, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1421 = !DISubprogram(name: "STATS_UNLOCK", scope: !6, file: !6, line: 992, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1422 = distinct !DISubprogram(name: "item_stats_sizes_add", scope: !3, file: !3, line: 930, type: !1304, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1423)
!1423 = !{!1424, !1425, !1426}
!1424 = !DILocalVariable(name: "it", arg: 1, scope: !1422, file: !3, line: 930, type: !260)
!1425 = !DILocalVariable(name: "ntotal", scope: !1422, file: !3, line: 933, type: !114)
!1426 = !DILocalVariable(name: "bucket", scope: !1422, file: !3, line: 934, type: !114)
!1427 = !DILocation(line: 0, scope: !1422)
!1428 = !DILocation(line: 931, column: 9, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 931, column: 9)
!1430 = !DILocation(line: 931, column: 26, scope: !1429)
!1431 = !DILocation(line: 931, column: 34, scope: !1429)
!1432 = !DILocation(line: 931, column: 37, scope: !1429)
!1433 = !DILocation(line: 931, column: 59, scope: !1429)
!1434 = !DILocation(line: 931, column: 57, scope: !1429)
!1435 = !DILocation(line: 931, column: 9, scope: !1422)
!1436 = !DILocation(line: 932, column: 9, scope: !1429)
!1437 = !DILocation(line: 933, column: 18, scope: !1422)
!1438 = !DILocation(line: 934, column: 25, scope: !1422)
!1439 = !DILocation(line: 935, column: 23, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 935, column: 9)
!1441 = !DILocation(line: 935, column: 9, scope: !1422)
!1442 = !DILocation(line: 935, column: 35, scope: !1440)
!1443 = !DILocation(line: 935, column: 29, scope: !1440)
!1444 = !DILocation(line: 936, column: 18, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 936, column: 9)
!1446 = !DILocation(line: 936, column: 16, scope: !1445)
!1447 = !DILocation(line: 936, column: 9, scope: !1422)
!1448 = !DILocation(line: 936, column: 39, scope: !1445)
!1449 = !DILocation(line: 936, column: 63, scope: !1445)
!1450 = !DILocation(line: 937, column: 1, scope: !1422)
!1451 = distinct !DISubprogram(name: "do_item_link", scope: !3, file: !3, line: 499, type: !1417, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1452)
!1452 = !{!1453, !1454}
!1453 = !DILocalVariable(name: "it", arg: 1, scope: !1451, file: !3, line: 499, type: !260)
!1454 = !DILocalVariable(name: "hv", arg: 2, scope: !1451, file: !3, line: 499, type: !1419)
!1455 = !DILocation(line: 0, scope: !1451)
!1456 = !DILocation(line: 501, column: 5, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 501, column: 5)
!1458 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 501, column: 5)
!1459 = !DILocation(line: 501, column: 5, scope: !1458)
!1460 = !DILocation(line: 502, column: 18, scope: !1451)
!1461 = !DILocation(line: 503, column: 16, scope: !1451)
!1462 = !DILocation(line: 503, column: 9, scope: !1451)
!1463 = !DILocation(line: 503, column: 14, scope: !1451)
!1464 = !DILocation(line: 505, column: 5, scope: !1451)
!1465 = !DILocation(line: 506, column: 31, scope: !1451)
!1466 = !DILocation(line: 506, column: 28, scope: !1451)
!1467 = !{!1468, !567, i64 8}
!1468 = !{!"stats_state", !567, i64 0, !567, i64 8, !567, i64 16, !567, i64 24, !570, i64 32, !570, i64 36, !570, i64 40, !570, i64 44, !613, i64 48, !613, i64 49, !613, i64 50, !613, i64 51}
!1469 = !DILocation(line: 507, column: 28, scope: !1451)
!1470 = !{!1468, !567, i64 0}
!1471 = !DILocation(line: 508, column: 23, scope: !1451)
!1472 = !DILocation(line: 509, column: 5, scope: !1451)
!1473 = !DILocation(line: 512, column: 5, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 512, column: 5)
!1475 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 512, column: 5)
!1476 = !DILocation(line: 512, column: 5, scope: !1475)
!1477 = !DILocation(line: 512, column: 5, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 512, column: 5)
!1479 = !DILocation(line: 513, column: 5, scope: !1451)
!1480 = !DILocation(line: 514, column: 5, scope: !1451)
!1481 = !DILocation(line: 515, column: 5, scope: !1451)
!1482 = !DILocation(line: 516, column: 5, scope: !1451)
!1483 = !DILocation(line: 518, column: 5, scope: !1451)
!1484 = distinct !DISubprogram(name: "item_link_q", scope: !3, file: !3, line: 448, type: !1304, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1485)
!1485 = !{!1486}
!1486 = !DILocalVariable(name: "it", arg: 1, scope: !1484, file: !3, line: 448, type: !260)
!1487 = !DILocation(line: 0, scope: !1484)
!1488 = !DILocation(line: 449, column: 39, scope: !1484)
!1489 = !DILocation(line: 449, column: 25, scope: !1484)
!1490 = !DILocation(line: 449, column: 5, scope: !1484)
!1491 = !DILocation(line: 450, column: 5, scope: !1484)
!1492 = !DILocation(line: 451, column: 41, scope: !1484)
!1493 = !DILocation(line: 451, column: 27, scope: !1484)
!1494 = !DILocation(line: 451, column: 5, scope: !1484)
!1495 = !DILocation(line: 452, column: 1, scope: !1484)
!1496 = distinct !DISubprogram(name: "do_item_unlink", scope: !3, file: !3, line: 521, type: !1497, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !260, !1419}
!1499 = !{!1500, !1501}
!1500 = !DILocalVariable(name: "it", arg: 1, scope: !1496, file: !3, line: 521, type: !260)
!1501 = !DILocalVariable(name: "hv", arg: 2, scope: !1496, file: !3, line: 521, type: !1419)
!1502 = !DILocation(line: 0, scope: !1496)
!1503 = !DILocation(line: 523, column: 14, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 523, column: 9)
!1505 = !DILocation(line: 523, column: 23, scope: !1504)
!1506 = !DILocation(line: 523, column: 38, scope: !1504)
!1507 = !DILocation(line: 523, column: 9, scope: !1496)
!1508 = !DILocation(line: 524, column: 9, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 523, column: 44)
!1510 = !DILocation(line: 524, column: 22, scope: !1509)
!1511 = !DILocation(line: 525, column: 9, scope: !1509)
!1512 = !DILocation(line: 526, column: 35, scope: !1509)
!1513 = !DILocation(line: 526, column: 32, scope: !1509)
!1514 = !DILocation(line: 527, column: 32, scope: !1509)
!1515 = !DILocation(line: 528, column: 9, scope: !1509)
!1516 = !DILocation(line: 529, column: 9, scope: !1509)
!1517 = !DILocation(line: 530, column: 22, scope: !1509)
!1518 = !DILocation(line: 530, column: 40, scope: !1509)
!1519 = !DILocation(line: 530, column: 36, scope: !1509)
!1520 = !DILocation(line: 530, column: 9, scope: !1509)
!1521 = !DILocation(line: 531, column: 9, scope: !1509)
!1522 = !DILocation(line: 532, column: 9, scope: !1509)
!1523 = !DILocation(line: 533, column: 5, scope: !1509)
!1524 = !DILocation(line: 534, column: 1, scope: !1496)
!1525 = distinct !DISubprogram(name: "item_stats_sizes_remove", scope: !3, file: !3, line: 942, type: !1304, scopeLine: 942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1526)
!1526 = !{!1527, !1528, !1529}
!1527 = !DILocalVariable(name: "it", arg: 1, scope: !1525, file: !3, line: 942, type: !260)
!1528 = !DILocalVariable(name: "ntotal", scope: !1525, file: !3, line: 945, type: !114)
!1529 = !DILocalVariable(name: "bucket", scope: !1525, file: !3, line: 946, type: !114)
!1530 = !DILocation(line: 0, scope: !1525)
!1531 = !DILocation(line: 943, column: 9, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 943, column: 9)
!1533 = !DILocation(line: 943, column: 26, scope: !1532)
!1534 = !DILocation(line: 943, column: 34, scope: !1532)
!1535 = !DILocation(line: 943, column: 37, scope: !1532)
!1536 = !DILocation(line: 943, column: 59, scope: !1532)
!1537 = !DILocation(line: 943, column: 57, scope: !1532)
!1538 = !DILocation(line: 943, column: 9, scope: !1525)
!1539 = !DILocation(line: 944, column: 9, scope: !1532)
!1540 = !DILocation(line: 945, column: 18, scope: !1525)
!1541 = !DILocation(line: 946, column: 25, scope: !1525)
!1542 = !DILocation(line: 947, column: 23, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 947, column: 9)
!1544 = !DILocation(line: 947, column: 9, scope: !1525)
!1545 = !DILocation(line: 947, column: 35, scope: !1543)
!1546 = !DILocation(line: 947, column: 29, scope: !1543)
!1547 = !DILocation(line: 948, column: 18, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 948, column: 9)
!1549 = !DILocation(line: 948, column: 16, scope: !1548)
!1550 = !DILocation(line: 948, column: 9, scope: !1525)
!1551 = !DILocation(line: 948, column: 39, scope: !1548)
!1552 = !DILocation(line: 948, column: 63, scope: !1548)
!1553 = !DILocation(line: 949, column: 1, scope: !1525)
!1554 = !DISubprogram(name: "assoc_delete", scope: !1416, file: !1416, line: 5, type: !1555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{null, !1557, !656, !1419}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!1559 = distinct !DISubprogram(name: "item_unlink_q", scope: !3, file: !3, line: 493, type: !1304, scopeLine: 493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1560)
!1560 = !{!1561}
!1561 = !DILocalVariable(name: "it", arg: 1, scope: !1559, file: !3, line: 493, type: !260)
!1562 = !DILocation(line: 0, scope: !1559)
!1563 = !DILocation(line: 494, column: 39, scope: !1559)
!1564 = !DILocation(line: 494, column: 25, scope: !1559)
!1565 = !DILocation(line: 494, column: 5, scope: !1559)
!1566 = !DILocation(line: 495, column: 5, scope: !1559)
!1567 = !DILocation(line: 496, column: 41, scope: !1559)
!1568 = !DILocation(line: 496, column: 27, scope: !1559)
!1569 = !DILocation(line: 496, column: 5, scope: !1559)
!1570 = !DILocation(line: 497, column: 1, scope: !1559)
!1571 = distinct !DISubprogram(name: "do_item_remove", scope: !3, file: !3, line: 552, type: !1304, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1572)
!1572 = !{!1573}
!1573 = !DILocalVariable(name: "it", arg: 1, scope: !1571, file: !3, line: 552, type: !260)
!1574 = !DILocation(line: 0, scope: !1571)
!1575 = !DILocation(line: 554, column: 5, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 554, column: 5)
!1577 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 554, column: 5)
!1578 = !DILocation(line: 554, column: 5, scope: !1577)
!1579 = !DILocation(line: 555, column: 5, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 555, column: 5)
!1581 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 555, column: 5)
!1582 = !DILocation(line: 555, column: 5, scope: !1581)
!1583 = !DILocation(line: 557, column: 9, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 557, column: 9)
!1585 = !DILocation(line: 557, column: 27, scope: !1584)
!1586 = !DILocation(line: 557, column: 9, scope: !1571)
!1587 = !DILocation(line: 558, column: 19, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 557, column: 33)
!1589 = !DILocation(line: 558, column: 9, scope: !1588)
!1590 = !DILocation(line: 559, column: 5, scope: !1588)
!1591 = !DILocation(line: 560, column: 1, scope: !1571)
!1592 = distinct !DISubprogram(name: "do_item_unlink_nolock", scope: !3, file: !3, line: 537, type: !1497, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1593)
!1593 = !{!1594, !1595}
!1594 = !DILocalVariable(name: "it", arg: 1, scope: !1592, file: !3, line: 537, type: !260)
!1595 = !DILocalVariable(name: "hv", arg: 2, scope: !1592, file: !3, line: 537, type: !1419)
!1596 = !DILocation(line: 0, scope: !1592)
!1597 = !DILocation(line: 539, column: 14, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 539, column: 9)
!1599 = !DILocation(line: 539, column: 23, scope: !1598)
!1600 = !DILocation(line: 539, column: 38, scope: !1598)
!1601 = !DILocation(line: 539, column: 9, scope: !1592)
!1602 = !DILocation(line: 540, column: 9, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 539, column: 44)
!1604 = !DILocation(line: 540, column: 22, scope: !1603)
!1605 = !DILocation(line: 541, column: 9, scope: !1603)
!1606 = !DILocation(line: 542, column: 35, scope: !1603)
!1607 = !DILocation(line: 542, column: 32, scope: !1603)
!1608 = !DILocation(line: 543, column: 32, scope: !1603)
!1609 = !DILocation(line: 544, column: 9, scope: !1603)
!1610 = !DILocation(line: 545, column: 9, scope: !1603)
!1611 = !DILocation(line: 546, column: 22, scope: !1603)
!1612 = !DILocation(line: 546, column: 40, scope: !1603)
!1613 = !DILocation(line: 546, column: 36, scope: !1603)
!1614 = !DILocation(line: 546, column: 9, scope: !1603)
!1615 = !DILocation(line: 547, column: 9, scope: !1603)
!1616 = !DILocation(line: 548, column: 9, scope: !1603)
!1617 = !DILocation(line: 549, column: 5, scope: !1603)
!1618 = !DILocation(line: 550, column: 1, scope: !1592)
!1619 = distinct !DISubprogram(name: "do_item_unlink_q", scope: !3, file: !3, line: 461, type: !1304, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1620)
!1620 = !{!1621, !1622, !1623}
!1621 = !DILocalVariable(name: "it", arg: 1, scope: !1619, file: !3, line: 461, type: !260)
!1622 = !DILocalVariable(name: "head", scope: !1619, file: !3, line: 462, type: !1367)
!1623 = !DILocalVariable(name: "tail", scope: !1619, file: !3, line: 462, type: !1367)
!1624 = !DILocation(line: 0, scope: !1619)
!1625 = !DILocation(line: 463, column: 23, scope: !1619)
!1626 = !DILocation(line: 463, column: 13, scope: !1619)
!1627 = !DILocation(line: 464, column: 13, scope: !1619)
!1628 = !DILocation(line: 466, column: 9, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 466, column: 9)
!1630 = !DILocation(line: 466, column: 15, scope: !1629)
!1631 = !DILocation(line: 466, column: 9, scope: !1619)
!1632 = !DILocation(line: 467, column: 9, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 467, column: 9)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 467, column: 9)
!1635 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 466, column: 22)
!1636 = !DILocation(line: 467, column: 9, scope: !1634)
!1637 = !DILocation(line: 468, column: 21, scope: !1635)
!1638 = !DILocation(line: 468, column: 15, scope: !1635)
!1639 = !DILocation(line: 469, column: 5, scope: !1635)
!1640 = !DILocation(line: 470, column: 9, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 470, column: 9)
!1642 = !DILocation(line: 470, column: 15, scope: !1641)
!1643 = !DILocation(line: 470, column: 9, scope: !1619)
!1644 = !DILocation(line: 471, column: 9, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 471, column: 9)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 471, column: 9)
!1647 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 470, column: 22)
!1648 = !DILocation(line: 471, column: 9, scope: !1646)
!1649 = !DILocation(line: 472, column: 17, scope: !1647)
!1650 = !DILocation(line: 472, column: 21, scope: !1647)
!1651 = !DILocation(line: 472, column: 15, scope: !1647)
!1652 = !DILocation(line: 473, column: 5, scope: !1647)
!1653 = !DILocation(line: 474, column: 5, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 474, column: 5)
!1655 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 474, column: 5)
!1656 = !DILocation(line: 474, column: 5, scope: !1655)
!1657 = !DILocation(line: 475, column: 5, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 475, column: 5)
!1659 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 475, column: 5)
!1660 = !DILocation(line: 475, column: 5, scope: !1659)
!1661 = !DILocation(line: 477, column: 9, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 477, column: 9)
!1663 = !DILocation(line: 477, column: 9, scope: !1619)
!1664 = !DILocation(line: 477, column: 36, scope: !1662)
!1665 = !DILocation(line: 477, column: 40, scope: !1662)
!1666 = !DILocation(line: 477, column: 23, scope: !1662)
!1667 = !DILocation(line: 477, column: 29, scope: !1662)
!1668 = !DILocation(line: 477, column: 34, scope: !1662)
!1669 = !DILocation(line: 478, column: 13, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 478, column: 9)
!1671 = !DILocation(line: 477, column: 19, scope: !1662)
!1672 = !DILocation(line: 478, column: 9, scope: !1670)
!1673 = !DILocation(line: 478, column: 9, scope: !1619)
!1674 = !DILocation(line: 478, column: 36, scope: !1670)
!1675 = !DILocation(line: 478, column: 40, scope: !1670)
!1676 = !DILocation(line: 478, column: 23, scope: !1670)
!1677 = !DILocation(line: 478, column: 29, scope: !1670)
!1678 = !DILocation(line: 478, column: 34, scope: !1670)
!1679 = !DILocation(line: 478, column: 19, scope: !1670)
!1680 = !DILocation(line: 479, column: 15, scope: !1619)
!1681 = !DILocation(line: 479, column: 5, scope: !1619)
!1682 = !DILocation(line: 479, column: 27, scope: !1619)
!1683 = !DILocation(line: 481, column: 13, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 481, column: 9)
!1685 = !DILocation(line: 481, column: 22, scope: !1684)
!1686 = !DILocation(line: 481, column: 9, scope: !1619)
!1687 = !DILocation(line: 482, column: 42, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 481, column: 34)
!1689 = !DILocation(line: 482, column: 25, scope: !1688)
!1690 = !DILocation(line: 482, column: 9, scope: !1688)
!1691 = !DILocation(line: 482, column: 38, scope: !1688)
!1692 = !DILocation(line: 482, column: 72, scope: !1688)
!1693 = !DILocation(line: 483, column: 5, scope: !1688)
!1694 = !DILocation(line: 484, column: 41, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 483, column: 12)
!1696 = !DILocation(line: 484, column: 25, scope: !1695)
!1697 = !DILocation(line: 484, column: 9, scope: !1695)
!1698 = !DILocation(line: 484, column: 38, scope: !1695)
!1699 = !DILocation(line: 491, column: 1, scope: !1619)
!1700 = distinct !DISubprogram(name: "do_item_update", scope: !3, file: !3, line: 563, type: !1304, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1701)
!1701 = !{!1702}
!1702 = !DILocalVariable(name: "it", arg: 1, scope: !1700, file: !3, line: 563, type: !260)
!1703 = !DILocation(line: 0, scope: !1700)
!1704 = !DILocation(line: 567, column: 18, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 567, column: 9)
!1706 = !DILocation(line: 567, column: 9, scope: !1700)
!1707 = !DILocation(line: 568, column: 9, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 568, column: 9)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 568, column: 9)
!1710 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 567, column: 33)
!1711 = !DILocation(line: 568, column: 9, scope: !1709)
!1712 = !DILocation(line: 569, column: 27, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 569, column: 13)
!1714 = !DILocation(line: 569, column: 42, scope: !1713)
!1715 = !DILocation(line: 569, column: 13, scope: !1710)
!1716 = !DILocation(line: 570, column: 17, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 570, column: 17)
!1718 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 569, column: 48)
!1719 = !DILocation(line: 570, column: 32, scope: !1717)
!1720 = !DILocation(line: 570, column: 44, scope: !1717)
!1721 = !DILocation(line: 570, column: 48, scope: !1717)
!1722 = !DILocation(line: 570, column: 61, scope: !1717)
!1723 = !DILocation(line: 570, column: 17, scope: !1718)
!1724 = !DILocation(line: 571, column: 28, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 570, column: 77)
!1726 = !DILocation(line: 571, column: 21, scope: !1725)
!1727 = !DILocation(line: 571, column: 26, scope: !1725)
!1728 = !DILocation(line: 572, column: 17, scope: !1725)
!1729 = !DILocation(line: 573, column: 35, scope: !1725)
!1730 = !DILocation(line: 574, column: 33, scope: !1725)
!1731 = !DILocation(line: 575, column: 30, scope: !1725)
!1732 = !DILocation(line: 576, column: 17, scope: !1725)
!1733 = !DILocation(line: 577, column: 13, scope: !1725)
!1734 = !DILocation(line: 578, column: 28, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 577, column: 20)
!1736 = !DILocation(line: 578, column: 21, scope: !1735)
!1737 = !DILocation(line: 578, column: 26, scope: !1735)
!1738 = !DILocation(line: 581, column: 5, scope: !1710)
!1739 = !DILocation(line: 581, column: 16, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 581, column: 16)
!1741 = !DILocation(line: 581, column: 20, scope: !1740)
!1742 = !DILocation(line: 581, column: 27, scope: !1740)
!1743 = !DILocation(line: 581, column: 40, scope: !1740)
!1744 = !DILocation(line: 581, column: 25, scope: !1740)
!1745 = !DILocation(line: 581, column: 16, scope: !1705)
!1746 = !DILocation(line: 582, column: 9, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 582, column: 9)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 582, column: 9)
!1749 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 581, column: 64)
!1750 = !DILocation(line: 582, column: 9, scope: !1748)
!1751 = !DILocation(line: 584, column: 27, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 584, column: 13)
!1753 = !DILocation(line: 584, column: 42, scope: !1752)
!1754 = !DILocation(line: 584, column: 13, scope: !1749)
!1755 = !DILocation(line: 585, column: 24, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 584, column: 48)
!1757 = !DILocation(line: 585, column: 22, scope: !1756)
!1758 = !DILocation(line: 586, column: 13, scope: !1756)
!1759 = !DILocation(line: 587, column: 13, scope: !1756)
!1760 = !DILocation(line: 588, column: 9, scope: !1756)
!1761 = !DILocation(line: 589, column: 5, scope: !1749)
!1762 = !DILocation(line: 590, column: 1, scope: !1700)
!1763 = distinct !DISubprogram(name: "item_link_q_warm", scope: !3, file: !3, line: 454, type: !1304, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1764)
!1764 = !{!1765}
!1765 = !DILocalVariable(name: "it", arg: 1, scope: !1763, file: !3, line: 454, type: !260)
!1766 = !DILocation(line: 0, scope: !1763)
!1767 = !DILocation(line: 455, column: 39, scope: !1763)
!1768 = !DILocation(line: 455, column: 25, scope: !1763)
!1769 = !DILocation(line: 455, column: 5, scope: !1763)
!1770 = !DILocation(line: 456, column: 5, scope: !1763)
!1771 = !DILocation(line: 457, column: 19, scope: !1763)
!1772 = !DILocation(line: 457, column: 5, scope: !1763)
!1773 = !DILocation(line: 457, column: 32, scope: !1763)
!1774 = !DILocation(line: 457, column: 45, scope: !1763)
!1775 = !DILocation(line: 458, column: 41, scope: !1763)
!1776 = !DILocation(line: 458, column: 27, scope: !1763)
!1777 = !DILocation(line: 458, column: 5, scope: !1763)
!1778 = !DILocation(line: 459, column: 1, scope: !1763)
!1779 = distinct !DISubprogram(name: "do_item_replace", scope: !3, file: !3, line: 592, type: !1780, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1782)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!114, !260, !260, !1419}
!1782 = !{!1783, !1784, !1785}
!1783 = !DILocalVariable(name: "it", arg: 1, scope: !1779, file: !3, line: 592, type: !260)
!1784 = !DILocalVariable(name: "new_it", arg: 2, scope: !1779, file: !3, line: 592, type: !260)
!1785 = !DILocalVariable(name: "hv", arg: 3, scope: !1779, file: !3, line: 592, type: !1419)
!1786 = !DILocation(line: 0, scope: !1779)
!1787 = !DILocation(line: 595, column: 5, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 595, column: 5)
!1789 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 595, column: 5)
!1790 = !DILocation(line: 595, column: 5, scope: !1789)
!1791 = !DILocation(line: 597, column: 5, scope: !1779)
!1792 = !DILocation(line: 598, column: 12, scope: !1779)
!1793 = !DILocation(line: 598, column: 5, scope: !1779)
!1794 = distinct !DISubprogram(name: "item_cachedump", scope: !3, file: !3, line: 608, type: !1795, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1797)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!143, !657, !657, !403}
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1811, !1815}
!1798 = !DILocalVariable(name: "slabs_clsid", arg: 1, scope: !1794, file: !3, line: 608, type: !657)
!1799 = !DILocalVariable(name: "limit", arg: 2, scope: !1794, file: !3, line: 608, type: !657)
!1800 = !DILocalVariable(name: "bytes", arg: 3, scope: !1794, file: !3, line: 608, type: !403)
!1801 = !DILocalVariable(name: "memlimit", scope: !1794, file: !3, line: 609, type: !7)
!1802 = !DILocalVariable(name: "buffer", scope: !1794, file: !3, line: 610, type: !143)
!1803 = !DILocalVariable(name: "bufcurr", scope: !1794, file: !3, line: 611, type: !7)
!1804 = !DILocalVariable(name: "it", scope: !1794, file: !3, line: 612, type: !260)
!1805 = !DILocalVariable(name: "len", scope: !1794, file: !3, line: 613, type: !7)
!1806 = !DILocalVariable(name: "shown", scope: !1794, file: !3, line: 614, type: !7)
!1807 = !DILocalVariable(name: "key_temp", scope: !1794, file: !3, line: 615, type: !1808)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 2008, elements: !1809)
!1809 = !{!1810}
!1810 = !DISubrange(count: 251)
!1811 = !DILocalVariable(name: "temp", scope: !1794, file: !3, line: 616, type: !1812)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 4096, elements: !1813)
!1813 = !{!1814}
!1814 = !DISubrange(count: 512)
!1815 = !DILocalVariable(name: "id", scope: !1794, file: !3, line: 617, type: !7)
!1816 = !DILocation(line: 0, scope: !1794)
!1817 = !DILocation(line: 615, column: 5, scope: !1794)
!1818 = !DILocation(line: 615, column: 10, scope: !1794)
!1819 = !DILocation(line: 616, column: 5, scope: !1794)
!1820 = !DILocation(line: 616, column: 10, scope: !1794)
!1821 = !DILocation(line: 618, column: 8, scope: !1794)
!1822 = !DILocation(line: 620, column: 25, scope: !1794)
!1823 = !DILocation(line: 620, column: 5, scope: !1794)
!1824 = !DILocation(line: 621, column: 10, scope: !1794)
!1825 = !DILocation(line: 623, column: 14, scope: !1794)
!1826 = !DILocation(line: 624, column: 16, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 624, column: 9)
!1828 = !DILocation(line: 624, column: 9, scope: !1794)
!1829 = !DILocation(line: 625, column: 41, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 624, column: 22)
!1831 = !DILocation(line: 625, column: 9, scope: !1830)
!1832 = !DILocation(line: 626, column: 9, scope: !1830)
!1833 = !DILocation(line: 628, column: 13, scope: !1794)
!1834 = !DILocation(line: 630, column: 15, scope: !1794)
!1835 = !DILocation(line: 630, column: 23, scope: !1794)
!1836 = !DILocation(line: 630, column: 38, scope: !1794)
!1837 = !DILocation(line: 630, column: 41, scope: !1794)
!1838 = !DILocation(line: 630, column: 5, scope: !1794)
!1839 = !DILocation(line: 631, column: 9, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 631, column: 9)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 631, column: 9)
!1842 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 630, column: 57)
!1843 = !DILocation(line: 631, column: 9, scope: !1841)
!1844 = !DILocation(line: 633, column: 18, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 633, column: 13)
!1846 = !DILocation(line: 633, column: 25, scope: !1845)
!1847 = !DILocation(line: 633, column: 30, scope: !1845)
!1848 = !DILocation(line: 633, column: 33, scope: !1845)
!1849 = !DILocation(line: 633, column: 37, scope: !1845)
!1850 = !DILocation(line: 633, column: 42, scope: !1845)
!1851 = !DILocation(line: 633, column: 48, scope: !1845)
!1852 = !DILocation(line: 633, column: 56, scope: !1845)
!1853 = !DILocation(line: 633, column: 65, scope: !1845)
!1854 = !DILocation(line: 633, column: 13, scope: !1842)
!1855 = !DILocation(line: 634, column: 18, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 633, column: 85)
!1857 = !DILocation(line: 634, column: 22, scope: !1856)
!1858 = distinct !{!1858, !1838, !1859, !538}
!1859 = !DILocation(line: 650, column: 5, scope: !1794)
!1860 = !DILocation(line: 633, column: 52, scope: !1845)
!1861 = !DILocation(line: 638, column: 27, scope: !1842)
!1862 = !DILocation(line: 638, column: 41, scope: !1842)
!1863 = !DILocation(line: 638, column: 9, scope: !1842)
!1864 = !DILocation(line: 639, column: 22, scope: !1842)
!1865 = !DILocation(line: 639, column: 9, scope: !1842)
!1866 = !DILocation(line: 639, column: 28, scope: !1842)
!1867 = !DILocation(line: 641, column: 38, scope: !1842)
!1868 = !DILocation(line: 641, column: 45, scope: !1842)
!1869 = !DILocation(line: 642, column: 28, scope: !1842)
!1870 = !DILocation(line: 642, column: 36, scope: !1842)
!1871 = !DILocation(line: 642, column: 24, scope: !1842)
!1872 = !DILocation(line: 643, column: 44, scope: !1842)
!1873 = !DILocation(line: 643, column: 48, scope: !1842)
!1874 = !DILocation(line: 643, column: 24, scope: !1842)
!1875 = !DILocation(line: 643, column: 58, scope: !1842)
!1876 = !DILocation(line: 643, column: 56, scope: !1842)
!1877 = !DILocation(line: 640, column: 15, scope: !1842)
!1878 = !DILocation(line: 644, column: 21, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 644, column: 13)
!1880 = !DILocation(line: 644, column: 31, scope: !1879)
!1881 = !DILocation(line: 644, column: 13, scope: !1842)
!1882 = !DILocation(line: 645, column: 13, scope: !1879)
!1883 = !DILocation(line: 646, column: 23, scope: !1842)
!1884 = !DILocation(line: 646, column: 40, scope: !1842)
!1885 = !DILocation(line: 646, column: 9, scope: !1842)
!1886 = !DILocation(line: 648, column: 14, scope: !1842)
!1887 = !DILocation(line: 649, column: 18, scope: !1842)
!1888 = !DILocation(line: 652, column: 19, scope: !1794)
!1889 = !DILocation(line: 652, column: 5, scope: !1794)
!1890 = !DILocation(line: 653, column: 13, scope: !1794)
!1891 = !DILocation(line: 655, column: 12, scope: !1794)
!1892 = !DILocation(line: 656, column: 5, scope: !1794)
!1893 = !DILocation(line: 657, column: 5, scope: !1794)
!1894 = !DILocation(line: 658, column: 1, scope: !1794)
!1895 = !DISubprogram(name: "malloc", scope: !1896, file: !1896, line: 539, type: !1897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1896 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!95, !144}
!1899 = !DISubprogram(name: "strncpy", scope: !547, file: !547, line: 125, type: !1900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!143, !1902, !1903, !144}
!1902 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !143)
!1903 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1557)
!1904 = !DISubprogram(name: "snprintf", scope: !1905, file: !1905, line: 354, type: !1906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!1905 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!114, !1902, !144, !1903, null}
!1908 = distinct !DISubprogram(name: "fill_item_stats_automove", scope: !3, file: !3, line: 663, type: !1909, scopeLine: 663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1921)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !1911}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "item_stats_automove", file: !721, line: 71, baseType: !1913)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !721, line: 67, size: 192, elements: !1914)
!1914 = !{!1915, !1919, !1920}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "evicted", scope: !1913, file: !721, line: 68, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1917, line: 27, baseType: !1918)
!1917 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !184)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "outofmemory", scope: !1913, file: !721, line: 69, baseType: !1916, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !1913, file: !721, line: 70, baseType: !263, size: 32, offset: 128)
!1921 = !{!1922, !1923, !1924, !1928}
!1922 = !DILocalVariable(name: "am", arg: 1, scope: !1908, file: !3, line: 663, type: !1911)
!1923 = !DILocalVariable(name: "n", scope: !1908, file: !3, line: 664, type: !114)
!1924 = !DILocalVariable(name: "cur", scope: !1925, file: !3, line: 666, type: !1911)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 665, column: 54)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 665, column: 5)
!1927 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 665, column: 5)
!1928 = !DILocalVariable(name: "i", scope: !1925, file: !3, line: 669, type: !114)
!1929 = !DILocation(line: 0, scope: !1908)
!1930 = !DILocation(line: 665, column: 5, scope: !1927)
!1931 = !DILocation(line: 0, scope: !1925)
!1932 = !DILocation(line: 670, column: 29, scope: !1925)
!1933 = !DILocation(line: 670, column: 9, scope: !1925)
!1934 = !DILocation(line: 671, column: 41, scope: !1925)
!1935 = !DILocation(line: 671, column: 14, scope: !1925)
!1936 = !DILocation(line: 671, column: 26, scope: !1925)
!1937 = !{!1938, !567, i64 8}
!1938 = !{!"", !567, i64 0, !567, i64 8, !570, i64 16}
!1939 = !DILocation(line: 672, column: 9, scope: !1925)
!1940 = !DILocation(line: 676, column: 29, scope: !1925)
!1941 = !DILocation(line: 676, column: 9, scope: !1925)
!1942 = !DILocation(line: 677, column: 37, scope: !1925)
!1943 = !DILocation(line: 677, column: 14, scope: !1925)
!1944 = !DILocation(line: 677, column: 22, scope: !1925)
!1945 = !{!1938, !567, i64 0}
!1946 = !DILocation(line: 678, column: 14, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 678, column: 13)
!1948 = !DILocation(line: 678, column: 13, scope: !1925)
!1949 = !DILocation(line: 679, column: 13, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 678, column: 24)
!1951 = !DILocation(line: 680, column: 9, scope: !1950)
!1952 = !DILocation(line: 680, column: 30, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 680, column: 20)
!1954 = !DILocation(line: 680, column: 37, scope: !1953)
!1955 = !DILocation(line: 680, column: 42, scope: !1953)
!1956 = !DILocation(line: 680, column: 51, scope: !1953)
!1957 = !DILocation(line: 680, column: 55, scope: !1953)
!1958 = !DILocation(line: 680, column: 60, scope: !1953)
!1959 = !DILocation(line: 680, column: 65, scope: !1953)
!1960 = !DILocation(line: 680, column: 74, scope: !1953)
!1961 = !DILocation(line: 680, column: 78, scope: !1953)
!1962 = !DILocation(line: 680, column: 87, scope: !1953)
!1963 = !DILocation(line: 680, column: 20, scope: !1947)
!1964 = !DILocation(line: 682, column: 27, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 682, column: 17)
!1966 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 680, column: 93)
!1967 = !DILocation(line: 682, column: 17, scope: !1965)
!1968 = !DILocation(line: 682, column: 17, scope: !1966)
!1969 = !DILocation(line: 683, column: 27, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 682, column: 33)
!1971 = !DILocation(line: 683, column: 52, scope: !1970)
!1972 = !DILocation(line: 683, column: 58, scope: !1970)
!1973 = !DILocation(line: 683, column: 40, scope: !1970)
!1974 = !DILocation(line: 684, column: 13, scope: !1970)
!1975 = !DILocation(line: 685, column: 16, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 684, column: 20)
!1977 = !DILocation(line: 688, column: 24, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 687, column: 16)
!1979 = !DILocation(line: 688, column: 49, scope: !1978)
!1980 = !DILocation(line: 688, column: 37, scope: !1978)
!1981 = !DILocation(line: 0, scope: !1947)
!1982 = !{!1938, !570, i64 16}
!1983 = !DILocation(line: 690, column: 9, scope: !1925)
!1984 = !DILocation(line: 665, column: 50, scope: !1926)
!1985 = !DILocation(line: 665, column: 19, scope: !1926)
!1986 = distinct !{!1986, !1930, !1987, !538}
!1987 = !DILocation(line: 691, column: 6, scope: !1927)
!1988 = !DILocation(line: 692, column: 1, scope: !1908)
!1989 = distinct !DISubprogram(name: "item_stats_totals", scope: !3, file: !3, line: 694, type: !1990, scopeLine: 694, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1997)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !1992, !95}
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "ADD_STAT", file: !6, line: 189, baseType: !1993)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{null, !1557, !1996, !1557, !1419, !239}
!1996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!1997 = !{!1998, !1999, !2000, !2001, !2002, !2006}
!1998 = !DILocalVariable(name: "add_stats", arg: 1, scope: !1989, file: !3, line: 694, type: !1992)
!1999 = !DILocalVariable(name: "c", arg: 2, scope: !1989, file: !3, line: 694, type: !95)
!2000 = !DILocalVariable(name: "totals", scope: !1989, file: !3, line: 695, type: !488)
!2001 = !DILocalVariable(name: "n", scope: !1989, file: !3, line: 697, type: !114)
!2002 = !DILocalVariable(name: "x", scope: !2003, file: !3, line: 699, type: !114)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 698, column: 54)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 698, column: 5)
!2005 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 698, column: 5)
!2006 = !DILocalVariable(name: "i", scope: !2003, file: !3, line: 700, type: !114)
!2007 = !DILocation(line: 0, scope: !1989)
!2008 = !DILocation(line: 695, column: 5, scope: !1989)
!2009 = !DILocation(line: 695, column: 17, scope: !1989)
!2010 = !DILocation(line: 696, column: 5, scope: !1989)
!2011 = !DILocation(line: 698, column: 5, scope: !2005)
!2012 = !DILocation(line: 0, scope: !2003)
!2013 = !DILocation(line: 701, column: 9, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 701, column: 9)
!2015 = !DILocation(line: 702, column: 21, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 701, column: 33)
!2017 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 701, column: 9)
!2018 = !DILocation(line: 702, column: 19, scope: !2016)
!2019 = !DILocation(line: 703, column: 33, scope: !2016)
!2020 = !DILocation(line: 703, column: 13, scope: !2016)
!2021 = !DILocation(line: 704, column: 54, scope: !2016)
!2022 = !DILocation(line: 704, column: 38, scope: !2016)
!2023 = !DILocation(line: 706, column: 51, scope: !2016)
!2024 = !DILocation(line: 707, column: 44, scope: !2016)
!2025 = !DILocation(line: 707, column: 28, scope: !2016)
!2026 = !DILocation(line: 708, column: 46, scope: !2016)
!2027 = !DILocation(line: 708, column: 30, scope: !2016)
!2028 = !DILocation(line: 706, column: 35, scope: !2016)
!2029 = !DILocation(line: 710, column: 58, scope: !2016)
!2030 = !DILocation(line: 710, column: 42, scope: !2016)
!2031 = !DILocation(line: 712, column: 50, scope: !2016)
!2032 = !DILocation(line: 712, column: 34, scope: !2016)
!2033 = !DILocation(line: 714, column: 53, scope: !2016)
!2034 = !DILocation(line: 714, column: 37, scope: !2016)
!2035 = !DILocation(line: 716, column: 13, scope: !2016)
!2036 = !DILocation(line: 701, column: 29, scope: !2017)
!2037 = !DILocation(line: 701, column: 23, scope: !2017)
!2038 = distinct !{!2038, !2013, !2039, !538}
!2039 = !DILocation(line: 717, column: 9, scope: !2014)
!2040 = !DILocation(line: 698, column: 50, scope: !2004)
!2041 = !DILocation(line: 698, column: 19, scope: !2004)
!2042 = distinct !{!2042, !2011, !2043, !538}
!2043 = !DILocation(line: 718, column: 5, scope: !2005)
!2044 = !DILocation(line: 719, column: 5, scope: !1989)
!2045 = !DILocation(line: 721, column: 5, scope: !1989)
!2046 = !DILocation(line: 723, column: 18, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 723, column: 9)
!2048 = !{!610, !613, i64 143}
!2049 = !DILocation(line: 723, column: 9, scope: !1989)
!2050 = !DILocation(line: 724, column: 9, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 723, column: 41)
!2052 = !DILocation(line: 726, column: 5, scope: !2051)
!2053 = !DILocation(line: 727, column: 5, scope: !1989)
!2054 = !DILocation(line: 729, column: 5, scope: !1989)
!2055 = !DILocation(line: 731, column: 5, scope: !1989)
!2056 = !DILocation(line: 733, column: 5, scope: !1989)
!2057 = !DILocation(line: 735, column: 5, scope: !1989)
!2058 = !DILocation(line: 737, column: 18, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 737, column: 9)
!2060 = !DILocation(line: 737, column: 9, scope: !1989)
!2061 = !DILocation(line: 738, column: 9, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 737, column: 41)
!2063 = !DILocation(line: 740, column: 9, scope: !2062)
!2064 = !DILocation(line: 742, column: 9, scope: !2062)
!2065 = !DILocation(line: 744, column: 9, scope: !2062)
!2066 = !DILocation(line: 746, column: 9, scope: !2062)
!2067 = !DILocation(line: 748, column: 5, scope: !2062)
!2068 = !DILocation(line: 749, column: 1, scope: !1989)
!2069 = !DISubprogram(name: "append_stat", scope: !6, file: !6, line: 1001, type: !2070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{null, !1557, !1992, !2072, !1557, null}
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn", file: !6, line: 781, baseType: !2074)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn", file: !6, line: 794, size: 3968, elements: !2075)
!2075 = !{!2076, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2404, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2436, !2443, !2458}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_conn", scope: !2074, file: !6, line: 795, baseType: !2077, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "sasl_conn_t", file: !2079, line: 16, baseType: !95)
!2079 = !DIFile(filename: "./sasl_defs.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "3a8678a43d09d8e311388b26eedc7a3e")
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "sfd", scope: !2074, file: !6, line: 796, baseType: !114, size: 32, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_started", scope: !2074, file: !6, line: 797, baseType: !301, size: 8, offset: 96)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !2074, file: !6, line: 798, baseType: !301, size: 8, offset: 104)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "set_stale", scope: !2074, file: !6, line: 799, baseType: !301, size: 8, offset: 112)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "mset_res", scope: !2074, file: !6, line: 800, baseType: !301, size: 8, offset: 120)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "close_after_write", scope: !2074, file: !6, line: 801, baseType: !301, size: 8, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_malloced", scope: !2074, file: !6, line: 802, baseType: !301, size: 8, offset: 136)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "item_malloced", scope: !2074, file: !6, line: 803, baseType: !301, size: 8, offset: 144)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2074, file: !6, line: 809, baseType: !5, size: 32, offset: 160)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "substate", scope: !2074, file: !6, line: 810, baseType: !23, size: 32, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd_time", scope: !2074, file: !6, line: 811, baseType: !111, size: 32, offset: 224)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2074, file: !6, line: 812, baseType: !2092, size: 1024, offset: 256)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !2093, line: 123, size: 1024, elements: !2094)
!2093 = !DIFile(filename: "/usr/include/event2/event_struct.h", directory: "", checksumkind: CSK_MD5, checksum: "005d89b34bed2ed9e30b0cc3160619c1")
!2094 = !{!2095, !2126, !2136, !2137, !2140, !2163, !2164, !2165}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "ev_evcallback", scope: !2092, file: !2093, line: 124, baseType: !2096, size: 320)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_callback", file: !2093, line: 107, size: 320, elements: !2097)
!2097 = !{!2098, !2105, !2106, !2107, !2108, !2125}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_active_next", scope: !2096, file: !2093, line: 108, baseType: !2099, size: 128)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2096, file: !2093, line: 108, size: 128, elements: !2100)
!2100 = !{!2101, !2103}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !2099, file: !2093, line: 108, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !2099, file: !2093, line: 108, baseType: !2104, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_flags", scope: !2096, file: !2093, line: 109, baseType: !169, size: 16, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_pri", scope: !2096, file: !2093, line: 110, baseType: !121, size: 8, offset: 144)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_closure", scope: !2096, file: !2093, line: 111, baseType: !121, size: 8, offset: 152)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cb_union", scope: !2096, file: !2093, line: 118, baseType: !2109, size: 64, offset: 192)
!2109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2096, file: !2093, line: 113, size: 64, elements: !2110)
!2110 = !{!2111, !2115, !2119, !2124}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_callback", scope: !2109, file: !2093, line: 114, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{null, !114, !169, !95}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_selfcb", scope: !2109, file: !2093, line: 115, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !2102, !95}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_evfinalize", scope: !2109, file: !2093, line: 116, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{null, !2123, !95}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cbfinalize", scope: !2109, file: !2093, line: 117, baseType: !2116, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_arg", scope: !2096, file: !2093, line: 119, baseType: !95, size: 64, offset: 256)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout_pos", scope: !2092, file: !2093, line: 130, baseType: !2127, size: 128, offset: 320)
!2127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2092, file: !2093, line: 127, size: 128, elements: !2128)
!2128 = !{!2129, !2135}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "ev_next_with_common_timeout", scope: !2127, file: !2093, line: 128, baseType: !2130, size: 128)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2127, file: !2093, line: 128, size: 128, elements: !2131)
!2131 = !{!2132, !2133}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !2130, file: !2093, line: 128, baseType: !2123, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !2130, file: !2093, line: 128, baseType: !2134, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "min_heap_idx", scope: !2127, file: !2093, line: 129, baseType: !114, size: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "ev_fd", scope: !2092, file: !2093, line: 131, baseType: !114, size: 32, offset: 448)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "ev_base", scope: !2092, file: !2093, line: 133, baseType: !2138, size: 64, offset: 512)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !2093, line: 122, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "ev_", scope: !2092, file: !2093, line: 149, baseType: !2141, size: 256, offset: 576)
!2141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2092, file: !2093, line: 135, size: 256, elements: !2142)
!2142 = !{!2143, !2152}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io", scope: !2141, file: !2093, line: 140, baseType: !2144, size: 256)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2141, file: !2093, line: 137, size: 256, elements: !2145)
!2145 = !{!2146, !2151}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io_next", scope: !2144, file: !2093, line: 138, baseType: !2147, size: 128)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2144, file: !2093, line: 138, size: 128, elements: !2148)
!2148 = !{!2149, !2150}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !2147, file: !2093, line: 138, baseType: !2123, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !2147, file: !2093, line: 138, baseType: !2134, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !2144, file: !2093, line: 139, baseType: !226, size: 128, offset: 128)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal", scope: !2141, file: !2093, line: 148, baseType: !2153, size: 256)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2141, file: !2093, line: 143, size: 256, elements: !2154)
!2154 = !{!2155, !2160, !2161}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal_next", scope: !2153, file: !2093, line: 144, baseType: !2156, size: 128)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2153, file: !2093, line: 144, size: 128, elements: !2157)
!2157 = !{!2158, !2159}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !2156, file: !2093, line: 144, baseType: !2123, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !2156, file: !2093, line: 144, baseType: !2134, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "ev_ncalls", scope: !2153, file: !2093, line: 145, baseType: !169, size: 16, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ev_pncalls", scope: !2153, file: !2093, line: 147, baseType: !2162, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ev_events", scope: !2092, file: !2093, line: 151, baseType: !169, size: 16, offset: 832)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ev_res", scope: !2092, file: !2093, line: 152, baseType: !169, size: 16, offset: 848)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !2092, file: !2093, line: 153, baseType: !226, size: 128, offset: 896)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ev_flags", scope: !2074, file: !6, line: 813, baseType: !169, size: 16, offset: 1280)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !2074, file: !6, line: 814, baseType: !169, size: 16, offset: 1296)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !2074, file: !6, line: 816, baseType: !143, size: 64, offset: 1344)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "rcurr", scope: !2074, file: !6, line: 817, baseType: !143, size: 64, offset: 1408)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "rsize", scope: !2074, file: !6, line: 818, baseType: !114, size: 32, offset: 1472)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "rbytes", scope: !2074, file: !6, line: 819, baseType: !114, size: 32, offset: 1504)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !2074, file: !6, line: 821, baseType: !2173, size: 64, offset: 1536)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "mc_resp", file: !6, line: 770, baseType: !2175)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mc_resp", file: !6, line: 743, size: 9472, elements: !2176)
!2176 = !{!2177, !2189, !2191, !2192, !2193, !2194, !2331, !2332, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2374, !2378}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !2175, file: !6, line: 744, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "mc_resp_bundle", file: !6, line: 703, baseType: !2180)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mc_resp_bundle", file: !6, line: 773, size: 192, elements: !2181)
!2181 = !{!2182, !2183, !2184, !2186, !2187}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2180, file: !6, line: 774, baseType: !121, size: 8)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "next_check", scope: !2180, file: !6, line: 775, baseType: !121, size: 8, offset: 8)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2180, file: !6, line: 776, baseType: !2185, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2180, file: !6, line: 777, baseType: !2185, size: 64, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !2180, file: !6, line: 778, baseType: !2188, offset: 192)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2174, elements: !132)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2175, file: !6, line: 745, baseType: !2190, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "wbytes", scope: !2175, file: !6, line: 746, baseType: !114, size: 32, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "tosend", scope: !2175, file: !6, line: 747, baseType: !114, size: 32, offset: 160)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "write_and_free", scope: !2175, file: !6, line: 748, baseType: !95, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "io_pending", scope: !2175, file: !6, line: 749, baseType: !2195, size: 64, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_pending_t", file: !6, line: 668, baseType: !2197)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_io_pending_t", file: !6, line: 783, size: 1216, elements: !2198)
!2198 = !{!2199, !2200, !2325, !2326, !2327}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "io_queue_type", scope: !2197, file: !6, line: 784, baseType: !114, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2197, file: !6, line: 785, baseType: !2201, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "LIBEVENT_THREAD", file: !6, line: 737, baseType: !2203)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 704, size: 54464, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2208, !2209, !2261, !2290, !2293, !2319, !2320, !2321, !2322, !2323, !2324}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !2203, file: !6, line: 705, baseType: !389, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2203, file: !6, line: 706, baseType: !2138, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !2203, file: !6, line: 707, baseType: !2092, size: 1024, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event_fd", scope: !2203, file: !6, line: 709, baseType: !114, size: 32, offset: 1152)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2203, file: !6, line: 714, baseType: !2210, size: 51584, offset: 1216)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_stats", file: !6, line: 356, size: 51584, elements: !2211)
!2211 = !{!2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2257, !2258, !2259, !2260}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2210, file: !6, line: 357, baseType: !155, size: 320)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "get_cmds", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 320)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "get_misses", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 384)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "get_expired", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 448)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "get_flushed", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 512)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "touch_cmds", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 576)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "touch_misses", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 640)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "delete_misses", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 704)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "incr_misses", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 768)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "decr_misses", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 832)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "cas_misses", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 896)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "meta_cmds", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 960)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_read", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 1024)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 1088)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "flush_cmds", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 1152)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "conn_yields", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 1216)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "auth_cmds", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 1280)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "auth_errors", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 1344)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "idle_kicks", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 1408)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_oom", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 1472)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_count", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 1536)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_bytes", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 1600)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_oom", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 1664)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "store_too_large", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 1728)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "store_no_memory", scope: !2210, file: !6, line: 359, baseType: !90, size: 64, offset: 1792)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "get_extstore", scope: !2210, file: !6, line: 361, baseType: !90, size: 64, offset: 1856)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "get_aborted_extstore", scope: !2210, file: !6, line: 361, baseType: !90, size: 64, offset: 1920)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "get_oom_extstore", scope: !2210, file: !6, line: 361, baseType: !90, size: 64, offset: 1984)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "recache_from_extstore", scope: !2210, file: !6, line: 361, baseType: !90, size: 64, offset: 2048)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "miss_from_extstore", scope: !2210, file: !6, line: 361, baseType: !90, size: 64, offset: 2112)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "badcrc_from_extstore", scope: !2210, file: !6, line: 361, baseType: !90, size: 64, offset: 2176)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "slab_stats", scope: !2210, file: !6, line: 367, baseType: !2244, size: 32768, offset: 2240)
!2244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2245, size: 32768, elements: !2255)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slab_stats", file: !6, line: 303, size: 512, elements: !2246)
!2246 = !{!2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "set_cmds", scope: !2245, file: !6, line: 305, baseType: !90, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "get_hits", scope: !2245, file: !6, line: 305, baseType: !90, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "touch_hits", scope: !2245, file: !6, line: 305, baseType: !90, size: 64, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "delete_hits", scope: !2245, file: !6, line: 305, baseType: !90, size: 64, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "cas_hits", scope: !2245, file: !6, line: 305, baseType: !90, size: 64, offset: 256)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "cas_badval", scope: !2245, file: !6, line: 305, baseType: !90, size: 64, offset: 320)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "incr_hits", scope: !2245, file: !6, line: 305, baseType: !90, size: 64, offset: 384)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "decr_hits", scope: !2245, file: !6, line: 305, baseType: !90, size: 64, offset: 448)
!2255 = !{!2256}
!2256 = !DISubrange(count: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "lru_hits", scope: !2210, file: !6, line: 368, baseType: !386, size: 16384, offset: 35008)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_count", scope: !2210, file: !6, line: 369, baseType: !90, size: 64, offset: 51392)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_bytes", scope: !2210, file: !6, line: 370, baseType: !90, size: 64, offset: 51456)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_bytes_free", scope: !2210, file: !6, line: 371, baseType: !90, size: 64, offset: 51520)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues", scope: !2203, file: !6, line: 715, baseType: !2262, size: 1152, offset: 52800)
!2262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2263, size: 1152, elements: !2288)
!2263 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_cb_t", file: !6, line: 701, baseType: !2264)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_queue_cb_s", file: !6, line: 694, size: 384, elements: !2265)
!2265 = !{!2266, !2267, !2280, !2281, !2286, !2287}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2264, file: !6, line: 695, baseType: !95, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "submit_cb", scope: !2264, file: !6, line: 696, baseType: !2268, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_stack_cb", file: !6, line: 670, baseType: !2269)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{null, !2272}
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_t", file: !6, line: 669, baseType: !2274)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_queue_s", file: !6, line: 687, size: 192, elements: !2275)
!2275 = !{!2276, !2277, !2278, !2279}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2274, file: !6, line: 688, baseType: !95, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "stack_ctx", scope: !2274, file: !6, line: 689, baseType: !95, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2274, file: !6, line: 690, baseType: !114, size: 32, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2274, file: !6, line: 691, baseType: !114, size: 32, offset: 160)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "complete_cb", scope: !2264, file: !6, line: 697, baseType: !2268, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "return_cb", scope: !2264, file: !6, line: 698, baseType: !2282, size: 64, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_cb", file: !6, line: 671, baseType: !2283)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{null, !2195}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_cb", scope: !2264, file: !6, line: 699, baseType: !2282, size: 64, offset: 256)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2264, file: !6, line: 700, baseType: !114, size: 32, offset: 320)
!2288 = !{!2289}
!2289 = !DISubrange(count: 3)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ev_queue", scope: !2203, file: !6, line: 716, baseType: !2291, size: 64, offset: 53952)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "conn_queue", file: !6, line: 716, flags: DIFlagFwdDecl)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_cache", scope: !2203, file: !6, line: 717, baseType: !2294, size: 64, offset: 54016)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_t", file: !2296, line: 39, baseType: !2297)
!2296 = !DIFile(filename: "./cache.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d97639c8540587a19d8550d7d7156448")
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2296, line: 22, size: 704, elements: !2298)
!2298 = !{!2299, !2300, !2301, !2314, !2315, !2316, !2317, !2318}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2297, file: !2296, line: 24, baseType: !155, size: 320)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2297, file: !2296, line: 26, baseType: !143, size: 64, offset: 320)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2297, file: !2296, line: 28, baseType: !2302, size: 128, offset: 384)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_head", file: !2296, line: 28, size: 128, elements: !2303)
!2303 = !{!2304, !2312}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !2302, file: !2296, line: 28, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_free_s", file: !2296, line: 12, size: 64, elements: !2307)
!2307 = !{!2308}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "c_next", scope: !2306, file: !2296, line: 13, baseType: !2309, size: 64)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2306, file: !2296, line: 13, size: 64, elements: !2310)
!2310 = !{!2311}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !2309, file: !2296, line: 13, baseType: !2305, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !2302, file: !2296, line: 28, baseType: !2313, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !2297, file: !2296, line: 30, baseType: !144, size: 64, offset: 512)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "freetotal", scope: !2297, file: !2296, line: 32, baseType: !114, size: 32, offset: 576)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2297, file: !2296, line: 34, baseType: !114, size: 32, offset: 608)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "freecurr", scope: !2297, file: !2296, line: 36, baseType: !114, size: 32, offset: 640)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2297, file: !2296, line: 38, baseType: !114, size: 32, offset: 672)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "open_bundle", scope: !2203, file: !6, line: 718, baseType: !2178, size: 64, offset: 54080)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "io_cache", scope: !2203, file: !6, line: 719, baseType: !2294, size: 64, offset: 54144)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !2203, file: !6, line: 721, baseType: !95, size: 64, offset: 54208)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2203, file: !6, line: 723, baseType: !147, size: 64, offset: 54272)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "lru_bump_buf", scope: !2203, file: !6, line: 724, baseType: !95, size: 64, offset: 54336)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !2203, file: !6, line: 728, baseType: !114, size: 32, offset: 54400)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !2197, file: !6, line: 786, baseType: !2072, size: 64, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !2197, file: !6, line: 787, baseType: !2173, size: 64, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2197, file: !6, line: 788, baseType: !2328, size: 960, offset: 256)
!2328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 960, elements: !2329)
!2329 = !{!2330}
!2330 = !DISubrange(count: 120)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !2175, file: !6, line: 751, baseType: !260, size: 64, offset: 320)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !2175, file: !6, line: 752, baseType: !2333, size: 512, offset: 384)
!2333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2334, size: 512, elements: !397)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2335, line: 26, size: 128, elements: !2336)
!2335 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "6a734cae8feaa37c12e11190a6573675")
!2336 = !{!2337, !2338}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2334, file: !2335, line: 28, baseType: !95, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2334, file: !2335, line: 29, baseType: !144, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_total", scope: !2175, file: !6, line: 753, baseType: !114, size: 32, offset: 896)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "iovcnt", scope: !2175, file: !6, line: 754, baseType: !121, size: 8, offset: 928)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_data_iov", scope: !2175, file: !6, line: 755, baseType: !121, size: 8, offset: 936)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !2175, file: !6, line: 760, baseType: !301, size: 8, offset: 944)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2175, file: !6, line: 761, baseType: !301, size: 8, offset: 952)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !2175, file: !6, line: 763, baseType: !118, size: 16, offset: 960)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "udp_sequence", scope: !2175, file: !6, line: 764, baseType: !118, size: 16, offset: 976)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "udp_total", scope: !2175, file: !6, line: 765, baseType: !118, size: 16, offset: 992)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr", scope: !2175, file: !6, line: 766, baseType: !2348, size: 224, offset: 1024)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !2349, line: 253, size: 224, elements: !2350)
!2349 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "6a5254a491bcdb8c3253de75bf3571c1")
!2350 = !{!2351, !2354, !2356, !2357, !2373}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !2348, file: !2349, line: 255, baseType: !2352, size: 16)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !2353, line: 28, baseType: !116)
!2353 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "b70cbaf07ffb7e8bf11ee98d9a21e2fc")
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !2348, file: !2349, line: 256, baseType: !2355, size: 16, offset: 16)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !2349, line: 119, baseType: !118)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !2348, file: !2349, line: 257, baseType: !263, size: 32, offset: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !2348, file: !2349, line: 258, baseType: !2358, size: 128, offset: 64)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !2349, line: 212, size: 128, elements: !2359)
!2359 = !{!2360}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !2358, file: !2349, line: 219, baseType: !2361, size: 128)
!2361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2358, file: !2349, line: 214, size: 128, elements: !2362)
!2362 = !{!2363, !2367, !2371}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !2361, file: !2349, line: 216, baseType: !2364, size: 128)
!2364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !2365)
!2365 = !{!2366}
!2366 = !DISubrange(count: 16)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !2361, file: !2349, line: 217, baseType: !2368, size: 128)
!2368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, elements: !2369)
!2369 = !{!2370}
!2370 = !DISubrange(count: 8)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !2361, file: !2349, line: 218, baseType: !2372, size: 128)
!2372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 128, elements: !397)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !2348, file: !2349, line: 259, baseType: !263, size: 32, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr_size", scope: !2175, file: !6, line: 767, baseType: !2375, size: 32, offset: 1248)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !2376, line: 33, baseType: !2377)
!2376 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "b1d3343a573cbf39b225111209e02966")
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !93, line: 209, baseType: !7)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !2175, file: !6, line: 769, baseType: !2379, size: 8192, offset: 1280)
!2379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 8192, elements: !2380)
!2380 = !{!2381}
!2381 = !DISubrange(count: 1024)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "resp_head", scope: !2074, file: !6, line: 822, baseType: !2173, size: 64, offset: 1600)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ritem", scope: !2074, file: !6, line: 823, baseType: !143, size: 64, offset: 1664)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "rlbytes", scope: !2074, file: !6, line: 824, baseType: !114, size: 32, offset: 1728)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !2074, file: !6, line: 832, baseType: !95, size: 64, offset: 1792)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !2074, file: !6, line: 835, baseType: !114, size: 32, offset: 1856)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues_submitted", scope: !2074, file: !6, line: 837, baseType: !114, size: 32, offset: 1888)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues", scope: !2074, file: !6, line: 838, baseType: !2389, size: 576, offset: 1920)
!2389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2273, size: 576, elements: !2288)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "recache_counter", scope: !2074, file: !6, line: 843, baseType: !7, size: 32, offset: 2496)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2074, file: !6, line: 845, baseType: !55, size: 32, offset: 2528)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "transport", scope: !2074, file: !6, line: 846, baseType: !60, size: 32, offset: 2560)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "close_reason", scope: !2074, file: !6, line: 847, baseType: !65, size: 32, offset: 2592)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !2074, file: !6, line: 850, baseType: !114, size: 32, offset: 2624)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr", scope: !2074, file: !6, line: 851, baseType: !2348, size: 224, offset: 2656)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr_size", scope: !2074, file: !6, line: 852, baseType: !2375, size: 32, offset: 2880)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "noreply", scope: !2074, file: !6, line: 854, baseType: !301, size: 8, offset: 2912)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2074, file: !6, line: 860, baseType: !2399, size: 192, offset: 2944)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2074, file: !6, line: 856, size: 192, elements: !2400)
!2400 = !{!2401, !2402, !2403}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2399, file: !6, line: 857, baseType: !143, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2399, file: !6, line: 858, baseType: !144, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2399, file: !6, line: 859, baseType: !144, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "binary_header", scope: !2074, file: !6, line: 864, baseType: !2405, size: 192, offset: 3136)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_header", file: !2406, line: 164, baseType: !2407)
!2406 = !DIFile(filename: "./protocol_binary.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "7a322a65fa8661e9a597acbeeeb23107")
!2407 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !2406, line: 151, size: 192, elements: !2408)
!2408 = !{!2409, !2421}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2407, file: !2406, line: 162, baseType: !2410, size: 192)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2407, file: !2406, line: 152, size: 192, elements: !2411)
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2410, file: !2406, line: 153, baseType: !121, size: 8)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2410, file: !2406, line: 154, baseType: !121, size: 8, offset: 8)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !2410, file: !2406, line: 155, baseType: !118, size: 16, offset: 16)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "extlen", scope: !2410, file: !2406, line: 156, baseType: !121, size: 8, offset: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !2410, file: !2406, line: 157, baseType: !121, size: 8, offset: 40)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2410, file: !2406, line: 158, baseType: !118, size: 16, offset: 48)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "bodylen", scope: !2410, file: !2406, line: 159, baseType: !263, size: 32, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !2410, file: !2406, line: 160, baseType: !263, size: 32, offset: 96)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !2410, file: !2406, line: 161, baseType: !90, size: 64, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2407, file: !2406, line: 163, baseType: !2422, size: 192)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 192, elements: !2423)
!2423 = !{!2424}
!2424 = !DISubrange(count: 24)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !2074, file: !6, line: 865, baseType: !90, size: 64, offset: 3328)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !2074, file: !6, line: 866, baseType: !90, size: 64, offset: 3392)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2074, file: !6, line: 867, baseType: !169, size: 16, offset: 3456)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !2074, file: !6, line: 868, baseType: !114, size: 32, offset: 3488)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !2074, file: !6, line: 869, baseType: !114, size: 32, offset: 3520)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2074, file: !6, line: 870, baseType: !2072, size: 64, offset: 3584)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2074, file: !6, line: 871, baseType: !2201, size: 64, offset: 3648)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "try_read_command", scope: !2074, file: !6, line: 872, baseType: !2433, size: 64, offset: 3712)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!114, !2072}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2074, file: !6, line: 873, baseType: !2437, size: 64, offset: 3776)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!2440, !2072, !95, !144}
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !2441, line: 108, baseType: !2442)
!2441 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !93, line: 193, baseType: !184)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "sendmsg", scope: !2074, file: !6, line: 874, baseType: !2444, size: 64, offset: 3840)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!2440, !2072, !2447, !114}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !2376, line: 257, size: 448, elements: !2449)
!2449 = !{!2450, !2451, !2452, !2454, !2455, !2456, !2457}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !2448, file: !2376, line: 259, baseType: !95, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !2448, file: !2376, line: 260, baseType: !2375, size: 32, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !2448, file: !2376, line: 262, baseType: !2453, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !2448, file: !2376, line: 263, baseType: !144, size: 64, offset: 192)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !2448, file: !2376, line: 265, baseType: !95, size: 64, offset: 256)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !2448, file: !2376, line: 266, baseType: !144, size: 64, offset: 320)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !2448, file: !2376, line: 271, baseType: !114, size: 32, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2074, file: !6, line: 875, baseType: !2437, size: 64, offset: 3904)
!2459 = distinct !DISubprogram(name: "lru_total_bumps_dropped", scope: !3, file: !3, line: 1376, type: !579, scopeLine: 1376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2460)
!2460 = !{!2461, !2462}
!2461 = !DILocalVariable(name: "total", scope: !2459, file: !3, line: 1377, type: !90)
!2462 = !DILocalVariable(name: "b", scope: !2459, file: !3, line: 1378, type: !412)
!2463 = !DILocation(line: 0, scope: !2459)
!2464 = !DILocation(line: 1379, column: 5, scope: !2459)
!2465 = !DILocation(line: 0, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 1380, column: 5)
!2467 = !DILocation(line: 1380, column: 31, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 1380, column: 5)
!2469 = !DILocation(line: 1380, column: 5, scope: !2466)
!2470 = !DILocation(line: 1381, column: 32, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 1380, column: 51)
!2472 = !DILocation(line: 1381, column: 9, scope: !2471)
!2473 = !DILocation(line: 1382, column: 21, scope: !2471)
!2474 = !{!2475, !567, i64 64}
!2475 = !{!"_lru_bump_buf", !611, i64 0, !611, i64 8, !568, i64 16, !611, i64 56, !567, i64 64}
!2476 = !DILocation(line: 1382, column: 15, scope: !2471)
!2477 = !DILocation(line: 1383, column: 9, scope: !2471)
!2478 = !DILocation(line: 1380, column: 42, scope: !2468)
!2479 = !DILocation(line: 1380, column: 45, scope: !2468)
!2480 = distinct !{!2480, !2469, !2481, !538}
!2481 = !DILocation(line: 1384, column: 5, scope: !2466)
!2482 = !DILocation(line: 1385, column: 5, scope: !2459)
!2483 = !DILocation(line: 1386, column: 5, scope: !2459)
!2484 = distinct !DISubprogram(name: "item_stats", scope: !3, file: !3, line: 751, type: !1990, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2485)
!2485 = !{!2486, !2487, !2488, !2489, !2490, !2491, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2506, !2507, !2508}
!2486 = !DILocalVariable(name: "add_stats", arg: 1, scope: !2484, file: !3, line: 751, type: !1992)
!2487 = !DILocalVariable(name: "c", arg: 2, scope: !2484, file: !3, line: 751, type: !95)
!2488 = !DILocalVariable(name: "thread_stats", scope: !2484, file: !3, line: 752, type: !2210)
!2489 = !DILocalVariable(name: "totals", scope: !2484, file: !3, line: 754, type: !488)
!2490 = !DILocalVariable(name: "n", scope: !2484, file: !3, line: 755, type: !114)
!2491 = !DILocalVariable(name: "x", scope: !2492, file: !3, line: 758, type: !114)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 756, column: 54)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 756, column: 5)
!2494 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 756, column: 5)
!2495 = !DILocalVariable(name: "i", scope: !2492, file: !3, line: 759, type: !114)
!2496 = !DILocalVariable(name: "size", scope: !2492, file: !3, line: 760, type: !7)
!2497 = !DILocalVariable(name: "age", scope: !2492, file: !3, line: 761, type: !7)
!2498 = !DILocalVariable(name: "age_hot", scope: !2492, file: !3, line: 762, type: !7)
!2499 = !DILocalVariable(name: "age_warm", scope: !2492, file: !3, line: 763, type: !7)
!2500 = !DILocalVariable(name: "lru_size_map", scope: !2492, file: !3, line: 764, type: !396)
!2501 = !DILocalVariable(name: "fmt", scope: !2492, file: !3, line: 765, type: !1557)
!2502 = !DILocalVariable(name: "key_str", scope: !2492, file: !3, line: 766, type: !2503)
!2503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 1024, elements: !2504)
!2504 = !{!2505}
!2505 = !DISubrange(count: 128)
!2506 = !DILocalVariable(name: "val_str", scope: !2492, file: !3, line: 767, type: !2503)
!2507 = !DILocalVariable(name: "klen", scope: !2492, file: !3, line: 768, type: !114)
!2508 = !DILocalVariable(name: "vlen", scope: !2492, file: !3, line: 768, type: !114)
!2509 = !DILocation(line: 0, scope: !2484)
!2510 = !DILocation(line: 752, column: 5, scope: !2484)
!2511 = !DILocation(line: 752, column: 25, scope: !2484)
!2512 = !DILocation(line: 753, column: 5, scope: !2484)
!2513 = !DILocation(line: 754, column: 5, scope: !2484)
!2514 = !DILocation(line: 754, column: 17, scope: !2484)
!2515 = !DILocation(line: 756, column: 5, scope: !2494)
!2516 = !DILocation(line: 757, column: 9, scope: !2492)
!2517 = !DILocation(line: 0, scope: !2492)
!2518 = !DILocation(line: 764, column: 9, scope: !2492)
!2519 = !DILocation(line: 764, column: 22, scope: !2492)
!2520 = !DILocation(line: 766, column: 9, scope: !2492)
!2521 = !DILocation(line: 766, column: 14, scope: !2492)
!2522 = !DILocation(line: 767, column: 9, scope: !2492)
!2523 = !DILocation(line: 767, column: 14, scope: !2492)
!2524 = !DILocation(line: 769, column: 9, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 769, column: 9)
!2526 = !DILocation(line: 770, column: 21, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 769, column: 33)
!2528 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 769, column: 9)
!2529 = !DILocation(line: 770, column: 19, scope: !2527)
!2530 = !DILocation(line: 771, column: 33, scope: !2527)
!2531 = !DILocation(line: 771, column: 13, scope: !2527)
!2532 = !DILocation(line: 772, column: 44, scope: !2527)
!2533 = !DILocation(line: 772, column: 28, scope: !2527)
!2534 = !DILocation(line: 775, column: 48, scope: !2527)
!2535 = !DILocation(line: 776, column: 46, scope: !2527)
!2536 = !DILocation(line: 776, column: 30, scope: !2527)
!2537 = !DILocation(line: 775, column: 32, scope: !2527)
!2538 = !DILocation(line: 778, column: 54, scope: !2527)
!2539 = !DILocation(line: 778, column: 38, scope: !2527)
!2540 = !DILocation(line: 780, column: 54, scope: !2527)
!2541 = !DILocation(line: 780, column: 38, scope: !2527)
!2542 = !DILocation(line: 782, column: 54, scope: !2527)
!2543 = !DILocation(line: 782, column: 38, scope: !2527)
!2544 = !DILocation(line: 784, column: 50, scope: !2527)
!2545 = !DILocation(line: 784, column: 34, scope: !2527)
!2546 = !DILocation(line: 786, column: 52, scope: !2527)
!2547 = !DILocation(line: 786, column: 36, scope: !2527)
!2548 = !DILocation(line: 787, column: 37, scope: !2527)
!2549 = !DILocation(line: 787, column: 34, scope: !2527)
!2550 = !{!566, !567, i64 152}
!2551 = !DILocation(line: 788, column: 21, scope: !2527)
!2552 = !DILocation(line: 788, column: 18, scope: !2527)
!2553 = !DILocation(line: 789, column: 13, scope: !2527)
!2554 = !DILocation(line: 789, column: 29, scope: !2527)
!2555 = !DILocation(line: 790, column: 45, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 790, column: 17)
!2557 = !DILocation(line: 790, column: 54, scope: !2556)
!2558 = !DILocation(line: 790, column: 48, scope: !2556)
!2559 = !DILocation(line: 790, column: 57, scope: !2556)
!2560 = !DILocation(line: 790, column: 17, scope: !2527)
!2561 = !DILocation(line: 797, column: 17, scope: !2527)
!2562 = !DILocation(line: 791, column: 23, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 790, column: 66)
!2564 = !DILocation(line: 791, column: 48, scope: !2563)
!2565 = !DILocation(line: 791, column: 36, scope: !2563)
!2566 = !DILocation(line: 792, column: 60, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 792, column: 24)
!2568 = !DILocation(line: 792, column: 54, scope: !2567)
!2569 = !DILocation(line: 792, column: 63, scope: !2567)
!2570 = !DILocation(line: 792, column: 24, scope: !2556)
!2571 = !DILocation(line: 793, column: 27, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 792, column: 72)
!2573 = !DILocation(line: 793, column: 52, scope: !2572)
!2574 = !DILocation(line: 793, column: 40, scope: !2572)
!2575 = !DILocation(line: 794, column: 61, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 794, column: 24)
!2577 = !DILocation(line: 794, column: 55, scope: !2576)
!2578 = !DILocation(line: 794, column: 64, scope: !2576)
!2579 = !DILocation(line: 794, column: 24, scope: !2567)
!2580 = !DILocation(line: 795, column: 28, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 794, column: 73)
!2582 = !DILocation(line: 795, column: 53, scope: !2581)
!2583 = !DILocation(line: 795, column: 41, scope: !2581)
!2584 = !DILocation(line: 796, column: 13, scope: !2581)
!2585 = !DILocation(line: 798, column: 49, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 797, column: 17)
!2587 = !DILocation(line: 798, column: 52, scope: !2586)
!2588 = !DILocation(line: 798, column: 37, scope: !2586)
!2589 = !DILocation(line: 798, column: 17, scope: !2586)
!2590 = !DILocation(line: 799, column: 13, scope: !2527)
!2591 = !DILocation(line: 801, column: 55, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 799, column: 38)
!2593 = !DILocation(line: 802, column: 21, scope: !2592)
!2594 = !DILocation(line: 804, column: 56, scope: !2592)
!2595 = !DILocation(line: 805, column: 21, scope: !2592)
!2596 = !DILocation(line: 807, column: 56, scope: !2592)
!2597 = !DILocation(line: 808, column: 21, scope: !2592)
!2598 = !DILocation(line: 810, column: 56, scope: !2592)
!2599 = !DILocation(line: 811, column: 21, scope: !2592)
!2600 = !DILocation(line: 0, scope: !2592)
!2601 = !DILocation(line: 813, column: 13, scope: !2527)
!2602 = !DILocation(line: 769, column: 29, scope: !2528)
!2603 = !DILocation(line: 769, column: 23, scope: !2528)
!2604 = distinct !{!2604, !2524, !2605, !538}
!2605 = !DILocation(line: 814, column: 9, scope: !2525)
!2606 = !DILocation(line: 815, column: 18, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 815, column: 13)
!2608 = !DILocation(line: 815, column: 13, scope: !2492)
!2609 = !DILocation(line: 817, column: 9, scope: !2492)
!2610 = !DILocation(line: 818, column: 22, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 818, column: 13)
!2612 = !DILocation(line: 818, column: 13, scope: !2492)
!2613 = !DILocation(line: 819, column: 13, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 818, column: 45)
!2615 = !DILocation(line: 820, column: 13, scope: !2614)
!2616 = !DILocation(line: 821, column: 13, scope: !2614)
!2617 = !DILocation(line: 822, column: 26, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 822, column: 17)
!2619 = !DILocation(line: 822, column: 17, scope: !2614)
!2620 = !DILocation(line: 823, column: 17, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 822, column: 36)
!2622 = !DILocation(line: 824, column: 13, scope: !2621)
!2623 = !DILocation(line: 825, column: 13, scope: !2614)
!2624 = !DILocation(line: 826, column: 13, scope: !2614)
!2625 = !DILocation(line: 827, column: 9, scope: !2614)
!2626 = !DILocation(line: 828, column: 9, scope: !2492)
!2627 = !DILocation(line: 829, column: 9, scope: !2492)
!2628 = !DILocation(line: 830, column: 9, scope: !2492)
!2629 = !DILocation(line: 832, column: 9, scope: !2492)
!2630 = !DILocation(line: 834, column: 9, scope: !2492)
!2631 = !DILocation(line: 836, column: 9, scope: !2492)
!2632 = !DILocation(line: 838, column: 9, scope: !2492)
!2633 = !DILocation(line: 840, column: 9, scope: !2492)
!2634 = !DILocation(line: 842, column: 9, scope: !2492)
!2635 = !DILocation(line: 844, column: 9, scope: !2492)
!2636 = !DILocation(line: 846, column: 22, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 846, column: 13)
!2638 = !DILocation(line: 846, column: 13, scope: !2492)
!2639 = !DILocation(line: 847, column: 13, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 846, column: 45)
!2641 = !DILocation(line: 849, column: 9, scope: !2640)
!2642 = !DILocation(line: 850, column: 9, scope: !2492)
!2643 = !DILocation(line: 852, column: 9, scope: !2492)
!2644 = !DILocation(line: 854, column: 9, scope: !2492)
!2645 = !DILocation(line: 856, column: 22, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 856, column: 13)
!2647 = !DILocation(line: 856, column: 13, scope: !2492)
!2648 = !DILocation(line: 857, column: 13, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 856, column: 45)
!2650 = !DILocation(line: 859, column: 13, scope: !2649)
!2651 = !DILocation(line: 861, column: 13, scope: !2649)
!2652 = !DILocation(line: 863, column: 13, scope: !2649)
!2653 = !DILocation(line: 865, column: 13, scope: !2649)
!2654 = !{!566, !567, i64 120}
!2655 = !DILocation(line: 868, column: 13, scope: !2649)
!2656 = !{!566, !567, i64 128}
!2657 = !DILocation(line: 871, column: 13, scope: !2649)
!2658 = !{!566, !567, i64 136}
!2659 = !DILocation(line: 874, column: 13, scope: !2649)
!2660 = !{!566, !567, i64 144}
!2661 = !DILocation(line: 877, column: 9, scope: !2649)
!2662 = !DILocation(line: 878, column: 5, scope: !2493)
!2663 = !DILocation(line: 878, column: 5, scope: !2492)
!2664 = !DILocation(line: 756, column: 50, scope: !2493)
!2665 = !DILocation(line: 756, column: 19, scope: !2493)
!2666 = distinct !{!2666, !2515, !2667, !538}
!2667 = !DILocation(line: 878, column: 5, scope: !2494)
!2668 = !DILocation(line: 881, column: 5, scope: !2484)
!2669 = !DILocation(line: 882, column: 1, scope: !2484)
!2670 = !DISubprogram(name: "threadlocal_stats_aggregate", scope: !6, file: !6, line: 996, type: !2671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{null, !2673}
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2674 = distinct !DISubprogram(name: "item_stats_sizes_status", scope: !3, file: !3, line: 884, type: !2675, scopeLine: 884, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!301}
!2677 = !{!2678}
!2678 = !DILocalVariable(name: "ret", scope: !2674, file: !3, line: 885, type: !301)
!2679 = !DILocation(line: 0, scope: !2674)
!2680 = !DILocation(line: 886, column: 5, scope: !2674)
!2681 = !DILocation(line: 887, column: 9, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 887, column: 9)
!2683 = !DILocation(line: 887, column: 26, scope: !2682)
!2684 = !DILocation(line: 887, column: 9, scope: !2674)
!2685 = !DILocation(line: 888, column: 13, scope: !2682)
!2686 = !DILocation(line: 888, column: 9, scope: !2682)
!2687 = !DILocation(line: 889, column: 5, scope: !2674)
!2688 = !DILocation(line: 890, column: 5, scope: !2674)
!2689 = distinct !DISubprogram(name: "item_stats_sizes_init", scope: !3, file: !3, line: 893, type: !519, scopeLine: 893, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !545)
!2690 = !DILocation(line: 894, column: 9, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 894, column: 9)
!2692 = !DILocation(line: 894, column: 26, scope: !2691)
!2693 = !DILocation(line: 894, column: 9, scope: !2689)
!2694 = !DILocation(line: 895, column: 9, scope: !2691)
!2695 = !DILocation(line: 896, column: 36, scope: !2689)
!2696 = !{!610, !570, i64 124}
!2697 = !DILocation(line: 896, column: 50, scope: !2689)
!2698 = !DILocation(line: 896, column: 55, scope: !2689)
!2699 = !DILocation(line: 896, column: 25, scope: !2689)
!2700 = !DILocation(line: 897, column: 31, scope: !2689)
!2701 = !DILocation(line: 897, column: 24, scope: !2689)
!2702 = !DILocation(line: 897, column: 22, scope: !2689)
!2703 = !DILocation(line: 898, column: 37, scope: !2689)
!2704 = !DILocation(line: 898, column: 27, scope: !2689)
!2705 = !DILocation(line: 898, column: 48, scope: !2689)
!2706 = !DILocation(line: 898, column: 25, scope: !2689)
!2707 = !DILocation(line: 899, column: 1, scope: !2689)
!2708 = !DISubprogram(name: "calloc", scope: !1896, file: !1896, line: 542, type: !2709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!95, !144, !144}
!2711 = distinct !DISubprogram(name: "item_stats_sizes_enable", scope: !3, file: !3, line: 901, type: !1990, scopeLine: 901, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2712)
!2712 = !{!2713, !2714}
!2713 = !DILocalVariable(name: "add_stats", arg: 1, scope: !2711, file: !3, line: 901, type: !1992)
!2714 = !DILocalVariable(name: "c", arg: 2, scope: !2711, file: !3, line: 901, type: !95)
!2715 = !DILocation(line: 0, scope: !2711)
!2716 = !DILocation(line: 902, column: 5, scope: !2711)
!2717 = !DILocation(line: 903, column: 19, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 903, column: 9)
!2719 = !DILocation(line: 903, column: 9, scope: !2711)
!2720 = !DILocation(line: 904, column: 9, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 903, column: 28)
!2722 = !DILocation(line: 905, column: 9, scope: !2721)
!2723 = !DILocation(line: 906, column: 5, scope: !2721)
!2724 = !DILocation(line: 906, column: 16, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 906, column: 16)
!2726 = !DILocation(line: 906, column: 33, scope: !2725)
!2727 = !DILocation(line: 906, column: 16, scope: !2718)
!2728 = !DILocation(line: 907, column: 9, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 906, column: 42)
!2730 = !DILocation(line: 908, column: 13, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 908, column: 13)
!2732 = !DILocation(line: 908, column: 30, scope: !2731)
!2733 = !DILocation(line: 908, column: 13, scope: !2729)
!2734 = !DILocation(line: 909, column: 13, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 908, column: 39)
!2736 = !DILocation(line: 910, column: 9, scope: !2735)
!2737 = !DILocation(line: 911, column: 13, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 910, column: 16)
!2739 = !DILocation(line: 912, column: 13, scope: !2738)
!2740 = !DILocation(line: 915, column: 9, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 914, column: 12)
!2742 = !DILocation(line: 917, column: 5, scope: !2711)
!2743 = !DILocation(line: 918, column: 1, scope: !2711)
!2744 = distinct !DISubprogram(name: "item_stats_sizes_disable", scope: !3, file: !3, line: 920, type: !1990, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2745)
!2745 = !{!2746, !2747}
!2746 = !DILocalVariable(name: "add_stats", arg: 1, scope: !2744, file: !3, line: 920, type: !1992)
!2747 = !DILocalVariable(name: "c", arg: 2, scope: !2744, file: !3, line: 920, type: !95)
!2748 = !DILocation(line: 0, scope: !2744)
!2749 = !DILocation(line: 921, column: 5, scope: !2744)
!2750 = !DILocation(line: 922, column: 9, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 922, column: 9)
!2752 = !DILocation(line: 922, column: 26, scope: !2751)
!2753 = !DILocation(line: 922, column: 9, scope: !2744)
!2754 = !DILocation(line: 923, column: 14, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 922, column: 35)
!2756 = !DILocation(line: 923, column: 9, scope: !2755)
!2757 = !DILocation(line: 924, column: 26, scope: !2755)
!2758 = !DILocation(line: 925, column: 5, scope: !2755)
!2759 = !DILocation(line: 926, column: 5, scope: !2744)
!2760 = !DILocation(line: 927, column: 5, scope: !2744)
!2761 = !DILocation(line: 928, column: 1, scope: !2744)
!2762 = !DISubprogram(name: "free", scope: !1896, file: !1896, line: 565, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!2763 = distinct !DISubprogram(name: "item_stats_sizes", scope: !3, file: !3, line: 957, type: !1990, scopeLine: 957, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2764)
!2764 = !{!2765, !2766, !2767, !2770}
!2765 = !DILocalVariable(name: "add_stats", arg: 1, scope: !2763, file: !3, line: 957, type: !1992)
!2766 = !DILocalVariable(name: "c", arg: 2, scope: !2763, file: !3, line: 957, type: !95)
!2767 = !DILocalVariable(name: "i", scope: !2768, file: !3, line: 961, type: !114)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 960, column: 35)
!2769 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 960, column: 9)
!2770 = !DILocalVariable(name: "key", scope: !2771, file: !3, line: 964, type: !2776)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 963, column: 43)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 963, column: 17)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 962, column: 51)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 962, column: 9)
!2775 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 962, column: 9)
!2776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 96, elements: !2777)
!2777 = !{!2778}
!2778 = !DISubrange(count: 12)
!2779 = !DILocation(line: 0, scope: !2763)
!2780 = !DILocation(line: 958, column: 5, scope: !2763)
!2781 = !DILocation(line: 960, column: 9, scope: !2769)
!2782 = !DILocation(line: 960, column: 26, scope: !2769)
!2783 = !DILocation(line: 960, column: 9, scope: !2763)
!2784 = !DILocation(line: 0, scope: !2768)
!2785 = !DILocation(line: 962, column: 25, scope: !2774)
!2786 = !DILocation(line: 962, column: 23, scope: !2774)
!2787 = !DILocation(line: 962, column: 9, scope: !2775)
!2788 = !DILocation(line: 963, column: 17, scope: !2772)
!2789 = !DILocation(line: 963, column: 37, scope: !2772)
!2790 = !DILocation(line: 963, column: 17, scope: !2773)
!2791 = !DILocation(line: 964, column: 17, scope: !2771)
!2792 = !DILocation(line: 964, column: 22, scope: !2771)
!2793 = !DILocation(line: 965, column: 52, scope: !2771)
!2794 = !DILocation(line: 965, column: 17, scope: !2771)
!2795 = !DILocation(line: 966, column: 17, scope: !2771)
!2796 = !DILocation(line: 967, column: 13, scope: !2772)
!2797 = !DILocation(line: 967, column: 13, scope: !2771)
!2798 = !DILocation(line: 962, column: 47, scope: !2774)
!2799 = distinct !{!2799, !2787, !2800, !538}
!2800 = !DILocation(line: 968, column: 9, scope: !2775)
!2801 = !DILocation(line: 969, column: 5, scope: !2769)
!2802 = !DILocation(line: 969, column: 5, scope: !2768)
!2803 = !DILocation(line: 970, column: 9, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 969, column: 12)
!2805 = !DILocation(line: 973, column: 5, scope: !2763)
!2806 = !DILocation(line: 974, column: 5, scope: !2763)
!2807 = !DILocation(line: 975, column: 1, scope: !2763)
!2808 = distinct !DISubprogram(name: "do_item_get", scope: !3, file: !3, line: 978, type: !2809, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2812)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!260, !1557, !656, !1419, !2072, !2811}
!2811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!2812 = !{!2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2823}
!2813 = !DILocalVariable(name: "key", arg: 1, scope: !2808, file: !3, line: 978, type: !1557)
!2814 = !DILocalVariable(name: "nkey", arg: 2, scope: !2808, file: !3, line: 978, type: !656)
!2815 = !DILocalVariable(name: "hv", arg: 3, scope: !2808, file: !3, line: 978, type: !1419)
!2816 = !DILocalVariable(name: "c", arg: 4, scope: !2808, file: !3, line: 978, type: !2072)
!2817 = !DILocalVariable(name: "do_update", arg: 5, scope: !2808, file: !3, line: 978, type: !2811)
!2818 = !DILocalVariable(name: "it", scope: !2808, file: !3, line: 979, type: !260)
!2819 = !DILocalVariable(name: "was_found", scope: !2808, file: !3, line: 1003, type: !114)
!2820 = !DILocalVariable(name: "ii", scope: !2821, file: !3, line: 1006, type: !114)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 1005, column: 31)
!2822 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 1005, column: 9)
!2823 = !DILocalVariable(name: "myl", scope: !2824, file: !3, line: 1054, type: !147)
!2824 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 1054, column: 5)
!2825 = !DILocation(line: 0, scope: !2808)
!2826 = !DILocation(line: 979, column: 16, scope: !2808)
!2827 = !DILocation(line: 980, column: 12, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 980, column: 9)
!2829 = !DILocation(line: 980, column: 9, scope: !2808)
!2830 = !DILocation(line: 1005, column: 18, scope: !2822)
!2831 = !{!610, !570, i64 32}
!2832 = !DILocation(line: 1005, column: 26, scope: !2822)
!2833 = !DILocation(line: 1005, column: 9, scope: !2808)
!2834 = !DILocation(line: 981, column: 9, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 980, column: 21)
!2836 = !DILocation(line: 1008, column: 21, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 1007, column: 25)
!2838 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 1007, column: 13)
!2839 = !DILocation(line: 1009, column: 9, scope: !2837)
!2840 = !DILocation(line: 1010, column: 21, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 1009, column: 16)
!2842 = !DILocation(line: 0, scope: !2838)
!2843 = !DILocation(line: 0, scope: !2821)
!2844 = !DILocation(line: 1012, column: 25, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 1012, column: 9)
!2846 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 1012, column: 9)
!2847 = !DILocation(line: 1012, column: 9, scope: !2846)
!2848 = !DILocation(line: 1013, column: 21, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 1012, column: 39)
!2850 = !DILocation(line: 1013, column: 35, scope: !2849)
!2851 = !DILocation(line: 1013, column: 13, scope: !2849)
!2852 = !DILocation(line: 1012, column: 33, scope: !2845)
!2853 = distinct !{!2853, !2847, !2854, !538}
!2854 = !DILocation(line: 1014, column: 9, scope: !2846)
!2855 = !DILocation(line: 1017, column: 9, scope: !2808)
!2856 = !DILocation(line: 1019, column: 13, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 1019, column: 13)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 1017, column: 21)
!2859 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 1017, column: 9)
!2860 = !DILocation(line: 1019, column: 13, scope: !2858)
!2861 = !DILocation(line: 1020, column: 13, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 1019, column: 34)
!2863 = !DILocation(line: 1021, column: 13, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1021, column: 13)
!2865 = !{!2866, !611, i64 456}
!2866 = !{!"conn", !611, i64 0, !570, i64 8, !613, i64 12, !613, i64 13, !613, i64 14, !613, i64 15, !613, i64 16, !613, i64 17, !613, i64 18, !568, i64 20, !568, i64 24, !570, i64 28, !2867, i64 32, !616, i64 160, !616, i64 162, !611, i64 168, !611, i64 176, !570, i64 184, !570, i64 188, !611, i64 192, !611, i64 200, !611, i64 208, !570, i64 216, !611, i64 224, !570, i64 232, !570, i64 236, !568, i64 240, !570, i64 312, !568, i64 316, !568, i64 320, !568, i64 324, !570, i64 328, !2870, i64 332, !570, i64 360, !613, i64 364, !2872, i64 368, !568, i64 392, !567, i64 416, !567, i64 424, !616, i64 432, !570, i64 436, !570, i64 440, !611, i64 448, !611, i64 456, !611, i64 464, !611, i64 472, !611, i64 480, !611, i64 488}
!2867 = !{!"event", !2868, i64 0, !568, i64 40, !570, i64 56, !611, i64 64, !568, i64 72, !616, i64 104, !616, i64 106, !1411, i64 112}
!2868 = !{!"event_callback", !2869, i64 0, !616, i64 16, !568, i64 18, !568, i64 19, !568, i64 24, !611, i64 32}
!2869 = !{!"", !611, i64 0, !611, i64 8}
!2870 = !{!"sockaddr_in6", !616, i64 0, !616, i64 2, !570, i64 4, !2871, i64 8, !570, i64 24}
!2871 = !{!"in6_addr", !568, i64 0}
!2872 = !{!"", !611, i64 0, !567, i64 8, !567, i64 16}
!2873 = !{!2874, !611, i64 6776}
!2874 = !{!"", !567, i64 0, !611, i64 8, !2867, i64 16, !570, i64 144, !2875, i64 152, !568, i64 6600, !611, i64 6744, !611, i64 6752, !611, i64 6760, !611, i64 6768, !611, i64 6776, !611, i64 6784, !611, i64 6792, !570, i64 6800}
!2875 = !{!"thread_stats", !568, i64 0, !567, i64 40, !567, i64 48, !567, i64 56, !567, i64 64, !567, i64 72, !567, i64 80, !567, i64 88, !567, i64 96, !567, i64 104, !567, i64 112, !567, i64 120, !567, i64 128, !567, i64 136, !567, i64 144, !567, i64 152, !567, i64 160, !567, i64 168, !567, i64 176, !567, i64 184, !567, i64 192, !567, i64 200, !567, i64 208, !567, i64 216, !567, i64 224, !567, i64 232, !567, i64 240, !567, i64 248, !567, i64 256, !567, i64 264, !567, i64 272, !568, i64 280, !568, i64 4376, !567, i64 6424, !567, i64 6432, !567, i64 6440}
!2876 = !DILocation(line: 1022, column: 13, scope: !2862)
!2877 = !DILocation(line: 1024, column: 36, scope: !2862)
!2878 = !DILocation(line: 1024, column: 50, scope: !2862)
!2879 = !DILocation(line: 1024, column: 13, scope: !2862)
!2880 = !DILocation(line: 1025, column: 16, scope: !2862)
!2881 = !DILocation(line: 1025, column: 30, scope: !2862)
!2882 = !DILocation(line: 1025, column: 41, scope: !2862)
!2883 = !{!2874, !567, i64 216}
!2884 = !DILocation(line: 1026, column: 52, scope: !2862)
!2885 = !DILocation(line: 1026, column: 13, scope: !2862)
!2886 = !DILocation(line: 1027, column: 26, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1027, column: 17)
!2888 = !DILocation(line: 1027, column: 34, scope: !2887)
!2889 = !DILocation(line: 1027, column: 17, scope: !2862)
!2890 = !DILocation(line: 1028, column: 25, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 1027, column: 39)
!2892 = !DILocation(line: 1028, column: 17, scope: !2891)
!2893 = !DILocation(line: 1029, column: 13, scope: !2891)
!2894 = !DILocation(line: 1030, column: 23, scope: !2862)
!2895 = !DILocation(line: 1031, column: 9, scope: !2862)
!2896 = !DILocation(line: 1031, column: 24, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 1031, column: 20)
!2898 = !DILocation(line: 1031, column: 32, scope: !2897)
!2899 = !DILocation(line: 1031, column: 37, scope: !2897)
!2900 = !DILocation(line: 1031, column: 40, scope: !2897)
!2901 = !DILocation(line: 1031, column: 44, scope: !2897)
!2902 = !DILocation(line: 1031, column: 55, scope: !2897)
!2903 = !DILocation(line: 1031, column: 52, scope: !2897)
!2904 = !DILocation(line: 1031, column: 20, scope: !2857)
!2905 = !DILocation(line: 1032, column: 13, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 1031, column: 69)
!2907 = !DILocation(line: 1033, column: 13, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 1033, column: 13)
!2909 = !DILocation(line: 1034, column: 13, scope: !2906)
!2910 = !DILocation(line: 1036, column: 36, scope: !2906)
!2911 = !DILocation(line: 1036, column: 50, scope: !2906)
!2912 = !DILocation(line: 1036, column: 13, scope: !2906)
!2913 = !DILocation(line: 1037, column: 16, scope: !2906)
!2914 = !DILocation(line: 1037, column: 30, scope: !2906)
!2915 = !DILocation(line: 1037, column: 41, scope: !2906)
!2916 = !{!2874, !567, i64 208}
!2917 = !DILocation(line: 1038, column: 52, scope: !2906)
!2918 = !DILocation(line: 1038, column: 13, scope: !2906)
!2919 = !DILocation(line: 1039, column: 26, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 1039, column: 17)
!2921 = !DILocation(line: 1039, column: 34, scope: !2920)
!2922 = !DILocation(line: 1039, column: 17, scope: !2906)
!2923 = !DILocation(line: 1040, column: 25, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 1039, column: 39)
!2925 = !DILocation(line: 1040, column: 17, scope: !2924)
!2926 = !DILocation(line: 1041, column: 13, scope: !2924)
!2927 = !DILocation(line: 1042, column: 23, scope: !2906)
!2928 = !DILocation(line: 1043, column: 9, scope: !2906)
!2929 = !DILocation(line: 1044, column: 17, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 1043, column: 16)
!2931 = !DILocation(line: 1045, column: 30, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 1044, column: 28)
!2933 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1044, column: 17)
!2934 = !DILocation(line: 1045, column: 17, scope: !2932)
!2935 = !DILocation(line: 1046, column: 13, scope: !2932)
!2936 = !DILocation(line: 1051, column: 18, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 1051, column: 9)
!2938 = !DILocation(line: 1051, column: 26, scope: !2937)
!2939 = !DILocation(line: 1051, column: 9, scope: !2808)
!2940 = !DILocation(line: 1052, column: 17, scope: !2937)
!2941 = !DILocation(line: 1052, column: 9, scope: !2937)
!2942 = !DILocation(line: 1054, column: 5, scope: !2824)
!2943 = !{!2874, !611, i64 6784}
!2944 = !DILocation(line: 0, scope: !2824)
!2945 = !DILocation(line: 1054, column: 5, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 1054, column: 5)
!2947 = !DILocation(line: 1054, column: 5, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 1054, column: 5)
!2949 = !{!2866, !570, i64 8}
!2950 = !DILocation(line: 1057, column: 5, scope: !2808)
!2951 = !DISubprogram(name: "assoc_find", scope: !1416, file: !1416, line: 3, type: !2952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!260, !1557, !656, !1419}
!2954 = !DISubprogram(name: "fprintf", scope: !1905, file: !1905, line: 326, type: !2955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!114, !2957, !1903, null}
!2957 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2958)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2960, line: 7, baseType: !2961)
!2960 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2962, line: 49, size: 1728, elements: !2963)
!2962 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!2963 = !{!2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2979, !2981, !2982, !2983, !2985, !2986, !2988, !2992, !2995, !2997, !3000, !3003, !3004, !3005, !3006, !3007}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2961, file: !2962, line: 51, baseType: !114, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2961, file: !2962, line: 54, baseType: !143, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2961, file: !2962, line: 55, baseType: !143, size: 64, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2961, file: !2962, line: 56, baseType: !143, size: 64, offset: 192)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2961, file: !2962, line: 57, baseType: !143, size: 64, offset: 256)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2961, file: !2962, line: 58, baseType: !143, size: 64, offset: 320)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2961, file: !2962, line: 59, baseType: !143, size: 64, offset: 384)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2961, file: !2962, line: 60, baseType: !143, size: 64, offset: 448)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2961, file: !2962, line: 61, baseType: !143, size: 64, offset: 512)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2961, file: !2962, line: 64, baseType: !143, size: 64, offset: 576)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2961, file: !2962, line: 65, baseType: !143, size: 64, offset: 640)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2961, file: !2962, line: 66, baseType: !143, size: 64, offset: 704)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2961, file: !2962, line: 68, baseType: !2977, size: 64, offset: 768)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2962, line: 36, flags: DIFlagFwdDecl)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2961, file: !2962, line: 70, baseType: !2980, size: 64, offset: 832)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2961, file: !2962, line: 72, baseType: !114, size: 32, offset: 896)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2961, file: !2962, line: 73, baseType: !114, size: 32, offset: 928)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2961, file: !2962, line: 74, baseType: !2984, size: 64, offset: 960)
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !93, line: 152, baseType: !184)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2961, file: !2962, line: 77, baseType: !116, size: 16, offset: 1024)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2961, file: !2962, line: 78, baseType: !2987, size: 8, offset: 1040)
!2987 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2961, file: !2962, line: 79, baseType: !2989, size: 8, offset: 1048)
!2989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 8, elements: !2990)
!2990 = !{!2991}
!2991 = !DISubrange(count: 1)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2961, file: !2962, line: 81, baseType: !2993, size: 64, offset: 1088)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2962, line: 43, baseType: null)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2961, file: !2962, line: 89, baseType: !2996, size: 64, offset: 1152)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !93, line: 153, baseType: !184)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2961, file: !2962, line: 91, baseType: !2998, size: 64, offset: 1216)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2962, line: 37, flags: DIFlagFwdDecl)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2961, file: !2962, line: 92, baseType: !3001, size: 64, offset: 1280)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2962, line: 38, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2961, file: !2962, line: 93, baseType: !2980, size: 64, offset: 1344)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2961, file: !2962, line: 94, baseType: !95, size: 64, offset: 1408)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2961, file: !2962, line: 95, baseType: !144, size: 64, offset: 1472)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2961, file: !2962, line: 96, baseType: !114, size: 32, offset: 1536)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2961, file: !2962, line: 98, baseType: !3008, size: 160, offset: 1568)
!3008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 160, elements: !3009)
!3009 = !{!3010}
!3010 = !DISubrange(count: 20)
!3011 = !DISubprogram(name: "storage_delete", scope: !3012, file: !3012, line: 4, type: !3013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!3012 = !DIFile(filename: "./storage.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "1366cb74d3c75a613067dc0e748ab303")
!3013 = !DISubroutineType(types: !3014)
!3014 = !{null, !95, !260}
!3015 = distinct !DISubprogram(name: "do_item_bump", scope: !3, file: !3, line: 1063, type: !3016, scopeLine: 1063, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{null, !2072, !260, !1419}
!3018 = !{!3019, !3020, !3021}
!3019 = !DILocalVariable(name: "c", arg: 1, scope: !3015, file: !3, line: 1063, type: !2072)
!3020 = !DILocalVariable(name: "it", arg: 2, scope: !3015, file: !3, line: 1063, type: !260)
!3021 = !DILocalVariable(name: "hv", arg: 3, scope: !3015, file: !3, line: 1063, type: !1419)
!3022 = !DILocation(line: 0, scope: !3015)
!3023 = !DILocation(line: 1070, column: 18, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 1070, column: 9)
!3025 = !DILocation(line: 1070, column: 9, scope: !3015)
!3026 = !DILocation(line: 1071, column: 14, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 1071, column: 13)
!3028 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1070, column: 33)
!3029 = !DILocation(line: 1071, column: 18, scope: !3027)
!3030 = !DILocation(line: 1071, column: 27, scope: !3027)
!3031 = !DILocation(line: 1071, column: 42, scope: !3027)
!3032 = !DILocation(line: 1071, column: 13, scope: !3028)
!3033 = !DILocation(line: 1072, column: 31, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 1072, column: 17)
!3035 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 1071, column: 48)
!3036 = !DILocation(line: 1072, column: 47, scope: !3034)
!3037 = !DILocation(line: 1072, column: 17, scope: !3035)
!3038 = !DILocation(line: 1073, column: 17, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 1072, column: 53)
!3040 = !DILocation(line: 1073, column: 30, scope: !3039)
!3041 = !DILocation(line: 1074, column: 13, scope: !3039)
!3042 = !DILocation(line: 1075, column: 30, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 1074, column: 20)
!3044 = !DILocation(line: 1076, column: 21, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 1076, column: 21)
!3046 = !DILocation(line: 1076, column: 36, scope: !3045)
!3047 = !DILocation(line: 1076, column: 21, scope: !3043)
!3048 = !DILocation(line: 1077, column: 32, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1076, column: 49)
!3050 = !DILocation(line: 1077, column: 25, scope: !3049)
!3051 = !DILocation(line: 1077, column: 30, scope: !3049)
!3052 = !DILocation(line: 1078, column: 17, scope: !3049)
!3053 = !DILocation(line: 1078, column: 47, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1078, column: 28)
!3055 = !DILocation(line: 1078, column: 55, scope: !3054)
!3056 = !{!2874, !611, i64 6792}
!3057 = !DILocation(line: 1078, column: 29, scope: !3054)
!3058 = !DILocation(line: 1078, column: 28, scope: !3045)
!3059 = !DILocation(line: 1080, column: 21, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 1078, column: 78)
!3061 = !DILocation(line: 1080, column: 34, scope: !3060)
!3062 = !DILocation(line: 1081, column: 17, scope: !3060)
!3063 = !DILocation(line: 1085, column: 9, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1084, column: 12)
!3065 = !DILocation(line: 1085, column: 13, scope: !3064)
!3066 = !DILocation(line: 1085, column: 22, scope: !3064)
!3067 = !DILocation(line: 1086, column: 9, scope: !3064)
!3068 = !DILocation(line: 1088, column: 1, scope: !3015)
!3069 = !DISubprogram(name: "pthread_getspecific", scope: !541, file: !541, line: 1131, type: !3070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!95, !3072}
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !156, line: 49, baseType: !7)
!3073 = !DISubprogram(name: "logger_log", scope: !38, file: !38, line: 216, type: !3074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!71, !147, !3076, !239, null}
!3076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!3077 = distinct !DISubprogram(name: "lru_bump_async", scope: !3, file: !3, line: 1312, type: !3078, scopeLine: 1312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3080)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!301, !412, !260, !263}
!3080 = !{!3081, !3082, !3083, !3084, !3085}
!3081 = !DILocalVariable(name: "b", arg: 1, scope: !3077, file: !3, line: 1312, type: !412)
!3082 = !DILocalVariable(name: "it", arg: 2, scope: !3077, file: !3, line: 1312, type: !260)
!3083 = !DILocalVariable(name: "hv", arg: 3, scope: !3077, file: !3, line: 1312, type: !263)
!3084 = !DILocalVariable(name: "ret", scope: !3077, file: !3, line: 1313, type: !301)
!3085 = !DILocalVariable(name: "be", scope: !3077, file: !3, line: 1316, type: !255)
!3086 = !DILocation(line: 0, scope: !3077)
!3087 = !DILocation(line: 1314, column: 5, scope: !3077)
!3088 = !DILocation(line: 1315, column: 28, scope: !3077)
!3089 = !DILocation(line: 1315, column: 5, scope: !3077)
!3090 = !DILocation(line: 1316, column: 63, scope: !3077)
!3091 = !{!2475, !611, i64 56}
!3092 = !DILocation(line: 1316, column: 45, scope: !3077)
!3093 = !DILocation(line: 1317, column: 12, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 1317, column: 9)
!3095 = !DILocation(line: 1317, column: 9, scope: !3077)
!3096 = !DILocation(line: 1318, column: 13, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 1317, column: 21)
!3098 = !DILocation(line: 1318, column: 16, scope: !3097)
!3099 = !{!3100, !611, i64 0}
!3100 = !{!"", !611, i64 0, !570, i64 8}
!3101 = !DILocation(line: 1319, column: 13, scope: !3097)
!3102 = !DILocation(line: 1319, column: 16, scope: !3097)
!3103 = !{!3100, !570, i64 8}
!3104 = !DILocation(line: 1320, column: 28, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 1320, column: 13)
!3106 = !DILocation(line: 1320, column: 13, scope: !3105)
!3107 = !DILocation(line: 1320, column: 57, scope: !3105)
!3108 = !DILocation(line: 1320, column: 13, scope: !3097)
!3109 = !DILocation(line: 1324, column: 5, scope: !3097)
!3110 = !DILocation(line: 1328, column: 9, scope: !3077)
!3111 = !DILocation(line: 1325, column: 13, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 1324, column: 12)
!3113 = !DILocation(line: 1326, column: 12, scope: !3112)
!3114 = !DILocation(line: 1321, column: 17, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 1320, column: 63)
!3116 = !DILocation(line: 1322, column: 16, scope: !3115)
!3117 = !DILocation(line: 1322, column: 23, scope: !3115)
!3118 = !DILocation(line: 0, scope: !3094)
!3119 = !DILocation(line: 1329, column: 9, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !3, line: 1328, column: 15)
!3121 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 1328, column: 9)
!3122 = !DILocation(line: 1330, column: 5, scope: !3120)
!3123 = !DILocation(line: 1331, column: 5, scope: !3077)
!3124 = !DILocation(line: 1332, column: 5, scope: !3077)
!3125 = distinct !DISubprogram(name: "do_item_touch", scope: !3, file: !3, line: 1090, type: !3126, scopeLine: 1091, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!260, !1557, !144, !263, !1419, !2072}
!3128 = !{!3129, !3130, !3131, !3132, !3133, !3134}
!3129 = !DILocalVariable(name: "key", arg: 1, scope: !3125, file: !3, line: 1090, type: !1557)
!3130 = !DILocalVariable(name: "nkey", arg: 2, scope: !3125, file: !3, line: 1090, type: !144)
!3131 = !DILocalVariable(name: "exptime", arg: 3, scope: !3125, file: !3, line: 1090, type: !263)
!3132 = !DILocalVariable(name: "hv", arg: 4, scope: !3125, file: !3, line: 1091, type: !1419)
!3133 = !DILocalVariable(name: "c", arg: 5, scope: !3125, file: !3, line: 1091, type: !2072)
!3134 = !DILocalVariable(name: "it", scope: !3125, file: !3, line: 1092, type: !260)
!3135 = !DILocation(line: 0, scope: !3125)
!3136 = !DILocation(line: 1092, column: 16, scope: !3125)
!3137 = !DILocation(line: 1093, column: 12, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 1093, column: 9)
!3139 = !DILocation(line: 1093, column: 9, scope: !3125)
!3140 = !DILocation(line: 1094, column: 23, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 1093, column: 21)
!3142 = !DILocation(line: 1094, column: 13, scope: !3141)
!3143 = !DILocation(line: 1094, column: 21, scope: !3141)
!3144 = !DILocation(line: 1095, column: 5, scope: !3141)
!3145 = !DILocation(line: 1096, column: 5, scope: !3125)
!3146 = !DISubprogram(name: "item_trylock", scope: !6, file: !6, line: 983, type: !3147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!95, !263}
!3149 = !DISubprogram(name: "item_trylock_unlock", scope: !6, file: !6, line: 984, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!3150 = distinct !DISubprogram(name: "do_item_link_q", scope: !3, file: !3, line: 421, type: !1304, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3151)
!3151 = !{!3152, !3153, !3154}
!3152 = !DILocalVariable(name: "it", arg: 1, scope: !3150, file: !3, line: 421, type: !260)
!3153 = !DILocalVariable(name: "head", scope: !3150, file: !3, line: 422, type: !1367)
!3154 = !DILocalVariable(name: "tail", scope: !3150, file: !3, line: 422, type: !1367)
!3155 = !DILocation(line: 0, scope: !3150)
!3156 = !DILocation(line: 423, column: 5, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 423, column: 5)
!3158 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 423, column: 5)
!3159 = !DILocation(line: 423, column: 5, scope: !3158)
!3160 = !DILocation(line: 425, column: 23, scope: !3150)
!3161 = !DILocation(line: 425, column: 13, scope: !3150)
!3162 = !DILocation(line: 426, column: 13, scope: !3150)
!3163 = !DILocation(line: 427, column: 5, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 427, column: 5)
!3165 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 427, column: 5)
!3166 = !DILocation(line: 427, column: 5, scope: !3165)
!3167 = !DILocation(line: 428, column: 5, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 428, column: 5)
!3169 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 428, column: 5)
!3170 = !DILocation(line: 428, column: 5, scope: !3169)
!3171 = !DILocation(line: 429, column: 9, scope: !3150)
!3172 = !DILocation(line: 429, column: 14, scope: !3150)
!3173 = !DILocation(line: 430, column: 9, scope: !3150)
!3174 = !DILocation(line: 430, column: 14, scope: !3150)
!3175 = !DILocation(line: 431, column: 36, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 431, column: 9)
!3177 = !DILocation(line: 431, column: 23, scope: !3176)
!3178 = !DILocation(line: 431, column: 29, scope: !3176)
!3179 = !DILocation(line: 431, column: 34, scope: !3176)
!3180 = !DILocation(line: 433, column: 9, scope: !3150)
!3181 = !DILocation(line: 432, column: 11, scope: !3150)
!3182 = !DILocation(line: 433, column: 29, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 433, column: 9)
!3184 = !DILocation(line: 433, column: 21, scope: !3183)
!3185 = !DILocation(line: 434, column: 15, scope: !3150)
!3186 = !DILocation(line: 434, column: 5, scope: !3150)
!3187 = !DILocation(line: 434, column: 27, scope: !3150)
!3188 = !DILocation(line: 436, column: 13, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 436, column: 9)
!3190 = !DILocation(line: 436, column: 22, scope: !3189)
!3191 = !DILocation(line: 436, column: 9, scope: !3150)
!3192 = !DILocation(line: 437, column: 42, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 436, column: 34)
!3194 = !DILocation(line: 437, column: 25, scope: !3193)
!3195 = !DILocation(line: 437, column: 9, scope: !3193)
!3196 = !DILocation(line: 437, column: 38, scope: !3193)
!3197 = !DILocation(line: 437, column: 58, scope: !3193)
!3198 = !DILocation(line: 437, column: 72, scope: !3193)
!3199 = !DILocation(line: 438, column: 5, scope: !3193)
!3200 = !DILocation(line: 439, column: 41, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 438, column: 12)
!3202 = !DILocation(line: 439, column: 25, scope: !3201)
!3203 = !DILocation(line: 439, column: 9, scope: !3201)
!3204 = !DILocation(line: 439, column: 38, scope: !3201)
!3205 = !DILocation(line: 446, column: 1, scope: !3150)
!3206 = !DISubprogram(name: "slabs_reassign", scope: !77, file: !77, line: 60, type: !3207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!76, !114, !114}
!3209 = distinct !DISubprogram(name: "item_lru_bump_buf_create", scope: !3, file: !3, line: 1294, type: !3210, scopeLine: 1294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!95}
!3212 = !{!3213}
!3213 = !DILocalVariable(name: "b", scope: !3209, file: !3, line: 1295, type: !412)
!3214 = !DILocation(line: 1295, column: 23, scope: !3209)
!3215 = !DILocation(line: 0, scope: !3209)
!3216 = !DILocation(line: 1296, column: 11, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 1296, column: 9)
!3218 = !DILocation(line: 1296, column: 9, scope: !3209)
!3219 = !DILocation(line: 1297, column: 9, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 1296, column: 20)
!3221 = !DILocation(line: 1300, column: 14, scope: !3209)
!3222 = !DILocation(line: 1300, column: 8, scope: !3209)
!3223 = !DILocation(line: 1300, column: 12, scope: !3209)
!3224 = !DILocation(line: 1301, column: 16, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 1301, column: 9)
!3226 = !DILocation(line: 1301, column: 9, scope: !3209)
!3227 = !DILocation(line: 1302, column: 14, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 1301, column: 25)
!3229 = !DILocation(line: 1302, column: 9, scope: !3228)
!3230 = !DILocation(line: 1303, column: 9, scope: !3228)
!3231 = !DILocation(line: 1306, column: 25, scope: !3209)
!3232 = !DILocation(line: 1306, column: 28, scope: !3209)
!3233 = !DILocation(line: 1306, column: 5, scope: !3209)
!3234 = !DILocation(line: 1308, column: 5, scope: !3209)
!3235 = !DILocation(line: 1309, column: 5, scope: !3209)
!3236 = !DILocation(line: 1310, column: 1, scope: !3209)
!3237 = !DISubprogram(name: "bipbuf_new", scope: !194, file: !194, line: 26, type: !3238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!192, !657}
!3240 = !DISubprogram(name: "pthread_mutex_init", scope: !541, file: !541, line: 725, type: !3241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!114, !544, !3243}
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3245)
!3245 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !156, line: 36, baseType: !3246)
!3246 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !156, line: 32, size: 32, elements: !3247)
!3247 = !{!3248, !3250}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !3246, file: !156, line: 34, baseType: !3249, size: 32)
!3249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 32, elements: !397)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !3246, file: !156, line: 35, baseType: !114, size: 32)
!3251 = distinct !DISubprogram(name: "lru_bump_buf_link_q", scope: !3, file: !3, line: 1281, type: !3252, scopeLine: 1281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3254)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{null, !412}
!3254 = !{!3255}
!3255 = !DILocalVariable(name: "b", arg: 1, scope: !3251, file: !3, line: 1281, type: !412)
!3256 = !DILocation(line: 0, scope: !3251)
!3257 = !DILocation(line: 1282, column: 5, scope: !3251)
!3258 = !DILocation(line: 1283, column: 5, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 1283, column: 5)
!3260 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 1283, column: 5)
!3261 = !DILocation(line: 1283, column: 5, scope: !3260)
!3262 = !DILocation(line: 1285, column: 8, scope: !3251)
!3263 = !DILocation(line: 1285, column: 13, scope: !3251)
!3264 = !{!2475, !611, i64 0}
!3265 = !DILocation(line: 1286, column: 15, scope: !3251)
!3266 = !DILocation(line: 1286, column: 8, scope: !3251)
!3267 = !DILocation(line: 1286, column: 13, scope: !3251)
!3268 = !{!2475, !611, i64 8}
!3269 = !DILocation(line: 1287, column: 9, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 1287, column: 9)
!3271 = !DILocation(line: 1287, column: 9, scope: !3251)
!3272 = !DILocation(line: 1287, column: 34, scope: !3270)
!3273 = !DILocation(line: 1287, column: 21, scope: !3270)
!3274 = !DILocation(line: 1287, column: 27, scope: !3270)
!3275 = !DILocation(line: 1287, column: 32, scope: !3270)
!3276 = !DILocation(line: 1287, column: 18, scope: !3270)
!3277 = !DILocation(line: 1288, column: 19, scope: !3251)
!3278 = !DILocation(line: 1289, column: 9, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 1289, column: 9)
!3280 = !DILocation(line: 1289, column: 23, scope: !3279)
!3281 = !DILocation(line: 1289, column: 9, scope: !3251)
!3282 = !DILocation(line: 1289, column: 45, scope: !3279)
!3283 = !DILocation(line: 1289, column: 43, scope: !3279)
!3284 = !DILocation(line: 1289, column: 29, scope: !3279)
!3285 = !DILocation(line: 1290, column: 5, scope: !3251)
!3286 = !DILocation(line: 1291, column: 5, scope: !3251)
!3287 = distinct !DISubprogram(name: "stop_lru_maintainer_thread", scope: !3, file: !3, line: 1706, type: !3288, scopeLine: 1706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3290)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!114}
!3290 = !{!3291}
!3291 = !DILocalVariable(name: "ret", scope: !3287, file: !3, line: 1707, type: !114)
!3292 = !DILocation(line: 1708, column: 5, scope: !3287)
!3293 = !DILocation(line: 1710, column: 34, scope: !3287)
!3294 = !DILocation(line: 1711, column: 5, scope: !3287)
!3295 = !DILocation(line: 1712, column: 29, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 1712, column: 9)
!3297 = !DILocation(line: 1712, column: 16, scope: !3296)
!3298 = !DILocation(line: 0, scope: !3287)
!3299 = !DILocation(line: 1712, column: 56, scope: !3296)
!3300 = !DILocation(line: 1712, column: 9, scope: !3287)
!3301 = !DILocation(line: 1713, column: 17, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 1712, column: 62)
!3303 = !DILocation(line: 1713, column: 71, scope: !3302)
!3304 = !DILocation(line: 1713, column: 9, scope: !3302)
!3305 = !DILocation(line: 1714, column: 9, scope: !3302)
!3306 = !DILocation(line: 1716, column: 36, scope: !3287)
!3307 = !DILocation(line: 1717, column: 5, scope: !3287)
!3308 = !DILocation(line: 1718, column: 1, scope: !3287)
!3309 = !DISubprogram(name: "pthread_join", scope: !541, file: !541, line: 215, type: !3310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!114, !389, !3312}
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!3313 = !DISubprogram(name: "strerror", scope: !547, file: !547, line: 397, type: !3314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!143, !114}
!3316 = distinct !DISubprogram(name: "start_lru_maintainer_thread", scope: !3, file: !3, line: 1720, type: !3317, scopeLine: 1720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3319)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!114, !95}
!3319 = !{!3320, !3321}
!3320 = !DILocalVariable(name: "arg", arg: 1, scope: !3316, file: !3, line: 1720, type: !95)
!3321 = !DILocalVariable(name: "ret", scope: !3316, file: !3, line: 1721, type: !114)
!3322 = !DILocation(line: 0, scope: !3316)
!3323 = !DILocation(line: 1723, column: 5, scope: !3316)
!3324 = !DILocation(line: 1724, column: 34, scope: !3316)
!3325 = !DILocation(line: 1725, column: 36, scope: !3316)
!3326 = !DILocation(line: 1726, column: 16, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 1726, column: 9)
!3328 = !DILocation(line: 1727, column: 38, scope: !3327)
!3329 = !DILocation(line: 1726, column: 9, scope: !3316)
!3330 = !DILocation(line: 1728, column: 17, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 1727, column: 44)
!3332 = !DILocation(line: 1729, column: 13, scope: !3331)
!3333 = !DILocation(line: 1728, column: 9, scope: !3331)
!3334 = !DILocation(line: 1731, column: 9, scope: !3331)
!3335 = !DILocation(line: 1733, column: 5, scope: !3316)
!3336 = !DILocation(line: 1735, column: 5, scope: !3316)
!3337 = !DILocation(line: 1736, column: 1, scope: !3316)
!3338 = !DISubprogram(name: "pthread_create", scope: !541, file: !541, line: 198, type: !3339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!114, !3341, !3343, !3354, !1301}
!3341 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3342)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3344)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3346)
!3346 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !156, line: 62, baseType: !3347)
!3347 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !156, line: 56, size: 448, elements: !3348)
!3348 = !{!3349, !3353}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !3347, file: !156, line: 58, baseType: !3350, size: 448)
!3350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 448, elements: !3351)
!3351 = !{!3352}
!3352 = !DISubrange(count: 56)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !3347, file: !156, line: 59, baseType: !184, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!95, !95}
!3357 = distinct !DISubprogram(name: "lru_maintainer_thread", scope: !3, file: !3, line: 1585, type: !3355, scopeLine: 1585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3358)
!3358 = !{!3359, !3360, !3362, !3363, !3364, !3367, !3368, !3369, !3370, !3372, !3373, !3374, !3375, !3376, !3377, !3382, !3385, !3386}
!3359 = !DILocalVariable(name: "arg", arg: 1, scope: !3357, file: !3, line: 1585, type: !95)
!3360 = !DILocalVariable(name: "sam", scope: !3357, file: !3, line: 1586, type: !3361)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!3362 = !DILocalVariable(name: "storage", scope: !3357, file: !3, line: 1588, type: !95)
!3363 = !DILocalVariable(name: "i", scope: !3357, file: !3, line: 1592, type: !114)
!3364 = !DILocalVariable(name: "to_sleep", scope: !3357, file: !3, line: 1593, type: !3365)
!3365 = !DIDerivedType(tag: DW_TAG_typedef, name: "useconds_t", file: !2441, line: 134, baseType: !3366)
!3366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__useconds_t", file: !93, line: 161, baseType: !7)
!3367 = !DILocalVariable(name: "last_sleep", scope: !3357, file: !3, line: 1594, type: !3365)
!3368 = !DILocalVariable(name: "last_crawler_check", scope: !3357, file: !3, line: 1595, type: !111)
!3369 = !DILocalVariable(name: "last_automove_check", scope: !3357, file: !3, line: 1596, type: !111)
!3370 = !DILocalVariable(name: "next_juggles", scope: !3357, file: !3, line: 1597, type: !3371)
!3371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3365, size: 2048, elements: !2255)
!3372 = !DILocalVariable(name: "backoff_juggles", scope: !3357, file: !3, line: 1598, type: !3371)
!3373 = !DILocalVariable(name: "cdata", scope: !3357, file: !3, line: 1599, type: !434)
!3374 = !DILocalVariable(name: "l", scope: !3357, file: !3, line: 1607, type: !147)
!3375 = !DILocalVariable(name: "last_ratio", scope: !3357, file: !3, line: 1613, type: !293)
!3376 = !DILocalVariable(name: "am", scope: !3357, file: !3, line: 1614, type: !95)
!3377 = !DILocalVariable(name: "did_moves", scope: !3378, file: !3, line: 1643, type: !114)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 1633, column: 71)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1633, column: 9)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 1633, column: 9)
!3381 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 1619, column: 42)
!3382 = !DILocalVariable(name: "src", scope: !3383, file: !3, line: 1680, type: !114)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 1674, column: 81)
!3384 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 1674, column: 13)
!3385 = !DILocalVariable(name: "dst", scope: !3383, file: !3, line: 1680, type: !114)
!3386 = !DILocalVariable(name: "myl", scope: !3387, file: !3, line: 1684, type: !147)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1684, column: 17)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1682, column: 41)
!3389 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 1682, column: 17)
!3390 = !DILocation(line: 0, scope: !3357)
!3391 = !DILocation(line: 1589, column: 17, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 1589, column: 9)
!3393 = !DILocation(line: 1589, column: 9, scope: !3357)
!3394 = !DILocation(line: 1590, column: 13, scope: !3392)
!3395 = !DILocation(line: 1590, column: 9, scope: !3392)
!3396 = !DILocation(line: 1597, column: 5, scope: !3357)
!3397 = !DILocation(line: 1597, column: 16, scope: !3357)
!3398 = !DILocation(line: 1598, column: 5, scope: !3357)
!3399 = !DILocation(line: 1598, column: 16, scope: !3357)
!3400 = !DILocation(line: 1600, column: 9, scope: !3357)
!3401 = !DILocation(line: 1601, column: 15, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 1601, column: 9)
!3403 = !DILocation(line: 1601, column: 9, scope: !3357)
!3404 = !DILocation(line: 1602, column: 17, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 1601, column: 24)
!3406 = !DILocation(line: 1602, column: 9, scope: !3405)
!3407 = !DILocation(line: 1603, column: 9, scope: !3405)
!3408 = !DILocation(line: 1605, column: 32, scope: !3357)
!3409 = !DILocation(line: 1605, column: 5, scope: !3357)
!3410 = !DILocation(line: 1606, column: 12, scope: !3357)
!3411 = !DILocation(line: 1606, column: 27, scope: !3357)
!3412 = !{!3413, !613, i64 137264}
!3413 = !{!"crawler_expired_data", !568, i64 0, !568, i64 40, !570, i64 137256, !570, i64 137260, !613, i64 137264, !613, i64 137265}
!3414 = !DILocation(line: 1607, column: 17, scope: !3357)
!3415 = !DILocation(line: 1608, column: 11, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 1608, column: 9)
!3417 = !DILocation(line: 1608, column: 9, scope: !3357)
!3418 = !DILocation(line: 1609, column: 17, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 1608, column: 20)
!3420 = !DILocation(line: 1609, column: 9, scope: !3419)
!3421 = !DILocation(line: 1610, column: 9, scope: !3419)
!3422 = !DILocation(line: 1613, column: 34, scope: !3357)
!3423 = !{!610, !612, i64 152}
!3424 = !DILocation(line: 1614, column: 21, scope: !3357)
!3425 = !{!3426, !611, i64 0}
!3426 = !{!"", !611, i64 0, !611, i64 8, !611, i64 16}
!3427 = !DILocation(line: 1614, column: 16, scope: !3357)
!3428 = !DILocation(line: 1616, column: 5, scope: !3357)
!3429 = !DILocation(line: 1617, column: 18, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 1617, column: 9)
!3431 = !DILocation(line: 1617, column: 26, scope: !3430)
!3432 = !DILocation(line: 1617, column: 9, scope: !3357)
!3433 = !DILocation(line: 1618, column: 17, scope: !3430)
!3434 = !DILocation(line: 1618, column: 9, scope: !3430)
!3435 = !DILocation(line: 1619, column: 12, scope: !3357)
!3436 = !DILocation(line: 1619, column: 5, scope: !3357)
!3437 = !DILocation(line: 1620, column: 9, scope: !3381)
!3438 = !DILocation(line: 1621, column: 13, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 1621, column: 13)
!3440 = !DILocation(line: 1621, column: 13, scope: !3381)
!3441 = !DILocation(line: 1623, column: 9, scope: !3381)
!3442 = !DILocation(line: 1625, column: 22, scope: !3381)
!3443 = !DILocation(line: 1622, column: 20, scope: !3439)
!3444 = !DILocation(line: 1622, column: 13, scope: !3439)
!3445 = !DILocation(line: 1625, column: 31, scope: !3381)
!3446 = !DILocation(line: 1625, column: 40, scope: !3381)
!3447 = !DILocation(line: 1628, column: 9, scope: !3381)
!3448 = !DILocation(line: 1629, column: 37, scope: !3381)
!3449 = !{!1410, !567, i64 104}
!3450 = !DILocation(line: 1630, column: 9, scope: !3381)
!3451 = !DILocation(line: 1633, column: 9, scope: !3380)
!3452 = !DILocation(line: 1634, column: 31, scope: !3378)
!3453 = !DILocation(line: 1634, column: 47, scope: !3378)
!3454 = !DILocation(line: 1634, column: 29, scope: !3378)
!3455 = !DILocation(line: 1636, column: 17, scope: !3378)
!3456 = !DILocation(line: 1634, column: 78, scope: !3378)
!3457 = !DILocation(line: 1636, column: 33, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 1636, column: 17)
!3459 = !DILocation(line: 1638, column: 37, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 1638, column: 21)
!3461 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 1636, column: 38)
!3462 = !DILocation(line: 1638, column: 21, scope: !3461)
!3463 = !DILocation(line: 1639, column: 45, scope: !3460)
!3464 = !DILocation(line: 1639, column: 21, scope: !3460)
!3465 = !DILocation(line: 0, scope: !3381)
!3466 = !DILocation(line: 1640, column: 17, scope: !3461)
!3467 = !DILocation(line: 1643, column: 29, scope: !3378)
!3468 = !DILocation(line: 0, scope: !3378)
!3469 = !DILocation(line: 1644, column: 27, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 1644, column: 17)
!3471 = !DILocation(line: 1644, column: 17, scope: !3378)
!3472 = !DILocation(line: 1645, column: 21, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 1645, column: 21)
!3474 = distinct !DILexicalBlock(scope: !3470, file: !3, line: 1644, column: 33)
!3475 = !DILocation(line: 1645, column: 40, scope: !3473)
!3476 = !DILocation(line: 1645, column: 21, scope: !3474)
!3477 = !DILocation(line: 1648, column: 37, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 1647, column: 24)
!3479 = !DILocation(line: 0, scope: !3473)
!3480 = !DILocation(line: 1650, column: 21, scope: !3474)
!3481 = !DILocation(line: 1646, column: 59, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 1645, column: 46)
!3483 = !DILocation(line: 1646, column: 62, scope: !3482)
!3484 = !DILocation(line: 1646, column: 40, scope: !3482)
!3485 = !DILocation(line: 1650, column: 40, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 1650, column: 21)
!3487 = !DILocation(line: 1651, column: 37, scope: !3486)
!3488 = !DILocation(line: 1651, column: 40, scope: !3486)
!3489 = !DILocation(line: 1651, column: 21, scope: !3486)
!3490 = !DILocation(line: 1652, column: 40, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3470, file: !3, line: 1652, column: 24)
!3492 = !DILocation(line: 1652, column: 24, scope: !3491)
!3493 = !DILocation(line: 1652, column: 43, scope: !3491)
!3494 = !DILocation(line: 1652, column: 24, scope: !3470)
!3495 = !DILocation(line: 1653, column: 36, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3491, file: !3, line: 1652, column: 48)
!3497 = !DILocation(line: 1654, column: 40, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 1654, column: 21)
!3499 = !DILocation(line: 1654, column: 21, scope: !3496)
!3500 = !DILocation(line: 1655, column: 37, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 1654, column: 68)
!3502 = !DILocation(line: 1655, column: 40, scope: !3501)
!3503 = !DILocation(line: 1656, column: 17, scope: !3501)
!3504 = !DILocation(line: 1657, column: 13, scope: !3496)
!3505 = !DILocation(line: 1658, column: 31, scope: !3378)
!3506 = !DILocation(line: 1658, column: 29, scope: !3378)
!3507 = !DILocation(line: 1659, column: 33, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 1659, column: 17)
!3509 = !DILocation(line: 1659, column: 17, scope: !3378)
!3510 = !DILocation(line: 1660, column: 41, scope: !3508)
!3511 = !DILocation(line: 1660, column: 17, scope: !3508)
!3512 = !DILocation(line: 1633, column: 67, scope: !3379)
!3513 = !DILocation(line: 1633, column: 36, scope: !3379)
!3514 = distinct !{!3514, !3451, !3515, !538}
!3515 = !DILocation(line: 1661, column: 9, scope: !3380)
!3516 = !DILocation(line: 1664, column: 22, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 1664, column: 13)
!3518 = !DILocation(line: 1664, column: 36, scope: !3517)
!3519 = !DILocation(line: 1664, column: 39, scope: !3517)
!3520 = !DILocation(line: 1664, column: 62, scope: !3517)
!3521 = !DILocation(line: 1664, column: 65, scope: !3517)
!3522 = !DILocation(line: 1664, column: 74, scope: !3517)
!3523 = !DILocation(line: 1664, column: 13, scope: !3381)
!3524 = !DILocation(line: 1665, column: 22, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1664, column: 82)
!3526 = !DILocation(line: 1666, column: 9, scope: !3525)
!3527 = !DILocation(line: 1669, column: 22, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 1669, column: 13)
!3529 = !{!610, !613, i64 142}
!3530 = !DILocation(line: 1669, column: 34, scope: !3528)
!3531 = !DILocation(line: 1669, column: 37, scope: !3528)
!3532 = !DILocation(line: 1669, column: 59, scope: !3528)
!3533 = !DILocation(line: 1669, column: 56, scope: !3528)
!3534 = !DILocation(line: 1669, column: 13, scope: !3381)
!3535 = !DILocation(line: 1670, column: 42, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 1669, column: 73)
!3537 = !DILocation(line: 1670, column: 13, scope: !3536)
!3538 = !DILocation(line: 1671, column: 34, scope: !3536)
!3539 = !DILocation(line: 1672, column: 9, scope: !3536)
!3540 = !DILocation(line: 1674, column: 22, scope: !3384)
!3541 = !DILocation(line: 1674, column: 36, scope: !3384)
!3542 = !DILocation(line: 1674, column: 41, scope: !3384)
!3543 = !DILocation(line: 1674, column: 44, scope: !3384)
!3544 = !DILocation(line: 1674, column: 67, scope: !3384)
!3545 = !DILocation(line: 1674, column: 64, scope: !3384)
!3546 = !DILocation(line: 1674, column: 13, scope: !3381)
!3547 = !DILocation(line: 1675, column: 40, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 1675, column: 17)
!3549 = !DILocation(line: 1675, column: 28, scope: !3548)
!3550 = !DILocation(line: 1675, column: 17, scope: !3383)
!3551 = !DILocation(line: 1676, column: 17, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 1675, column: 61)
!3553 = !DILocation(line: 1676, column: 22, scope: !3552)
!3554 = !{!3426, !611, i64 8}
!3555 = !DILocation(line: 1677, column: 27, scope: !3552)
!3556 = !DILocation(line: 1677, column: 22, scope: !3552)
!3557 = !DILocation(line: 1678, column: 39, scope: !3552)
!3558 = !DILocation(line: 1679, column: 13, scope: !3552)
!3559 = !DILocation(line: 1680, column: 13, scope: !3383)
!3560 = !DILocation(line: 1681, column: 18, scope: !3383)
!3561 = !{!3426, !611, i64 16}
!3562 = !DILocation(line: 0, scope: !3383)
!3563 = !DILocation(line: 1681, column: 13, scope: !3383)
!3564 = !DILocation(line: 1682, column: 17, scope: !3389)
!3565 = !DILocation(line: 1682, column: 21, scope: !3389)
!3566 = !DILocation(line: 1682, column: 27, scope: !3389)
!3567 = !DILocation(line: 1682, column: 30, scope: !3389)
!3568 = !DILocation(line: 1682, column: 34, scope: !3389)
!3569 = !DILocation(line: 1682, column: 17, scope: !3383)
!3570 = !DILocation(line: 1683, column: 17, scope: !3388)
!3571 = !DILocation(line: 0, scope: !3387)
!3572 = !DILocation(line: 1684, column: 17, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 1684, column: 17)
!3574 = !DILocation(line: 1684, column: 17, scope: !3387)
!3575 = !DILocation(line: 1686, column: 13, scope: !3388)
!3576 = !DILocation(line: 1688, column: 17, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 1688, column: 17)
!3578 = !DILocation(line: 1688, column: 21, scope: !3577)
!3579 = !DILocation(line: 1688, column: 17, scope: !3383)
!3580 = !DILocation(line: 1689, column: 39, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 1688, column: 27)
!3582 = !DILocation(line: 1690, column: 13, scope: !3581)
!3583 = !DILocation(line: 1692, column: 26, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 1690, column: 34)
!3585 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 1690, column: 24)
!3586 = !DILocation(line: 1694, column: 9, scope: !3384)
!3587 = !DILocation(line: 1694, column: 9, scope: !3383)
!3588 = distinct !{!3588, !3436, !3589, !538}
!3589 = !DILocation(line: 1695, column: 5, scope: !3357)
!3590 = !DILocation(line: 1696, column: 5, scope: !3357)
!3591 = !DILocation(line: 1697, column: 10, scope: !3357)
!3592 = !DILocation(line: 1697, column: 5, scope: !3357)
!3593 = !DILocation(line: 1699, column: 5, scope: !3357)
!3594 = !DILocation(line: 1700, column: 18, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 1700, column: 9)
!3596 = !DILocation(line: 1700, column: 26, scope: !3595)
!3597 = !DILocation(line: 1700, column: 9, scope: !3357)
!3598 = !DILocation(line: 1701, column: 17, scope: !3595)
!3599 = !DILocation(line: 1701, column: 9, scope: !3595)
!3600 = !DILocation(line: 1704, column: 1, scope: !3357)
!3601 = !DILocation(line: 1703, column: 5, scope: !3357)
!3602 = distinct !DISubprogram(name: "lru_maintainer_pause", scope: !3, file: !3, line: 1739, type: !519, scopeLine: 1739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !545)
!3603 = !DILocation(line: 1740, column: 5, scope: !3602)
!3604 = !DILocation(line: 1741, column: 1, scope: !3602)
!3605 = distinct !DISubprogram(name: "lru_maintainer_resume", scope: !3, file: !3, line: 1743, type: !519, scopeLine: 1743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !545)
!3606 = !DILocation(line: 1744, column: 5, scope: !3605)
!3607 = !DILocation(line: 1745, column: 1, scope: !3605)
!3608 = distinct !DISubprogram(name: "init_lru_maintainer", scope: !3, file: !3, line: 1747, type: !3288, scopeLine: 1747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !545)
!3609 = !DILocation(line: 1748, column: 32, scope: !3608)
!3610 = !DILocation(line: 1749, column: 5, scope: !3608)
!3611 = distinct !DISubprogram(name: "do_item_linktail_q", scope: !3, file: !3, line: 1753, type: !1304, scopeLine: 1753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3612)
!3612 = !{!3613, !3614, !3615}
!3613 = !DILocalVariable(name: "it", arg: 1, scope: !3611, file: !3, line: 1753, type: !260)
!3614 = !DILocalVariable(name: "head", scope: !3611, file: !3, line: 1754, type: !1367)
!3615 = !DILocalVariable(name: "tail", scope: !3611, file: !3, line: 1754, type: !1367)
!3616 = !DILocation(line: 0, scope: !3611)
!3617 = !DILocation(line: 1755, column: 5, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 1755, column: 5)
!3619 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 1755, column: 5)
!3620 = !DILocation(line: 1755, column: 5, scope: !3619)
!3621 = !DILocation(line: 1756, column: 5, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 1756, column: 5)
!3623 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 1756, column: 5)
!3624 = !DILocation(line: 1756, column: 5, scope: !3623)
!3625 = !DILocation(line: 1758, column: 23, scope: !3611)
!3626 = !DILocation(line: 1758, column: 13, scope: !3611)
!3627 = !DILocation(line: 1759, column: 13, scope: !3611)
!3628 = !DILocation(line: 1761, column: 5, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 1761, column: 5)
!3630 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 1761, column: 5)
!3631 = !DILocation(line: 1761, column: 5, scope: !3630)
!3632 = !DILocation(line: 1762, column: 5, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 1762, column: 5)
!3634 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 1762, column: 5)
!3635 = !DILocation(line: 1762, column: 5, scope: !3634)
!3636 = !DILocation(line: 1763, column: 9, scope: !3611)
!3637 = !DILocation(line: 1763, column: 14, scope: !3611)
!3638 = !DILocation(line: 1764, column: 9, scope: !3611)
!3639 = !DILocation(line: 1764, column: 14, scope: !3611)
!3640 = !DILocation(line: 1766, column: 9, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 1766, column: 9)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1766, column: 9)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !3, line: 1765, column: 19)
!3644 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 1765, column: 9)
!3645 = !DILocation(line: 1766, column: 9, scope: !3642)
!3646 = !DILocation(line: 1767, column: 26, scope: !3643)
!3647 = !DILocation(line: 1767, column: 13, scope: !3643)
!3648 = !DILocation(line: 1767, column: 19, scope: !3643)
!3649 = !DILocation(line: 1767, column: 24, scope: !3643)
!3650 = !DILocation(line: 1770, column: 9, scope: !3611)
!3651 = !DILocation(line: 1769, column: 11, scope: !3611)
!3652 = !DILocation(line: 1770, column: 29, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 1770, column: 9)
!3654 = !DILocation(line: 1770, column: 21, scope: !3653)
!3655 = !DILocation(line: 1772, column: 1, scope: !3611)
!3656 = distinct !DISubprogram(name: "do_item_unlinktail_q", scope: !3, file: !3, line: 1774, type: !1304, scopeLine: 1774, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3657)
!3657 = !{!3658, !3659, !3660}
!3658 = !DILocalVariable(name: "it", arg: 1, scope: !3656, file: !3, line: 1774, type: !260)
!3659 = !DILocalVariable(name: "head", scope: !3656, file: !3, line: 1775, type: !1367)
!3660 = !DILocalVariable(name: "tail", scope: !3656, file: !3, line: 1775, type: !1367)
!3661 = !DILocation(line: 0, scope: !3656)
!3662 = !DILocation(line: 1776, column: 23, scope: !3656)
!3663 = !DILocation(line: 1776, column: 13, scope: !3656)
!3664 = !DILocation(line: 1777, column: 13, scope: !3656)
!3665 = !DILocation(line: 1779, column: 9, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 1779, column: 9)
!3667 = !DILocation(line: 1779, column: 15, scope: !3666)
!3668 = !DILocation(line: 1779, column: 9, scope: !3656)
!3669 = !DILocation(line: 1780, column: 9, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 1780, column: 9)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 1780, column: 9)
!3672 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 1779, column: 22)
!3673 = !DILocation(line: 1780, column: 9, scope: !3671)
!3674 = !DILocation(line: 1781, column: 21, scope: !3672)
!3675 = !DILocation(line: 1781, column: 15, scope: !3672)
!3676 = !DILocation(line: 1782, column: 5, scope: !3672)
!3677 = !DILocation(line: 1783, column: 9, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 1783, column: 9)
!3679 = !DILocation(line: 1783, column: 15, scope: !3678)
!3680 = !DILocation(line: 1783, column: 9, scope: !3656)
!3681 = !DILocation(line: 1784, column: 9, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 1784, column: 9)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 1784, column: 9)
!3684 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 1783, column: 22)
!3685 = !DILocation(line: 1784, column: 9, scope: !3683)
!3686 = !DILocation(line: 1785, column: 17, scope: !3684)
!3687 = !DILocation(line: 1785, column: 21, scope: !3684)
!3688 = !DILocation(line: 1785, column: 15, scope: !3684)
!3689 = !DILocation(line: 1786, column: 5, scope: !3684)
!3690 = !DILocation(line: 1787, column: 5, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !3, line: 1787, column: 5)
!3692 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 1787, column: 5)
!3693 = !DILocation(line: 1787, column: 5, scope: !3692)
!3694 = !DILocation(line: 1788, column: 5, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !3, line: 1788, column: 5)
!3696 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 1788, column: 5)
!3697 = !DILocation(line: 1788, column: 5, scope: !3696)
!3698 = !DILocation(line: 1790, column: 13, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 1790, column: 9)
!3700 = !DILocation(line: 1790, column: 9, scope: !3699)
!3701 = !DILocation(line: 1790, column: 9, scope: !3656)
!3702 = !DILocation(line: 1790, column: 36, scope: !3699)
!3703 = !DILocation(line: 1790, column: 40, scope: !3699)
!3704 = !DILocation(line: 1790, column: 23, scope: !3699)
!3705 = !DILocation(line: 1790, column: 29, scope: !3699)
!3706 = !DILocation(line: 1790, column: 34, scope: !3699)
!3707 = !DILocation(line: 1790, column: 19, scope: !3699)
!3708 = !DILocation(line: 1791, column: 13, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 1791, column: 9)
!3710 = !DILocation(line: 1791, column: 9, scope: !3709)
!3711 = !DILocation(line: 1791, column: 9, scope: !3656)
!3712 = !DILocation(line: 1791, column: 36, scope: !3709)
!3713 = !DILocation(line: 1791, column: 40, scope: !3709)
!3714 = !DILocation(line: 1791, column: 23, scope: !3709)
!3715 = !DILocation(line: 1791, column: 29, scope: !3709)
!3716 = !DILocation(line: 1791, column: 34, scope: !3709)
!3717 = !DILocation(line: 1791, column: 19, scope: !3709)
!3718 = !DILocation(line: 1793, column: 1, scope: !3656)
!3719 = distinct !DISubprogram(name: "do_item_crawl_q", scope: !3, file: !3, line: 1797, type: !3720, scopeLine: 1797, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3722)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!260, !260}
!3722 = !{!3723, !3724, !3725}
!3723 = !DILocalVariable(name: "it", arg: 1, scope: !3719, file: !3, line: 1797, type: !260)
!3724 = !DILocalVariable(name: "head", scope: !3719, file: !3, line: 1798, type: !1367)
!3725 = !DILocalVariable(name: "tail", scope: !3719, file: !3, line: 1798, type: !1367)
!3726 = !DILocation(line: 0, scope: !3719)
!3727 = !DILocation(line: 1799, column: 5, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !3, line: 1799, column: 5)
!3729 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 1799, column: 5)
!3730 = !DILocation(line: 1799, column: 5, scope: !3729)
!3731 = !DILocation(line: 1800, column: 5, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !3, line: 1800, column: 5)
!3733 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 1800, column: 5)
!3734 = !DILocation(line: 1800, column: 5, scope: !3733)
!3735 = !DILocation(line: 1801, column: 23, scope: !3719)
!3736 = !DILocation(line: 1801, column: 13, scope: !3719)
!3737 = !DILocation(line: 1802, column: 13, scope: !3719)
!3738 = !DILocation(line: 1805, column: 13, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 1805, column: 9)
!3740 = !DILocation(line: 1805, column: 18, scope: !3739)
!3741 = !DILocation(line: 1805, column: 9, scope: !3719)
!3742 = !DILocation(line: 1806, column: 9, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3744, file: !3, line: 1806, column: 9)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 1806, column: 9)
!3745 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 1805, column: 24)
!3746 = !DILocation(line: 1806, column: 9, scope: !3744)
!3747 = !DILocation(line: 1807, column: 17, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 1807, column: 13)
!3749 = !DILocation(line: 1807, column: 13, scope: !3748)
!3750 = !DILocation(line: 1807, column: 13, scope: !3745)
!3751 = !DILocation(line: 1808, column: 19, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 1807, column: 23)
!3753 = !DILocation(line: 1809, column: 13, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3755, file: !3, line: 1809, column: 13)
!3755 = distinct !DILexicalBlock(scope: !3752, file: !3, line: 1809, column: 13)
!3756 = !DILocation(line: 1809, column: 13, scope: !3755)
!3757 = !DILocation(line: 1810, column: 13, scope: !3752)
!3758 = !DILocation(line: 1810, column: 17, scope: !3752)
!3759 = !DILocation(line: 1810, column: 23, scope: !3752)
!3760 = !DILocation(line: 1810, column: 28, scope: !3752)
!3761 = !DILocation(line: 1811, column: 9, scope: !3752)
!3762 = !DILocation(line: 1812, column: 9, scope: !3745)
!3763 = !DILocation(line: 1817, column: 5, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 1817, column: 5)
!3765 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 1817, column: 5)
!3766 = !DILocation(line: 1817, column: 5, scope: !3765)
!3767 = !DILocation(line: 1819, column: 13, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 1819, column: 13)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !3, line: 1818, column: 19)
!3770 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 1818, column: 9)
!3771 = !DILocation(line: 1819, column: 19, scope: !3768)
!3772 = !DILocation(line: 1819, column: 13, scope: !3769)
!3773 = !DILocation(line: 1821, column: 21, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 1819, column: 32)
!3775 = !DILocation(line: 1821, column: 19, scope: !3774)
!3776 = !DILocation(line: 1822, column: 9, scope: !3774)
!3777 = !DILocation(line: 1823, column: 13, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 1823, column: 13)
!3779 = !DILocation(line: 1823, column: 19, scope: !3778)
!3780 = !DILocation(line: 1823, column: 13, scope: !3769)
!3781 = !DILocation(line: 1825, column: 21, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3778, file: !3, line: 1823, column: 26)
!3783 = !DILocation(line: 1825, column: 25, scope: !3782)
!3784 = !DILocation(line: 1825, column: 19, scope: !3782)
!3785 = !DILocation(line: 1826, column: 9, scope: !3782)
!3786 = !DILocation(line: 1827, column: 9, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 1827, column: 9)
!3788 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 1827, column: 9)
!3789 = !DILocation(line: 1827, column: 9, scope: !3788)
!3790 = !DILocation(line: 1828, column: 13, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 1828, column: 13)
!3792 = !DILocation(line: 1828, column: 13, scope: !3769)
!3793 = !DILocation(line: 1829, column: 13, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 1829, column: 13)
!3795 = distinct !DILexicalBlock(scope: !3796, file: !3, line: 1829, column: 13)
!3796 = distinct !DILexicalBlock(scope: !3791, file: !3, line: 1828, column: 23)
!3797 = !DILocation(line: 1829, column: 13, scope: !3795)
!3798 = !DILocation(line: 1830, column: 34, scope: !3796)
!3799 = !DILocation(line: 1830, column: 17, scope: !3796)
!3800 = !DILocation(line: 1830, column: 23, scope: !3796)
!3801 = !DILocation(line: 1830, column: 28, scope: !3796)
!3802 = !DILocation(line: 1831, column: 34, scope: !3796)
!3803 = !DILocation(line: 1831, column: 17, scope: !3796)
!3804 = !DILocation(line: 1831, column: 23, scope: !3796)
!3805 = !DILocation(line: 1831, column: 28, scope: !3796)
!3806 = !DILocation(line: 1832, column: 9, scope: !3796)
!3807 = !DILocation(line: 1834, column: 13, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3791, file: !3, line: 1832, column: 16)
!3809 = !DILocation(line: 1834, column: 17, scope: !3808)
!3810 = !DILocation(line: 1834, column: 23, scope: !3808)
!3811 = !DILocation(line: 1834, column: 28, scope: !3808)
!3812 = !DILocation(line: 1837, column: 24, scope: !3769)
!3813 = !DILocation(line: 1837, column: 18, scope: !3769)
!3814 = !DILocation(line: 1838, column: 30, scope: !3769)
!3815 = !DILocation(line: 1838, column: 18, scope: !3769)
!3816 = !DILocation(line: 1839, column: 24, scope: !3769)
!3817 = !DILocation(line: 1841, column: 17, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 1841, column: 13)
!3819 = !DILocation(line: 1841, column: 13, scope: !3818)
!3820 = !DILocation(line: 1841, column: 13, scope: !3769)
!3821 = !DILocation(line: 1842, column: 30, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3818, file: !3, line: 1841, column: 23)
!3823 = !DILocation(line: 1842, column: 17, scope: !3822)
!3824 = !DILocation(line: 1842, column: 23, scope: !3822)
!3825 = !DILocation(line: 1842, column: 28, scope: !3822)
!3826 = !DILocation(line: 1843, column: 9, scope: !3822)
!3827 = !DILocation(line: 1845, column: 5, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 1845, column: 5)
!3829 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 1845, column: 5)
!3830 = !DILocation(line: 1845, column: 5, scope: !3829)
!3831 = !DILocation(line: 1846, column: 5, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !3, line: 1846, column: 5)
!3833 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 1846, column: 5)
!3834 = !DILocation(line: 1846, column: 5, scope: !3833)
!3835 = !DILocation(line: 1848, column: 16, scope: !3719)
!3836 = !DILocation(line: 1848, column: 5, scope: !3719)
!3837 = !DILocation(line: 1849, column: 1, scope: !3719)
!3838 = !DISubprogram(name: "bipbuf_request", scope: !194, file: !194, line: 41, type: !3839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!3841, !192, !554}
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!3842 = !DISubprogram(name: "bipbuf_push", scope: !194, file: !194, line: 42, type: !3843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!114, !192, !554}
!3845 = !DISubprogram(name: "abort", scope: !1896, file: !1896, line: 591, type: !519, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !545)
!3846 = !DISubprogram(name: "logger_create", scope: !38, file: !38, line: 205, type: !3847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!147}
!3849 = !DISubprogram(name: "usleep", scope: !3850, file: !3850, line: 460, type: !3851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!3850 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!114, !3366}
!3853 = distinct !DISubprogram(name: "lru_maintainer_juggle", scope: !3, file: !3, line: 1397, type: !3854, scopeLine: 1397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3856)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!114, !554}
!3856 = !{!3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865}
!3857 = !DILocalVariable(name: "slabs_clsid", arg: 1, scope: !3853, file: !3, line: 1397, type: !554)
!3858 = !DILocalVariable(name: "i", scope: !3853, file: !3, line: 1398, type: !114)
!3859 = !DILocalVariable(name: "did_moves", scope: !3853, file: !3, line: 1399, type: !114)
!3860 = !DILocalVariable(name: "total_bytes", scope: !3853, file: !3, line: 1400, type: !90)
!3861 = !DILocalVariable(name: "chunks_perslab", scope: !3853, file: !3, line: 1401, type: !7)
!3862 = !DILocalVariable(name: "cold_age", scope: !3853, file: !3, line: 1417, type: !111)
!3863 = !DILocalVariable(name: "hot_age", scope: !3853, file: !3, line: 1418, type: !111)
!3864 = !DILocalVariable(name: "warm_age", scope: !3853, file: !3, line: 1419, type: !111)
!3865 = !DILocalVariable(name: "do_more", scope: !3866, file: !3, line: 1445, type: !114)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 1444, column: 31)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 1444, column: 5)
!3868 = distinct !DILexicalBlock(scope: !3853, file: !3, line: 1444, column: 5)
!3869 = !DILocation(line: 0, scope: !3853)
!3870 = !DILocation(line: 1401, column: 5, scope: !3853)
!3871 = !DILocation(line: 1401, column: 18, scope: !3853)
!3872 = !DILocation(line: 1404, column: 5, scope: !3853)
!3873 = !DILocation(line: 1406, column: 18, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3853, file: !3, line: 1406, column: 9)
!3875 = !DILocation(line: 1406, column: 9, scope: !3853)
!3876 = !DILocation(line: 1409, column: 17, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !3, line: 1409, column: 17)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !3, line: 1408, column: 35)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 1408, column: 9)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 1408, column: 9)
!3881 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 1406, column: 28)
!3882 = !DILocation(line: 1409, column: 69, scope: !3877)
!3883 = !DILocation(line: 1409, column: 17, scope: !3878)
!3884 = !DILocation(line: 1410, column: 17, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 1409, column: 75)
!3886 = !DILocation(line: 1412, column: 26, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 1411, column: 20)
!3888 = !DILocation(line: 1408, column: 31, scope: !3879)
!3889 = !DILocation(line: 1408, column: 23, scope: !3879)
!3890 = !DILocation(line: 1408, column: 9, scope: !3880)
!3891 = distinct !{!3891, !3890, !3892, !538}
!3892 = !DILocation(line: 1414, column: 9, scope: !3880)
!3893 = !DILocation(line: 1415, column: 5, scope: !3881)
!3894 = !DILocation(line: 1399, column: 9, scope: !3853)
!3895 = !DILocation(line: 1421, column: 18, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3853, file: !3, line: 1421, column: 9)
!3897 = !DILocation(line: 1421, column: 9, scope: !3853)
!3898 = !DILocation(line: 1422, column: 50, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 1421, column: 33)
!3900 = !DILocation(line: 1422, column: 29, scope: !3899)
!3901 = !DILocation(line: 1422, column: 9, scope: !3899)
!3902 = !DILocation(line: 1423, column: 13, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 1423, column: 13)
!3904 = !DILocation(line: 1423, column: 13, scope: !3899)
!3905 = !DILocation(line: 1424, column: 24, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3903, file: !3, line: 1423, column: 42)
!3907 = !DILocation(line: 1424, column: 68, scope: !3906)
!3908 = !DILocation(line: 1424, column: 37, scope: !3906)
!3909 = !DILocation(line: 1425, column: 9, scope: !3906)
!3910 = !DILocation(line: 1427, column: 36, scope: !3899)
!3911 = !DILocation(line: 1427, column: 24, scope: !3899)
!3912 = !DILocation(line: 1428, column: 9, scope: !3899)
!3913 = !DILocation(line: 1430, column: 39, scope: !3899)
!3914 = !{!610, !612, i64 208}
!3915 = !DILocation(line: 1430, column: 28, scope: !3899)
!3916 = !DILocation(line: 1430, column: 19, scope: !3899)
!3917 = !DILocation(line: 1431, column: 40, scope: !3899)
!3918 = !{!610, !612, i64 216}
!3919 = !DILocation(line: 1431, column: 29, scope: !3899)
!3920 = !DILocation(line: 1431, column: 20, scope: !3899)
!3921 = !DILocation(line: 1434, column: 29, scope: !3899)
!3922 = !DILocation(line: 1434, column: 9, scope: !3899)
!3923 = !DILocation(line: 1435, column: 24, scope: !3899)
!3924 = !DILocation(line: 1435, column: 21, scope: !3899)
!3925 = !DILocation(line: 1436, column: 9, scope: !3899)
!3926 = !DILocation(line: 1438, column: 50, scope: !3899)
!3927 = !DILocation(line: 1438, column: 29, scope: !3899)
!3928 = !DILocation(line: 1438, column: 9, scope: !3899)
!3929 = !DILocation(line: 1439, column: 24, scope: !3899)
!3930 = !DILocation(line: 1439, column: 21, scope: !3899)
!3931 = !DILocation(line: 1440, column: 9, scope: !3899)
!3932 = !DILocation(line: 1441, column: 5, scope: !3899)
!3933 = !DILocation(line: 1444, column: 5, scope: !3868)
!3934 = !DILocation(line: 0, scope: !3866)
!3935 = !DILocation(line: 1446, column: 13, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 1446, column: 13)
!3937 = !DILocation(line: 1446, column: 100, scope: !3936)
!3938 = !DILocation(line: 1447, column: 27, scope: !3936)
!3939 = !DILocation(line: 1447, column: 13, scope: !3936)
!3940 = !DILocation(line: 1446, column: 13, scope: !3866)
!3941 = !DILocation(line: 1448, column: 20, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3936, file: !3, line: 1447, column: 103)
!3943 = !DILocation(line: 1449, column: 9, scope: !3942)
!3944 = !DILocation(line: 1450, column: 22, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 1450, column: 13)
!3946 = !DILocation(line: 1450, column: 13, scope: !3866)
!3947 = !DILocation(line: 1451, column: 38, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 1450, column: 37)
!3949 = !DILocation(line: 1451, column: 24, scope: !3948)
!3950 = !DILocation(line: 1451, column: 21, scope: !3948)
!3951 = !DILocation(line: 1452, column: 9, scope: !3948)
!3952 = !DILocation(line: 1453, column: 21, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 1453, column: 13)
!3954 = !DILocation(line: 1453, column: 13, scope: !3866)
!3955 = !DILocation(line: 1455, column: 18, scope: !3866)
!3956 = !DILocation(line: 1444, column: 27, scope: !3867)
!3957 = !DILocation(line: 1444, column: 19, scope: !3867)
!3958 = distinct !{!3958, !3933, !3959, !538}
!3959 = !DILocation(line: 1456, column: 5, scope: !3868)
!3960 = !DILocation(line: 1458, column: 1, scope: !3853)
!3961 = !DILocation(line: 1457, column: 5, scope: !3853)
!3962 = distinct !DISubprogram(name: "lru_maintainer_bumps", scope: !3, file: !3, line: 1341, type: !2675, scopeLine: 1341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3963)
!3963 = !{!3964, !3965, !3966, !3967, !3968}
!3964 = !DILocalVariable(name: "b", scope: !3962, file: !3, line: 1342, type: !412)
!3965 = !DILocalVariable(name: "be", scope: !3962, file: !3, line: 1343, type: !255)
!3966 = !DILocalVariable(name: "size", scope: !3962, file: !3, line: 1344, type: !7)
!3967 = !DILocalVariable(name: "todo", scope: !3962, file: !3, line: 1345, type: !7)
!3968 = !DILocalVariable(name: "bumped", scope: !3962, file: !3, line: 1346, type: !301)
!3969 = !DILocation(line: 1344, column: 5, scope: !3962)
!3970 = !DILocation(line: 0, scope: !3962)
!3971 = !DILocation(line: 1347, column: 5, scope: !3962)
!3972 = !DILocation(line: 0, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3962, file: !3, line: 1348, column: 5)
!3974 = !DILocation(line: 1348, column: 31, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3973, file: !3, line: 1348, column: 5)
!3976 = !DILocation(line: 1348, column: 5, scope: !3973)
!3977 = !DILocation(line: 1349, column: 32, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3975, file: !3, line: 1348, column: 51)
!3979 = !DILocation(line: 1349, column: 9, scope: !3978)
!3980 = !DILocation(line: 1350, column: 52, scope: !3978)
!3981 = !DILocation(line: 1350, column: 33, scope: !3978)
!3982 = !DILocation(line: 1351, column: 9, scope: !3978)
!3983 = !DILocation(line: 1353, column: 16, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3978, file: !3, line: 1353, column: 13)
!3985 = !DILocation(line: 1353, column: 13, scope: !3978)
!3986 = !DILocation(line: 1354, column: 13, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 1353, column: 25)
!3988 = !DILocation(line: 1356, column: 16, scope: !3978)
!3989 = !DILocation(line: 1359, column: 9, scope: !3978)
!3990 = !DILocation(line: 1350, column: 14, scope: !3978)
!3991 = !DILocation(line: 1360, column: 23, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3978, file: !3, line: 1359, column: 22)
!3993 = !DILocation(line: 1360, column: 27, scope: !3992)
!3994 = !DILocation(line: 1360, column: 13, scope: !3992)
!3995 = !DILocation(line: 1361, column: 32, scope: !3992)
!3996 = !DILocation(line: 1361, column: 13, scope: !3992)
!3997 = !DILocation(line: 1362, column: 32, scope: !3992)
!3998 = !DILocation(line: 1362, column: 13, scope: !3992)
!3999 = !DILocation(line: 1363, column: 29, scope: !3992)
!4000 = !DILocation(line: 1363, column: 13, scope: !3992)
!4001 = !DILocation(line: 1364, column: 15, scope: !3992)
!4002 = !DILocation(line: 1365, column: 18, scope: !3992)
!4003 = distinct !{!4003, !3989, !4004, !538}
!4004 = !DILocation(line: 1366, column: 9, scope: !3978)
!4005 = !DILocation(line: 1368, column: 29, scope: !3978)
!4006 = !DILocation(line: 1368, column: 9, scope: !3978)
!4007 = !DILocation(line: 1369, column: 48, scope: !3978)
!4008 = !DILocation(line: 1369, column: 53, scope: !3978)
!4009 = !DILocation(line: 1369, column: 33, scope: !3978)
!4010 = !DILocation(line: 1370, column: 9, scope: !3978)
!4011 = !DILocation(line: 1371, column: 5, scope: !3978)
!4012 = !DILocation(line: 1348, column: 45, scope: !3975)
!4013 = distinct !{!4013, !3976, !4014, !538}
!4014 = !DILocation(line: 1371, column: 5, scope: !3973)
!4015 = !DILocation(line: 1346, column: 10, scope: !3962)
!4016 = !DILocation(line: 1372, column: 5, scope: !3962)
!4017 = !DILocation(line: 1373, column: 12, scope: !3962)
!4018 = !DILocation(line: 1374, column: 1, scope: !3962)
!4019 = !DILocation(line: 1373, column: 5, scope: !3962)
!4020 = !DILocation(line: 0, scope: !431)
!4021 = !DILocation(line: 1478, column: 5, scope: !431)
!4022 = !DILocation(line: 1478, column: 13, scope: !431)
!4023 = !DILocation(line: 1479, column: 5, scope: !431)
!4024 = !DILocation(line: 1484, column: 5, scope: !470)
!4025 = !DILocation(line: 1485, column: 9, scope: !468)
!4026 = !DILocation(line: 0, scope: !468)
!4027 = !DILocation(line: 1487, column: 16, scope: !474)
!4028 = !{!4029, !613, i64 528}
!4029 = !{!"", !568, i64 0, !567, i64 488, !567, i64 496, !567, i64 504, !567, i64 512, !570, i64 520, !570, i64 524, !613, i64 528}
!4030 = !DILocation(line: 1487, column: 13, scope: !468)
!4031 = !DILocation(line: 1489, column: 13, scope: !473)
!4032 = !DILocation(line: 1492, column: 45, scope: !473)
!4033 = !{!4029, !567, i64 512}
!4034 = !DILocation(line: 1492, column: 55, scope: !473)
!4035 = !{!4029, !567, i64 496}
!4036 = !DILocation(line: 1492, column: 50, scope: !473)
!4037 = !DILocation(line: 0, scope: !473)
!4038 = !DILocation(line: 1497, column: 57, scope: !473)
!4039 = !DILocation(line: 1497, column: 64, scope: !473)
!4040 = !DILocation(line: 1498, column: 36, scope: !473)
!4041 = !DILocation(line: 1498, column: 54, scope: !473)
!4042 = !{!4029, !570, i64 524}
!4043 = !DILocation(line: 1498, column: 49, scope: !473)
!4044 = !DILocation(line: 1500, column: 13, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !473, file: !3, line: 1500, column: 13)
!4046 = !DILocation(line: 1501, column: 39, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 1500, column: 38)
!4048 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 1500, column: 13)
!4049 = !DILocation(line: 1501, column: 36, scope: !4047)
!4050 = !DILocation(line: 1502, column: 40, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 1502, column: 21)
!4052 = !DILocation(line: 1502, column: 21, scope: !4047)
!4053 = !DILocation(line: 1503, column: 25, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4055, file: !3, line: 1503, column: 25)
!4055 = distinct !DILexicalBlock(scope: !4051, file: !3, line: 1502, column: 57)
!4056 = !DILocation(line: 1503, column: 49, scope: !4054)
!4057 = !DILocation(line: 1503, column: 44, scope: !4054)
!4058 = !DILocation(line: 1503, column: 25, scope: !4055)
!4059 = !DILocation(line: 1504, column: 41, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4054, file: !3, line: 1503, column: 56)
!4061 = !DILocation(line: 1504, column: 44, scope: !4060)
!4062 = !DILocation(line: 1505, column: 21, scope: !4060)
!4063 = !DILocation(line: 1505, column: 51, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4054, file: !3, line: 1505, column: 32)
!4065 = !DILocation(line: 1505, column: 32, scope: !4054)
!4066 = !DILocation(line: 1506, column: 41, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 1505, column: 58)
!4068 = !DILocation(line: 1506, column: 44, scope: !4067)
!4069 = !DILocation(line: 1507, column: 21, scope: !4067)
!4070 = !DILocation(line: 1500, column: 34, scope: !4048)
!4071 = !DILocation(line: 1500, column: 27, scope: !4048)
!4072 = distinct !{!4072, !4044, !4073, !538}
!4073 = !DILocation(line: 1510, column: 13, scope: !4045)
!4074 = !DILocation(line: 1512, column: 36, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !473, file: !3, line: 1512, column: 17)
!4076 = !DILocation(line: 1512, column: 17, scope: !473)
!4077 = !DILocation(line: 1516, column: 17, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !473, file: !3, line: 1516, column: 17)
!4079 = !DILocation(line: 1513, column: 33, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 1512, column: 42)
!4081 = !DILocation(line: 1513, column: 17, scope: !4080)
!4082 = !DILocation(line: 1513, column: 36, scope: !4080)
!4083 = !DILocation(line: 1514, column: 13, scope: !4080)
!4084 = !DILocation(line: 1516, column: 36, scope: !4078)
!4085 = !DILocation(line: 1516, column: 17, scope: !473)
!4086 = !DILocation(line: 1517, column: 33, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4078, file: !3, line: 1516, column: 59)
!4088 = !DILocation(line: 1517, column: 36, scope: !4087)
!4089 = !DILocation(line: 1518, column: 13, scope: !4087)
!4090 = !DILocation(line: 1520, column: 45, scope: !473)
!4091 = !DILocation(line: 1520, column: 30, scope: !473)
!4092 = !DILocation(line: 1520, column: 43, scope: !473)
!4093 = !DILocation(line: 1520, column: 64, scope: !473)
!4094 = !DILocation(line: 1520, column: 13, scope: !473)
!4095 = !DILocation(line: 1520, column: 28, scope: !473)
!4096 = !DILocation(line: 1521, column: 13, scope: !473)
!4097 = !DILocation(line: 1523, column: 30, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !473, file: !3, line: 1521, column: 33)
!4099 = !DILocation(line: 1524, column: 21, scope: !4098)
!4100 = !DILocation(line: 1526, column: 30, scope: !4098)
!4101 = !DILocation(line: 1527, column: 21, scope: !4098)
!4102 = !DILocation(line: 1529, column: 30, scope: !4098)
!4103 = !DILocation(line: 1530, column: 21, scope: !4098)
!4104 = !DILocation(line: 1532, column: 30, scope: !4098)
!4105 = !DILocation(line: 1533, column: 21, scope: !4098)
!4106 = !DILocation(line: 0, scope: !4098)
!4107 = !DILocation(line: 0, scope: !481)
!4108 = !DILocation(line: 1535, column: 13, scope: !481)
!4109 = !DILocation(line: 1535, column: 13, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !481, file: !3, line: 1535, column: 13)
!4111 = !DILocation(line: 1535, column: 13, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !481, file: !3, line: 1535, column: 13)
!4113 = !{!4029, !570, i64 520}
!4114 = !{!4029, !567, i64 504}
!4115 = !DILocation(line: 1546, column: 13, scope: !473)
!4116 = !DILocation(line: 1546, column: 29, scope: !473)
!4117 = !DILocation(line: 1547, column: 13, scope: !473)
!4118 = !DILocation(line: 1548, column: 9, scope: !473)
!4119 = !DILocation(line: 1549, column: 13, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !468, file: !3, line: 1549, column: 13)
!4121 = !DILocation(line: 1549, column: 28, scope: !4120)
!4122 = !DILocation(line: 1549, column: 26, scope: !4120)
!4123 = !DILocation(line: 1549, column: 13, scope: !468)
!4124 = !DILocation(line: 1550, column: 33, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1549, column: 44)
!4126 = !DILocation(line: 1550, column: 13, scope: !4125)
!4127 = !DILocation(line: 1551, column: 17, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 1551, column: 17)
!4129 = !DILocation(line: 1551, column: 26, scope: !4128)
!4130 = !DILocation(line: 1551, column: 17, scope: !4125)
!4131 = !DILocation(line: 1552, column: 39, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 1551, column: 43)
!4133 = !DILocation(line: 1553, column: 13, scope: !4132)
!4134 = !DILocation(line: 1554, column: 45, scope: !4125)
!4135 = !DILocation(line: 1554, column: 13, scope: !4125)
!4136 = !DILocation(line: 1555, column: 13, scope: !4125)
!4137 = !DILocation(line: 1555, column: 21, scope: !4125)
!4138 = !DILocation(line: 1557, column: 30, scope: !4125)
!4139 = !DILocation(line: 1557, column: 43, scope: !4125)
!4140 = !DILocation(line: 1557, column: 28, scope: !4125)
!4141 = !DILocation(line: 1558, column: 9, scope: !4125)
!4142 = !DILocation(line: 1484, column: 50, scope: !469)
!4143 = !DILocation(line: 1484, column: 32, scope: !469)
!4144 = distinct !{!4144, !4024, !4145, !538}
!4145 = !DILocation(line: 1559, column: 5, scope: !470)
!4146 = !DILocation(line: 1560, column: 9, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !431, file: !3, line: 1560, column: 9)
!4148 = !DILocation(line: 1560, column: 9, scope: !431)
!4149 = !DILocation(line: 1561, column: 22, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 1561, column: 13)
!4151 = distinct !DILexicalBlock(scope: !4147, file: !3, line: 1560, column: 17)
!4152 = !{!610, !570, i64 196}
!4153 = !DILocation(line: 1561, column: 13, scope: !4150)
!4154 = !DILocation(line: 1561, column: 42, scope: !4150)
!4155 = !DILocation(line: 1561, column: 54, scope: !4150)
!4156 = !DILocation(line: 1561, column: 74, scope: !4150)
!4157 = !DILocation(line: 1561, column: 13, scope: !4151)
!4158 = !DILocation(line: 1562, column: 38, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 1561, column: 91)
!4160 = !DILocation(line: 1563, column: 9, scope: !4159)
!4161 = !DILocation(line: 1564, column: 27, scope: !4151)
!4162 = !DILocation(line: 1564, column: 68, scope: !4151)
!4163 = !DILocation(line: 1564, column: 9, scope: !4151)
!4164 = !DILocation(line: 1565, column: 5, scope: !4151)
!4165 = !DILocation(line: 1566, column: 1, scope: !431)
!4166 = !DISubprogram(name: "slabs_available_chunks", scope: !77, file: !77, line: 47, type: !4167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!7, !7, !4169, !403}
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!4170 = !DISubprogram(name: "bipbuf_peek_all", scope: !194, file: !194, line: 62, type: !4171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!3841, !4173, !403}
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!4175 = !DISubprogram(name: "item_lock", scope: !6, file: !6, line: 982, type: !4176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{null, !263}
!4178 = !DISubprogram(name: "item_unlock", scope: !6, file: !6, line: 985, type: !4176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!4179 = !DISubprogram(name: "bipbuf_poll", scope: !194, file: !194, line: 69, type: !4180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!3841, !192, !657}
!4182 = !DISubprogram(name: "lru_crawler_start", scope: !436, file: !436, line: 37, type: !4183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !545)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!114, !1280, !263, !4185, !95, !95, !554}
!4185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
