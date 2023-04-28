; ModuleID = 'logger.c'
source_filename = "logger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.0, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%struct._logger = type { %struct._logger*, %struct._logger*, %union.pthread_mutex_t, i64, i64, i64, i16, i16, i16, %struct.bipbuf_t*, %struct._entry_details* }
%struct.bipbuf_t = type { i64, i32, i32, i32, i32, [0 x i8] }
%struct._entry_details = type { i32, i16, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)*, i32 (%struct._logentry*, i8*)*, i8* }
%struct._logentry = type { i32, i8, i16, i64, %struct.timeval, i32, [0 x %union.anon.2] }
%struct.timeval = type { i64, i64 }
%union.anon.2 = type { i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.settings = type { i64, i32, i32, i32, i8*, i32, i32, i64, i32, i8*, i8*, i32, double, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, double, i32, i32, i8, i32, i8, i8, i8*, i32, i32, i32, i32, double, double, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8, i32, i32, i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.logger_watcher = type { i8*, i32, i32, i64, i64, i8, i32, i16, %struct.bipbuf_t* }
%struct.pollfd = type { i32, i16, i16 }
%struct.stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.timeval, i64, i64 }
%struct.stats_state = type { i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8 }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, i64* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%union.pthread_mutexattr_t = type { i32 }
%struct.logger_stats = type { i64, i64, i64, i64, i64 }
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
%struct._stritem = type { %struct._stritem*, %struct._stritem*, %struct._stritem*, i32, i32, i32, i16, i16, i8, i8, [0 x %union.anon.13] }
%union.anon.13 = type { i64 }
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
%struct.msghdr = type { i8*, i32, %struct.iovec*, i64, i8*, i64, i32 }

@logger_stack_lock = dso_local global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !0
@logger_stack_cond = dso_local global %union.pthread_cond_t zeroinitializer, align 8, !dbg !709
@watcher_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !748
@logger_gid = internal global i64 0, align 8, !dbg !780
@logger_stack_head = internal unnamed_addr global %struct._logger* null, align 8, !dbg !782
@logger_stack_tail = internal unnamed_addr global %struct._logger* null, align 8, !dbg !784
@logger_key = dso_local global i32 0, align 4, !dbg !750
@settings = external dso_local local_unnamed_addr global %struct.settings, align 8
@default_entries = internal constant [15 x %struct._entry_details] [%struct._entry_details { i32 512, i16 512, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)* @_logger_log_text, i32 (%struct._logentry*, i8*)* @_logger_parse_text, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0) }, %struct._entry_details { i32 512, i16 64, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)* @_logger_log_evictions, i32 (%struct._logentry*, i8*)* @_logger_parse_ee, i8* null }, %struct._entry_details { i32 512, i16 4, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)* @_logger_log_item_get, i32 (%struct._logentry*, i8*)* @_logger_parse_ige, i8* null }, %struct._entry_details { i32 512, i16 8, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)* @_logger_log_item_store, i32 (%struct._logentry*, i8*)* @_logger_parse_ise, i8* null }, %struct._entry_details { i32 512, i16 2, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)* @_logger_log_text, i32 (%struct._logentry*, i8*)* @_logger_parse_text, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.12, i32 0, i32 0) }, %struct._entry_details { i32 512, i16 2, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)* @_logger_log_text, i32 (%struct._logentry*, i8*)* @_logger_parse_text, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0) }, %struct._entry_details { i32 512, i16 32, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)* @_logger_log_conn_event, i32 (%struct._logentry*, i8*)* @_logger_parse_cne, i8* null }, %struct._entry_details { i32 512, i16 32, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)* @_logger_log_conn_event, i32 (%struct._logentry*, i8*)* @_logger_parse_cce, i8* null }, %struct._entry_details { i32 512, i16 64, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)* @_logger_log_ext_write, i32 (%struct._logentry*, i8*)* @_logger_parse_extw, i8* null }, %struct._entry_details { i32 512, i16 2, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)* @_logger_log_text, i32 (%struct._logentry*, i8*)* @_logger_parse_text, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0) }, %struct._entry_details { i32 512, i16 2, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)* @_logger_log_text, i32 (%struct._logentry*, i8*)* @_logger_parse_text, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0) }, %struct._entry_details { i32 512, i16 2, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)* @_logger_log_text, i32 (%struct._logentry*, i8*)* @_logger_parse_text, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i32 0, i32 0) }, %struct._entry_details { i32 512, i16 2, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)* @_logger_log_text, i32 (%struct._logentry*, i8*)* @_logger_parse_text, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.17, i32 0, i32 0) }, %struct._entry_details { i32 512, i16 2, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)* @_logger_log_text, i32 (%struct._logentry*, i8*)* @_logger_parse_text, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0) }, %struct._entry_details { i32 512, i16 2, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)* @_logger_log_text, i32 (%struct._logentry*, i8*)* @_logger_parse_text, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i32 0, i32 0) }], align 16, !dbg !791
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [44 x i8] c"LOGGER: Failed to bipbuf push a text entry\0A\00", align 1
@watchers = dso_local local_unnamed_addr global [20 x %struct.logger_watcher*] zeroinitializer, align 16, !dbg !753
@.str.1 = private unnamed_addr constant [5 x i8] c"OK\0D\0A\00", align 1
@watchers_pollfds = dso_local global [20 x %struct.pollfd] zeroinitializer, align 16, !dbg !771
@do_run_logger_thread = internal global i32 1, align 4, !dbg !786
@logger_tid = internal global i64 0, align 8, !dbg !789
@.str.2 = private unnamed_addr constant [31 x i8] c"Can't start logger thread: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"LOGGER: Failed to parse log entry\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"pos <= size\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"logger.c\00", align 1
@__PRETTY_FUNCTION__.logger_thread_read = private unnamed_addr constant [56 x i8] c"int logger_thread_read(logger *, struct logger_stats *)\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"LOGGER: unexpectedly couldn't advance buf pointer\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"skipped=%llu\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"something failed with logger thread watcher fd polling\00", align 1
@stats = external dso_local local_unnamed_addr global %struct.stats, align 8
@stats_state = external dso_local local_unnamed_addr global %struct.stats_state, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"<%d %s\00", align 1
@.str.12 = private unnamed_addr constant [133 x i8] c"type=lru_crawler crawler=%d lru=%s low_mark=%llu next_reclaims=%llu since_run=%u next_run=%d elapsed=%u examined=%llu reclaimed=%llu\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"type=slab_move src=%d dst=%d\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"type=compact_start id=%lu version=%llu\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"type=compact_abort id=%lu\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"type=compact_read_start id=%lu offset=%llu\00", align 1
@.str.17 = private unnamed_addr constant [74 x i8] c"type=compact_read_end id=%lu offset=%llu rescues=%lu lost=%lu skipped=%lu\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"type=compact_end id=%lu\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"type=compact_fraginfo ratio=%.2f bytes=%lu\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"LOGGER: Failed to vsnprintf a text entry: (total) %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"ts=%d.%d gid=%llu %s\0A\00", align 1
@current_time = external dso_local global i32, align 4
@.str.22 = private unnamed_addr constant [81 x i8] c"ts=%d.%d gid=%llu type=eviction key=%s fetch=%s ttl=%lld la=%d clsid=%u size=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"not_found\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"flushed\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"expired\00", align 1
@__const._logger_parse_ige.was_found_map = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0)], align 16
@.str.29 = private unnamed_addr constant [74 x i8] c"ts=%d.%d gid=%llu type=item_get key=%s status=%s clsid=%u cfd=%d size=%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"na\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"not_stored\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"stored\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"too_large\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"no_memory\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"prepend\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"cas\00", align 1
@__const._logger_parse_ise.cmd_map = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0)], align 16
@.str.43 = private unnamed_addr constant [90 x i8] c"ts=%d.%d gid=%llu type=item_store key=%s status=%s cmd=%s ttl=%u clsid=%u cfd=%d size=%d\0A\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.47 = private unnamed_addr constant [70 x i8] c"ts=%d.%d gid=%llu type=conn_new rip=%s rport=%hu transport=%s cfd=%d\0A\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@__const._logger_parse_cce.transport_map = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0)], align 16
@.str.49 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"idle_timeout\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@__const._logger_parse_cce.reason_map = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0)], align 16
@.str.53 = private unnamed_addr constant [82 x i8] c"ts=%d.%d gid=%llu type=conn_close rip=%s rport=%hu transport=%s reason=%s cfd=%d\0A\00", align 1
@.str.54 = private unnamed_addr constant [83 x i8] c"ts=%d.%d gid=%llu type=extwrite key=%s fetch=%s ttl=%lld la=%d clsid=%u bucket=%u\0A\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"l != logger_stack_head\00", align 1
@__PRETTY_FUNCTION__.logger_link_q = private unnamed_addr constant [29 x i8] c"void logger_link_q(logger *)\00", align 1
@logger_count = internal unnamed_addr global i32 0, align 4, !dbg !796
@__llvm_gcov_ctr = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.56 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.57 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.58 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.59 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.60 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.61 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.62 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.63 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.64 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.65 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.66 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.67 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.68 = internal global [30 x i64] zeroinitializer
@__llvm_gcov_ctr.69 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.70 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.71 = internal global [14 x i64] zeroinitializer
@__llvm_gcov_ctr.72 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.73 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.74 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.75 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.76 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.77 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.78 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.79 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.80 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.81 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.82 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.83 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.84 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.85 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.86 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.87 = internal global [1 x i64] zeroinitializer
@0 = private unnamed_addr constant [54 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/logger.gcda\00", align 1
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [33 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -802010645, i32 2021258123 }, %emit_function_args_ty { i32 1, i32 539810056, i32 2021258123 }, %emit_function_args_ty { i32 2, i32 64672163, i32 2021258123 }, %emit_function_args_ty { i32 3, i32 -57257539, i32 2021258123 }, %emit_function_args_ty { i32 4, i32 -1918068713, i32 2021258123 }, %emit_function_args_ty { i32 5, i32 -1020255753, i32 2021258123 }, %emit_function_args_ty { i32 6, i32 -581050628, i32 2021258123 }, %emit_function_args_ty { i32 7, i32 -904883216, i32 2021258123 }, %emit_function_args_ty { i32 8, i32 -579451600, i32 2021258123 }, %emit_function_args_ty { i32 9, i32 788181632, i32 2021258123 }, %emit_function_args_ty { i32 10, i32 -1087433568, i32 2021258123 }, %emit_function_args_ty { i32 11, i32 786424904, i32 2021258123 }, %emit_function_args_ty { i32 12, i32 -2141086949, i32 2021258123 }, %emit_function_args_ty { i32 13, i32 1008145399, i32 2021258123 }, %emit_function_args_ty { i32 14, i32 1975115719, i32 2021258123 }, %emit_function_args_ty { i32 15, i32 578075475, i32 2021258123 }, %emit_function_args_ty { i32 16, i32 987321638, i32 2021258123 }, %emit_function_args_ty { i32 17, i32 -1527653592, i32 2021258123 }, %emit_function_args_ty { i32 18, i32 1965086304, i32 2021258123 }, %emit_function_args_ty { i32 19, i32 1063145103, i32 2021258123 }, %emit_function_args_ty { i32 20, i32 -99929201, i32 2021258123 }, %emit_function_args_ty { i32 21, i32 1693462076, i32 2021258123 }, %emit_function_args_ty { i32 22, i32 936018981, i32 2021258123 }, %emit_function_args_ty { i32 23, i32 1898840605, i32 2021258123 }, %emit_function_args_ty { i32 24, i32 1250519336, i32 2021258123 }, %emit_function_args_ty { i32 25, i32 -399896629, i32 2021258123 }, %emit_function_args_ty { i32 26, i32 325217559, i32 2021258123 }, %emit_function_args_ty { i32 27, i32 -68305598, i32 2021258123 }, %emit_function_args_ty { i32 28, i32 1466180049, i32 2021258123 }, %emit_function_args_ty { i32 29, i32 633658218, i32 2021258123 }, %emit_function_args_ty { i32 30, i32 -1978603314, i32 2021258123 }, %emit_function_args_ty { i32 31, i32 -1973632531, i32 2021258123 }, %emit_function_args_ty { i32 32, i32 358640027, i32 2021258123 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [33 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.56, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.57, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.58, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.59, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.60, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.61, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.62, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.63, i32 0, i32 0) }, %emit_arcs_args_ty { i32 8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i32 0, i32 0) }, %emit_arcs_args_ty { i32 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.65, i32 0, i32 0) }, %emit_arcs_args_ty { i32 9, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i32 0, i32 0) }, %emit_arcs_args_ty { i32 7, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i32 0, i32 0) }, %emit_arcs_args_ty { i32 30, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.69, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.70, i32 0, i32 0) }, %emit_arcs_args_ty { i32 14, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.72, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.73, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.74, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.75, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.76, i32 0, i32 0) }, %emit_arcs_args_ty { i32 7, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.77, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.78, i32 0, i32 0) }, %emit_arcs_args_ty { i32 10, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.80, i32 0, i32 0) }, %emit_arcs_args_ty { i32 6, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.81, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.82, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.83, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.84, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.85, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.86, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.87, i32 0, i32 0) }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define dso_local i64 @logger_get_gid() local_unnamed_addr #0 !dbg !804 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 8, !dbg !808
  %0 = add i64 %gcov_ctr, 1, !dbg !808
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 8, !dbg !808
  %1 = atomicrmw add i64* @logger_gid, i64 1 seq_cst, align 8, !dbg !808
  %2 = add i64 %1, 1, !dbg !808
  ret i64 %2, !dbg !809
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define dso_local void @logger_set_gid(i64 noundef %gid) local_unnamed_addr #0 !dbg !810 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.56, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.56, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i64 %gid, metadata !814, metadata !DIExpression()), !dbg !815
  %1 = atomicrmw add i64* @logger_gid, i64 %gid seq_cst, align 8, !dbg !816
  ret void, !dbg !817
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @logger_init() local_unnamed_addr #2 !dbg !818 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.57, i64 0, i64 0), align 8, !dbg !821
  %0 = add i64 %gcov_ctr, 1, !dbg !821
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.57, i64 0, i64 0), align 8, !dbg !821
  store %struct._logger* null, %struct._logger** @logger_stack_head, align 8, !dbg !821, !tbaa !822
  store %struct._logger* null, %struct._logger** @logger_stack_tail, align 8, !dbg !826, !tbaa !822
  %call = tail call i32 @pthread_key_create(i32* noundef nonnull @logger_key, void (i8*)* noundef null) #15, !dbg !827
  %call1 = tail call fastcc i32 @start_logger_thread() #16, !dbg !828
  %cmp.not = icmp eq i32 %call1, 0, !dbg !830
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !831

if.then:                                          ; preds = %entry
  %gcov_ctr2 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.57, i64 0, i64 1), align 8, !dbg !832
  %1 = add i64 %gcov_ctr2, 1, !dbg !832
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.57, i64 0, i64 1), align 8, !dbg !832
  tail call void @abort() #17, !dbg !832
  unreachable, !dbg !832

if.end:                                           ; preds = %entry
  ret void, !dbg !834
}

; Function Attrs: nounwind
declare !dbg !835 dso_local i32 @pthread_key_create(i32* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @start_logger_thread() unnamed_addr #2 !dbg !843 {
entry:
  store volatile i32 1, i32* @do_run_logger_thread, align 4, !dbg !848, !tbaa !849
  %call = tail call i32 @pthread_create(i64* noundef nonnull @logger_tid, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @logger_thread, i8* noundef null) #15, !dbg !851
  call void @llvm.dbg.value(metadata i32 %call, metadata !847, metadata !DIExpression()), !dbg !853
  %cmp.not = icmp eq i32 %call, 0, !dbg !854
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !855

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 0), align 8, !dbg !856
  %0 = add i64 %gcov_ctr, 1, !dbg !856
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 0), align 8, !dbg !856
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !856, !tbaa !822
  %call1 = tail call i8* @strerror(i32 noundef %call) #15, !dbg !858
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call1) #15, !dbg !859
  br label %cleanup, !dbg !860

if.end:                                           ; preds = %entry
  %gcov_ctr3 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 1), align 8, !dbg !861
  %2 = add i64 %gcov_ctr3, 1, !dbg !861
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.58, i64 0, i64 1), align 8, !dbg !861
  br label %cleanup, !dbg !861

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end ], !dbg !853
  ret i32 %retval.0, !dbg !862
}

; Function Attrs: noreturn nounwind
declare !dbg !863 dso_local void @abort() local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @logger_stop() local_unnamed_addr #2 !dbg !865 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.59, i64 0, i64 0), align 8, !dbg !866
  %0 = add i64 %gcov_ctr, 1, !dbg !866
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.59, i64 0, i64 0), align 8, !dbg !866
  tail call fastcc void @stop_logger_thread() #16, !dbg !866
  ret void, !dbg !867
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @stop_logger_thread() unnamed_addr #2 !dbg !868 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 0), align 8, !dbg !869
  %0 = add i64 %gcov_ctr, 1, !dbg !869
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 0), align 8, !dbg !869
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @logger_stack_lock) #15, !dbg !869
  store volatile i32 0, i32* @do_run_logger_thread, align 4, !dbg !870, !tbaa !849
  %call1 = tail call i32 @pthread_cond_signal(%union.pthread_cond_t* noundef nonnull @logger_stack_cond) #15, !dbg !871
  %call2 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @logger_stack_lock) #15, !dbg !872
  %1 = load i64, i64* @logger_tid, align 8, !dbg !873, !tbaa !874
  %call3 = tail call i32 @pthread_join(i64 noundef %1, i8** noundef null) #15, !dbg !876
  ret void, !dbg !877
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._logger* @logger_create() local_unnamed_addr #2 !dbg !878 {
entry:
  %call = tail call noalias i8* @calloc(i64 noundef 1, i64 noundef 104) #15, !dbg !883
  %0 = bitcast i8* %call to %struct._logger*, !dbg !883
  call void @llvm.dbg.value(metadata %struct._logger* %0, metadata !882, metadata !DIExpression()), !dbg !884
  %cmp = icmp eq i8* %call, null, !dbg !885
  br i1 %cmp, label %if.then, label %if.end, !dbg !887

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.61, i64 0, i64 0), align 16, !dbg !888
  %1 = add i64 %gcov_ctr, 1, !dbg !888
  store i64 %1, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.61, i64 0, i64 0), align 16, !dbg !888
  br label %cleanup, !dbg !888

if.end:                                           ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 52), align 4, !dbg !890, !tbaa !891
  %call1 = tail call %struct.bipbuf_t* @bipbuf_new(i32 noundef %2) #15, !dbg !895
  %buf = getelementptr inbounds i8, i8* %call, i64 88, !dbg !896
  %3 = bitcast i8* %buf to %struct.bipbuf_t**, !dbg !896
  store %struct.bipbuf_t* %call1, %struct.bipbuf_t** %3, align 8, !dbg !897, !tbaa !898
  %cmp3 = icmp eq %struct.bipbuf_t* %call1, null, !dbg !901
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !903

if.then4:                                         ; preds = %if.end
  %gcov_ctr8 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.61, i64 0, i64 1), align 8, !dbg !904
  %4 = add i64 %gcov_ctr8, 1, !dbg !904
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.61, i64 0, i64 1), align 8, !dbg !904
  tail call void @free(i8* noundef nonnull %call) #15, !dbg !906
  br label %cleanup, !dbg !907

if.end5:                                          ; preds = %if.end
  %gcov_ctr9 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.61, i64 0, i64 2), align 16, !dbg !908
  %5 = add i64 %gcov_ctr9, 1, !dbg !908
  store i64 %5, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.61, i64 0, i64 2), align 16, !dbg !908
  %entry_map = getelementptr inbounds i8, i8* %call, i64 96, !dbg !909
  %6 = bitcast i8* %entry_map to %struct._entry_details**, !dbg !909
  store %struct._entry_details* getelementptr inbounds ([15 x %struct._entry_details], [15 x %struct._entry_details]* @default_entries, i64 0, i64 0), %struct._entry_details** %6, align 8, !dbg !910, !tbaa !911
  %mutex = getelementptr inbounds i8, i8* %call, i64 16, !dbg !912
  %7 = bitcast i8* %mutex to %union.pthread_mutex_t*, !dbg !912
  %call6 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull %7, %union.pthread_mutexattr_t* noundef null) #15, !dbg !913
  %8 = load i32, i32* @logger_key, align 4, !dbg !914, !tbaa !849
  %call7 = tail call i32 @pthread_setspecific(i32 noundef %8, i8* noundef nonnull %call) #15, !dbg !915
  tail call fastcc void @logger_link_q(%struct._logger* noundef nonnull %0) #16, !dbg !916
  br label %cleanup, !dbg !917

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi %struct._logger* [ null, %if.then ], [ null, %if.then4 ], [ %0, %if.end5 ], !dbg !884
  ret %struct._logger* %retval.0, !dbg !918
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nounwind
declare !dbg !919 dso_local noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !922 dso_local %struct.bipbuf_t* @bipbuf_new(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !926 dso_local void @free(i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !927 dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef, %union.pthread_mutexattr_t* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !939 dso_local i32 @pthread_setspecific(i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @logger_link_q(%struct._logger* noundef %l) unnamed_addr #2 !dbg !942 {
entry:
  call void @llvm.dbg.value(metadata %struct._logger* %l, metadata !946, metadata !DIExpression()), !dbg !947
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @logger_stack_lock) #15, !dbg !948
  %0 = load %struct._logger*, %struct._logger** @logger_stack_head, align 8, !dbg !949, !tbaa !822
  %cmp.not = icmp eq %struct._logger* %0, %l, !dbg !949
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !952

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 0), align 16, !dbg !952
  %1 = add i64 %gcov_ctr, 1, !dbg !952
  store i64 %1, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 0), align 16, !dbg !952
  %prev = getelementptr inbounds %struct._logger, %struct._logger* %l, i64 0, i32 0, !dbg !953
  store %struct._logger* null, %struct._logger** %prev, align 8, !dbg !954, !tbaa !955
  %2 = load %struct._logger*, %struct._logger** @logger_stack_head, align 8, !dbg !956, !tbaa !822
  %next = getelementptr inbounds %struct._logger, %struct._logger* %l, i64 0, i32 1, !dbg !957
  store %struct._logger* %2, %struct._logger** %next, align 8, !dbg !958, !tbaa !959
  %tobool.not = icmp eq %struct._logger* %2, null, !dbg !960
  br i1 %tobool.not, label %if.end5, label %if.then2, !dbg !962

if.else:                                          ; preds = %entry
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 1), align 8, !dbg !949
  %3 = add i64 %gcov_ctr10, 1, !dbg !949
  store i64 %3, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 1), align 8, !dbg !949
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef 462, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.logger_link_q, i64 0, i64 0)) #17, !dbg !949
  unreachable, !dbg !949

if.then2:                                         ; preds = %if.then
  %gcov_ctr11 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 2), align 16, !dbg !963
  %4 = add i64 %gcov_ctr11, 1, !dbg !963
  store i64 %4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 2), align 16, !dbg !963
  %5 = load %struct._logger*, %struct._logger** %next, align 8, !dbg !964, !tbaa !959
  %prev4 = getelementptr inbounds %struct._logger, %struct._logger* %5, i64 0, i32 0, !dbg !965
  store %struct._logger* %l, %struct._logger** %prev4, align 8, !dbg !966, !tbaa !955
  br label %if.end5, !dbg !967

if.end5:                                          ; preds = %if.then2, %if.then
  store %struct._logger* %l, %struct._logger** @logger_stack_head, align 8, !dbg !968, !tbaa !822
  %6 = load %struct._logger*, %struct._logger** @logger_stack_tail, align 8, !dbg !969, !tbaa !822
  %cmp6 = icmp eq %struct._logger* %6, null, !dbg !971
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !972

if.then7:                                         ; preds = %if.end5
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 3), align 8, !dbg !973
  %7 = add i64 %gcov_ctr12, 1, !dbg !973
  store i64 %7, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.62, i64 0, i64 3), align 8, !dbg !973
  store %struct._logger* %l, %struct._logger** @logger_stack_tail, align 8, !dbg !974, !tbaa !822
  br label %if.end8, !dbg !975

if.end8:                                          ; preds = %if.then7, %if.end5
  %8 = load i32, i32* @logger_count, align 4, !dbg !976, !tbaa !849
  %inc = add i32 %8, 1, !dbg !976
  store i32 %inc, i32* @logger_count, align 4, !dbg !976, !tbaa !849
  %call9 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @logger_stack_lock) #15, !dbg !977
  ret void, !dbg !978
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @logger_log(%struct._logger* noundef %l, i32 noundef %event, i8* noundef %entry1, ...) local_unnamed_addr #2 !dbg !979 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._logger* %l, metadata !984, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i32 %event, metadata !985, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8* %entry1, metadata !986, metadata !DIExpression()), !dbg !1001
  %buf2 = getelementptr inbounds %struct._logger, %struct._logger* %l, i64 0, i32 9, !dbg !1002
  %0 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf2, align 8, !dbg !1002, !tbaa !898
  call void @llvm.dbg.value(metadata %struct.bipbuf_t* %0, metadata !987, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i8 0, metadata !988, metadata !DIExpression()), !dbg !1001
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !1003
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #18, !dbg !1003
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !989, metadata !DIExpression()), !dbg !1004
  %entry_map = getelementptr inbounds %struct._logger, %struct._logger* %l, i64 0, i32 10, !dbg !1005
  %2 = load %struct._entry_details*, %struct._entry_details** %entry_map, align 8, !dbg !1005, !tbaa !911
  %idxprom = zext i32 %event to i64, !dbg !1006
  %arrayidx = getelementptr inbounds %struct._entry_details, %struct._entry_details* %2, i64 %idxprom, !dbg !1006
  call void @llvm.dbg.value(metadata %struct._entry_details* %arrayidx, metadata !999, metadata !DIExpression()), !dbg !1001
  %reqlen3 = getelementptr inbounds %struct._entry_details, %struct._entry_details* %arrayidx, i64 0, i32 0, !dbg !1007
  %3 = load i32, i32* %reqlen3, align 8, !dbg !1007, !tbaa !1008
  call void @llvm.dbg.value(metadata i32 %3, metadata !1000, metadata !DIExpression()), !dbg !1001
  %mutex = getelementptr inbounds %struct._logger, %struct._logger* %l, i64 0, i32 2, !dbg !1010
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #15, !dbg !1011
  %add = add i32 %3, 40, !dbg !1012
  %call5 = tail call i8* @bipbuf_request(%struct.bipbuf_t* noundef %0, i32 noundef %add) #15, !dbg !1013
  call void @llvm.dbg.value(metadata i8* %call5, metadata !998, metadata !DIExpression()), !dbg !1001
  %cmp = icmp eq i8* %call5, null, !dbg !1014
  br i1 %cmp, label %if.then, label %if.end, !dbg !1016

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.63, i64 0, i64 0), align 16, !dbg !1017
  %4 = add i64 %gcov_ctr, 1, !dbg !1017
  store i64 %4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.63, i64 0, i64 0), align 16, !dbg !1017
  %call8 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #15, !dbg !1019
  %dropped = getelementptr inbounds %struct._logger, %struct._logger* %l, i64 0, i32 4, !dbg !1020
  %5 = load i64, i64* %dropped, align 8, !dbg !1021, !tbaa !1022
  %inc = add i64 %5, 1, !dbg !1021
  store i64 %inc, i64* %dropped, align 8, !dbg !1021, !tbaa !1022
  br label %cleanup, !dbg !1023

if.end:                                           ; preds = %entry
  %6 = bitcast i8* %call5 to %struct._logentry*, !dbg !1024
  call void @llvm.dbg.value(metadata %struct._logentry* %6, metadata !998, metadata !DIExpression()), !dbg !1001
  %event9 = bitcast i8* %call5 to i32*, !dbg !1025
  store i32 %event, i32* %event9, align 8, !dbg !1026, !tbaa !1027
  %7 = getelementptr inbounds i8, i8* %call5, i64 4, !dbg !1028
  store i8 0, i8* %7, align 4, !dbg !1029, !tbaa !1027
  %call10 = tail call i64 @logger_get_gid() #16, !dbg !1030
  %gid = getelementptr inbounds i8, i8* %call5, i64 8, !dbg !1031
  %8 = bitcast i8* %gid to i64*, !dbg !1031
  store i64 %call10, i64* %8, align 8, !dbg !1032, !tbaa !874
  %eflags = getelementptr inbounds %struct._entry_details, %struct._entry_details* %2, i64 %idxprom, i32 1, !dbg !1033
  %9 = load i16, i16* %eflags, align 4, !dbg !1033, !tbaa !1034
  %eflags11 = getelementptr inbounds i8, i8* %call5, i64 6, !dbg !1035
  %10 = bitcast i8* %eflags11 to i16*, !dbg !1035
  store i16 %9, i16* %10, align 2, !dbg !1036, !tbaa !1037
  %tv = getelementptr inbounds i8, i8* %call5, i64 16, !dbg !1038
  %11 = bitcast i8* %tv to %struct.timeval*, !dbg !1038
  %call12 = tail call i32 @gettimeofday(%struct.timeval* noundef nonnull %11, i8* noundef null) #15, !dbg !1039
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !1040
  call void @llvm.va_start(i8* nonnull %1), !dbg !1040
  %log_cb = getelementptr inbounds %struct._entry_details, %struct._entry_details* %2, i64 %idxprom, i32 2, !dbg !1041
  %12 = load void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)*, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)** %log_cb, align 8, !dbg !1041, !tbaa !1042
  call void %12(%struct._logentry* noundef nonnull %6, %struct._entry_details* noundef nonnull %arrayidx, i8* noundef %entry1, %struct.__va_list_tag* noundef nonnull %arraydecay) #15, !dbg !1043
  call void @llvm.va_end(i8* nonnull %1), !dbg !1044
  %size = getelementptr inbounds i8, i8* %call5, i64 32, !dbg !1045
  %13 = bitcast i8* %size to i32*, !dbg !1045
  %14 = load i32, i32* %13, align 8, !dbg !1045, !tbaa !849
  %add18 = add i32 %14, 40, !dbg !1047
  %15 = load i8, i8* %7, align 4, !dbg !1048, !tbaa !1027
  %conv20 = zext i8 %15 to i32, !dbg !1049
  %add21 = add i32 %add18, %conv20, !dbg !1050
  %call23 = call i32 @bipbuf_push(%struct.bipbuf_t* noundef %0, i32 noundef %add21) #15, !dbg !1051
  %cmp24 = icmp eq i32 %call23, 0, !dbg !1052
  br i1 %cmp24, label %if.then26, label %if.end30, !dbg !1053

if.then26:                                        ; preds = %if.end
  %gcov_ctr40 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.63, i64 0, i64 1), align 8, !dbg !1054
  %16 = add i64 %gcov_ctr40, 1, !dbg !1054
  store i64 %16, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.63, i64 0, i64 1), align 8, !dbg !1054
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1054, !tbaa !822
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0)) #15, !dbg !1056
  %call29 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #15, !dbg !1057
  br label %cleanup, !dbg !1058

if.end30:                                         ; preds = %if.end
  %written = getelementptr inbounds %struct._logger, %struct._logger* %l, i64 0, i32 3, !dbg !1059
  %18 = load i64, i64* %written, align 8, !dbg !1060, !tbaa !1061
  %inc31 = add i64 %18, 1, !dbg !1060
  store i64 %inc31, i64* %written, align 8, !dbg !1060, !tbaa !1061
  %call33 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #15, !dbg !1062
  %gcov_ctr42 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.63, i64 0, i64 3), align 8, !dbg !1063
  %19 = add i64 %gcov_ctr42, 1, !dbg !1063
  store i64 %19, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.63, i64 0, i64 3), align 8, !dbg !1063
  br label %cleanup, !dbg !1063

cleanup:                                          ; preds = %if.end30, %if.then26, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 2, %if.then26 ], [ 0, %if.end30 ], !dbg !1001
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #18, !dbg !1066
  ret i32 %retval.0, !dbg !1066
}

; Function Attrs: nounwind
declare !dbg !1067 dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef) local_unnamed_addr #3

declare !dbg !1070 dso_local i8* @bipbuf_request(%struct.bipbuf_t* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !1074 dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1075 dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #7

declare !dbg !1082 dso_local i32 @bipbuf_push(%struct.bipbuf_t* noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !1085 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @logger_add_watcher(i8* noundef %c, i32 noundef %sfd, i16 noundef zeroext %f) local_unnamed_addr #2 !dbg !1141 {
entry:
  call void @llvm.dbg.value(metadata i8* %c, metadata !1145, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i32 %sfd, metadata !1146, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i16 %f, metadata !1147, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata %struct.logger_watcher* null, metadata !1149, metadata !DIExpression()), !dbg !1150
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @logger_stack_lock) #15, !dbg !1151
  %0 = load i32, i32* @watcher_count, align 4, !dbg !1152, !tbaa !849
  %cmp = icmp sgt i32 %0, 19, !dbg !1154
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !1155

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 0, metadata !1148, metadata !DIExpression()), !dbg !1150
  %1 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 0), align 16, !dbg !1156, !tbaa !822
  %cmp3 = icmp eq %struct.logger_watcher* %1, null, !dbg !1161
  br i1 %cmp3, label %if.then4, label %for.inc, !dbg !1162

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 0), align 16, !dbg !1163
  %2 = add i64 %gcov_ctr, 1, !dbg !1163
  store i64 %2, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 0), align 16, !dbg !1163
  br label %cleanup, !dbg !1165

if.then4:                                         ; preds = %for.inc.17, %for.inc.16, %for.inc.15, %for.inc.14, %for.inc.13, %for.inc.12, %for.inc.11, %for.inc.10, %for.inc.9, %for.inc.8, %for.inc.7, %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %for.cond.preheader
  %x.062.lcssa.wide = phi i32 [ 0, %for.cond.preheader ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ], [ 6, %for.inc.5 ], [ 7, %for.inc.6 ], [ 8, %for.inc.7 ], [ 9, %for.inc.8 ], [ 10, %for.inc.9 ], [ 11, %for.inc.10 ], [ 12, %for.inc.11 ], [ 13, %for.inc.12 ], [ 14, %for.inc.13 ], [ 15, %for.inc.14 ], [ 16, %for.inc.15 ], [ 17, %for.inc.16 ], [ 18, %for.inc.17 ]
  %gcov_ctr33 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 1), align 8, !dbg !1166
  %3 = add i64 %gcov_ctr33, 1, !dbg !1166
  store i64 %3, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 1), align 8, !dbg !1166
  br label %for.end, !dbg !1166

for.inc:                                          ; preds = %for.cond.preheader
  %.promoted = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16
  %4 = add i64 %.promoted, 1, !dbg !1167
  store i64 %4, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 1, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 1, metadata !1148, metadata !DIExpression()), !dbg !1150
  %5 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 1), align 8, !dbg !1156, !tbaa !822
  %cmp3.1 = icmp eq %struct.logger_watcher* %5, null, !dbg !1161
  br i1 %cmp3.1, label %if.then4, label %for.inc.1, !dbg !1162

for.inc.1:                                        ; preds = %for.inc
  %6 = add i64 %.promoted, 2, !dbg !1167
  store i64 %6, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 2, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 2, metadata !1148, metadata !DIExpression()), !dbg !1150
  %7 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 2), align 16, !dbg !1156, !tbaa !822
  %cmp3.2 = icmp eq %struct.logger_watcher* %7, null, !dbg !1161
  br i1 %cmp3.2, label %if.then4, label %for.inc.2, !dbg !1162

for.inc.2:                                        ; preds = %for.inc.1
  %8 = add i64 %.promoted, 3, !dbg !1167
  store i64 %8, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 3, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 3, metadata !1148, metadata !DIExpression()), !dbg !1150
  %9 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 3), align 8, !dbg !1156, !tbaa !822
  %cmp3.3 = icmp eq %struct.logger_watcher* %9, null, !dbg !1161
  br i1 %cmp3.3, label %if.then4, label %for.inc.3, !dbg !1162

for.inc.3:                                        ; preds = %for.inc.2
  %10 = add i64 %.promoted, 4, !dbg !1167
  store i64 %10, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 4, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 4, metadata !1148, metadata !DIExpression()), !dbg !1150
  %11 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 4), align 16, !dbg !1156, !tbaa !822
  %cmp3.4 = icmp eq %struct.logger_watcher* %11, null, !dbg !1161
  br i1 %cmp3.4, label %if.then4, label %for.inc.4, !dbg !1162

for.inc.4:                                        ; preds = %for.inc.3
  %12 = add i64 %.promoted, 5, !dbg !1167
  store i64 %12, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 5, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 5, metadata !1148, metadata !DIExpression()), !dbg !1150
  %13 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 5), align 8, !dbg !1156, !tbaa !822
  %cmp3.5 = icmp eq %struct.logger_watcher* %13, null, !dbg !1161
  br i1 %cmp3.5, label %if.then4, label %for.inc.5, !dbg !1162

for.inc.5:                                        ; preds = %for.inc.4
  %14 = add i64 %.promoted, 6, !dbg !1167
  store i64 %14, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 6, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 6, metadata !1148, metadata !DIExpression()), !dbg !1150
  %15 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 6), align 16, !dbg !1156, !tbaa !822
  %cmp3.6 = icmp eq %struct.logger_watcher* %15, null, !dbg !1161
  br i1 %cmp3.6, label %if.then4, label %for.inc.6, !dbg !1162

for.inc.6:                                        ; preds = %for.inc.5
  %16 = add i64 %.promoted, 7, !dbg !1167
  store i64 %16, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 7, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 7, metadata !1148, metadata !DIExpression()), !dbg !1150
  %17 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 7), align 8, !dbg !1156, !tbaa !822
  %cmp3.7 = icmp eq %struct.logger_watcher* %17, null, !dbg !1161
  br i1 %cmp3.7, label %if.then4, label %for.inc.7, !dbg !1162

for.inc.7:                                        ; preds = %for.inc.6
  %18 = add i64 %.promoted, 8, !dbg !1167
  store i64 %18, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 8, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 8, metadata !1148, metadata !DIExpression()), !dbg !1150
  %19 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 8), align 16, !dbg !1156, !tbaa !822
  %cmp3.8 = icmp eq %struct.logger_watcher* %19, null, !dbg !1161
  br i1 %cmp3.8, label %if.then4, label %for.inc.8, !dbg !1162

for.inc.8:                                        ; preds = %for.inc.7
  %20 = add i64 %.promoted, 9, !dbg !1167
  store i64 %20, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 9, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 9, metadata !1148, metadata !DIExpression()), !dbg !1150
  %21 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 9), align 8, !dbg !1156, !tbaa !822
  %cmp3.9 = icmp eq %struct.logger_watcher* %21, null, !dbg !1161
  br i1 %cmp3.9, label %if.then4, label %for.inc.9, !dbg !1162

for.inc.9:                                        ; preds = %for.inc.8
  %22 = add i64 %.promoted, 10, !dbg !1167
  store i64 %22, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 10, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 10, metadata !1148, metadata !DIExpression()), !dbg !1150
  %23 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 10), align 16, !dbg !1156, !tbaa !822
  %cmp3.10 = icmp eq %struct.logger_watcher* %23, null, !dbg !1161
  br i1 %cmp3.10, label %if.then4, label %for.inc.10, !dbg !1162

for.inc.10:                                       ; preds = %for.inc.9
  %24 = add i64 %.promoted, 11, !dbg !1167
  store i64 %24, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 11, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 11, metadata !1148, metadata !DIExpression()), !dbg !1150
  %25 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 11), align 8, !dbg !1156, !tbaa !822
  %cmp3.11 = icmp eq %struct.logger_watcher* %25, null, !dbg !1161
  br i1 %cmp3.11, label %if.then4, label %for.inc.11, !dbg !1162

for.inc.11:                                       ; preds = %for.inc.10
  %26 = add i64 %.promoted, 12, !dbg !1167
  store i64 %26, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 12, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 12, metadata !1148, metadata !DIExpression()), !dbg !1150
  %27 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 12), align 16, !dbg !1156, !tbaa !822
  %cmp3.12 = icmp eq %struct.logger_watcher* %27, null, !dbg !1161
  br i1 %cmp3.12, label %if.then4, label %for.inc.12, !dbg !1162

for.inc.12:                                       ; preds = %for.inc.11
  %28 = add i64 %.promoted, 13, !dbg !1167
  store i64 %28, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 13, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 13, metadata !1148, metadata !DIExpression()), !dbg !1150
  %29 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 13), align 8, !dbg !1156, !tbaa !822
  %cmp3.13 = icmp eq %struct.logger_watcher* %29, null, !dbg !1161
  br i1 %cmp3.13, label %if.then4, label %for.inc.13, !dbg !1162

for.inc.13:                                       ; preds = %for.inc.12
  %30 = add i64 %.promoted, 14, !dbg !1167
  store i64 %30, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 14, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 14, metadata !1148, metadata !DIExpression()), !dbg !1150
  %31 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 14), align 16, !dbg !1156, !tbaa !822
  %cmp3.14 = icmp eq %struct.logger_watcher* %31, null, !dbg !1161
  br i1 %cmp3.14, label %if.then4, label %for.inc.14, !dbg !1162

for.inc.14:                                       ; preds = %for.inc.13
  %32 = add i64 %.promoted, 15, !dbg !1167
  store i64 %32, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 15, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 15, metadata !1148, metadata !DIExpression()), !dbg !1150
  %33 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 15), align 8, !dbg !1156, !tbaa !822
  %cmp3.15 = icmp eq %struct.logger_watcher* %33, null, !dbg !1161
  br i1 %cmp3.15, label %if.then4, label %for.inc.15, !dbg !1162

for.inc.15:                                       ; preds = %for.inc.14
  %34 = add i64 %.promoted, 16, !dbg !1167
  store i64 %34, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 16, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 16, metadata !1148, metadata !DIExpression()), !dbg !1150
  %35 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 16), align 16, !dbg !1156, !tbaa !822
  %cmp3.16 = icmp eq %struct.logger_watcher* %35, null, !dbg !1161
  br i1 %cmp3.16, label %if.then4, label %for.inc.16, !dbg !1162

for.inc.16:                                       ; preds = %for.inc.15
  %36 = add i64 %.promoted, 17, !dbg !1167
  store i64 %36, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 17, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 17, metadata !1148, metadata !DIExpression()), !dbg !1150
  %37 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 17), align 8, !dbg !1156, !tbaa !822
  %cmp3.17 = icmp eq %struct.logger_watcher* %37, null, !dbg !1161
  br i1 %cmp3.17, label %if.then4, label %for.inc.17, !dbg !1162

for.inc.17:                                       ; preds = %for.inc.16
  %38 = add i64 %.promoted, 18, !dbg !1167
  store i64 %38, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 18, metadata !1148, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 18, metadata !1148, metadata !DIExpression()), !dbg !1150
  %39 = load %struct.logger_watcher*, %struct.logger_watcher** getelementptr inbounds ([20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 18), align 16, !dbg !1156, !tbaa !822
  %cmp3.18 = icmp eq %struct.logger_watcher* %39, null, !dbg !1161
  br i1 %cmp3.18, label %if.then4, label %for.inc.18, !dbg !1162

for.inc.18:                                       ; preds = %for.inc.17
  %40 = add i64 %.promoted, 19, !dbg !1167
  store i64 %40, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 2), align 16, !dbg !1167
  call void @llvm.dbg.value(metadata i64 19, metadata !1148, metadata !DIExpression()), !dbg !1150
  br label %for.end, !dbg !1168

for.end:                                          ; preds = %for.inc.18, %if.then4
  %x.061 = phi i32 [ %x.062.lcssa.wide, %if.then4 ], [ 19, %for.inc.18 ]
  %call6 = tail call noalias i8* @calloc(i64 noundef 1, i64 noundef 56) #15, !dbg !1168
  call void @llvm.dbg.value(metadata i8* %call6, metadata !1149, metadata !DIExpression()), !dbg !1150
  %cmp7 = icmp eq i8* %call6, null, !dbg !1169
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !1171

if.then8:                                         ; preds = %for.end
  %gcov_ctr35 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 3), align 8, !dbg !1172
  %41 = add i64 %gcov_ctr35, 1, !dbg !1172
  store i64 %41, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 3), align 8, !dbg !1172
  br label %cleanup, !dbg !1174

if.end10:                                         ; preds = %for.end
  %c11 = bitcast i8* %call6 to i8**, !dbg !1175
  store i8* %c, i8** %c11, align 8, !dbg !1176, !tbaa !1177
  %sfd12 = getelementptr inbounds i8, i8* %call6, i64 8, !dbg !1179
  %42 = bitcast i8* %sfd12 to i32*, !dbg !1179
  store i32 %sfd, i32* %42, align 8, !dbg !1180, !tbaa !1181
  %cmp13 = icmp eq i32 %sfd, 0, !dbg !1182
  br i1 %cmp13, label %land.lhs.true, label %if.end17, !dbg !1184

land.lhs.true:                                    ; preds = %if.end10
  %gcov_ctr36 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 4), align 16, !dbg !1185
  %43 = add i64 %gcov_ctr36, 1, !dbg !1185
  store i64 %43, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 4), align 16, !dbg !1185
  %cmp14 = icmp eq i8* %c, null, !dbg !1186
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !1187

if.then15:                                        ; preds = %land.lhs.true
  %gcov_ctr37 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 5), align 8, !dbg !1188
  %44 = add i64 %gcov_ctr37, 1, !dbg !1188
  store i64 %44, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 5), align 8, !dbg !1188
  br label %if.end17, !dbg !1190

if.end17:                                         ; preds = %if.end10, %land.lhs.true, %if.then15
  %.sink = phi i32 [ 0, %if.then15 ], [ 1, %land.lhs.true ], [ 1, %if.end10 ]
  %t16 = getelementptr inbounds i8, i8* %call6, i64 36, !dbg !1191
  %45 = bitcast i8* %t16 to i32*, !dbg !1191
  store i32 %.sink, i32* %45, align 4, !dbg !1191, !tbaa !1192
  %id = getelementptr inbounds i8, i8* %call6, i64 12, !dbg !1193
  %46 = bitcast i8* %id to i32*, !dbg !1193
  store i32 %x.061, i32* %46, align 4, !dbg !1194, !tbaa !1195
  %eflags = getelementptr inbounds i8, i8* %call6, i64 40, !dbg !1196
  %47 = bitcast i8* %eflags to i16*, !dbg !1196
  store i16 %f, i16* %47, align 8, !dbg !1197, !tbaa !1198
  %call18 = tail call i64 @logger_get_gid() #16, !dbg !1199
  %min_gid = getelementptr inbounds i8, i8* %call6, i64 24, !dbg !1200
  %48 = bitcast i8* %min_gid to i64*, !dbg !1200
  store i64 %call18, i64* %48, align 8, !dbg !1201, !tbaa !1202
  %49 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 51), align 8, !dbg !1203, !tbaa !1204
  %call19 = tail call %struct.bipbuf_t* @bipbuf_new(i32 noundef %49) #15, !dbg !1205
  %buf = getelementptr inbounds i8, i8* %call6, i64 48, !dbg !1206
  %50 = bitcast i8* %buf to %struct.bipbuf_t**, !dbg !1206
  store %struct.bipbuf_t* %call19, %struct.bipbuf_t** %50, align 8, !dbg !1207, !tbaa !1208
  %cmp21 = icmp eq %struct.bipbuf_t* %call19, null, !dbg !1209
  br i1 %cmp21, label %if.then22, label %if.end24, !dbg !1211

if.then22:                                        ; preds = %if.end17
  %gcov_ctr38 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 6), align 16, !dbg !1212
  %51 = add i64 %gcov_ctr38, 1, !dbg !1212
  store i64 %51, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 6), align 16, !dbg !1212
  tail call void @free(i8* noundef nonnull %call6) #15, !dbg !1214
  br label %cleanup, !dbg !1215

if.end24:                                         ; preds = %if.end17
  %gcov_ctr39 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 7), align 8, !dbg !1216
  %52 = add i64 %gcov_ctr39, 1, !dbg !1216
  store i64 %52, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @__llvm_gcov_ctr.64, i64 0, i64 7), align 8, !dbg !1216
  %call26 = tail call i32 @bipbuf_offer(%struct.bipbuf_t* noundef nonnull %call19, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 noundef 4) #15, !dbg !1217
  %idxprom27 = zext i32 %x.061 to i64, !dbg !1218
  %arrayidx28 = getelementptr inbounds [20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 %idxprom27, !dbg !1218
  %53 = bitcast %struct.logger_watcher** %arrayidx28 to i8**, !dbg !1219
  store i8* %call6, i8** %53, align 8, !dbg !1219, !tbaa !822
  %54 = load i32, i32* @watcher_count, align 4, !dbg !1220, !tbaa !849
  %inc29 = add nsw i32 %54, 1, !dbg !1220
  store i32 %inc29, i32* @watcher_count, align 4, !dbg !1220, !tbaa !849
  tail call fastcc void @logger_set_flags() #16, !dbg !1221
  %call30 = tail call i32 @pthread_cond_signal(%union.pthread_cond_t* noundef nonnull @logger_stack_cond) #15, !dbg !1222
  br label %cleanup, !dbg !1223

cleanup:                                          ; preds = %if.end24, %if.then22, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then8 ], [ 2, %if.then22 ], [ 1, %if.end24 ], !dbg !1150
  %call31 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @logger_stack_lock) #15, !dbg !1150
  ret i32 %retval.0, !dbg !1224
}

declare !dbg !1225 dso_local i32 @bipbuf_offer(%struct.bipbuf_t* noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @logger_set_flags() unnamed_addr #2 !dbg !1230 {
entry:
  call void @llvm.dbg.value(metadata %struct._logger* null, metadata !1232, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i32 0, metadata !1233, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i16 0, metadata !1234, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i32 0, metadata !1233, metadata !DIExpression()), !dbg !1239
  %.promoted = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 1), align 8
  %.promoted39 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 3), align 8
  %.promoted40 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i16 0, metadata !1234, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i32 0, metadata !1233, metadata !DIExpression()), !dbg !1239
  br label %for.body, !dbg !1240

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %f.042 = phi i16 [ 0, %entry ], [ %f.137, %for.inc ]
  %0 = phi i64 [ %.promoted, %entry ], [ %10, %for.inc ]
  %1 = phi i64 [ %.promoted39, %entry ], [ %9, %for.inc ]
  %2 = phi i64 [ %.promoted40, %entry ], [ %8, %for.inc ]
  call void @llvm.dbg.value(metadata i16 %f.042, metadata !1234, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1233, metadata !DIExpression()), !dbg !1239
  %arrayidx = getelementptr inbounds [20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 %indvars.iv, !dbg !1241
  %3 = load %struct.logger_watcher*, %struct.logger_watcher** %arrayidx, align 8, !dbg !1241, !tbaa !822
  call void @llvm.dbg.value(metadata %struct.logger_watcher* %3, metadata !1235, metadata !DIExpression()), !dbg !1242
  %cmp1 = icmp eq %struct.logger_watcher* %3, null, !dbg !1243
  br i1 %cmp1, label %cleanup, label %cleanup.cont, !dbg !1245

cleanup:                                          ; preds = %for.body
  %4 = add i64 %2, 1
  store i64 %4, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i16 %f.042, metadata !1234, metadata !DIExpression()), !dbg !1239
  br label %for.inc

cleanup.cont:                                     ; preds = %for.body
  %5 = add i64 %0, 1, !dbg !1246
  store i64 %5, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 1), align 8, !dbg !1246
  %eflags = getelementptr inbounds %struct.logger_watcher, %struct.logger_watcher* %3, i64 0, i32 7, !dbg !1247
  %6 = load i16, i16* %eflags, align 8, !dbg !1247, !tbaa !1198
  %or33 = or i16 %6, %f.042, !dbg !1248
  call void @llvm.dbg.value(metadata i16 %f.042, metadata !1234, metadata !DIExpression()), !dbg !1239
  %7 = add i64 %1, 1, !dbg !1249
  store i64 %7, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 3), align 8, !dbg !1249
  br label %for.inc, !dbg !1249

for.inc:                                          ; preds = %cleanup, %cleanup.cont
  %8 = phi i64 [ %4, %cleanup ], [ %2, %cleanup.cont ]
  %9 = phi i64 [ %1, %cleanup ], [ %7, %cleanup.cont ]
  %10 = phi i64 [ %0, %cleanup ], [ %5, %cleanup.cont ]
  %f.137 = phi i16 [ %f.042, %cleanup ], [ %or33, %cleanup.cont ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1250
  call void @llvm.dbg.value(metadata i16 %f.137, metadata !1234, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1233, metadata !DIExpression()), !dbg !1239
  %exitcond.not = icmp eq i64 %indvars.iv.next, 20, !dbg !1251
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1240, !llvm.loop !1252

for.end:                                          ; preds = %for.inc
  %gcov_ctr19 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 4), align 16, !dbg !1255
  %11 = add i64 %gcov_ctr19, 1, !dbg !1255
  store i64 %11, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 4), align 16, !dbg !1255
  call void @llvm.dbg.value(metadata %struct._logger* undef, metadata !1232, metadata !DIExpression()), !dbg !1239
  %l.043 = load %struct._logger*, %struct._logger** @logger_stack_head, align 8, !dbg !1257, !tbaa !822
  call void @llvm.dbg.value(metadata %struct._logger* %l.043, metadata !1232, metadata !DIExpression()), !dbg !1239
  %cmp5.not44 = icmp eq %struct._logger* %l.043, null, !dbg !1258
  br i1 %cmp5.not44, label %for.end12, label %for.body7, !dbg !1260

for.body7:                                        ; preds = %for.end, %for.body7
  %l.045 = phi %struct._logger* [ %l.0, %for.body7 ], [ %l.043, %for.end ]
  %mutex = getelementptr inbounds %struct._logger, %struct._logger* %l.045, i64 0, i32 2, !dbg !1261
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #15, !dbg !1263
  %eflags8 = getelementptr inbounds %struct._logger, %struct._logger* %l.045, i64 0, i32 8, !dbg !1264
  store i16 %f.137, i16* %eflags8, align 4, !dbg !1265, !tbaa !1266
  %call10 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #15, !dbg !1267
  %gcov_ctr20 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 5), align 8, !dbg !1268
  %12 = add i64 %gcov_ctr20, 1, !dbg !1268
  store i64 %12, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.65, i64 0, i64 5), align 8, !dbg !1268
  %next = getelementptr inbounds %struct._logger, %struct._logger* %l.045, i64 0, i32 1, !dbg !1269
  call void @llvm.dbg.value(metadata %struct._logger* undef, metadata !1232, metadata !DIExpression()), !dbg !1239
  %l.0 = load %struct._logger*, %struct._logger** %next, align 8, !dbg !1257, !tbaa !822
  call void @llvm.dbg.value(metadata %struct._logger* %l.0, metadata !1232, metadata !DIExpression()), !dbg !1239
  %cmp5.not = icmp eq %struct._logger* %l.0, null, !dbg !1258
  br i1 %cmp5.not, label %for.end12, label %for.body7, !dbg !1260, !llvm.loop !1270

for.end12:                                        ; preds = %for.body7, %for.end
  ret void, !dbg !1272
}

; Function Attrs: nounwind
declare !dbg !1273 dso_local i32 @pthread_cond_signal(%union.pthread_cond_t* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1277 dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @logger_thread(i8* nocapture noundef readnone %arg) #2 !dbg !1296 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 0), align 16
  %ls = alloca %struct.logger_stats, align 8
  call void @llvm.dbg.value(metadata i8* %arg, metadata !1298, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i32 1000, metadata !1299, metadata !DIExpression()), !dbg !1314
  %1 = load volatile i32, i32* @do_run_logger_thread, align 4, !dbg !1315, !tbaa !849
  %tobool.not53 = icmp eq i32 %1, 0, !dbg !1316
  br i1 %tobool.not53, label %while.end, label %while.body.lr.ph, !dbg !1316

while.body.lr.ph:                                 ; preds = %entry
  %2 = bitcast %struct.logger_stats* %ls to i8*
  %watcher_count = getelementptr inbounds %struct.logger_stats, %struct.logger_stats* %ls, i64 0, i32 4
  br label %while.body, !dbg !1316

while.body:                                       ; preds = %while.body.lr.ph, %if.end27
  %to_sleep.054 = phi i32 [ 1000, %while.body.lr.ph ], [ %to_sleep.4, %if.end27 ]
  call void @llvm.dbg.value(metadata i32 %to_sleep.054, metadata !1299, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()), !dbg !1317
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #18, !dbg !1318
  call void @llvm.dbg.declare(metadata %struct.logger_stats* %ls, metadata !1306, metadata !DIExpression()), !dbg !1319
  %call = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 40) #15, !dbg !1320
  %cmp = icmp ugt i32 %to_sleep.054, 1000, !dbg !1321
  br i1 %cmp, label %if.then, label %if.end, !dbg !1323

if.then:                                          ; preds = %while.body
  %gcov_ctr28 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 1), align 8, !dbg !1324
  %3 = add i64 %gcov_ctr28, 1, !dbg !1324
  store i64 %3, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 1), align 8, !dbg !1324
  %call1 = call i32 @usleep(i32 noundef %to_sleep.054) #15, !dbg !1325
  br label %if.end, !dbg !1325

if.end:                                           ; preds = %if.then, %while.body
  %call2 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @logger_stack_lock) #15, !dbg !1326
  %4 = load i32, i32* @watcher_count, align 4, !dbg !1327, !tbaa !849
  %cmp3 = icmp eq i32 %4, 0, !dbg !1329
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !1330

if.then4:                                         ; preds = %if.end
  %gcov_ctr29 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 2), align 16, !dbg !1331
  %5 = add i64 %gcov_ctr29, 1, !dbg !1331
  store i64 %5, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 2), align 16, !dbg !1331
  %call5 = call i32 @pthread_cond_wait(%union.pthread_cond_t* noundef nonnull @logger_stack_cond, %union.pthread_mutex_t* noundef nonnull @logger_stack_lock) #15, !dbg !1331
  br label %if.end6, !dbg !1333

if.end6:                                          ; preds = %if.then4, %if.end
  call void @llvm.dbg.value(metadata %struct._logger* undef, metadata !1305, metadata !DIExpression()), !dbg !1317
  %l.049 = load %struct._logger*, %struct._logger** @logger_stack_head, align 8, !dbg !1334, !tbaa !822
  call void @llvm.dbg.value(metadata %struct._logger* %l.049, metadata !1305, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()), !dbg !1317
  %cmp7.not50 = icmp eq %struct._logger* %l.049, null, !dbg !1336
  br i1 %cmp7.not50, label %for.end, label %for.body, !dbg !1338

for.body:                                         ; preds = %if.end6, %for.body
  %l.052 = phi %struct._logger* [ %l.0, %for.body ], [ %l.049, %if.end6 ]
  %found_logs.051 = phi i32 [ %add, %for.body ], [ 0, %if.end6 ]
  call void @llvm.dbg.value(metadata i32 %found_logs.051, metadata !1303, metadata !DIExpression()), !dbg !1317
  %call8 = call fastcc i32 @logger_thread_read(%struct._logger* noundef nonnull %l.052, %struct.logger_stats* noundef nonnull %ls) #16, !dbg !1339
  %add = add nsw i32 %call8, %found_logs.051, !dbg !1341
  call void @llvm.dbg.value(metadata i32 %add, metadata !1303, metadata !DIExpression()), !dbg !1317
  %gcov_ctr30 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 3), align 8, !dbg !1342
  %6 = add i64 %gcov_ctr30, 1, !dbg !1342
  store i64 %6, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 3), align 8, !dbg !1342
  %next = getelementptr inbounds %struct._logger, %struct._logger* %l.052, i64 0, i32 1, !dbg !1343
  call void @llvm.dbg.value(metadata %struct._logger* undef, metadata !1305, metadata !DIExpression()), !dbg !1317
  %l.0 = load %struct._logger*, %struct._logger** %next, align 8, !dbg !1334, !tbaa !822
  call void @llvm.dbg.value(metadata %struct._logger* %l.0, metadata !1305, metadata !DIExpression()), !dbg !1317
  %cmp7.not = icmp eq %struct._logger* %l.0, null, !dbg !1336
  br i1 %cmp7.not, label %for.end, label %for.body, !dbg !1338, !llvm.loop !1344

for.end:                                          ; preds = %for.body, %if.end6
  %found_logs.0.lcssa = phi i32 [ 0, %if.end6 ], [ %add, %for.body ], !dbg !1317
  %call9 = call fastcc i32 @logger_thread_poll_watchers(i32 noundef 1, i32 noundef -1) #16, !dbg !1346
  %7 = load i32, i32* @watcher_count, align 4, !dbg !1347, !tbaa !849
  %conv = sext i32 %7 to i64, !dbg !1347
  store i64 %conv, i64* %watcher_count, align 8, !dbg !1348, !tbaa !1349
  %call10 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @logger_stack_lock) #15, !dbg !1351
  %tobool11.not = icmp eq i32 %found_logs.0.lcssa, 0, !dbg !1352
  br i1 %tobool11.not, label %if.then12, label %if.else, !dbg !1354

if.then12:                                        ; preds = %for.end
  %cmp13 = icmp ult i32 %to_sleep.054, 1000000, !dbg !1355
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !1358

if.then15:                                        ; preds = %if.then12
  %gcov_ctr31 = load i64, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 4), align 16, !dbg !1359
  %8 = add i64 %gcov_ctr31, 1, !dbg !1359
  store i64 %8, i64* getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 4), align 16, !dbg !1359
  %div = lshr i32 %to_sleep.054, 3, !dbg !1360
  %add16 = add nuw nsw i32 %div, %to_sleep.054, !dbg !1361
  call void @llvm.dbg.value(metadata i32 %add16, metadata !1299, metadata !DIExpression()), !dbg !1314
  br label %if.end17, !dbg !1362

if.end17:                                         ; preds = %if.then15, %if.then12
  %to_sleep.1 = phi i32 [ %add16, %if.then15 ], [ %to_sleep.054, %if.then12 ], !dbg !1314
  call void @llvm.dbg.value(metadata i32 %to_sleep.1, metadata !1299, metadata !DIExpression()), !dbg !1314
  %cmp18 = icmp ugt i32 %to_sleep.1, 1000000, !dbg !1363
  br i1 %cmp18, label %if.end27.sink.split, label %if.end27, !dbg !1365

if.else:                                          ; preds = %for.end
  %div22 = lshr i32 %to_sleep.054, 1, !dbg !1366
  call void @llvm.dbg.value(metadata i32 %div22, metadata !1299, metadata !DIExpression()), !dbg !1314
  %cmp23 = icmp ult i32 %to_sleep.054, 2000, !dbg !1368
  br i1 %cmp23, label %if.end27.sink.split, label %if.end27, !dbg !1370

if.end27.sink.split:                              ; preds = %if.else, %if.end17
  %.sink58 = phi i64* [ getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 5), %if.end17 ], [ getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 7), %if.else ]
  %.sink.ph = phi i64* [ getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 6), %if.end17 ], [ getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 8), %if.else ]
  %to_sleep.4.ph = phi i32 [ 1000000, %if.end17 ], [ 1000, %if.else ]
  %gcov_ctr34 = load i64, i64* %.sink58, align 8, !dbg !1371
  %9 = add i64 %gcov_ctr34, 1, !dbg !1371
  store i64 %9, i64* %.sink58, align 8, !dbg !1371
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.else, %if.end17
  %.sink = phi i64* [ getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 6), %if.end17 ], [ getelementptr inbounds ([9 x i64], [9 x i64]* @__llvm_gcov_ctr.66, i64 0, i64 8), %if.else ], [ %.sink.ph, %if.end27.sink.split ]
  %to_sleep.4 = phi i32 [ %to_sleep.1, %if.end17 ], [ %div22, %if.else ], [ %to_sleep.4.ph, %if.end27.sink.split ], !dbg !1371
  %gcov_ctr35 = load i64, i64* %.sink, align 16
  %10 = add i64 %gcov_ctr35, 1
  store i64 %10, i64* %.sink, align 16
  call void @llvm.dbg.value(metadata i32 %to_sleep.4, metadata !1299, metadata !DIExpression()), !dbg !1314
  call fastcc void @logger_thread_flush_stats(%struct.logger_stats* noundef nonnull %ls) #16, !dbg !1372
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #18, !dbg !1373
  %11 = load volatile i32, i32* @do_run_logger_thread, align 4, !dbg !1315, !tbaa !849
  %tobool.not = icmp eq i32 %11, 0, !dbg !1316
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !1316, !llvm.loop !1374

while.end:                                        ; preds = %if.end27, %entry
  ret i8* null, !dbg !1375
}

; Function Attrs: nounwind
declare !dbg !1376 dso_local i8* @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1380 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1383 dso_local i32 @usleep(i32 noundef) local_unnamed_addr #6

declare !dbg !1386 dso_local i32 @pthread_cond_wait(%union.pthread_cond_t* noundef, %union.pthread_mutex_t* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @logger_thread_read(%struct._logger* noundef %l, %struct.logger_stats* nocapture noundef %ls) unnamed_addr #2 !dbg !1391 {
entry:
  %size = alloca i32, align 4
  %scratch = alloca [4096 x i8], align 16
  %scratch_len = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct._logger* %l, metadata !1396, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata %struct.logger_stats* %ls, metadata !1397, metadata !DIExpression()), !dbg !1409
  %0 = bitcast i32* %size to i8*, !dbg !1410
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #18, !dbg !1410
  call void @llvm.dbg.value(metadata i32 0, metadata !1399, metadata !DIExpression()), !dbg !1409
  %1 = getelementptr inbounds [4096 x i8], [4096 x i8]* %scratch, i64 0, i64 0, !dbg !1411
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %1) #18, !dbg !1411
  call void @llvm.dbg.declare(metadata [4096 x i8]* %scratch, metadata !1401, metadata !DIExpression()), !dbg !1412
  %mutex = getelementptr inbounds %struct._logger, %struct._logger* %l, i64 0, i32 2, !dbg !1413
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #15, !dbg !1414
  %buf = getelementptr inbounds %struct._logger, %struct._logger* %l, i64 0, i32 9, !dbg !1415
  %2 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf, align 8, !dbg !1415, !tbaa !898
  call void @llvm.dbg.value(metadata i32* %size, metadata !1398, metadata !DIExpression(DW_OP_deref)), !dbg !1409
  %call1 = call i8* @bipbuf_peek_all(%struct.bipbuf_t* noundef %2, i32* noundef nonnull %size) #15, !dbg !1416
  call void @llvm.dbg.value(metadata i8* %call1, metadata !1400, metadata !DIExpression()), !dbg !1409
  %call3 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #15, !dbg !1417
  %cmp = icmp eq i8* %call1, null, !dbg !1418
  br i1 %cmp, label %if.then, label %while.cond.preheader, !dbg !1420

while.cond.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1399, metadata !DIExpression()), !dbg !1409
  %3 = load i32, i32* %size, align 4, !dbg !1421, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %3, metadata !1398, metadata !DIExpression()), !dbg !1409
  %cmp472.not = icmp eq i32 %3, 0, !dbg !1422
  br i1 %cmp472.not, label %if.end22, label %land.rhs.lr.ph, !dbg !1423

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %4 = bitcast i32* %scratch_len to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !1399, metadata !DIExpression()), !dbg !1409
  %gcov_ctr4280 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 1), align 8, !dbg !1424
  %5 = add i64 %gcov_ctr4280, 1, !dbg !1424
  store i64 %5, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 1), align 8, !dbg !1424
  %6 = load i32, i32* @watcher_count, align 4, !dbg !1424, !tbaa !849
  %cmp581 = icmp sgt i32 %6, 0, !dbg !1425
  br i1 %cmp581, label %while.body, label %while.end, !dbg !1426

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 0), align 16, !dbg !1427
  %7 = add i64 %gcov_ctr, 1, !dbg !1427
  store i64 %7, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 0), align 16, !dbg !1427
  br label %cleanup, !dbg !1427

land.rhs:                                         ; preds = %if.end11
  call void @llvm.dbg.value(metadata i32 %add16, metadata !1399, metadata !DIExpression()), !dbg !1409
  %gcov_ctr42 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 1), align 8, !dbg !1424
  %8 = add i64 %gcov_ctr42, 1, !dbg !1424
  store i64 %8, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 1), align 8, !dbg !1424
  %9 = load i32, i32* @watcher_count, align 4, !dbg !1424, !tbaa !849
  %cmp5 = icmp sgt i32 %9, 0, !dbg !1425
  br i1 %cmp5, label %while.body, label %while.end, !dbg !1426, !llvm.loop !1429

while.body:                                       ; preds = %land.rhs.lr.ph, %land.rhs
  %pos.07382 = phi i32 [ %add16, %land.rhs ], [ 0, %land.rhs.lr.ph ]
  call void @llvm.dbg.value(metadata i32 %pos.07382, metadata !1399, metadata !DIExpression()), !dbg !1409
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #18, !dbg !1431
  call void @llvm.dbg.value(metadata i32 0, metadata !1408, metadata !DIExpression()), !dbg !1432
  store i32 0, i32* %scratch_len, align 4, !dbg !1433, !tbaa !849
  %idx.ext = zext i32 %pos.07382 to i64, !dbg !1434
  %add.ptr = getelementptr inbounds i8, i8* %call1, i64 %idx.ext, !dbg !1434
  %10 = bitcast i8* %add.ptr to %struct._logentry*, !dbg !1435
  call void @llvm.dbg.value(metadata %struct._logentry* %10, metadata !1405, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i32* %scratch_len, metadata !1408, metadata !DIExpression(DW_OP_deref)), !dbg !1432
  %call6 = call fastcc i32 @logger_thread_parse_entry(%struct._logentry* noundef nonnull %10, i8* noundef nonnull %1, i32* noundef nonnull %scratch_len) #16, !dbg !1436
  call void @llvm.dbg.value(metadata i32 %call6, metadata !1406, metadata !DIExpression()), !dbg !1432
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !1437
  br i1 %cmp7.not, label %if.else, label %if.then8, !dbg !1439

if.then8:                                         ; preds = %while.body
  %gcov_ctr43 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 2), align 16, !dbg !1440
  %11 = add i64 %gcov_ctr43, 1, !dbg !1440
  store i64 %11, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 2), align 16, !dbg !1440
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1440, !tbaa !822
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0)) #15, !dbg !1442
  br label %if.end11, !dbg !1443

if.else:                                          ; preds = %while.body
  %gcov_ctr44 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 3), align 8, !dbg !1444
  %13 = add i64 %gcov_ctr44, 1, !dbg !1444
  store i64 %13, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 3), align 8, !dbg !1444
  %14 = load i32, i32* %scratch_len, align 4, !dbg !1446, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %14, metadata !1408, metadata !DIExpression()), !dbg !1432
  call fastcc void @logger_thread_write_entry(%struct._logentry* noundef nonnull %10, %struct.logger_stats* noundef %ls, i8* noundef nonnull %1, i32 noundef %14) #16, !dbg !1447
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %size12 = getelementptr inbounds i8, i8* %add.ptr, i64 32, !dbg !1448
  %15 = bitcast i8* %size12 to i32*, !dbg !1448
  %16 = load i32, i32* %15, align 8, !dbg !1448, !tbaa !849
  %17 = getelementptr inbounds i8, i8* %add.ptr, i64 4, !dbg !1449
  %18 = load i8, i8* %17, align 4, !dbg !1449, !tbaa !1027
  %conv13 = zext i8 %18 to i32, !dbg !1450
  %add = add i32 %pos.07382, 40, !dbg !1451
  %add14 = add i32 %add, %16, !dbg !1452
  %add16 = add i32 %add14, %conv13, !dbg !1453
  call void @llvm.dbg.value(metadata i32 %add16, metadata !1399, metadata !DIExpression()), !dbg !1409
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #18, !dbg !1430
  %19 = load i32, i32* %size, align 4, !dbg !1421, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %19, metadata !1398, metadata !DIExpression()), !dbg !1409
  %cmp4 = icmp ult i32 %add16, %19, !dbg !1422
  br i1 %cmp4, label %land.rhs, label %while.end, !dbg !1423, !llvm.loop !1429

while.end:                                        ; preds = %if.end11, %land.rhs, %land.rhs.lr.ph
  %pos.0.lcssa = phi i32 [ 0, %land.rhs.lr.ph ], [ %add16, %land.rhs ], [ %add16, %if.end11 ], !dbg !1409
  %.lcssa = phi i32 [ %3, %land.rhs.lr.ph ], [ %19, %land.rhs ], [ %19, %if.end11 ], !dbg !1421
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !1398, metadata !DIExpression()), !dbg !1409
  %cmp18.not = icmp ugt i32 %pos.0.lcssa, %.lcssa, !dbg !1454
  br i1 %cmp18.not, label %if.else21, label %if.end22, !dbg !1457

if.else21:                                        ; preds = %while.end
  %gcov_ctr45 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 4), align 16, !dbg !1454
  %20 = add i64 %gcov_ctr45, 1, !dbg !1454
  store i64 %20, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 4), align 16, !dbg !1454
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef 629, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.logger_thread_read, i64 0, i64 0)) #17, !dbg !1454
  unreachable, !dbg !1454

if.end22:                                         ; preds = %while.cond.preheader, %while.end
  %call24 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #15, !dbg !1458
  %21 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf, align 8, !dbg !1459, !tbaa !898
  %22 = load i32, i32* %size, align 4, !dbg !1460, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %22, metadata !1398, metadata !DIExpression()), !dbg !1409
  %call26 = call i8* @bipbuf_poll(%struct.bipbuf_t* noundef %21, i32 noundef %22) #15, !dbg !1461
  call void @llvm.dbg.value(metadata i8* %call26, metadata !1400, metadata !DIExpression()), !dbg !1409
  %written = getelementptr inbounds %struct._logger, %struct._logger* %l, i64 0, i32 3, !dbg !1462
  %23 = bitcast i64* %written to <2 x i64>*, !dbg !1462
  %24 = load <2 x i64>, <2 x i64>* %23, align 8, !dbg !1462, !tbaa !874
  %shuffle = shufflevector <2 x i64> %24, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !1462
  %25 = bitcast %struct.logger_stats* %ls to <2 x i64>*, !dbg !1463
  %26 = load <2 x i64>, <2 x i64>* %25, align 8, !dbg !1463, !tbaa !874
  %27 = add <2 x i64> %26, %shuffle, !dbg !1463
  %28 = bitcast %struct.logger_stats* %ls to <2 x i64>*, !dbg !1463
  store <2 x i64> %27, <2 x i64>* %28, align 8, !dbg !1463, !tbaa !874
  %29 = bitcast i64* %written to <2 x i64>*, !dbg !1464
  store <2 x i64> zeroinitializer, <2 x i64>* %29, align 8, !dbg !1464, !tbaa !874
  %call32 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex) #15, !dbg !1465
  %cmp33 = icmp eq i8* %call26, null, !dbg !1466
  br i1 %cmp33, label %if.then35, label %if.end37, !dbg !1468

if.then35:                                        ; preds = %if.end22
  %gcov_ctr46 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 5), align 8, !dbg !1469
  %30 = add i64 %gcov_ctr46, 1, !dbg !1469
  store i64 %30, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 5), align 8, !dbg !1469
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1469, !tbaa !822
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0)) #15, !dbg !1471
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef 640, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.logger_thread_read, i64 0, i64 0)) #17, !dbg !1472
  unreachable, !dbg !1472

if.end37:                                         ; preds = %if.end22
  %gcov_ctr47 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 6), align 16, !dbg !1475
  %32 = add i64 %gcov_ctr47, 1, !dbg !1475
  store i64 %32, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.67, i64 0, i64 6), align 16, !dbg !1475
  %33 = load i32, i32* %size, align 4, !dbg !1475, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %33, metadata !1398, metadata !DIExpression()), !dbg !1409
  br label %cleanup, !dbg !1476

cleanup:                                          ; preds = %if.end37, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %33, %if.end37 ], !dbg !1409
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %1) #18, !dbg !1477
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #18, !dbg !1477
  ret i32 %retval.0, !dbg !1477
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @logger_thread_poll_watchers(i32 noundef %force_poll, i32 noundef %watcher) unnamed_addr #2 !dbg !1478 {
entry:
  %data_size = alloca i32, align 4
  %buf52 = alloca [1 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %force_poll, metadata !1482, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 %watcher, metadata !1483, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 0, metadata !1485, metadata !DIExpression()), !dbg !1508
  %0 = bitcast i32* %data_size to i8*, !dbg !1509
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #18, !dbg !1509
  call void @llvm.dbg.value(metadata i32 0, metadata !1487, metadata !DIExpression()), !dbg !1508
  store i32 0, i32* %data_size, align 4, !dbg !1510, !tbaa !849
  call void @llvm.dbg.value(metadata i32 0, metadata !1488, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 0, metadata !1484, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 0, metadata !1485, metadata !DIExpression()), !dbg !1508
  %cmp2.not = icmp eq i32 %watcher, -1
  %tobool.not = icmp eq i32 %force_poll, 0
  %1 = zext i32 %watcher to i64, !dbg !1511
  br label %for.body, !dbg !1511

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %nfd.0246 = phi i32 [ 0, %entry ], [ %nfd.2233, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1484, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 %nfd.0246, metadata !1485, metadata !DIExpression()), !dbg !1508
  %arrayidx = getelementptr inbounds [20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 %indvars.iv, !dbg !1512
  %2 = load %struct.logger_watcher*, %struct.logger_watcher** %arrayidx, align 8, !dbg !1512, !tbaa !822
  call void @llvm.dbg.value(metadata %struct.logger_watcher* %2, metadata !1489, metadata !DIExpression()), !dbg !1513
  %cmp1 = icmp eq %struct.logger_watcher* %2, null, !dbg !1514
  br i1 %cmp1, label %for.inc, label %lor.lhs.false, !dbg !1516

lor.lhs.false:                                    ; preds = %for.body
  %gcov_ctr = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 0), align 16, !dbg !1517
  %3 = add i64 %gcov_ctr, 1, !dbg !1517
  store i64 %3, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 0), align 16, !dbg !1517
  br i1 %cmp2.not, label %if.end, label %land.lhs.true, !dbg !1518

land.lhs.true:                                    ; preds = %lor.lhs.false
  %gcov_ctr143 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 1), align 8, !dbg !1519
  %4 = add i64 %gcov_ctr143, 1, !dbg !1519
  store i64 %4, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 1), align 8, !dbg !1519
  %cmp3.not = icmp eq i64 %indvars.iv, %1, !dbg !1520
  br i1 %cmp3.not, label %if.end, label %for.inc, !dbg !1521

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %buf = getelementptr inbounds %struct.logger_watcher, %struct.logger_watcher* %2, i64 0, i32 8, !dbg !1522
  %5 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf, align 8, !dbg !1522, !tbaa !1208
  call void @llvm.dbg.value(metadata i32* %data_size, metadata !1487, metadata !DIExpression(DW_OP_deref)), !dbg !1508
  %call = call i8* @bipbuf_peek_all(%struct.bipbuf_t* noundef %5, i32* noundef nonnull %data_size) #15, !dbg !1523
  call void @llvm.dbg.value(metadata i8* %call, metadata !1486, metadata !DIExpression()), !dbg !1508
  %cmp4.not = icmp eq i8* %call, null, !dbg !1524
  br i1 %cmp4.not, label %if.else, label %if.then5, !dbg !1526

if.then5:                                         ; preds = %if.end
  %gcov_ctr146 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 4), align 16, !dbg !1527
  %6 = add i64 %gcov_ctr146, 1, !dbg !1527
  store i64 %6, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 4), align 16, !dbg !1527
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1485, metadata !DIExpression()), !dbg !1508
  br label %cleanup.cont.sink.split, !dbg !1529

if.else:                                          ; preds = %if.end
  %gcov_ctr145 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 3), align 8, !dbg !1530
  %7 = add i64 %gcov_ctr145, 1, !dbg !1530
  store i64 %7, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 3), align 8, !dbg !1530
  br i1 %tobool.not, label %cleanup.cont, label %if.then10, !dbg !1532

if.then10:                                        ; preds = %if.else
  %gcov_ctr147 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 5), align 8, !dbg !1533
  %8 = add i64 %gcov_ctr147, 1, !dbg !1533
  store i64 %8, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 5), align 8, !dbg !1533
  call void @llvm.dbg.value(metadata i32 undef, metadata !1485, metadata !DIExpression()), !dbg !1508
  br label %cleanup.cont.sink.split, !dbg !1535

cleanup.cont.sink.split:                          ; preds = %if.then10, %if.then5
  %.sink = phi i16 [ 4, %if.then5 ], [ 1, %if.then10 ]
  %sfd11 = getelementptr inbounds %struct.logger_watcher, %struct.logger_watcher* %2, i64 0, i32 1, !dbg !1536
  %9 = load i32, i32* %sfd11, align 8, !dbg !1536, !tbaa !1181
  %idxprom12 = sext i32 %nfd.0246 to i64, !dbg !1536
  %fd = getelementptr inbounds [20 x %struct.pollfd], [20 x %struct.pollfd]* @watchers_pollfds, i64 0, i64 %idxprom12, i32 0, !dbg !1536
  store i32 %9, i32* %fd, align 8, !dbg !1536, !tbaa !1537
  %events = getelementptr inbounds [20 x %struct.pollfd], [20 x %struct.pollfd]* @watchers_pollfds, i64 0, i64 %idxprom12, i32 1, !dbg !1536
  store i16 %.sink, i16* %events, align 4, !dbg !1536, !tbaa !1539
  %inc = add nsw i32 %nfd.0246, 1, !dbg !1536
  br label %cleanup.cont, !dbg !1540

cleanup.cont:                                     ; preds = %cleanup.cont.sink.split, %if.else
  %nfd.1 = phi i32 [ %nfd.0246, %if.else ], [ %inc, %cleanup.cont.sink.split ], !dbg !1508
  call void @llvm.dbg.value(metadata i32 %nfd.1, metadata !1485, metadata !DIExpression()), !dbg !1508
  %failed_flush = getelementptr inbounds %struct.logger_watcher, %struct.logger_watcher* %2, i64 0, i32 5, !dbg !1540
  store i8 0, i8* %failed_flush, align 8, !dbg !1541, !tbaa !1542
  call void @llvm.dbg.value(metadata i32 undef, metadata !1485, metadata !DIExpression()), !dbg !1508
  br label %for.inc, !dbg !1543

for.inc:                                          ; preds = %land.lhs.true, %for.body, %cleanup.cont
  %.sink268 = phi i64* [ getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 6), %cleanup.cont ], [ getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 2), %for.body ], [ getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 2), %land.lhs.true ]
  %nfd.2233 = phi i32 [ %nfd.1, %cleanup.cont ], [ %nfd.0246, %for.body ], [ %nfd.0246, %land.lhs.true ]
  %gcov_ctr144 = load i64, i64* %.sink268, align 16
  %10 = add i64 %gcov_ctr144, 1
  store i64 %10, i64* %.sink268, align 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1484, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 %nfd.2233, metadata !1485, metadata !DIExpression()), !dbg !1508
  %exitcond.not = icmp eq i64 %indvars.iv.next, 20, !dbg !1545
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1511, !llvm.loop !1546

for.end:                                          ; preds = %for.inc
  %cmp22 = icmp eq i32 %nfd.2233, 0, !dbg !1548
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !1550

if.then23:                                        ; preds = %for.end
  %gcov_ctr149 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 7), align 8, !dbg !1551
  %11 = add i64 %gcov_ctr149, 1, !dbg !1551
  store i64 %11, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 7), align 8, !dbg !1551
  br label %cleanup138, !dbg !1551

if.end24:                                         ; preds = %for.end
  %conv = sext i32 %nfd.2233 to i64, !dbg !1552
  %call25 = call i32 @poll(%struct.pollfd* noundef getelementptr inbounds ([20 x %struct.pollfd], [20 x %struct.pollfd]* @watchers_pollfds, i64 0, i64 0), i64 noundef %conv, i32 noundef 0) #15, !dbg !1553
  call void @llvm.dbg.value(metadata i32 %call25, metadata !1493, metadata !DIExpression()), !dbg !1508
  %cmp26 = icmp slt i32 %call25, 0, !dbg !1554
  br i1 %cmp26, label %if.then28, label %for.cond30.preheader, !dbg !1556

for.cond30.preheader:                             ; preds = %if.end24
  call void @llvm.dbg.value(metadata i32 0, metadata !1484, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 0, metadata !1485, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 0, metadata !1488, metadata !DIExpression()), !dbg !1508
  %12 = getelementptr inbounds [1 x i8], [1 x i8]* %buf52, i64 0, i64 0
  br label %for.body33, !dbg !1557

if.then28:                                        ; preds = %if.end24
  %gcov_ctr150 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 8), align 16, !dbg !1558
  %13 = add i64 %gcov_ctr150, 1, !dbg !1558
  store i64 %13, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 8), align 16, !dbg !1558
  call void @perror(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0)) #15, !dbg !1558
  br label %cleanup138, !dbg !1560

for.body33:                                       ; preds = %for.cond30.preheader, %for.inc134
  %indvars.iv259 = phi i64 [ 0, %for.cond30.preheader ], [ %indvars.iv.next260, %for.inc134 ]
  %nfd.3253 = phi i32 [ 0, %for.cond30.preheader ], [ %nfd.6245, %for.inc134 ]
  %flushed.0249 = phi i32 [ 0, %for.cond30.preheader ], [ %flushed.4244, %for.inc134 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv259, metadata !1484, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 %nfd.3253, metadata !1485, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 %flushed.0249, metadata !1488, metadata !DIExpression()), !dbg !1508
  %arrayidx36 = getelementptr inbounds [20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 %indvars.iv259, !dbg !1561
  %14 = load %struct.logger_watcher*, %struct.logger_watcher** %arrayidx36, align 8, !dbg !1561, !tbaa !822
  call void @llvm.dbg.value(metadata %struct.logger_watcher* %14, metadata !1494, metadata !DIExpression()), !dbg !1562
  %cmp37 = icmp eq %struct.logger_watcher* %14, null, !dbg !1563
  br i1 %cmp37, label %if.then45, label %lor.lhs.false39, !dbg !1565

lor.lhs.false39:                                  ; preds = %for.body33
  %gcov_ctr151 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 9), align 8, !dbg !1566
  %15 = add i64 %gcov_ctr151, 1, !dbg !1566
  store i64 %15, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 9), align 8, !dbg !1566
  br i1 %cmp2.not, label %if.end46, label %land.lhs.true42, !dbg !1567

land.lhs.true42:                                  ; preds = %lor.lhs.false39
  %gcov_ctr152 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 10), align 16, !dbg !1568
  %16 = add i64 %gcov_ctr152, 1, !dbg !1568
  store i64 %16, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 10), align 16, !dbg !1568
  %cmp43.not = icmp eq i64 %indvars.iv259, %1, !dbg !1569
  br i1 %cmp43.not, label %if.end46, label %if.then45, !dbg !1570

if.then45:                                        ; preds = %land.lhs.true42, %for.body33
  %gcov_ctr153 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 11), align 8
  %17 = add i64 %gcov_ctr153, 1
  store i64 %17, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 11), align 8
  br label %for.inc134, !dbg !1571

if.end46:                                         ; preds = %land.lhs.true42, %lor.lhs.false39
  call void @llvm.dbg.value(metadata i32 0, metadata !1487, metadata !DIExpression()), !dbg !1508
  store i32 0, i32* %data_size, align 4, !dbg !1572, !tbaa !849
  %idxprom47 = sext i32 %nfd.3253 to i64, !dbg !1573
  %revents = getelementptr inbounds [20 x %struct.pollfd], [20 x %struct.pollfd]* @watchers_pollfds, i64 0, i64 %idxprom47, i32 2, !dbg !1574
  %18 = load i16, i16* %revents, align 2, !dbg !1574, !tbaa !1575
  %19 = and i16 %18, 1, !dbg !1576
  %tobool50.not = icmp eq i16 %19, 0, !dbg !1576
  br i1 %tobool50.not, label %if.end76, label %if.then51, !dbg !1577

if.then51:                                        ; preds = %if.end46
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #18, !dbg !1578
  call void @llvm.dbg.declare(metadata [1 x i8]* %buf52, metadata !1498, metadata !DIExpression()), !dbg !1579
  %20 = bitcast %struct.logger_watcher* %14 to %struct.conn**, !dbg !1580
  %21 = load %struct.conn*, %struct.conn** %20, align 8, !dbg !1580, !tbaa !1177
  %read = getelementptr inbounds %struct.conn, %struct.conn* %21, i64 0, i32 45, !dbg !1581
  %22 = load i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, i8*, i64)** %read, align 8, !dbg !1581, !tbaa !1582
  %call54 = call i64 %22(%struct.conn* noundef %21, i8* noundef nonnull %12, i64 noundef 1) #15, !dbg !1591
  %conv55 = trunc i64 %call54 to i32, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %conv55, metadata !1501, metadata !DIExpression()), !dbg !1592
  %cmp56 = icmp eq i32 %conv55, 0, !dbg !1593
  br i1 %cmp56, label %cleanup72, label %lor.lhs.false58, !dbg !1595

lor.lhs.false58:                                  ; preds = %if.then51
  %gcov_ctr154 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 12), align 16, !dbg !1596
  %23 = add i64 %gcov_ctr154, 1, !dbg !1596
  store i64 %23, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 12), align 16, !dbg !1596
  %cmp59 = icmp eq i32 %conv55, -1, !dbg !1597
  br i1 %cmp59, label %land.lhs.true61, label %cleanup.cont75, !dbg !1598

land.lhs.true61:                                  ; preds = %lor.lhs.false58
  %gcov_ctr155 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 13), align 8, !dbg !1599
  %24 = add i64 %gcov_ctr155, 1, !dbg !1599
  store i64 %24, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 13), align 8, !dbg !1599
  %call62 = tail call i32* @__errno_location() #19, !dbg !1599
  %25 = load i32, i32* %call62, align 4, !dbg !1599, !tbaa !849
  %cmp63.not = icmp eq i32 %25, 11, !dbg !1600
  br i1 %cmp63.not, label %cleanup.cont75, label %land.lhs.true65, !dbg !1601

land.lhs.true65:                                  ; preds = %land.lhs.true61
  %gcov_ctr156 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 14), align 16, !dbg !1602
  %26 = add i64 %gcov_ctr156, 1, !dbg !1602
  store i64 %26, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 14), align 16, !dbg !1602
  %27 = load i32, i32* %call62, align 4, !dbg !1602, !tbaa !849
  %cmp67.not = icmp eq i32 %27, 11, !dbg !1603
  br i1 %cmp67.not, label %cleanup.cont75, label %cleanup72, !dbg !1604

cleanup72:                                        ; preds = %if.then51, %land.lhs.true65
  %gcov_ctr157 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 15), align 8, !dbg !1605
  %28 = add i64 %gcov_ctr157, 1, !dbg !1605
  store i64 %28, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 15), align 8, !dbg !1605
  call fastcc void @logger_thread_close_watcher(%struct.logger_watcher* noundef nonnull %14) #16, !dbg !1607
  %inc70 = add nsw i32 %nfd.3253, 1, !dbg !1608
  call void @llvm.dbg.value(metadata i32 %inc70, metadata !1485, metadata !DIExpression()), !dbg !1508
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #18, !dbg !1609
  br label %for.inc134

cleanup.cont75:                                   ; preds = %lor.lhs.false58, %land.lhs.true61, %land.lhs.true65
  call void @llvm.dbg.value(metadata i32 %inc70, metadata !1485, metadata !DIExpression()), !dbg !1508
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #18, !dbg !1609
  %29 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 16) to <2 x i64>*), align 16, !dbg !1609
  %30 = add <2 x i64> %29, <i64 1, i64 1>, !dbg !1609
  store <2 x i64> %30, <2 x i64>* bitcast (i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 16) to <2 x i64>*), align 16, !dbg !1609
  br label %if.end76, !dbg !1610

if.end76:                                         ; preds = %cleanup.cont75, %if.end46
  call void @llvm.dbg.value(metadata i32 %nfd.3253, metadata !1485, metadata !DIExpression()), !dbg !1508
  %buf77 = getelementptr inbounds %struct.logger_watcher, %struct.logger_watcher* %14, i64 0, i32 8, !dbg !1611
  %31 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf77, align 8, !dbg !1611, !tbaa !1208
  call void @llvm.dbg.value(metadata i32* %data_size, metadata !1487, metadata !DIExpression(DW_OP_deref)), !dbg !1508
  %call78 = call i8* @bipbuf_peek_all(%struct.bipbuf_t* noundef %31, i32* noundef nonnull %data_size) #15, !dbg !1612
  call void @llvm.dbg.value(metadata i8* %call78, metadata !1486, metadata !DIExpression()), !dbg !1508
  %cmp79.not = icmp eq i8* %call78, null, !dbg !1613
  br i1 %cmp79.not, label %cleanup.cont133, label %if.then81, !dbg !1614

if.then81:                                        ; preds = %if.end76
  %32 = load i16, i16* %revents, align 2, !dbg !1615, !tbaa !1575
  %conv85263 = zext i16 %32 to i32, !dbg !1616
  %and86 = and i32 %conv85263, 24, !dbg !1617
  %tobool87.not = icmp eq i32 %and86, 0, !dbg !1617
  br i1 %tobool87.not, label %if.else89, label %if.then88, !dbg !1618

if.then88:                                        ; preds = %if.then81
  %gcov_ctr160 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 18), align 16, !dbg !1619
  %33 = add i64 %gcov_ctr160, 1, !dbg !1619
  store i64 %33, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 18), align 16, !dbg !1619
  call fastcc void @logger_thread_close_watcher(%struct.logger_watcher* noundef nonnull %14) #16, !dbg !1621
  br label %cleanup.cont133, !dbg !1622

if.else89:                                        ; preds = %if.then81
  %and94 = and i32 %conv85263, 4, !dbg !1623
  %tobool95.not = icmp eq i32 %and94, 0, !dbg !1623
  br i1 %tobool95.not, label %if.end127, label %if.then96, !dbg !1624

if.then96:                                        ; preds = %if.else89
  call void @llvm.dbg.value(metadata i32 0, metadata !1502, metadata !DIExpression()), !dbg !1625
  %t = getelementptr inbounds %struct.logger_watcher, %struct.logger_watcher* %14, i64 0, i32 6, !dbg !1626
  %34 = load i32, i32* %t, align 4, !dbg !1626, !tbaa !1192
  switch i32 %34, label %if.then121 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb100
  ], !dbg !1627

sw.bb:                                            ; preds = %if.then96
  %gcov_ctr161 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 19), align 8, !dbg !1628
  %35 = add i64 %gcov_ctr161, 1, !dbg !1628
  store i64 %35, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 19), align 8, !dbg !1628
  %36 = load i32, i32* %data_size, align 4, !dbg !1630, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %36, metadata !1487, metadata !DIExpression()), !dbg !1508
  %conv97 = zext i32 %36 to i64, !dbg !1630
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1631, !tbaa !822
  %call98 = call i64 @fwrite(i8* noundef nonnull %call78, i64 noundef 1, i64 noundef %conv97, %struct._IO_FILE* noundef %37) #15, !dbg !1632
  call void @llvm.dbg.value(metadata i64 %call98, metadata !1502, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1625
  br label %sw.epilog, !dbg !1633

sw.bb100:                                         ; preds = %if.then96
  %gcov_ctr162 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 20), align 16, !dbg !1634
  %38 = add i64 %gcov_ctr162, 1, !dbg !1634
  store i64 %38, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 20), align 16, !dbg !1634
  %39 = bitcast %struct.logger_watcher* %14 to %struct.conn**, !dbg !1635
  %40 = load %struct.conn*, %struct.conn** %39, align 8, !dbg !1635, !tbaa !1177
  %write = getelementptr inbounds %struct.conn, %struct.conn* %40, i64 0, i32 47, !dbg !1636
  %41 = load i64 (%struct.conn*, i8*, i64)*, i64 (%struct.conn*, i8*, i64)** %write, align 8, !dbg !1636, !tbaa !1637
  %42 = load i32, i32* %data_size, align 4, !dbg !1638, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %42, metadata !1487, metadata !DIExpression()), !dbg !1508
  %conv103 = zext i32 %42 to i64, !dbg !1638
  %call104 = call i64 %41(%struct.conn* noundef %40, i8* noundef nonnull %call78, i64 noundef %conv103) #15, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %call104, metadata !1502, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1625
  br label %sw.epilog, !dbg !1640

sw.epilog:                                        ; preds = %sw.bb100, %sw.bb
  %total.0.in = phi i64 [ %call104, %sw.bb100 ], [ %call98, %sw.bb ]
  %total.0 = trunc i64 %total.0.in to i32, !dbg !1625
  call void @llvm.dbg.value(metadata i32 %total.0, metadata !1502, metadata !DIExpression()), !dbg !1625
  switch i32 %total.0, label %if.else122 [
    i32 -1, label %if.then108
    i32 0, label %if.then121
  ], !dbg !1641

if.then108:                                       ; preds = %sw.epilog
  %call109 = tail call i32* @__errno_location() #19, !dbg !1642
  %43 = load i32, i32* %call109, align 4, !dbg !1642, !tbaa !849
  %cmp110.not = icmp eq i32 %43, 11, !dbg !1646
  br i1 %cmp110.not, label %if.end117, label %land.lhs.true112, !dbg !1647

land.lhs.true112:                                 ; preds = %if.then108
  %gcov_ctr163 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 21), align 8, !dbg !1648
  %44 = add i64 %gcov_ctr163, 1, !dbg !1648
  store i64 %44, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 21), align 8, !dbg !1648
  %45 = load i32, i32* %call109, align 4, !dbg !1648, !tbaa !849
  %cmp114.not = icmp eq i32 %45, 11, !dbg !1649
  br i1 %cmp114.not, label %if.end117, label %if.then116, !dbg !1650

if.then116:                                       ; preds = %land.lhs.true112
  %gcov_ctr164 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 22), align 16, !dbg !1651
  %46 = add i64 %gcov_ctr164, 1, !dbg !1651
  store i64 %46, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 22), align 16, !dbg !1651
  call fastcc void @logger_thread_close_watcher(%struct.logger_watcher* noundef nonnull %14) #16, !dbg !1653
  br label %if.end117, !dbg !1654

if.end117:                                        ; preds = %if.then116, %land.lhs.true112, %if.then108
  %gcov_ctr165 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 23), align 8, !dbg !1655
  %47 = add i64 %gcov_ctr165, 1, !dbg !1655
  store i64 %47, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 23), align 8, !dbg !1655
  br label %if.end127, !dbg !1655

if.then121:                                       ; preds = %if.then96, %sw.epilog
  %gcov_ctr166 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 24), align 16, !dbg !1656
  %48 = add i64 %gcov_ctr166, 1, !dbg !1656
  store i64 %48, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 24), align 16, !dbg !1656
  call fastcc void @logger_thread_close_watcher(%struct.logger_watcher* noundef nonnull %14) #16, !dbg !1659
  br label %if.end127, !dbg !1660

if.else122:                                       ; preds = %sw.epilog
  %gcov_ctr167 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 25), align 8, !dbg !1661
  %49 = add i64 %gcov_ctr167, 1, !dbg !1661
  store i64 %49, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 25), align 8, !dbg !1661
  %50 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf77, align 8, !dbg !1663, !tbaa !1208
  %call124 = call i8* @bipbuf_poll(%struct.bipbuf_t* noundef %50, i32 noundef %total.0) #15, !dbg !1664
  %add = add nsw i32 %flushed.0249, %total.0, !dbg !1665
  call void @llvm.dbg.value(metadata i32 %add, metadata !1488, metadata !DIExpression()), !dbg !1508
  br label %if.end127

if.end127:                                        ; preds = %if.end117, %if.else122, %if.then121, %if.else89
  %flushed.2 = phi i32 [ %flushed.0249, %if.else89 ], [ %flushed.0249, %if.end117 ], [ %flushed.0249, %if.then121 ], [ %add, %if.else122 ], !dbg !1666
  call void @llvm.dbg.value(metadata i32 %flushed.2, metadata !1488, metadata !DIExpression()), !dbg !1508
  %gcov_ctr168 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 26), align 16
  %51 = add i64 %gcov_ctr168, 1
  store i64 %51, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 26), align 16
  br label %cleanup.cont133

cleanup.cont133:                                  ; preds = %if.then88, %if.end127, %if.end76
  %flushed.3 = phi i32 [ %flushed.0249, %if.then88 ], [ %flushed.2, %if.end127 ], [ %flushed.0249, %if.end76 ], !dbg !1666
  call void @llvm.dbg.value(metadata i32 %flushed.3, metadata !1488, metadata !DIExpression()), !dbg !1508
  %inc130 = add nsw i32 %nfd.3253, 1, !dbg !1667
  call void @llvm.dbg.value(metadata i32 %inc130, metadata !1485, metadata !DIExpression()), !dbg !1508
  %52 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 27) to <2 x i64>*), align 8, !dbg !1667
  %53 = add <2 x i64> %52, <i64 1, i64 1>, !dbg !1667
  store <2 x i64> %53, <2 x i64>* bitcast (i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 27) to <2 x i64>*), align 8, !dbg !1667
  br label %for.inc134, !dbg !1668

for.inc134:                                       ; preds = %cleanup72, %if.then45, %cleanup.cont133
  %nfd.6245 = phi i32 [ %inc130, %cleanup.cont133 ], [ %inc70, %cleanup72 ], [ %nfd.3253, %if.then45 ]
  %flushed.4244 = phi i32 [ %flushed.3, %cleanup.cont133 ], [ %flushed.0249, %cleanup72 ], [ %flushed.0249, %if.then45 ]
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next260, metadata !1484, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 %nfd.6245, metadata !1485, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 %flushed.4244, metadata !1488, metadata !DIExpression()), !dbg !1508
  %exitcond262.not = icmp eq i64 %indvars.iv.next260, 20, !dbg !1670
  br i1 %exitcond262.not, label %for.end136, label %for.body33, !dbg !1557, !llvm.loop !1671

for.end136:                                       ; preds = %for.inc134
  %gcov_ctr171 = load i64, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 29), align 8, !dbg !1673
  %54 = add i64 %gcov_ctr171, 1, !dbg !1673
  store i64 %54, i64* getelementptr inbounds ([30 x i64], [30 x i64]* @__llvm_gcov_ctr.68, i64 0, i64 29), align 8, !dbg !1673
  br label %cleanup138, !dbg !1674

cleanup138:                                       ; preds = %if.then28, %for.end136, %if.then23
  %retval.1 = phi i32 [ 0, %if.then23 ], [ -1, %if.then28 ], [ %flushed.4244, %for.end136 ], !dbg !1508
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #18, !dbg !1675
  ret i32 %retval.1, !dbg !1675
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @logger_thread_flush_stats(%struct.logger_stats* nocapture noundef readonly %ls) unnamed_addr #2 !dbg !1676 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.logger_stats* %ls, metadata !1680, metadata !DIExpression()), !dbg !1681
  tail call void @STATS_LOCK() #15, !dbg !1682
  %1 = bitcast %struct.logger_stats* %ls to <2 x i64>*, !dbg !1683
  %2 = load <2 x i64>, <2 x i64>* %1, align 8, !dbg !1683, !tbaa !874
  %3 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 15) to <2 x i64>*), align 8, !dbg !1684, !tbaa !874
  %4 = add <2 x i64> %3, %2, !dbg !1684
  store <2 x i64> %4, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 15) to <2 x i64>*), align 8, !dbg !1684, !tbaa !874
  %watcher_skipped = getelementptr inbounds %struct.logger_stats, %struct.logger_stats* %ls, i64 0, i32 2, !dbg !1685
  %5 = bitcast i64* %watcher_skipped to <2 x i64>*, !dbg !1685
  %6 = load <2 x i64>, <2 x i64>* %5, align 8, !dbg !1685, !tbaa !874
  %7 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 17) to <2 x i64>*), align 8, !dbg !1686, !tbaa !874
  %8 = add <2 x i64> %7, %6, !dbg !1686
  store <2 x i64> %8, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 17) to <2 x i64>*), align 8, !dbg !1686, !tbaa !874
  %watcher_count = getelementptr inbounds %struct.logger_stats, %struct.logger_stats* %ls, i64 0, i32 4, !dbg !1687
  %9 = load i64, i64* %watcher_count, align 8, !dbg !1687, !tbaa !1349
  %conv = trunc i64 %9 to i32, !dbg !1688
  store i32 %conv, i32* getelementptr inbounds (%struct.stats_state, %struct.stats_state* @stats_state, i64 0, i32 7), align 4, !dbg !1689, !tbaa !1690
  tail call void @STATS_UNLOCK() #15, !dbg !1692
  ret void, !dbg !1693
}

declare !dbg !1694 dso_local i8* @bipbuf_peek_all(%struct.bipbuf_t* noundef, i32* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @logger_thread_parse_entry(%struct._logentry* noundef %e, i8* noundef %scratch, i32* nocapture noundef writeonly %scratch_len) unnamed_addr #2 !dbg !1700 {
entry:
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !1705, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata %struct.logger_stats* undef, metadata !1706, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8* %scratch, metadata !1707, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i32* %scratch_len, metadata !1708, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i32 0, metadata !1709, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata !DIArgList([15 x %struct._entry_details]* @default_entries, i32 undef), metadata !1710, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1711
  %event = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 0, !dbg !1712
  %0 = load i32, i32* %event, align 8, !dbg !1712, !tbaa !1027
  call void @llvm.dbg.value(metadata !DIArgList([15 x %struct._entry_details]* @default_entries, i32 %0), metadata !1710, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1711
  %idxprom = zext i32 %0 to i64, !dbg !1713
  call void @llvm.dbg.value(metadata !DIArgList([15 x %struct._entry_details]* @default_entries, i64 %idxprom), metadata !1710, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1711
  %parse_cb = getelementptr inbounds [15 x %struct._entry_details], [15 x %struct._entry_details]* @default_entries, i64 0, i64 %idxprom, i32 3, !dbg !1714
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 0), align 16, !dbg !1717
  %1 = add i64 %gcov_ctr, 1, !dbg !1717
  store i64 %1, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 0), align 16, !dbg !1717
  %2 = load i32 (%struct._logentry*, i8*)*, i32 (%struct._logentry*, i8*)** %parse_cb, align 16, !dbg !1718, !tbaa !1719
  %call = tail call i32 %2(%struct._logentry* noundef %e, i8* noundef %scratch) #15, !dbg !1720
  call void @llvm.dbg.value(metadata i32 %call, metadata !1709, metadata !DIExpression()), !dbg !1711
  %cmp2 = icmp sgt i32 %call, 4095, !dbg !1721
  br i1 %cmp2, label %cleanup, label %lor.lhs.false, !dbg !1723

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr9 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 2), align 16, !dbg !1724
  %3 = add i64 %gcov_ctr9, 1, !dbg !1724
  store i64 %3, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 2), align 16, !dbg !1724
  %cmp3 = icmp slt i32 %call, 1, !dbg !1725
  br i1 %cmp3, label %cleanup, label %if.else5, !dbg !1726

if.else5:                                         ; preds = %lor.lhs.false
  store i32 %call, i32* %scratch_len, align 4, !dbg !1727, !tbaa !849
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 3), align 8, !dbg !1729
  %4 = add i64 %gcov_ctr10, 1, !dbg !1729
  store i64 %4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.70, i64 0, i64 3), align 8, !dbg !1729
  br label %cleanup, !dbg !1729

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.else5
  %retval.0 = phi i32 [ 0, %if.else5 ], [ 2, %lor.lhs.false ], [ 2, %entry ], !dbg !1711
  ret i32 %retval.0, !dbg !1730
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @logger_thread_write_entry(%struct._logentry* nocapture noundef readonly %e, %struct.logger_stats* nocapture noundef %ls, i8* noundef %scratch, i32 noundef %scratch_len) unnamed_addr #2 !dbg !1731 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !1735, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata %struct.logger_stats* %ls, metadata !1736, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* %scratch, metadata !1737, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i32 %scratch_len, metadata !1738, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i32 0, metadata !1739, metadata !DIExpression()), !dbg !1746
  %eflags = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 2
  %gid = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 3
  %add = add nsw i32 %scratch_len, 128
  %watcher_skipped36 = getelementptr inbounds %struct.logger_stats, %struct.logger_stats* %ls, i64 0, i32 2
  %watcher_sent = getelementptr inbounds %struct.logger_stats, %struct.logger_stats* %ls, i64 0, i32 3
  br label %for.body, !dbg !1747

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1739, metadata !DIExpression()), !dbg !1746
  %arrayidx = getelementptr inbounds [20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 %indvars.iv, !dbg !1748
  %1 = load %struct.logger_watcher*, %struct.logger_watcher** %arrayidx, align 8, !dbg !1748, !tbaa !822
  call void @llvm.dbg.value(metadata %struct.logger_watcher* %1, metadata !1741, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8* null, metadata !1745, metadata !DIExpression()), !dbg !1749
  %cmp1 = icmp eq %struct.logger_watcher* %1, null, !dbg !1750
  br i1 %cmp1, label %for.inc, label %lor.lhs.false, !dbg !1752

lor.lhs.false:                                    ; preds = %for.body
  %gcov_ctr48 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 1), align 8, !dbg !1753
  %2 = add i64 %gcov_ctr48, 1, !dbg !1753
  store i64 %2, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 1), align 8, !dbg !1753
  %3 = load i16, i16* %eflags, align 2, !dbg !1754, !tbaa !1037
  %eflags2 = getelementptr inbounds %struct.logger_watcher, %struct.logger_watcher* %1, i64 0, i32 7, !dbg !1755
  %4 = load i16, i16* %eflags2, align 8, !dbg !1755, !tbaa !1198
  %and88 = and i16 %4, %3, !dbg !1756
  %cmp4 = icmp eq i16 %and88, 0, !dbg !1757
  br i1 %cmp4, label %for.inc, label %lor.lhs.false6, !dbg !1758

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %gcov_ctr49 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 2), align 16, !dbg !1759
  %5 = add i64 %gcov_ctr49, 1, !dbg !1759
  store i64 %5, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 2), align 16, !dbg !1759
  %6 = load i64, i64* %gid, align 8, !dbg !1760, !tbaa !874
  %min_gid = getelementptr inbounds %struct.logger_watcher, %struct.logger_watcher* %1, i64 0, i32 4, !dbg !1761
  %7 = load i64, i64* %min_gid, align 8, !dbg !1761, !tbaa !1202
  %cmp7 = icmp ult i64 %6, %7, !dbg !1762
  br i1 %cmp7, label %for.inc, label %while.cond.preheader, !dbg !1763

while.cond.preheader:                             ; preds = %lor.lhs.false6
  %failed_flush = getelementptr inbounds %struct.logger_watcher, %struct.logger_watcher* %1, i64 0, i32 5
  call void @llvm.dbg.value(metadata i8* null, metadata !1745, metadata !DIExpression()), !dbg !1749
  %8 = load i8, i8* %failed_flush, align 8, !dbg !1764, !tbaa !1542, !range !1765
  %tobool.not94 = icmp eq i8 %8, 0, !dbg !1764
  br i1 %tobool.not94, label %land.rhs.lr.ph, label %if.then19, !dbg !1766

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %buf = getelementptr inbounds %struct.logger_watcher, %struct.logger_watcher* %1, i64 0, i32 8
  %9 = trunc i64 %indvars.iv to i32
  br label %land.rhs, !dbg !1766

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end16
  %gcov_ctr51 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 4), align 16, !dbg !1767
  %10 = add i64 %gcov_ctr51, 1, !dbg !1767
  store i64 %10, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 4), align 16, !dbg !1767
  %11 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf, align 8, !dbg !1768, !tbaa !1208
  %call = tail call i8* @bipbuf_request(%struct.bipbuf_t* noundef %11, i32 noundef %add) #15, !dbg !1769
  call void @llvm.dbg.value(metadata i8* %call, metadata !1745, metadata !DIExpression()), !dbg !1749
  %cmp9 = icmp eq i8* %call, null, !dbg !1770
  br i1 %cmp9, label %while.body, label %while.end, !dbg !1771

while.body:                                       ; preds = %land.rhs
  %call11 = tail call fastcc i32 @logger_thread_poll_watchers(i32 noundef 0, i32 noundef %9) #16, !dbg !1772
  %cmp12 = icmp slt i32 %call11, 1, !dbg !1775
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !1776

if.then14:                                        ; preds = %while.body
  %gcov_ctr52 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 5), align 8, !dbg !1777
  %12 = add i64 %gcov_ctr52, 1, !dbg !1777
  store i64 %12, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 5), align 8, !dbg !1777
  store i8 1, i8* %failed_flush, align 8, !dbg !1779, !tbaa !1542
  br label %if.end16, !dbg !1780

if.end16:                                         ; preds = %if.then14, %while.body
  %gcov_ctr53 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 6), align 16, !dbg !1771
  %13 = add i64 %gcov_ctr53, 1, !dbg !1771
  store i64 %13, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 6), align 16, !dbg !1771
  call void @llvm.dbg.value(metadata i8* null, metadata !1745, metadata !DIExpression()), !dbg !1749
  %14 = load i8, i8* %failed_flush, align 8, !dbg !1764, !tbaa !1542, !range !1765
  %tobool.not = icmp eq i8 %14, 0, !dbg !1764
  br i1 %tobool.not, label %land.rhs, label %if.then19, !dbg !1766, !llvm.loop !1781

while.end:                                        ; preds = %land.rhs
  %.pr = load i8, i8* %failed_flush, align 8, !dbg !1783, !tbaa !1542
  call void @llvm.dbg.value(metadata i8* %call, metadata !1745, metadata !DIExpression()), !dbg !1749
  %tobool18.not = icmp eq i8 %.pr, 0, !dbg !1783
  br i1 %tobool18.not, label %if.end21, label %if.then19, !dbg !1785

if.then19:                                        ; preds = %if.end16, %while.cond.preheader, %while.end
  %gcov_ctr54 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 7), align 8, !dbg !1786
  %15 = add i64 %gcov_ctr54, 1, !dbg !1786
  store i64 %15, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 7), align 8, !dbg !1786
  %skipped = getelementptr inbounds %struct.logger_watcher, %struct.logger_watcher* %1, i64 0, i32 3, !dbg !1788
  br label %for.inc.sink.split, !dbg !1789

if.end21:                                         ; preds = %while.end
  %skipped22 = getelementptr inbounds %struct.logger_watcher, %struct.logger_watcher* %1, i64 0, i32 3, !dbg !1790
  %16 = load i64, i64* %skipped22, align 8, !dbg !1790, !tbaa !1792
  %cmp23.not = icmp eq i64 %16, 0, !dbg !1793
  br i1 %cmp23.not, label %cleanup.cont, label %if.then25, !dbg !1794

if.then25:                                        ; preds = %if.end21
  %call27 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %call, i64 noundef 128, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i64 noundef %16) #15, !dbg !1795
  call void @llvm.dbg.value(metadata i32 %call27, metadata !1740, metadata !DIExpression()), !dbg !1746
  %cmp28 = icmp sgt i32 %call27, 127, !dbg !1797
  br i1 %cmp28, label %if.then33, label %lor.lhs.false30, !dbg !1799

lor.lhs.false30:                                  ; preds = %if.then25
  %gcov_ctr55 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 8), align 16, !dbg !1800
  %17 = add i64 %gcov_ctr55, 1, !dbg !1800
  store i64 %17, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 8), align 16, !dbg !1800
  %cmp31 = icmp slt i32 %call27, 1, !dbg !1801
  br i1 %cmp31, label %if.then33, label %if.end38, !dbg !1802

if.then33:                                        ; preds = %lor.lhs.false30, %if.then25
  %gcov_ctr56 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 9), align 8, !dbg !1803
  %18 = add i64 %gcov_ctr56, 1, !dbg !1803
  store i64 %18, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 9), align 8, !dbg !1803
  br label %for.inc.sink.split, !dbg !1805

if.end38:                                         ; preds = %lor.lhs.false30
  %gcov_ctr57 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 10), align 16, !dbg !1806
  %19 = add i64 %gcov_ctr57, 1, !dbg !1806
  store i64 %19, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 10), align 16, !dbg !1806
  %20 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf, align 8, !dbg !1807, !tbaa !1208
  %call40 = tail call i32 @bipbuf_push(%struct.bipbuf_t* noundef %20, i32 noundef %call27) #15, !dbg !1808
  store i64 0, i64* %skipped22, align 8, !dbg !1809, !tbaa !1792
  br label %cleanup.cont, !dbg !1810

cleanup.cont:                                     ; preds = %if.end38, %if.end21
  %gcov_ctr58 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 11), align 8, !dbg !1811
  %21 = add i64 %gcov_ctr58, 1, !dbg !1811
  store i64 %21, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 11), align 8, !dbg !1811
  %22 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf, align 8, !dbg !1812, !tbaa !1208
  %call44 = tail call i32 @bipbuf_offer(%struct.bipbuf_t* noundef %22, i8* noundef %scratch, i32 noundef %scratch_len) #15, !dbg !1813
  br label %for.inc.sink.split, !dbg !1814

for.inc.sink.split:                               ; preds = %cleanup.cont, %if.then19, %if.then33
  %skipped22.sink100 = phi i64* [ %skipped22, %if.then33 ], [ %skipped, %if.then19 ], [ %watcher_sent, %cleanup.cont ]
  %watcher_skipped36.sink99.ph = phi i64* [ %watcher_skipped36, %if.then33 ], [ %watcher_skipped36, %if.then19 ], [ getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 13), %cleanup.cont ]
  %23 = load i64, i64* %skipped22.sink100, align 8, !dbg !1749, !tbaa !874
  %inc35 = add i64 %23, 1, !dbg !1749
  store i64 %inc35, i64* %skipped22.sink100, align 8, !dbg !1749, !tbaa !874
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body, %lor.lhs.false, %lor.lhs.false6
  %watcher_skipped36.sink99 = phi i64* [ getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 3), %lor.lhs.false6 ], [ getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 3), %lor.lhs.false ], [ getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.71, i64 0, i64 3), %for.body ], [ %watcher_skipped36.sink99.ph, %for.inc.sink.split ]
  %24 = load i64, i64* %watcher_skipped36.sink99, align 8
  %inc37 = add i64 %24, 1
  store i64 %inc37, i64* %watcher_skipped36.sink99, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1739, metadata !DIExpression()), !dbg !1746
  %exitcond.not = icmp eq i64 %indvars.iv.next, 20, !dbg !1816
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1747, !llvm.loop !1817

for.end:                                          ; preds = %for.inc
  ret void, !dbg !1819
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare !dbg !1820 dso_local i8* @bipbuf_poll(%struct.bipbuf_t* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !1823 dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

declare !dbg !1827 dso_local i32 @poll(%struct.pollfd* noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !1832 dso_local void @perror(i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @logger_thread_close_watcher(%struct.logger_watcher* noundef %w) unnamed_addr #2 !dbg !1835 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.72, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.72, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.logger_watcher* %w, metadata !1839, metadata !DIExpression()), !dbg !1840
  %id = getelementptr inbounds %struct.logger_watcher, %struct.logger_watcher* %w, i64 0, i32 2, !dbg !1841
  %1 = load i32, i32* %id, align 4, !dbg !1841, !tbaa !1195
  %idxprom = sext i32 %1 to i64, !dbg !1842
  %arrayidx = getelementptr inbounds [20 x %struct.logger_watcher*], [20 x %struct.logger_watcher*]* @watchers, i64 0, i64 %idxprom, !dbg !1842
  store %struct.logger_watcher* null, %struct.logger_watcher** %arrayidx, align 8, !dbg !1843, !tbaa !822
  %2 = bitcast %struct.logger_watcher* %w to %struct.conn**, !dbg !1844
  %3 = load %struct.conn*, %struct.conn** %2, align 8, !dbg !1844, !tbaa !1177
  tail call void @sidethread_conn_close(%struct.conn* noundef %3) #15, !dbg !1845
  %4 = load i32, i32* @watcher_count, align 4, !dbg !1846, !tbaa !849
  %dec = add nsw i32 %4, -1, !dbg !1846
  store i32 %dec, i32* @watcher_count, align 4, !dbg !1846, !tbaa !849
  %buf = getelementptr inbounds %struct.logger_watcher, %struct.logger_watcher* %w, i64 0, i32 8, !dbg !1847
  %5 = load %struct.bipbuf_t*, %struct.bipbuf_t** %buf, align 8, !dbg !1847, !tbaa !1208
  tail call void @bipbuf_free(%struct.bipbuf_t* noundef %5) #15, !dbg !1848
  %6 = bitcast %struct.logger_watcher* %w to i8*, !dbg !1849
  tail call void @free(i8* noundef %6) #15, !dbg !1850
  tail call fastcc void @logger_set_flags() #16, !dbg !1851
  ret void, !dbg !1852
}

declare !dbg !1853 dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #6

declare !dbg !1857 dso_local void @sidethread_conn_close(%struct.conn* noundef) local_unnamed_addr #6

declare !dbg !1860 dso_local void @bipbuf_free(%struct.bipbuf_t* noundef) local_unnamed_addr #6

declare !dbg !1863 dso_local void @STATS_LOCK() local_unnamed_addr #6

declare !dbg !1864 dso_local void @STATS_UNLOCK() local_unnamed_addr #6

declare !dbg !1865 dso_local i32 @pthread_join(i64 noundef, i8** noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal void @_logger_log_text(%struct._logentry* noundef %e, %struct._entry_details* nocapture noundef readonly %d, i8* nocapture noundef readnone %entry1, %struct.__va_list_tag* noundef %ap) #2 !dbg !1869 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !1871, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata %struct._entry_details* %d, metadata !1872, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8* %entry1, metadata !1873, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %ap, metadata !1874, metadata !DIExpression()), !dbg !1877
  %reqlen2 = getelementptr inbounds %struct._entry_details, %struct._entry_details* %d, i64 0, i32 0, !dbg !1878
  %1 = load i32, i32* %reqlen2, align 8, !dbg !1878, !tbaa !1008
  call void @llvm.dbg.value(metadata i32 %1, metadata !1875, metadata !DIExpression()), !dbg !1877
  %2 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 0, i32 0, !dbg !1879
  %conv = sext i32 %1 to i64, !dbg !1880
  %format = getelementptr inbounds %struct._entry_details, %struct._entry_details* %d, i64 0, i32 4, !dbg !1881
  %3 = load i8*, i8** %format, align 8, !dbg !1881, !tbaa !1882
  %call = tail call i32 @vsnprintf(i8* noundef nonnull %2, i64 noundef %conv, i8* noundef %3, %struct.__va_list_tag* noundef %ap) #15, !dbg !1883
  call void @llvm.dbg.value(metadata i32 %call, metadata !1876, metadata !DIExpression()), !dbg !1877
  %cmp = icmp slt i32 %call, 1, !dbg !1884
  br i1 %cmp, label %if.then, label %if.end, !dbg !1886

if.then:                                          ; preds = %entry
  %gcov_ctr5 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 1), align 8, !dbg !1887
  %4 = add i64 %gcov_ctr5, 1, !dbg !1887
  store i64 %4, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.73, i64 0, i64 1), align 8, !dbg !1887
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1887, !tbaa !822
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call) #15, !dbg !1889
  br label %if.end, !dbg !1890

if.end:                                           ; preds = %if.then, %entry
  %add = add nsw i32 %call, 1, !dbg !1891
  %size = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 5, !dbg !1892
  store i32 %add, i32* %size, align 8, !dbg !1893, !tbaa !849
  ret void, !dbg !1894
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_logger_parse_text(%struct._logentry* noundef %e, i8* noundef %scratch) #2 !dbg !1895 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !1897, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8* %scratch, metadata !1898, metadata !DIExpression()), !dbg !1899
  %tv_sec = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 4, i32 0, !dbg !1900
  %1 = load i64, i64* %tv_sec, align 8, !dbg !1900, !tbaa !1901
  %conv = trunc i64 %1 to i32, !dbg !1902
  %tv_usec = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 4, i32 1, !dbg !1903
  %2 = load i64, i64* %tv_usec, align 8, !dbg !1903, !tbaa !1904
  %conv2 = trunc i64 %2 to i32, !dbg !1905
  %gid = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 3, !dbg !1906
  %3 = load i64, i64* %gid, align 8, !dbg !1906, !tbaa !874
  %4 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 0, i32 0, !dbg !1907
  %call = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %scratch, i64 noundef 4096, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv2, i64 noundef %3, i8* noundef nonnull %4) #15, !dbg !1908
  ret i32 %call, !dbg !1909
}

; Function Attrs: noinline nounwind uwtable
define internal void @_logger_log_evictions(%struct._logentry* noundef %e, %struct._entry_details* nocapture noundef readnone %d, i8* noundef %entry1, %struct.__va_list_tag* nocapture noundef readnone %ap) #2 !dbg !1910 {
entry:
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !1912, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata %struct._entry_details* %d, metadata !1913, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8* %entry1, metadata !1914, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %ap, metadata !1915, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8* %entry1, metadata !1916, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !1917, metadata !DIExpression(DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !1918
  %exptime = getelementptr inbounds i8, i8* %entry1, i64 28, !dbg !1919
  %0 = bitcast i8* %exptime to i32*, !dbg !1919
  %1 = load i32, i32* %0, align 4, !dbg !1919, !tbaa !849
  %cmp.not = icmp eq i32 %1, 0, !dbg !1920
  br i1 %cmp.not, label %cond.false, label %cond.true, !dbg !1921

cond.true:                                        ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 0), align 8, !dbg !1922
  %2 = add i64 %gcov_ctr, 1, !dbg !1922
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 0), align 8, !dbg !1922
  %3 = load volatile i32, i32* @current_time, align 4, !dbg !1923, !tbaa !849
  %sub = sub i32 %1, %3, !dbg !1924
  %conv = zext i32 %sub to i64, !dbg !1925
  br label %cond.end, !dbg !1921

cond.false:                                       ; preds = %entry
  %gcov_ctr21 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 1), align 8, !dbg !1921
  %4 = add i64 %gcov_ctr21, 1, !dbg !1921
  store i64 %4, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.75, i64 0, i64 1), align 8, !dbg !1921
  br label %cond.end, !dbg !1921

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ -1, %cond.false ], !dbg !1921
  %arraydecay = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 0, !dbg !1926
  call void @llvm.dbg.value(metadata %union.anon.2* %arraydecay, metadata !1917, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !1917, metadata !DIExpression(DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !1918
  call void @llvm.dbg.value(metadata i8* %entry1, metadata !1916, metadata !DIExpression()), !dbg !1918
  %exptime3 = bitcast %union.anon.2* %arraydecay to i64*, !dbg !1927
  store i64 %cond, i64* %exptime3, align 8, !dbg !1928, !tbaa !1929
  %5 = load volatile i32, i32* @current_time, align 4, !dbg !1931, !tbaa !849
  %time = getelementptr inbounds i8, i8* %entry1, i64 24, !dbg !1932
  %6 = bitcast i8* %time to i32*, !dbg !1932
  %7 = load i32, i32* %6, align 8, !dbg !1932, !tbaa !849
  %sub4 = sub i32 %5, %7, !dbg !1933
  %latime = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 12, !dbg !1934
  %8 = bitcast %union.anon.2* %latime to i32*, !dbg !1934
  store i32 %sub4, i32* %8, align 4, !dbg !1935, !tbaa !849
  %it_flags = getelementptr inbounds i8, i8* %entry1, i64 38, !dbg !1936
  %9 = bitcast i8* %it_flags to i16*, !dbg !1936
  %10 = load i16, i16* %9, align 2, !dbg !1936, !tbaa !1037
  %it_flags5 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 16, !dbg !1937
  %11 = bitcast %union.anon.2* %it_flags5 to i16*, !dbg !1937
  store i16 %10, i16* %11, align 8, !dbg !1938, !tbaa !1037
  %12 = getelementptr inbounds i8, i8* %entry1, i64 41, !dbg !1939
  %13 = load i8, i8* %12, align 1, !dbg !1939, !tbaa !1027
  %14 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 18, i32 0, !dbg !1940
  store i8 %13, i8* %14, align 2, !dbg !1941, !tbaa !1027
  %nbytes = getelementptr inbounds i8, i8* %entry1, i64 32, !dbg !1942
  %15 = bitcast i8* %nbytes to i32*, !dbg !1942
  %16 = load i32, i32* %15, align 8, !dbg !1942, !tbaa !849
  %nbytes7 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 8, !dbg !1943
  %17 = bitcast %union.anon.2* %nbytes7 to i32*, !dbg !1943
  store i32 %16, i32* %17, align 8, !dbg !1944, !tbaa !849
  %18 = getelementptr inbounds i8, i8* %entry1, i64 40, !dbg !1945
  %19 = load i8, i8* %18, align 8, !dbg !1945, !tbaa !1027
  %20 = and i8 %19, 63, !dbg !1945
  %21 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 19, i32 0, !dbg !1946
  store i8 %20, i8* %21, align 1, !dbg !1947, !tbaa !1027
  %arraydecay10 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 20, i32 0, !dbg !1948
  %data11 = getelementptr inbounds i8, i8* %entry1, i64 48, !dbg !1949
  %22 = load i16, i16* %9, align 2, !dbg !1949, !tbaa !1037
  %23 = shl i16 %22, 2, !dbg !1949
  %24 = and i16 %23, 8, !dbg !1949
  %25 = zext i16 %24 to i64, !dbg !1949
  %add.ptr = getelementptr inbounds i8, i8* %data11, i64 %25, !dbg !1949
  %26 = load i8, i8* %12, align 1, !dbg !1950, !tbaa !1027
  %conv17 = zext i8 %26 to i64, !dbg !1951
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay10, i8* noundef nonnull %add.ptr, i64 noundef %conv17) #15, !dbg !1952
  %27 = load i8, i8* %14, align 2, !dbg !1953, !tbaa !1027
  %conv19 = zext i8 %27 to i32, !dbg !1954
  %add = add nuw nsw i32 %conv19, 24, !dbg !1955
  %size = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 5, !dbg !1956
  store i32 %add, i32* %size, align 8, !dbg !1957, !tbaa !849
  ret void, !dbg !1958
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_logger_parse_ee(%struct._logentry* noundef %e, i8* noundef %scratch) #2 !dbg !1959 {
entry:
  %keybuf = alloca [751 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !1961, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8* %scratch, metadata !1962, metadata !DIExpression()), !dbg !1969
  %0 = getelementptr inbounds [751 x i8], [751 x i8]* %keybuf, i64 0, i64 0, !dbg !1970
  call void @llvm.lifetime.start.p0i8(i64 751, i8* nonnull %0) #18, !dbg !1970
  call void @llvm.dbg.declare(metadata [751 x i8]* %keybuf, metadata !1964, metadata !DIExpression()), !dbg !1971
  %arraydecay = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 0, !dbg !1972
  call void @llvm.dbg.value(metadata %union.anon.2* %arraydecay, metadata !1968, metadata !DIExpression()), !dbg !1969
  %arraydecay1 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 20, i32 0, !dbg !1973
  %1 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 18, i32 0, !dbg !1974
  %2 = load i8, i8* %1, align 2, !dbg !1974, !tbaa !1027
  %conv = zext i8 %2 to i64, !dbg !1975
  %call = call zeroext i1 @uriencode(i8* noundef nonnull %arraydecay1, i8* noundef nonnull %0, i64 noundef %conv, i64 noundef 751) #15, !dbg !1976
  %tv_sec = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 4, i32 0, !dbg !1977
  %3 = load i64, i64* %tv_sec, align 8, !dbg !1977, !tbaa !1901
  %tv_usec = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 4, i32 1, !dbg !1978
  %4 = load i64, i64* %tv_usec, align 8, !dbg !1978, !tbaa !1904
  %gid = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 3, !dbg !1979
  %5 = load i64, i64* %gid, align 8, !dbg !1979, !tbaa !874
  %it_flags = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 16, !dbg !1980
  %6 = bitcast %union.anon.2* %it_flags to i16*, !dbg !1980
  %7 = load i16, i16* %6, align 8, !dbg !1980, !tbaa !1037
  %exptime = bitcast %union.anon.2* %arraydecay to i64*, !dbg !1981
  %8 = load i64, i64* %exptime, align 8, !dbg !1981, !tbaa !1929
  %latime = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 12, !dbg !1982
  %9 = bitcast %union.anon.2* %latime to i32*, !dbg !1982
  %10 = load i32, i32* %9, align 4, !dbg !1982, !tbaa !849
  %11 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 19, i32 0, !dbg !1983
  %12 = load i8, i8* %11, align 1, !dbg !1983, !tbaa !1027
  %nbytes = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 8, !dbg !1984
  %13 = bitcast %union.anon.2* %nbytes to i32*, !dbg !1984
  %14 = load i32, i32* %13, align 8, !dbg !1984, !tbaa !849
  %cmp = icmp sgt i32 %14, 0, !dbg !1985
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1986

cond.true:                                        ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 0), align 8, !dbg !1987
  %15 = add i64 %gcov_ctr, 1, !dbg !1987
  store i64 %15, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 0), align 8, !dbg !1987
  %sub = add nsw i32 %14, -2, !dbg !1988
  br label %cond.end, !dbg !1986

cond.false:                                       ; preds = %entry
  %gcov_ctr13 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 1), align 8, !dbg !1986
  %16 = add i64 %gcov_ctr13, 1, !dbg !1986
  store i64 %16, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.76, i64 0, i64 1), align 8, !dbg !1986
  br label %cond.end, !dbg !1986

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond11 = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !1986
  %conv8 = zext i8 %12 to i32, !dbg !1989
  %17 = and i16 %7, 8, !dbg !1990
  %tobool.not = icmp eq i16 %17, 0, !dbg !1991
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), !dbg !1991
  %conv5 = trunc i64 %4 to i32, !dbg !1992
  %conv3 = trunc i64 %3 to i32, !dbg !1993
  %call12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %scratch, i64 noundef 4096, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv3, i32 noundef %conv5, i64 noundef %5, i8* noundef nonnull %0, i8* noundef %cond, i64 noundef %8, i32 noundef %10, i32 noundef %conv8, i32 noundef %cond11) #15, !dbg !1994
  call void @llvm.dbg.value(metadata i32 %call12, metadata !1963, metadata !DIExpression()), !dbg !1969
  call void @llvm.lifetime.end.p0i8(i64 751, i8* nonnull %0) #18, !dbg !1995
  ret i32 %call12, !dbg !1996
}

; Function Attrs: noinline nounwind uwtable
define internal void @_logger_log_item_get(%struct._logentry* noundef %e, %struct._entry_details* nocapture noundef readnone %d, i8* nocapture noundef readnone %entry1, %struct.__va_list_tag* nocapture noundef %ap) #2 !dbg !1997 {
entry:
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !1999, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata %struct._entry_details* %d, metadata !2000, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i8* %entry1, metadata !2001, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %ap, metadata !2002, metadata !DIExpression()), !dbg !2010
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 0, !dbg !2011
  %gp_offset = load i32, i32* %gp_offset_p, align 8, !dbg !2011
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !2011
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2011

vaarg.in_reg:                                     ; preds = %entry
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2011
  %reg_save_area = load i8*, i8** %0, align 8, !dbg !2011
  %1 = zext i32 %gp_offset to i64, !dbg !2011
  %2 = getelementptr i8, i8* %reg_save_area, i64 %1, !dbg !2011
  %3 = add nuw nsw i32 %gp_offset, 8, !dbg !2011
  store i32 %3, i32* %gp_offset_p, align 8, !dbg !2011
  br label %vaarg.end, !dbg !2011

vaarg.in_mem:                                     ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 0), align 16, !dbg !2011
  %4 = add i64 %gcov_ctr, 1, !dbg !2011
  store i64 %4, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 0), align 16, !dbg !2011
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2011
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !2011
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !2011
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !2011
  %gp_offset3.pr = load i32, i32* %gp_offset_p, align 8, !dbg !2012
  br label %vaarg.end, !dbg !2011

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %gp_offset3 = phi i32 [ %gp_offset3.pr, %vaarg.in_mem ], [ %3, %vaarg.in_reg ], !dbg !2012
  %vaarg.addr.in = phi i8* [ %overflow_arg_area, %vaarg.in_mem ], [ %2, %vaarg.in_reg ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !2011
  %5 = load i32, i32* %vaarg.addr, align 4, !dbg !2011
  call void @llvm.dbg.value(metadata i32 %5, metadata !2003, metadata !DIExpression()), !dbg !2010
  %fits_in_gp4 = icmp ult i32 %gp_offset3, 41, !dbg !2012
  br i1 %fits_in_gp4, label %vaarg.in_reg5, label %vaarg.in_mem7, !dbg !2012

vaarg.in_reg5:                                    ; preds = %vaarg.end
  %6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2012
  %reg_save_area6 = load i8*, i8** %6, align 8, !dbg !2012
  %7 = zext i32 %gp_offset3 to i64, !dbg !2012
  %8 = getelementptr i8, i8* %reg_save_area6, i64 %7, !dbg !2012
  %9 = add nuw nsw i32 %gp_offset3, 8, !dbg !2012
  store i32 %9, i32* %gp_offset_p, align 8, !dbg !2012
  br label %vaarg.end11, !dbg !2012

vaarg.in_mem7:                                    ; preds = %vaarg.end
  %gcov_ctr69 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 1), align 8, !dbg !2012
  %10 = add i64 %gcov_ctr69, 1, !dbg !2012
  store i64 %10, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 1), align 8, !dbg !2012
  %overflow_arg_area_p8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2012
  %overflow_arg_area9 = load i8*, i8** %overflow_arg_area_p8, align 8, !dbg !2012
  %overflow_arg_area.next10 = getelementptr i8, i8* %overflow_arg_area9, i64 8, !dbg !2012
  store i8* %overflow_arg_area.next10, i8** %overflow_arg_area_p8, align 8, !dbg !2012
  %gp_offset14.pr = load i32, i32* %gp_offset_p, align 8, !dbg !2013
  br label %vaarg.end11, !dbg !2012

vaarg.end11:                                      ; preds = %vaarg.in_mem7, %vaarg.in_reg5
  %gp_offset14 = phi i32 [ %gp_offset14.pr, %vaarg.in_mem7 ], [ %9, %vaarg.in_reg5 ], !dbg !2013
  %vaarg.addr12.in = phi i8* [ %overflow_arg_area9, %vaarg.in_mem7 ], [ %8, %vaarg.in_reg5 ]
  %vaarg.addr12 = bitcast i8* %vaarg.addr12.in to i8**, !dbg !2012
  %11 = load i8*, i8** %vaarg.addr12, align 8, !dbg !2012
  call void @llvm.dbg.value(metadata i8* %11, metadata !2004, metadata !DIExpression()), !dbg !2010
  %fits_in_gp15 = icmp ult i32 %gp_offset14, 41, !dbg !2013
  br i1 %fits_in_gp15, label %vaarg.in_reg16, label %vaarg.in_mem18, !dbg !2013

vaarg.in_reg16:                                   ; preds = %vaarg.end11
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2013
  %reg_save_area17 = load i8*, i8** %12, align 8, !dbg !2013
  %13 = zext i32 %gp_offset14 to i64, !dbg !2013
  %14 = getelementptr i8, i8* %reg_save_area17, i64 %13, !dbg !2013
  %15 = add nuw nsw i32 %gp_offset14, 8, !dbg !2013
  store i32 %15, i32* %gp_offset_p, align 8, !dbg !2013
  br label %vaarg.end22, !dbg !2013

vaarg.in_mem18:                                   ; preds = %vaarg.end11
  %gcov_ctr70 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 2), align 16, !dbg !2013
  %16 = add i64 %gcov_ctr70, 1, !dbg !2013
  store i64 %16, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 2), align 16, !dbg !2013
  %overflow_arg_area_p19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2013
  %overflow_arg_area20 = load i8*, i8** %overflow_arg_area_p19, align 8, !dbg !2013
  %overflow_arg_area.next21 = getelementptr i8, i8* %overflow_arg_area20, i64 8, !dbg !2013
  store i8* %overflow_arg_area.next21, i8** %overflow_arg_area_p19, align 8, !dbg !2013
  %gp_offset25.pr = load i32, i32* %gp_offset_p, align 8, !dbg !2014
  br label %vaarg.end22, !dbg !2013

vaarg.end22:                                      ; preds = %vaarg.in_mem18, %vaarg.in_reg16
  %gp_offset25 = phi i32 [ %gp_offset25.pr, %vaarg.in_mem18 ], [ %15, %vaarg.in_reg16 ], !dbg !2014
  %vaarg.addr23.in = phi i8* [ %overflow_arg_area20, %vaarg.in_mem18 ], [ %14, %vaarg.in_reg16 ]
  %vaarg.addr23 = bitcast i8* %vaarg.addr23.in to i32*, !dbg !2013
  %17 = load i32, i32* %vaarg.addr23, align 4, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %17, metadata !2005, metadata !DIExpression()), !dbg !2010
  %fits_in_gp26 = icmp ult i32 %gp_offset25, 41, !dbg !2014
  br i1 %fits_in_gp26, label %vaarg.in_reg27, label %vaarg.in_mem29, !dbg !2014

vaarg.in_reg27:                                   ; preds = %vaarg.end22
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2014
  %reg_save_area28 = load i8*, i8** %18, align 8, !dbg !2014
  %19 = zext i32 %gp_offset25 to i64, !dbg !2014
  %20 = getelementptr i8, i8* %reg_save_area28, i64 %19, !dbg !2014
  %21 = add nuw nsw i32 %gp_offset25, 8, !dbg !2014
  store i32 %21, i32* %gp_offset_p, align 8, !dbg !2014
  br label %vaarg.end33, !dbg !2014

vaarg.in_mem29:                                   ; preds = %vaarg.end22
  %gcov_ctr71 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 3), align 8, !dbg !2014
  %22 = add i64 %gcov_ctr71, 1, !dbg !2014
  store i64 %22, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 3), align 8, !dbg !2014
  %overflow_arg_area_p30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2014
  %overflow_arg_area31 = load i8*, i8** %overflow_arg_area_p30, align 8, !dbg !2014
  %overflow_arg_area.next32 = getelementptr i8, i8* %overflow_arg_area31, i64 8, !dbg !2014
  store i8* %overflow_arg_area.next32, i8** %overflow_arg_area_p30, align 8, !dbg !2014
  %gp_offset36.pr = load i32, i32* %gp_offset_p, align 8, !dbg !2015
  br label %vaarg.end33, !dbg !2014

vaarg.end33:                                      ; preds = %vaarg.in_mem29, %vaarg.in_reg27
  %gp_offset36 = phi i32 [ %gp_offset36.pr, %vaarg.in_mem29 ], [ %21, %vaarg.in_reg27 ], !dbg !2015
  %vaarg.addr34.in = phi i8* [ %overflow_arg_area31, %vaarg.in_mem29 ], [ %20, %vaarg.in_reg27 ]
  %vaarg.addr34 = bitcast i8* %vaarg.addr34.in to i32*, !dbg !2014
  %23 = load i32, i32* %vaarg.addr34, align 4, !dbg !2014
  call void @llvm.dbg.value(metadata i32 %23, metadata !2006, metadata !DIExpression()), !dbg !2010
  %fits_in_gp37 = icmp ult i32 %gp_offset36, 41, !dbg !2015
  br i1 %fits_in_gp37, label %vaarg.in_reg38, label %vaarg.in_mem40, !dbg !2015

vaarg.in_reg38:                                   ; preds = %vaarg.end33
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2015
  %reg_save_area39 = load i8*, i8** %24, align 8, !dbg !2015
  %25 = zext i32 %gp_offset36 to i64, !dbg !2015
  %26 = getelementptr i8, i8* %reg_save_area39, i64 %25, !dbg !2015
  %27 = add nuw nsw i32 %gp_offset36, 8, !dbg !2015
  store i32 %27, i32* %gp_offset_p, align 8, !dbg !2015
  br label %vaarg.end44, !dbg !2015

vaarg.in_mem40:                                   ; preds = %vaarg.end33
  %gcov_ctr72 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 4), align 16, !dbg !2015
  %28 = add i64 %gcov_ctr72, 1, !dbg !2015
  store i64 %28, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 4), align 16, !dbg !2015
  %overflow_arg_area_p41 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2015
  %overflow_arg_area42 = load i8*, i8** %overflow_arg_area_p41, align 8, !dbg !2015
  %overflow_arg_area.next43 = getelementptr i8, i8* %overflow_arg_area42, i64 8, !dbg !2015
  store i8* %overflow_arg_area.next43, i8** %overflow_arg_area_p41, align 8, !dbg !2015
  %gp_offset47.pr = load i32, i32* %gp_offset_p, align 8, !dbg !2016
  br label %vaarg.end44, !dbg !2015

vaarg.end44:                                      ; preds = %vaarg.in_mem40, %vaarg.in_reg38
  %gp_offset47 = phi i32 [ %gp_offset47.pr, %vaarg.in_mem40 ], [ %27, %vaarg.in_reg38 ], !dbg !2016
  %vaarg.addr45.in = phi i8* [ %overflow_arg_area42, %vaarg.in_mem40 ], [ %26, %vaarg.in_reg38 ]
  %vaarg.addr45 = bitcast i8* %vaarg.addr45.in to i32*, !dbg !2015
  %29 = load i32, i32* %vaarg.addr45, align 4, !dbg !2015
  call void @llvm.dbg.value(metadata i32 %29, metadata !2007, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2010
  %fits_in_gp48 = icmp ult i32 %gp_offset47, 41, !dbg !2016
  br i1 %fits_in_gp48, label %vaarg.in_reg49, label %vaarg.in_mem51, !dbg !2016

vaarg.in_reg49:                                   ; preds = %vaarg.end44
  %gcov_ctr73 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 5), align 8, !dbg !2016
  %30 = add i64 %gcov_ctr73, 1, !dbg !2016
  store i64 %30, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 5), align 8, !dbg !2016
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2016
  %reg_save_area50 = load i8*, i8** %31, align 8, !dbg !2016
  %32 = zext i32 %gp_offset47 to i64, !dbg !2016
  %33 = getelementptr i8, i8* %reg_save_area50, i64 %32, !dbg !2016
  %34 = add nuw nsw i32 %gp_offset47, 8, !dbg !2016
  store i32 %34, i32* %gp_offset_p, align 8, !dbg !2016
  br label %vaarg.end55, !dbg !2016

vaarg.in_mem51:                                   ; preds = %vaarg.end44
  %gcov_ctr74 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 6), align 16, !dbg !2016
  %35 = add i64 %gcov_ctr74, 1, !dbg !2016
  store i64 %35, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr.77, i64 0, i64 6), align 16, !dbg !2016
  %overflow_arg_area_p52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2016
  %overflow_arg_area53 = load i8*, i8** %overflow_arg_area_p52, align 8, !dbg !2016
  %overflow_arg_area.next54 = getelementptr i8, i8* %overflow_arg_area53, i64 8, !dbg !2016
  store i8* %overflow_arg_area.next54, i8** %overflow_arg_area_p52, align 8, !dbg !2016
  br label %vaarg.end55, !dbg !2016

vaarg.end55:                                      ; preds = %vaarg.in_mem51, %vaarg.in_reg49
  %vaarg.addr56.in = phi i8* [ %33, %vaarg.in_reg49 ], [ %overflow_arg_area53, %vaarg.in_mem51 ]
  %vaarg.addr56 = bitcast i8* %vaarg.addr56.in to i32*, !dbg !2016
  %conv = trunc i32 %29 to i8, !dbg !2015
  call void @llvm.dbg.value(metadata i8 %conv, metadata !2007, metadata !DIExpression()), !dbg !2010
  %36 = load i32, i32* %vaarg.addr56, align 4, !dbg !2016
  call void @llvm.dbg.value(metadata i32 %36, metadata !2008, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !2009, metadata !DIExpression(DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !2010
  %conv57 = trunc i32 %5 to i8, !dbg !2017
  %was_found58 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 0, i32 0, !dbg !2018
  store i8 %conv57, i8* %was_found58, align 4, !dbg !2019, !tbaa !1027
  %conv59 = trunc i32 %17 to i8, !dbg !2020
  %37 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 1, i32 0, !dbg !2021
  store i8 %conv59, i8* %37, align 1, !dbg !2022, !tbaa !1027
  %nbytes61 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 4, !dbg !2023
  %38 = bitcast %union.anon.2* %nbytes61 to i32*, !dbg !2023
  store i32 %23, i32* %38, align 4, !dbg !2024, !tbaa !849
  %39 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 2, i32 0, !dbg !2025
  store i8 %conv, i8* %39, align 2, !dbg !2026, !tbaa !1027
  %arraydecay64 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 12, i32 0, !dbg !2027
  %conv65 = sext i32 %17 to i64, !dbg !2028
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay64, i8* noundef %11, i64 noundef %conv65) #15, !dbg !2029
  %sfd66 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 8, !dbg !2030
  %40 = bitcast %union.anon.2* %sfd66 to i32*, !dbg !2030
  store i32 %36, i32* %40, align 4, !dbg !2031, !tbaa !849
  %add = add i32 %17, 12, !dbg !2032
  %size = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 5, !dbg !2033
  store i32 %add, i32* %size, align 8, !dbg !2034, !tbaa !849
  ret void, !dbg !2035
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_logger_parse_ige(%struct._logentry* noundef %e, i8* noundef %scratch) #2 !dbg !2036 {
entry:
  %keybuf = alloca [751 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !2038, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i8* %scratch, metadata !2039, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !2041, metadata !DIExpression(DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !2046
  %0 = getelementptr inbounds [751 x i8], [751 x i8]* %keybuf, i64 0, i64 0, !dbg !2047
  call void @llvm.lifetime.start.p0i8(i64 751, i8* nonnull %0) #18, !dbg !2047
  call void @llvm.dbg.declare(metadata [751 x i8]* %keybuf, metadata !2042, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.declare(metadata [4 x i8*]* @__const._logger_parse_ige.was_found_map, metadata !2043, metadata !DIExpression()), !dbg !2049
  %arraydecay1 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 12, i32 0, !dbg !2050
  %1 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 1, i32 0, !dbg !2051
  %2 = load i8, i8* %1, align 1, !dbg !2051, !tbaa !1027
  %conv = zext i8 %2 to i64, !dbg !2052
  %call = call zeroext i1 @uriencode(i8* noundef nonnull %arraydecay1, i8* noundef nonnull %0, i64 noundef %conv, i64 noundef 751) #15, !dbg !2053
  %tv_sec = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 4, i32 0, !dbg !2054
  %3 = load i64, i64* %tv_sec, align 8, !dbg !2054, !tbaa !1901
  %tv_usec = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 4, i32 1, !dbg !2055
  %4 = load i64, i64* %tv_usec, align 8, !dbg !2055, !tbaa !1904
  %gid = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 3, !dbg !2056
  %5 = load i64, i64* %gid, align 8, !dbg !2056, !tbaa !874
  %was_found = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 0, i32 0, !dbg !2057
  %6 = load i8, i8* %was_found, align 4, !dbg !2057, !tbaa !1027
  %idxprom = zext i8 %6 to i64, !dbg !2058
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @__const._logger_parse_ige.was_found_map, i64 0, i64 %idxprom, !dbg !2058
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !2058, !tbaa !822
  %8 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 2, i32 0, !dbg !2059
  %9 = load i8, i8* %8, align 2, !dbg !2059, !tbaa !1027
  %sfd = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 8, !dbg !2060
  %10 = bitcast %union.anon.2* %sfd to i32*, !dbg !2060
  %11 = load i32, i32* %10, align 4, !dbg !2060, !tbaa !849
  %nbytes = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 4, !dbg !2061
  %12 = bitcast %union.anon.2* %nbytes to i32*, !dbg !2061
  %13 = load i32, i32* %12, align 4, !dbg !2061, !tbaa !849
  %cmp = icmp sgt i32 %13, 0, !dbg !2062
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2063

cond.true:                                        ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 0), align 8, !dbg !2064
  %14 = add i64 %gcov_ctr, 1, !dbg !2064
  store i64 %14, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 0), align 8, !dbg !2064
  %sub = add nsw i32 %13, -2, !dbg !2065
  br label %cond.end, !dbg !2063

cond.false:                                       ; preds = %entry
  %gcov_ctr11 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 1), align 8, !dbg !2063
  %15 = add i64 %gcov_ctr11, 1, !dbg !2063
  store i64 %15, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.78, i64 0, i64 1), align 8, !dbg !2063
  br label %cond.end, !dbg !2063

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !2063
  %conv7 = zext i8 %9 to i32, !dbg !2066
  %conv5 = trunc i64 %4 to i32, !dbg !2067
  %conv3 = trunc i64 %3 to i32, !dbg !2068
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %scratch, i64 noundef 4096, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv3, i32 noundef %conv5, i64 noundef %5, i8* noundef nonnull %0, i8* noundef %7, i32 noundef %conv7, i32 noundef %11, i32 noundef %cond) #15, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %call10, metadata !2040, metadata !DIExpression()), !dbg !2046
  call void @llvm.lifetime.end.p0i8(i64 751, i8* nonnull %0) #18, !dbg !2070
  ret i32 %call10, !dbg !2071
}

; Function Attrs: noinline nounwind uwtable
define internal void @_logger_log_item_store(%struct._logentry* noundef %e, %struct._entry_details* nocapture noundef readnone %d, i8* nocapture noundef readnone %entry1, %struct.__va_list_tag* nocapture noundef %ap) #2 !dbg !2072 {
entry:
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !2074, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata %struct._entry_details* %d, metadata !2075, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* %entry1, metadata !2076, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %ap, metadata !2077, metadata !DIExpression()), !dbg !2087
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 0, !dbg !2088
  %gp_offset = load i32, i32* %gp_offset_p, align 8, !dbg !2088
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !2088
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2088

vaarg.in_reg:                                     ; preds = %entry
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2088
  %reg_save_area = load i8*, i8** %0, align 8, !dbg !2088
  %1 = zext i32 %gp_offset to i64, !dbg !2088
  %2 = getelementptr i8, i8* %reg_save_area, i64 %1, !dbg !2088
  %3 = add nuw nsw i32 %gp_offset, 8, !dbg !2088
  store i32 %3, i32* %gp_offset_p, align 8, !dbg !2088
  br label %vaarg.end, !dbg !2088

vaarg.in_mem:                                     ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 0), align 16, !dbg !2088
  %4 = add i64 %gcov_ctr, 1, !dbg !2088
  store i64 %4, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 0), align 16, !dbg !2088
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2088
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !2088
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !2088
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !2088
  %gp_offset3.pr = load i32, i32* %gp_offset_p, align 8, !dbg !2089
  br label %vaarg.end, !dbg !2088

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %gp_offset3 = phi i32 [ %gp_offset3.pr, %vaarg.in_mem ], [ %3, %vaarg.in_reg ], !dbg !2089
  %vaarg.addr.in = phi i8* [ %overflow_arg_area, %vaarg.in_mem ], [ %2, %vaarg.in_reg ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !2088
  %5 = load i32, i32* %vaarg.addr, align 4, !dbg !2088
  call void @llvm.dbg.value(metadata i32 %5, metadata !2078, metadata !DIExpression()), !dbg !2087
  %fits_in_gp4 = icmp ult i32 %gp_offset3, 41, !dbg !2089
  br i1 %fits_in_gp4, label %vaarg.in_reg5, label %vaarg.in_mem7, !dbg !2089

vaarg.in_reg5:                                    ; preds = %vaarg.end
  %6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2089
  %reg_save_area6 = load i8*, i8** %6, align 8, !dbg !2089
  %7 = zext i32 %gp_offset3 to i64, !dbg !2089
  %8 = getelementptr i8, i8* %reg_save_area6, i64 %7, !dbg !2089
  %9 = add nuw nsw i32 %gp_offset3, 8, !dbg !2089
  store i32 %9, i32* %gp_offset_p, align 8, !dbg !2089
  br label %vaarg.end11, !dbg !2089

vaarg.in_mem7:                                    ; preds = %vaarg.end
  %gcov_ctr93 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 1), align 8, !dbg !2089
  %10 = add i64 %gcov_ctr93, 1, !dbg !2089
  store i64 %10, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 1), align 8, !dbg !2089
  %overflow_arg_area_p8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2089
  %overflow_arg_area9 = load i8*, i8** %overflow_arg_area_p8, align 8, !dbg !2089
  %overflow_arg_area.next10 = getelementptr i8, i8* %overflow_arg_area9, i64 8, !dbg !2089
  store i8* %overflow_arg_area.next10, i8** %overflow_arg_area_p8, align 8, !dbg !2089
  %gp_offset14.pr = load i32, i32* %gp_offset_p, align 8, !dbg !2090
  br label %vaarg.end11, !dbg !2089

vaarg.end11:                                      ; preds = %vaarg.in_mem7, %vaarg.in_reg5
  %gp_offset14 = phi i32 [ %gp_offset14.pr, %vaarg.in_mem7 ], [ %9, %vaarg.in_reg5 ], !dbg !2090
  %vaarg.addr12.in = phi i8* [ %overflow_arg_area9, %vaarg.in_mem7 ], [ %8, %vaarg.in_reg5 ]
  %vaarg.addr12 = bitcast i8* %vaarg.addr12.in to i32*, !dbg !2089
  %11 = load i32, i32* %vaarg.addr12, align 4, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %11, metadata !2079, metadata !DIExpression()), !dbg !2087
  %fits_in_gp15 = icmp ult i32 %gp_offset14, 41, !dbg !2090
  br i1 %fits_in_gp15, label %vaarg.in_reg16, label %vaarg.in_mem18, !dbg !2090

vaarg.in_reg16:                                   ; preds = %vaarg.end11
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2090
  %reg_save_area17 = load i8*, i8** %12, align 8, !dbg !2090
  %13 = zext i32 %gp_offset14 to i64, !dbg !2090
  %14 = getelementptr i8, i8* %reg_save_area17, i64 %13, !dbg !2090
  %15 = add nuw nsw i32 %gp_offset14, 8, !dbg !2090
  store i32 %15, i32* %gp_offset_p, align 8, !dbg !2090
  br label %vaarg.end22, !dbg !2090

vaarg.in_mem18:                                   ; preds = %vaarg.end11
  %gcov_ctr94 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 2), align 16, !dbg !2090
  %16 = add i64 %gcov_ctr94, 1, !dbg !2090
  store i64 %16, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 2), align 16, !dbg !2090
  %overflow_arg_area_p19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2090
  %overflow_arg_area20 = load i8*, i8** %overflow_arg_area_p19, align 8, !dbg !2090
  %overflow_arg_area.next21 = getelementptr i8, i8* %overflow_arg_area20, i64 8, !dbg !2090
  store i8* %overflow_arg_area.next21, i8** %overflow_arg_area_p19, align 8, !dbg !2090
  %gp_offset25.pr = load i32, i32* %gp_offset_p, align 8, !dbg !2091
  br label %vaarg.end22, !dbg !2090

vaarg.end22:                                      ; preds = %vaarg.in_mem18, %vaarg.in_reg16
  %gp_offset25 = phi i32 [ %gp_offset25.pr, %vaarg.in_mem18 ], [ %15, %vaarg.in_reg16 ], !dbg !2091
  %vaarg.addr23.in = phi i8* [ %overflow_arg_area20, %vaarg.in_mem18 ], [ %14, %vaarg.in_reg16 ]
  %vaarg.addr23 = bitcast i8* %vaarg.addr23.in to i8**, !dbg !2090
  %17 = load i8*, i8** %vaarg.addr23, align 8, !dbg !2090
  call void @llvm.dbg.value(metadata i8* %17, metadata !2080, metadata !DIExpression()), !dbg !2087
  %fits_in_gp26 = icmp ult i32 %gp_offset25, 41, !dbg !2091
  br i1 %fits_in_gp26, label %vaarg.in_reg27, label %vaarg.in_mem29, !dbg !2091

vaarg.in_reg27:                                   ; preds = %vaarg.end22
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2091
  %reg_save_area28 = load i8*, i8** %18, align 8, !dbg !2091
  %19 = zext i32 %gp_offset25 to i64, !dbg !2091
  %20 = getelementptr i8, i8* %reg_save_area28, i64 %19, !dbg !2091
  %21 = add nuw nsw i32 %gp_offset25, 8, !dbg !2091
  store i32 %21, i32* %gp_offset_p, align 8, !dbg !2091
  br label %vaarg.end33, !dbg !2091

vaarg.in_mem29:                                   ; preds = %vaarg.end22
  %gcov_ctr95 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 3), align 8, !dbg !2091
  %22 = add i64 %gcov_ctr95, 1, !dbg !2091
  store i64 %22, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 3), align 8, !dbg !2091
  %overflow_arg_area_p30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2091
  %overflow_arg_area31 = load i8*, i8** %overflow_arg_area_p30, align 8, !dbg !2091
  %overflow_arg_area.next32 = getelementptr i8, i8* %overflow_arg_area31, i64 8, !dbg !2091
  store i8* %overflow_arg_area.next32, i8** %overflow_arg_area_p30, align 8, !dbg !2091
  %gp_offset36.pr = load i32, i32* %gp_offset_p, align 8, !dbg !2092
  br label %vaarg.end33, !dbg !2091

vaarg.end33:                                      ; preds = %vaarg.in_mem29, %vaarg.in_reg27
  %gp_offset36 = phi i32 [ %gp_offset36.pr, %vaarg.in_mem29 ], [ %21, %vaarg.in_reg27 ], !dbg !2092
  %vaarg.addr34.in = phi i8* [ %overflow_arg_area31, %vaarg.in_mem29 ], [ %20, %vaarg.in_reg27 ]
  %vaarg.addr34 = bitcast i8* %vaarg.addr34.in to i32*, !dbg !2091
  %23 = load i32, i32* %vaarg.addr34, align 4, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %23, metadata !2081, metadata !DIExpression()), !dbg !2087
  %fits_in_gp37 = icmp ult i32 %gp_offset36, 41, !dbg !2092
  br i1 %fits_in_gp37, label %vaarg.in_reg38, label %vaarg.in_mem40, !dbg !2092

vaarg.in_reg38:                                   ; preds = %vaarg.end33
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2092
  %reg_save_area39 = load i8*, i8** %24, align 8, !dbg !2092
  %25 = zext i32 %gp_offset36 to i64, !dbg !2092
  %26 = getelementptr i8, i8* %reg_save_area39, i64 %25, !dbg !2092
  %27 = add nuw nsw i32 %gp_offset36, 8, !dbg !2092
  store i32 %27, i32* %gp_offset_p, align 8, !dbg !2092
  br label %vaarg.end44, !dbg !2092

vaarg.in_mem40:                                   ; preds = %vaarg.end33
  %gcov_ctr96 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 4), align 16, !dbg !2092
  %28 = add i64 %gcov_ctr96, 1, !dbg !2092
  store i64 %28, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 4), align 16, !dbg !2092
  %overflow_arg_area_p41 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2092
  %overflow_arg_area42 = load i8*, i8** %overflow_arg_area_p41, align 8, !dbg !2092
  %overflow_arg_area.next43 = getelementptr i8, i8* %overflow_arg_area42, i64 8, !dbg !2092
  store i8* %overflow_arg_area.next43, i8** %overflow_arg_area_p41, align 8, !dbg !2092
  %gp_offset47.pr = load i32, i32* %gp_offset_p, align 8, !dbg !2093
  br label %vaarg.end44, !dbg !2092

vaarg.end44:                                      ; preds = %vaarg.in_mem40, %vaarg.in_reg38
  %gp_offset47 = phi i32 [ %gp_offset47.pr, %vaarg.in_mem40 ], [ %27, %vaarg.in_reg38 ], !dbg !2093
  %vaarg.addr45.in = phi i8* [ %overflow_arg_area42, %vaarg.in_mem40 ], [ %26, %vaarg.in_reg38 ]
  %vaarg.addr45 = bitcast i8* %vaarg.addr45.in to i32*, !dbg !2092
  %29 = load i32, i32* %vaarg.addr45, align 4, !dbg !2092
  call void @llvm.dbg.value(metadata i32 %29, metadata !2082, metadata !DIExpression()), !dbg !2087
  %fits_in_gp48 = icmp ult i32 %gp_offset47, 41, !dbg !2093
  br i1 %fits_in_gp48, label %vaarg.in_reg49, label %vaarg.in_mem51, !dbg !2093

vaarg.in_reg49:                                   ; preds = %vaarg.end44
  %30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2093
  %reg_save_area50 = load i8*, i8** %30, align 8, !dbg !2093
  %31 = zext i32 %gp_offset47 to i64, !dbg !2093
  %32 = getelementptr i8, i8* %reg_save_area50, i64 %31, !dbg !2093
  %33 = add nuw nsw i32 %gp_offset47, 8, !dbg !2093
  store i32 %33, i32* %gp_offset_p, align 8, !dbg !2093
  br label %vaarg.end55, !dbg !2093

vaarg.in_mem51:                                   ; preds = %vaarg.end44
  %gcov_ctr97 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 5), align 8, !dbg !2093
  %34 = add i64 %gcov_ctr97, 1, !dbg !2093
  store i64 %34, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 5), align 8, !dbg !2093
  %overflow_arg_area_p52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2093
  %overflow_arg_area53 = load i8*, i8** %overflow_arg_area_p52, align 8, !dbg !2093
  %overflow_arg_area.next54 = getelementptr i8, i8* %overflow_arg_area53, i64 8, !dbg !2093
  store i8* %overflow_arg_area.next54, i8** %overflow_arg_area_p52, align 8, !dbg !2093
  %gp_offset58.pr = load i32, i32* %gp_offset_p, align 8, !dbg !2094
  br label %vaarg.end55, !dbg !2093

vaarg.end55:                                      ; preds = %vaarg.in_mem51, %vaarg.in_reg49
  %gp_offset58 = phi i32 [ %gp_offset58.pr, %vaarg.in_mem51 ], [ %33, %vaarg.in_reg49 ], !dbg !2094
  %vaarg.addr56.in = phi i8* [ %overflow_arg_area53, %vaarg.in_mem51 ], [ %32, %vaarg.in_reg49 ]
  %vaarg.addr56 = bitcast i8* %vaarg.addr56.in to i32*, !dbg !2093
  %35 = load i32, i32* %vaarg.addr56, align 4, !dbg !2093
  call void @llvm.dbg.value(metadata i32 %35, metadata !2083, metadata !DIExpression()), !dbg !2087
  %fits_in_gp59 = icmp ult i32 %gp_offset58, 41, !dbg !2094
  br i1 %fits_in_gp59, label %vaarg.in_reg60, label %vaarg.in_mem62, !dbg !2094

vaarg.in_reg60:                                   ; preds = %vaarg.end55
  %36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2094
  %reg_save_area61 = load i8*, i8** %36, align 8, !dbg !2094
  %37 = zext i32 %gp_offset58 to i64, !dbg !2094
  %38 = getelementptr i8, i8* %reg_save_area61, i64 %37, !dbg !2094
  %39 = add nuw nsw i32 %gp_offset58, 8, !dbg !2094
  store i32 %39, i32* %gp_offset_p, align 8, !dbg !2094
  br label %vaarg.end66, !dbg !2094

vaarg.in_mem62:                                   ; preds = %vaarg.end55
  %gcov_ctr98 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 6), align 16, !dbg !2094
  %40 = add i64 %gcov_ctr98, 1, !dbg !2094
  store i64 %40, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 6), align 16, !dbg !2094
  %overflow_arg_area_p63 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2094
  %overflow_arg_area64 = load i8*, i8** %overflow_arg_area_p63, align 8, !dbg !2094
  %overflow_arg_area.next65 = getelementptr i8, i8* %overflow_arg_area64, i64 8, !dbg !2094
  store i8* %overflow_arg_area.next65, i8** %overflow_arg_area_p63, align 8, !dbg !2094
  %gp_offset69.pr = load i32, i32* %gp_offset_p, align 8, !dbg !2095
  br label %vaarg.end66, !dbg !2094

vaarg.end66:                                      ; preds = %vaarg.in_mem62, %vaarg.in_reg60
  %gp_offset69 = phi i32 [ %gp_offset69.pr, %vaarg.in_mem62 ], [ %39, %vaarg.in_reg60 ], !dbg !2095
  %vaarg.addr67.in = phi i8* [ %overflow_arg_area64, %vaarg.in_mem62 ], [ %38, %vaarg.in_reg60 ]
  %vaarg.addr67 = bitcast i8* %vaarg.addr67.in to i32*, !dbg !2094
  %41 = load i32, i32* %vaarg.addr67, align 4, !dbg !2094
  %conv = trunc i32 %41 to i8, !dbg !2094
  call void @llvm.dbg.value(metadata i8 %conv, metadata !2084, metadata !DIExpression()), !dbg !2087
  %fits_in_gp70 = icmp ult i32 %gp_offset69, 41, !dbg !2095
  br i1 %fits_in_gp70, label %vaarg.in_reg71, label %vaarg.in_mem73, !dbg !2095

vaarg.in_reg71:                                   ; preds = %vaarg.end66
  %gcov_ctr99 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 7), align 8, !dbg !2095
  %42 = add i64 %gcov_ctr99, 1, !dbg !2095
  store i64 %42, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 7), align 8, !dbg !2095
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2095
  %reg_save_area72 = load i8*, i8** %43, align 8, !dbg !2095
  %44 = zext i32 %gp_offset69 to i64, !dbg !2095
  %45 = getelementptr i8, i8* %reg_save_area72, i64 %44, !dbg !2095
  %46 = add nuw nsw i32 %gp_offset69, 8, !dbg !2095
  store i32 %46, i32* %gp_offset_p, align 8, !dbg !2095
  br label %vaarg.end77, !dbg !2095

vaarg.in_mem73:                                   ; preds = %vaarg.end66
  %gcov_ctr100 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 8), align 16, !dbg !2095
  %47 = add i64 %gcov_ctr100, 1, !dbg !2095
  store i64 %47, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 8), align 16, !dbg !2095
  %overflow_arg_area_p74 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2095
  %overflow_arg_area75 = load i8*, i8** %overflow_arg_area_p74, align 8, !dbg !2095
  %overflow_arg_area.next76 = getelementptr i8, i8* %overflow_arg_area75, i64 8, !dbg !2095
  store i8* %overflow_arg_area.next76, i8** %overflow_arg_area_p74, align 8, !dbg !2095
  br label %vaarg.end77, !dbg !2095

vaarg.end77:                                      ; preds = %vaarg.in_mem73, %vaarg.in_reg71
  %vaarg.addr78.in = phi i8* [ %45, %vaarg.in_reg71 ], [ %overflow_arg_area75, %vaarg.in_mem73 ]
  %vaarg.addr78 = bitcast i8* %vaarg.addr78.in to i32*, !dbg !2095
  %48 = load i32, i32* %vaarg.addr78, align 4, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %48, metadata !2085, metadata !DIExpression()), !dbg !2087
  %arraydecay = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 0, !dbg !2096
  call void @llvm.dbg.value(metadata %union.anon.2* %arraydecay, metadata !2086, metadata !DIExpression()), !dbg !2087
  %status79 = bitcast %union.anon.2* %arraydecay to i32*, !dbg !2097
  store i32 %5, i32* %status79, align 4, !dbg !2098, !tbaa !849
  %cmd = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 4, !dbg !2099
  %49 = bitcast %union.anon.2* %cmd to i32*, !dbg !2099
  store i32 %11, i32* %49, align 4, !dbg !2100, !tbaa !849
  %conv80 = trunc i32 %23 to i8, !dbg !2101
  %50 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 12, i32 0, !dbg !2102
  store i8 %conv80, i8* %50, align 4, !dbg !2103, !tbaa !1027
  %nbytes82 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 16, !dbg !2104
  %51 = bitcast %union.anon.2* %nbytes82 to i32*, !dbg !2104
  store i32 %29, i32* %51, align 4, !dbg !2105, !tbaa !849
  %52 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 13, i32 0, !dbg !2106
  store i8 %conv, i8* %52, align 1, !dbg !2107, !tbaa !1027
  %cmp.not = icmp eq i32 %35, 0, !dbg !2108
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !2110

if.then:                                          ; preds = %vaarg.end77
  call void @llvm.dbg.value(metadata %union.anon.2* %arraydecay, metadata !2086, metadata !DIExpression()), !dbg !2087
  %53 = load volatile i32, i32* @current_time, align 4, !dbg !2111, !tbaa !849
  %sub = sub i32 %35, %53, !dbg !2113
  br label %if.end, !dbg !2114

if.else:                                          ; preds = %vaarg.end77
  %gcov_ctr101 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 9), align 8, !dbg !2115
  %54 = add i64 %gcov_ctr101, 1, !dbg !2115
  store i64 %54, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @__llvm_gcov_ctr.79, i64 0, i64 9), align 8, !dbg !2115
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 0, %if.else ], [ %sub, %if.then ]
  %ttl86 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 8, !dbg !2117
  %55 = bitcast %union.anon.2* %ttl86 to i32*, !dbg !2117
  store i32 %.sink, i32* %55, align 4, !dbg !2117, !tbaa !849
  %arraydecay88 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 24, i32 0, !dbg !2118
  %conv89 = sext i32 %23 to i64, !dbg !2119
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay88, i8* noundef %17, i64 noundef %conv89) #15, !dbg !2120
  %sfd90 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 20, !dbg !2121
  %56 = bitcast %union.anon.2* %sfd90 to i32*, !dbg !2121
  store i32 %48, i32* %56, align 4, !dbg !2122, !tbaa !849
  %add = add i32 %23, 24, !dbg !2123
  %size = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 5, !dbg !2124
  store i32 %add, i32* %size, align 8, !dbg !2125, !tbaa !849
  ret void, !dbg !2126
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_logger_parse_ise(%struct._logentry* noundef %e, i8* noundef %scratch) #2 !dbg !2127 {
entry:
  %keybuf = alloca [751 x i8], align 16
  %status_map = alloca [6 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !2129, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8* %scratch, metadata !2130, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), metadata !2132, metadata !DIExpression()), !dbg !2143
  %0 = getelementptr inbounds [751 x i8], [751 x i8]* %keybuf, i64 0, i64 0, !dbg !2144
  call void @llvm.lifetime.start.p0i8(i64 751, i8* nonnull %0) #18, !dbg !2144
  call void @llvm.dbg.declare(metadata [751 x i8]* %keybuf, metadata !2133, metadata !DIExpression()), !dbg !2145
  %arraydecay = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 0, !dbg !2146
  call void @llvm.dbg.value(metadata %union.anon.2* %arraydecay, metadata !2134, metadata !DIExpression()), !dbg !2143
  %1 = bitcast [6 x i8*]* %status_map to i8*, !dbg !2147
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #18, !dbg !2147
  call void @llvm.dbg.declare(metadata [6 x i8*]* %status_map, metadata !2135, metadata !DIExpression()), !dbg !2148
  %2 = getelementptr inbounds [6 x i8*], [6 x i8*]* %status_map, i64 0, i64 0, !dbg !2148
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 16, !dbg !2148
  %3 = getelementptr inbounds [6 x i8*], [6 x i8*]* %status_map, i64 0, i64 1, !dbg !2148
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8** %3, align 8, !dbg !2148
  %4 = getelementptr inbounds [6 x i8*], [6 x i8*]* %status_map, i64 0, i64 2, !dbg !2148
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8** %4, align 16, !dbg !2148
  %5 = getelementptr inbounds [6 x i8*], [6 x i8*]* %status_map, i64 0, i64 3, !dbg !2148
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8** %5, align 8, !dbg !2148
  %6 = getelementptr inbounds [6 x i8*], [6 x i8*]* %status_map, i64 0, i64 4, !dbg !2148
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i8** %6, align 16, !dbg !2148
  %7 = getelementptr inbounds [6 x i8*], [6 x i8*]* %status_map, i64 0, i64 5, !dbg !2148
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i8** %7, align 8, !dbg !2148
  call void @llvm.dbg.declare(metadata [7 x i8*]* @__const._logger_parse_ise.cmd_map, metadata !2139, metadata !DIExpression()), !dbg !2149
  %cmd1 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 4, !dbg !2150
  %8 = bitcast %union.anon.2* %cmd1 to i32*, !dbg !2150
  %9 = load i32, i32* %8, align 4, !dbg !2150, !tbaa !849
  %cmp = icmp slt i32 %9, 7, !dbg !2152
  br i1 %cmp, label %if.then, label %if.end, !dbg !2153

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 0), align 16, !dbg !2154
  %10 = add i64 %gcov_ctr, 1, !dbg !2154
  store i64 %10, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 0), align 16, !dbg !2154
  %idxprom = sext i32 %9 to i64, !dbg !2155
  %arrayidx = getelementptr inbounds [7 x i8*], [7 x i8*]* @__const._logger_parse_ise.cmd_map, i64 0, i64 %idxprom, !dbg !2155
  %11 = load i8*, i8** %arrayidx, align 8, !dbg !2155, !tbaa !822
  call void @llvm.dbg.value(metadata i8* %11, metadata !2132, metadata !DIExpression()), !dbg !2143
  br label %if.end, !dbg !2156

if.end:                                           ; preds = %if.then, %entry
  %cmd.0 = phi i8* [ %11, %if.then ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), %entry ], !dbg !2143
  call void @llvm.dbg.value(metadata i8* %cmd.0, metadata !2132, metadata !DIExpression()), !dbg !2143
  %arraydecay3 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 24, i32 0, !dbg !2157
  %12 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 12, i32 0, !dbg !2158
  %13 = load i8, i8* %12, align 4, !dbg !2158, !tbaa !1027
  %conv = zext i8 %13 to i64, !dbg !2159
  %call = call zeroext i1 @uriencode(i8* noundef nonnull %arraydecay3, i8* noundef nonnull %0, i64 noundef %conv, i64 noundef 751) #15, !dbg !2160
  %tv_sec = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 4, i32 0, !dbg !2161
  %14 = load i64, i64* %tv_sec, align 8, !dbg !2161, !tbaa !1901
  %tv_usec = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 4, i32 1, !dbg !2162
  %15 = load i64, i64* %tv_usec, align 8, !dbg !2162, !tbaa !1904
  %gid = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 3, !dbg !2163
  %16 = load i64, i64* %gid, align 8, !dbg !2163, !tbaa !874
  %status = bitcast %union.anon.2* %arraydecay to i32*, !dbg !2164
  %17 = load i32, i32* %status, align 4, !dbg !2164, !tbaa !849
  %idxprom9 = sext i32 %17 to i64, !dbg !2165
  %arrayidx10 = getelementptr inbounds [6 x i8*], [6 x i8*]* %status_map, i64 0, i64 %idxprom9, !dbg !2165
  %18 = load i8*, i8** %arrayidx10, align 8, !dbg !2165, !tbaa !822
  %ttl = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 8, !dbg !2166
  %19 = bitcast %union.anon.2* %ttl to i32*, !dbg !2166
  %20 = load i32, i32* %19, align 4, !dbg !2166, !tbaa !849
  %21 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 13, i32 0, !dbg !2167
  %22 = load i8, i8* %21, align 1, !dbg !2167, !tbaa !1027
  %sfd = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 20, !dbg !2168
  %23 = bitcast %union.anon.2* %sfd to i32*, !dbg !2168
  %24 = load i32, i32* %23, align 4, !dbg !2168, !tbaa !849
  %nbytes = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 16, !dbg !2169
  %25 = bitcast %union.anon.2* %nbytes to i32*, !dbg !2169
  %26 = load i32, i32* %25, align 4, !dbg !2169, !tbaa !849
  %cmp12 = icmp sgt i32 %26, 0, !dbg !2170
  br i1 %cmp12, label %cond.true, label %cond.false, !dbg !2171

cond.true:                                        ; preds = %if.end
  %gcov_ctr17 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 2), align 16, !dbg !2172
  %27 = add i64 %gcov_ctr17, 1, !dbg !2172
  store i64 %27, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 2), align 16, !dbg !2172
  %sub = add nsw i32 %26, -2, !dbg !2173
  br label %cond.end, !dbg !2171

cond.false:                                       ; preds = %if.end
  %gcov_ctr16 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 1), align 8, !dbg !2171
  %28 = add i64 %gcov_ctr16, 1, !dbg !2171
  store i64 %28, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.80, i64 0, i64 1), align 8, !dbg !2171
  br label %cond.end, !dbg !2171

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !2171
  %conv11 = zext i8 %22 to i32, !dbg !2174
  %conv7 = trunc i64 %15 to i32, !dbg !2175
  %conv5 = trunc i64 %14 to i32, !dbg !2176
  %call15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %scratch, i64 noundef 4096, i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv5, i32 noundef %conv7, i64 noundef %16, i8* noundef nonnull %0, i8* noundef %18, i8* noundef %cmd.0, i32 noundef %20, i32 noundef %conv11, i32 noundef %24, i32 noundef %cond) #15, !dbg !2177
  call void @llvm.dbg.value(metadata i32 %call15, metadata !2131, metadata !DIExpression()), !dbg !2143
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #18, !dbg !2178
  call void @llvm.lifetime.end.p0i8(i64 751, i8* nonnull %0) #18, !dbg !2178
  ret i32 %call15, !dbg !2179
}

; Function Attrs: noinline nounwind uwtable
define internal void @_logger_log_conn_event(%struct._logentry* noundef %e, %struct._entry_details* nocapture noundef readnone %d, i8* nocapture noundef readnone %entry1, %struct.__va_list_tag* nocapture noundef %ap) #2 !dbg !2180 {
entry:
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !2182, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata %struct._entry_details* %d, metadata !2183, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %entry1, metadata !2184, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %ap, metadata !2185, metadata !DIExpression()), !dbg !2192
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 0, !dbg !2193
  %gp_offset = load i32, i32* %gp_offset_p, align 8, !dbg !2193
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !2193
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2193

vaarg.in_reg:                                     ; preds = %entry
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2193
  %reg_save_area = load i8*, i8** %0, align 8, !dbg !2193
  %1 = zext i32 %gp_offset to i64, !dbg !2193
  %2 = getelementptr i8, i8* %reg_save_area, i64 %1, !dbg !2193
  %3 = add nuw nsw i32 %gp_offset, 8, !dbg !2193
  store i32 %3, i32* %gp_offset_p, align 8, !dbg !2193
  br label %vaarg.end, !dbg !2193

vaarg.in_mem:                                     ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 0), align 16, !dbg !2193
  %4 = add i64 %gcov_ctr, 1, !dbg !2193
  store i64 %4, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 0), align 16, !dbg !2193
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2193
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !2193
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !2193
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !2193
  %gp_offset3.pr = load i32, i32* %gp_offset_p, align 8, !dbg !2194
  br label %vaarg.end, !dbg !2193

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %gp_offset3 = phi i32 [ %gp_offset3.pr, %vaarg.in_mem ], [ %3, %vaarg.in_reg ], !dbg !2194
  %vaarg.addr.in = phi i8* [ %overflow_arg_area, %vaarg.in_mem ], [ %2, %vaarg.in_reg ]
  %5 = bitcast i8* %vaarg.addr.in to i8**, !dbg !2193
  %6 = load i8*, i8** %5, align 8, !dbg !2193
  call void @llvm.dbg.value(metadata %struct.sockaddr_in6* undef, metadata !2186, metadata !DIExpression()), !dbg !2192
  %fits_in_gp4 = icmp ult i32 %gp_offset3, 41, !dbg !2194
  br i1 %fits_in_gp4, label %vaarg.in_reg5, label %vaarg.in_mem7, !dbg !2194

vaarg.in_reg5:                                    ; preds = %vaarg.end
  %7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2194
  %reg_save_area6 = load i8*, i8** %7, align 8, !dbg !2194
  %8 = zext i32 %gp_offset3 to i64, !dbg !2194
  %9 = getelementptr i8, i8* %reg_save_area6, i64 %8, !dbg !2194
  %10 = add nuw nsw i32 %gp_offset3, 8, !dbg !2194
  store i32 %10, i32* %gp_offset_p, align 8, !dbg !2194
  br label %vaarg.end11, !dbg !2194

vaarg.in_mem7:                                    ; preds = %vaarg.end
  %gcov_ctr50 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 1), align 8, !dbg !2194
  %11 = add i64 %gcov_ctr50, 1, !dbg !2194
  store i64 %11, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 1), align 8, !dbg !2194
  %overflow_arg_area_p8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2194
  %overflow_arg_area9 = load i8*, i8** %overflow_arg_area_p8, align 8, !dbg !2194
  %overflow_arg_area.next10 = getelementptr i8, i8* %overflow_arg_area9, i64 8, !dbg !2194
  store i8* %overflow_arg_area.next10, i8** %overflow_arg_area_p8, align 8, !dbg !2194
  %gp_offset14.pr = load i32, i32* %gp_offset_p, align 8, !dbg !2195
  br label %vaarg.end11, !dbg !2194

vaarg.end11:                                      ; preds = %vaarg.in_mem7, %vaarg.in_reg5
  %gp_offset14 = phi i32 [ %gp_offset14.pr, %vaarg.in_mem7 ], [ %10, %vaarg.in_reg5 ], !dbg !2195
  %vaarg.addr12.in = phi i8* [ %overflow_arg_area9, %vaarg.in_mem7 ], [ %9, %vaarg.in_reg5 ]
  %vaarg.addr12 = bitcast i8* %vaarg.addr12.in to i32*, !dbg !2194
  %12 = load i32, i32* %vaarg.addr12, align 4, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %12, metadata !2187, metadata !DIExpression()), !dbg !2192
  %fits_in_gp15 = icmp ult i32 %gp_offset14, 41, !dbg !2195
  br i1 %fits_in_gp15, label %vaarg.in_reg16, label %vaarg.in_mem18, !dbg !2195

vaarg.in_reg16:                                   ; preds = %vaarg.end11
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2195
  %reg_save_area17 = load i8*, i8** %13, align 8, !dbg !2195
  %14 = zext i32 %gp_offset14 to i64, !dbg !2195
  %15 = getelementptr i8, i8* %reg_save_area17, i64 %14, !dbg !2195
  %16 = add nuw nsw i32 %gp_offset14, 8, !dbg !2195
  store i32 %16, i32* %gp_offset_p, align 8, !dbg !2195
  br label %vaarg.end22, !dbg !2195

vaarg.in_mem18:                                   ; preds = %vaarg.end11
  %gcov_ctr51 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 2), align 16, !dbg !2195
  %17 = add i64 %gcov_ctr51, 1, !dbg !2195
  store i64 %17, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 2), align 16, !dbg !2195
  %overflow_arg_area_p19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2195
  %overflow_arg_area20 = load i8*, i8** %overflow_arg_area_p19, align 8, !dbg !2195
  %overflow_arg_area.next21 = getelementptr i8, i8* %overflow_arg_area20, i64 8, !dbg !2195
  store i8* %overflow_arg_area.next21, i8** %overflow_arg_area_p19, align 8, !dbg !2195
  %gp_offset25.pr = load i32, i32* %gp_offset_p, align 8, !dbg !2196
  br label %vaarg.end22, !dbg !2195

vaarg.end22:                                      ; preds = %vaarg.in_mem18, %vaarg.in_reg16
  %gp_offset25 = phi i32 [ %gp_offset25.pr, %vaarg.in_mem18 ], [ %16, %vaarg.in_reg16 ], !dbg !2196
  %vaarg.addr23.in = phi i8* [ %overflow_arg_area20, %vaarg.in_mem18 ], [ %15, %vaarg.in_reg16 ]
  %vaarg.addr23 = bitcast i8* %vaarg.addr23.in to i32*, !dbg !2195
  %18 = load i32, i32* %vaarg.addr23, align 4, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %18, metadata !2188, metadata !DIExpression()), !dbg !2192
  %fits_in_gp26 = icmp ult i32 %gp_offset25, 41, !dbg !2196
  br i1 %fits_in_gp26, label %vaarg.in_reg27, label %vaarg.in_mem29, !dbg !2196

vaarg.in_reg27:                                   ; preds = %vaarg.end22
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2196
  %reg_save_area28 = load i8*, i8** %19, align 8, !dbg !2196
  %20 = zext i32 %gp_offset25 to i64, !dbg !2196
  %21 = getelementptr i8, i8* %reg_save_area28, i64 %20, !dbg !2196
  %22 = add nuw nsw i32 %gp_offset25, 8, !dbg !2196
  store i32 %22, i32* %gp_offset_p, align 8, !dbg !2196
  br label %vaarg.end33, !dbg !2196

vaarg.in_mem29:                                   ; preds = %vaarg.end22
  %gcov_ctr52 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 3), align 8, !dbg !2196
  %23 = add i64 %gcov_ctr52, 1, !dbg !2196
  store i64 %23, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 3), align 8, !dbg !2196
  %overflow_arg_area_p30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2196
  %overflow_arg_area31 = load i8*, i8** %overflow_arg_area_p30, align 8, !dbg !2196
  %overflow_arg_area.next32 = getelementptr i8, i8* %overflow_arg_area31, i64 8, !dbg !2196
  store i8* %overflow_arg_area.next32, i8** %overflow_arg_area_p30, align 8, !dbg !2196
  %gp_offset36.pr = load i32, i32* %gp_offset_p, align 8, !dbg !2197
  br label %vaarg.end33, !dbg !2196

vaarg.end33:                                      ; preds = %vaarg.in_mem29, %vaarg.in_reg27
  %gp_offset36 = phi i32 [ %gp_offset36.pr, %vaarg.in_mem29 ], [ %22, %vaarg.in_reg27 ], !dbg !2197
  %vaarg.addr34.in = phi i8* [ %overflow_arg_area31, %vaarg.in_mem29 ], [ %21, %vaarg.in_reg27 ]
  %vaarg.addr34 = bitcast i8* %vaarg.addr34.in to i32*, !dbg !2196
  %24 = load i32, i32* %vaarg.addr34, align 4, !dbg !2196
  call void @llvm.dbg.value(metadata i32 %24, metadata !2189, metadata !DIExpression()), !dbg !2192
  %fits_in_gp37 = icmp ult i32 %gp_offset36, 41, !dbg !2197
  br i1 %fits_in_gp37, label %vaarg.in_reg38, label %vaarg.in_mem40, !dbg !2197

vaarg.in_reg38:                                   ; preds = %vaarg.end33
  %gcov_ctr53 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 4), align 16, !dbg !2197
  %25 = add i64 %gcov_ctr53, 1, !dbg !2197
  store i64 %25, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 4), align 16, !dbg !2197
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2197
  %reg_save_area39 = load i8*, i8** %26, align 8, !dbg !2197
  %27 = zext i32 %gp_offset36 to i64, !dbg !2197
  %28 = getelementptr i8, i8* %reg_save_area39, i64 %27, !dbg !2197
  %29 = add nuw nsw i32 %gp_offset36, 8, !dbg !2197
  store i32 %29, i32* %gp_offset_p, align 8, !dbg !2197
  br label %vaarg.end44, !dbg !2197

vaarg.in_mem40:                                   ; preds = %vaarg.end33
  %gcov_ctr54 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 5), align 8, !dbg !2197
  %30 = add i64 %gcov_ctr54, 1, !dbg !2197
  store i64 %30, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @__llvm_gcov_ctr.81, i64 0, i64 5), align 8, !dbg !2197
  %overflow_arg_area_p41 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2197
  %overflow_arg_area42 = load i8*, i8** %overflow_arg_area_p41, align 8, !dbg !2197
  %overflow_arg_area.next43 = getelementptr i8, i8* %overflow_arg_area42, i64 8, !dbg !2197
  store i8* %overflow_arg_area.next43, i8** %overflow_arg_area_p41, align 8, !dbg !2197
  br label %vaarg.end44, !dbg !2197

vaarg.end44:                                      ; preds = %vaarg.in_mem40, %vaarg.in_reg38
  %vaarg.addr45.in = phi i8* [ %28, %vaarg.in_reg38 ], [ %overflow_arg_area42, %vaarg.in_mem40 ]
  %vaarg.addr45 = bitcast i8* %vaarg.addr45.in to i32*, !dbg !2197
  %31 = load i32, i32* %vaarg.addr45, align 4, !dbg !2197
  call void @llvm.dbg.value(metadata i32 %31, metadata !2190, metadata !DIExpression()), !dbg !2192
  %arraydecay = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 0, !dbg !2198
  call void @llvm.dbg.value(metadata %union.anon.2* %arraydecay, metadata !2191, metadata !DIExpression()), !dbg !2192
  %32 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 12, i32 0, !dbg !2199
  %conv = zext i32 %12 to i64, !dbg !2200
  %call = tail call i8* @memcpy(i8* noundef nonnull %32, i8* noundef %6, i64 noundef %conv) #15, !dbg !2201
  %sfd47 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 8, !dbg !2202
  %33 = bitcast %union.anon.2* %sfd47 to i32*, !dbg !2202
  store i32 %31, i32* %33, align 4, !dbg !2203, !tbaa !2204
  %transport48 = bitcast %union.anon.2* %arraydecay to i32*, !dbg !2206
  store i32 %18, i32* %transport48, align 4, !dbg !2207, !tbaa !2208
  %reason49 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 4, !dbg !2209
  %34 = bitcast %union.anon.2* %reason49 to i32*, !dbg !2209
  store i32 %24, i32* %34, align 4, !dbg !2210, !tbaa !2211
  %size = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 5, !dbg !2212
  store i32 40, i32* %size, align 8, !dbg !2213, !tbaa !849
  ret void, !dbg !2214
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_logger_parse_cne(%struct._logentry* noundef %e, i8* noundef %scratch) #2 !dbg !2215 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 0), align 8
  %rport = alloca i16, align 2
  %rip = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !2217, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8* %scratch, metadata !2218, metadata !DIExpression()), !dbg !2226
  %1 = bitcast i16* %rport to i8*, !dbg !2227
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %1) #18, !dbg !2227
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %rip, i64 0, i64 0, !dbg !2228
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #18, !dbg !2228
  call void @llvm.dbg.declare(metadata [64 x i8]* %rip, metadata !2221, metadata !DIExpression()), !dbg !2229
  %arraydecay = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 0, !dbg !2230
  call void @llvm.dbg.value(metadata %union.anon.2* %arraydecay, metadata !2223, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.declare(metadata [3 x i8*]* @__const._logger_parse_cce.transport_map, metadata !2224, metadata !DIExpression()), !dbg !2231
  %addr = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 12, !dbg !2232
  %3 = bitcast %union.anon.2* %addr to %struct.sockaddr_in6*, !dbg !2232
  call void @llvm.dbg.value(metadata i16* %rport, metadata !2220, metadata !DIExpression(DW_OP_deref)), !dbg !2226
  call fastcc void @_logger_util_addr_endpoint(%struct.sockaddr_in6* noundef nonnull %3, i8* noundef nonnull %2, i16* noundef nonnull %rport) #16, !dbg !2233
  %tv_sec = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 4, i32 0, !dbg !2234
  %4 = load i64, i64* %tv_sec, align 8, !dbg !2234, !tbaa !1901
  %conv = trunc i64 %4 to i32, !dbg !2235
  %tv_usec = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 4, i32 1, !dbg !2236
  %5 = load i64, i64* %tv_usec, align 8, !dbg !2236, !tbaa !1904
  %conv3 = trunc i64 %5 to i32, !dbg !2237
  %gid = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 3, !dbg !2238
  %6 = load i64, i64* %gid, align 8, !dbg !2238, !tbaa !874
  %7 = load i16, i16* %rport, align 2, !dbg !2239, !tbaa !1037
  call void @llvm.dbg.value(metadata i16 %7, metadata !2220, metadata !DIExpression()), !dbg !2226
  %conv5 = zext i16 %7 to i32, !dbg !2239
  %transport = bitcast %union.anon.2* %arraydecay to i32*, !dbg !2240
  %8 = load i32, i32* %transport, align 4, !dbg !2240, !tbaa !2208
  %idxprom = sext i32 %8 to i64, !dbg !2241
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* @__const._logger_parse_cce.transport_map, i64 0, i64 %idxprom, !dbg !2241
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !2241, !tbaa !822
  %sfd = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 8, !dbg !2242
  %10 = bitcast %union.anon.2* %sfd to i32*, !dbg !2242
  %11 = load i32, i32* %10, align 4, !dbg !2242, !tbaa !2204
  %call6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %scratch, i64 noundef 4096, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.47, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv3, i64 noundef %6, i8* noundef nonnull %2, i32 noundef %conv5, i8* noundef %9, i32 noundef %11) #15, !dbg !2243
  call void @llvm.dbg.value(metadata i32 %call6, metadata !2219, metadata !DIExpression()), !dbg !2226
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #18, !dbg !2244
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %1) #18, !dbg !2244
  ret i32 %call6, !dbg !2245
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_logger_parse_cce(%struct._logentry* noundef %e, i8* noundef %scratch) #2 !dbg !2246 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 0), align 8
  %rport = alloca i16, align 2
  %rip = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !2248, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i8* %scratch, metadata !2249, metadata !DIExpression()), !dbg !2256
  %1 = bitcast i16* %rport to i8*, !dbg !2257
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %1) #18, !dbg !2257
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %rip, i64 0, i64 0, !dbg !2258
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #18, !dbg !2258
  call void @llvm.dbg.declare(metadata [64 x i8]* %rip, metadata !2252, metadata !DIExpression()), !dbg !2259
  %arraydecay = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 0, !dbg !2260
  call void @llvm.dbg.value(metadata %union.anon.2* %arraydecay, metadata !2253, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.declare(metadata [3 x i8*]* @__const._logger_parse_cce.transport_map, metadata !2254, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.declare(metadata [4 x i8*]* @__const._logger_parse_cce.reason_map, metadata !2255, metadata !DIExpression()), !dbg !2262
  %addr = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 12, !dbg !2263
  %3 = bitcast %union.anon.2* %addr to %struct.sockaddr_in6*, !dbg !2263
  call void @llvm.dbg.value(metadata i16* %rport, metadata !2251, metadata !DIExpression(DW_OP_deref)), !dbg !2256
  call fastcc void @_logger_util_addr_endpoint(%struct.sockaddr_in6* noundef nonnull %3, i8* noundef nonnull %2, i16* noundef nonnull %rport) #16, !dbg !2264
  %tv_sec = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 4, i32 0, !dbg !2265
  %4 = load i64, i64* %tv_sec, align 8, !dbg !2265, !tbaa !1901
  %conv = trunc i64 %4 to i32, !dbg !2266
  %tv_usec = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 4, i32 1, !dbg !2267
  %5 = load i64, i64* %tv_usec, align 8, !dbg !2267, !tbaa !1904
  %conv3 = trunc i64 %5 to i32, !dbg !2268
  %gid = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 3, !dbg !2269
  %6 = load i64, i64* %gid, align 8, !dbg !2269, !tbaa !874
  %7 = load i16, i16* %rport, align 2, !dbg !2270, !tbaa !1037
  call void @llvm.dbg.value(metadata i16 %7, metadata !2251, metadata !DIExpression()), !dbg !2256
  %conv5 = zext i16 %7 to i32, !dbg !2270
  %transport = bitcast %union.anon.2* %arraydecay to i32*, !dbg !2271
  %8 = load i32, i32* %transport, align 4, !dbg !2271, !tbaa !2208
  %idxprom = sext i32 %8 to i64, !dbg !2272
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* @__const._logger_parse_cce.transport_map, i64 0, i64 %idxprom, !dbg !2272
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !2272, !tbaa !822
  %reason = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 4, !dbg !2273
  %10 = bitcast %union.anon.2* %reason to i32*, !dbg !2273
  %11 = load i32, i32* %10, align 4, !dbg !2273, !tbaa !2211
  %idxprom6 = sext i32 %11 to i64, !dbg !2274
  %arrayidx7 = getelementptr inbounds [4 x i8*], [4 x i8*]* @__const._logger_parse_cce.reason_map, i64 0, i64 %idxprom6, !dbg !2274
  %12 = load i8*, i8** %arrayidx7, align 8, !dbg !2274, !tbaa !822
  %sfd = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 8, !dbg !2275
  %13 = bitcast %union.anon.2* %sfd to i32*, !dbg !2275
  %14 = load i32, i32* %13, align 4, !dbg !2275, !tbaa !2204
  %call8 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %scratch, i64 noundef 4096, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv3, i64 noundef %6, i8* noundef nonnull %2, i32 noundef %conv5, i8* noundef %9, i8* noundef %12, i32 noundef %14) #15, !dbg !2276
  call void @llvm.dbg.value(metadata i32 %call8, metadata !2250, metadata !DIExpression()), !dbg !2256
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #18, !dbg !2277
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %1) #18, !dbg !2277
  ret i32 %call8, !dbg !2278
}

; Function Attrs: noinline nounwind uwtable
define internal void @_logger_log_ext_write(%struct._logentry* noundef %e, %struct._entry_details* nocapture noundef readnone %d, i8* noundef %entry1, %struct.__va_list_tag* nocapture noundef %ap) #2 !dbg !2279 {
entry:
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !2281, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata %struct._entry_details* %d, metadata !2282, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8* %entry1, metadata !2283, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %ap, metadata !2284, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8* %entry1, metadata !2285, metadata !DIExpression()), !dbg !2288
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 0, !dbg !2289
  %gp_offset = load i32, i32* %gp_offset_p, align 8, !dbg !2289
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !2289
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2289

vaarg.in_reg:                                     ; preds = %entry
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 3, !dbg !2289
  %reg_save_area = load i8*, i8** %0, align 8, !dbg !2289
  %1 = zext i32 %gp_offset to i64, !dbg !2289
  %2 = getelementptr i8, i8* %reg_save_area, i64 %1, !dbg !2289
  %3 = add nuw nsw i32 %gp_offset, 8, !dbg !2289
  store i32 %3, i32* %gp_offset_p, align 8, !dbg !2289
  br label %vaarg.end, !dbg !2289

vaarg.in_mem:                                     ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 0), align 16, !dbg !2289
  %4 = add i64 %gcov_ctr, 1, !dbg !2289
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 0), align 16, !dbg !2289
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %ap, i64 0, i32 2, !dbg !2289
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !2289
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !2289
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !2289
  br label %vaarg.end, !dbg !2289

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !2289
  %5 = load i32, i32* %vaarg.addr, align 4, !dbg !2289
  call void @llvm.dbg.value(metadata i32 %5, metadata !2286, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !2287, metadata !DIExpression(DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !2288
  %exptime = getelementptr inbounds i8, i8* %entry1, i64 28, !dbg !2290
  %6 = bitcast i8* %exptime to i32*, !dbg !2290
  %7 = load i32, i32* %6, align 4, !dbg !2290, !tbaa !849
  %cmp.not = icmp eq i32 %7, 0, !dbg !2291
  br i1 %cmp.not, label %cond.false, label %cond.true, !dbg !2292

cond.true:                                        ; preds = %vaarg.end
  %gcov_ctr21 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 1), align 8, !dbg !2293
  %8 = add i64 %gcov_ctr21, 1, !dbg !2293
  store i64 %8, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 1), align 8, !dbg !2293
  %9 = load volatile i32, i32* @current_time, align 4, !dbg !2294, !tbaa !849
  %sub = sub i32 %7, %9, !dbg !2295
  %conv = zext i32 %sub to i64, !dbg !2296
  br label %cond.end, !dbg !2292

cond.false:                                       ; preds = %vaarg.end
  %gcov_ctr22 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 2), align 16, !dbg !2292
  %10 = add i64 %gcov_ctr22, 1, !dbg !2292
  store i64 %10, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.84, i64 0, i64 2), align 16, !dbg !2292
  br label %cond.end, !dbg !2292

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ -1, %cond.false ], !dbg !2292
  %arraydecay = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 0, !dbg !2297
  call void @llvm.dbg.value(metadata %union.anon.2* %arraydecay, metadata !2287, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !2287, metadata !DIExpression(DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !2288
  call void @llvm.dbg.value(metadata i8* %entry1, metadata !2285, metadata !DIExpression()), !dbg !2288
  %exptime3 = bitcast %union.anon.2* %arraydecay to i64*, !dbg !2298
  store i64 %cond, i64* %exptime3, align 8, !dbg !2299, !tbaa !1929
  %11 = load volatile i32, i32* @current_time, align 4, !dbg !2300, !tbaa !849
  %time = getelementptr inbounds i8, i8* %entry1, i64 24, !dbg !2301
  %12 = bitcast i8* %time to i32*, !dbg !2301
  %13 = load i32, i32* %12, align 8, !dbg !2301, !tbaa !849
  %sub4 = sub i32 %11, %13, !dbg !2302
  %latime = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 8, !dbg !2303
  %14 = bitcast %union.anon.2* %latime to i32*, !dbg !2303
  store i32 %sub4, i32* %14, align 8, !dbg !2304, !tbaa !849
  %it_flags = getelementptr inbounds i8, i8* %entry1, i64 38, !dbg !2305
  %15 = bitcast i8* %it_flags to i16*, !dbg !2305
  %16 = load i16, i16* %15, align 2, !dbg !2305, !tbaa !1037
  %it_flags5 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 12, !dbg !2306
  %17 = bitcast %union.anon.2* %it_flags5 to i16*, !dbg !2306
  store i16 %16, i16* %17, align 4, !dbg !2307, !tbaa !1037
  %18 = getelementptr inbounds i8, i8* %entry1, i64 41, !dbg !2308
  %19 = load i8, i8* %18, align 1, !dbg !2308, !tbaa !1027
  %20 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 14, i32 0, !dbg !2309
  store i8 %19, i8* %20, align 2, !dbg !2310, !tbaa !1027
  %21 = getelementptr inbounds i8, i8* %entry1, i64 40, !dbg !2311
  %22 = load i8, i8* %21, align 8, !dbg !2311, !tbaa !1027
  %23 = and i8 %22, 63, !dbg !2311
  %24 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 15, i32 0, !dbg !2312
  store i8 %23, i8* %24, align 1, !dbg !2313, !tbaa !1027
  %conv9 = trunc i32 %5 to i8, !dbg !2314
  %25 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 16, i32 0, !dbg !2315
  store i8 %conv9, i8* %25, align 8, !dbg !2316, !tbaa !1027
  %arraydecay10 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 17, i32 0, !dbg !2317
  %data11 = getelementptr inbounds i8, i8* %entry1, i64 48, !dbg !2318
  %26 = load i16, i16* %15, align 2, !dbg !2318, !tbaa !1037
  %27 = shl i16 %26, 2, !dbg !2318
  %28 = and i16 %27, 8, !dbg !2318
  %29 = zext i16 %28 to i64, !dbg !2318
  %add.ptr = getelementptr inbounds i8, i8* %data11, i64 %29, !dbg !2318
  %30 = load i8, i8* %18, align 1, !dbg !2319, !tbaa !1027
  %conv17 = zext i8 %30 to i64, !dbg !2320
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay10, i8* noundef nonnull %add.ptr, i64 noundef %conv17) #15, !dbg !2321
  %31 = load i8, i8* %20, align 2, !dbg !2322, !tbaa !1027
  %conv19 = zext i8 %31 to i32, !dbg !2323
  %add = add nuw nsw i32 %conv19, 24, !dbg !2324
  %size = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 5, !dbg !2325
  store i32 %add, i32* %size, align 8, !dbg !2326, !tbaa !849
  ret void, !dbg !2327
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_logger_parse_extw(%struct._logentry* noundef %e, i8* noundef %scratch) #2 !dbg !2328 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 0), align 8
  %keybuf = alloca [751 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._logentry* %e, metadata !2330, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i8* %scratch, metadata !2331, metadata !DIExpression()), !dbg !2335
  %1 = getelementptr inbounds [751 x i8], [751 x i8]* %keybuf, i64 0, i64 0, !dbg !2336
  call void @llvm.lifetime.start.p0i8(i64 751, i8* nonnull %1) #18, !dbg !2336
  call void @llvm.dbg.declare(metadata [751 x i8]* %keybuf, metadata !2333, metadata !DIExpression()), !dbg !2337
  %arraydecay = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 0, !dbg !2338
  call void @llvm.dbg.value(metadata %union.anon.2* %arraydecay, metadata !2334, metadata !DIExpression()), !dbg !2335
  %arraydecay1 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 17, i32 0, !dbg !2339
  %2 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 14, i32 0, !dbg !2340
  %3 = load i8, i8* %2, align 2, !dbg !2340, !tbaa !1027
  %conv = zext i8 %3 to i64, !dbg !2341
  %call = call zeroext i1 @uriencode(i8* noundef nonnull %arraydecay1, i8* noundef nonnull %1, i64 noundef %conv, i64 noundef 751) #15, !dbg !2342
  %tv_sec = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 4, i32 0, !dbg !2343
  %4 = load i64, i64* %tv_sec, align 8, !dbg !2343, !tbaa !1901
  %conv3 = trunc i64 %4 to i32, !dbg !2344
  %tv_usec = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 4, i32 1, !dbg !2345
  %5 = load i64, i64* %tv_usec, align 8, !dbg !2345, !tbaa !1904
  %conv5 = trunc i64 %5 to i32, !dbg !2346
  %gid = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 3, !dbg !2347
  %6 = load i64, i64* %gid, align 8, !dbg !2347, !tbaa !874
  %it_flags = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 12, !dbg !2348
  %7 = bitcast %union.anon.2* %it_flags to i16*, !dbg !2348
  %8 = load i16, i16* %7, align 4, !dbg !2348, !tbaa !1037
  %9 = and i16 %8, 8, !dbg !2349
  %tobool.not = icmp eq i16 %9, 0, !dbg !2350
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), !dbg !2350
  %exptime = bitcast %union.anon.2* %arraydecay to i64*, !dbg !2351
  %10 = load i64, i64* %exptime, align 8, !dbg !2351, !tbaa !1929
  %latime = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 8, !dbg !2352
  %11 = bitcast %union.anon.2* %latime to i32*, !dbg !2352
  %12 = load i32, i32* %11, align 8, !dbg !2352, !tbaa !849
  %13 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 15, i32 0, !dbg !2353
  %14 = load i8, i8* %13, align 1, !dbg !2353, !tbaa !1027
  %conv8 = zext i8 %14 to i32, !dbg !2354
  %15 = getelementptr inbounds %struct._logentry, %struct._logentry* %e, i64 0, i32 6, i64 16, i32 0, !dbg !2355
  %16 = load i8, i8* %15, align 8, !dbg !2355, !tbaa !1027
  %conv9 = zext i8 %16 to i32, !dbg !2356
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %scratch, i64 noundef 4096, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv3, i32 noundef %conv5, i64 noundef %6, i8* noundef nonnull %1, i8* noundef %cond, i64 noundef %10, i32 noundef %12, i32 noundef %conv8, i32 noundef %conv9) #15, !dbg !2357
  call void @llvm.dbg.value(metadata i32 %call10, metadata !2332, metadata !DIExpression()), !dbg !2335
  call void @llvm.lifetime.end.p0i8(i64 751, i8* nonnull %1) #18, !dbg !2358
  ret i32 %call10, !dbg !2359
}

; Function Attrs: nounwind
declare !dbg !2360 dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2363 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !2366 dso_local zeroext i1 @uriencode(i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_logger_util_addr_endpoint(%struct.sockaddr_in6* noundef %addr, i8* noundef %rip, i16* nocapture noundef writeonly %rport) unnamed_addr #2 !dbg !2371 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata %struct.sockaddr_in6* %addr, metadata !2376, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8* %rip, metadata !2377, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i64 64, metadata !2378, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i16* %rport, metadata !2379, metadata !DIExpression()), !dbg !2380
  %call = tail call i8* @memset(i8* noundef %rip, i32 noundef 0, i64 noundef 64) #15, !dbg !2381
  %sin6_family = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %addr, i64 0, i32 0, !dbg !2382
  %1 = load i16, i16* %sin6_family, align 4, !dbg !2382, !tbaa !2383
  switch i16 %1, label %sw.epilog [
    i16 2, label %sw.bb
    i16 10, label %sw.bb4
    i16 0, label %sw.bb9
    i16 1, label %sw.bb9
  ], !dbg !2384

sw.bb:                                            ; preds = %entry
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 1), align 8, !dbg !2385
  %2 = add i64 %gcov_ctr12, 1, !dbg !2385
  store i64 %2, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 1), align 8, !dbg !2385
  %sin_addr = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %addr, i64 0, i32 2, !dbg !2387
  %3 = bitcast i32* %sin_addr to i8*, !dbg !2388
  %call2 = tail call i8* @inet_ntop(i32 noundef 2, i8* noundef nonnull %3, i8* noundef %rip, i32 noundef 63) #15, !dbg !2389
  %4 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %addr, i64 0, i32 1, !dbg !2390
  %5 = load i16, i16* %4, align 2, !dbg !2390, !tbaa !2391
  %call3 = tail call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %5) #16, !dbg !2390
  br label %sw.epilog.sink.split, !dbg !2394

sw.bb4:                                           ; preds = %entry
  %gcov_ctr13 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 2), align 16, !dbg !2395
  %6 = add i64 %gcov_ctr13, 1, !dbg !2395
  store i64 %6, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 2), align 16, !dbg !2395
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %addr, i64 0, i32 3, !dbg !2396
  %7 = bitcast %struct.in6_addr* %sin6_addr to i8*, !dbg !2397
  %call7 = tail call i8* @inet_ntop(i32 noundef 10, i8* noundef nonnull %7, i8* noundef %rip, i32 noundef 63) #15, !dbg !2398
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %addr, i64 0, i32 1, !dbg !2399
  %8 = load i16, i16* %sin6_port, align 2, !dbg !2399, !tbaa !2400
  %call8 = tail call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %8) #16, !dbg !2399
  br label %sw.epilog.sink.split, !dbg !2401

sw.bb9:                                           ; preds = %entry, %entry
  %gcov_ctr14 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 3), align 8, !dbg !2402
  %9 = add i64 %gcov_ctr14, 1, !dbg !2402
  store i64 %9, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.86, i64 0, i64 3), align 8, !dbg !2402
  %call10 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0)) #20, !dbg !2403
  %add = add i64 %call10, 1, !dbg !2404
  %call11 = tail call i8* @strncpy(i8* noundef %rip, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i64 noundef %add) #15, !dbg !2405
  br label %sw.epilog.sink.split, !dbg !2406

sw.epilog.sink.split:                             ; preds = %sw.bb, %sw.bb4, %sw.bb9
  %.sink = phi i16 [ 0, %sw.bb9 ], [ %call8, %sw.bb4 ], [ %call3, %sw.bb ]
  store i16 %.sink, i16* %rport, align 2, !dbg !2407, !tbaa !1037
  br label %sw.epilog, !dbg !2408

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry
  ret void, !dbg !2408
}

; Function Attrs: nounwind
declare !dbg !2409 dso_local i8* @inet_ntop(i32 noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %__bsx) unnamed_addr #10 !dbg !2413 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.87, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.87, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i16 %__bsx, metadata !2418, metadata !DIExpression()), !dbg !2419
  %rev = tail call i16 @llvm.bswap.i16(i16 %__bsx)
  ret i16 %rev, !dbg !2420
}

; Function Attrs: nounwind
declare !dbg !2421 dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !2424 dso_local i64 @strlen(i8* noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #12 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @0, i64 0, i64 0), i32 875575338, i32 2021258123) #18
  br label %counter.loop.header

counter.loop.header:                              ; preds = %entry, %counter.loop.header
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %counter.loop.header ]
  %0 = getelementptr inbounds [33 x %emit_function_args_ty], [33 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 0
  %ident = load i32, i32* %0, align 4
  %1 = getelementptr inbounds [33 x %emit_function_args_ty], [33 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 1
  %func_checkssum = load i32, i32* %1, align 4
  %2 = getelementptr inbounds [33 x %emit_function_args_ty], [33 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 2
  %cfg_checksum = load i32, i32* %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #18
  %3 = getelementptr inbounds [33 x %emit_arcs_args_ty], [33 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 0
  %num_counters = load i32, i32* %3, align 16
  %4 = getelementptr inbounds [33 x %emit_arcs_args_ty], [33 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 1
  %counters = load i64*, i64** %4, align 8
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, i64* %counters) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 33
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  tail call void @llvm_gcda_summary_info() #18
  tail call void @llvm_gcda_end_file() #18
  ret void
}

declare void @llvm_gcda_start_file(i8*, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, i64*) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define internal void @__llvm_gcov_reset() unnamed_addr #13 {
entry:
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.56, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.57 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.58 to i8*), i8 0, i64 16, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.59, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.60, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.61 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.62 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.63 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) bitcast ([8 x i64]* @__llvm_gcov_ctr.64 to i8*), i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) bitcast ([6 x i64]* @__llvm_gcov_ctr.65 to i8*), i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(72) bitcast ([9 x i64]* @__llvm_gcov_ctr.66 to i8*), i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(56) bitcast ([7 x i64]* @__llvm_gcov_ctr.67 to i8*), i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(240) bitcast ([30 x i64]* @__llvm_gcov_ctr.68 to i8*), i8 0, i64 240, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.69, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.70 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(112) bitcast ([14 x i64]* @__llvm_gcov_ctr.71 to i8*), i8 0, i64 112, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.72, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.73 to i8*), i8 0, i64 16, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.74, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.75 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.76 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(56) bitcast ([7 x i64]* @__llvm_gcov_ctr.77 to i8*), i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.78 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x i64]* @__llvm_gcov_ctr.79 to i8*), i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.80 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) bitcast ([6 x i64]* @__llvm_gcov_ctr.81 to i8*), i8 0, i64 48, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.82, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.83, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.84 to i8*), i8 0, i64 24, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.85, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.86 to i8*), i8 0, i64 32, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.87, i64 0, i64 0), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #12 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #18
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #14

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #14

attributes #0 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline nounwind uwtable }
attributes #13 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #14 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #18 = { nounwind }
attributes #19 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #20 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!798, !799, !800, !801}
!llvm.gcov = !{!802}
!llvm.ident = !{!803}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "logger_stack_lock", scope: !2, file: !3, line: 35, type: !287, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !98, globals: !708, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "logger.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "f6938022f82862c18149c43ab9bf07f1")
!4 = !{!5, !24, !29, !34, !38, !43, !60, !74, !79, !84, !90}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_entry_type", file: !6, line: 16, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./logger.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "920aeded0afd45e7ff5c610f1349e8a7")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!9 = !DIEnumerator(name: "LOGGER_ASCII_CMD", value: 0)
!10 = !DIEnumerator(name: "LOGGER_EVICTION", value: 1)
!11 = !DIEnumerator(name: "LOGGER_ITEM_GET", value: 2)
!12 = !DIEnumerator(name: "LOGGER_ITEM_STORE", value: 3)
!13 = !DIEnumerator(name: "LOGGER_CRAWLER_STATUS", value: 4)
!14 = !DIEnumerator(name: "LOGGER_SLAB_MOVE", value: 5)
!15 = !DIEnumerator(name: "LOGGER_CONNECTION_NEW", value: 6)
!16 = !DIEnumerator(name: "LOGGER_CONNECTION_CLOSE", value: 7)
!17 = !DIEnumerator(name: "LOGGER_EXTSTORE_WRITE", value: 8)
!18 = !DIEnumerator(name: "LOGGER_COMPACT_START", value: 9)
!19 = !DIEnumerator(name: "LOGGER_COMPACT_ABORT", value: 10)
!20 = !DIEnumerator(name: "LOGGER_COMPACT_READ_START", value: 11)
!21 = !DIEnumerator(name: "LOGGER_COMPACT_READ_END", value: 12)
!22 = !DIEnumerator(name: "LOGGER_COMPACT_END", value: 13)
!23 = !DIEnumerator(name: "LOGGER_COMPACT_FRAGINFO", value: 14)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "logger_ret_type", file: !6, line: 44, baseType: !7, size: 32, elements: !25)
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "LOGGER_RET_OK", value: 0)
!27 = !DIEnumerator(name: "LOGGER_RET_NOSPACE", value: 1)
!28 = !DIEnumerator(name: "LOGGER_RET_ERR", value: 2)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "logger_add_watcher_ret", file: !6, line: 218, baseType: !7, size: 32, elements: !30)
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "LOGGER_ADD_WATCHER_TOO_MANY", value: 0)
!32 = !DIEnumerator(name: "LOGGER_ADD_WATCHER_OK", value: 1)
!33 = !DIEnumerator(name: "LOGGER_ADD_WATCHER_FAILED", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "logger_watcher_type", file: !6, line: 173, baseType: !7, size: 32, elements: !35)
!35 = !{!36, !37}
!36 = !DIEnumerator(name: "LOGGER_WATCHER_STDERR", value: 0)
!37 = !DIEnumerator(name: "LOGGER_WATCHER_CLIENT", value: 1)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "logger_parse_entry_ret", file: !6, line: 50, baseType: !7, size: 32, elements: !39)
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "LOGGER_PARSE_ENTRY_OK", value: 0)
!41 = !DIEnumerator(name: "LOGGER_PARSE_ENTRY_FULLBUF", value: 1)
!42 = !DIEnumerator(name: "LOGGER_PARSE_ENTRY_FAILED", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "conn_states", file: !44, line: 199, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./memcached.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "9260b30e1b6ff2e5471cc4f8f6971051")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!46 = !DIEnumerator(name: "conn_listening", value: 0)
!47 = !DIEnumerator(name: "conn_new_cmd", value: 1)
!48 = !DIEnumerator(name: "conn_waiting", value: 2)
!49 = !DIEnumerator(name: "conn_read", value: 3)
!50 = !DIEnumerator(name: "conn_parse_cmd", value: 4)
!51 = !DIEnumerator(name: "conn_write", value: 5)
!52 = !DIEnumerator(name: "conn_nread", value: 6)
!53 = !DIEnumerator(name: "conn_swallow", value: 7)
!54 = !DIEnumerator(name: "conn_closing", value: 8)
!55 = !DIEnumerator(name: "conn_mwrite", value: 9)
!56 = !DIEnumerator(name: "conn_closed", value: 10)
!57 = !DIEnumerator(name: "conn_watch", value: 11)
!58 = !DIEnumerator(name: "conn_io_queue", value: 12)
!59 = !DIEnumerator(name: "conn_max_state", value: 13)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bin_substates", file: !44, line: 216, baseType: !7, size: 32, elements: !61)
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!62 = !DIEnumerator(name: "bin_no_state", value: 0)
!63 = !DIEnumerator(name: "bin_reading_set_header", value: 1)
!64 = !DIEnumerator(name: "bin_reading_cas_header", value: 2)
!65 = !DIEnumerator(name: "bin_read_set_value", value: 3)
!66 = !DIEnumerator(name: "bin_reading_get_key", value: 4)
!67 = !DIEnumerator(name: "bin_reading_stat", value: 5)
!68 = !DIEnumerator(name: "bin_reading_del_header", value: 6)
!69 = !DIEnumerator(name: "bin_reading_incr_header", value: 7)
!70 = !DIEnumerator(name: "bin_read_flush_exptime", value: 8)
!71 = !DIEnumerator(name: "bin_reading_sasl_auth", value: 9)
!72 = !DIEnumerator(name: "bin_reading_sasl_auth_data", value: 10)
!73 = !DIEnumerator(name: "bin_reading_touch_key", value: 11)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol", file: !44, line: 231, baseType: !7, size: 32, elements: !75)
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "ascii_prot", value: 3)
!77 = !DIEnumerator(name: "binary_prot", value: 4)
!78 = !DIEnumerator(name: "negotiating_prot", value: 5)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "network_transport", file: !44, line: 240, baseType: !7, size: 32, elements: !80)
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "local_transport", value: 0)
!82 = !DIEnumerator(name: "tcp_transport", value: 1)
!83 = !DIEnumerator(name: "udp_transport", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "close_reasons", file: !44, line: 259, baseType: !7, size: 32, elements: !85)
!85 = !{!86, !87, !88, !89}
!86 = !DIEnumerator(name: "ERROR_CLOSE", value: 0)
!87 = !DIEnumerator(name: "NORMAL_CLOSE", value: 1)
!88 = !DIEnumerator(name: "IDLE_TIMEOUT_CLOSE", value: 2)
!89 = !DIEnumerator(name: "SHUTDOWN_CLOSE", value: 3)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "store_item_type", file: !44, line: 276, baseType: !7, size: 32, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97}
!92 = !DIEnumerator(name: "NOT_STORED", value: 0)
!93 = !DIEnumerator(name: "STORED", value: 1)
!94 = !DIEnumerator(name: "EXISTS", value: 2)
!95 = !DIEnumerator(name: "NOT_FOUND", value: 3)
!96 = !DIEnumerator(name: "TOO_LARGE", value: 4)
!97 = !DIEnumerator(name: "NO_MEMORY", value: 5)
!98 = !{!99, !100, !138, !139, !140, !141, !129, !494, !646, !650, !658, !667, !678, !685, !697, !113, !698, !106}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "logentry", file: !6, line: 56, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_logentry", file: !6, line: 135, size: 320, elements: !103)
!103 = !{!104, !105, !111, !115, !119, !128, !130}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !102, file: !6, line: 136, baseType: !5, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !102, file: !6, line: 137, baseType: !106, size: 8, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !107, line: 24, baseType: !108)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !109, line: 38, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!110 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !102, file: !6, line: 138, baseType: !112, size: 16, offset: 48)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !107, line: 25, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !109, line: 40, baseType: !114)
!114 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !102, file: !6, line: 139, baseType: !116, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !107, line: 27, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !109, line: 45, baseType: !118)
!118 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !102, file: !6, line: 140, baseType: !120, size: 128, offset: 128)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !121, line: 8, size: 128, elements: !122)
!121 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!122 = !{!123, !126}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !120, file: !121, line: 10, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !109, line: 160, baseType: !125)
!125 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !120, file: !121, line: 11, baseType: !127, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !109, line: 162, baseType: !125)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !102, file: !6, line: 141, baseType: !129, size: 32, offset: 256)
!129 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !102, file: !6, line: 144, baseType: !131, offset: 288)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, elements: !136)
!132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !102, file: !6, line: 142, size: 8, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !132, file: !6, line: 143, baseType: !135, size: 8)
!135 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!136 = !{!137}
!137 = !DISubrange(count: -1)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!140 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn", file: !44, line: 781, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn", file: !44, line: 794, size: 3968, elements: !144)
!144 = !{!145, !149, !150, !152, !153, !154, !155, !156, !157, !158, !159, !160, !162, !238, !239, !240, !241, !242, !243, !244, !569, !570, !571, !572, !573, !574, !575, !577, !578, !579, !580, !581, !582, !583, !584, !585, !591, !612, !613, !614, !615, !616, !617, !618, !619, !623, !630, !645}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_conn", scope: !143, file: !44, line: 795, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "sasl_conn_t", file: !148, line: 16, baseType: !99)
!148 = !DIFile(filename: "./sasl_defs.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "3a8678a43d09d8e311388b26eedc7a3e")
!149 = !DIDerivedType(tag: DW_TAG_member, name: "sfd", scope: !143, file: !44, line: 796, baseType: !129, size: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_started", scope: !143, file: !44, line: 797, baseType: !151, size: 8, offset: 96)
!151 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !143, file: !44, line: 798, baseType: !151, size: 8, offset: 104)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "set_stale", scope: !143, file: !44, line: 799, baseType: !151, size: 8, offset: 112)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "mset_res", scope: !143, file: !44, line: 800, baseType: !151, size: 8, offset: 120)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "close_after_write", scope: !143, file: !44, line: 801, baseType: !151, size: 8, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_malloced", scope: !143, file: !44, line: 802, baseType: !151, size: 8, offset: 136)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "item_malloced", scope: !143, file: !44, line: 803, baseType: !151, size: 8, offset: 144)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !143, file: !44, line: 809, baseType: !43, size: 32, offset: 160)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "substate", scope: !143, file: !44, line: 810, baseType: !60, size: 32, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd_time", scope: !143, file: !44, line: 811, baseType: !161, size: 32, offset: 224)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_time_t", file: !6, line: 14, baseType: !7)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !143, file: !44, line: 812, baseType: !163, size: 1024, offset: 256)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !164, line: 123, size: 1024, elements: !165)
!164 = !DIFile(filename: "/usr/include/event2/event_struct.h", directory: "", checksumkind: CSK_MD5, checksum: "005d89b34bed2ed9e30b0cc3160619c1")
!165 = !{!166, !198, !208, !209, !212, !235, !236, !237}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ev_evcallback", scope: !163, file: !164, line: 124, baseType: !167, size: 320)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_callback", file: !164, line: 107, size: 320, elements: !168)
!168 = !{!169, !176, !178, !179, !180, !197}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_active_next", scope: !167, file: !164, line: 108, baseType: !170, size: 128)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !167, file: !164, line: 108, size: 128, elements: !171)
!171 = !{!172, !174}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !170, file: !164, line: 108, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !170, file: !164, line: 108, baseType: !175, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_flags", scope: !167, file: !164, line: 109, baseType: !177, size: 16, offset: 128)
!177 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_pri", scope: !167, file: !164, line: 110, baseType: !106, size: 8, offset: 144)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_closure", scope: !167, file: !164, line: 111, baseType: !106, size: 8, offset: 152)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cb_union", scope: !167, file: !164, line: 118, baseType: !181, size: 64, offset: 192)
!181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !164, line: 113, size: 64, elements: !182)
!182 = !{!183, !187, !191, !196}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_callback", scope: !181, file: !164, line: 114, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !129, !177, !99}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_selfcb", scope: !181, file: !164, line: 115, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !173, !99}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_evfinalize", scope: !181, file: !164, line: 116, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !195, !99}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cbfinalize", scope: !181, file: !164, line: 117, baseType: !188, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_arg", scope: !167, file: !164, line: 119, baseType: !99, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout_pos", scope: !163, file: !164, line: 130, baseType: !199, size: 128, offset: 320)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !164, line: 127, size: 128, elements: !200)
!200 = !{!201, !207}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ev_next_with_common_timeout", scope: !199, file: !164, line: 128, baseType: !202, size: 128)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !199, file: !164, line: 128, size: 128, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !202, file: !164, line: 128, baseType: !195, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !202, file: !164, line: 128, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "min_heap_idx", scope: !199, file: !164, line: 129, baseType: !129, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ev_fd", scope: !163, file: !164, line: 131, baseType: !129, size: 32, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "ev_base", scope: !163, file: !164, line: 133, baseType: !210, size: 64, offset: 512)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !164, line: 122, flags: DIFlagFwdDecl)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "ev_", scope: !163, file: !164, line: 149, baseType: !213, size: 256, offset: 576)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !164, line: 135, size: 256, elements: !214)
!214 = !{!215, !224}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io", scope: !213, file: !164, line: 140, baseType: !216, size: 256)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !213, file: !164, line: 137, size: 256, elements: !217)
!217 = !{!218, !223}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io_next", scope: !216, file: !164, line: 138, baseType: !219, size: 128)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !164, line: 138, size: 128, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !219, file: !164, line: 138, baseType: !195, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !219, file: !164, line: 138, baseType: !206, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !216, file: !164, line: 139, baseType: !120, size: 128, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal", scope: !213, file: !164, line: 148, baseType: !225, size: 256)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !213, file: !164, line: 143, size: 256, elements: !226)
!226 = !{!227, !232, !233}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal_next", scope: !225, file: !164, line: 144, baseType: !228, size: 128)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !225, file: !164, line: 144, size: 128, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !228, file: !164, line: 144, baseType: !195, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !228, file: !164, line: 144, baseType: !206, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ev_ncalls", scope: !225, file: !164, line: 145, baseType: !177, size: 16, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "ev_pncalls", scope: !225, file: !164, line: 147, baseType: !234, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ev_events", scope: !163, file: !164, line: 151, baseType: !177, size: 16, offset: 832)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ev_res", scope: !163, file: !164, line: 152, baseType: !177, size: 16, offset: 848)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !163, file: !164, line: 153, baseType: !120, size: 128, offset: 896)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ev_flags", scope: !143, file: !44, line: 813, baseType: !177, size: 16, offset: 1280)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !143, file: !44, line: 814, baseType: !177, size: 16, offset: 1296)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !143, file: !44, line: 816, baseType: !139, size: 64, offset: 1344)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rcurr", scope: !143, file: !44, line: 817, baseType: !139, size: 64, offset: 1408)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "rsize", scope: !143, file: !44, line: 818, baseType: !129, size: 32, offset: 1472)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rbytes", scope: !143, file: !44, line: 819, baseType: !129, size: 32, offset: 1504)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !143, file: !44, line: 821, baseType: !245, size: 64, offset: 1536)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "mc_resp", file: !44, line: 770, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mc_resp", file: !44, line: 743, size: 9472, elements: !248)
!248 = !{!249, !261, !263, !264, !265, !266, !493, !515, !524, !525, !526, !527, !528, !529, !530, !531, !532, !561, !565}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !247, file: !44, line: 744, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "mc_resp_bundle", file: !44, line: 703, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mc_resp_bundle", file: !44, line: 773, size: 192, elements: !253)
!253 = !{!254, !255, !256, !258, !259}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !252, file: !44, line: 774, baseType: !106, size: 8)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next_check", scope: !252, file: !44, line: 775, baseType: !106, size: 8, offset: 8)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !252, file: !44, line: 776, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !252, file: !44, line: 777, baseType: !257, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !252, file: !44, line: 778, baseType: !260, offset: 192)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, elements: !136)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !44, line: 745, baseType: !262, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "wbytes", scope: !247, file: !44, line: 746, baseType: !129, size: 32, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tosend", scope: !247, file: !44, line: 747, baseType: !129, size: 32, offset: 160)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "write_and_free", scope: !247, file: !44, line: 748, baseType: !99, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "io_pending", scope: !247, file: !44, line: 749, baseType: !267, size: 64, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_pending_t", file: !44, line: 668, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_io_pending_t", file: !44, line: 783, size: 1216, elements: !270)
!270 = !{!271, !272, !487, !488, !489}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "io_queue_type", scope: !269, file: !44, line: 784, baseType: !129, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !269, file: !44, line: 785, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "LIBEVENT_THREAD", file: !44, line: 737, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 704, size: 54464, elements: !276)
!276 = !{!277, !280, !281, !282, !283, !365, !394, !397, !425, !426, !427, !428, !485, !486}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !275, file: !44, line: 705, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !279, line: 27, baseType: !118)
!279 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!280 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !275, file: !44, line: 706, baseType: !210, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !275, file: !44, line: 707, baseType: !163, size: 1024, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event_fd", scope: !275, file: !44, line: 709, baseType: !129, size: 32, offset: 1152)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !275, file: !44, line: 714, baseType: !284, size: 51584, offset: 1216)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_stats", file: !44, line: 356, size: 51584, elements: !285)
!285 = !{!286, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !358, !362, !363, !364}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !284, file: !44, line: 357, baseType: !287, size: 320)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !279, line: 72, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !279, line: 67, size: 320, elements: !289)
!289 = !{!290, !309, !313}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !288, file: !279, line: 69, baseType: !291, size: 320)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !292, line: 22, size: 320, elements: !293)
!292 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!293 = !{!294, !295, !296, !297, !298, !299, !300, !301}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !291, file: !292, line: 24, baseType: !129, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !291, file: !292, line: 25, baseType: !7, size: 32, offset: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !291, file: !292, line: 26, baseType: !129, size: 32, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !291, file: !292, line: 28, baseType: !7, size: 32, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !291, file: !292, line: 32, baseType: !129, size: 32, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !291, file: !292, line: 34, baseType: !177, size: 16, offset: 160)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !291, file: !292, line: 35, baseType: !177, size: 16, offset: 176)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !291, file: !292, line: 36, baseType: !302, size: 128, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !303, line: 53, baseType: !304)
!303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !303, line: 49, size: 128, elements: !305)
!305 = !{!306, !308}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !304, file: !303, line: 51, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !304, file: !303, line: 52, baseType: !307, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !288, file: !279, line: 70, baseType: !310, size: 320)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 320, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 40)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !288, file: !279, line: 71, baseType: !125, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "get_cmds", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "get_misses", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 384)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "get_expired", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 448)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "get_flushed", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 512)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "touch_cmds", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 576)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "touch_misses", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 640)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "delete_misses", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 704)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "incr_misses", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 768)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "decr_misses", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 832)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "cas_misses", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 896)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "meta_cmds", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 960)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_read", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 1024)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 1088)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flush_cmds", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 1152)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "conn_yields", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 1216)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "auth_cmds", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 1280)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "auth_errors", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 1344)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "idle_kicks", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 1408)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_oom", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 1472)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_count", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 1536)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_bytes", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 1600)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_oom", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 1664)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "store_too_large", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 1728)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "store_no_memory", scope: !284, file: !44, line: 359, baseType: !116, size: 64, offset: 1792)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "get_extstore", scope: !284, file: !44, line: 361, baseType: !116, size: 64, offset: 1856)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "get_aborted_extstore", scope: !284, file: !44, line: 361, baseType: !116, size: 64, offset: 1920)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "get_oom_extstore", scope: !284, file: !44, line: 361, baseType: !116, size: 64, offset: 1984)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "recache_from_extstore", scope: !284, file: !44, line: 361, baseType: !116, size: 64, offset: 2048)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "miss_from_extstore", scope: !284, file: !44, line: 361, baseType: !116, size: 64, offset: 2112)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "badcrc_from_extstore", scope: !284, file: !44, line: 361, baseType: !116, size: 64, offset: 2176)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "slab_stats", scope: !284, file: !44, line: 367, baseType: !345, size: 32768, offset: 2240)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 32768, elements: !356)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slab_stats", file: !44, line: 303, size: 512, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "set_cmds", scope: !346, file: !44, line: 305, baseType: !116, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "get_hits", scope: !346, file: !44, line: 305, baseType: !116, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "touch_hits", scope: !346, file: !44, line: 305, baseType: !116, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "delete_hits", scope: !346, file: !44, line: 305, baseType: !116, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "cas_hits", scope: !346, file: !44, line: 305, baseType: !116, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "cas_badval", scope: !346, file: !44, line: 305, baseType: !116, size: 64, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "incr_hits", scope: !346, file: !44, line: 305, baseType: !116, size: 64, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "decr_hits", scope: !346, file: !44, line: 305, baseType: !116, size: 64, offset: 448)
!356 = !{!357}
!357 = !DISubrange(count: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lru_hits", scope: !284, file: !44, line: 368, baseType: !359, size: 16384, offset: 35008)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 16384, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 256)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_count", scope: !284, file: !44, line: 369, baseType: !116, size: 64, offset: 51392)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_bytes", scope: !284, file: !44, line: 370, baseType: !116, size: 64, offset: 51456)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_bytes_free", scope: !284, file: !44, line: 371, baseType: !116, size: 64, offset: 51520)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues", scope: !275, file: !44, line: 715, baseType: !366, size: 1152, offset: 52800)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 1152, elements: !392)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_cb_t", file: !44, line: 701, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_queue_cb_s", file: !44, line: 694, size: 384, elements: !369)
!369 = !{!370, !371, !384, !385, !390, !391}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !368, file: !44, line: 695, baseType: !99, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "submit_cb", scope: !368, file: !44, line: 696, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_stack_cb", file: !44, line: 670, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_t", file: !44, line: 669, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_queue_s", file: !44, line: 687, size: 192, elements: !379)
!379 = !{!380, !381, !382, !383}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !378, file: !44, line: 688, baseType: !99, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "stack_ctx", scope: !378, file: !44, line: 689, baseType: !99, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !378, file: !44, line: 690, baseType: !129, size: 32, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !378, file: !44, line: 691, baseType: !129, size: 32, offset: 160)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "complete_cb", scope: !368, file: !44, line: 697, baseType: !372, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "return_cb", scope: !368, file: !44, line: 698, baseType: !386, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_cb", file: !44, line: 671, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !267}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_cb", scope: !368, file: !44, line: 699, baseType: !386, size: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !368, file: !44, line: 700, baseType: !129, size: 32, offset: 320)
!392 = !{!393}
!393 = !DISubrange(count: 3)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ev_queue", scope: !275, file: !44, line: 716, baseType: !395, size: 64, offset: 53952)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "conn_queue", file: !44, line: 716, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_cache", scope: !275, file: !44, line: 717, baseType: !398, size: 64, offset: 54016)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_t", file: !400, line: 39, baseType: !401)
!400 = !DIFile(filename: "./cache.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d97639c8540587a19d8550d7d7156448")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 22, size: 704, elements: !402)
!402 = !{!403, !404, !405, !418, !421, !422, !423, !424}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !401, file: !400, line: 24, baseType: !287, size: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !401, file: !400, line: 26, baseType: !139, size: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !401, file: !400, line: 28, baseType: !406, size: 128, offset: 384)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_head", file: !400, line: 28, size: 128, elements: !407)
!407 = !{!408, !416}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !406, file: !400, line: 28, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_free_s", file: !400, line: 12, size: 64, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "c_next", scope: !410, file: !400, line: 13, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !410, file: !400, line: 13, size: 64, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !413, file: !400, line: 13, baseType: !409, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !406, file: !400, line: 28, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !401, file: !400, line: 30, baseType: !419, size: 64, offset: 512)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !420, line: 46, baseType: !118)
!420 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!421 = !DIDerivedType(tag: DW_TAG_member, name: "freetotal", scope: !401, file: !400, line: 32, baseType: !129, size: 32, offset: 576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !401, file: !400, line: 34, baseType: !129, size: 32, offset: 608)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "freecurr", scope: !401, file: !400, line: 36, baseType: !129, size: 32, offset: 640)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !401, file: !400, line: 38, baseType: !129, size: 32, offset: 672)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "open_bundle", scope: !275, file: !44, line: 718, baseType: !250, size: 64, offset: 54080)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "io_cache", scope: !275, file: !44, line: 719, baseType: !398, size: 64, offset: 54144)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !275, file: !44, line: 721, baseType: !99, size: 64, offset: 54208)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !275, file: !44, line: 723, baseType: !429, size: 64, offset: 54272)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger", file: !6, line: 171, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_logger", file: !6, line: 159, size: 832, elements: !432)
!432 = !{!433, !435, !436, !437, !438, !439, !440, !441, !442, !443, !456}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !431, file: !6, line: 160, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !431, file: !6, line: 161, baseType: !434, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !431, file: !6, line: 162, baseType: !287, size: 320, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !431, file: !6, line: 163, baseType: !116, size: 64, offset: 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "dropped", scope: !431, file: !6, line: 164, baseType: !116, size: 64, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !431, file: !6, line: 165, baseType: !116, size: 64, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "fetcher_ratio", scope: !431, file: !6, line: 166, baseType: !112, size: 16, offset: 640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mutation_ratio", scope: !431, file: !6, line: 167, baseType: !112, size: 16, offset: 656)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !431, file: !6, line: 168, baseType: !112, size: 16, offset: 672)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !431, file: !6, line: 169, baseType: !444, size: 64, offset: 704)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "bipbuf_t", file: !446, line: 18, baseType: !447)
!446 = !DIFile(filename: "./bipbuffer.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "99606bcb8393045e6bc9eef40115066f")
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 4, size: 192, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !454}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !447, file: !446, line: 6, baseType: !118, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "a_start", scope: !447, file: !446, line: 9, baseType: !7, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "a_end", scope: !447, file: !446, line: 9, baseType: !7, size: 32, offset: 96)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "b_end", scope: !447, file: !446, line: 12, baseType: !7, size: 32, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "b_inuse", scope: !447, file: !446, line: 15, baseType: !129, size: 32, offset: 160)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !447, file: !446, line: 17, baseType: !455, offset: 192)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, elements: !136)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "entry_map", scope: !431, file: !6, line: 170, baseType: !457, size: 64, offset: 768)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_details", file: !6, line: 57, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_entry_details", file: !6, line: 62, size: 256, elements: !461)
!461 = !{!462, !463, !464, !479, !484}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reqlen", scope: !460, file: !6, line: 63, baseType: !129, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !460, file: !6, line: 64, baseType: !112, size: 16, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "log_cb", scope: !460, file: !6, line: 65, baseType: !465, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_log_cb", file: !6, line: 59, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !100, !457, !469, !471}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !473)
!473 = !{!474, !476, !477, !478}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !472, file: !475, line: 865, baseType: !7, size: 32)
!475 = !DIFile(filename: "logger.c", directory: "/home/xuheng/blackbox/llvm-test/memcached")
!476 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !472, file: !475, line: 865, baseType: !7, size: 32, offset: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !472, file: !475, line: 865, baseType: !99, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !472, file: !475, line: 865, baseType: !99, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "parse_cb", scope: !460, file: !6, line: 66, baseType: !480, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_parse_cb", file: !6, line: 60, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!129, !100, !139}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !460, file: !6, line: 67, baseType: !139, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "lru_bump_buf", scope: !275, file: !44, line: 724, baseType: !99, size: 64, offset: 54336)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !275, file: !44, line: 728, baseType: !129, size: 32, offset: 54400)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !269, file: !44, line: 786, baseType: !141, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !269, file: !44, line: 787, baseType: !245, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !269, file: !44, line: 788, baseType: !490, size: 960, offset: 256)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 960, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 120)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !247, file: !44, line: 751, baseType: !494, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "item", file: !44, line: 598, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stritem", file: !44, line: 575, size: 384, elements: !497)
!497 = !{!498, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !496, file: !44, line: 577, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !496, file: !44, line: 578, baseType: !499, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "h_next", scope: !496, file: !44, line: 580, baseType: !499, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !496, file: !44, line: 581, baseType: !161, size: 32, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "exptime", scope: !496, file: !44, line: 582, baseType: !161, size: 32, offset: 224)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !496, file: !44, line: 583, baseType: !129, size: 32, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !496, file: !44, line: 584, baseType: !114, size: 16, offset: 288)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !496, file: !44, line: 585, baseType: !112, size: 16, offset: 304)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_clsid", scope: !496, file: !44, line: 586, baseType: !106, size: 8, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "nkey", scope: !496, file: !44, line: 587, baseType: !106, size: 8, offset: 328)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !496, file: !44, line: 593, baseType: !510, offset: 384)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, elements: !136)
!511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !496, file: !44, line: 590, size: 64, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !511, file: !44, line: 591, baseType: !116, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !511, file: !44, line: 592, baseType: !135, size: 8)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !247, file: !44, line: 752, baseType: !516, size: 512, offset: 384)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 512, elements: !522)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !518, line: 26, size: 128, elements: !519)
!518 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "6a734cae8feaa37c12e11190a6573675")
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !517, file: !518, line: 28, baseType: !99, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !517, file: !518, line: 29, baseType: !419, size: 64, offset: 64)
!522 = !{!523}
!523 = !DISubrange(count: 4)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_total", scope: !247, file: !44, line: 753, baseType: !129, size: 32, offset: 896)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "iovcnt", scope: !247, file: !44, line: 754, baseType: !106, size: 8, offset: 928)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_data_iov", scope: !247, file: !44, line: 755, baseType: !106, size: 8, offset: 936)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !247, file: !44, line: 760, baseType: !151, size: 8, offset: 944)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !247, file: !44, line: 761, baseType: !151, size: 8, offset: 952)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !247, file: !44, line: 763, baseType: !112, size: 16, offset: 960)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "udp_sequence", scope: !247, file: !44, line: 764, baseType: !112, size: 16, offset: 976)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "udp_total", scope: !247, file: !44, line: 765, baseType: !112, size: 16, offset: 992)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr", scope: !247, file: !44, line: 766, baseType: !533, size: 224, offset: 1024)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !534, line: 253, size: 224, elements: !535)
!534 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "6a5254a491bcdb8c3253de75bf3571c1")
!535 = !{!536, !539, !541, !544, !560}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !533, file: !534, line: 255, baseType: !537, size: 16)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !538, line: 28, baseType: !114)
!538 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "b70cbaf07ffb7e8bf11ee98d9a21e2fc")
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !533, file: !534, line: 256, baseType: !540, size: 16, offset: 16)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !534, line: 119, baseType: !112)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !533, file: !534, line: 257, baseType: !542, size: 32, offset: 32)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !107, line: 26, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !109, line: 42, baseType: !7)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !533, file: !534, line: 258, baseType: !545, size: 128, offset: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !534, line: 212, size: 128, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !545, file: !534, line: 219, baseType: !548, size: 128)
!548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !545, file: !534, line: 214, size: 128, elements: !549)
!549 = !{!550, !554, !558}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !548, file: !534, line: 216, baseType: !551, size: 128)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 128, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 16)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !548, file: !534, line: 217, baseType: !555, size: 128)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 128, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 8)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !548, file: !534, line: 218, baseType: !559, size: 128)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 128, elements: !522)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !533, file: !534, line: 259, baseType: !542, size: 32, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr_size", scope: !247, file: !44, line: 767, baseType: !562, size: 32, offset: 1248)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !563, line: 33, baseType: !564)
!563 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "b1d3343a573cbf39b225111209e02966")
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !109, line: 209, baseType: !7)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !247, file: !44, line: 769, baseType: !566, size: 8192, offset: 1280)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 8192, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 1024)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "resp_head", scope: !143, file: !44, line: 822, baseType: !245, size: 64, offset: 1600)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ritem", scope: !143, file: !44, line: 823, baseType: !139, size: 64, offset: 1664)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rlbytes", scope: !143, file: !44, line: 824, baseType: !129, size: 32, offset: 1728)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !143, file: !44, line: 832, baseType: !99, size: 64, offset: 1792)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !143, file: !44, line: 835, baseType: !129, size: 32, offset: 1856)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues_submitted", scope: !143, file: !44, line: 837, baseType: !129, size: 32, offset: 1888)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues", scope: !143, file: !44, line: 838, baseType: !576, size: 576, offset: 1920)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 576, elements: !392)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "recache_counter", scope: !143, file: !44, line: 843, baseType: !7, size: 32, offset: 2496)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !143, file: !44, line: 845, baseType: !74, size: 32, offset: 2528)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "transport", scope: !143, file: !44, line: 846, baseType: !79, size: 32, offset: 2560)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "close_reason", scope: !143, file: !44, line: 847, baseType: !84, size: 32, offset: 2592)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !143, file: !44, line: 850, baseType: !129, size: 32, offset: 2624)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr", scope: !143, file: !44, line: 851, baseType: !533, size: 224, offset: 2656)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr_size", scope: !143, file: !44, line: 852, baseType: !562, size: 32, offset: 2880)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "noreply", scope: !143, file: !44, line: 854, baseType: !151, size: 8, offset: 2912)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !143, file: !44, line: 860, baseType: !586, size: 192, offset: 2944)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !143, file: !44, line: 856, size: 192, elements: !587)
!587 = !{!588, !589, !590}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !586, file: !44, line: 857, baseType: !139, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !586, file: !44, line: 858, baseType: !419, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !586, file: !44, line: 859, baseType: !419, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "binary_header", scope: !143, file: !44, line: 864, baseType: !592, size: 192, offset: 3136)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_header", file: !593, line: 164, baseType: !594)
!593 = !DIFile(filename: "./protocol_binary.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "7a322a65fa8661e9a597acbeeeb23107")
!594 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !593, line: 151, size: 192, elements: !595)
!595 = !{!596, !608}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !594, file: !593, line: 162, baseType: !597, size: 192)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !594, file: !593, line: 152, size: 192, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !597, file: !593, line: 153, baseType: !106, size: 8)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !597, file: !593, line: 154, baseType: !106, size: 8, offset: 8)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !597, file: !593, line: 155, baseType: !112, size: 16, offset: 16)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "extlen", scope: !597, file: !593, line: 156, baseType: !106, size: 8, offset: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !597, file: !593, line: 157, baseType: !106, size: 8, offset: 40)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !597, file: !593, line: 158, baseType: !112, size: 16, offset: 48)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "bodylen", scope: !597, file: !593, line: 159, baseType: !542, size: 32, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !597, file: !593, line: 160, baseType: !542, size: 32, offset: 96)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !597, file: !593, line: 161, baseType: !116, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !594, file: !593, line: 163, baseType: !609, size: 192)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 192, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 24)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !143, file: !44, line: 865, baseType: !116, size: 64, offset: 3328)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !143, file: !44, line: 866, baseType: !116, size: 64, offset: 3392)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !143, file: !44, line: 867, baseType: !177, size: 16, offset: 3456)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !143, file: !44, line: 868, baseType: !129, size: 32, offset: 3488)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !143, file: !44, line: 869, baseType: !129, size: 32, offset: 3520)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !143, file: !44, line: 870, baseType: !141, size: 64, offset: 3584)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !143, file: !44, line: 871, baseType: !273, size: 64, offset: 3648)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "try_read_command", scope: !143, file: !44, line: 872, baseType: !620, size: 64, offset: 3712)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!129, !141}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !143, file: !44, line: 873, baseType: !624, size: 64, offset: 3776)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!627, !141, !99, !419}
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !628, line: 108, baseType: !629)
!628 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !109, line: 193, baseType: !125)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sendmsg", scope: !143, file: !44, line: 874, baseType: !631, size: 64, offset: 3840)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!627, !141, !634, !129}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !563, line: 257, size: 448, elements: !636)
!636 = !{!637, !638, !639, !641, !642, !643, !644}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !635, file: !563, line: 259, baseType: !99, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !635, file: !563, line: 260, baseType: !562, size: 32, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !635, file: !563, line: 262, baseType: !640, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !635, file: !563, line: 263, baseType: !419, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !635, file: !563, line: 265, baseType: !99, size: 64, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !635, file: !563, line: 266, baseType: !419, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !635, file: !563, line: 271, baseType: !129, size: 32, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !143, file: !44, line: 875, baseType: !624, size: 64, offset: 3904)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "logentry_eviction", file: !6, line: 71, size: 192, elements: !648)
!648 = !{!649, !651, !652, !653, !654, !655, !656}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "exptime", scope: !647, file: !6, line: 72, baseType: !650, size: 64)
!650 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !647, file: !6, line: 73, baseType: !129, size: 32, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "latime", scope: !647, file: !6, line: 74, baseType: !542, size: 32, offset: 96)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !647, file: !6, line: 75, baseType: !112, size: 16, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "nkey", scope: !647, file: !6, line: 76, baseType: !106, size: 8, offset: 144)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "clsid", scope: !647, file: !6, line: 77, baseType: !106, size: 8, offset: 152)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !647, file: !6, line: 78, baseType: !657, offset: 160)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, elements: !136)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "logentry_item_get", file: !6, line: 91, size: 96, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !666}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "was_found", scope: !659, file: !6, line: 92, baseType: !106, size: 8)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "nkey", scope: !659, file: !6, line: 93, baseType: !106, size: 8, offset: 8)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "clsid", scope: !659, file: !6, line: 94, baseType: !106, size: 8, offset: 16)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !659, file: !6, line: 95, baseType: !129, size: 32, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sfd", scope: !659, file: !6, line: 96, baseType: !129, size: 32, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !659, file: !6, line: 97, baseType: !657, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "logentry_item_store", file: !6, line: 100, size: 192, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !668, file: !6, line: 101, baseType: !129, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !668, file: !6, line: 102, baseType: !129, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !668, file: !6, line: 103, baseType: !161, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nkey", scope: !668, file: !6, line: 104, baseType: !106, size: 8, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "clsid", scope: !668, file: !6, line: 105, baseType: !106, size: 8, offset: 104)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !668, file: !6, line: 106, baseType: !129, size: 32, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "sfd", scope: !668, file: !6, line: 107, baseType: !129, size: 32, offset: 160)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !668, file: !6, line: 108, baseType: !657, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "logentry_conn_event", file: !6, line: 111, size: 320, elements: !680)
!680 = !{!681, !682, !683, !684}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "transport", scope: !679, file: !6, line: 112, baseType: !129, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !679, file: !6, line: 113, baseType: !129, size: 32, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "sfd", scope: !679, file: !6, line: 114, baseType: !129, size: 32, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !679, file: !6, line: 115, baseType: !533, size: 224, offset: 96)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !534, line: 238, size: 128, elements: !687)
!687 = !{!688, !689, !690, !695}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !686, file: !534, line: 240, baseType: !537, size: 16)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !686, file: !534, line: 241, baseType: !540, size: 16, offset: 16)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !686, file: !534, line: 242, baseType: !691, size: 32, offset: 32)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !534, line: 31, size: 32, elements: !692)
!692 = !{!693}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !691, file: !534, line: 33, baseType: !694, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !534, line: 30, baseType: !542)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !686, file: !534, line: 245, baseType: !696, size: 64, offset: 64)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !556)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "logentry_ext_write", file: !6, line: 81, size: 192, elements: !700)
!700 = !{!701, !702, !703, !704, !705, !706, !707}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "exptime", scope: !699, file: !6, line: 82, baseType: !650, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "latime", scope: !699, file: !6, line: 83, baseType: !542, size: 32, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !699, file: !6, line: 84, baseType: !112, size: 16, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "nkey", scope: !699, file: !6, line: 85, baseType: !106, size: 8, offset: 112)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "clsid", scope: !699, file: !6, line: 86, baseType: !106, size: 8, offset: 120)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "bucket", scope: !699, file: !6, line: 87, baseType: !106, size: 8, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !699, file: !6, line: 88, baseType: !657, offset: 136)
!708 = !{!0, !709, !748, !750, !753, !771, !780, !782, !784, !786, !789, !791, !796}
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "logger_stack_cond", scope: !2, file: !3, line: 36, type: !711, isLocal: false, isDefinition: true)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !279, line: 80, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !279, line: 75, size: 384, elements: !713)
!713 = !{!714, !743, !747}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !712, file: !279, line: 77, baseType: !715, size: 384)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !303, line: 92, size: 384, elements: !716)
!716 = !{!717, !726, !735, !739, !740, !741, !742}
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !303, line: 94, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !303, line: 94, size: 64, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !718, file: !303, line: 96, baseType: !140, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !718, file: !303, line: 101, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !718, file: !303, line: 97, size: 64, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !722, file: !303, line: 99, baseType: !7, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !722, file: !303, line: 100, baseType: !7, size: 32, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !303, line: 103, baseType: !727, size: 64, offset: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !303, line: 103, size: 64, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !727, file: !303, line: 105, baseType: !140, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !727, file: !303, line: 110, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !303, line: 106, size: 64, elements: !732)
!732 = !{!733, !734}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !731, file: !303, line: 108, baseType: !7, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !731, file: !303, line: 109, baseType: !7, size: 32, offset: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !715, file: !303, line: 112, baseType: !736, size: 64, offset: 128)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 2)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !715, file: !303, line: 113, baseType: !736, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !715, file: !303, line: 114, baseType: !7, size: 32, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !715, file: !303, line: 115, baseType: !7, size: 32, offset: 288)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !715, file: !303, line: 116, baseType: !736, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !712, file: !279, line: 78, baseType: !744, size: 384)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 384, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 48)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !712, file: !279, line: 79, baseType: !650, size: 64)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(name: "watcher_count", scope: !2, file: !3, line: 47, type: !129, isLocal: false, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(name: "logger_key", scope: !2, file: !3, line: 38, type: !752, isLocal: false, isDefinition: true)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !279, line: 49, baseType: !7)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(name: "watchers", scope: !2, file: !3, line: 45, type: !755, isLocal: false, isDefinition: true)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 1280, elements: !769)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger_watcher", file: !6, line: 188, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 178, size: 448, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !758, file: !6, line: 179, baseType: !99, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sfd", scope: !758, file: !6, line: 180, baseType: !129, size: 32, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !758, file: !6, line: 181, baseType: !129, size: 32, offset: 96)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "skipped", scope: !758, file: !6, line: 182, baseType: !116, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "min_gid", scope: !758, file: !6, line: 183, baseType: !116, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "failed_flush", scope: !758, file: !6, line: 184, baseType: !151, size: 8, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !758, file: !6, line: 185, baseType: !34, size: 32, offset: 288)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !758, file: !6, line: 186, baseType: !112, size: 16, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !758, file: !6, line: 187, baseType: !444, size: 64, offset: 384)
!769 = !{!770}
!770 = !DISubrange(count: 20)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(name: "watchers_pollfds", scope: !2, file: !3, line: 46, type: !773, isLocal: false, isDefinition: true)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 1280, elements: !769)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !775, line: 36, size: 64, elements: !776)
!775 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "97f0939227b389ddf6ce22c8962ba359")
!776 = !{!777, !778, !779}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !774, file: !775, line: 38, baseType: !129, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !774, file: !775, line: 39, baseType: !177, size: 16, offset: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !774, file: !775, line: 40, baseType: !177, size: 16, offset: 48)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(name: "logger_gid", scope: !2, file: !3, line: 430, type: !116, isLocal: true, isDefinition: true)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(name: "logger_stack_head", scope: !2, file: !3, line: 30, type: !429, isLocal: true, isDefinition: true)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(name: "logger_stack_tail", scope: !2, file: !3, line: 31, type: !429, isLocal: true, isDefinition: true)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(name: "do_run_logger_thread", scope: !2, file: !3, line: 33, type: !788, isLocal: true, isDefinition: true)
!788 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !129)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(name: "logger_tid", scope: !2, file: !3, line: 34, type: !278, isLocal: true, isDefinition: true)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(name: "default_entries", scope: !2, file: !3, line: 372, type: !793, isLocal: true, isDefinition: true)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 3840, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 15)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(name: "logger_count", scope: !2, file: !3, line: 32, type: !7, isLocal: true, isDefinition: true)
!798 = !{i32 7, !"Dwarf Version", i32 5}
!799 = !{i32 2, !"Debug Info Version", i32 3}
!800 = !{i32 1, !"wchar_size", i32 4}
!801 = !{i32 7, !"uwtable", i32 1}
!802 = !{!"/home/xuheng/blackbox/llvm-test/memcached/logger.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/logger.gcda", !2}
!803 = !{!"clang version 14.0.0"}
!804 = distinct !DISubprogram(name: "logger_get_gid", scope: !3, file: !3, line: 431, type: !805, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !807)
!805 = !DISubroutineType(types: !806)
!806 = !{!116}
!807 = !{}
!808 = !DILocation(line: 433, column: 12, scope: !804)
!809 = !DILocation(line: 433, column: 5, scope: !804)
!810 = distinct !DISubprogram(name: "logger_set_gid", scope: !3, file: !3, line: 444, type: !811, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !116}
!813 = !{!814}
!814 = !DILocalVariable(name: "gid", arg: 1, scope: !810, file: !3, line: 444, type: !116)
!815 = !DILocation(line: 0, scope: !810)
!816 = !DILocation(line: 446, column: 5, scope: !810)
!817 = !DILocation(line: 454, column: 1, scope: !810)
!818 = distinct !DISubprogram(name: "logger_init", scope: !3, file: !3, line: 844, type: !819, scopeLine: 844, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !807)
!819 = !DISubroutineType(types: !820)
!820 = !{null}
!821 = !DILocation(line: 849, column: 23, scope: !818)
!822 = !{!823, !823, i64 0}
!823 = !{!"any pointer", !824, i64 0}
!824 = !{!"omnipotent char", !825, i64 0}
!825 = !{!"Simple C/C++ TBAA"}
!826 = !DILocation(line: 850, column: 23, scope: !818)
!827 = !DILocation(line: 851, column: 5, scope: !818)
!828 = !DILocation(line: 853, column: 9, scope: !829)
!829 = distinct !DILexicalBlock(scope: !818, file: !3, line: 853, column: 9)
!830 = !DILocation(line: 853, column: 31, scope: !829)
!831 = !DILocation(line: 853, column: 9, scope: !818)
!832 = !DILocation(line: 854, column: 9, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !3, line: 853, column: 37)
!834 = !DILocation(line: 860, column: 5, scope: !818)
!835 = !DISubprogram(name: "pthread_key_create", scope: !836, file: !836, line: 1123, type: !837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!836 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!837 = !DISubroutineType(types: !838)
!838 = !{!129, !839, !840}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !99}
!843 = distinct !DISubprogram(name: "start_logger_thread", scope: !3, file: !3, line: 817, type: !844, scopeLine: 817, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !846)
!844 = !DISubroutineType(types: !845)
!845 = !{!129}
!846 = !{!847}
!847 = !DILocalVariable(name: "ret", scope: !843, file: !3, line: 818, type: !129)
!848 = !DILocation(line: 819, column: 26, scope: !843)
!849 = !{!850, !850, i64 0}
!850 = !{!"int", !824, i64 0}
!851 = !DILocation(line: 820, column: 16, scope: !852)
!852 = distinct !DILexicalBlock(scope: !843, file: !3, line: 820, column: 9)
!853 = !DILocation(line: 0, scope: !843)
!854 = !DILocation(line: 821, column: 53, scope: !852)
!855 = !DILocation(line: 820, column: 9, scope: !843)
!856 = !DILocation(line: 822, column: 17, scope: !857)
!857 = distinct !DILexicalBlock(scope: !852, file: !3, line: 821, column: 59)
!858 = !DILocation(line: 822, column: 60, scope: !857)
!859 = !DILocation(line: 822, column: 9, scope: !857)
!860 = !DILocation(line: 823, column: 9, scope: !857)
!861 = !DILocation(line: 825, column: 5, scope: !843)
!862 = !DILocation(line: 826, column: 1, scope: !843)
!863 = !DISubprogram(name: "abort", scope: !864, file: !864, line: 591, type: !819, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !807)
!864 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!865 = distinct !DISubprogram(name: "logger_stop", scope: !3, file: !3, line: 863, type: !819, scopeLine: 863, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !807)
!866 = !DILocation(line: 864, column: 5, scope: !865)
!867 = !DILocation(line: 865, column: 1, scope: !865)
!868 = distinct !DISubprogram(name: "stop_logger_thread", scope: !3, file: !3, line: 828, type: !844, scopeLine: 828, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !807)
!869 = !DILocation(line: 831, column: 5, scope: !868)
!870 = !DILocation(line: 832, column: 26, scope: !868)
!871 = !DILocation(line: 833, column: 5, scope: !868)
!872 = !DILocation(line: 834, column: 5, scope: !868)
!873 = !DILocation(line: 835, column: 18, scope: !868)
!874 = !{!875, !875, i64 0}
!875 = !{!"long", !824, i64 0}
!876 = !DILocation(line: 835, column: 5, scope: !868)
!877 = !DILocation(line: 836, column: 5, scope: !868)
!878 = distinct !DISubprogram(name: "logger_create", scope: !3, file: !3, line: 870, type: !879, scopeLine: 870, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!429}
!881 = !{!882}
!882 = !DILocalVariable(name: "l", scope: !878, file: !3, line: 872, type: !429)
!883 = !DILocation(line: 872, column: 17, scope: !878)
!884 = !DILocation(line: 0, scope: !878)
!885 = !DILocation(line: 873, column: 11, scope: !886)
!886 = distinct !DILexicalBlock(scope: !878, file: !3, line: 873, column: 9)
!887 = !DILocation(line: 873, column: 9, scope: !878)
!888 = !DILocation(line: 874, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !886, file: !3, line: 873, column: 20)
!890 = !DILocation(line: 877, column: 34, scope: !878)
!891 = !{!892, !850, i64 244}
!892 = !{!"settings", !875, i64 0, !850, i64 8, !850, i64 12, !850, i64 16, !823, i64 24, !850, i64 32, !850, i64 36, !875, i64 40, !850, i64 48, !823, i64 56, !823, i64 64, !850, i64 72, !893, i64 80, !850, i64 88, !850, i64 92, !850, i64 96, !824, i64 100, !850, i64 104, !850, i64 108, !894, i64 112, !824, i64 116, !850, i64 120, !850, i64 124, !850, i64 128, !850, i64 132, !850, i64 136, !894, i64 140, !894, i64 141, !894, i64 142, !894, i64 143, !894, i64 144, !894, i64 145, !850, i64 148, !893, i64 152, !850, i64 160, !850, i64 164, !894, i64 168, !850, i64 172, !894, i64 176, !894, i64 177, !823, i64 184, !850, i64 192, !850, i64 196, !850, i64 200, !850, i64 204, !893, i64 208, !893, i64 216, !850, i64 224, !894, i64 228, !850, i64 232, !850, i64 236, !850, i64 240, !850, i64 244, !850, i64 248, !894, i64 252, !894, i64 253, !894, i64 254, !894, i64 255, !850, i64 256, !850, i64 260, !850, i64 264, !850, i64 268, !850, i64 272, !850, i64 276, !850, i64 280, !850, i64 284, !850, i64 288, !850, i64 292, !893, i64 296, !893, i64 304, !894, i64 312, !850, i64 316, !850, i64 320, !823, i64 328, !850, i64 336}
!893 = !{!"double", !824, i64 0}
!894 = !{!"_Bool", !824, i64 0}
!895 = !DILocation(line: 877, column: 14, scope: !878)
!896 = !DILocation(line: 877, column: 8, scope: !878)
!897 = !DILocation(line: 877, column: 12, scope: !878)
!898 = !{!899, !823, i64 88}
!899 = !{!"_logger", !823, i64 0, !823, i64 8, !824, i64 16, !875, i64 56, !875, i64 64, !875, i64 72, !900, i64 80, !900, i64 82, !900, i64 84, !823, i64 88, !823, i64 96}
!900 = !{!"short", !824, i64 0}
!901 = !DILocation(line: 878, column: 16, scope: !902)
!902 = distinct !DILexicalBlock(scope: !878, file: !3, line: 878, column: 9)
!903 = !DILocation(line: 878, column: 9, scope: !878)
!904 = !DILocation(line: 879, column: 14, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !3, line: 878, column: 25)
!906 = !DILocation(line: 879, column: 9, scope: !905)
!907 = !DILocation(line: 880, column: 9, scope: !905)
!908 = !DILocation(line: 883, column: 5, scope: !878)
!909 = !DILocation(line: 883, column: 8, scope: !878)
!910 = !DILocation(line: 883, column: 18, scope: !878)
!911 = !{!899, !823, i64 96}
!912 = !DILocation(line: 885, column: 28, scope: !878)
!913 = !DILocation(line: 885, column: 5, scope: !878)
!914 = !DILocation(line: 886, column: 25, scope: !878)
!915 = !DILocation(line: 886, column: 5, scope: !878)
!916 = !DILocation(line: 889, column: 5, scope: !878)
!917 = !DILocation(line: 890, column: 5, scope: !878)
!918 = !DILocation(line: 891, column: 1, scope: !878)
!919 = !DISubprogram(name: "calloc", scope: !864, file: !864, line: 542, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!920 = !DISubroutineType(types: !921)
!921 = !{!99, !419, !419}
!922 = !DISubprogram(name: "bipbuf_new", scope: !446, file: !446, line: 26, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!923 = !DISubroutineType(types: !924)
!924 = !{!444, !925}
!925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!926 = !DISubprogram(name: "free", scope: !864, file: !864, line: 565, type: !841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!927 = !DISubprogram(name: "pthread_mutex_init", scope: !836, file: !836, line: 725, type: !928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!928 = !DISubroutineType(types: !929)
!929 = !{!129, !930, !931}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !279, line: 36, baseType: !934)
!934 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !279, line: 32, size: 32, elements: !935)
!935 = !{!936, !938}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !934, file: !279, line: 34, baseType: !937, size: 32)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 32, elements: !522)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !934, file: !279, line: 35, baseType: !129, size: 32)
!939 = !DISubprogram(name: "pthread_setspecific", scope: !836, file: !836, line: 1134, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!940 = !DISubroutineType(types: !941)
!941 = !{!129, !752, !469}
!942 = distinct !DISubprogram(name: "logger_link_q", scope: !3, file: !3, line: 460, type: !943, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !945)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !429}
!945 = !{!946}
!946 = !DILocalVariable(name: "l", arg: 1, scope: !942, file: !3, line: 460, type: !429)
!947 = !DILocation(line: 0, scope: !942)
!948 = !DILocation(line: 461, column: 5, scope: !942)
!949 = !DILocation(line: 462, column: 5, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 462, column: 5)
!951 = distinct !DILexicalBlock(scope: !942, file: !3, line: 462, column: 5)
!952 = !DILocation(line: 462, column: 5, scope: !951)
!953 = !DILocation(line: 464, column: 8, scope: !942)
!954 = !DILocation(line: 464, column: 13, scope: !942)
!955 = !{!899, !823, i64 0}
!956 = !DILocation(line: 465, column: 15, scope: !942)
!957 = !DILocation(line: 465, column: 8, scope: !942)
!958 = !DILocation(line: 465, column: 13, scope: !942)
!959 = !{!899, !823, i64 8}
!960 = !DILocation(line: 466, column: 9, scope: !961)
!961 = distinct !DILexicalBlock(scope: !942, file: !3, line: 466, column: 9)
!962 = !DILocation(line: 466, column: 9, scope: !942)
!963 = !DILocation(line: 466, column: 34, scope: !961)
!964 = !DILocation(line: 466, column: 21, scope: !961)
!965 = !DILocation(line: 466, column: 27, scope: !961)
!966 = !DILocation(line: 466, column: 32, scope: !961)
!967 = !DILocation(line: 466, column: 18, scope: !961)
!968 = !DILocation(line: 467, column: 23, scope: !942)
!969 = !DILocation(line: 468, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !942, file: !3, line: 468, column: 9)
!971 = !DILocation(line: 468, column: 27, scope: !970)
!972 = !DILocation(line: 468, column: 9, scope: !942)
!973 = !DILocation(line: 468, column: 53, scope: !970)
!974 = !DILocation(line: 468, column: 51, scope: !970)
!975 = !DILocation(line: 468, column: 33, scope: !970)
!976 = !DILocation(line: 469, column: 17, scope: !942)
!977 = !DILocation(line: 470, column: 5, scope: !942)
!978 = !DILocation(line: 471, column: 5, scope: !942)
!979 = distinct !DISubprogram(name: "logger_log", scope: !3, file: !3, line: 897, type: !980, scopeLine: 897, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !983)
!980 = !DISubroutineType(types: !981)
!981 = !{!24, !429, !982, !469, null}
!982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!983 = !{!984, !985, !986, !987, !988, !989, !998, !999, !1000}
!984 = !DILocalVariable(name: "l", arg: 1, scope: !979, file: !3, line: 897, type: !429)
!985 = !DILocalVariable(name: "event", arg: 2, scope: !979, file: !3, line: 897, type: !982)
!986 = !DILocalVariable(name: "entry", arg: 3, scope: !979, file: !3, line: 897, type: !469)
!987 = !DILocalVariable(name: "buf", scope: !979, file: !3, line: 898, type: !444)
!988 = !DILocalVariable(name: "nospace", scope: !979, file: !3, line: 899, type: !151)
!989 = !DILocalVariable(name: "ap", scope: !979, file: !3, line: 900, type: !990)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !991, line: 52, baseType: !992)
!991 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !993, line: 32, baseType: !994)
!993 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stdarg.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !475, baseType: !995)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 192, elements: !996)
!996 = !{!997}
!997 = !DISubrange(count: 1)
!998 = !DILocalVariable(name: "e", scope: !979, file: !3, line: 901, type: !100)
!999 = !DILocalVariable(name: "d", scope: !979, file: !3, line: 903, type: !457)
!1000 = !DILocalVariable(name: "reqlen", scope: !979, file: !3, line: 904, type: !129)
!1001 = !DILocation(line: 0, scope: !979)
!1002 = !DILocation(line: 898, column: 24, scope: !979)
!1003 = !DILocation(line: 900, column: 5, scope: !979)
!1004 = !DILocation(line: 900, column: 13, scope: !979)
!1005 = !DILocation(line: 903, column: 34, scope: !979)
!1006 = !DILocation(line: 903, column: 31, scope: !979)
!1007 = !DILocation(line: 904, column: 21, scope: !979)
!1008 = !{!1009, !850, i64 0}
!1009 = !{!"_entry_details", !850, i64 0, !900, i64 4, !823, i64 8, !823, i64 16, !823, i64 24}
!1010 = !DILocation(line: 906, column: 28, scope: !979)
!1011 = !DILocation(line: 906, column: 5, scope: !979)
!1012 = !DILocation(line: 908, column: 60, scope: !979)
!1013 = !DILocation(line: 908, column: 22, scope: !979)
!1014 = !DILocation(line: 909, column: 11, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !979, file: !3, line: 909, column: 9)
!1016 = !DILocation(line: 909, column: 9, scope: !979)
!1017 = !DILocation(line: 910, column: 31, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 909, column: 20)
!1019 = !DILocation(line: 910, column: 9, scope: !1018)
!1020 = !DILocation(line: 911, column: 12, scope: !1018)
!1021 = !DILocation(line: 911, column: 19, scope: !1018)
!1022 = !{!899, !875, i64 64}
!1023 = !DILocation(line: 912, column: 9, scope: !1018)
!1024 = !DILocation(line: 908, column: 9, scope: !979)
!1025 = !DILocation(line: 914, column: 8, scope: !979)
!1026 = !DILocation(line: 914, column: 14, scope: !979)
!1027 = !{!824, !824, i64 0}
!1028 = !DILocation(line: 915, column: 8, scope: !979)
!1029 = !DILocation(line: 915, column: 12, scope: !979)
!1030 = !DILocation(line: 916, column: 14, scope: !979)
!1031 = !DILocation(line: 916, column: 8, scope: !979)
!1032 = !DILocation(line: 916, column: 12, scope: !979)
!1033 = !DILocation(line: 920, column: 20, scope: !979)
!1034 = !{!1009, !900, i64 4}
!1035 = !DILocation(line: 920, column: 8, scope: !979)
!1036 = !DILocation(line: 920, column: 15, scope: !979)
!1037 = !{!900, !900, i64 0}
!1038 = !DILocation(line: 924, column: 22, scope: !979)
!1039 = !DILocation(line: 924, column: 5, scope: !979)
!1040 = !DILocation(line: 926, column: 5, scope: !979)
!1041 = !DILocation(line: 927, column: 8, scope: !979)
!1042 = !{!1009, !823, i64 8}
!1043 = !DILocation(line: 927, column: 5, scope: !979)
!1044 = !DILocation(line: 928, column: 5, scope: !979)
!1045 = !DILocation(line: 938, column: 49, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !979, file: !3, line: 938, column: 9)
!1047 = !DILocation(line: 938, column: 44, scope: !1046)
!1048 = !DILocation(line: 938, column: 59, scope: !1046)
!1049 = !DILocation(line: 938, column: 56, scope: !1046)
!1050 = !DILocation(line: 938, column: 54, scope: !1046)
!1051 = !DILocation(line: 938, column: 9, scope: !1046)
!1052 = !DILocation(line: 938, column: 65, scope: !1046)
!1053 = !DILocation(line: 938, column: 9, scope: !979)
!1054 = !DILocation(line: 939, column: 17, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 938, column: 71)
!1056 = !DILocation(line: 939, column: 9, scope: !1055)
!1057 = !DILocation(line: 940, column: 9, scope: !1055)
!1058 = !DILocation(line: 941, column: 9, scope: !1055)
!1059 = !DILocation(line: 943, column: 8, scope: !979)
!1060 = !DILocation(line: 943, column: 15, scope: !979)
!1061 = !{!899, !875, i64 56}
!1062 = !DILocation(line: 947, column: 5, scope: !979)
!1063 = !DILocation(line: 952, column: 9, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 951, column: 12)
!1065 = distinct !DILexicalBlock(scope: !979, file: !3, line: 949, column: 9)
!1066 = !DILocation(line: 954, column: 1, scope: !979)
!1067 = !DISubprogram(name: "pthread_mutex_lock", scope: !836, file: !836, line: 738, type: !1068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!129, !930}
!1070 = !DISubprogram(name: "bipbuf_request", scope: !446, file: !446, line: 41, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!138, !444, !1073}
!1073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!1074 = !DISubprogram(name: "pthread_mutex_unlock", scope: !836, file: !836, line: 756, type: !1068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1075 = !DISubprogram(name: "gettimeofday", scope: !1076, file: !1076, line: 66, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1076 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/time.h", directory: "", checksumkind: CSK_MD5, checksum: "99ab902f1529d4d72694df20fbf7a8ec")
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!129, !1079, !1081}
!1079 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1080)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !99)
!1082 = !DISubprogram(name: "bipbuf_push", scope: !446, file: !446, line: 42, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!129, !444, !1073}
!1085 = !DISubprogram(name: "fprintf", scope: !991, file: !991, line: 326, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!129, !1088, !1138, null}
!1088 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1089)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1091, line: 7, baseType: !1092)
!1091 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1093, line: 49, size: 1728, elements: !1094)
!1093 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1110, !1112, !1113, !1114, !1116, !1117, !1119, !1121, !1124, !1126, !1129, !1132, !1133, !1134, !1135, !1136}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1092, file: !1093, line: 51, baseType: !129, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1092, file: !1093, line: 54, baseType: !139, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1092, file: !1093, line: 55, baseType: !139, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1092, file: !1093, line: 56, baseType: !139, size: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1092, file: !1093, line: 57, baseType: !139, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1092, file: !1093, line: 58, baseType: !139, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1092, file: !1093, line: 59, baseType: !139, size: 64, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1092, file: !1093, line: 60, baseType: !139, size: 64, offset: 448)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1092, file: !1093, line: 61, baseType: !139, size: 64, offset: 512)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1092, file: !1093, line: 64, baseType: !139, size: 64, offset: 576)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1092, file: !1093, line: 65, baseType: !139, size: 64, offset: 640)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1092, file: !1093, line: 66, baseType: !139, size: 64, offset: 704)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1092, file: !1093, line: 68, baseType: !1108, size: 64, offset: 768)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1093, line: 36, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1092, file: !1093, line: 70, baseType: !1111, size: 64, offset: 832)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1092, file: !1093, line: 72, baseType: !129, size: 32, offset: 896)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1092, file: !1093, line: 73, baseType: !129, size: 32, offset: 928)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1092, file: !1093, line: 74, baseType: !1115, size: 64, offset: 960)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !109, line: 152, baseType: !125)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1092, file: !1093, line: 77, baseType: !114, size: 16, offset: 1024)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1092, file: !1093, line: 78, baseType: !1118, size: 8, offset: 1040)
!1118 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1092, file: !1093, line: 79, baseType: !1120, size: 8, offset: 1048)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 8, elements: !996)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1092, file: !1093, line: 81, baseType: !1122, size: 64, offset: 1088)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1093, line: 43, baseType: null)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1092, file: !1093, line: 89, baseType: !1125, size: 64, offset: 1152)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !109, line: 153, baseType: !125)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1092, file: !1093, line: 91, baseType: !1127, size: 64, offset: 1216)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1093, line: 37, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1092, file: !1093, line: 92, baseType: !1130, size: 64, offset: 1280)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1093, line: 38, flags: DIFlagFwdDecl)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1092, file: !1093, line: 93, baseType: !1111, size: 64, offset: 1344)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1092, file: !1093, line: 94, baseType: !99, size: 64, offset: 1408)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1092, file: !1093, line: 95, baseType: !419, size: 64, offset: 1472)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1092, file: !1093, line: 96, baseType: !129, size: 32, offset: 1536)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1092, file: !1093, line: 98, baseType: !1137, size: 160, offset: 1568)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 160, elements: !769)
!1138 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1139)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!1141 = distinct !DISubprogram(name: "logger_add_watcher", scope: !3, file: !3, line: 960, type: !1142, scopeLine: 960, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1144)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!29, !99, !1073, !112}
!1144 = !{!1145, !1146, !1147, !1148, !1149}
!1145 = !DILocalVariable(name: "c", arg: 1, scope: !1141, file: !3, line: 960, type: !99)
!1146 = !DILocalVariable(name: "sfd", arg: 2, scope: !1141, file: !3, line: 960, type: !1073)
!1147 = !DILocalVariable(name: "f", arg: 3, scope: !1141, file: !3, line: 960, type: !112)
!1148 = !DILocalVariable(name: "x", scope: !1141, file: !3, line: 961, type: !129)
!1149 = !DILocalVariable(name: "w", scope: !1141, file: !3, line: 962, type: !756)
!1150 = !DILocation(line: 0, scope: !1141)
!1151 = !DILocation(line: 963, column: 5, scope: !1141)
!1152 = !DILocation(line: 964, column: 9, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 964, column: 9)
!1154 = !DILocation(line: 964, column: 23, scope: !1153)
!1155 = !DILocation(line: 964, column: 9, scope: !1141)
!1156 = !DILocation(line: 970, column: 13, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 970, column: 13)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 969, column: 43)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 969, column: 5)
!1160 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 969, column: 5)
!1161 = !DILocation(line: 970, column: 25, scope: !1157)
!1162 = !DILocation(line: 970, column: 13, scope: !1158)
!1163 = !DILocation(line: 965, column: 9, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 964, column: 41)
!1165 = !DILocation(line: 966, column: 9, scope: !1164)
!1166 = !DILocation(line: 971, column: 13, scope: !1157)
!1167 = !DILocation(line: 969, column: 39, scope: !1159)
!1168 = !DILocation(line: 974, column: 9, scope: !1141)
!1169 = !DILocation(line: 975, column: 11, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 975, column: 9)
!1171 = !DILocation(line: 975, column: 9, scope: !1141)
!1172 = !DILocation(line: 976, column: 9, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 975, column: 20)
!1174 = !DILocation(line: 977, column: 9, scope: !1173)
!1175 = !DILocation(line: 979, column: 8, scope: !1141)
!1176 = !DILocation(line: 979, column: 10, scope: !1141)
!1177 = !{!1178, !823, i64 0}
!1178 = !{!"", !823, i64 0, !850, i64 8, !850, i64 12, !875, i64 16, !875, i64 24, !894, i64 32, !824, i64 36, !900, i64 40, !823, i64 48}
!1179 = !DILocation(line: 980, column: 8, scope: !1141)
!1180 = !DILocation(line: 980, column: 12, scope: !1141)
!1181 = !{!1178, !850, i64 8}
!1182 = !DILocation(line: 981, column: 13, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 981, column: 9)
!1184 = !DILocation(line: 981, column: 18, scope: !1183)
!1185 = !DILocation(line: 981, column: 21, scope: !1183)
!1186 = !DILocation(line: 981, column: 23, scope: !1183)
!1187 = !DILocation(line: 981, column: 9, scope: !1141)
!1188 = !DILocation(line: 982, column: 9, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 981, column: 32)
!1190 = !DILocation(line: 983, column: 5, scope: !1189)
!1191 = !DILocation(line: 0, scope: !1183)
!1192 = !{!1178, !824, i64 36}
!1193 = !DILocation(line: 986, column: 8, scope: !1141)
!1194 = !DILocation(line: 986, column: 11, scope: !1141)
!1195 = !{!1178, !850, i64 12}
!1196 = !DILocation(line: 987, column: 8, scope: !1141)
!1197 = !DILocation(line: 987, column: 15, scope: !1141)
!1198 = !{!1178, !900, i64 40}
!1199 = !DILocation(line: 988, column: 18, scope: !1141)
!1200 = !DILocation(line: 988, column: 8, scope: !1141)
!1201 = !DILocation(line: 988, column: 16, scope: !1141)
!1202 = !{!1178, !875, i64 24}
!1203 = !DILocation(line: 989, column: 34, scope: !1141)
!1204 = !{!892, !850, i64 240}
!1205 = !DILocation(line: 989, column: 14, scope: !1141)
!1206 = !DILocation(line: 989, column: 8, scope: !1141)
!1207 = !DILocation(line: 989, column: 12, scope: !1141)
!1208 = !{!1178, !823, i64 48}
!1209 = !DILocation(line: 990, column: 16, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 990, column: 9)
!1211 = !DILocation(line: 990, column: 9, scope: !1141)
!1212 = !DILocation(line: 991, column: 14, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 990, column: 25)
!1214 = !DILocation(line: 991, column: 9, scope: !1213)
!1215 = !DILocation(line: 993, column: 9, scope: !1213)
!1216 = !DILocation(line: 995, column: 18, scope: !1141)
!1217 = !DILocation(line: 995, column: 5, scope: !1141)
!1218 = !DILocation(line: 997, column: 5, scope: !1141)
!1219 = !DILocation(line: 997, column: 17, scope: !1141)
!1220 = !DILocation(line: 998, column: 18, scope: !1141)
!1221 = !DILocation(line: 1000, column: 5, scope: !1141)
!1222 = !DILocation(line: 1001, column: 5, scope: !1141)
!1223 = !DILocation(line: 1004, column: 5, scope: !1141)
!1224 = !DILocation(line: 1005, column: 1, scope: !1141)
!1225 = !DISubprogram(name: "bipbuf_offer", scope: !446, file: !446, line: 48, type: !1226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!129, !444, !1228, !1073}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!1230 = distinct !DISubprogram(name: "logger_set_flags", scope: !3, file: !3, line: 498, type: !819, scopeLine: 498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1231)
!1231 = !{!1232, !1233, !1234, !1235}
!1232 = !DILocalVariable(name: "l", scope: !1230, file: !3, line: 499, type: !429)
!1233 = !DILocalVariable(name: "x", scope: !1230, file: !3, line: 500, type: !129)
!1234 = !DILocalVariable(name: "f", scope: !1230, file: !3, line: 501, type: !112)
!1235 = !DILocalVariable(name: "w", scope: !1236, file: !3, line: 504, type: !756)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 503, column: 41)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 503, column: 5)
!1238 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 503, column: 5)
!1239 = !DILocation(line: 0, scope: !1230)
!1240 = !DILocation(line: 503, column: 5, scope: !1238)
!1241 = !DILocation(line: 504, column: 29, scope: !1236)
!1242 = !DILocation(line: 0, scope: !1236)
!1243 = !DILocation(line: 505, column: 15, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 505, column: 13)
!1245 = !DILocation(line: 505, column: 13, scope: !1236)
!1246 = !DILocation(line: 508, column: 14, scope: !1236)
!1247 = !DILocation(line: 508, column: 17, scope: !1236)
!1248 = !DILocation(line: 508, column: 11, scope: !1236)
!1249 = !DILocation(line: 509, column: 5, scope: !1236)
!1250 = !DILocation(line: 503, column: 37, scope: !1237)
!1251 = !DILocation(line: 503, column: 19, scope: !1237)
!1252 = distinct !{!1252, !1240, !1253, !1254}
!1253 = !DILocation(line: 509, column: 5, scope: !1238)
!1254 = !{!"llvm.loop.mustprogress"}
!1255 = !DILocation(line: 510, column: 14, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 510, column: 5)
!1257 = !DILocation(line: 0, scope: !1256)
!1258 = !DILocation(line: 510, column: 35, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 510, column: 5)
!1260 = !DILocation(line: 510, column: 5, scope: !1256)
!1261 = !DILocation(line: 511, column: 32, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 510, column: 55)
!1263 = !DILocation(line: 511, column: 9, scope: !1262)
!1264 = !DILocation(line: 512, column: 12, scope: !1262)
!1265 = !DILocation(line: 512, column: 19, scope: !1262)
!1266 = !{!899, !900, i64 84}
!1267 = !DILocation(line: 513, column: 9, scope: !1262)
!1268 = !DILocation(line: 510, column: 46, scope: !1259)
!1269 = !DILocation(line: 510, column: 49, scope: !1259)
!1270 = distinct !{!1270, !1260, !1271, !1254}
!1271 = !DILocation(line: 514, column: 5, scope: !1256)
!1272 = !DILocation(line: 516, column: 1, scope: !1230)
!1273 = !DISubprogram(name: "pthread_cond_signal", scope: !836, file: !836, line: 974, type: !1274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!129, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!1277 = !DISubprogram(name: "pthread_create", scope: !836, file: !836, line: 198, type: !1278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!129, !1280, !1282, !1293, !1081}
!1280 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1281)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1285)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !279, line: 62, baseType: !1286)
!1286 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !279, line: 56, size: 448, elements: !1287)
!1287 = !{!1288, !1292}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1286, file: !279, line: 58, baseType: !1289, size: 448)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 448, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 56)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1286, file: !279, line: 59, baseType: !125, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!99, !99}
!1296 = distinct !DISubprogram(name: "logger_thread", scope: !3, file: !3, line: 766, type: !1294, scopeLine: 766, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1297)
!1297 = !{!1298, !1299, !1303, !1305, !1306}
!1298 = !DILocalVariable(name: "arg", arg: 1, scope: !1296, file: !3, line: 766, type: !99)
!1299 = !DILocalVariable(name: "to_sleep", scope: !1296, file: !3, line: 767, type: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "useconds_t", file: !1301, line: 255, baseType: !1302)
!1301 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__useconds_t", file: !109, line: 161, baseType: !7)
!1303 = !DILocalVariable(name: "found_logs", scope: !1304, file: !3, line: 772, type: !129)
!1304 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 771, column: 34)
!1305 = !DILocalVariable(name: "l", scope: !1304, file: !3, line: 773, type: !429)
!1306 = !DILocalVariable(name: "ls", scope: !1304, file: !3, line: 774, type: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "logger_stats", file: !6, line: 191, size: 320, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1312, !1313}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "worker_dropped", scope: !1307, file: !6, line: 192, baseType: !116, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "worker_written", scope: !1307, file: !6, line: 193, baseType: !116, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "watcher_skipped", scope: !1307, file: !6, line: 194, baseType: !116, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "watcher_sent", scope: !1307, file: !6, line: 195, baseType: !116, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "watcher_count", scope: !1307, file: !6, line: 196, baseType: !116, size: 64, offset: 256)
!1314 = !DILocation(line: 0, scope: !1296)
!1315 = !DILocation(line: 771, column: 12, scope: !1296)
!1316 = !DILocation(line: 771, column: 5, scope: !1296)
!1317 = !DILocation(line: 0, scope: !1304)
!1318 = !DILocation(line: 774, column: 9, scope: !1304)
!1319 = !DILocation(line: 774, column: 29, scope: !1304)
!1320 = !DILocation(line: 775, column: 9, scope: !1304)
!1321 = !DILocation(line: 778, column: 22, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 778, column: 13)
!1323 = !DILocation(line: 778, column: 13, scope: !1304)
!1324 = !DILocation(line: 779, column: 20, scope: !1322)
!1325 = !DILocation(line: 779, column: 13, scope: !1322)
!1326 = !DILocation(line: 782, column: 9, scope: !1304)
!1327 = !DILocation(line: 783, column: 13, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 783, column: 13)
!1329 = !DILocation(line: 783, column: 27, scope: !1328)
!1330 = !DILocation(line: 783, column: 13, scope: !1304)
!1331 = !DILocation(line: 786, column: 13, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 783, column: 33)
!1333 = !DILocation(line: 787, column: 9, scope: !1332)
!1334 = !DILocation(line: 0, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 788, column: 9)
!1336 = !DILocation(line: 788, column: 39, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 788, column: 9)
!1338 = !DILocation(line: 788, column: 9, scope: !1335)
!1339 = !DILocation(line: 790, column: 27, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 788, column: 59)
!1341 = !DILocation(line: 790, column: 24, scope: !1340)
!1342 = !DILocation(line: 788, column: 50, scope: !1337)
!1343 = !DILocation(line: 788, column: 53, scope: !1337)
!1344 = distinct !{!1344, !1338, !1345, !1254}
!1345 = !DILocation(line: 791, column: 9, scope: !1335)
!1346 = !DILocation(line: 793, column: 9, scope: !1304)
!1347 = !DILocation(line: 796, column: 28, scope: !1304)
!1348 = !DILocation(line: 796, column: 26, scope: !1304)
!1349 = !{!1350, !875, i64 32}
!1350 = !{!"logger_stats", !875, i64 0, !875, i64 8, !875, i64 16, !875, i64 24, !875, i64 32}
!1351 = !DILocation(line: 798, column: 9, scope: !1304)
!1352 = !DILocation(line: 801, column: 14, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 801, column: 13)
!1354 = !DILocation(line: 801, column: 13, scope: !1304)
!1355 = !DILocation(line: 802, column: 26, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 802, column: 17)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 801, column: 26)
!1358 = !DILocation(line: 802, column: 17, scope: !1357)
!1359 = !DILocation(line: 803, column: 29, scope: !1356)
!1360 = !DILocation(line: 803, column: 38, scope: !1356)
!1361 = !DILocation(line: 803, column: 26, scope: !1356)
!1362 = !DILocation(line: 803, column: 17, scope: !1356)
!1363 = !DILocation(line: 804, column: 26, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 804, column: 17)
!1365 = !DILocation(line: 804, column: 17, scope: !1357)
!1366 = !DILocation(line: 807, column: 22, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 806, column: 16)
!1368 = !DILocation(line: 808, column: 26, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 808, column: 17)
!1370 = !DILocation(line: 808, column: 17, scope: !1367)
!1371 = !DILocation(line: 0, scope: !1353)
!1372 = !DILocation(line: 811, column: 9, scope: !1304)
!1373 = !DILocation(line: 812, column: 5, scope: !1296)
!1374 = distinct !{!1374, !1316, !1373, !1254}
!1375 = !DILocation(line: 814, column: 5, scope: !1296)
!1376 = !DISubprogram(name: "strerror", scope: !1377, file: !1377, line: 397, type: !1378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1377 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!139, !129}
!1380 = !DISubprogram(name: "memset", scope: !1377, file: !1377, line: 61, type: !1381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!99, !99, !129, !419}
!1383 = !DISubprogram(name: "usleep", scope: !1301, file: !1301, line: 460, type: !1384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!129, !1302}
!1386 = !DISubprogram(name: "pthread_cond_wait", scope: !836, file: !836, line: 986, type: !1387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!129, !1389, !1390}
!1389 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1276)
!1390 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !930)
!1391 = distinct !DISubprogram(name: "logger_thread_read", scope: !3, file: !3, line: 600, type: !1392, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1395)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!129, !429, !1394}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1395 = !{!1396, !1397, !1398, !1399, !1400, !1401, !1405, !1406, !1408}
!1396 = !DILocalVariable(name: "l", arg: 1, scope: !1391, file: !3, line: 600, type: !429)
!1397 = !DILocalVariable(name: "ls", arg: 2, scope: !1391, file: !3, line: 600, type: !1394)
!1398 = !DILocalVariable(name: "size", scope: !1391, file: !3, line: 601, type: !7)
!1399 = !DILocalVariable(name: "pos", scope: !1391, file: !3, line: 602, type: !7)
!1400 = !DILocalVariable(name: "data", scope: !1391, file: !3, line: 603, type: !138)
!1401 = !DILocalVariable(name: "scratch", scope: !1391, file: !3, line: 604, type: !1402)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 32768, elements: !1403)
!1403 = !{!1404}
!1404 = !DISubrange(count: 4096)
!1405 = !DILocalVariable(name: "e", scope: !1391, file: !3, line: 605, type: !100)
!1406 = !DILocalVariable(name: "ret", scope: !1407, file: !3, line: 617, type: !38)
!1407 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 616, column: 45)
!1408 = !DILocalVariable(name: "scratch_len", scope: !1407, file: !3, line: 618, type: !129)
!1409 = !DILocation(line: 0, scope: !1391)
!1410 = !DILocation(line: 601, column: 5, scope: !1391)
!1411 = !DILocation(line: 604, column: 5, scope: !1391)
!1412 = !DILocation(line: 604, column: 10, scope: !1391)
!1413 = !DILocation(line: 606, column: 28, scope: !1391)
!1414 = !DILocation(line: 606, column: 5, scope: !1391)
!1415 = !DILocation(line: 607, column: 31, scope: !1391)
!1416 = !DILocation(line: 607, column: 12, scope: !1391)
!1417 = !DILocation(line: 608, column: 5, scope: !1391)
!1418 = !DILocation(line: 610, column: 14, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 610, column: 9)
!1420 = !DILocation(line: 610, column: 9, scope: !1391)
!1421 = !DILocation(line: 616, column: 18, scope: !1391)
!1422 = !DILocation(line: 616, column: 16, scope: !1391)
!1423 = !DILocation(line: 616, column: 23, scope: !1391)
!1424 = !DILocation(line: 616, column: 26, scope: !1391)
!1425 = !DILocation(line: 616, column: 40, scope: !1391)
!1426 = !DILocation(line: 616, column: 5, scope: !1391)
!1427 = !DILocation(line: 611, column: 9, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 610, column: 23)
!1429 = distinct !{!1429, !1426, !1430, !1254}
!1430 = !DILocation(line: 628, column: 5, scope: !1391)
!1431 = !DILocation(line: 618, column: 9, scope: !1407)
!1432 = !DILocation(line: 0, scope: !1407)
!1433 = !DILocation(line: 618, column: 13, scope: !1407)
!1434 = !DILocation(line: 619, column: 32, scope: !1407)
!1435 = !DILocation(line: 619, column: 13, scope: !1407)
!1436 = !DILocation(line: 620, column: 15, scope: !1407)
!1437 = !DILocation(line: 621, column: 17, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 621, column: 13)
!1439 = !DILocation(line: 621, column: 13, scope: !1407)
!1440 = !DILocation(line: 623, column: 21, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 621, column: 43)
!1442 = !DILocation(line: 623, column: 13, scope: !1441)
!1443 = !DILocation(line: 624, column: 9, scope: !1441)
!1444 = !DILocation(line: 625, column: 39, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 624, column: 16)
!1446 = !DILocation(line: 625, column: 55, scope: !1445)
!1447 = !DILocation(line: 625, column: 13, scope: !1445)
!1448 = !DILocation(line: 627, column: 38, scope: !1407)
!1449 = !DILocation(line: 627, column: 48, scope: !1407)
!1450 = !DILocation(line: 627, column: 45, scope: !1407)
!1451 = !DILocation(line: 627, column: 33, scope: !1407)
!1452 = !DILocation(line: 627, column: 43, scope: !1407)
!1453 = !DILocation(line: 627, column: 13, scope: !1407)
!1454 = !DILocation(line: 629, column: 5, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 629, column: 5)
!1456 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 629, column: 5)
!1457 = !DILocation(line: 629, column: 5, scope: !1456)
!1458 = !DILocation(line: 631, column: 5, scope: !1391)
!1459 = !DILocation(line: 632, column: 27, scope: !1391)
!1460 = !DILocation(line: 632, column: 32, scope: !1391)
!1461 = !DILocation(line: 632, column: 12, scope: !1391)
!1462 = !DILocation(line: 633, column: 30, scope: !1391)
!1463 = !DILocation(line: 634, column: 24, scope: !1391)
!1464 = !DILocation(line: 635, column: 16, scope: !1391)
!1465 = !DILocation(line: 637, column: 5, scope: !1391)
!1466 = !DILocation(line: 638, column: 14, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 638, column: 9)
!1468 = !DILocation(line: 638, column: 9, scope: !1391)
!1469 = !DILocation(line: 639, column: 17, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 638, column: 23)
!1471 = !DILocation(line: 639, column: 9, scope: !1470)
!1472 = !DILocation(line: 640, column: 9, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 640, column: 9)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 640, column: 9)
!1475 = !DILocation(line: 642, column: 12, scope: !1391)
!1476 = !DILocation(line: 642, column: 5, scope: !1391)
!1477 = !DILocation(line: 643, column: 1, scope: !1391)
!1478 = distinct !DISubprogram(name: "logger_thread_poll_watchers", scope: !3, file: !3, line: 656, type: !1479, scopeLine: 656, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1481)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!129, !129, !129}
!1481 = !{!1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1493, !1494, !1498, !1501, !1502}
!1482 = !DILocalVariable(name: "force_poll", arg: 1, scope: !1478, file: !3, line: 656, type: !129)
!1483 = !DILocalVariable(name: "watcher", arg: 2, scope: !1478, file: !3, line: 656, type: !129)
!1484 = !DILocalVariable(name: "x", scope: !1478, file: !3, line: 657, type: !129)
!1485 = !DILocalVariable(name: "nfd", scope: !1478, file: !3, line: 658, type: !129)
!1486 = !DILocalVariable(name: "data", scope: !1478, file: !3, line: 659, type: !138)
!1487 = !DILocalVariable(name: "data_size", scope: !1478, file: !3, line: 660, type: !7)
!1488 = !DILocalVariable(name: "flushed", scope: !1478, file: !3, line: 661, type: !129)
!1489 = !DILocalVariable(name: "w", scope: !1490, file: !3, line: 664, type: !756)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 663, column: 41)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 663, column: 5)
!1492 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 663, column: 5)
!1493 = !DILocalVariable(name: "ret", scope: !1478, file: !3, line: 688, type: !129)
!1494 = !DILocalVariable(name: "w", scope: !1495, file: !3, line: 697, type: !756)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 696, column: 41)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 696, column: 5)
!1497 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 696, column: 5)
!1498 = !DILocalVariable(name: "buf", scope: !1499, file: !3, line: 706, type: !1120)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 705, column: 53)
!1500 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 705, column: 13)
!1501 = !DILocalVariable(name: "res", scope: !1499, file: !3, line: 707, type: !129)
!1502 = !DILocalVariable(name: "total", scope: !1503, file: !3, line: 720, type: !129)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 719, column: 65)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 719, column: 24)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 716, column: 17)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 715, column: 67)
!1507 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 715, column: 13)
!1508 = !DILocation(line: 0, scope: !1478)
!1509 = !DILocation(line: 660, column: 5, scope: !1478)
!1510 = !DILocation(line: 660, column: 18, scope: !1478)
!1511 = !DILocation(line: 663, column: 5, scope: !1492)
!1512 = !DILocation(line: 664, column: 29, scope: !1490)
!1513 = !DILocation(line: 0, scope: !1490)
!1514 = !DILocation(line: 665, column: 15, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 665, column: 13)
!1516 = !DILocation(line: 665, column: 23, scope: !1515)
!1517 = !DILocation(line: 665, column: 27, scope: !1515)
!1518 = !DILocation(line: 665, column: 50, scope: !1515)
!1519 = !DILocation(line: 665, column: 53, scope: !1515)
!1520 = !DILocation(line: 665, column: 55, scope: !1515)
!1521 = !DILocation(line: 665, column: 13, scope: !1490)
!1522 = !DILocation(line: 668, column: 35, scope: !1490)
!1523 = !DILocation(line: 668, column: 16, scope: !1490)
!1524 = !DILocation(line: 669, column: 18, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 669, column: 13)
!1526 = !DILocation(line: 669, column: 13, scope: !1490)
!1527 = !DILocation(line: 670, column: 40, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 669, column: 27)
!1529 = !DILocation(line: 673, column: 9, scope: !1528)
!1530 = !DILocation(line: 673, column: 20, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 673, column: 20)
!1532 = !DILocation(line: 673, column: 20, scope: !1525)
!1533 = !DILocation(line: 674, column: 40, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 673, column: 32)
!1535 = !DILocation(line: 677, column: 9, scope: !1534)
!1536 = !DILocation(line: 0, scope: !1525)
!1537 = !{!1538, !850, i64 0}
!1538 = !{!"pollfd", !850, i64 0, !900, i64 4, !900, i64 6}
!1539 = !{!1538, !900, i64 4}
!1540 = !DILocation(line: 681, column: 12, scope: !1490)
!1541 = !DILocation(line: 681, column: 25, scope: !1490)
!1542 = !{!1178, !894, i64 32}
!1543 = !DILocation(line: 682, column: 5, scope: !1490)
!1544 = !DILocation(line: 663, column: 37, scope: !1491)
!1545 = !DILocation(line: 663, column: 19, scope: !1491)
!1546 = distinct !{!1546, !1511, !1547, !1254}
!1547 = !DILocation(line: 682, column: 5, scope: !1492)
!1548 = !DILocation(line: 684, column: 13, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 684, column: 9)
!1550 = !DILocation(line: 684, column: 9, scope: !1478)
!1551 = !DILocation(line: 685, column: 9, scope: !1549)
!1552 = !DILocation(line: 688, column: 38, scope: !1478)
!1553 = !DILocation(line: 688, column: 15, scope: !1478)
!1554 = !DILocation(line: 690, column: 13, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 690, column: 9)
!1556 = !DILocation(line: 690, column: 9, scope: !1478)
!1557 = !DILocation(line: 696, column: 5, scope: !1497)
!1558 = !DILocation(line: 691, column: 9, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 690, column: 18)
!1560 = !DILocation(line: 692, column: 9, scope: !1559)
!1561 = !DILocation(line: 697, column: 29, scope: !1495)
!1562 = !DILocation(line: 0, scope: !1495)
!1563 = !DILocation(line: 698, column: 15, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 698, column: 13)
!1565 = !DILocation(line: 698, column: 23, scope: !1564)
!1566 = !DILocation(line: 698, column: 27, scope: !1564)
!1567 = !DILocation(line: 698, column: 50, scope: !1564)
!1568 = !DILocation(line: 698, column: 53, scope: !1564)
!1569 = !DILocation(line: 698, column: 55, scope: !1564)
!1570 = !DILocation(line: 698, column: 13, scope: !1495)
!1571 = !DILocation(line: 699, column: 13, scope: !1564)
!1572 = !DILocation(line: 701, column: 19, scope: !1495)
!1573 = !DILocation(line: 705, column: 13, scope: !1500)
!1574 = !DILocation(line: 705, column: 35, scope: !1500)
!1575 = !{!1538, !900, i64 6}
!1576 = !DILocation(line: 705, column: 43, scope: !1500)
!1577 = !DILocation(line: 705, column: 13, scope: !1495)
!1578 = !DILocation(line: 706, column: 13, scope: !1499)
!1579 = !DILocation(line: 706, column: 18, scope: !1499)
!1580 = !DILocation(line: 707, column: 34, scope: !1499)
!1581 = !DILocation(line: 707, column: 38, scope: !1499)
!1582 = !{!1583, !823, i64 472}
!1583 = !{!"conn", !823, i64 0, !850, i64 8, !894, i64 12, !894, i64 13, !894, i64 14, !894, i64 15, !894, i64 16, !894, i64 17, !894, i64 18, !824, i64 20, !824, i64 24, !850, i64 28, !1584, i64 32, !900, i64 160, !900, i64 162, !823, i64 168, !823, i64 176, !850, i64 184, !850, i64 188, !823, i64 192, !823, i64 200, !823, i64 208, !850, i64 216, !823, i64 224, !850, i64 232, !850, i64 236, !824, i64 240, !850, i64 312, !824, i64 316, !824, i64 320, !824, i64 324, !850, i64 328, !1588, i64 332, !850, i64 360, !894, i64 364, !1590, i64 368, !824, i64 392, !875, i64 416, !875, i64 424, !900, i64 432, !850, i64 436, !850, i64 440, !823, i64 448, !823, i64 456, !823, i64 464, !823, i64 472, !823, i64 480, !823, i64 488}
!1584 = !{!"event", !1585, i64 0, !824, i64 40, !850, i64 56, !823, i64 64, !824, i64 72, !900, i64 104, !900, i64 106, !1587, i64 112}
!1585 = !{!"event_callback", !1586, i64 0, !900, i64 16, !824, i64 18, !824, i64 19, !824, i64 24, !823, i64 32}
!1586 = !{!"", !823, i64 0, !823, i64 8}
!1587 = !{!"timeval", !875, i64 0, !875, i64 8}
!1588 = !{!"sockaddr_in6", !900, i64 0, !900, i64 2, !850, i64 4, !1589, i64 8, !850, i64 24}
!1589 = !{!"in6_addr", !824, i64 0}
!1590 = !{!"", !823, i64 0, !875, i64 8, !875, i64 16}
!1591 = !DILocation(line: 707, column: 23, scope: !1499)
!1592 = !DILocation(line: 0, scope: !1499)
!1593 = !DILocation(line: 708, column: 21, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 708, column: 17)
!1595 = !DILocation(line: 708, column: 26, scope: !1594)
!1596 = !DILocation(line: 708, column: 30, scope: !1594)
!1597 = !DILocation(line: 708, column: 34, scope: !1594)
!1598 = !DILocation(line: 708, column: 40, scope: !1594)
!1599 = !DILocation(line: 708, column: 44, scope: !1594)
!1600 = !DILocation(line: 708, column: 50, scope: !1594)
!1601 = !DILocation(line: 708, column: 60, scope: !1594)
!1602 = !DILocation(line: 708, column: 63, scope: !1594)
!1603 = !DILocation(line: 708, column: 69, scope: !1594)
!1604 = !DILocation(line: 708, column: 17, scope: !1499)
!1605 = !DILocation(line: 710, column: 45, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 708, column: 87)
!1607 = !DILocation(line: 710, column: 17, scope: !1606)
!1608 = !DILocation(line: 711, column: 20, scope: !1606)
!1609 = !DILocation(line: 714, column: 9, scope: !1500)
!1610 = !DILocation(line: 714, column: 9, scope: !1499)
!1611 = !DILocation(line: 715, column: 40, scope: !1507)
!1612 = !DILocation(line: 715, column: 21, scope: !1507)
!1613 = !DILocation(line: 715, column: 58, scope: !1507)
!1614 = !DILocation(line: 715, column: 13, scope: !1495)
!1615 = !DILocation(line: 716, column: 39, scope: !1505)
!1616 = !DILocation(line: 716, column: 17, scope: !1505)
!1617 = !DILocation(line: 716, column: 47, scope: !1505)
!1618 = !DILocation(line: 716, column: 17, scope: !1506)
!1619 = !DILocation(line: 718, column: 45, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 716, column: 68)
!1621 = !DILocation(line: 718, column: 17, scope: !1620)
!1622 = !DILocation(line: 719, column: 13, scope: !1620)
!1623 = !DILocation(line: 719, column: 54, scope: !1504)
!1624 = !DILocation(line: 719, column: 24, scope: !1505)
!1625 = !DILocation(line: 0, scope: !1503)
!1626 = !DILocation(line: 723, column: 28, scope: !1503)
!1627 = !DILocation(line: 723, column: 17, scope: !1503)
!1628 = !DILocation(line: 725, column: 40, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 723, column: 31)
!1630 = !DILocation(line: 725, column: 49, scope: !1629)
!1631 = !DILocation(line: 725, column: 60, scope: !1629)
!1632 = !DILocation(line: 725, column: 33, scope: !1629)
!1633 = !DILocation(line: 726, column: 25, scope: !1629)
!1634 = !DILocation(line: 728, column: 41, scope: !1629)
!1635 = !DILocation(line: 728, column: 44, scope: !1629)
!1636 = !DILocation(line: 728, column: 48, scope: !1629)
!1637 = !{!1583, !823, i64 488}
!1638 = !DILocation(line: 728, column: 66, scope: !1629)
!1639 = !DILocation(line: 728, column: 33, scope: !1629)
!1640 = !DILocation(line: 729, column: 25, scope: !1629)
!1641 = !DILocation(line: 734, column: 21, scope: !1503)
!1642 = !DILocation(line: 735, column: 25, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 735, column: 25)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 734, column: 34)
!1645 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 734, column: 21)
!1646 = !DILocation(line: 735, column: 31, scope: !1643)
!1647 = !DILocation(line: 735, column: 41, scope: !1643)
!1648 = !DILocation(line: 735, column: 44, scope: !1643)
!1649 = !DILocation(line: 735, column: 50, scope: !1643)
!1650 = !DILocation(line: 735, column: 25, scope: !1644)
!1651 = !DILocation(line: 736, column: 53, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 735, column: 66)
!1653 = !DILocation(line: 736, column: 25, scope: !1652)
!1654 = !DILocation(line: 737, column: 21, scope: !1652)
!1655 = !DILocation(line: 739, column: 17, scope: !1644)
!1656 = !DILocation(line: 740, column: 49, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 739, column: 40)
!1658 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 739, column: 28)
!1659 = !DILocation(line: 740, column: 21, scope: !1657)
!1660 = !DILocation(line: 741, column: 17, scope: !1657)
!1661 = !DILocation(line: 742, column: 33, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 741, column: 24)
!1663 = !DILocation(line: 742, column: 36, scope: !1662)
!1664 = !DILocation(line: 742, column: 21, scope: !1662)
!1665 = !DILocation(line: 743, column: 29, scope: !1662)
!1666 = !DILocation(line: 661, column: 9, scope: !1478)
!1667 = !DILocation(line: 747, column: 12, scope: !1495)
!1668 = !DILocation(line: 748, column: 5, scope: !1495)
!1669 = !DILocation(line: 696, column: 37, scope: !1496)
!1670 = !DILocation(line: 696, column: 19, scope: !1496)
!1671 = distinct !{!1671, !1557, !1672, !1254}
!1672 = !DILocation(line: 748, column: 5, scope: !1497)
!1673 = !DILocation(line: 749, column: 12, scope: !1478)
!1674 = !DILocation(line: 749, column: 5, scope: !1478)
!1675 = !DILocation(line: 750, column: 1, scope: !1478)
!1676 = distinct !DISubprogram(name: "logger_thread_flush_stats", scope: !3, file: !3, line: 752, type: !1677, scopeLine: 752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1679)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{null, !1394}
!1679 = !{!1680}
!1680 = !DILocalVariable(name: "ls", arg: 1, scope: !1676, file: !3, line: 752, type: !1394)
!1681 = !DILocation(line: 0, scope: !1676)
!1682 = !DILocation(line: 753, column: 5, scope: !1676)
!1683 = !DILocation(line: 754, column: 38, scope: !1676)
!1684 = !DILocation(line: 754, column: 31, scope: !1676)
!1685 = !DILocation(line: 756, column: 38, scope: !1676)
!1686 = !DILocation(line: 756, column: 31, scope: !1676)
!1687 = !DILocation(line: 758, column: 38, scope: !1676)
!1688 = !DILocation(line: 758, column: 34, scope: !1676)
!1689 = !DILocation(line: 758, column: 32, scope: !1676)
!1690 = !{!1691, !850, i64 44}
!1691 = !{!"stats_state", !875, i64 0, !875, i64 8, !875, i64 16, !875, i64 24, !850, i64 32, !850, i64 36, !850, i64 40, !850, i64 44, !894, i64 48, !894, i64 49, !894, i64 50, !894, i64 51}
!1692 = !DILocation(line: 759, column: 5, scope: !1676)
!1693 = !DILocation(line: 760, column: 1, scope: !1676)
!1694 = !DISubprogram(name: "bipbuf_peek_all", scope: !446, file: !446, line: 62, type: !1695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!138, !1697, !1699}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1700 = distinct !DISubprogram(name: "logger_thread_parse_entry", scope: !3, file: !3, line: 519, type: !1701, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1704)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!38, !100, !1394, !139, !1703}
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1710}
!1705 = !DILocalVariable(name: "e", arg: 1, scope: !1700, file: !3, line: 519, type: !100)
!1706 = !DILocalVariable(name: "ls", arg: 2, scope: !1700, file: !3, line: 519, type: !1394)
!1707 = !DILocalVariable(name: "scratch", arg: 3, scope: !1700, file: !3, line: 520, type: !139)
!1708 = !DILocalVariable(name: "scratch_len", arg: 4, scope: !1700, file: !3, line: 520, type: !1703)
!1709 = !DILocalVariable(name: "total", scope: !1700, file: !3, line: 521, type: !129)
!1710 = !DILocalVariable(name: "d", scope: !1700, file: !3, line: 522, type: !457)
!1711 = !DILocation(line: 0, scope: !1700)
!1712 = !DILocation(line: 522, column: 50, scope: !1700)
!1713 = !DILocation(line: 522, column: 31, scope: !1700)
!1714 = !DILocation(line: 523, column: 5, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 523, column: 5)
!1716 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 523, column: 5)
!1717 = !DILocation(line: 523, column: 5, scope: !1716)
!1718 = !DILocation(line: 524, column: 16, scope: !1700)
!1719 = !{!1009, !823, i64 16}
!1720 = !DILocation(line: 524, column: 13, scope: !1700)
!1721 = !DILocation(line: 526, column: 15, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 526, column: 9)
!1723 = !DILocation(line: 526, column: 39, scope: !1722)
!1724 = !DILocation(line: 526, column: 42, scope: !1722)
!1725 = !DILocation(line: 526, column: 48, scope: !1722)
!1726 = !DILocation(line: 526, column: 9, scope: !1700)
!1727 = !DILocation(line: 530, column: 22, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 529, column: 12)
!1729 = !DILocation(line: 533, column: 5, scope: !1700)
!1730 = !DILocation(line: 534, column: 1, scope: !1700)
!1731 = distinct !DISubprogram(name: "logger_thread_write_entry", scope: !3, file: !3, line: 537, type: !1732, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1734)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !100, !1394, !139, !129}
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740, !1741, !1745}
!1735 = !DILocalVariable(name: "e", arg: 1, scope: !1731, file: !3, line: 537, type: !100)
!1736 = !DILocalVariable(name: "ls", arg: 2, scope: !1731, file: !3, line: 537, type: !1394)
!1737 = !DILocalVariable(name: "scratch", arg: 3, scope: !1731, file: !3, line: 538, type: !139)
!1738 = !DILocalVariable(name: "scratch_len", arg: 4, scope: !1731, file: !3, line: 538, type: !129)
!1739 = !DILocalVariable(name: "x", scope: !1731, file: !3, line: 539, type: !129)
!1740 = !DILocalVariable(name: "total", scope: !1731, file: !3, line: 539, type: !129)
!1741 = !DILocalVariable(name: "w", scope: !1742, file: !3, line: 542, type: !756)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !3, line: 541, column: 41)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 541, column: 5)
!1744 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 541, column: 5)
!1745 = !DILocalVariable(name: "skip_scr", scope: !1742, file: !3, line: 543, type: !139)
!1746 = !DILocation(line: 0, scope: !1731)
!1747 = !DILocation(line: 541, column: 5, scope: !1744)
!1748 = !DILocation(line: 542, column: 29, scope: !1742)
!1749 = !DILocation(line: 0, scope: !1742)
!1750 = !DILocation(line: 544, column: 15, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 544, column: 13)
!1752 = !DILocation(line: 544, column: 23, scope: !1751)
!1753 = !DILocation(line: 544, column: 27, scope: !1751)
!1754 = !DILocation(line: 544, column: 30, scope: !1751)
!1755 = !DILocation(line: 544, column: 42, scope: !1751)
!1756 = !DILocation(line: 544, column: 37, scope: !1751)
!1757 = !DILocation(line: 544, column: 50, scope: !1751)
!1758 = !DILocation(line: 544, column: 55, scope: !1751)
!1759 = !DILocation(line: 544, column: 59, scope: !1751)
!1760 = !DILocation(line: 544, column: 62, scope: !1751)
!1761 = !DILocation(line: 544, column: 71, scope: !1751)
!1762 = !DILocation(line: 544, column: 66, scope: !1751)
!1763 = !DILocation(line: 544, column: 13, scope: !1742)
!1764 = !DILocation(line: 550, column: 20, scope: !1742)
!1765 = !{i8 0, i8 2}
!1766 = !DILocation(line: 550, column: 33, scope: !1742)
!1767 = !DILocation(line: 551, column: 53, scope: !1742)
!1768 = !DILocation(line: 551, column: 56, scope: !1742)
!1769 = !DILocation(line: 551, column: 38, scope: !1742)
!1770 = !DILocation(line: 551, column: 81, scope: !1742)
!1771 = !DILocation(line: 550, column: 9, scope: !1742)
!1772 = !DILocation(line: 552, column: 17, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 552, column: 17)
!1774 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 551, column: 90)
!1775 = !DILocation(line: 552, column: 51, scope: !1773)
!1776 = !DILocation(line: 552, column: 17, scope: !1774)
!1777 = !DILocation(line: 554, column: 17, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 552, column: 57)
!1779 = !DILocation(line: 554, column: 33, scope: !1778)
!1780 = !DILocation(line: 555, column: 13, scope: !1778)
!1781 = distinct !{!1781, !1771, !1782, !1254}
!1782 = !DILocation(line: 556, column: 9, scope: !1742)
!1783 = !DILocation(line: 558, column: 16, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 558, column: 13)
!1785 = !DILocation(line: 558, column: 13, scope: !1742)
!1786 = !DILocation(line: 560, column: 13, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 558, column: 30)
!1788 = !DILocation(line: 560, column: 16, scope: !1787)
!1789 = !DILocation(line: 562, column: 13, scope: !1787)
!1790 = !DILocation(line: 565, column: 16, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 565, column: 13)
!1792 = !{!1178, !875, i64 16}
!1793 = !DILocation(line: 565, column: 24, scope: !1791)
!1794 = !DILocation(line: 565, column: 13, scope: !1742)
!1795 = !DILocation(line: 566, column: 21, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 565, column: 29)
!1797 = !DILocation(line: 567, column: 23, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 567, column: 17)
!1799 = !DILocation(line: 567, column: 30, scope: !1798)
!1800 = !DILocation(line: 567, column: 33, scope: !1798)
!1801 = !DILocation(line: 567, column: 39, scope: !1798)
!1802 = !DILocation(line: 567, column: 17, scope: !1796)
!1803 = !DILocation(line: 569, column: 17, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 567, column: 45)
!1805 = !DILocation(line: 571, column: 17, scope: !1804)
!1806 = !DILocation(line: 573, column: 25, scope: !1796)
!1807 = !DILocation(line: 573, column: 28, scope: !1796)
!1808 = !DILocation(line: 573, column: 13, scope: !1796)
!1809 = !DILocation(line: 574, column: 24, scope: !1796)
!1810 = !DILocation(line: 575, column: 9, scope: !1796)
!1811 = !DILocation(line: 577, column: 22, scope: !1742)
!1812 = !DILocation(line: 577, column: 25, scope: !1742)
!1813 = !DILocation(line: 577, column: 9, scope: !1742)
!1814 = !DILocation(line: 579, column: 5, scope: !1742)
!1815 = !DILocation(line: 541, column: 37, scope: !1743)
!1816 = !DILocation(line: 541, column: 19, scope: !1743)
!1817 = distinct !{!1817, !1747, !1818, !1254}
!1818 = !DILocation(line: 579, column: 5, scope: !1744)
!1819 = !DILocation(line: 580, column: 1, scope: !1731)
!1820 = !DISubprogram(name: "bipbuf_poll", scope: !446, file: !446, line: 69, type: !1821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!138, !444, !925}
!1823 = !DISubprogram(name: "snprintf", scope: !991, file: !991, line: 354, type: !1824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!129, !1826, !419, !1138, null}
!1826 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !139)
!1827 = !DISubprogram(name: "poll", scope: !775, file: !775, line: 54, type: !1828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!129, !1830, !1831, !129}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "nfds_t", file: !775, line: 33, baseType: !118)
!1832 = !DISubprogram(name: "perror", scope: !991, file: !991, line: 775, type: !1833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !1139}
!1835 = distinct !DISubprogram(name: "logger_thread_close_watcher", scope: !3, file: !3, line: 587, type: !1836, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1838)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !756}
!1838 = !{!1839}
!1839 = !DILocalVariable(name: "w", arg: 1, scope: !1835, file: !3, line: 587, type: !756)
!1840 = !DILocation(line: 0, scope: !1835)
!1841 = !DILocation(line: 589, column: 17, scope: !1835)
!1842 = !DILocation(line: 589, column: 5, scope: !1835)
!1843 = !DILocation(line: 589, column: 21, scope: !1835)
!1844 = !DILocation(line: 590, column: 30, scope: !1835)
!1845 = !DILocation(line: 590, column: 5, scope: !1835)
!1846 = !DILocation(line: 591, column: 18, scope: !1835)
!1847 = !DILocation(line: 592, column: 20, scope: !1835)
!1848 = !DILocation(line: 592, column: 5, scope: !1835)
!1849 = !DILocation(line: 593, column: 10, scope: !1835)
!1850 = !DILocation(line: 593, column: 5, scope: !1835)
!1851 = !DILocation(line: 594, column: 5, scope: !1835)
!1852 = !DILocation(line: 595, column: 1, scope: !1835)
!1853 = !DISubprogram(name: "fwrite", scope: !991, file: !991, line: 652, type: !1854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!419, !1856, !419, !419, !1088}
!1856 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !469)
!1857 = !DISubprogram(name: "sidethread_conn_close", scope: !44, file: !44, line: 961, type: !1858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null, !141}
!1860 = !DISubprogram(name: "bipbuf_free", scope: !446, file: !446, line: 38, type: !1861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{null, !444}
!1863 = !DISubprogram(name: "STATS_LOCK", scope: !44, file: !44, line: 991, type: !819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1864 = !DISubprogram(name: "STATS_UNLOCK", scope: !44, file: !44, line: 992, type: !819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1865 = !DISubprogram(name: "pthread_join", scope: !836, file: !836, line: 215, type: !1866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!129, !278, !1868}
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!1869 = distinct !DISubprogram(name: "_logger_log_text", scope: !3, file: !3, line: 54, type: !467, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1870)
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1876}
!1871 = !DILocalVariable(name: "e", arg: 1, scope: !1869, file: !3, line: 54, type: !100)
!1872 = !DILocalVariable(name: "d", arg: 2, scope: !1869, file: !3, line: 54, type: !457)
!1873 = !DILocalVariable(name: "entry", arg: 3, scope: !1869, file: !3, line: 54, type: !469)
!1874 = !DILocalVariable(name: "ap", arg: 4, scope: !1869, file: !3, line: 54, type: !471)
!1875 = !DILocalVariable(name: "reqlen", scope: !1869, file: !3, line: 55, type: !129)
!1876 = !DILocalVariable(name: "total", scope: !1869, file: !3, line: 56, type: !129)
!1877 = !DILocation(line: 0, scope: !1869)
!1878 = !DILocation(line: 55, column: 21, scope: !1869)
!1879 = !DILocation(line: 56, column: 27, scope: !1869)
!1880 = !DILocation(line: 56, column: 45, scope: !1869)
!1881 = !DILocation(line: 56, column: 56, scope: !1869)
!1882 = !{!1009, !823, i64 24}
!1883 = !DILocation(line: 56, column: 17, scope: !1869)
!1884 = !DILocation(line: 57, column: 15, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 57, column: 9)
!1886 = !DILocation(line: 57, column: 9, scope: !1869)
!1887 = !DILocation(line: 58, column: 17, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 57, column: 21)
!1889 = !DILocation(line: 58, column: 9, scope: !1888)
!1890 = !DILocation(line: 59, column: 5, scope: !1888)
!1891 = !DILocation(line: 60, column: 21, scope: !1869)
!1892 = !DILocation(line: 60, column: 8, scope: !1869)
!1893 = !DILocation(line: 60, column: 13, scope: !1869)
!1894 = !DILocation(line: 61, column: 1, scope: !1869)
!1895 = distinct !DISubprogram(name: "_logger_parse_text", scope: !3, file: !3, line: 195, type: !482, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!1896 = !{!1897, !1898}
!1897 = !DILocalVariable(name: "e", arg: 1, scope: !1895, file: !3, line: 195, type: !100)
!1898 = !DILocalVariable(name: "scratch", arg: 2, scope: !1895, file: !3, line: 195, type: !139)
!1899 = !DILocation(line: 0, scope: !1895)
!1900 = !DILocation(line: 197, column: 24, scope: !1895)
!1901 = !{!1587, !875, i64 0}
!1902 = !DILocation(line: 197, column: 13, scope: !1895)
!1903 = !DILocation(line: 197, column: 43, scope: !1895)
!1904 = !{!1587, !875, i64 8}
!1905 = !DILocation(line: 197, column: 32, scope: !1895)
!1906 = !DILocation(line: 198, column: 37, scope: !1895)
!1907 = !DILocation(line: 198, column: 42, scope: !1895)
!1908 = !DILocation(line: 196, column: 12, scope: !1895)
!1909 = !DILocation(line: 196, column: 5, scope: !1895)
!1910 = distinct !DISubprogram(name: "_logger_log_evictions", scope: !3, file: !3, line: 63, type: !467, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1911)
!1911 = !{!1912, !1913, !1914, !1915, !1916, !1917}
!1912 = !DILocalVariable(name: "e", arg: 1, scope: !1910, file: !3, line: 63, type: !100)
!1913 = !DILocalVariable(name: "d", arg: 2, scope: !1910, file: !3, line: 63, type: !457)
!1914 = !DILocalVariable(name: "entry", arg: 3, scope: !1910, file: !3, line: 63, type: !469)
!1915 = !DILocalVariable(name: "ap", arg: 4, scope: !1910, file: !3, line: 63, type: !471)
!1916 = !DILocalVariable(name: "it", scope: !1910, file: !3, line: 64, type: !494)
!1917 = !DILocalVariable(name: "le", scope: !1910, file: !3, line: 65, type: !646)
!1918 = !DILocation(line: 0, scope: !1910)
!1919 = !DILocation(line: 67, column: 24, scope: !1910)
!1920 = !DILocation(line: 67, column: 32, scope: !1910)
!1921 = !DILocation(line: 67, column: 19, scope: !1910)
!1922 = !DILocation(line: 67, column: 55, scope: !1910)
!1923 = !DILocation(line: 67, column: 69, scope: !1910)
!1924 = !DILocation(line: 67, column: 67, scope: !1910)
!1925 = !DILocation(line: 67, column: 39, scope: !1910)
!1926 = !DILocation(line: 65, column: 65, scope: !1910)
!1927 = !DILocation(line: 67, column: 9, scope: !1910)
!1928 = !DILocation(line: 67, column: 17, scope: !1910)
!1929 = !{!1930, !1930, i64 0}
!1930 = !{!"long long", !824, i64 0}
!1931 = !DILocation(line: 68, column: 18, scope: !1910)
!1932 = !DILocation(line: 68, column: 37, scope: !1910)
!1933 = !DILocation(line: 68, column: 31, scope: !1910)
!1934 = !DILocation(line: 68, column: 9, scope: !1910)
!1935 = !DILocation(line: 68, column: 16, scope: !1910)
!1936 = !DILocation(line: 69, column: 24, scope: !1910)
!1937 = !DILocation(line: 69, column: 9, scope: !1910)
!1938 = !DILocation(line: 69, column: 18, scope: !1910)
!1939 = !DILocation(line: 70, column: 20, scope: !1910)
!1940 = !DILocation(line: 70, column: 9, scope: !1910)
!1941 = !DILocation(line: 70, column: 14, scope: !1910)
!1942 = !DILocation(line: 71, column: 22, scope: !1910)
!1943 = !DILocation(line: 71, column: 9, scope: !1910)
!1944 = !DILocation(line: 71, column: 16, scope: !1910)
!1945 = !DILocation(line: 72, column: 17, scope: !1910)
!1946 = !DILocation(line: 72, column: 9, scope: !1910)
!1947 = !DILocation(line: 72, column: 15, scope: !1910)
!1948 = !DILocation(line: 73, column: 12, scope: !1910)
!1949 = !DILocation(line: 73, column: 21, scope: !1910)
!1950 = !DILocation(line: 73, column: 39, scope: !1910)
!1951 = !DILocation(line: 73, column: 35, scope: !1910)
!1952 = !DILocation(line: 73, column: 5, scope: !1910)
!1953 = !DILocation(line: 74, column: 54, scope: !1910)
!1954 = !DILocation(line: 74, column: 50, scope: !1910)
!1955 = !DILocation(line: 74, column: 48, scope: !1910)
!1956 = !DILocation(line: 74, column: 8, scope: !1910)
!1957 = !DILocation(line: 74, column: 13, scope: !1910)
!1958 = !DILocation(line: 75, column: 1, scope: !1910)
!1959 = distinct !DISubprogram(name: "_logger_parse_ee", scope: !3, file: !3, line: 239, type: !482, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1960)
!1960 = !{!1961, !1962, !1963, !1964, !1968}
!1961 = !DILocalVariable(name: "e", arg: 1, scope: !1959, file: !3, line: 239, type: !100)
!1962 = !DILocalVariable(name: "scratch", arg: 2, scope: !1959, file: !3, line: 239, type: !139)
!1963 = !DILocalVariable(name: "total", scope: !1959, file: !3, line: 240, type: !129)
!1964 = !DILocalVariable(name: "keybuf", scope: !1959, file: !3, line: 241, type: !1965)
!1965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 6008, elements: !1966)
!1966 = !{!1967}
!1967 = !DISubrange(count: 751)
!1968 = !DILocalVariable(name: "le", scope: !1959, file: !3, line: 242, type: !646)
!1969 = !DILocation(line: 0, scope: !1959)
!1970 = !DILocation(line: 241, column: 5, scope: !1959)
!1971 = !DILocation(line: 241, column: 10, scope: !1959)
!1972 = !DILocation(line: 242, column: 65, scope: !1959)
!1973 = !DILocation(line: 243, column: 15, scope: !1959)
!1974 = !DILocation(line: 243, column: 36, scope: !1959)
!1975 = !DILocation(line: 243, column: 32, scope: !1959)
!1976 = !DILocation(line: 243, column: 5, scope: !1959)
!1977 = !DILocation(line: 246, column: 24, scope: !1959)
!1978 = !DILocation(line: 246, column: 43, scope: !1959)
!1979 = !DILocation(line: 246, column: 76, scope: !1959)
!1980 = !DILocation(line: 247, column: 26, scope: !1959)
!1981 = !DILocation(line: 248, column: 32, scope: !1959)
!1982 = !DILocation(line: 248, column: 45, scope: !1959)
!1983 = !DILocation(line: 248, column: 57, scope: !1959)
!1984 = !DILocation(line: 249, column: 17, scope: !1959)
!1985 = !DILocation(line: 249, column: 24, scope: !1959)
!1986 = !DILocation(line: 249, column: 13, scope: !1959)
!1987 = !DILocation(line: 249, column: 30, scope: !1959)
!1988 = !DILocation(line: 249, column: 41, scope: !1959)
!1989 = !DILocation(line: 248, column: 53, scope: !1959)
!1990 = !DILocation(line: 247, column: 35, scope: !1959)
!1991 = !DILocation(line: 247, column: 21, scope: !1959)
!1992 = !DILocation(line: 246, column: 32, scope: !1959)
!1993 = !DILocation(line: 246, column: 13, scope: !1959)
!1994 = !DILocation(line: 244, column: 13, scope: !1959)
!1995 = !DILocation(line: 252, column: 1, scope: !1959)
!1996 = !DILocation(line: 251, column: 5, scope: !1959)
!1997 = distinct !DISubprogram(name: "_logger_log_item_get", scope: !3, file: !3, line: 96, type: !467, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1998)
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009}
!1999 = !DILocalVariable(name: "e", arg: 1, scope: !1997, file: !3, line: 96, type: !100)
!2000 = !DILocalVariable(name: "d", arg: 2, scope: !1997, file: !3, line: 96, type: !457)
!2001 = !DILocalVariable(name: "entry", arg: 3, scope: !1997, file: !3, line: 96, type: !469)
!2002 = !DILocalVariable(name: "ap", arg: 4, scope: !1997, file: !3, line: 96, type: !471)
!2003 = !DILocalVariable(name: "was_found", scope: !1997, file: !3, line: 97, type: !129)
!2004 = !DILocalVariable(name: "key", scope: !1997, file: !3, line: 98, type: !139)
!2005 = !DILocalVariable(name: "nkey", scope: !1997, file: !3, line: 99, type: !129)
!2006 = !DILocalVariable(name: "nbytes", scope: !1997, file: !3, line: 100, type: !129)
!2007 = !DILocalVariable(name: "clsid", scope: !1997, file: !3, line: 101, type: !106)
!2008 = !DILocalVariable(name: "sfd", scope: !1997, file: !3, line: 102, type: !129)
!2009 = !DILocalVariable(name: "le", scope: !1997, file: !3, line: 104, type: !658)
!2010 = !DILocation(line: 0, scope: !1997)
!2011 = !DILocation(line: 97, column: 21, scope: !1997)
!2012 = !DILocation(line: 98, column: 17, scope: !1997)
!2013 = !DILocation(line: 99, column: 16, scope: !1997)
!2014 = !DILocation(line: 100, column: 18, scope: !1997)
!2015 = !DILocation(line: 101, column: 21, scope: !1997)
!2016 = !DILocation(line: 102, column: 15, scope: !1997)
!2017 = !DILocation(line: 105, column: 21, scope: !1997)
!2018 = !DILocation(line: 105, column: 9, scope: !1997)
!2019 = !DILocation(line: 105, column: 19, scope: !1997)
!2020 = !DILocation(line: 106, column: 16, scope: !1997)
!2021 = !DILocation(line: 106, column: 9, scope: !1997)
!2022 = !DILocation(line: 106, column: 14, scope: !1997)
!2023 = !DILocation(line: 107, column: 9, scope: !1997)
!2024 = !DILocation(line: 107, column: 16, scope: !1997)
!2025 = !DILocation(line: 108, column: 9, scope: !1997)
!2026 = !DILocation(line: 108, column: 15, scope: !1997)
!2027 = !DILocation(line: 109, column: 12, scope: !1997)
!2028 = !DILocation(line: 109, column: 26, scope: !1997)
!2029 = !DILocation(line: 109, column: 5, scope: !1997)
!2030 = !DILocation(line: 110, column: 9, scope: !1997)
!2031 = !DILocation(line: 110, column: 13, scope: !1997)
!2032 = !DILocation(line: 111, column: 48, scope: !1997)
!2033 = !DILocation(line: 111, column: 8, scope: !1997)
!2034 = !DILocation(line: 111, column: 13, scope: !1997)
!2035 = !DILocation(line: 112, column: 1, scope: !1997)
!2036 = distinct !DISubprogram(name: "_logger_parse_ige", scope: !3, file: !3, line: 223, type: !482, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2037)
!2037 = !{!2038, !2039, !2040, !2041, !2042, !2043}
!2038 = !DILocalVariable(name: "e", arg: 1, scope: !2036, file: !3, line: 223, type: !100)
!2039 = !DILocalVariable(name: "scratch", arg: 2, scope: !2036, file: !3, line: 223, type: !139)
!2040 = !DILocalVariable(name: "total", scope: !2036, file: !3, line: 224, type: !129)
!2041 = !DILocalVariable(name: "le", scope: !2036, file: !3, line: 225, type: !658)
!2042 = !DILocalVariable(name: "keybuf", scope: !2036, file: !3, line: 226, type: !1965)
!2043 = !DILocalVariable(name: "was_found_map", scope: !2036, file: !3, line: 227, type: !2044)
!2044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2045, size: 256, elements: !522)
!2045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1139)
!2046 = !DILocation(line: 0, scope: !2036)
!2047 = !DILocation(line: 226, column: 5, scope: !2036)
!2048 = !DILocation(line: 226, column: 10, scope: !2036)
!2049 = !DILocation(line: 227, column: 24, scope: !2036)
!2050 = !DILocation(line: 230, column: 15, scope: !2036)
!2051 = !DILocation(line: 230, column: 36, scope: !2036)
!2052 = !DILocation(line: 230, column: 32, scope: !2036)
!2053 = !DILocation(line: 230, column: 5, scope: !2036)
!2054 = !DILocation(line: 233, column: 24, scope: !2036)
!2055 = !DILocation(line: 233, column: 43, scope: !2036)
!2056 = !DILocation(line: 233, column: 76, scope: !2036)
!2057 = !DILocation(line: 234, column: 39, scope: !2036)
!2058 = !DILocation(line: 234, column: 21, scope: !2036)
!2059 = !DILocation(line: 234, column: 55, scope: !2036)
!2060 = !DILocation(line: 234, column: 66, scope: !2036)
!2061 = !DILocation(line: 235, column: 17, scope: !2036)
!2062 = !DILocation(line: 235, column: 24, scope: !2036)
!2063 = !DILocation(line: 235, column: 13, scope: !2036)
!2064 = !DILocation(line: 235, column: 30, scope: !2036)
!2065 = !DILocation(line: 235, column: 41, scope: !2036)
!2066 = !DILocation(line: 234, column: 51, scope: !2036)
!2067 = !DILocation(line: 233, column: 32, scope: !2036)
!2068 = !DILocation(line: 233, column: 13, scope: !2036)
!2069 = !DILocation(line: 231, column: 13, scope: !2036)
!2070 = !DILocation(line: 237, column: 1, scope: !2036)
!2071 = !DILocation(line: 236, column: 5, scope: !2036)
!2072 = distinct !DISubprogram(name: "_logger_log_item_store", scope: !3, file: !3, line: 114, type: !467, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2073)
!2073 = !{!2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086}
!2074 = !DILocalVariable(name: "e", arg: 1, scope: !2072, file: !3, line: 114, type: !100)
!2075 = !DILocalVariable(name: "d", arg: 2, scope: !2072, file: !3, line: 114, type: !457)
!2076 = !DILocalVariable(name: "entry", arg: 3, scope: !2072, file: !3, line: 114, type: !469)
!2077 = !DILocalVariable(name: "ap", arg: 4, scope: !2072, file: !3, line: 114, type: !471)
!2078 = !DILocalVariable(name: "status", scope: !2072, file: !3, line: 115, type: !90)
!2079 = !DILocalVariable(name: "comm", scope: !2072, file: !3, line: 116, type: !129)
!2080 = !DILocalVariable(name: "key", scope: !2072, file: !3, line: 117, type: !139)
!2081 = !DILocalVariable(name: "nkey", scope: !2072, file: !3, line: 118, type: !129)
!2082 = !DILocalVariable(name: "nbytes", scope: !2072, file: !3, line: 119, type: !129)
!2083 = !DILocalVariable(name: "ttl", scope: !2072, file: !3, line: 120, type: !161)
!2084 = !DILocalVariable(name: "clsid", scope: !2072, file: !3, line: 121, type: !106)
!2085 = !DILocalVariable(name: "sfd", scope: !2072, file: !3, line: 122, type: !129)
!2086 = !DILocalVariable(name: "le", scope: !2072, file: !3, line: 124, type: !667)
!2087 = !DILocation(line: 0, scope: !2072)
!2088 = !DILocation(line: 115, column: 35, scope: !2072)
!2089 = !DILocation(line: 116, column: 16, scope: !2072)
!2090 = !DILocation(line: 117, column: 17, scope: !2072)
!2091 = !DILocation(line: 118, column: 16, scope: !2072)
!2092 = !DILocation(line: 119, column: 18, scope: !2072)
!2093 = !DILocation(line: 120, column: 22, scope: !2072)
!2094 = !DILocation(line: 121, column: 21, scope: !2072)
!2095 = !DILocation(line: 122, column: 15, scope: !2072)
!2096 = !DILocation(line: 124, column: 69, scope: !2072)
!2097 = !DILocation(line: 125, column: 9, scope: !2072)
!2098 = !DILocation(line: 125, column: 16, scope: !2072)
!2099 = !DILocation(line: 126, column: 9, scope: !2072)
!2100 = !DILocation(line: 126, column: 13, scope: !2072)
!2101 = !DILocation(line: 127, column: 16, scope: !2072)
!2102 = !DILocation(line: 127, column: 9, scope: !2072)
!2103 = !DILocation(line: 127, column: 14, scope: !2072)
!2104 = !DILocation(line: 128, column: 9, scope: !2072)
!2105 = !DILocation(line: 128, column: 16, scope: !2072)
!2106 = !DILocation(line: 129, column: 9, scope: !2072)
!2107 = !DILocation(line: 129, column: 15, scope: !2072)
!2108 = !DILocation(line: 130, column: 13, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 130, column: 9)
!2110 = !DILocation(line: 130, column: 9, scope: !2072)
!2111 = !DILocation(line: 131, column: 25, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 130, column: 19)
!2113 = !DILocation(line: 131, column: 23, scope: !2112)
!2114 = !DILocation(line: 132, column: 5, scope: !2112)
!2115 = !DILocation(line: 133, column: 9, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 132, column: 12)
!2117 = !DILocation(line: 0, scope: !2109)
!2118 = !DILocation(line: 135, column: 12, scope: !2072)
!2119 = !DILocation(line: 135, column: 26, scope: !2072)
!2120 = !DILocation(line: 135, column: 5, scope: !2072)
!2121 = !DILocation(line: 136, column: 9, scope: !2072)
!2122 = !DILocation(line: 136, column: 13, scope: !2072)
!2123 = !DILocation(line: 137, column: 50, scope: !2072)
!2124 = !DILocation(line: 137, column: 8, scope: !2072)
!2125 = !DILocation(line: 137, column: 13, scope: !2072)
!2126 = !DILocation(line: 138, column: 1, scope: !2072)
!2127 = distinct !DISubprogram(name: "_logger_parse_ise", scope: !3, file: !3, line: 201, type: !482, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2128)
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2134, !2135, !2139}
!2129 = !DILocalVariable(name: "e", arg: 1, scope: !2127, file: !3, line: 201, type: !100)
!2130 = !DILocalVariable(name: "scratch", arg: 2, scope: !2127, file: !3, line: 201, type: !139)
!2131 = !DILocalVariable(name: "total", scope: !2127, file: !3, line: 202, type: !129)
!2132 = !DILocalVariable(name: "cmd", scope: !2127, file: !3, line: 203, type: !1139)
!2133 = !DILocalVariable(name: "keybuf", scope: !2127, file: !3, line: 204, type: !1965)
!2134 = !DILocalVariable(name: "le", scope: !2127, file: !3, line: 205, type: !667)
!2135 = !DILocalVariable(name: "status_map", scope: !2127, file: !3, line: 206, type: !2136)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2045, size: 384, elements: !2137)
!2137 = !{!2138}
!2138 = !DISubrange(count: 6)
!2139 = !DILocalVariable(name: "cmd_map", scope: !2127, file: !3, line: 208, type: !2140)
!2140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2045, size: 448, elements: !2141)
!2141 = !{!2142}
!2142 = !DISubrange(count: 7)
!2143 = !DILocation(line: 0, scope: !2127)
!2144 = !DILocation(line: 204, column: 5, scope: !2127)
!2145 = !DILocation(line: 204, column: 10, scope: !2127)
!2146 = !DILocation(line: 205, column: 69, scope: !2127)
!2147 = !DILocation(line: 206, column: 5, scope: !2127)
!2148 = !DILocation(line: 206, column: 24, scope: !2127)
!2149 = !DILocation(line: 208, column: 24, scope: !2127)
!2150 = !DILocation(line: 211, column: 13, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 211, column: 9)
!2152 = !DILocation(line: 211, column: 17, scope: !2151)
!2153 = !DILocation(line: 211, column: 9, scope: !2127)
!2154 = !DILocation(line: 212, column: 23, scope: !2151)
!2155 = !DILocation(line: 212, column: 15, scope: !2151)
!2156 = !DILocation(line: 212, column: 9, scope: !2151)
!2157 = !DILocation(line: 214, column: 15, scope: !2127)
!2158 = !DILocation(line: 214, column: 36, scope: !2127)
!2159 = !DILocation(line: 214, column: 32, scope: !2127)
!2160 = !DILocation(line: 214, column: 5, scope: !2127)
!2161 = !DILocation(line: 217, column: 24, scope: !2127)
!2162 = !DILocation(line: 217, column: 43, scope: !2127)
!2163 = !DILocation(line: 217, column: 76, scope: !2127)
!2164 = !DILocation(line: 218, column: 36, scope: !2127)
!2165 = !DILocation(line: 218, column: 21, scope: !2127)
!2166 = !DILocation(line: 218, column: 54, scope: !2127)
!2167 = !DILocation(line: 218, column: 63, scope: !2127)
!2168 = !DILocation(line: 218, column: 74, scope: !2127)
!2169 = !DILocation(line: 219, column: 17, scope: !2127)
!2170 = !DILocation(line: 219, column: 24, scope: !2127)
!2171 = !DILocation(line: 219, column: 13, scope: !2127)
!2172 = !DILocation(line: 219, column: 30, scope: !2127)
!2173 = !DILocation(line: 219, column: 41, scope: !2127)
!2174 = !DILocation(line: 218, column: 59, scope: !2127)
!2175 = !DILocation(line: 217, column: 32, scope: !2127)
!2176 = !DILocation(line: 217, column: 13, scope: !2127)
!2177 = !DILocation(line: 215, column: 13, scope: !2127)
!2178 = !DILocation(line: 221, column: 1, scope: !2127)
!2179 = !DILocation(line: 220, column: 5, scope: !2127)
!2180 = distinct !DISubprogram(name: "_logger_log_conn_event", scope: !3, file: !3, line: 140, type: !467, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2181)
!2181 = !{!2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191}
!2182 = !DILocalVariable(name: "e", arg: 1, scope: !2180, file: !3, line: 140, type: !100)
!2183 = !DILocalVariable(name: "d", arg: 2, scope: !2180, file: !3, line: 140, type: !457)
!2184 = !DILocalVariable(name: "entry", arg: 3, scope: !2180, file: !3, line: 140, type: !469)
!2185 = !DILocalVariable(name: "ap", arg: 4, scope: !2180, file: !3, line: 140, type: !471)
!2186 = !DILocalVariable(name: "addr", scope: !2180, file: !3, line: 141, type: !697)
!2187 = !DILocalVariable(name: "addrlen", scope: !2180, file: !3, line: 142, type: !562)
!2188 = !DILocalVariable(name: "transport", scope: !2180, file: !3, line: 143, type: !79)
!2189 = !DILocalVariable(name: "reason", scope: !2180, file: !3, line: 144, type: !84)
!2190 = !DILocalVariable(name: "sfd", scope: !2180, file: !3, line: 145, type: !129)
!2191 = !DILocalVariable(name: "le", scope: !2180, file: !3, line: 147, type: !678)
!2192 = !DILocation(line: 0, scope: !2180)
!2193 = !DILocation(line: 141, column: 33, scope: !2180)
!2194 = !DILocation(line: 142, column: 25, scope: !2180)
!2195 = !DILocation(line: 143, column: 40, scope: !2180)
!2196 = !DILocation(line: 144, column: 33, scope: !2180)
!2197 = !DILocation(line: 145, column: 15, scope: !2180)
!2198 = !DILocation(line: 147, column: 69, scope: !2180)
!2199 = !DILocation(line: 149, column: 12, scope: !2180)
!2200 = !DILocation(line: 149, column: 29, scope: !2180)
!2201 = !DILocation(line: 149, column: 5, scope: !2180)
!2202 = !DILocation(line: 150, column: 9, scope: !2180)
!2203 = !DILocation(line: 150, column: 13, scope: !2180)
!2204 = !{!2205, !850, i64 8}
!2205 = !{!"logentry_conn_event", !850, i64 0, !850, i64 4, !850, i64 8, !1588, i64 12}
!2206 = !DILocation(line: 151, column: 9, scope: !2180)
!2207 = !DILocation(line: 151, column: 19, scope: !2180)
!2208 = !{!2205, !850, i64 0}
!2209 = !DILocation(line: 152, column: 9, scope: !2180)
!2210 = !DILocation(line: 152, column: 16, scope: !2180)
!2211 = !{!2205, !850, i64 4}
!2212 = !DILocation(line: 153, column: 8, scope: !2180)
!2213 = !DILocation(line: 153, column: 13, scope: !2180)
!2214 = !DILocation(line: 154, column: 1, scope: !2180)
!2215 = distinct !DISubprogram(name: "_logger_parse_cne", scope: !3, file: !3, line: 270, type: !482, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2216)
!2216 = !{!2217, !2218, !2219, !2220, !2221, !2223, !2224}
!2217 = !DILocalVariable(name: "e", arg: 1, scope: !2215, file: !3, line: 270, type: !100)
!2218 = !DILocalVariable(name: "scratch", arg: 2, scope: !2215, file: !3, line: 270, type: !139)
!2219 = !DILocalVariable(name: "total", scope: !2215, file: !3, line: 271, type: !129)
!2220 = !DILocalVariable(name: "rport", scope: !2215, file: !3, line: 272, type: !114)
!2221 = !DILocalVariable(name: "rip", scope: !2215, file: !3, line: 273, type: !2222)
!2222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 512, elements: !356)
!2223 = !DILocalVariable(name: "le", scope: !2215, file: !3, line: 274, type: !678)
!2224 = !DILocalVariable(name: "transport_map", scope: !2215, file: !3, line: 275, type: !2225)
!2225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2045, size: 192, elements: !392)
!2226 = !DILocation(line: 0, scope: !2215)
!2227 = !DILocation(line: 272, column: 5, scope: !2215)
!2228 = !DILocation(line: 273, column: 5, scope: !2215)
!2229 = !DILocation(line: 273, column: 10, scope: !2215)
!2230 = !DILocation(line: 274, column: 69, scope: !2215)
!2231 = !DILocation(line: 275, column: 24, scope: !2215)
!2232 = !DILocation(line: 277, column: 37, scope: !2215)
!2233 = !DILocation(line: 277, column: 5, scope: !2215)
!2234 = !DILocation(line: 281, column: 25, scope: !2215)
!2235 = !DILocation(line: 281, column: 13, scope: !2215)
!2236 = !DILocation(line: 281, column: 45, scope: !2215)
!2237 = !DILocation(line: 281, column: 33, scope: !2215)
!2238 = !DILocation(line: 281, column: 78, scope: !2215)
!2239 = !DILocation(line: 282, column: 18, scope: !2215)
!2240 = !DILocation(line: 282, column: 43, scope: !2215)
!2241 = !DILocation(line: 282, column: 25, scope: !2215)
!2242 = !DILocation(line: 282, column: 59, scope: !2215)
!2243 = !DILocation(line: 279, column: 13, scope: !2215)
!2244 = !DILocation(line: 285, column: 1, scope: !2215)
!2245 = !DILocation(line: 284, column: 5, scope: !2215)
!2246 = distinct !DISubprogram(name: "_logger_parse_cce", scope: !3, file: !3, line: 287, type: !482, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2247)
!2247 = !{!2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255}
!2248 = !DILocalVariable(name: "e", arg: 1, scope: !2246, file: !3, line: 287, type: !100)
!2249 = !DILocalVariable(name: "scratch", arg: 2, scope: !2246, file: !3, line: 287, type: !139)
!2250 = !DILocalVariable(name: "total", scope: !2246, file: !3, line: 288, type: !129)
!2251 = !DILocalVariable(name: "rport", scope: !2246, file: !3, line: 289, type: !114)
!2252 = !DILocalVariable(name: "rip", scope: !2246, file: !3, line: 290, type: !2222)
!2253 = !DILocalVariable(name: "le", scope: !2246, file: !3, line: 291, type: !678)
!2254 = !DILocalVariable(name: "transport_map", scope: !2246, file: !3, line: 292, type: !2225)
!2255 = !DILocalVariable(name: "reason_map", scope: !2246, file: !3, line: 293, type: !2044)
!2256 = !DILocation(line: 0, scope: !2246)
!2257 = !DILocation(line: 289, column: 5, scope: !2246)
!2258 = !DILocation(line: 290, column: 5, scope: !2246)
!2259 = !DILocation(line: 290, column: 10, scope: !2246)
!2260 = !DILocation(line: 291, column: 69, scope: !2246)
!2261 = !DILocation(line: 292, column: 24, scope: !2246)
!2262 = !DILocation(line: 293, column: 24, scope: !2246)
!2263 = !DILocation(line: 295, column: 37, scope: !2246)
!2264 = !DILocation(line: 295, column: 5, scope: !2246)
!2265 = !DILocation(line: 299, column: 25, scope: !2246)
!2266 = !DILocation(line: 299, column: 13, scope: !2246)
!2267 = !DILocation(line: 299, column: 45, scope: !2246)
!2268 = !DILocation(line: 299, column: 33, scope: !2246)
!2269 = !DILocation(line: 299, column: 78, scope: !2246)
!2270 = !DILocation(line: 300, column: 18, scope: !2246)
!2271 = !DILocation(line: 300, column: 43, scope: !2246)
!2272 = !DILocation(line: 300, column: 25, scope: !2246)
!2273 = !DILocation(line: 301, column: 28, scope: !2246)
!2274 = !DILocation(line: 301, column: 13, scope: !2246)
!2275 = !DILocation(line: 301, column: 41, scope: !2246)
!2276 = !DILocation(line: 297, column: 13, scope: !2246)
!2277 = !DILocation(line: 304, column: 1, scope: !2246)
!2278 = !DILocation(line: 303, column: 5, scope: !2246)
!2279 = distinct !DISubprogram(name: "_logger_log_ext_write", scope: !3, file: !3, line: 77, type: !467, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2280)
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286, !2287}
!2281 = !DILocalVariable(name: "e", arg: 1, scope: !2279, file: !3, line: 77, type: !100)
!2282 = !DILocalVariable(name: "d", arg: 2, scope: !2279, file: !3, line: 77, type: !457)
!2283 = !DILocalVariable(name: "entry", arg: 3, scope: !2279, file: !3, line: 77, type: !469)
!2284 = !DILocalVariable(name: "ap", arg: 4, scope: !2279, file: !3, line: 77, type: !471)
!2285 = !DILocalVariable(name: "it", scope: !2279, file: !3, line: 78, type: !494)
!2286 = !DILocalVariable(name: "ew_bucket", scope: !2279, file: !3, line: 79, type: !129)
!2287 = !DILocalVariable(name: "le", scope: !2279, file: !3, line: 81, type: !698)
!2288 = !DILocation(line: 0, scope: !2279)
!2289 = !DILocation(line: 79, column: 21, scope: !2279)
!2290 = !DILocation(line: 82, column: 24, scope: !2279)
!2291 = !DILocation(line: 82, column: 32, scope: !2279)
!2292 = !DILocation(line: 82, column: 19, scope: !2279)
!2293 = !DILocation(line: 82, column: 55, scope: !2279)
!2294 = !DILocation(line: 82, column: 69, scope: !2279)
!2295 = !DILocation(line: 82, column: 67, scope: !2279)
!2296 = !DILocation(line: 82, column: 39, scope: !2279)
!2297 = !DILocation(line: 81, column: 67, scope: !2279)
!2298 = !DILocation(line: 82, column: 9, scope: !2279)
!2299 = !DILocation(line: 82, column: 17, scope: !2279)
!2300 = !DILocation(line: 83, column: 18, scope: !2279)
!2301 = !DILocation(line: 83, column: 37, scope: !2279)
!2302 = !DILocation(line: 83, column: 31, scope: !2279)
!2303 = !DILocation(line: 83, column: 9, scope: !2279)
!2304 = !DILocation(line: 83, column: 16, scope: !2279)
!2305 = !DILocation(line: 84, column: 24, scope: !2279)
!2306 = !DILocation(line: 84, column: 9, scope: !2279)
!2307 = !DILocation(line: 84, column: 18, scope: !2279)
!2308 = !DILocation(line: 85, column: 20, scope: !2279)
!2309 = !DILocation(line: 85, column: 9, scope: !2279)
!2310 = !DILocation(line: 85, column: 14, scope: !2279)
!2311 = !DILocation(line: 86, column: 17, scope: !2279)
!2312 = !DILocation(line: 86, column: 9, scope: !2279)
!2313 = !DILocation(line: 86, column: 15, scope: !2279)
!2314 = !DILocation(line: 87, column: 18, scope: !2279)
!2315 = !DILocation(line: 87, column: 9, scope: !2279)
!2316 = !DILocation(line: 87, column: 16, scope: !2279)
!2317 = !DILocation(line: 88, column: 12, scope: !2279)
!2318 = !DILocation(line: 88, column: 21, scope: !2279)
!2319 = !DILocation(line: 88, column: 39, scope: !2279)
!2320 = !DILocation(line: 88, column: 35, scope: !2279)
!2321 = !DILocation(line: 88, column: 5, scope: !2279)
!2322 = !DILocation(line: 89, column: 55, scope: !2279)
!2323 = !DILocation(line: 89, column: 51, scope: !2279)
!2324 = !DILocation(line: 89, column: 49, scope: !2279)
!2325 = !DILocation(line: 89, column: 8, scope: !2279)
!2326 = !DILocation(line: 89, column: 13, scope: !2279)
!2327 = !DILocation(line: 90, column: 1, scope: !2279)
!2328 = distinct !DISubprogram(name: "_logger_parse_extw", scope: !3, file: !3, line: 255, type: !482, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2329)
!2329 = !{!2330, !2331, !2332, !2333, !2334}
!2330 = !DILocalVariable(name: "e", arg: 1, scope: !2328, file: !3, line: 255, type: !100)
!2331 = !DILocalVariable(name: "scratch", arg: 2, scope: !2328, file: !3, line: 255, type: !139)
!2332 = !DILocalVariable(name: "total", scope: !2328, file: !3, line: 256, type: !129)
!2333 = !DILocalVariable(name: "keybuf", scope: !2328, file: !3, line: 257, type: !1965)
!2334 = !DILocalVariable(name: "le", scope: !2328, file: !3, line: 258, type: !698)
!2335 = !DILocation(line: 0, scope: !2328)
!2336 = !DILocation(line: 257, column: 5, scope: !2328)
!2337 = !DILocation(line: 257, column: 10, scope: !2328)
!2338 = !DILocation(line: 258, column: 67, scope: !2328)
!2339 = !DILocation(line: 259, column: 15, scope: !2328)
!2340 = !DILocation(line: 259, column: 36, scope: !2328)
!2341 = !DILocation(line: 259, column: 32, scope: !2328)
!2342 = !DILocation(line: 259, column: 5, scope: !2328)
!2343 = !DILocation(line: 262, column: 24, scope: !2328)
!2344 = !DILocation(line: 262, column: 13, scope: !2328)
!2345 = !DILocation(line: 262, column: 43, scope: !2328)
!2346 = !DILocation(line: 262, column: 32, scope: !2328)
!2347 = !DILocation(line: 262, column: 76, scope: !2328)
!2348 = !DILocation(line: 263, column: 26, scope: !2328)
!2349 = !DILocation(line: 263, column: 35, scope: !2328)
!2350 = !DILocation(line: 263, column: 21, scope: !2328)
!2351 = !DILocation(line: 264, column: 32, scope: !2328)
!2352 = !DILocation(line: 264, column: 45, scope: !2328)
!2353 = !DILocation(line: 264, column: 57, scope: !2328)
!2354 = !DILocation(line: 264, column: 53, scope: !2328)
!2355 = !DILocation(line: 264, column: 68, scope: !2328)
!2356 = !DILocation(line: 264, column: 64, scope: !2328)
!2357 = !DILocation(line: 260, column: 13, scope: !2328)
!2358 = !DILocation(line: 267, column: 1, scope: !2328)
!2359 = !DILocation(line: 266, column: 5, scope: !2328)
!2360 = !DISubprogram(name: "vsnprintf", scope: !991, file: !991, line: 358, type: !2361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!129, !1826, !419, !1138, !471}
!2363 = !DISubprogram(name: "memcpy", scope: !1377, file: !1377, line: 43, type: !2364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!99, !1081, !1856, !419}
!2366 = !DISubprogram(name: "uriencode", scope: !2367, file: !2367, line: 5, type: !2368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!2367 = !DIFile(filename: "./util.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d1ef68c688867746f50aae7567be079a")
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!151, !1139, !139, !2370, !2370}
!2370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!2371 = distinct !DISubprogram(name: "_logger_util_addr_endpoint", scope: !3, file: !3, line: 160, type: !2372, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2375)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!129, !697, !139, !419, !2374}
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!2375 = !{!2376, !2377, !2378, !2379}
!2376 = !DILocalVariable(name: "addr", arg: 1, scope: !2371, file: !3, line: 160, type: !697)
!2377 = !DILocalVariable(name: "rip", arg: 2, scope: !2371, file: !3, line: 160, type: !139)
!2378 = !DILocalVariable(name: "riplen", arg: 3, scope: !2371, file: !3, line: 161, type: !419)
!2379 = !DILocalVariable(name: "rport", arg: 4, scope: !2371, file: !3, line: 161, type: !2374)
!2380 = !DILocation(line: 0, scope: !2371)
!2381 = !DILocation(line: 162, column: 5, scope: !2371)
!2382 = !DILocation(line: 164, column: 19, scope: !2371)
!2383 = !{!1588, !900, i64 0}
!2384 = !DILocation(line: 164, column: 5, scope: !2371)
!2385 = !DILocation(line: 166, column: 57, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 164, column: 32)
!2387 = !DILocation(line: 166, column: 64, scope: !2386)
!2388 = !DILocation(line: 166, column: 32, scope: !2386)
!2389 = !DILocation(line: 166, column: 13, scope: !2386)
!2390 = !DILocation(line: 168, column: 22, scope: !2386)
!2391 = !{!2392, !900, i64 2}
!2392 = !{!"sockaddr_in", !900, i64 0, !900, i64 2, !2393, i64 4, !824, i64 8}
!2393 = !{!"in_addr", !850, i64 0}
!2394 = !DILocation(line: 169, column: 13, scope: !2386)
!2395 = !DILocation(line: 171, column: 59, scope: !2386)
!2396 = !DILocation(line: 171, column: 66, scope: !2386)
!2397 = !DILocation(line: 171, column: 33, scope: !2386)
!2398 = !DILocation(line: 171, column: 13, scope: !2386)
!2399 = !DILocation(line: 173, column: 22, scope: !2386)
!2400 = !{!1588, !900, i64 2}
!2401 = !DILocation(line: 174, column: 13, scope: !2386)
!2402 = !DILocation(line: 179, column: 21, scope: !2386)
!2403 = !DILocation(line: 179, column: 34, scope: !2386)
!2404 = !DILocation(line: 179, column: 49, scope: !2386)
!2405 = !DILocation(line: 179, column: 13, scope: !2386)
!2406 = !DILocation(line: 181, column: 13, scope: !2386)
!2407 = !DILocation(line: 0, scope: !2386)
!2408 = !DILocation(line: 185, column: 5, scope: !2371)
!2409 = !DISubprogram(name: "inet_ntop", scope: !2410, file: !2410, line: 64, type: !2411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!2410 = !DIFile(filename: "/usr/include/arpa/inet.h", directory: "", checksumkind: CSK_MD5, checksum: "d240b01f5b2c2634e10800becf2d4e4d")
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!1139, !129, !1856, !1826, !562}
!2413 = distinct !DISubprogram(name: "__bswap_16", scope: !2414, file: !2414, line: 34, type: !2415, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2417)
!2414 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "552c402ec2d372531713984b317e0c35")
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!113, !113}
!2417 = !{!2418}
!2418 = !DILocalVariable(name: "__bsx", arg: 1, scope: !2413, file: !2414, line: 34, type: !113)
!2419 = !DILocation(line: 0, scope: !2413)
!2420 = !DILocation(line: 39, column: 3, scope: !2413)
!2421 = !DISubprogram(name: "strncpy", scope: !1377, file: !1377, line: 125, type: !2422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!139, !1826, !1138, !419}
!2424 = !DISubprogram(name: "strlen", scope: !1377, file: !1377, line: 385, type: !2425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !807)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!419, !1139}
