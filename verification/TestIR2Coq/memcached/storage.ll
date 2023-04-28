; ModuleID = 'storage.c'
source_filename = "storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.timeval, i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.settings = type { i64, i32, i32, i32, i8*, i32, i32, i64, i32, i8*, i8*, i32, double, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, double, i32, i32, i8, i32, i8, i8, i8*, i32, i32, i32, i32, double, double, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8, i32, i32, i8*, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, i64* }
%struct._stritem = type { %struct._stritem*, %struct._stritem*, %struct._stritem*, i32, i32, i32, i16, i16, i8, i8, [0 x %union.anon] }
%union.anon = type { i64 }
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
%struct._logger = type { %struct._logger*, %struct._logger*, %union.pthread_mutex_t, i64, i64, i64, i16, i16, i16, %struct.bipbuf_t*, %struct._entry_details* }
%struct.bipbuf_t = type { i64, i32, i32, i32, i32, [0 x i8] }
%struct._entry_details = type { i32, i16, void (%struct._logentry*, %struct._entry_details*, i8*, %struct.__va_list_tag*)*, i32 (%struct._logentry*, i8*)*, i8* }
%struct._logentry = type { i32, i8, i16, i64, %struct.timeval, i32, [0 x %union.anon.9] }
%union.anon.9 = type { i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.msghdr = type { i8*, i32, %struct.iovec*, i64, i8*, i64, i32 }
%struct.extstore_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.extstore_page_data* }
%struct.extstore_page_data = type { i64, i64, i32, i32 }
%struct._strchunk = type { %struct._strchunk*, %struct._strchunk*, %struct._stritem*, i32, i32, i32, i16, i16, i8, i8, [0 x i8] }
%struct._obj_io = type { i8*, %struct._obj_io*, i8*, %struct.iovec*, i32, i32, i32, i32, i16, i32, void (i8*, %struct._obj_io*, i32)* }
%struct._io_pending_storage_t = type { i32, %struct.LIBEVENT_THREAD*, %struct.conn*, %struct._mc_resp*, %struct._stritem*, %struct._obj_io, i32, i8, i8, i8, i8 }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.storage_compact_wrap = type { %struct._obj_io, %union.pthread_mutex_t, i8, i8, i8 }
%struct.extstore_conf_file = type { i32, i8*, i32, i64, i32, i32, %struct.extstore_conf_file* }
%struct.extstore_conf = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lru_pull_tail_return = type { %struct._stritem*, i32 }
%struct.item_hdr = type { i32, i32, i16 }

@.str = private unnamed_addr constant [10 x i8] c"add_stats\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"storage.c\00", align 1
@__PRETTY_FUNCTION__.process_extstore_stats = private unnamed_addr constant [46 x i8] c"void process_extstore_stats(ADD_STAT, conn *)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d:%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"bucket\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"free_bucket\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"extstore_compact_lost\00", align 1
@stats = external dso_local local_unnamed_addr global %struct.stats, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"extstore_compact_rescues\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"extstore_compact_skipped\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"extstore_page_allocs\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"extstore_page_evictions\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"extstore_page_reclaims\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"extstore_pages_free\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"extstore_pages_used\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"extstore_objects_evicted\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"extstore_objects_read\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"extstore_objects_written\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"extstore_objects_used\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"extstore_bytes_evicted\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"extstore_bytes_written\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"extstore_bytes_read\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"extstore_bytes_used\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"extstore_bytes_fragmented\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"extstore_limit_maxbytes\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"extstore_io_queue\00", align 1
@settings = external dso_local global %struct.settings, align 8
@.str.28 = private unnamed_addr constant [52 x i8] c"new_it == NULL || (new_it->it_flags & ITEM_CHUNKED)\00", align 1
@__PRETTY_FUNCTION__.storage_get_item = private unnamed_addr constant [48 x i8] c"int storage_get_item(conn *, item *, mc_resp *)\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"q->count >= 0\00", align 1
@storage_write_plock = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !0
@storage_write_tid = internal global i64 0, align 8, !dbg !739
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.31 = private unnamed_addr constant [39 x i8] c"Can't create storage_write thread: %s\0A\00", align 1
@storage_compact_plock = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !743
@storage_compact_tid = internal global i64 0, align 8, !dbg !741
@.str.32 = private unnamed_addr constant [41 x i8] c"Can't create storage_compact thread: %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.34 = private unnamed_addr constant [73 x i8] c"must supply size to ext_path, ie: ext_path=/f/e:64m (M|G|T|P supported)\0A\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"page_size * cf->page_count <= multiplier\00", align 1
@__PRETTY_FUNCTION__.storage_conf_parse = private unnamed_addr constant [68 x i8] c"struct extstore_conf_file *storage_conf_parse(char *, unsigned int)\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"compact\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"lowttl\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"Unknown extstore bucket: %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [53 x i8] c"ext_path only presently supports the default bucket\0A\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"ext_page_size\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"ext_wbuf_size\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"ext_threads\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"ext_io_depth\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"ext_path\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"ext_item_size\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"ext_item_age\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"ext_low_ttl\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"ext_recache_rate\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"ext_compact_under\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"ext_drop_under\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"ext_max_sleep\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"ext_max_frag\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"ext_drop_unread\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"slab_automove_freeratio\00", align 1
@__const.storage_read_config.subopts_tokens = private unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0), i8* null], align 16
@.str.58 = private unnamed_addr constant [58 x i8] c"Must specify ext_page_size before any ext_path arguments\0A\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"Missing ext_page_size argument\0A\00", align 1
@.str.60 = private unnamed_addr constant [43 x i8] c"could not parse argument to ext_page_size\0A\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"Missing ext_wbuf_size argument\0A\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c"could not parse argument to ext_wbuf_size\0A\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"Missing ext_threads argument\0A\00", align 1
@.str.64 = private unnamed_addr constant [41 x i8] c"could not parse argument to ext_threads\0A\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"Missing ext_io_depth argument\0A\00", align 1
@.str.66 = private unnamed_addr constant [42 x i8] c"could not parse argument to ext_io_depth\0A\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"Missing ext_item_size argument\0A\00", align 1
@.str.68 = private unnamed_addr constant [43 x i8] c"could not parse argument to ext_item_size\0A\00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"Missing ext_item_age argument\0A\00", align 1
@.str.70 = private unnamed_addr constant [42 x i8] c"could not parse argument to ext_item_age\0A\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"Missing ext_low_ttl argument\0A\00", align 1
@.str.72 = private unnamed_addr constant [41 x i8] c"could not parse argument to ext_low_ttl\0A\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c"Missing ext_recache_rate argument\0A\00", align 1
@.str.74 = private unnamed_addr constant [46 x i8] c"could not parse argument to ext_recache_rate\0A\00", align 1
@.str.75 = private unnamed_addr constant [36 x i8] c"Missing ext_compact_under argument\0A\00", align 1
@.str.76 = private unnamed_addr constant [47 x i8] c"could not parse argument to ext_compact_under\0A\00", align 1
@.str.77 = private unnamed_addr constant [33 x i8] c"Missing ext_drop_under argument\0A\00", align 1
@.str.78 = private unnamed_addr constant [44 x i8] c"could not parse argument to ext_drop_under\0A\00", align 1
@.str.79 = private unnamed_addr constant [32 x i8] c"Missing ext_max_sleep argument\0A\00", align 1
@.str.80 = private unnamed_addr constant [43 x i8] c"could not parse argument to ext_max_sleep\0A\00", align 1
@.str.81 = private unnamed_addr constant [31 x i8] c"Missing ext_max_frag argument\0A\00", align 1
@.str.82 = private unnamed_addr constant [42 x i8] c"could not parse argument to ext_max_frag\0A\00", align 1
@.str.83 = private unnamed_addr constant [42 x i8] c"Missing slab_automove_freeratio argument\0A\00", align 1
@.str.84 = private unnamed_addr constant [53 x i8] c"could not parse argument to slab_automove_freeratio\0A\00", align 1
@.str.85 = private unnamed_addr constant [35 x i8] c"failed to parse ext_path argument\0A\00", align 1
@.str.86 = private unnamed_addr constant [55 x i8] c"missing argument to ext_path, ie: ext_path=/d/file:5G\0A\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"Illegal suboption \22%s\22\0A\00", align 1
@.str.88 = private unnamed_addr constant [64 x i8] c"-I (item_size_max: %d) cannot be larger than ext_wbuf_size: %d\0A\00", align 1
@.str.89 = private unnamed_addr constant [56 x i8] c"Cannot use UDP with extstore enabled (-U 0 to disable)\0A\00", align 1
@.str.90 = private unnamed_addr constant [43 x i8] c"Failed to initialize external storage: %s\0A\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"extstore open\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"p->active == true\00", align 1
@__PRETTY_FUNCTION__._storage_get_item_cb = private unnamed_addr constant [49 x i8] c"void _storage_get_item_cb(void *, obj_io *, int)\00", align 1
@crc32c = external dso_local local_unnamed_addr global i32 (i32, i8*, i64)*, align 8
@.str.93 = private unnamed_addr constant [4 x i8] c"VA \00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"EN\0D\0A\00", align 1
@.str.95 = private unnamed_addr constant [26 x i8] c"read_it->slabs_clsid != 0\00", align 1
@__PRETTY_FUNCTION__.recache_or_free = private unnamed_addr constant [37 x i8] c"void recache_or_free(io_pending_t *)\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"c != NULL\00", align 1
@current_time = external dso_local global i32, align 4
@.str.98 = private unnamed_addr constant [57 x i8] c"Failed to allocate logger for storage compaction thread\0A\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"it->refcount >= 2\00", align 1
@__PRETTY_FUNCTION__.storage_write = private unnamed_addr constant [48 x i8] c"int storage_write(void *, const int, const int)\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"remain >= sch->used\00", align 1
@logger_key = external dso_local local_unnamed_addr global i32, align 4
@.str.101 = private unnamed_addr constant [66 x i8] c"Failed to allocate readback buffer for storage compaction thread\0A\00", align 1
@.str.102 = private unnamed_addr constant [24 x i8] c"wrap->submitted == true\00", align 1
@__PRETTY_FUNCTION__._storage_compact_cb = private unnamed_addr constant [48 x i8] c"void _storage_compact_cb(void *, obj_io *, int)\00", align 1
@__llvm_gcov_ctr = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.103 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.104 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.105 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.106 = internal global [17 x i64] zeroinitializer
@__llvm_gcov_ctr.107 = internal global [15 x i64] zeroinitializer
@__llvm_gcov_ctr.108 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.109 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.110 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.111 = internal global [14 x i64] zeroinitializer
@__llvm_gcov_ctr.112 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.113 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.114 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.115 = internal global [17 x i64] zeroinitializer
@__llvm_gcov_ctr.116 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.117 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.118 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.119 = internal global [23 x i64] zeroinitializer
@__llvm_gcov_ctr.120 = internal global [16 x i64] zeroinitializer
@__llvm_gcov_ctr.121 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.122 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.123 = internal global [47 x i64] zeroinitializer
@__llvm_gcov_ctr.124 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.125 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.126 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.127 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.128 = internal global [17 x i64] zeroinitializer
@__llvm_gcov_ctr.129 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.130 = internal global [15 x i64] zeroinitializer
@__llvm_gcov_ctr.131 = internal global [22 x i64] zeroinitializer
@0 = private unnamed_addr constant [55 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/storage.gcda\00", align 1
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [30 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -1729367054, i32 725942664 }, %emit_function_args_ty { i32 1, i32 -1433540415, i32 725942664 }, %emit_function_args_ty { i32 2, i32 412053766, i32 725942664 }, %emit_function_args_ty { i32 3, i32 317757916, i32 725942664 }, %emit_function_args_ty { i32 4, i32 -272434893, i32 725942664 }, %emit_function_args_ty { i32 5, i32 1565983163, i32 725942664 }, %emit_function_args_ty { i32 6, i32 -440931429, i32 725942664 }, %emit_function_args_ty { i32 7, i32 662429268, i32 725942664 }, %emit_function_args_ty { i32 8, i32 -126460806, i32 725942664 }, %emit_function_args_ty { i32 9, i32 1241557083, i32 725942664 }, %emit_function_args_ty { i32 10, i32 -1195876190, i32 725942664 }, %emit_function_args_ty { i32 11, i32 -579323275, i32 725942664 }, %emit_function_args_ty { i32 12, i32 1258310531, i32 725942664 }, %emit_function_args_ty { i32 13, i32 -413488035, i32 725942664 }, %emit_function_args_ty { i32 14, i32 -490414729, i32 725942664 }, %emit_function_args_ty { i32 15, i32 -746386534, i32 725942664 }, %emit_function_args_ty { i32 16, i32 445481575, i32 725942664 }, %emit_function_args_ty { i32 17, i32 -1935614168, i32 725942664 }, %emit_function_args_ty { i32 18, i32 -769473636, i32 725942664 }, %emit_function_args_ty { i32 19, i32 1051467791, i32 725942664 }, %emit_function_args_ty { i32 20, i32 -2067678868, i32 725942664 }, %emit_function_args_ty { i32 21, i32 -1776144536, i32 725942664 }, %emit_function_args_ty { i32 22, i32 735163380, i32 725942664 }, %emit_function_args_ty { i32 23, i32 1656278521, i32 725942664 }, %emit_function_args_ty { i32 24, i32 1952771851, i32 725942664 }, %emit_function_args_ty { i32 25, i32 358640027, i32 725942664 }, %emit_function_args_ty { i32 26, i32 -652989784, i32 725942664 }, %emit_function_args_ty { i32 27, i32 -707675086, i32 725942664 }, %emit_function_args_ty { i32 28, i32 341884993, i32 725942664 }, %emit_function_args_ty { i32 29, i32 706791206, i32 725942664 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [30 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.103, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.104, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.105, i32 0, i32 0) }, %emit_arcs_args_ty { i32 17, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i32 0, i32 0) }, %emit_arcs_args_ty { i32 15, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.108, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.109, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.110, i32 0, i32 0) }, %emit_arcs_args_ty { i32 14, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.112, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.113, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.114, i32 0, i32 0) }, %emit_arcs_args_ty { i32 17, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.116, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.117, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.118, i32 0, i32 0) }, %emit_arcs_args_ty { i32 23, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i32 0, i32 0) }, %emit_arcs_args_ty { i32 16, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.121, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.122, i32 0, i32 0) }, %emit_arcs_args_ty { i32 47, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.124, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.125, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.126, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.127, i32 0, i32 0) }, %emit_arcs_args_ty { i32 17, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.129, i32 0, i32 0) }, %emit_arcs_args_ty { i32 15, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i32 0, i32 0) }, %emit_arcs_args_ty { i32 22, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i32 0, i32 0) }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @storage_validate_item(i8* noundef %e, %struct._stritem* nocapture noundef readonly %it) local_unnamed_addr #0 !dbg !751 {
entry:
  call void @llvm.dbg.value(metadata i8* %e, metadata !755, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !756, metadata !DIExpression()), !dbg !758
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 10, !dbg !759
  %0 = bitcast [0 x %union.anon]* %data to i8*, !dbg !759
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 9, !dbg !759
  %1 = load i8, i8* %nkey, align 1, !dbg !759, !tbaa !760
  %2 = zext i8 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %2, !dbg !759
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !759
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !759
  %3 = load i16, i16* %it_flags, align 2, !dbg !759, !tbaa !763
  %conv2 = zext i16 %3 to i32, !dbg !759
  %and = lshr i32 %conv2, 6, !dbg !759
  %4 = and i32 %and, 4, !dbg !759
  %5 = zext i32 %4 to i64, !dbg !759
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr1, i64 %5, !dbg !759
  %and6 = shl nuw nsw i32 %conv2, 2, !dbg !759
  %6 = and i32 %and6, 8, !dbg !759
  %7 = zext i32 %6 to i64, !dbg !759
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr3, i64 %7, !dbg !759
  call void @llvm.dbg.value(metadata i8* %add.ptr9, metadata !757, metadata !DIExpression()), !dbg !758
  %page_id = getelementptr inbounds i8, i8* %add.ptr9, i64 8, !dbg !765
  %8 = bitcast i8* %page_id to i16*, !dbg !765
  %9 = load i16, i16* %8, align 4, !dbg !765, !tbaa !767
  %conv10 = zext i16 %9 to i32, !dbg !770
  %page_version = bitcast i8* %add.ptr9 to i32*, !dbg !771
  %10 = load i32, i32* %page_version, align 4, !dbg !771, !tbaa !772
  %conv11 = zext i32 %10 to i64, !dbg !773
  %call = tail call i32 @extstore_check(i8* noundef %e, i32 noundef %conv10, i64 noundef %conv11) #17, !dbg !774
  %cmp.not = icmp eq i32 %call, 0, !dbg !775
  %. = select i1 %cmp.not, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), !dbg !776
  %gcov_ctr13 = load i64, i64* %., align 8, !dbg !776
  %11 = add i64 %gcov_ctr13, 1, !dbg !776
  store i64 %11, i64* %., align 8, !dbg !776
  ret i1 %cmp.not, !dbg !777
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !778 dso_local i32 @extstore_check(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @storage_delete(i8* noundef %e, %struct._stritem* nocapture noundef readonly %it) local_unnamed_addr #0 !dbg !782 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.103, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.103, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %e, metadata !786, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !787, metadata !DIExpression()), !dbg !791
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !792
  %1 = load i16, i16* %it_flags, align 2, !dbg !792, !tbaa !763
  %2 = and i16 %1, 128, !dbg !793
  %tobool.not = icmp eq i16 %2, 0, !dbg !793
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !794

if.then:                                          ; preds = %entry
  %gcov_ctr34 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.103, i64 0, i64 1), align 8, !dbg !795
  %3 = add i64 %gcov_ctr34, 1, !dbg !795
  store i64 %3, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.103, i64 0, i64 1), align 8, !dbg !795
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 10, !dbg !796
  %4 = bitcast [0 x %union.anon]* %data to i8*, !dbg !796
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 9, !dbg !796
  %5 = load i8, i8* %nkey, align 1, !dbg !796, !tbaa !760
  %6 = zext i8 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %6, !dbg !796
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !796
  %conv4 = zext i16 %1 to i32, !dbg !796
  %and5 = lshr i32 %conv4, 6, !dbg !796
  %7 = and i32 %and5, 4, !dbg !796
  %8 = zext i32 %7 to i64, !dbg !796
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr2, i64 %8, !dbg !796
  %and10 = shl nuw nsw i32 %conv4, 2, !dbg !796
  %9 = and i32 %and10, 8, !dbg !796
  %10 = zext i32 %9 to i64, !dbg !796
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr7, i64 %10, !dbg !796
  call void @llvm.dbg.value(metadata i8* %add.ptr13, metadata !788, metadata !DIExpression()), !dbg !797
  %page_id = getelementptr inbounds i8, i8* %add.ptr13, i64 8, !dbg !798
  %11 = bitcast i8* %page_id to i16*, !dbg !798
  %12 = load i16, i16* %11, align 4, !dbg !798, !tbaa !767
  %conv14 = zext i16 %12 to i32, !dbg !799
  %page_version = bitcast i8* %add.ptr13 to i32*, !dbg !800
  %13 = load i32, i32* %page_version, align 4, !dbg !800, !tbaa !772
  %conv15 = zext i32 %13 to i64, !dbg !801
  %conv17 = zext i8 %5 to i32, !dbg !802
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 5, !dbg !802
  %14 = load i32, i32* %nbytes, align 8, !dbg !802, !tbaa !803
  %add18 = or i32 %7, %9, !dbg !802
  %add20 = or i32 %add18, 49, !dbg !802
  %add26 = add nuw nsw i32 %add20, %conv17, !dbg !802
  %add32 = add i32 %add26, %14, !dbg !802
  %call = tail call i32 @extstore_delete(i8* noundef %e, i32 noundef %conv14, i64 noundef %conv15, i32 noundef 1, i32 noundef %add32) #17, !dbg !804
  br label %if.end, !dbg !805

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !806
}

declare !dbg !807 dso_local i32 @extstore_delete(i8* noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @process_extstore_stats(void (i8*, i16, i8*, i32, i8*)* noundef readonly %add_stats, %struct.conn* noundef %c) local_unnamed_addr #0 !dbg !810 {
entry:
  %key_str = alloca [128 x i8], align 16
  %val_str = alloca [128 x i8], align 16
  %st = alloca %struct.extstore_stats, align 8
  call void @llvm.dbg.value(metadata void (i8*, i16, i8*, i32, i8*)* %add_stats, metadata !822, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !823, metadata !DIExpression()), !dbg !861
  %0 = getelementptr inbounds [128 x i8], [128 x i8]* %key_str, i64 0, i64 0, !dbg !862
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #18, !dbg !862
  call void @llvm.dbg.declare(metadata [128 x i8]* %key_str, metadata !825, metadata !DIExpression()), !dbg !863
  %1 = getelementptr inbounds [128 x i8], [128 x i8]* %val_str, i64 0, i64 0, !dbg !864
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #18, !dbg !864
  call void @llvm.dbg.declare(metadata [128 x i8]* %val_str, metadata !829, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.value(metadata i32 0, metadata !830, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i32 0, metadata !831, metadata !DIExpression()), !dbg !861
  %2 = bitcast %struct.extstore_stats* %st to i8*, !dbg !866
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %2) #18, !dbg !866
  call void @llvm.dbg.declare(metadata %struct.extstore_stats* %st, metadata !832, metadata !DIExpression()), !dbg !867
  %tobool.not = icmp eq void (i8*, i16, i8*, i32, i8*)* %add_stats, null, !dbg !868
  br i1 %tobool.not, label %if.else, label %if.end, !dbg !871

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.104, i64 0, i64 0), align 16, !dbg !868
  %3 = add i64 %gcov_ctr, 1, !dbg !868
  store i64 %3, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.104, i64 0, i64 0), align 16, !dbg !868
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.process_extstore_stats, i64 0, i64 0)) #19, !dbg !868
  unreachable, !dbg !868

if.end:                                           ; preds = %entry
  %thread = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !872
  %4 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !872, !tbaa !873
  %storage1 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %4, i64 0, i32 10, !dbg !885
  %5 = load i8*, i8** %storage1, align 8, !dbg !885, !tbaa !886
  call void @llvm.dbg.value(metadata i8* %5, metadata !860, metadata !DIExpression()), !dbg !861
  %cmp = icmp eq i8* %5, null, !dbg !889
  br i1 %cmp, label %cleanup, label %if.end3, !dbg !891

if.end3:                                          ; preds = %if.end
  call void @extstore_get_stats(i8* noundef nonnull %5, %struct.extstore_stats* noundef nonnull %st) #17, !dbg !892
  %page_count = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 1, !dbg !893
  %6 = load i64, i64* %page_count, align 8, !dbg !893, !tbaa !894
  %call = call noalias i8* @calloc(i64 noundef %6, i64 noundef 24) #17, !dbg !896
  %page_data = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 17, !dbg !897
  %7 = bitcast %struct.extstore_page_data** %page_data to i8**, !dbg !898
  store i8* %call, i8** %7, align 8, !dbg !898, !tbaa !899
  call void @extstore_get_page_data(i8* noundef nonnull %5, %struct.extstore_stats* noundef nonnull %st) #17, !dbg !900
  call void @llvm.dbg.value(metadata i32 0, metadata !824, metadata !DIExpression()), !dbg !861
  %8 = load i64, i64* %page_count, align 8, !dbg !901, !tbaa !894
  %cmp583.not = icmp eq i64 %8, 0, !dbg !904
  br i1 %cmp583.not, label %cleanup, label %for.body.lr.ph, !dbg !905

for.body.lr.ph:                                   ; preds = %if.end3
  %9 = bitcast %struct.conn* %c to i8*
  br label %for.body, !dbg !905

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !824, metadata !DIExpression()), !dbg !861
  %gcov_ctr51 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.104, i64 0, i64 2), align 16, !dbg !906
  %10 = add i64 %gcov_ctr51, 1, !dbg !906
  store i64 %10, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.104, i64 0, i64 2), align 16, !dbg !906
  %11 = trunc i64 %indvars.iv to i32, !dbg !906
  %call7 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef %11, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #17, !dbg !906
  call void @llvm.dbg.value(metadata i32 %call7, metadata !830, metadata !DIExpression()), !dbg !861
  %12 = load %struct.extstore_page_data*, %struct.extstore_page_data** %page_data, align 8, !dbg !906, !tbaa !899
  %version = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %12, i64 %indvars.iv, i32 0, !dbg !906
  %13 = load i64, i64* %version, align 8, !dbg !906, !tbaa !908
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %1, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %13) #17, !dbg !906
  call void @llvm.dbg.value(metadata i32 %call10, metadata !831, metadata !DIExpression()), !dbg !861
  %conv12 = trunc i32 %call7 to i16, !dbg !906
  call void %add_stats(i8* noundef nonnull %0, i16 noundef zeroext %conv12, i8* noundef nonnull %1, i32 noundef %call10, i8* noundef %9) #17, !dbg !906
  %call15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef %11, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #17, !dbg !910
  call void @llvm.dbg.value(metadata i32 %call15, metadata !830, metadata !DIExpression()), !dbg !861
  %14 = load %struct.extstore_page_data*, %struct.extstore_page_data** %page_data, align 8, !dbg !910, !tbaa !899
  %bytes_used = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %14, i64 %indvars.iv, i32 1, !dbg !910
  %15 = load i64, i64* %bytes_used, align 8, !dbg !910, !tbaa !911
  %call20 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %1, i64 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %15) #17, !dbg !910
  call void @llvm.dbg.value(metadata i32 %call20, metadata !831, metadata !DIExpression()), !dbg !861
  %conv22 = trunc i32 %call15 to i16, !dbg !910
  call void %add_stats(i8* noundef nonnull %0, i16 noundef zeroext %conv22, i8* noundef nonnull %1, i32 noundef %call20, i8* noundef %9) #17, !dbg !910
  %call25 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef %11, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #17, !dbg !912
  call void @llvm.dbg.value(metadata i32 %call25, metadata !830, metadata !DIExpression()), !dbg !861
  %16 = load %struct.extstore_page_data*, %struct.extstore_page_data** %page_data, align 8, !dbg !912, !tbaa !899
  %bucket = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %16, i64 %indvars.iv, i32 2, !dbg !912
  %17 = load i32, i32* %bucket, align 8, !dbg !912, !tbaa !913
  %call30 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %1, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 noundef %17) #17, !dbg !912
  call void @llvm.dbg.value(metadata i32 %call30, metadata !831, metadata !DIExpression()), !dbg !861
  %conv32 = trunc i32 %call25 to i16, !dbg !912
  call void %add_stats(i8* noundef nonnull %0, i16 noundef zeroext %conv32, i8* noundef nonnull %1, i32 noundef %call30, i8* noundef %9) #17, !dbg !912
  %call35 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 128, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef %11, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #17, !dbg !914
  call void @llvm.dbg.value(metadata i32 %call35, metadata !830, metadata !DIExpression()), !dbg !861
  %18 = load %struct.extstore_page_data*, %struct.extstore_page_data** %page_data, align 8, !dbg !914, !tbaa !899
  %free_bucket = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %18, i64 %indvars.iv, i32 3, !dbg !914
  %19 = load i32, i32* %free_bucket, align 4, !dbg !914, !tbaa !915
  %call40 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %1, i64 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 noundef %19) #17, !dbg !914
  call void @llvm.dbg.value(metadata i32 %call40, metadata !831, metadata !DIExpression()), !dbg !861
  %conv42 = trunc i32 %call35 to i16, !dbg !914
  call void %add_stats(i8* noundef nonnull %0, i16 noundef zeroext %conv42, i8* noundef nonnull %1, i32 noundef %call40, i8* noundef %9) #17, !dbg !914
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !916
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !824, metadata !DIExpression()), !dbg !861
  %20 = load i64, i64* %page_count, align 8, !dbg !901, !tbaa !894
  %cmp5 = icmp ugt i64 %20, %indvars.iv.next, !dbg !904
  br i1 %cmp5, label %for.body, label %cleanup, !dbg !905, !llvm.loop !917

cleanup:                                          ; preds = %for.body, %if.end3, %if.end
  %.sink = phi i64* [ getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.104, i64 0, i64 1), %if.end ], [ getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.104, i64 0, i64 3), %if.end3 ], [ getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.104, i64 0, i64 3), %for.body ]
  %gcov_ctr52 = load i64, i64* %.sink, align 8
  %21 = add i64 %gcov_ctr52, 1
  store i64 %21, i64* %.sink, align 8
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %2) #18, !dbg !920
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #18, !dbg !920
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #18, !dbg !920
  ret void, !dbg !920
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare !dbg !921 dso_local void @extstore_get_stats(i8* noundef, %struct.extstore_stats* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !925 dso_local noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !929 dso_local void @extstore_get_page_data(i8* noundef, %struct.extstore_stats* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !930 dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @storage_stats(void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef %c) local_unnamed_addr #0 !dbg !936 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.105, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.105, i64 0, i64 0), align 8
  %st = alloca %struct.extstore_stats, align 8
  call void @llvm.dbg.value(metadata void (i8*, i16, i8*, i32, i8*)* %add_stats, metadata !938, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !939, metadata !DIExpression()), !dbg !941
  %1 = bitcast %struct.extstore_stats* %st to i8*, !dbg !942
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %1) #18, !dbg !942
  call void @llvm.dbg.declare(metadata %struct.extstore_stats* %st, metadata !940, metadata !DIExpression()), !dbg !943
  %thread = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !944
  %2 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !944, !tbaa !873
  %storage = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %2, i64 0, i32 10, !dbg !946
  %3 = load i8*, i8** %storage, align 8, !dbg !946, !tbaa !886
  %tobool.not = icmp eq i8* %3, null, !dbg !947
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !948

if.then:                                          ; preds = %entry
  %gcov_ctr3 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.105, i64 0, i64 1), align 8, !dbg !949
  %4 = add i64 %gcov_ctr3, 1, !dbg !949
  store i64 %4, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.105, i64 0, i64 1), align 8, !dbg !949
  tail call void @STATS_LOCK() #17, !dbg !949
  %5 = load i64, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 19), align 8, !dbg !951, !tbaa !952
  tail call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %5) #17, !dbg !951
  %6 = load i64, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 20), align 8, !dbg !954, !tbaa !955
  tail call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %6) #17, !dbg !954
  %7 = load i64, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 21), align 8, !dbg !956, !tbaa !957
  tail call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %7) #17, !dbg !956
  tail call void @STATS_UNLOCK() #17, !dbg !958
  %8 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !959, !tbaa !873
  %storage2 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %8, i64 0, i32 10, !dbg !960
  %9 = load i8*, i8** %storage2, align 8, !dbg !960, !tbaa !886
  call void @extstore_get_stats(i8* noundef %9, %struct.extstore_stats* noundef nonnull %st) #17, !dbg !961
  %page_allocs = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 0, !dbg !962
  %10 = load i64, i64* %page_allocs, align 8, !dbg !962, !tbaa !963
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %10) #17, !dbg !962
  %page_evictions = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 2, !dbg !964
  %11 = load i64, i64* %page_evictions, align 8, !dbg !964, !tbaa !965
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %11) #17, !dbg !964
  %page_reclaims = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 3, !dbg !966
  %12 = load i64, i64* %page_reclaims, align 8, !dbg !966, !tbaa !967
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %12) #17, !dbg !966
  %pages_free = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 5, !dbg !968
  %13 = load i64, i64* %pages_free, align 8, !dbg !968, !tbaa !969
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %13) #17, !dbg !968
  %pages_used = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 6, !dbg !970
  %14 = load i64, i64* %pages_used, align 8, !dbg !970, !tbaa !971
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %14) #17, !dbg !970
  %objects_evicted = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 7, !dbg !972
  %15 = load i64, i64* %objects_evicted, align 8, !dbg !972, !tbaa !973
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %15) #17, !dbg !972
  %objects_read = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 8, !dbg !974
  %16 = load i64, i64* %objects_read, align 8, !dbg !974, !tbaa !975
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %16) #17, !dbg !974
  %objects_written = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 9, !dbg !976
  %17 = load i64, i64* %objects_written, align 8, !dbg !976, !tbaa !977
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %17) #17, !dbg !976
  %objects_used = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 10, !dbg !978
  %18 = load i64, i64* %objects_used, align 8, !dbg !978, !tbaa !979
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %18) #17, !dbg !978
  %bytes_evicted = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 11, !dbg !980
  %19 = load i64, i64* %bytes_evicted, align 8, !dbg !980, !tbaa !981
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %19) #17, !dbg !980
  %bytes_written = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 12, !dbg !982
  %20 = load i64, i64* %bytes_written, align 8, !dbg !982, !tbaa !983
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %20) #17, !dbg !982
  %bytes_read = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 13, !dbg !984
  %21 = load i64, i64* %bytes_read, align 8, !dbg !984, !tbaa !985
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %21) #17, !dbg !984
  %bytes_used = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 14, !dbg !986
  %22 = load i64, i64* %bytes_used, align 8, !dbg !986, !tbaa !987
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %22) #17, !dbg !986
  %bytes_fragmented = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 15, !dbg !988
  %23 = load i64, i64* %bytes_fragmented, align 8, !dbg !988, !tbaa !989
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %23) #17, !dbg !988
  %page_count = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 1, !dbg !990
  %24 = load i64, i64* %page_count, align 8, !dbg !990, !tbaa !894
  %page_size = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 4, !dbg !990
  %25 = load i64, i64* %page_size, align 8, !dbg !990, !tbaa !991
  %mul = mul i64 %25, %24, !dbg !990
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %mul) #17, !dbg !990
  %io_queue = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 16, !dbg !992
  %26 = load i64, i64* %io_queue, align 8, !dbg !992, !tbaa !993
  call void (i8*, void (i8*, i16, i8*, i32, i8*)*, %struct.conn*, i8*, ...) @append_stat(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), void (i8*, i16, i8*, i32, i8*)* noundef %add_stats, %struct.conn* noundef nonnull %c, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %26) #17, !dbg !992
  br label %if.end, !dbg !994

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %1) #18, !dbg !995
  ret void, !dbg !995
}

declare !dbg !996 dso_local void @STATS_LOCK() local_unnamed_addr #3

declare !dbg !999 dso_local void @append_stat(i8* noundef, void (i8*, i16, i8*, i32, i8*)* noundef, %struct.conn* noundef, i8* noundef, ...) local_unnamed_addr #3

declare !dbg !1002 dso_local void @STATS_UNLOCK() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @storage_get_item(%struct.conn* noundef %c, %struct._stritem* noundef %it, %struct._mc_resp* noundef %resp) local_unnamed_addr #0 !dbg !1003 {
entry:
  call void @llvm.dbg.value(metadata %struct.conn* %c, metadata !1007, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata %struct._stritem* %it, metadata !1008, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata %struct._mc_resp* %resp, metadata !1009, metadata !DIExpression()), !dbg !1027
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 10, !dbg !1028
  %0 = bitcast [0 x %union.anon]* %data to i8*, !dbg !1028
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 9, !dbg !1028
  %1 = load i8, i8* %nkey, align 1, !dbg !1028, !tbaa !760
  %2 = zext i8 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %2, !dbg !1028
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !1028
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 7, !dbg !1028
  %3 = load i16, i16* %it_flags, align 2, !dbg !1028, !tbaa !763
  %conv2 = zext i16 %3 to i32, !dbg !1028
  %and = lshr i32 %conv2, 6, !dbg !1028
  %4 = and i32 %and, 4, !dbg !1028
  %5 = zext i32 %4 to i64, !dbg !1028
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr1, i64 %5, !dbg !1028
  %and6 = shl nuw nsw i32 %conv2, 2, !dbg !1028
  %6 = and i32 %and6, 8, !dbg !1028
  %7 = zext i32 %6 to i64, !dbg !1028
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr3, i64 %7, !dbg !1028
  call void @llvm.dbg.value(metadata i8* %add.ptr9, metadata !1010, metadata !DIExpression()), !dbg !1027
  %call = tail call %struct.io_queue_s* @conn_io_queue_get(%struct.conn* noundef %c, i32 noundef 1) #17, !dbg !1029
  call void @llvm.dbg.value(metadata %struct.io_queue_s* %call, metadata !1011, metadata !DIExpression()), !dbg !1027
  %8 = load i8, i8* %nkey, align 1, !dbg !1030, !tbaa !760
  %conv11 = zext i8 %8 to i64, !dbg !1030
  %add12 = add nuw nsw i64 %conv11, 49, !dbg !1030
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 5, !dbg !1030
  %9 = load i32, i32* %nbytes, align 8, !dbg !1030, !tbaa !803
  %conv13 = sext i32 %9 to i64, !dbg !1030
  %add14 = add nsw i64 %add12, %conv13, !dbg !1030
  %10 = load i16, i16* %it_flags, align 2, !dbg !1030, !tbaa !763
  %conv16 = zext i16 %10 to i32, !dbg !1030
  %and17 = lshr i32 %conv16, 6, !dbg !1030
  %11 = and i32 %and17, 4, !dbg !1030
  %12 = zext i32 %11 to i64, !dbg !1030
  %add20 = add nsw i64 %add14, %12, !dbg !1030
  %and23 = shl nuw nsw i32 %conv16, 2, !dbg !1030
  %13 = and i32 %and23, 8, !dbg !1030
  %14 = zext i32 %13 to i64, !dbg !1030
  %add26 = add nsw i64 %add20, %14, !dbg !1030
  call void @llvm.dbg.value(metadata i64 %add26, metadata !1012, metadata !DIExpression()), !dbg !1027
  %call27 = tail call i32 @slabs_clsid(i64 noundef %add26) #17, !dbg !1031
  call void @llvm.dbg.value(metadata i32 %call27, metadata !1013, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i8 0, metadata !1015, metadata !DIExpression()), !dbg !1027
  %15 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 23), align 8, !dbg !1032, !tbaa !1033
  %conv28 = sext i32 %15 to i64, !dbg !1036
  %cmp = icmp ugt i64 %add26, %conv28, !dbg !1037
  br i1 %cmp, label %if.then, label %if.end69, !dbg !1038

if.then:                                          ; preds = %entry
  %16 = load i16, i16* %it_flags, align 2, !dbg !1039, !tbaa !763
  %17 = and i16 %16, 256, !dbg !1039
  %tobool33.not = icmp eq i16 %17, 0, !dbg !1039
  br i1 %tobool33.not, label %if.else, label %if.then34, !dbg !1042

if.then34:                                        ; preds = %if.then
  %gcov_ctr = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 0), align 16, !dbg !1043
  %18 = add i64 %gcov_ctr, 1, !dbg !1043
  store i64 %18, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 0), align 16, !dbg !1043
  %19 = load i8, i8* %nkey, align 1, !dbg !1043, !tbaa !760
  %20 = zext i8 %19 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %0, i64 %20, !dbg !1043
  %add.ptr40 = getelementptr inbounds i8, i8* %add.ptr39, i64 1, !dbg !1043
  %21 = shl i16 %16, 2, !dbg !1043
  %22 = and i16 %21, 8, !dbg !1043
  %23 = zext i16 %22 to i64, !dbg !1043
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr40, i64 %23, !dbg !1043
  %24 = bitcast i8* %add.ptr46 to i32*, !dbg !1043
  %25 = load i32, i32* %24, align 4, !dbg !1043, !tbaa !803
  call void @llvm.dbg.value(metadata i32 %25, metadata !1016, metadata !DIExpression()), !dbg !1045
  br label %if.end, !dbg !1043

if.else:                                          ; preds = %if.then
  %gcov_ctr227 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 1), align 8, !dbg !1046
  %26 = add i64 %gcov_ctr227, 1, !dbg !1046
  store i64 %26, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 1), align 8, !dbg !1046
  call void @llvm.dbg.value(metadata i32 0, metadata !1016, metadata !DIExpression()), !dbg !1045
  %.pre = load i8, i8* %nkey, align 1, !dbg !1048, !tbaa !760
  %.pre386 = shl i16 %16, 2, !dbg !1049
  %.pre387 = and i16 %.pre386, 8, !dbg !1049
  %.pre389 = zext i16 %.pre387 to i64, !dbg !1049
  %.pre391 = zext i8 %.pre to i64, !dbg !1050
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then34
  %conv55.pre-phi = phi i64 [ %.pre391, %if.else ], [ %20, %if.then34 ], !dbg !1050
  %.pre-phi390 = phi i64 [ %.pre389, %if.else ], [ %23, %if.then34 ], !dbg !1049
  %flags.0 = phi i32 [ 0, %if.else ], [ %25, %if.then34 ], !dbg !1051
  call void @llvm.dbg.value(metadata i32 %flags.0, metadata !1016, metadata !DIExpression()), !dbg !1045
  %add.ptr53 = getelementptr inbounds i8, i8* %0, i64 %.pre-phi390, !dbg !1049
  %exptime = getelementptr inbounds %struct._stritem, %struct._stritem* %it, i64 0, i32 4, !dbg !1052
  %27 = load i32, i32* %exptime, align 4, !dbg !1052, !tbaa !803
  %28 = load i32, i32* %nbytes, align 8, !dbg !1053, !tbaa !803
  %call57 = tail call %struct._stritem* @item_alloc(i8* noundef nonnull %add.ptr53, i64 noundef %conv55.pre-phi, i32 noundef %flags.0, i32 noundef %27, i32 noundef %28) #17, !dbg !1054
  call void @llvm.dbg.value(metadata %struct._stritem* %call57, metadata !1014, metadata !DIExpression()), !dbg !1027
  %cmp58 = icmp eq %struct._stritem* %call57, null, !dbg !1055
  br i1 %cmp58, label %if.then72, label %lor.lhs.false, !dbg !1055

lor.lhs.false:                                    ; preds = %if.end
  %gcov_ctr228 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 2), align 16, !dbg !1055
  %29 = add i64 %gcov_ctr228, 1, !dbg !1055
  store i64 %29, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 2), align 16, !dbg !1055
  %it_flags60 = getelementptr inbounds %struct._stritem, %struct._stritem* %call57, i64 0, i32 7, !dbg !1055
  %30 = load i16, i16* %it_flags60, align 2, !dbg !1055, !tbaa !763
  %31 = and i16 %30, 32, !dbg !1055
  %tobool63.not = icmp eq i16 %31, 0, !dbg !1055
  br i1 %tobool63.not, label %if.else65, label %if.end73, !dbg !1058

if.else65:                                        ; preds = %lor.lhs.false
  %gcov_ctr229 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 3), align 8, !dbg !1055
  %32 = add i64 %gcov_ctr229, 1, !dbg !1055
  store i64 %32, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 3), align 8, !dbg !1055
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.storage_get_item, i64 0, i64 0)) #19, !dbg !1055
  unreachable, !dbg !1055

if.end69:                                         ; preds = %entry
  %call68 = tail call %struct._stritem* @do_item_alloc_pull(i64 noundef %add26, i32 noundef %call27) #17, !dbg !1059
  call void @llvm.dbg.value(metadata %struct._stritem* %call68, metadata !1014, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i8 undef, metadata !1015, metadata !DIExpression()), !dbg !1027
  %cmp70 = icmp eq %struct._stritem* %call68, null, !dbg !1061
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !1063

if.then72:                                        ; preds = %if.end, %if.end69
  %gcov_ctr230 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 4), align 16, !dbg !1064
  %33 = add i64 %gcov_ctr230, 1, !dbg !1064
  store i64 %33, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 4), align 16, !dbg !1064
  br label %cleanup221, !dbg !1064

if.end73:                                         ; preds = %lor.lhs.false, %if.end69
  %new_it.0376 = phi %struct._stritem* [ %call68, %if.end69 ], [ %call57, %lor.lhs.false ]
  %conv74 = trunc i32 %call27 to i8, !dbg !1065
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %new_it.0376, i64 0, i32 8, !dbg !1066
  store i8 %conv74, i8* %slabs_clsid, align 8, !dbg !1067, !tbaa !760
  %thread = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 43, !dbg !1068
  %34 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !1068, !tbaa !873
  %io_cache = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %34, i64 0, i32 9, !dbg !1069
  %35 = load %struct.cache_t*, %struct.cache_t** %io_cache, align 8, !dbg !1069, !tbaa !1070
  %call75 = tail call i8* @do_cache_alloc(%struct.cache_t* noundef %35) #17, !dbg !1071
  call void @llvm.dbg.value(metadata i8* %call75, metadata !1019, metadata !DIExpression()), !dbg !1027
  %call76 = tail call i8* @memset(i8* noundef %call75, i32 noundef 0, i64 noundef 112) #17, !dbg !1072
  %36 = getelementptr inbounds i8, i8* %call75, i64 111, !dbg !1073
  store i8 1, i8* %36, align 1, !dbg !1074, !tbaa !1075
  %37 = getelementptr inbounds i8, i8* %call75, i64 109, !dbg !1078
  store i8 0, i8* %37, align 1, !dbg !1079, !tbaa !1080
  %38 = getelementptr inbounds i8, i8* %call75, i64 110, !dbg !1081
  store i8 0, i8* %38, align 2, !dbg !1082, !tbaa !1083
  %noreply = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 34, !dbg !1084
  %39 = load i8, i8* %noreply, align 4, !dbg !1084, !tbaa !1085, !range !1086
  %40 = getelementptr inbounds i8, i8* %call75, i64 108, !dbg !1087
  store i8 %39, i8* %40, align 4, !dbg !1088, !tbaa !1089
  %hdr_it = getelementptr inbounds i8, i8* %call75, i64 32, !dbg !1090
  %41 = bitcast i8* %hdr_it to %struct._stritem**, !dbg !1090
  store %struct._stritem* %it, %struct._stritem** %41, align 8, !dbg !1091, !tbaa !1092
  %resp79 = getelementptr inbounds i8, i8* %call75, i64 24, !dbg !1093
  %42 = bitcast i8* %resp79 to %struct._mc_resp**, !dbg !1093
  store %struct._mc_resp* %resp, %struct._mc_resp** %42, align 8, !dbg !1094, !tbaa !1095
  %io_queue_type = bitcast i8* %call75 to i32*, !dbg !1096
  store i32 1, i32* %io_queue_type, align 8, !dbg !1097, !tbaa !1098
  %io_ctx = getelementptr inbounds i8, i8* %call75, i64 40, !dbg !1099
  call void @llvm.dbg.value(metadata i8* %io_ctx, metadata !1020, metadata !DIExpression()), !dbg !1027
  br i1 %cmp, label %if.then81, label %if.end179, !dbg !1100

if.then81:                                        ; preds = %if.end73
  call void @llvm.dbg.value(metadata i32 0, metadata !1021, metadata !DIExpression()), !dbg !1101
  %nbytes82 = getelementptr inbounds %struct._stritem, %struct._stritem* %new_it.0376, i64 0, i32 5, !dbg !1102
  %43 = load i32, i32* %nbytes82, align 8, !dbg !1102, !tbaa !803
  call void @llvm.dbg.value(metadata i32 %43, metadata !1024, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !1101
  %nkey85 = getelementptr inbounds %struct._stritem, %struct._stritem* %new_it.0376, i64 0, i32 9, !dbg !1103
  %44 = load i8, i8* %nkey85, align 1, !dbg !1103, !tbaa !760
  %it_flags90 = getelementptr inbounds %struct._stritem, %struct._stritem* %new_it.0376, i64 0, i32 7, !dbg !1103
  %45 = load i16, i16* %it_flags90, align 2, !dbg !1103, !tbaa !763
  %conv91 = zext i16 %45 to i32, !dbg !1103
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %call68, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  %call102 = tail call noalias i8* @malloc(i64 noundef 16384) #17, !dbg !1104
  %iov = getelementptr inbounds i8, i8* %call75, i64 64, !dbg !1105
  %46 = bitcast i8* %iov to %struct.iovec**, !dbg !1105
  %47 = bitcast i8* %iov to i8**, !dbg !1106
  store i8* %call102, i8** %47, align 8, !dbg !1106, !tbaa !1107
  %cmp104 = icmp eq i8* %call102, null, !dbg !1108
  br i1 %cmp104, label %if.then106, label %if.end109, !dbg !1110

if.then106:                                       ; preds = %if.then81
  %gcov_ctr231 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 5), align 8, !dbg !1111
  %48 = add i64 %gcov_ctr231, 1, !dbg !1111
  store i64 %48, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 5), align 8, !dbg !1111
  tail call void @item_remove(%struct._stritem* noundef nonnull %new_it.0376) #17, !dbg !1113
  %49 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !1114, !tbaa !873
  %io_cache108 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %49, i64 0, i32 9, !dbg !1115
  %50 = load %struct.cache_t*, %struct.cache_t** %io_cache108, align 8, !dbg !1115, !tbaa !1070
  tail call void @do_cache_free(%struct.cache_t* noundef %50, i8* noundef nonnull %call75) #17, !dbg !1116
  br label %cleanup221, !dbg !1117

if.end109:                                        ; preds = %if.then81
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %new_it.0376, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %new_it.0376, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %call68, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %new_it.0376, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %new_it.0376, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %call68, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %call68, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %call68, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %new_it.0376, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %call68, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %call68, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %call68, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %new_it.0376, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %new_it.0376, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  call void @llvm.dbg.value(metadata i32 %43, metadata !1024, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !1101
  %51 = bitcast i8* %call102 to %struct._stritem**, !dbg !1118
  store %struct._stritem* %new_it.0376, %struct._stritem** %51, align 8, !dbg !1118, !tbaa !1119
  %52 = load i8, i8* %nkey85, align 1, !dbg !1121, !tbaa !760
  %conv112 = zext i8 %52 to i64, !dbg !1121
  %53 = load i16, i16* %it_flags90, align 2, !dbg !1121, !tbaa !763
  %conv119 = zext i16 %53 to i32, !dbg !1121
  %and120 = lshr i32 %conv119, 6, !dbg !1121
  %54 = and i32 %and120, 4, !dbg !1121
  %55 = zext i32 %54 to i64, !dbg !1121
  %and126 = shl nuw nsw i32 %conv119, 2, !dbg !1121
  %56 = and i32 %and126, 8, !dbg !1121
  %57 = zext i32 %56 to i64, !dbg !1121
  %add123 = add nuw nsw i64 %conv112, 49, !dbg !1121
  %add129 = add nuw nsw i64 %add123, %55, !dbg !1121
  %sub = add nuw nsw i64 %add129, %57, !dbg !1122
  %iov_len = getelementptr inbounds i8, i8* %call102, i64 8, !dbg !1123
  %58 = bitcast i8* %iov_len to i64*, !dbg !1123
  store i64 %sub, i64* %58, align 8, !dbg !1124, !tbaa !1125
  call void @llvm.dbg.value(metadata i32 1, metadata !1021, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %new_it.0376, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  call void @llvm.dbg.value(metadata i32 %43, metadata !1024, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !1101
  %cmp134.not378 = icmp eq i32 %43, 0, !dbg !1126
  br i1 %cmp134.not378, label %while.end, label %while.body.preheader, !dbg !1127

while.body.preheader:                             ; preds = %if.end109
  %conv83 = sext i32 %43 to i64, !dbg !1128
  call void @llvm.dbg.value(metadata i64 %conv83, metadata !1024, metadata !DIExpression()), !dbg !1101
  %data84 = getelementptr inbounds %struct._stritem, %struct._stritem* %new_it.0376, i64 0, i32 10, !dbg !1103
  call void @llvm.dbg.value(metadata !DIArgList([0 x %union.anon]* %data84, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  %59 = bitcast [0 x %union.anon]* %data84 to i8*, !dbg !1103
  call void @llvm.dbg.value(metadata !DIArgList(i8* %59, i32 %conv91, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  %60 = zext i8 %44 to i64
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %new_it.0376, i32 %conv91, i32 %conv91, i64 %60), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  %add.ptr88 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !1103
  call void @llvm.dbg.value(metadata !DIArgList(i8* %add.ptr88, i32 %conv91, i32 %conv91), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  %add.ptr89 = getelementptr inbounds i8, i8* %add.ptr88, i64 1, !dbg !1103
  call void @llvm.dbg.value(metadata !DIArgList(i8* %add.ptr89, i32 %conv91, i32 %conv91), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  %and92 = lshr i32 %conv91, 6, !dbg !1103
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %new_it.0376, i32 %conv91, i32 %and92, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  %61 = and i32 %and92, 4, !dbg !1103
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %new_it.0376, i32 %conv91, i32 %61, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  %62 = zext i32 %61 to i64, !dbg !1103
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %new_it.0376, i32 %conv91, i64 %62, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  %add.ptr95 = getelementptr inbounds i8, i8* %add.ptr89, i64 %62, !dbg !1103
  call void @llvm.dbg.value(metadata !DIArgList(i8* %add.ptr95, i32 %conv91), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  %and98 = shl nuw nsw i32 %conv91, 2, !dbg !1103
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %new_it.0376, i32 %and98, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  %63 = and i32 %and98, 8, !dbg !1103
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %new_it.0376, i32 %63, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  %64 = zext i32 %63 to i64, !dbg !1103
  call void @llvm.dbg.value(metadata !DIArgList(%struct._stritem* %new_it.0376, i64 %64, i32 %conv91, i8 %44), metadata !1025, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 48, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 6, DW_OP_shr, DW_OP_constu, 4, DW_OP_and, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1101
  %add.ptr101 = getelementptr inbounds i8, i8* %add.ptr95, i64 %64, !dbg !1103
  call void @llvm.dbg.value(metadata i8* %add.ptr101, metadata !1025, metadata !DIExpression()), !dbg !1101
  %65 = bitcast i8* %add.ptr101 to %struct._strchunk*, !dbg !1129
  call void @llvm.dbg.value(metadata %struct._strchunk* %65, metadata !1025, metadata !DIExpression()), !dbg !1101
  br label %while.body, !dbg !1127

while.body:                                       ; preds = %while.body.preheader, %cond.end170
  %indvars.iv = phi i64 [ 1, %while.body.preheader ], [ %indvars.iv.next, %cond.end170 ]
  %chunk.0382 = phi %struct._strchunk* [ %65, %while.body.preheader ], [ %call136, %cond.end170 ]
  %remain.0380 = phi i64 [ %conv83, %while.body.preheader ], [ %sub175, %cond.end170 ]
  call void @llvm.dbg.value(metadata %struct._strchunk* %chunk.0382, metadata !1025, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %remain.0380, metadata !1024, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1021, metadata !DIExpression()), !dbg !1101
  %call136 = tail call %struct._strchunk* @do_item_alloc_chunk(%struct._strchunk* noundef nonnull %chunk.0382, i64 noundef %remain.0380) #17, !dbg !1130
  call void @llvm.dbg.value(metadata %struct._strchunk* %call136, metadata !1025, metadata !DIExpression()), !dbg !1101
  %cmp137 = icmp eq %struct._strchunk* %call136, null, !dbg !1132
  br i1 %cmp137, label %if.then142, label %lor.lhs.false139, !dbg !1134

lor.lhs.false139:                                 ; preds = %while.body
  %gcov_ctr232 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 6), align 16, !dbg !1135
  %66 = add i64 %gcov_ctr232, 1, !dbg !1135
  store i64 %66, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 6), align 16, !dbg !1135
  %exitcond = icmp eq i64 %indvars.iv, 1024, !dbg !1136
  br i1 %exitcond, label %if.then142, label %if.end147, !dbg !1137

if.then142:                                       ; preds = %lor.lhs.false139, %while.body
  %gcov_ctr233 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 7), align 8, !dbg !1138
  %67 = add i64 %gcov_ctr233, 1, !dbg !1138
  store i64 %67, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 7), align 8, !dbg !1138
  tail call void @item_remove(%struct._stritem* noundef nonnull %new_it.0376) #17, !dbg !1140
  %68 = load i8*, i8** %47, align 8, !dbg !1141, !tbaa !1107
  tail call void @free(i8* noundef %68) #17, !dbg !1142
  store %struct.iovec* null, %struct.iovec** %46, align 8, !dbg !1143, !tbaa !1107
  %69 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !1144, !tbaa !873
  %io_cache146 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %69, i64 0, i32 9, !dbg !1145
  %70 = load %struct.cache_t*, %struct.cache_t** %io_cache146, align 8, !dbg !1145, !tbaa !1070
  tail call void @do_cache_free(%struct.cache_t* noundef %70, i8* noundef nonnull %call75) #17, !dbg !1146
  br label %cleanup221, !dbg !1147

if.end147:                                        ; preds = %lor.lhs.false139
  %arraydecay = getelementptr inbounds %struct._strchunk, %struct._strchunk* %call136, i64 0, i32 10, i64 0, !dbg !1148
  %71 = load %struct.iovec*, %struct.iovec** %46, align 8, !dbg !1149, !tbaa !1107
  %iov_base151 = getelementptr inbounds %struct.iovec, %struct.iovec* %71, i64 %indvars.iv, i32 0, !dbg !1150
  store i8* %arraydecay, i8** %iov_base151, align 8, !dbg !1151, !tbaa !1119
  %size = getelementptr inbounds %struct._strchunk, %struct._strchunk* %call136, i64 0, i32 3, !dbg !1152
  %72 = load i32, i32* %size, align 8, !dbg !1152, !tbaa !803
  %conv152 = sext i32 %72 to i64, !dbg !1153
  %cmp153 = icmp ult i64 %remain.0380, %conv152, !dbg !1154
  br i1 %cmp153, label %cond.end, label %cond.false, !dbg !1155

cond.false:                                       ; preds = %if.end147
  %gcov_ctr234 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 8), align 16, !dbg !1156
  %73 = add i64 %gcov_ctr234, 1, !dbg !1156
  store i64 %73, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 8), align 16, !dbg !1156
  %74 = load i32, i32* %size, align 8, !dbg !1157, !tbaa !803
  %conv156 = sext i32 %74 to i64, !dbg !1156
  %.pre384 = load %struct.iovec*, %struct.iovec** %46, align 8, !dbg !1158, !tbaa !1107
  br label %cond.end, !dbg !1155

cond.end:                                         ; preds = %if.end147, %cond.false
  %conv163.pre-phi = phi i64 [ %conv152, %if.end147 ], [ %conv156, %cond.false ], !dbg !1159
  %75 = phi %struct.iovec* [ %71, %if.end147 ], [ %.pre384, %cond.false ], !dbg !1158
  %cond157 = phi i64 [ %remain.0380, %if.end147 ], [ %conv156, %cond.false ], !dbg !1155
  %iov_len161 = getelementptr inbounds %struct.iovec, %struct.iovec* %75, i64 %indvars.iv, i32 1, !dbg !1160
  store i64 %cond157, i64* %iov_len161, align 8, !dbg !1161, !tbaa !1125
  %cmp164 = icmp ult i64 %remain.0380, %conv163.pre-phi, !dbg !1162
  br i1 %cmp164, label %cond.true166, label %cond.false167, !dbg !1163

cond.true166:                                     ; preds = %cond.end
  %gcov_ctr235 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 9), align 8, !dbg !1164
  %76 = add i64 %gcov_ctr235, 1, !dbg !1164
  store i64 %76, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 9), align 8, !dbg !1164
  %.pre385 = load i32, i32* %size, align 8, !dbg !1165, !tbaa !803
  %.pre392 = sext i32 %.pre385 to i64, !dbg !1166
  br label %cond.end170, !dbg !1163

cond.false167:                                    ; preds = %cond.end
  %gcov_ctr236 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 10), align 16, !dbg !1167
  %77 = add i64 %gcov_ctr236, 1, !dbg !1167
  store i64 %77, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 10), align 16, !dbg !1167
  %78 = load i32, i32* %size, align 8, !dbg !1168, !tbaa !803
  %conv169 = sext i32 %78 to i64, !dbg !1167
  br label %cond.end170, !dbg !1163

cond.end170:                                      ; preds = %cond.false167, %cond.true166
  %conv174.pre-phi = phi i64 [ %conv169, %cond.false167 ], [ %.pre392, %cond.true166 ], !dbg !1166
  %cond171 = phi i64 [ %conv169, %cond.false167 ], [ %remain.0380, %cond.true166 ], !dbg !1163
  %conv172 = trunc i64 %cond171 to i32, !dbg !1163
  %used = getelementptr inbounds %struct._strchunk, %struct._strchunk* %call136, i64 0, i32 4, !dbg !1169
  store i32 %conv172, i32* %used, align 4, !dbg !1170, !tbaa !803
  %sub175 = sub i64 %remain.0380, %conv174.pre-phi, !dbg !1171
  call void @llvm.dbg.value(metadata i64 %sub175, metadata !1024, metadata !DIExpression()), !dbg !1101
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1172
  call void @llvm.dbg.value(metadata %struct._strchunk* %call136, metadata !1025, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1021, metadata !DIExpression()), !dbg !1101
  %cmp134.not = icmp eq i64 %sub175, 0, !dbg !1126
  br i1 %cmp134.not, label %while.end.loopexit, label %while.body, !dbg !1127, !llvm.loop !1173

while.end.loopexit:                               ; preds = %cond.end170
  %79 = trunc i64 %indvars.iv.next to i32, !dbg !1175
  br label %while.end, !dbg !1175

while.end:                                        ; preds = %while.end.loopexit, %if.end109
  %ciovcnt.0.lcssa = phi i32 [ 1, %if.end109 ], [ %79, %while.end.loopexit ], !dbg !1101
  %gcov_ctr237 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 11), align 8, !dbg !1175
  %80 = add i64 %gcov_ctr237, 1, !dbg !1175
  store i64 %80, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 11), align 8, !dbg !1175
  %iovcnt = getelementptr inbounds i8, i8* %call75, i64 72, !dbg !1176
  %81 = bitcast i8* %iovcnt to i32*, !dbg !1176
  store i32 %ciovcnt.0.lcssa, i32* %81, align 8, !dbg !1177, !tbaa !1178
  %gcov_ctr238 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 12), align 16, !dbg !1179
  %82 = add i64 %gcov_ctr238, 1, !dbg !1179
  store i64 %82, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 12), align 16, !dbg !1179
  br label %if.end179, !dbg !1179

if.end179:                                        ; preds = %while.end, %if.end73
  %iovcnt180 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %resp, i64 0, i32 9, !dbg !1180
  %83 = load i8, i8* %iovcnt180, align 4, !dbg !1180, !tbaa !1181
  %conv181 = zext i8 %83 to i32, !dbg !1183
  %iovec_data = getelementptr inbounds i8, i8* %call75, i64 104, !dbg !1184
  %84 = bitcast i8* %iovec_data to i32*, !dbg !1184
  store i32 %conv181, i32* %84, align 8, !dbg !1185, !tbaa !1186
  %protocol = getelementptr inbounds %struct.conn, %struct.conn* %c, i64 0, i32 28, !dbg !1187
  %85 = load i32, i32* %protocol, align 4, !dbg !1187, !tbaa !1188
  %cmp182 = icmp eq i32 %85, 4, !dbg !1189
  br i1 %cmp182, label %cond.true184, label %cond.false187, !dbg !1190

cond.true184:                                     ; preds = %if.end179
  %86 = load i32, i32* %nbytes, align 8, !dbg !1191, !tbaa !803
  %sub186 = add nsw i32 %86, -2, !dbg !1192
  br label %cond.end189, !dbg !1190

cond.false187:                                    ; preds = %if.end179
  %gcov_ctr239 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 13), align 8, !dbg !1193
  %87 = add i64 %gcov_ctr239, 1, !dbg !1193
  store i64 %87, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 13), align 8, !dbg !1193
  %88 = load i32, i32* %nbytes, align 8, !dbg !1194, !tbaa !803
  br label %cond.end189, !dbg !1190

cond.end189:                                      ; preds = %cond.false187, %cond.true184
  %cond190 = phi i32 [ %sub186, %cond.true184 ], [ %88, %cond.false187 ], !dbg !1190
  call void @llvm.dbg.value(metadata i32 %cond190, metadata !1026, metadata !DIExpression()), !dbg !1027
  br i1 %cmp, label %if.then192, label %if.else193, !dbg !1195

if.then192:                                       ; preds = %cond.end189
  %gcov_ctr240 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 14), align 16, !dbg !1196
  %89 = add i64 %gcov_ctr240, 1, !dbg !1196
  store i64 %89, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 14), align 16, !dbg !1196
  %90 = bitcast %struct._stritem* %new_it.0376 to i8*, !dbg !1199
  tail call void @resp_add_chunked_iov(%struct._mc_resp* noundef nonnull %resp, i8* noundef nonnull %90, i32 noundef %cond190) #17, !dbg !1200
  br label %if.end194, !dbg !1201

if.else193:                                       ; preds = %cond.end189
  %gcov_ctr241 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 15), align 8, !dbg !1202
  %91 = add i64 %gcov_ctr241, 1, !dbg !1202
  store i64 %91, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 15), align 8, !dbg !1202
  tail call void @resp_add_iov(%struct._mc_resp* noundef nonnull %resp, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0), i32 noundef %cond190) #17, !dbg !1204
  br label %if.end194

if.end194:                                        ; preds = %if.else193, %if.then192
  %io_pending = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %resp, i64 0, i32 5, !dbg !1205
  %92 = bitcast %struct._io_pending_t** %io_pending to i8**, !dbg !1206
  store i8* %call75, i8** %92, align 8, !dbg !1206, !tbaa !1207
  %buf = getelementptr inbounds i8, i8* %call75, i64 56, !dbg !1208
  %93 = bitcast i8* %buf to %struct._stritem**, !dbg !1209
  store %struct._stritem* %new_it.0376, %struct._stritem** %93, align 8, !dbg !1209, !tbaa !1210
  %c195 = getelementptr inbounds i8, i8* %call75, i64 16, !dbg !1211
  %94 = bitcast i8* %c195 to %struct.conn**, !dbg !1211
  store %struct.conn* %c, %struct.conn** %94, align 8, !dbg !1212, !tbaa !1213
  %stack_ctx = getelementptr inbounds %struct.io_queue_s, %struct.io_queue_s* %call, i64 0, i32 1, !dbg !1214
  %95 = bitcast i8** %stack_ctx to %struct._obj_io**, !dbg !1214
  %96 = load %struct._obj_io*, %struct._obj_io** %95, align 8, !dbg !1214, !tbaa !1215
  %next = getelementptr inbounds i8, i8* %call75, i64 48, !dbg !1217
  %97 = bitcast i8* %next to %struct._obj_io**, !dbg !1217
  store %struct._obj_io* %96, %struct._obj_io** %97, align 8, !dbg !1218, !tbaa !1219
  store i8* %io_ctx, i8** %stack_ctx, align 8, !dbg !1220, !tbaa !1215
  %count = getelementptr inbounds %struct.io_queue_s, %struct.io_queue_s* %call, i64 0, i32 2, !dbg !1221
  %98 = load i32, i32* %count, align 8, !dbg !1221, !tbaa !1224
  %cmp197 = icmp sgt i32 %98, -1, !dbg !1221
  br i1 %cmp197, label %if.end201, label %if.else200, !dbg !1225

if.else200:                                       ; preds = %if.end194
  %gcov_ctr242 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 16), align 16, !dbg !1221
  %99 = add i64 %gcov_ctr242, 1, !dbg !1221
  store i64 %99, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.106, i64 0, i64 16), align 16, !dbg !1221
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef 342, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.storage_get_item, i64 0, i64 0)) #19, !dbg !1221
  unreachable, !dbg !1221

if.end201:                                        ; preds = %if.end194
  %inc203 = add nuw nsw i32 %98, 1, !dbg !1226
  store i32 %inc203, i32* %count, align 8, !dbg !1226, !tbaa !1224
  %data204 = bitcast i8* %io_ctx to i8**, !dbg !1227
  store i8* %call75, i8** %data204, align 8, !dbg !1228, !tbaa !1229
  %page_version = bitcast i8* %add.ptr9 to i32*, !dbg !1230
  %100 = load i32, i32* %page_version, align 4, !dbg !1230, !tbaa !772
  %page_version205 = getelementptr inbounds i8, i8* %call75, i64 76, !dbg !1231
  %101 = bitcast i8* %page_version205 to i32*, !dbg !1231
  store i32 %100, i32* %101, align 4, !dbg !1232, !tbaa !1233
  %page_id = getelementptr inbounds i8, i8* %add.ptr9, i64 8, !dbg !1234
  %102 = bitcast i8* %page_id to i16*, !dbg !1234
  %103 = load i16, i16* %102, align 4, !dbg !1234, !tbaa !767
  %page_id206 = getelementptr inbounds i8, i8* %call75, i64 88, !dbg !1235
  %104 = bitcast i8* %page_id206 to i16*, !dbg !1235
  store i16 %103, i16* %104, align 8, !dbg !1236, !tbaa !1237
  %offset = getelementptr inbounds i8, i8* %add.ptr9, i64 4, !dbg !1238
  %105 = bitcast i8* %offset to i32*, !dbg !1238
  %106 = load i32, i32* %105, align 4, !dbg !1238, !tbaa !1239
  %offset207 = getelementptr inbounds i8, i8* %call75, i64 84, !dbg !1240
  %107 = bitcast i8* %offset207 to i32*, !dbg !1240
  store i32 %106, i32* %107, align 4, !dbg !1241, !tbaa !1242
  %conv208 = trunc i64 %add26 to i32, !dbg !1243
  %len = getelementptr inbounds i8, i8* %call75, i64 80, !dbg !1244
  %108 = bitcast i8* %len to i32*, !dbg !1244
  store i32 %conv208, i32* %108, align 8, !dbg !1245, !tbaa !1246
  %mode = getelementptr inbounds i8, i8* %call75, i64 92, !dbg !1247
  %109 = bitcast i8* %mode to i32*, !dbg !1247
  store i32 0, i32* %109, align 4, !dbg !1248, !tbaa !1249
  %cb = getelementptr inbounds i8, i8* %call75, i64 96, !dbg !1250
  %110 = bitcast i8* %cb to void (i8*, %struct._obj_io*, i32)**, !dbg !1250
  store void (i8*, %struct._obj_io*, i32)* @_storage_get_item_cb, void (i8*, %struct._obj_io*, i32)** %110, align 8, !dbg !1251, !tbaa !1252
  %111 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !1253, !tbaa !873
  %mutex = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %111, i64 0, i32 4, i32 0, !dbg !1254
  %call210 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #17, !dbg !1255
  %112 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !1256, !tbaa !873
  %get_extstore = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %112, i64 0, i32 4, i32 25, !dbg !1257
  %113 = load i64, i64* %get_extstore, align 8, !dbg !1258, !tbaa !1259
  %inc213 = add i64 %113, 1, !dbg !1258
  store i64 %inc213, i64* %get_extstore, align 8, !dbg !1258, !tbaa !1259
  %mutex216 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %112, i64 0, i32 4, i32 0, !dbg !1260
  %call217 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex216) #17, !dbg !1261
  br label %cleanup221

cleanup221:                                       ; preds = %if.end201, %if.then142, %if.then106, %if.then72
  %retval.2 = phi i32 [ -1, %if.then72 ], [ 0, %if.end201 ], [ -1, %if.then142 ], [ -1, %if.then106 ], !dbg !1027
  ret i32 %retval.2, !dbg !1262
}

declare !dbg !1263 dso_local %struct.io_queue_s* @conn_io_queue_get(%struct.conn* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1266 dso_local i32 @slabs_clsid(i64 noundef) local_unnamed_addr #3

declare !dbg !1271 dso_local %struct._stritem* @item_alloc(i8* noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1274 dso_local %struct._stritem* @do_item_alloc_pull(i64 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1279 dso_local i8* @do_cache_alloc(%struct.cache_t* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1282 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !1286 dso_local noalias i8* @malloc(i64 noundef) local_unnamed_addr #5

declare !dbg !1289 dso_local void @item_remove(%struct._stritem* noundef) local_unnamed_addr #3

declare !dbg !1292 dso_local void @do_cache_free(%struct.cache_t* noundef, i8* noundef) local_unnamed_addr #3

declare !dbg !1295 dso_local %struct._strchunk* @do_item_alloc_chunk(%struct._strchunk* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1298 dso_local void @free(i8* noundef) local_unnamed_addr #5

declare !dbg !1301 dso_local void @resp_add_chunked_iov(%struct._mc_resp* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1304 dso_local void @resp_add_iov(%struct._mc_resp* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @_storage_get_item_cb(i8* nocapture noundef readnone %e, %struct._obj_io* nocapture noundef readonly %io, i32 noundef %ret) #0 !dbg !1305 {
entry:
  call void @llvm.dbg.value(metadata i8* %e, metadata !1307, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata %struct._obj_io* %io, metadata !1308, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i32 %ret, metadata !1309, metadata !DIExpression()), !dbg !1332
  %0 = bitcast %struct._obj_io* %io to %struct._io_pending_storage_t**, !dbg !1333
  %1 = load %struct._io_pending_storage_t*, %struct._io_pending_storage_t** %0, align 8, !dbg !1333, !tbaa !1229
  call void @llvm.dbg.value(metadata %struct._io_pending_storage_t* %1, metadata !1310, metadata !DIExpression()), !dbg !1332
  %resp1 = getelementptr inbounds %struct._io_pending_storage_t, %struct._io_pending_storage_t* %1, i64 0, i32 3, !dbg !1334
  %2 = load %struct._mc_resp*, %struct._mc_resp** %resp1, align 8, !dbg !1334, !tbaa !1095
  call void @llvm.dbg.value(metadata %struct._mc_resp* %2, metadata !1311, metadata !DIExpression()), !dbg !1332
  %c2 = getelementptr inbounds %struct._io_pending_storage_t, %struct._io_pending_storage_t* %1, i64 0, i32 2, !dbg !1335
  %3 = load %struct.conn*, %struct.conn** %c2, align 8, !dbg !1335, !tbaa !1213
  call void @llvm.dbg.value(metadata %struct.conn* %3, metadata !1312, metadata !DIExpression()), !dbg !1332
  %active = getelementptr inbounds %struct._io_pending_storage_t, %struct._io_pending_storage_t* %1, i64 0, i32 10, !dbg !1336
  %4 = load i8, i8* %active, align 1, !dbg !1336, !tbaa !1075, !range !1086
  %tobool.not = icmp eq i8 %4, 0, !dbg !1336
  br i1 %tobool.not, label %if.else, label %if.end, !dbg !1339

if.else:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 0), align 16, !dbg !1336
  %5 = add i64 %gcov_ctr, 1, !dbg !1336
  store i64 %5, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 0), align 16, !dbg !1336
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.92, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__._storage_get_item_cb, i64 0, i64 0)) #19, !dbg !1336
  unreachable, !dbg !1336

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 2, !dbg !1340
  %6 = load i8*, i8** %buf, align 8, !dbg !1340, !tbaa !1210
  call void @llvm.dbg.value(metadata i8* %6, metadata !1313, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i8 0, metadata !1314, metadata !DIExpression()), !dbg !1332
  %cmp4 = icmp slt i32 %ret, 1, !dbg !1341
  br i1 %cmp4, label %if.then6, label %if.else7, !dbg !1342

if.then6:                                         ; preds = %if.end
  %gcov_ctr177 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 1), align 8, !dbg !1343
  %7 = add i64 %gcov_ctr177, 1, !dbg !1343
  store i64 %7, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 1), align 8, !dbg !1343
  call void @llvm.dbg.value(metadata i8 1, metadata !1314, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i8 undef, metadata !1314, metadata !DIExpression()), !dbg !1332
  br label %if.then39, !dbg !1345

if.else7:                                         ; preds = %if.end
  %exptime = getelementptr inbounds i8, i8* %6, i64 28, !dbg !1346
  %8 = bitcast i8* %exptime to i32*, !dbg !1346
  %9 = load i32, i32* %8, align 4, !dbg !1346, !tbaa !803
  call void @llvm.dbg.value(metadata i32 %9, metadata !1318, metadata !DIExpression()), !dbg !1347
  %iov = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 3, !dbg !1348
  %10 = load %struct.iovec*, %struct.iovec** %iov, align 8, !dbg !1348, !tbaa !1107
  %cmp8.not = icmp eq %struct.iovec* %10, null, !dbg !1350
  br i1 %cmp8.not, label %if.else27, label %if.then10, !dbg !1351

if.then10:                                        ; preds = %if.else7
  %11 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** @crc32c, align 8, !dbg !1352, !tbaa !1354
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i64 0, i32 0, !dbg !1355
  %12 = load i8*, i8** %iov_base, align 8, !dbg !1355, !tbaa !1119
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 32, !dbg !1356
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i64 0, i32 1, !dbg !1357
  %13 = load i64, i64* %iov_len, align 8, !dbg !1357, !tbaa !1125
  %sub = add i64 %13, -32, !dbg !1358
  %call = tail call i32 %11(i32 noundef 0, i8* noundef nonnull %add.ptr, i64 noundef %sub) #17, !dbg !1352
  call void @llvm.dbg.value(metadata i32 %call, metadata !1315, metadata !DIExpression()), !dbg !1347
  %14 = load %struct.iovec*, %struct.iovec** %iov, align 8, !dbg !1359, !tbaa !1107
  %iov_len16 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i64 0, i32 1, !dbg !1360
  store i64 0, i64* %iov_len16, align 8, !dbg !1361, !tbaa !1125
  call void @llvm.dbg.value(metadata i32 1, metadata !1319, metadata !DIExpression()), !dbg !1347
  %iovcnt = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 4
  call void @llvm.dbg.value(metadata i32 %call, metadata !1315, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i32 1, metadata !1319, metadata !DIExpression()), !dbg !1347
  %15 = load i32, i32* %iovcnt, align 8, !dbg !1362, !tbaa !1178
  %cmp17271 = icmp ugt i32 %15, 1, !dbg !1365
  br i1 %cmp17271, label %for.body.preheader, label %for.end, !dbg !1366

for.body.preheader:                               ; preds = %if.then10
  call void @llvm.dbg.value(metadata i32 %call, metadata !1315, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i64 1, metadata !1319, metadata !DIExpression()), !dbg !1347
  %16 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** @crc32c, align 8, !dbg !1367, !tbaa !1354
  %iov_base21280 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i64 1, i32 0, !dbg !1369
  %17 = load i8*, i8** %iov_base21280, align 8, !dbg !1369, !tbaa !1119
  %iov_len25281 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i64 1, i32 1, !dbg !1370
  %18 = load i64, i64* %iov_len25281, align 8, !dbg !1370, !tbaa !1125
  %call26282 = tail call i32 %16(i32 noundef %call, i8* noundef %17, i64 noundef %18) #17, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %call26282, metadata !1315, metadata !DIExpression()), !dbg !1347
  %gcov_ctr178283 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 2), align 16, !dbg !1371
  %19 = add i64 %gcov_ctr178283, 1, !dbg !1371
  store i64 %19, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 2), align 16, !dbg !1371
  call void @llvm.dbg.value(metadata i64 2, metadata !1319, metadata !DIExpression()), !dbg !1347
  %20 = load i32, i32* %iovcnt, align 8, !dbg !1362, !tbaa !1178
  %cmp17284 = icmp ugt i32 %20, 2, !dbg !1365
  br i1 %cmp17284, label %for.body.for.body_crit_edge, label %for.end, !dbg !1366, !llvm.loop !1372

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %indvars.iv.next286 = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 2, %for.body.preheader ]
  %call26285 = phi i32 [ %call26, %for.body.for.body_crit_edge ], [ %call26282, %for.body.preheader ]
  %.pre = load %struct.iovec*, %struct.iovec** %iov, align 8, !dbg !1374, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %call26285, metadata !1315, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next286, metadata !1319, metadata !DIExpression()), !dbg !1347
  %21 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** @crc32c, align 8, !dbg !1367, !tbaa !1354
  %iov_base21 = getelementptr inbounds %struct.iovec, %struct.iovec* %.pre, i64 %indvars.iv.next286, i32 0, !dbg !1369
  %22 = load i8*, i8** %iov_base21, align 8, !dbg !1369, !tbaa !1119
  %iov_len25 = getelementptr inbounds %struct.iovec, %struct.iovec* %.pre, i64 %indvars.iv.next286, i32 1, !dbg !1370
  %23 = load i64, i64* %iov_len25, align 8, !dbg !1370, !tbaa !1125
  %call26 = tail call i32 %21(i32 noundef %call26285, i8* noundef %22, i64 noundef %23) #17, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %call26, metadata !1315, metadata !DIExpression()), !dbg !1347
  %gcov_ctr178 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 2), align 16, !dbg !1371
  %24 = add i64 %gcov_ctr178, 1, !dbg !1371
  store i64 %24, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 2), align 16, !dbg !1371
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next286, 1, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1319, metadata !DIExpression()), !dbg !1347
  %25 = load i32, i32* %iovcnt, align 8, !dbg !1362, !tbaa !1178
  %26 = zext i32 %25 to i64, !dbg !1365
  %cmp17 = icmp ult i64 %indvars.iv.next, %26, !dbg !1365
  br i1 %cmp17, label %for.body.for.body_crit_edge, label %for.end, !dbg !1366, !llvm.loop !1372

for.end:                                          ; preds = %for.body.for.body_crit_edge, %for.body.preheader, %if.then10
  %crc2.0.lcssa = phi i32 [ %call, %if.then10 ], [ %call26282, %for.body.preheader ], [ %call26, %for.body.for.body_crit_edge ], !dbg !1375
  %gcov_ctr179 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 3), align 8, !dbg !1376
  %27 = add i64 %gcov_ctr179, 1, !dbg !1376
  store i64 %27, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 3), align 8, !dbg !1376
  br label %if.end32, !dbg !1376

if.else27:                                        ; preds = %if.else7
  %gcov_ctr180 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 4), align 16, !dbg !1377
  %28 = add i64 %gcov_ctr180, 1, !dbg !1377
  store i64 %28, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 4), align 16, !dbg !1377
  %29 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** @crc32c, align 8, !dbg !1377, !tbaa !1354
  %add.ptr28 = getelementptr inbounds i8, i8* %6, i64 32, !dbg !1379
  %len = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 6, !dbg !1380
  %30 = load i32, i32* %len, align 8, !dbg !1380, !tbaa !1246
  %conv29 = zext i32 %30 to i64, !dbg !1381
  %sub30 = add nsw i64 %conv29, -32, !dbg !1382
  %call31 = tail call i32 %29(i32 noundef 0, i8* noundef nonnull %add.ptr28, i64 noundef %sub30) #17, !dbg !1377
  call void @llvm.dbg.value(metadata i32 %call31, metadata !1315, metadata !DIExpression()), !dbg !1347
  br label %if.end32

if.end32:                                         ; preds = %if.else27, %for.end
  %crc2.1 = phi i32 [ %crc2.0.lcssa, %for.end ], [ %call31, %if.else27 ], !dbg !1383
  call void @llvm.dbg.value(metadata i32 %crc2.1, metadata !1315, metadata !DIExpression()), !dbg !1347
  %cmp33.not = icmp eq i32 %9, %crc2.1, !dbg !1384
  br i1 %cmp33.not, label %if.else135, label %if.end36.thread, !dbg !1386

if.end36.thread:                                  ; preds = %if.end32
  %gcov_ctr181 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 5), align 8, !dbg !1387
  %31 = add i64 %gcov_ctr181, 1, !dbg !1387
  store i64 %31, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 5), align 8, !dbg !1387
  call void @llvm.dbg.value(metadata i8 1, metadata !1314, metadata !DIExpression()), !dbg !1332
  %badcrc = getelementptr inbounds %struct._io_pending_storage_t, %struct._io_pending_storage_t* %1, i64 0, i32 9, !dbg !1389
  store i8 1, i8* %badcrc, align 2, !dbg !1390, !tbaa !1083
  call void @llvm.dbg.value(metadata i8 undef, metadata !1314, metadata !DIExpression()), !dbg !1332
  br label %if.then39, !dbg !1345

if.then39:                                        ; preds = %if.end36.thread, %if.then6
  %noreply = getelementptr inbounds %struct._io_pending_storage_t, %struct._io_pending_storage_t* %1, i64 0, i32 7, !dbg !1391
  %32 = load i8, i8* %noreply, align 4, !dbg !1391, !tbaa !1089, !range !1086
  %tobool40.not = icmp eq i8 %32, 0, !dbg !1391
  br i1 %tobool40.not, label %if.else42, label %if.then41, !dbg !1392

if.then41:                                        ; preds = %if.then39
  %gcov_ctr182 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 6), align 16, !dbg !1393
  %33 = add i64 %gcov_ctr182, 1, !dbg !1393
  store i64 %33, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 6), align 16, !dbg !1393
  %skip = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 11, !dbg !1395
  store i8 1, i8* %skip, align 2, !dbg !1396, !tbaa !1397
  br label %if.end168, !dbg !1398

if.else42:                                        ; preds = %if.then39
  %protocol = getelementptr inbounds %struct.conn, %struct.conn* %3, i64 0, i32 28, !dbg !1399
  %34 = load i32, i32* %protocol, align 4, !dbg !1399, !tbaa !1188
  %cmp43 = icmp eq i32 %34, 4, !dbg !1400
  br i1 %cmp43, label %if.then45, label %if.else84, !dbg !1401

if.then45:                                        ; preds = %if.else42
  %gcov_ctr183 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 7), align 8, !dbg !1402
  %35 = add i64 %gcov_ctr183, 1, !dbg !1402
  store i64 %35, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 7), align 8, !dbg !1402
  call void @llvm.dbg.value(metadata %struct._mc_resp* %2, metadata !1320, metadata !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value)), !dbg !1403
  %bodylen = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 18, i64 8, !dbg !1404
  %36 = bitcast i8* %bodylen to i32*, !dbg !1404
  %37 = load i32, i32* %36, align 8, !dbg !1404, !tbaa !760
  %call46 = tail call fastcc i32 @__bswap_32(i32 noundef %37) #20, !dbg !1404
  call void @llvm.dbg.value(metadata i32 %call46, metadata !1327, metadata !DIExpression()), !dbg !1403
  %38 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 18, i64 4, !dbg !1405
  %39 = load i8, i8* %38, align 4, !dbg !1405, !tbaa !760
  call void @llvm.dbg.value(metadata i8 %39, metadata !1328, metadata !DIExpression()), !dbg !1403
  %iovec_data = getelementptr inbounds %struct._io_pending_storage_t, %struct._io_pending_storage_t* %1, i64 0, i32 6, !dbg !1406
  %40 = load i32, i32* %iovec_data, align 8, !dbg !1406, !tbaa !1186
  %idxprom49 = zext i32 %40 to i64, !dbg !1407
  %iov_len51 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 7, i64 %idxprom49, i32 1, !dbg !1408
  %41 = load i64, i64* %iov_len51, align 8, !dbg !1408, !tbaa !1125
  %conv52 = zext i8 %39 to i64, !dbg !1409
  %add = add i64 %41, %conv52, !dbg !1410
  %42 = trunc i64 %add to i32, !dbg !1411
  %conv55 = sub i32 %call46, %42, !dbg !1411
  call void @llvm.dbg.value(metadata i32 %conv55, metadata !1327, metadata !DIExpression()), !dbg !1403
  %tosend = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 3, !dbg !1412
  %43 = load i32, i32* %tosend, align 4, !dbg !1413, !tbaa !1414
  %conv65 = sub i32 %43, %42, !dbg !1413
  store i32 %conv65, i32* %tosend, align 4, !dbg !1413, !tbaa !1414
  store i8 0, i8* %38, align 4, !dbg !1415, !tbaa !760
  tail call fastcc void @__bswap_16() #20, !dbg !1416
  %status = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 18, i64 6, !dbg !1417
  %44 = bitcast i8* %status to i16*, !dbg !1417
  store i16 256, i16* %44, align 2, !dbg !1418, !tbaa !760
  %call70 = tail call fastcc i32 @__bswap_32(i32 noundef %conv55) #20, !dbg !1419
  store i32 %call70, i32* %36, align 8, !dbg !1420, !tbaa !760
  %45 = load i32, i32* %iovec_data, align 8, !dbg !1421, !tbaa !1186
  %idxprom75 = zext i32 %45 to i64, !dbg !1422
  %iov_len77 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 7, i64 %idxprom75, i32 1, !dbg !1423
  store i64 0, i64* %iov_len77, align 8, !dbg !1424, !tbaa !1125
  %sub80 = add i32 %45, -1, !dbg !1425
  %idxprom81 = zext i32 %sub80 to i64, !dbg !1426
  %iov_len83 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 7, i64 %idxprom81, i32 1, !dbg !1427
  store i64 0, i64* %iov_len83, align 8, !dbg !1428, !tbaa !1125
  %chunked_data_iov = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 10, !dbg !1429
  store i8 0, i8* %chunked_data_iov, align 1, !dbg !1430, !tbaa !1431
  br label %if.end168, !dbg !1432

if.else84:                                        ; preds = %if.else42
  %iov_len87 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 7, i64 0, i32 1, !dbg !1433
  %46 = load i64, i64* %iov_len87, align 8, !dbg !1433, !tbaa !1125
  %cmp88 = icmp ugt i64 %46, 2, !dbg !1435
  br i1 %cmp88, label %land.lhs.true, label %if.else105, !dbg !1436

land.lhs.true:                                    ; preds = %if.else84
  %gcov_ctr184 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 8), align 16, !dbg !1437
  %47 = add i64 %gcov_ctr184, 1, !dbg !1437
  store i64 %47, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 8), align 16, !dbg !1437
  %iov_base92 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 7, i64 0, i32 0, !dbg !1438
  %48 = load i8*, i8** %iov_base92, align 8, !dbg !1438, !tbaa !1119
  %call93 = tail call i32 @memcmp(i8* noundef %48, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0), i64 noundef 3) #21, !dbg !1439
  %cmp94 = icmp eq i32 %call93, 0, !dbg !1440
  br i1 %cmp94, label %if.then96, label %if.else105, !dbg !1441

if.then96:                                        ; preds = %land.lhs.true
  %gcov_ctr185 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 9), align 8, !dbg !1442
  %49 = add i64 %gcov_ctr185, 1, !dbg !1442
  store i64 %49, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 9), align 8, !dbg !1442
  %iovcnt97 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 9, !dbg !1444
  store i8 1, i8* %iovcnt97, align 4, !dbg !1445, !tbaa !1181
  store i64 4, i64* %iov_len87, align 8, !dbg !1446, !tbaa !1125
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i64 0, i64 0), i8** %iov_base92, align 8, !dbg !1447, !tbaa !1119
  %tosend104 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 3, !dbg !1448
  store i32 4, i32* %tosend104, align 4, !dbg !1449, !tbaa !1414
  br label %if.end130, !dbg !1450

if.else105:                                       ; preds = %land.lhs.true, %if.else84
  call void @llvm.dbg.value(metadata i32 0, metadata !1329, metadata !DIExpression()), !dbg !1451
  %iovec_data107 = getelementptr inbounds %struct._io_pending_storage_t, %struct._io_pending_storage_t* %1, i64 0, i32 6
  %tosend115 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 3
  %.pre279 = load i32, i32* %iovec_data107, align 8, !dbg !1452, !tbaa !1186
  %50 = zext i32 %.pre279 to i64
  br label %for.body110, !dbg !1456

for.body110:                                      ; preds = %if.else105, %for.body110
  %indvars.iv276 = phi i64 [ 0, %if.else105 ], [ %indvars.iv.next277, %for.body110 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv276, metadata !1329, metadata !DIExpression()), !dbg !1451
  %iov_len114 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 7, i64 %indvars.iv276, i32 1, !dbg !1457
  %51 = load i64, i64* %iov_len114, align 8, !dbg !1457, !tbaa !1125
  %52 = load i32, i32* %tosend115, align 4, !dbg !1459, !tbaa !1414
  %53 = trunc i64 %51 to i32, !dbg !1459
  %conv118 = sub i32 %52, %53, !dbg !1459
  store i32 %conv118, i32* %tosend115, align 4, !dbg !1459, !tbaa !1414
  store i64 0, i64* %iov_len114, align 8, !dbg !1460, !tbaa !1125
  %iov_base126 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 7, i64 %indvars.iv276, i32 0, !dbg !1461
  store i8* null, i8** %iov_base126, align 8, !dbg !1462, !tbaa !1119
  %gcov_ctr186 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 10), align 16, !dbg !1463
  %54 = add i64 %gcov_ctr186, 1, !dbg !1463
  store i64 %54, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 10), align 16, !dbg !1463
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next277, metadata !1329, metadata !DIExpression()), !dbg !1451
  %cmp108.not.not = icmp ult i64 %indvars.iv276, %50, !dbg !1464
  br i1 %cmp108.not.not, label %for.body110, label %for.end129, !dbg !1456, !llvm.loop !1465

for.end129:                                       ; preds = %for.body110
  %gcov_ctr187 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 11), align 8
  %55 = add i64 %gcov_ctr187, 1
  store i64 %55, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 11), align 8
  br label %if.end130

if.end130:                                        ; preds = %for.end129, %if.then96
  %chunked_total = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 8, !dbg !1467
  store i32 0, i32* %chunked_total, align 8, !dbg !1468, !tbaa !1469
  %chunked_data_iov131 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 10, !dbg !1470
  store i8 0, i8* %chunked_data_iov131, align 1, !dbg !1471, !tbaa !1431
  br label %if.end168

if.else135:                                       ; preds = %if.end32
  call void @llvm.dbg.value(metadata i8 undef, metadata !1314, metadata !DIExpression()), !dbg !1332
  %56 = getelementptr inbounds i8, i8* %6, i64 40, !dbg !1472
  %57 = load i8, i8* %56, align 8, !dbg !1472, !tbaa !760
  %cmp137.not = icmp eq i8 %57, 0, !dbg !1472
  br i1 %cmp137.not, label %if.else140, label %if.end141, !dbg !1476

if.else140:                                       ; preds = %if.else135
  %gcov_ctr188 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 12), align 16, !dbg !1472
  %58 = add i64 %gcov_ctr188, 1, !dbg !1472
  store i64 %58, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 12), align 16, !dbg !1472
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef 218, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__._storage_get_item_cb, i64 0, i64 0)) #19, !dbg !1472
  unreachable, !dbg !1472

if.end141:                                        ; preds = %if.else135
  %it_flags = getelementptr inbounds i8, i8* %6, i64 38, !dbg !1477
  %59 = bitcast i8* %it_flags to i16*, !dbg !1477
  %60 = load i16, i16* %59, align 2, !dbg !1477, !tbaa !763
  %61 = and i16 %60, 32, !dbg !1479
  %cmp143 = icmp eq i16 %61, 0, !dbg !1480
  br i1 %cmp143, label %if.then145, label %if.end168, !dbg !1481

if.then145:                                       ; preds = %if.end141
  %gcov_ctr189 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 13), align 8, !dbg !1482
  %62 = add i64 %gcov_ctr189, 1, !dbg !1482
  store i64 %62, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 13), align 8, !dbg !1482
  %data146 = getelementptr inbounds i8, i8* %6, i64 48, !dbg !1482
  %63 = getelementptr inbounds i8, i8* %6, i64 41, !dbg !1482
  %64 = load i8, i8* %63, align 1, !dbg !1482, !tbaa !760
  %65 = zext i8 %64 to i64
  %add.ptr148 = getelementptr inbounds i8, i8* %data146, i64 %65, !dbg !1482
  %add.ptr149 = getelementptr inbounds i8, i8* %add.ptr148, i64 1, !dbg !1482
  %66 = load i16, i16* %59, align 2, !dbg !1482, !tbaa !763
  %conv151 = zext i16 %66 to i32, !dbg !1482
  %and152 = lshr i32 %conv151, 6, !dbg !1482
  %67 = and i32 %and152, 4, !dbg !1482
  %68 = zext i32 %67 to i64, !dbg !1482
  %add.ptr154 = getelementptr inbounds i8, i8* %add.ptr149, i64 %68, !dbg !1482
  %and157 = shl nuw nsw i32 %conv151, 2, !dbg !1482
  %69 = and i32 %and157, 8, !dbg !1482
  %70 = zext i32 %69 to i64, !dbg !1482
  %add.ptr160 = getelementptr inbounds i8, i8* %add.ptr154, i64 %70, !dbg !1482
  %iovec_data162 = getelementptr inbounds %struct._io_pending_storage_t, %struct._io_pending_storage_t* %1, i64 0, i32 6, !dbg !1484
  %71 = load i32, i32* %iovec_data162, align 8, !dbg !1484, !tbaa !1186
  %idxprom163 = zext i32 %71 to i64, !dbg !1485
  %iov_base165 = getelementptr inbounds %struct._mc_resp, %struct._mc_resp* %2, i64 0, i32 7, i64 %idxprom163, i32 0, !dbg !1486
  store i8* %add.ptr160, i8** %iov_base165, align 8, !dbg !1487, !tbaa !1119
  br label %if.end168, !dbg !1488

if.end168:                                        ; preds = %if.end141, %if.then145, %if.then41, %if.end130, %if.then45
  %.sink = phi i8 [ 1, %if.then45 ], [ 1, %if.end130 ], [ 1, %if.then41 ], [ 0, %if.then145 ], [ 0, %if.end141 ]
  %miss167 = getelementptr inbounds %struct._io_pending_storage_t, %struct._io_pending_storage_t* %1, i64 0, i32 8, !dbg !1489
  store i8 %.sink, i8* %miss167, align 1, !dbg !1489, !tbaa !1080
  store i8 0, i8* %active, align 1, !dbg !1490, !tbaa !1075
  %72 = load %struct.conn*, %struct.conn** %c2, align 8, !dbg !1491, !tbaa !1213
  %io_queue_type = getelementptr inbounds %struct._io_pending_storage_t, %struct._io_pending_storage_t* %1, i64 0, i32 0, !dbg !1492
  %73 = load i32, i32* %io_queue_type, align 8, !dbg !1492, !tbaa !1098
  %call171 = tail call %struct.io_queue_s* @conn_io_queue_get(%struct.conn* noundef %72, i32 noundef %73) #17, !dbg !1493
  call void @llvm.dbg.value(metadata %struct.io_queue_s* %call171, metadata !1331, metadata !DIExpression()), !dbg !1332
  %count = getelementptr inbounds %struct.io_queue_s, %struct.io_queue_s* %call171, i64 0, i32 2, !dbg !1494
  %74 = load i32, i32* %count, align 8, !dbg !1495, !tbaa !1224
  %dec = add nsw i32 %74, -1, !dbg !1495
  store i32 %dec, i32* %count, align 8, !dbg !1495, !tbaa !1224
  %cmp173 = icmp eq i32 %dec, 0, !dbg !1496
  br i1 %cmp173, label %if.then175, label %if.end176, !dbg !1498

if.then175:                                       ; preds = %if.end168
  %gcov_ctr190 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 14), align 16, !dbg !1499
  %75 = add i64 %gcov_ctr190, 1, !dbg !1499
  store i64 %75, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.107, i64 0, i64 14), align 16, !dbg !1499
  tail call void @redispatch_conn(%struct.conn* noundef %3) #17, !dbg !1501
  br label %if.end176, !dbg !1502

if.end176:                                        ; preds = %if.then175, %if.end168
  ret void, !dbg !1503
}

; Function Attrs: nounwind
declare !dbg !1504 dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !1509 dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @storage_submit_cb(%struct.io_queue_s* nocapture noundef readonly %q) local_unnamed_addr #0 !dbg !1510 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.io_queue_s* %q, metadata !1512, metadata !DIExpression()), !dbg !1513
  %ctx = getelementptr inbounds %struct.io_queue_s, %struct.io_queue_s* %q, i64 0, i32 0, !dbg !1514
  %1 = load i8*, i8** %ctx, align 8, !dbg !1514, !tbaa !1515
  %stack_ctx = getelementptr inbounds %struct.io_queue_s, %struct.io_queue_s* %q, i64 0, i32 1, !dbg !1516
  %2 = bitcast i8** %stack_ctx to %struct._obj_io**, !dbg !1516
  %3 = load %struct._obj_io*, %struct._obj_io** %2, align 8, !dbg !1516, !tbaa !1215
  %call = tail call i32 @extstore_submit(i8* noundef %1, %struct._obj_io* noundef %3) #17, !dbg !1517
  ret void, !dbg !1518
}

declare !dbg !1519 dso_local i32 @extstore_submit(i8* noundef, %struct._obj_io* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @storage_complete_cb(%struct.io_queue_s* nocapture noundef writeonly %q) local_unnamed_addr #6 !dbg !1522 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.109, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.109, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.io_queue_s* %q, metadata !1524, metadata !DIExpression()), !dbg !1525
  %stack_ctx = getelementptr inbounds %struct.io_queue_s, %struct.io_queue_s* %q, i64 0, i32 1, !dbg !1526
  store i8* null, i8** %stack_ctx, align 8, !dbg !1527, !tbaa !1215
  ret void, !dbg !1528
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @storage_finalize_cb(%struct._io_pending_t* nocapture noundef %pending) local_unnamed_addr #0 !dbg !1529 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.110, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.110, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct._io_pending_t* %pending, metadata !1531, metadata !DIExpression()), !dbg !1534
  tail call fastcc void @recache_or_free(%struct._io_pending_t* noundef %pending) #20, !dbg !1535
  call void @llvm.dbg.value(metadata %struct._io_pending_t* %pending, metadata !1532, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata %struct._io_pending_t* %pending, metadata !1533, metadata !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)), !dbg !1534
  %iov = getelementptr inbounds %struct._io_pending_t, %struct._io_pending_t* %pending, i64 0, i32 4, i64 32, !dbg !1536
  %1 = bitcast i8* %iov to %struct.iovec**, !dbg !1536
  %2 = load %struct.iovec*, %struct.iovec** %1, align 8, !dbg !1536, !tbaa !1107
  %tobool.not = icmp eq %struct.iovec* %2, null, !dbg !1538
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1539

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.iovec* %2 to i8*, !dbg !1539
  %gcov_ctr3 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.110, i64 0, i64 1), align 8, !dbg !1540
  %4 = add i64 %gcov_ctr3, 1, !dbg !1540
  store i64 %4, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.110, i64 0, i64 1), align 8, !dbg !1540
  tail call void @free(i8* noundef nonnull %3) #17, !dbg !1542
  store %struct.iovec* null, %struct.iovec** %1, align 8, !dbg !1543, !tbaa !1107
  br label %if.end, !dbg !1544

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1545
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @recache_or_free(%struct._io_pending_t* nocapture noundef %pending) unnamed_addr #0 !dbg !1546 {
entry:
  call void @llvm.dbg.value(metadata %struct._io_pending_t* %pending, metadata !1548, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata %struct._io_pending_t* %pending, metadata !1549, metadata !DIExpression()), !dbg !1569
  %0 = getelementptr inbounds %struct._io_pending_t, %struct._io_pending_t* %pending, i64 0, i32 2, !dbg !1570
  %1 = load %struct.conn*, %struct.conn** %0, align 8, !dbg !1570, !tbaa !1213
  call void @llvm.dbg.value(metadata %struct.conn* %1, metadata !1550, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata %struct._io_pending_t* %pending, metadata !1551, metadata !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)), !dbg !1569
  %buf = getelementptr inbounds %struct._io_pending_t, %struct._io_pending_t* %pending, i64 0, i32 4, i64 24, !dbg !1571
  %2 = bitcast i8* %buf to i8**, !dbg !1571
  %3 = load i8*, i8** %2, align 8, !dbg !1571, !tbaa !1210
  %4 = bitcast i8* %3 to %struct._stritem*, !dbg !1572
  call void @llvm.dbg.value(metadata %struct._stritem* %4, metadata !1552, metadata !DIExpression()), !dbg !1569
  %cmp2.not = icmp eq %struct.conn* %1, null, !dbg !1573
  br i1 %cmp2.not, label %if.else4, label %if.end5, !dbg !1576

if.else4:                                         ; preds = %entry
  %gcov_ctr160 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 1), align 8, !dbg !1573
  %5 = add i64 %gcov_ctr160, 1, !dbg !1573
  store i64 %5, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 1), align 8, !dbg !1573
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef 384, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.recache_or_free, i64 0, i64 0)) #19, !dbg !1573
  unreachable, !dbg !1573

if.end5:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8 1, metadata !1553, metadata !DIExpression()), !dbg !1569
  %6 = getelementptr inbounds %struct._io_pending_t, %struct._io_pending_t* %pending, i64 0, i32 4, i64 79, !dbg !1577
  %7 = load i8, i8* %6, align 1, !dbg !1577, !tbaa !1075, !range !1086
  %tobool.not = icmp eq i8 %7, 0, !dbg !1577
  br i1 %tobool.not, label %if.else36, label %if.then6, !dbg !1578

if.then6:                                         ; preds = %if.end5
  call void @llvm.dbg.value(metadata i8 0, metadata !1553, metadata !DIExpression()), !dbg !1569
  %hdr_it = getelementptr inbounds %struct._io_pending_t, %struct._io_pending_t* %pending, i64 0, i32 4, !dbg !1579
  %8 = bitcast [120 x i8]* %hdr_it to %struct._stritem**, !dbg !1579
  %9 = load %struct._stritem*, %struct._stritem** %8, align 8, !dbg !1579, !tbaa !1092
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %9, i64 0, i32 9, !dbg !1579
  %10 = load i8, i8* %nkey, align 1, !dbg !1579, !tbaa !760
  %conv = zext i8 %10 to i64, !dbg !1579
  %add7 = add nuw nsw i64 %conv, 49, !dbg !1579
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %9, i64 0, i32 5, !dbg !1579
  %11 = load i32, i32* %nbytes, align 8, !dbg !1579, !tbaa !803
  %conv9 = sext i32 %11 to i64, !dbg !1579
  %add10 = add nsw i64 %add7, %conv9, !dbg !1579
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %9, i64 0, i32 7, !dbg !1579
  %12 = load i16, i16* %it_flags, align 2, !dbg !1579, !tbaa !763
  %conv12 = zext i16 %12 to i32, !dbg !1579
  %and = lshr i32 %conv12, 6, !dbg !1579
  %13 = and i32 %and, 4, !dbg !1579
  %14 = zext i32 %13 to i64, !dbg !1579
  %add14 = add nsw i64 %add10, %14, !dbg !1579
  %and18 = shl nuw nsw i32 %conv12, 2, !dbg !1579
  %15 = and i32 %and18, 8, !dbg !1579
  %16 = zext i32 %15 to i64, !dbg !1579
  %add21 = add nsw i64 %add14, %16, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %add21, metadata !1554, metadata !DIExpression()), !dbg !1580
  %call = tail call i32 @slabs_clsid(i64 noundef %add21) #17, !dbg !1581
  tail call void @slabs_free(i8* noundef %3, i64 noundef %add21, i32 noundef %call) #17, !dbg !1582
  %io_queue_type = getelementptr %struct._io_pending_t, %struct._io_pending_t* %pending, i64 0, i32 0, !dbg !1583
  %17 = load i32, i32* %io_queue_type, align 8, !dbg !1583, !tbaa !1098
  %call22 = tail call %struct.io_queue_s* @conn_io_queue_get(%struct.conn* noundef nonnull %1, i32 noundef %17) #17, !dbg !1584
  call void @llvm.dbg.value(metadata %struct.io_queue_s* %call22, metadata !1557, metadata !DIExpression()), !dbg !1580
  %count = getelementptr inbounds %struct.io_queue_s, %struct.io_queue_s* %call22, i64 0, i32 2, !dbg !1585
  %18 = load i32, i32* %count, align 8, !dbg !1586, !tbaa !1224
  %dec = add nsw i32 %18, -1, !dbg !1586
  store i32 %dec, i32* %count, align 8, !dbg !1586, !tbaa !1224
  %cmp24 = icmp sgt i32 %18, 0, !dbg !1587
  br i1 %cmp24, label %if.end28, label %if.else27, !dbg !1590

if.else27:                                        ; preds = %if.then6
  %gcov_ctr161 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 2), align 16, !dbg !1587
  %19 = add i64 %gcov_ctr161, 1, !dbg !1587
  store i64 %19, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 2), align 16, !dbg !1587
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef 395, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.recache_or_free, i64 0, i64 0)) #19, !dbg !1587
  unreachable, !dbg !1587

if.end28:                                         ; preds = %if.then6
  %gcov_ctr162 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 3), align 8, !dbg !1591
  %20 = add i64 %gcov_ctr162, 1, !dbg !1591
  store i64 %20, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 3), align 8, !dbg !1591
  %thread = getelementptr inbounds %struct.conn, %struct.conn* %1, i64 0, i32 43, !dbg !1592
  %21 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !1592, !tbaa !873
  %mutex = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %21, i64 0, i32 4, i32 0, !dbg !1593
  %call29 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex) #17, !dbg !1594
  %22 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread, align 8, !dbg !1595, !tbaa !873
  %get_aborted_extstore = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %22, i64 0, i32 4, i32 26, !dbg !1596
  %23 = load i64, i64* %get_aborted_extstore, align 8, !dbg !1597, !tbaa !1598
  %inc = add i64 %23, 1, !dbg !1597
  store i64 %inc, i64* %get_aborted_extstore, align 8, !dbg !1597, !tbaa !1598
  %mutex34 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %22, i64 0, i32 4, i32 0, !dbg !1599
  %call35 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex34) #17, !dbg !1600
  call void @llvm.dbg.value(metadata i8 undef, metadata !1553, metadata !DIExpression()), !dbg !1569
  br label %if.end154, !dbg !1601

if.else36:                                        ; preds = %if.end5
  %24 = getelementptr inbounds %struct._io_pending_t, %struct._io_pending_t* %pending, i64 0, i32 4, i64 77, !dbg !1602
  %25 = load i8, i8* %24, align 1, !dbg !1602, !tbaa !1080, !range !1086
  %tobool37.not = icmp eq i8 %25, 0, !dbg !1602
  br i1 %tobool37.not, label %if.else82, label %if.then38, !dbg !1603

if.then38:                                        ; preds = %if.else36
  call void @llvm.dbg.value(metadata i8 0, metadata !1553, metadata !DIExpression()), !dbg !1569
  %hdr_it40 = getelementptr inbounds %struct._io_pending_t, %struct._io_pending_t* %pending, i64 0, i32 4, !dbg !1604
  %26 = bitcast [120 x i8]* %hdr_it40 to %struct._stritem**, !dbg !1604
  %27 = load %struct._stritem*, %struct._stritem** %26, align 8, !dbg !1604, !tbaa !1092
  %nkey41 = getelementptr inbounds %struct._stritem, %struct._stritem* %27, i64 0, i32 9, !dbg !1604
  %28 = load i8, i8* %nkey41, align 1, !dbg !1604, !tbaa !760
  %conv42 = zext i8 %28 to i64, !dbg !1604
  %add44 = add nuw nsw i64 %conv42, 49, !dbg !1604
  %nbytes46 = getelementptr inbounds %struct._stritem, %struct._stritem* %27, i64 0, i32 5, !dbg !1604
  %29 = load i32, i32* %nbytes46, align 8, !dbg !1604, !tbaa !803
  %conv47 = sext i32 %29 to i64, !dbg !1604
  %add48 = add nsw i64 %add44, %conv47, !dbg !1604
  %it_flags50 = getelementptr inbounds %struct._stritem, %struct._stritem* %27, i64 0, i32 7, !dbg !1604
  %30 = load i16, i16* %it_flags50, align 2, !dbg !1604, !tbaa !763
  %conv51 = zext i16 %30 to i32, !dbg !1604
  %and52 = lshr i32 %conv51, 6, !dbg !1604
  %31 = and i32 %and52, 4, !dbg !1604
  %32 = zext i32 %31 to i64, !dbg !1604
  %add55 = add nsw i64 %add48, %32, !dbg !1604
  %and59 = shl nuw nsw i32 %conv51, 2, !dbg !1604
  %33 = and i32 %and59, 8, !dbg !1604
  %34 = zext i32 %33 to i64, !dbg !1604
  %add62 = add nsw i64 %add55, %34, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %add62, metadata !1558, metadata !DIExpression()), !dbg !1605
  tail call void @item_unlink(%struct._stritem* noundef %27) #17, !dbg !1606
  %call64 = tail call i32 @slabs_clsid(i64 noundef %add62) #17, !dbg !1607
  tail call void @slabs_free(i8* noundef %3, i64 noundef %add62, i32 noundef %call64) #17, !dbg !1608
  %thread65 = getelementptr inbounds %struct.conn, %struct.conn* %1, i64 0, i32 43, !dbg !1609
  %35 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread65, align 8, !dbg !1609, !tbaa !873
  %mutex67 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %35, i64 0, i32 4, i32 0, !dbg !1610
  %call68 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex67) #17, !dbg !1611
  %36 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread65, align 8, !dbg !1612, !tbaa !873
  %miss_from_extstore = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 0, i32 4, i32 29, !dbg !1613
  %37 = load i64, i64* %miss_from_extstore, align 8, !dbg !1614, !tbaa !1615
  %inc71 = add i64 %37, 1, !dbg !1614
  store i64 %inc71, i64* %miss_from_extstore, align 8, !dbg !1614, !tbaa !1615
  %38 = getelementptr inbounds %struct._io_pending_t, %struct._io_pending_t* %pending, i64 0, i32 4, i64 78, !dbg !1616
  %39 = load i8, i8* %38, align 2, !dbg !1616, !tbaa !1083, !range !1086
  %tobool72.not = icmp eq i8 %39, 0, !dbg !1616
  br i1 %tobool72.not, label %if.end77, label %if.then73, !dbg !1618

if.then73:                                        ; preds = %if.then38
  %gcov_ctr163 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 4), align 16, !dbg !1619
  %40 = add i64 %gcov_ctr163, 1, !dbg !1619
  store i64 %40, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 4), align 16, !dbg !1619
  %badcrc_from_extstore = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 0, i32 4, i32 30, !dbg !1620
  %41 = load i64, i64* %badcrc_from_extstore, align 8, !dbg !1621, !tbaa !1622
  %inc76 = add i64 %41, 1, !dbg !1621
  store i64 %inc76, i64* %badcrc_from_extstore, align 8, !dbg !1621, !tbaa !1622
  br label %if.end77, !dbg !1619

if.end77:                                         ; preds = %if.then73, %if.then38
  %gcov_ctr164 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 5), align 8, !dbg !1623
  %42 = add i64 %gcov_ctr164, 1, !dbg !1623
  store i64 %42, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 5), align 8, !dbg !1623
  %mutex80 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %36, i64 0, i32 4, i32 0, !dbg !1624
  %call81 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex80) #17, !dbg !1625
  call void @llvm.dbg.value(metadata i8 undef, metadata !1553, metadata !DIExpression()), !dbg !1569
  br label %if.end154, !dbg !1601

if.else82:                                        ; preds = %if.else36
  %43 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 63), align 4, !dbg !1626, !tbaa !1627
  %tobool83.not = icmp eq i32 %43, 0, !dbg !1628
  br i1 %tobool83.not, label %if.then132.sink.split, label %if.then84, !dbg !1629

if.then84:                                        ; preds = %if.else82
  %time = getelementptr inbounds i8, i8* %3, i64 24, !dbg !1630
  %44 = bitcast i8* %time to i32*, !dbg !1630
  %45 = load i32, i32* %44, align 8, !dbg !1630, !tbaa !803
  call void @llvm.dbg.value(metadata i32 %45, metadata !1561, metadata !DIExpression()), !dbg !1631
  %call85 = tail call i8* @item_trylock(i32 noundef %45) #17, !dbg !1632
  call void @llvm.dbg.value(metadata i8* %call85, metadata !1564, metadata !DIExpression()), !dbg !1631
  %cmp86.not = icmp eq i8* %call85, null, !dbg !1633
  br i1 %cmp86.not, label %if.end127.thread, label %if.then88, !dbg !1634

if.end127.thread:                                 ; preds = %if.then84
  call void @llvm.dbg.value(metadata i8 undef, metadata !1553, metadata !DIExpression()), !dbg !1569
  %gcov_ctr170244 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 11), align 8, !dbg !1635
  %46 = add i64 %gcov_ctr170244, 1, !dbg !1635
  store i64 %46, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 11), align 8, !dbg !1635
  br label %if.then132.sink.split, !dbg !1601

if.then88:                                        ; preds = %if.then84
  %hdr_it89 = getelementptr inbounds %struct._io_pending_t, %struct._io_pending_t* %pending, i64 0, i32 4, !dbg !1636
  %47 = bitcast [120 x i8]* %hdr_it89 to %struct._stritem**, !dbg !1636
  %48 = load %struct._stritem*, %struct._stritem** %47, align 8, !dbg !1636, !tbaa !1092
  call void @llvm.dbg.value(metadata %struct._stritem* %48, metadata !1565, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i8 25, metadata !1568, metadata !DIExpression()), !dbg !1637
  %it_flags90 = getelementptr inbounds %struct._stritem, %struct._stritem* %48, i64 0, i32 7, !dbg !1638
  %49 = load i16, i16* %it_flags90, align 2, !dbg !1638, !tbaa !763
  %50 = and i16 %49, 25, !dbg !1640
  %cmp95 = icmp eq i16 %50, 25, !dbg !1641
  br i1 %cmp95, label %land.lhs.true, label %if.end127, !dbg !1642

land.lhs.true:                                    ; preds = %if.then88
  %gcov_ctr165 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 6), align 16, !dbg !1643
  %51 = add i64 %gcov_ctr165, 1, !dbg !1643
  store i64 %51, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 6), align 16, !dbg !1643
  %time97 = getelementptr inbounds %struct._stritem, %struct._stritem* %48, i64 0, i32 3, !dbg !1644
  %52 = load i32, i32* %time97, align 8, !dbg !1644, !tbaa !803
  %53 = load volatile i32, i32* @current_time, align 4, !dbg !1645, !tbaa !803
  %sub = add i32 %53, -60, !dbg !1646
  %cmp98 = icmp ugt i32 %52, %sub, !dbg !1647
  br i1 %cmp98, label %land.lhs.true100, label %if.end127, !dbg !1648

land.lhs.true100:                                 ; preds = %land.lhs.true
  %gcov_ctr166 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 7), align 8, !dbg !1649
  %54 = add i64 %gcov_ctr166, 1, !dbg !1649
  store i64 %54, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 7), align 8, !dbg !1649
  %recache_counter = getelementptr inbounds %struct.conn, %struct.conn* %1, i64 0, i32 27, !dbg !1650
  %55 = load i32, i32* %recache_counter, align 8, !dbg !1651, !tbaa !1652
  %inc101 = add i32 %55, 1, !dbg !1651
  store i32 %inc101, i32* %recache_counter, align 8, !dbg !1651, !tbaa !1652
  %56 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 63), align 4, !dbg !1653, !tbaa !1627
  %rem = urem i32 %55, %56, !dbg !1654
  %cmp102 = icmp eq i32 %rem, 0, !dbg !1655
  br i1 %cmp102, label %if.then104, label %if.end127, !dbg !1656

if.then104:                                       ; preds = %land.lhs.true100
  call void @llvm.dbg.value(metadata i8 0, metadata !1553, metadata !DIExpression()), !dbg !1569
  %exptime = getelementptr inbounds %struct._stritem, %struct._stritem* %48, i64 0, i32 4, !dbg !1657
  %57 = load i32, i32* %exptime, align 4, !dbg !1657, !tbaa !803
  %exptime105 = getelementptr inbounds i8, i8* %3, i64 28, !dbg !1659
  %58 = bitcast i8* %exptime105 to i32*, !dbg !1659
  store i32 %57, i32* %58, align 4, !dbg !1660, !tbaa !803
  %it_flags106 = getelementptr inbounds i8, i8* %3, i64 38, !dbg !1661
  %59 = bitcast i8* %it_flags106 to i16*, !dbg !1661
  %60 = load i16, i16* %59, align 2, !dbg !1662, !tbaa !763
  %61 = and i16 %60, -2, !dbg !1662
  store i16 %61, i16* %59, align 2, !dbg !1662, !tbaa !763
  %refcount = getelementptr inbounds i8, i8* %3, i64 36, !dbg !1663
  %62 = bitcast i8* %refcount to i16*, !dbg !1663
  store i16 0, i16* %62, align 4, !dbg !1664, !tbaa !763
  %h_next = getelementptr inbounds i8, i8* %3, i64 16, !dbg !1665
  %63 = bitcast i8* %h_next to %struct._stritem**, !dbg !1665
  store %struct._stritem* null, %struct._stritem** %63, align 8, !dbg !1666, !tbaa !1354
  %thread110 = getelementptr inbounds %struct.conn, %struct.conn* %1, i64 0, i32 43, !dbg !1667
  %64 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread110, align 8, !dbg !1667, !tbaa !873
  %storage = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %64, i64 0, i32 10, !dbg !1667
  %65 = load i8*, i8** %storage, align 8, !dbg !1667, !tbaa !886
  tail call void @storage_delete(i8* noundef %65, %struct._stritem* noundef nonnull %48) #20, !dbg !1667
  %gcov_ctr167 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 8), align 16, !dbg !1669
  %66 = add i64 %gcov_ctr167, 1, !dbg !1669
  store i64 %66, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 8), align 16, !dbg !1669
  %call111 = tail call i32 @item_replace(%struct._stritem* noundef nonnull %48, %struct._stritem* noundef nonnull %4, i32 noundef %45) #17, !dbg !1670
  %67 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread110, align 8, !dbg !1671, !tbaa !873
  %mutex114 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %67, i64 0, i32 4, i32 0, !dbg !1672
  %call115 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %mutex114) #17, !dbg !1673
  %68 = load %struct.LIBEVENT_THREAD*, %struct.LIBEVENT_THREAD** %thread110, align 8, !dbg !1674, !tbaa !873
  %recache_from_extstore = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %68, i64 0, i32 4, i32 28, !dbg !1675
  %69 = load i64, i64* %recache_from_extstore, align 8, !dbg !1676, !tbaa !1677
  %inc118 = add i64 %69, 1, !dbg !1676
  store i64 %inc118, i64* %recache_from_extstore, align 8, !dbg !1676, !tbaa !1677
  %mutex121 = getelementptr inbounds %struct.LIBEVENT_THREAD, %struct.LIBEVENT_THREAD* %68, i64 0, i32 4, i32 0, !dbg !1678
  %call122 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %mutex121) #17, !dbg !1679
  call void @llvm.dbg.value(metadata i8 undef, metadata !1553, metadata !DIExpression()), !dbg !1569
  %70 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 9) to <2 x i64>*), align 8, !dbg !1680
  %71 = add <2 x i64> %70, <i64 1, i64 1>, !dbg !1680
  store <2 x i64> %71, <2 x i64>* bitcast (i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 9) to <2 x i64>*), align 8, !dbg !1680
  tail call void @item_trylock_unlock(i8* noundef nonnull %call85) #17, !dbg !1681
  %72 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 11) to <2 x i64>*), align 8, !dbg !1635
  %73 = add <2 x i64> %72, <i64 1, i64 1>, !dbg !1635
  store <2 x i64> %73, <2 x i64>* bitcast (i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 11) to <2 x i64>*), align 8, !dbg !1635
  br label %if.end154, !dbg !1601

if.end127:                                        ; preds = %if.then88, %land.lhs.true, %land.lhs.true100
  call void @llvm.dbg.value(metadata i8 undef, metadata !1553, metadata !DIExpression()), !dbg !1569
  %74 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 9) to <2 x i64>*), align 8, !dbg !1680
  %75 = add <2 x i64> %74, <i64 1, i64 1>, !dbg !1680
  store <2 x i64> %75, <2 x i64>* bitcast (i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 9) to <2 x i64>*), align 8, !dbg !1680
  tail call void @item_trylock_unlock(i8* noundef nonnull %call85) #17, !dbg !1681
  %76 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 11) to <2 x i64>*), align 8, !dbg !1635
  %77 = add <2 x i64> %76, <i64 1, i64 1>, !dbg !1635
  store <2 x i64> %77, <2 x i64>* bitcast (i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 11) to <2 x i64>*), align 8, !dbg !1635
  br label %if.then132, !dbg !1601

if.then132.sink.split:                            ; preds = %if.else82, %if.end127.thread
  %gcov_ctr171245 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 12), align 16
  %78 = add i64 %gcov_ctr171245, 1
  store i64 %78, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 12), align 16
  br label %if.then132, !dbg !1683

if.then132:                                       ; preds = %if.end127, %if.then132.sink.split
  %gcov_ctr172 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 13), align 8, !dbg !1683
  %79 = add i64 %gcov_ctr172, 1, !dbg !1683
  store i64 %79, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.111, i64 0, i64 13), align 8, !dbg !1683
  %80 = getelementptr inbounds i8, i8* %3, i64 41, !dbg !1685
  %81 = load i8, i8* %80, align 1, !dbg !1685, !tbaa !760
  %conv134 = zext i8 %81 to i64, !dbg !1685
  %add136 = add nuw nsw i64 %conv134, 49, !dbg !1685
  %nbytes137 = getelementptr inbounds i8, i8* %3, i64 32, !dbg !1685
  %82 = bitcast i8* %nbytes137 to i32*, !dbg !1685
  %83 = load i32, i32* %82, align 8, !dbg !1685, !tbaa !803
  %conv138 = sext i32 %83 to i64, !dbg !1685
  %add139 = add nsw i64 %add136, %conv138, !dbg !1685
  %it_flags140 = getelementptr inbounds i8, i8* %3, i64 38, !dbg !1685
  %84 = bitcast i8* %it_flags140 to i16*, !dbg !1685
  %85 = load i16, i16* %84, align 2, !dbg !1685, !tbaa !763
  %conv141 = zext i16 %85 to i32, !dbg !1685
  %and142 = lshr i32 %conv141, 6, !dbg !1685
  %86 = and i32 %and142, 4, !dbg !1685
  %87 = zext i32 %86 to i64, !dbg !1685
  %add145 = add nsw i64 %add139, %87, !dbg !1685
  %and148 = shl nuw nsw i32 %conv141, 2, !dbg !1685
  %88 = and i32 %and148, 8, !dbg !1685
  %89 = zext i32 %88 to i64, !dbg !1685
  %add151 = add nsw i64 %add145, %89, !dbg !1685
  %90 = getelementptr inbounds i8, i8* %3, i64 40, !dbg !1686
  %91 = load i8, i8* %90, align 8, !dbg !1686, !tbaa !760
  %92 = and i8 %91, 63, !dbg !1686
  %and153 = zext i8 %92 to i32, !dbg !1686
  tail call void @slabs_free(i8* noundef %3, i64 noundef %add151, i32 noundef %and153) #17, !dbg !1687
  br label %if.end154, !dbg !1687

if.end154:                                        ; preds = %if.then104, %if.end77, %if.end28, %if.then132
  call void @llvm.dbg.value(metadata %struct._io_pending_t* %pending, metadata !1551, metadata !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value)), !dbg !1569
  store i8* null, i8** %2, align 8, !dbg !1688, !tbaa !1689
  %next = getelementptr inbounds %struct._io_pending_t, %struct._io_pending_t* %pending, i64 0, i32 4, i64 16, !dbg !1690
  %93 = bitcast i8* %next to %struct._obj_io**, !dbg !1690
  store %struct._obj_io* null, %struct._obj_io** %93, align 8, !dbg !1691, !tbaa !1692
  store i8 0, i8* %6, align 1, !dbg !1693, !tbaa !1075
  %hdr_it159 = getelementptr inbounds %struct._io_pending_t, %struct._io_pending_t* %pending, i64 0, i32 4, !dbg !1694
  %94 = bitcast [120 x i8]* %hdr_it159 to %struct._stritem**, !dbg !1694
  %95 = load %struct._stritem*, %struct._stritem** %94, align 8, !dbg !1694, !tbaa !1092
  tail call void @item_remove(%struct._stritem* noundef %95) #17, !dbg !1695
  ret void, !dbg !1696
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @storage_write_pause() local_unnamed_addr #0 !dbg !1697 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 0), align 8, !dbg !1698
  %0 = add i64 %gcov_ctr, 1, !dbg !1698
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 0), align 8, !dbg !1698
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @storage_write_plock) #17, !dbg !1698
  ret void, !dbg !1699
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @storage_write_resume() local_unnamed_addr #0 !dbg !1700 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.113, i64 0, i64 0), align 8, !dbg !1701
  %0 = add i64 %gcov_ctr, 1, !dbg !1701
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.113, i64 0, i64 0), align 8, !dbg !1701
  %call = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @storage_write_plock) #17, !dbg !1701
  ret void, !dbg !1702
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @start_storage_write_thread(i8* noundef %arg) local_unnamed_addr #0 !dbg !1703 {
entry:
  call void @llvm.dbg.value(metadata i8* %arg, metadata !1707, metadata !DIExpression()), !dbg !1709
  %call = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull @storage_write_plock, %union.pthread_mutexattr_t* noundef null) #17, !dbg !1710
  %call1 = tail call i32 @pthread_create(i64* noundef nonnull @storage_write_tid, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @storage_write_thread, i8* noundef %arg) #17, !dbg !1711
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1708, metadata !DIExpression()), !dbg !1709
  %cmp.not = icmp eq i32 %call1, 0, !dbg !1713
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1714

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.114, i64 0, i64 0), align 8, !dbg !1715
  %0 = add i64 %gcov_ctr, 1, !dbg !1715
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.114, i64 0, i64 0), align 8, !dbg !1715
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1715, !tbaa !1354
  %call2 = tail call i8* @strerror(i32 noundef %call1) #17, !dbg !1717
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i8* noundef %call2) #17, !dbg !1718
  br label %cleanup, !dbg !1719

if.end:                                           ; preds = %entry
  %gcov_ctr4 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.114, i64 0, i64 1), align 8, !dbg !1720
  %2 = add i64 %gcov_ctr4, 1, !dbg !1720
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.114, i64 0, i64 1), align 8, !dbg !1720
  br label %cleanup, !dbg !1720

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end ], !dbg !1709
  ret i32 %retval.0, !dbg !1721
}

; Function Attrs: nounwind
declare !dbg !1722 dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef, %union.pthread_mutexattr_t* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !1733 dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define internal noalias nonnull i8* @storage_write_thread(i8* noundef %arg) #7 !dbg !1753 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 0), align 16
  %backoff = alloca [64 x i32], align 16
  %mem_limit_reached = alloca i8, align 1
  %chunks_perpage = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %arg, metadata !1755, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %arg, metadata !1756, metadata !DIExpression()), !dbg !1778
  %1 = bitcast [64 x i32]* %backoff to i8*, !dbg !1779
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #18, !dbg !1779
  call void @llvm.dbg.declare(metadata [64 x i32]* %backoff, metadata !1757, metadata !DIExpression()), !dbg !1780
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) %1, i8 0, i64 256, i1 false), !dbg !1780
  call void @llvm.dbg.value(metadata i32 0, metadata !1759, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i32 500, metadata !1760, metadata !DIExpression()), !dbg !1778
  %call = tail call %struct._logger* @logger_create() #17, !dbg !1781
  call void @llvm.dbg.value(metadata %struct._logger* %call, metadata !1763, metadata !DIExpression()), !dbg !1778
  %cmp = icmp eq %struct._logger* %call, null, !dbg !1782
  br i1 %cmp, label %if.then, label %if.end, !dbg !1784

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1785, !tbaa !1354
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.98, i64 0, i64 0)) #17, !dbg !1787
  tail call void @abort() #19, !dbg !1788
  unreachable, !dbg !1788

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @storage_write_plock) #17, !dbg !1789
  %3 = bitcast i32* %chunks_perpage to i8*
  br label %while.cond, !dbg !1790

while.cond:                                       ; preds = %for.cond.cleanup, %if.end
  %to_sleep.0 = phi i32 [ 500, %if.end ], [ %inc69, %for.cond.cleanup ], !dbg !1778
  %counter.0 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.cleanup ], !dbg !1778
  call void @llvm.dbg.value(metadata i32 %counter.0, metadata !1759, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i32 %to_sleep.0, metadata !1760, metadata !DIExpression()), !dbg !1778
  %4 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 60), align 8, !dbg !1791, !tbaa !1792
  %conv = zext i32 %4 to i64, !dbg !1793
  %call3 = call i32 @slabs_clsid(i64 noundef %conv) #17, !dbg !1794
  call void @llvm.dbg.value(metadata i32 %call3, metadata !1764, metadata !DIExpression()), !dbg !1795
  %call4 = call i32 @global_page_pool_size(i8* noundef null) #17, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %call4, metadata !1766, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 1, metadata !1767, metadata !DIExpression()), !dbg !1795
  %inc = add i32 %counter.0, 1, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1759, metadata !DIExpression()), !dbg !1778
  %5 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 67), align 4, !dbg !1798, !tbaa !1800
  %cmp5 = icmp ugt i32 %to_sleep.0, %5, !dbg !1801
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !1802

if.then7:                                         ; preds = %while.cond
  %gcov_ctr72 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 1), align 8, !dbg !1803
  %6 = add i64 %gcov_ctr72, 1, !dbg !1803
  store i64 %6, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 1), align 8, !dbg !1803
  call void @llvm.dbg.value(metadata i32 %5, metadata !1760, metadata !DIExpression()), !dbg !1778
  br label %if.end8, !dbg !1804

if.end8:                                          ; preds = %if.then7, %while.cond
  %to_sleep.1 = phi i32 [ %5, %if.then7 ], [ %to_sleep.0, %while.cond ], !dbg !1778
  call void @llvm.dbg.value(metadata i32 %to_sleep.1, metadata !1760, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i32 0, metadata !1768, metadata !DIExpression()), !dbg !1805
  %7 = sext i32 %call3 to i64, !dbg !1806
  br label %for.body, !dbg !1806

for.cond.cleanup:                                 ; preds = %for.inc
  %call65 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @storage_write_plock) #17, !dbg !1807
  %gcov_ctr86 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 15), align 8, !dbg !1808
  %8 = add i64 %gcov_ctr86, 1, !dbg !1808
  store i64 %8, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 15), align 8, !dbg !1808
  %call68 = call i32 @usleep(i32 noundef %to_sleep.5114) #17, !dbg !1811
  call void @llvm.dbg.value(metadata i32 %to_sleep.5114, metadata !1760, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1778
  %inc69 = add i32 %to_sleep.5114, 1, !dbg !1812
  call void @llvm.dbg.value(metadata i32 %inc69, metadata !1760, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i32 %to_sleep.5114, metadata !1760, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1778
  %gcov_ctr87 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 16), align 16, !dbg !1813
  %9 = add i64 %gcov_ctr87, 1, !dbg !1813
  store i64 %9, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 16), align 16, !dbg !1813
  %call71 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @storage_write_plock) #17, !dbg !1813
  br label %while.cond, !dbg !1790, !llvm.loop !1814

for.body:                                         ; preds = %if.end8, %for.inc
  %indvars.iv = phi i64 [ 0, %if.end8 ], [ %indvars.iv.next, %for.inc ]
  %to_sleep.2116 = phi i32 [ %to_sleep.1, %if.end8 ], [ %to_sleep.5114, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1768, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i32 %to_sleep.2116, metadata !1760, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !1770, metadata !DIExpression()), !dbg !1816
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %mem_limit_reached) #18, !dbg !1817
  call void @llvm.dbg.value(metadata i8 0, metadata !1773, metadata !DIExpression()), !dbg !1816
  store i8 0, i8* %mem_limit_reached, align 1, !dbg !1818, !tbaa !1819
  %cmp11 = icmp slt i64 %indvars.iv, %7, !dbg !1820
  br i1 %cmp11, label %if.then17, label %lor.lhs.false, !dbg !1822

lor.lhs.false:                                    ; preds = %for.body
  %gcov_ctr73 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 2), align 16, !dbg !1823
  %10 = add i64 %gcov_ctr73, 1, !dbg !1823
  store i64 %10, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 2), align 16, !dbg !1823
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %backoff, i64 0, i64 %indvars.iv, !dbg !1824
  %11 = load i32, i32* %arrayidx, align 4, !dbg !1824, !tbaa !803
  %tobool.not = icmp eq i32 %11, 0, !dbg !1824
  br i1 %tobool.not, label %if.end24, label %land.lhs.true, !dbg !1825

land.lhs.true:                                    ; preds = %lor.lhs.false
  %gcov_ctr74 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 3), align 8, !dbg !1826
  %12 = add i64 %gcov_ctr74, 1, !dbg !1826
  store i64 %12, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 3), align 8, !dbg !1826
  %rem = urem i32 %inc, %11, !dbg !1827
  %cmp15.not = icmp eq i32 %rem, 0, !dbg !1828
  br i1 %cmp15.not, label %if.end24, label %if.then17, !dbg !1829

if.then17:                                        ; preds = %land.lhs.true, %for.body
  %cmp18 = icmp ugt i32 %to_sleep.2116, 5000, !dbg !1830
  br i1 %cmp18, label %if.then20, label %cleanup, !dbg !1833

if.then20:                                        ; preds = %if.then17
  %gcov_ctr75 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 4), align 16, !dbg !1834
  %13 = add i64 %gcov_ctr75, 1, !dbg !1834
  store i64 %13, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 4), align 16, !dbg !1834
  %arrayidx22 = getelementptr inbounds [64 x i32], [64 x i32]* %backoff, i64 0, i64 %indvars.iv, !dbg !1835
  %14 = load i32, i32* %arrayidx22, align 4, !dbg !1836, !tbaa !803
  %div = lshr i32 %14, 1, !dbg !1836
  store i32 %div, i32* %arrayidx22, align 4, !dbg !1836, !tbaa !803
  br label %cleanup, !dbg !1835

if.end24:                                         ; preds = %land.lhs.true, %lor.lhs.false
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18, !dbg !1837
  call void @llvm.dbg.value(metadata i32 0, metadata !1776, metadata !DIExpression()), !dbg !1816
  store i32 0, i32* %chunks_perpage, align 4, !dbg !1838, !tbaa !803
  call void @llvm.dbg.value(metadata i8* %mem_limit_reached, metadata !1773, metadata !DIExpression(DW_OP_deref)), !dbg !1816
  call void @llvm.dbg.value(metadata i32* %chunks_perpage, metadata !1776, metadata !DIExpression(DW_OP_deref)), !dbg !1816
  %15 = trunc i64 %indvars.iv to i32, !dbg !1839
  %call25 = call i32 @slabs_available_chunks(i32 noundef %15, i8* noundef nonnull %mem_limit_reached, i32* noundef nonnull %chunks_perpage) #17, !dbg !1839
  call void @llvm.dbg.value(metadata i32 %call25, metadata !1774, metadata !DIExpression()), !dbg !1816
  %16 = load i32, i32* %chunks_perpage, align 4, !dbg !1840, !tbaa !803
  call void @llvm.dbg.value(metadata i32 %16, metadata !1776, metadata !DIExpression()), !dbg !1816
  %mul = mul i32 %16, 3, !dbg !1841
  call void @llvm.dbg.value(metadata i32 %mul, metadata !1777, metadata !DIExpression()), !dbg !1816
  br label %while.cond26.outer, !dbg !1842

while.cond26.outer:                               ; preds = %if.then41, %if.end24
  %to_sleep.3.ph = phi i32 [ %div42, %if.then41 ], [ %to_sleep.2116, %if.end24 ]
  %did_move.0.ph = phi i1 [ true, %if.then41 ], [ false, %if.end24 ]
  %chunks_free.0.ph = phi i32 [ %inc38, %if.then41 ], [ %call25, %if.end24 ]
  %cmp39 = icmp ugt i32 %to_sleep.3.ph, 500
  br label %while.cond26, !dbg !1842

while.cond26:                                     ; preds = %while.cond26.outer, %if.then37
  %did_move.0 = phi i1 [ true, %if.then37 ], [ %did_move.0.ph, %while.cond26.outer ]
  %chunks_free.0 = phi i32 [ %inc38, %if.then37 ], [ %chunks_free.0.ph, %while.cond26.outer ], !dbg !1816
  call void @llvm.dbg.value(metadata i32 %chunks_free.0, metadata !1774, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8 undef, metadata !1770, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %to_sleep.3.ph, metadata !1760, metadata !DIExpression()), !dbg !1778
  %cmp28 = icmp ult i32 %chunks_free.0, %mul, !dbg !1843
  br i1 %cmp28, label %land.lhs.true30, label %if.else, !dbg !1846

land.lhs.true30:                                  ; preds = %while.cond26
  %gcov_ctr77 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 6), align 16, !dbg !1847
  %17 = add i64 %gcov_ctr77, 1, !dbg !1847
  store i64 %17, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 6), align 16, !dbg !1847
  %18 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 71), align 4, !dbg !1848, !tbaa !1849
  %cmp31.not = icmp ugt i32 %call4, %18, !dbg !1850
  br i1 %cmp31.not, label %if.else, label %if.then33, !dbg !1851

if.then33:                                        ; preds = %land.lhs.true30
  %gcov_ctr78 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 7), align 8, !dbg !1852
  %19 = add i64 %gcov_ctr78, 1, !dbg !1852
  store i64 %19, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 7), align 8, !dbg !1852
  call void @llvm.dbg.value(metadata i32 0, metadata !1775, metadata !DIExpression()), !dbg !1816
  br label %if.end34, !dbg !1854

if.else:                                          ; preds = %land.lhs.true30, %while.cond26
  %gcov_ctr79 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 8), align 16, !dbg !1855
  %20 = add i64 %gcov_ctr79, 1, !dbg !1855
  store i64 %20, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 8), align 16, !dbg !1855
  %21 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 61), align 4, !dbg !1855, !tbaa !1857
  call void @llvm.dbg.value(metadata i32 %21, metadata !1775, metadata !DIExpression()), !dbg !1816
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then33
  %item_age.0 = phi i32 [ 0, %if.then33 ], [ %21, %if.else ], !dbg !1858
  call void @llvm.dbg.value(metadata i32 %item_age.0, metadata !1775, metadata !DIExpression()), !dbg !1816
  %call35 = call fastcc i32 @storage_write(i8* noundef %arg, i32 noundef %15, i32 noundef %item_age.0) #20, !dbg !1859
  %tobool36.not = icmp eq i32 %call35, 0, !dbg !1859
  br i1 %tobool36.not, label %while.end, label %if.then37, !dbg !1861

if.then37:                                        ; preds = %if.end34
  %inc38 = add i32 %chunks_free.0, 1, !dbg !1862
  call void @llvm.dbg.value(metadata i32 %inc38, metadata !1774, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8 1, metadata !1770, metadata !DIExpression()), !dbg !1816
  br i1 %cmp39, label %if.then41, label %while.cond26, !dbg !1864, !llvm.loop !1865

if.then41:                                        ; preds = %if.then37
  %gcov_ctr80 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 9), align 8, !dbg !1867
  %22 = add i64 %gcov_ctr80, 1, !dbg !1867
  store i64 %22, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 9), align 8, !dbg !1867
  %div42 = lshr i32 %to_sleep.3.ph, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %div42, metadata !1760, metadata !DIExpression()), !dbg !1778
  br label %while.cond26.outer, !dbg !1869, !llvm.loop !1865

while.end:                                        ; preds = %if.end34
  br i1 %did_move.0, label %if.else51, label %if.then47, !dbg !1870

if.then47:                                        ; preds = %while.end
  %gcov_ctr81 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 10), align 16, !dbg !1871
  %23 = add i64 %gcov_ctr81, 1, !dbg !1871
  store i64 %23, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 10), align 16, !dbg !1871
  %inc50 = add i32 %11, 1, !dbg !1874
  store i32 %inc50, i32* %arrayidx, align 4, !dbg !1874, !tbaa !803
  br label %cleanup.cont, !dbg !1875

if.else51:                                        ; preds = %while.end
  br i1 %tobool.not, label %if.end58, label %if.then55, !dbg !1876

if.then55:                                        ; preds = %if.else51
  %gcov_ctr82 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 11), align 8, !dbg !1877
  %24 = add i64 %gcov_ctr82, 1, !dbg !1877
  store i64 %24, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 11), align 8, !dbg !1877
  store i32 1, i32* %arrayidx, align 4, !dbg !1880, !tbaa !803
  br label %if.end58, !dbg !1881

if.end58:                                         ; preds = %if.then55, %if.else51
  %gcov_ctr83 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 12), align 16
  %25 = add i64 %gcov_ctr83, 1
  store i64 %25, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 12), align 16
  br label %cleanup.cont

cleanup:                                          ; preds = %if.then17, %if.then20
  %gcov_ctr76 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 5), align 8
  %26 = add i64 %gcov_ctr76, 1
  store i64 %26, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 5), align 8
  call void @llvm.dbg.value(metadata i32 %to_sleep.2116, metadata !1760, metadata !DIExpression()), !dbg !1778
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %mem_limit_reached) #18, !dbg !1882
  br label %for.inc

cleanup.cont:                                     ; preds = %if.then47, %if.end58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18, !dbg !1882
  call void @llvm.dbg.value(metadata i32 undef, metadata !1760, metadata !DIExpression()), !dbg !1778
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %mem_limit_reached) #18, !dbg !1882
  %gcov_ctr85 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 14), align 16, !dbg !1883
  %27 = add i64 %gcov_ctr85, 1, !dbg !1883
  store i64 %27, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.115, i64 0, i64 14), align 16, !dbg !1883
  br label %for.inc, !dbg !1883

for.inc:                                          ; preds = %cleanup, %cleanup.cont
  %to_sleep.5114 = phi i32 [ %to_sleep.2116, %cleanup ], [ %to_sleep.3.ph, %cleanup.cont ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1768, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i32 %to_sleep.5114, metadata !1760, metadata !DIExpression()), !dbg !1778
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64, !dbg !1885
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !1806, !llvm.loop !1886
}

declare !dbg !1888 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1945 dso_local i8* @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @storage_compact_pause() local_unnamed_addr #0 !dbg !1948 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.116, i64 0, i64 0), align 8, !dbg !1949
  %0 = add i64 %gcov_ctr, 1, !dbg !1949
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.116, i64 0, i64 0), align 8, !dbg !1949
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @storage_compact_plock) #17, !dbg !1949
  ret void, !dbg !1950
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @storage_compact_resume() local_unnamed_addr #0 !dbg !1951 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.117, i64 0, i64 0), align 8, !dbg !1952
  %0 = add i64 %gcov_ctr, 1, !dbg !1952
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.117, i64 0, i64 0), align 8, !dbg !1952
  %call = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @storage_compact_plock) #17, !dbg !1952
  ret void, !dbg !1953
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @start_storage_compact_thread(i8* noundef %arg) local_unnamed_addr #0 !dbg !1954 {
entry:
  call void @llvm.dbg.value(metadata i8* %arg, metadata !1956, metadata !DIExpression()), !dbg !1958
  %call = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull @storage_compact_plock, %union.pthread_mutexattr_t* noundef null) #17, !dbg !1959
  %call1 = tail call i32 @pthread_create(i64* noundef nonnull @storage_compact_tid, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @storage_compact_thread, i8* noundef %arg) #17, !dbg !1960
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1957, metadata !DIExpression()), !dbg !1958
  %cmp.not = icmp eq i32 %call1, 0, !dbg !1962
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1963

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.118, i64 0, i64 0), align 8, !dbg !1964
  %0 = add i64 %gcov_ctr, 1, !dbg !1964
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.118, i64 0, i64 0), align 8, !dbg !1964
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1964, !tbaa !1354
  %call2 = tail call i8* @strerror(i32 noundef %call1) #17, !dbg !1966
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i64 0, i64 0), i8* noundef %call2) #17, !dbg !1967
  br label %cleanup, !dbg !1968

if.end:                                           ; preds = %entry
  %gcov_ctr4 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.118, i64 0, i64 1), align 8, !dbg !1969
  %2 = add i64 %gcov_ctr4, 1, !dbg !1969
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.118, i64 0, i64 1), align 8, !dbg !1969
  br label %cleanup, !dbg !1969

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end ], !dbg !1958
  ret i32 %retval.0, !dbg !1970
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal noalias nonnull i8* @storage_compact_thread(i8* noundef %arg) #7 !dbg !1971 {
entry:
  %page_version = alloca i64, align 8
  %page_size = alloca i64, align 8
  %page_id = alloca i32, align 4
  %drop_unread = alloca i8, align 1
  %wrap = alloca %struct.storage_compact_wrap, align 8
  call void @llvm.dbg.value(metadata i8* %arg, metadata !1973, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8* %arg, metadata !1974, metadata !DIExpression()), !dbg !2005
  %0 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 67), align 4, !dbg !2006, !tbaa !1800
  call void @llvm.dbg.value(metadata i32 %0, metadata !1975, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2005
  %1 = bitcast i64* %page_version to i8*, !dbg !2007
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #18, !dbg !2007
  call void @llvm.dbg.value(metadata i64 0, metadata !1977, metadata !DIExpression()), !dbg !2005
  store i64 0, i64* %page_version, align 8, !dbg !2008, !tbaa !2009
  %2 = bitcast i64* %page_size to i8*, !dbg !2010
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #18, !dbg !2010
  call void @llvm.dbg.value(metadata i64 0, metadata !1978, metadata !DIExpression()), !dbg !2005
  store i64 0, i64* %page_size, align 8, !dbg !2011, !tbaa !2009
  call void @llvm.dbg.value(metadata i64 0, metadata !1979, metadata !DIExpression()), !dbg !2005
  %3 = bitcast i32* %page_id to i8*, !dbg !2012
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18, !dbg !2012
  call void @llvm.dbg.value(metadata i32 0, metadata !1980, metadata !DIExpression()), !dbg !2005
  store i32 0, i32* %page_id, align 4, !dbg !2013, !tbaa !803
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %drop_unread) #18, !dbg !2014
  call void @llvm.dbg.value(metadata i8 0, metadata !1981, metadata !DIExpression()), !dbg !2005
  store i8 0, i8* %drop_unread, align 1, !dbg !2015, !tbaa !1819
  call void @llvm.dbg.value(metadata i8* null, metadata !1982, metadata !DIExpression()), !dbg !2005
  %4 = bitcast %struct.storage_compact_wrap* %wrap to i8*, !dbg !2016
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %4) #18, !dbg !2016
  call void @llvm.dbg.declare(metadata %struct.storage_compact_wrap* %wrap, metadata !1983, metadata !DIExpression()), !dbg !2017
  %call = tail call %struct._logger* @logger_create() #17, !dbg !2018
  call void @llvm.dbg.value(metadata %struct._logger* %call, metadata !1984, metadata !DIExpression()), !dbg !2005
  %cmp = icmp eq %struct._logger* %call, null, !dbg !2019
  br i1 %cmp, label %if.then, label %if.end, !dbg !2021

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 0), align 16, !dbg !2022
  %5 = add i64 %gcov_ctr, 1, !dbg !2022
  store i64 %5, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 0), align 16, !dbg !2022
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2022, !tbaa !1354
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.98, i64 0, i64 0)) #17, !dbg !2024
  tail call void @abort() #19, !dbg !2025
  unreachable, !dbg !2025

if.end:                                           ; preds = %entry
  %7 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 64), align 8, !dbg !2026, !tbaa !2027
  %conv = zext i32 %7 to i64, !dbg !2028
  %call2 = tail call noalias i8* @malloc(i64 noundef %conv) #17, !dbg !2029
  call void @llvm.dbg.value(metadata i8* %call2, metadata !1982, metadata !DIExpression()), !dbg !2005
  %cmp3 = icmp eq i8* %call2, null, !dbg !2030
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !2032

if.then5:                                         ; preds = %if.end
  %gcov_ctr146 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 1), align 8, !dbg !2033
  %8 = add i64 %gcov_ctr146, 1, !dbg !2033
  store i64 %8, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 1), align 8, !dbg !2033
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2033, !tbaa !1354
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.101, i64 0, i64 0)) #17, !dbg !2035
  tail call void @abort() #19, !dbg !2036
  unreachable, !dbg !2036

if.end7:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %wrap, i64 0, i32 1, !dbg !2037
  %call8 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef nonnull %lock, %union.pthread_mutexattr_t* noundef null) #17, !dbg !2038
  %done = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %wrap, i64 0, i32 2, !dbg !2039
  store i8 0, i8* %done, align 8, !dbg !2040, !tbaa !2041
  %submitted = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %wrap, i64 0, i32 3, !dbg !2043
  store i8 0, i8* %submitted, align 1, !dbg !2044, !tbaa !2045
  %io = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %wrap, i64 0, i32 0, !dbg !2046
  %10 = bitcast %struct.storage_compact_wrap* %wrap to %struct.storage_compact_wrap**, !dbg !2047
  store %struct.storage_compact_wrap* %wrap, %struct.storage_compact_wrap** %10, align 8, !dbg !2047, !tbaa !2048
  %iov = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %wrap, i64 0, i32 0, i32 3, !dbg !2049
  store %struct.iovec* null, %struct.iovec** %iov, align 8, !dbg !2050, !tbaa !2051
  %buf = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %wrap, i64 0, i32 0, i32 2, !dbg !2052
  store i8* %call2, i8** %buf, align 8, !dbg !2053, !tbaa !2054
  %11 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 64), align 8, !dbg !2055, !tbaa !2027
  %len = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %wrap, i64 0, i32 0, i32 6, !dbg !2056
  store i32 %11, i32* %len, align 8, !dbg !2057, !tbaa !2058
  %mode = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %wrap, i64 0, i32 0, i32 9, !dbg !2059
  store i32 0, i32* %mode, align 4, !dbg !2060, !tbaa !2061
  %cb = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %wrap, i64 0, i32 0, i32 10, !dbg !2062
  store void (i8*, %struct._obj_io*, i32)* @_storage_compact_cb, void (i8*, %struct._obj_io*, i32)** %cb, align 8, !dbg !2063, !tbaa !2064
  %call14 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @storage_compact_plock) #17, !dbg !2065
  %eflags = getelementptr inbounds %struct._logger, %struct._logger* %call, i64 0, i32 8
  %miss60 = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %wrap, i64 0, i32 4
  %page_version50 = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %wrap, i64 0, i32 0, i32 5
  %page_id53 = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %wrap, i64 0, i32 0, i32 8
  %offset = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %wrap, i64 0, i32 0, i32 7
  %next = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %wrap, i64 0, i32 0, i32 1
  br label %while.cond.outer, !dbg !2066

while.cond.outer:                                 ; preds = %if.end136, %if.end7
  %compacting.0.ph = phi i8 [ %compacting.3, %if.end136 ], [ 0, %if.end7 ]
  %page_offset.0.ph = phi i64 [ %page_offset.2, %if.end136 ], [ 0, %if.end7 ]
  %to_sleep.0.ph = phi i32 [ 10000, %if.end136 ], [ %0, %if.end7 ]
  %12 = and i8 %compacting.0.ph, 1
  %tobool20.not = icmp eq i8 %12, 0
  br label %while.cond, !dbg !2066

while.cond:                                       ; preds = %while.cond.outer, %if.end144
  %to_sleep.0 = phi i32 [ %to_sleep.1, %if.end144 ], [ %to_sleep.0.ph, %while.cond.outer ], !dbg !2005
  call void @llvm.dbg.value(metadata i32 %to_sleep.0, metadata !1975, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %page_offset.0.ph, metadata !1979, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 %compacting.0.ph, metadata !1976, metadata !DIExpression()), !dbg !2005
  %call15 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull @storage_compact_plock) #17, !dbg !2067
  %tobool.not = icmp eq i32 %to_sleep.0, 0, !dbg !2068
  br i1 %tobool.not, label %if.end18, label %if.then16, !dbg !2070

if.then16:                                        ; preds = %while.cond
  %gcov_ctr147 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 2), align 16, !dbg !2071
  %13 = add i64 %gcov_ctr147, 1, !dbg !2071
  store i64 %13, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 2), align 16, !dbg !2071
  call void @extstore_run_maint(i8* noundef %arg) #17, !dbg !2073
  %call17 = call i32 @usleep(i32 noundef %to_sleep.0) #17, !dbg !2074
  br label %if.end18, !dbg !2075

if.end18:                                         ; preds = %if.then16, %while.cond
  %call19 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull @storage_compact_plock) #17, !dbg !2076
  br i1 %tobool20.not, label %land.lhs.true, label %if.then36, !dbg !2077

land.lhs.true:                                    ; preds = %if.end18
  %gcov_ctr148 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 3), align 8, !dbg !2078
  %14 = add i64 %gcov_ctr148, 1, !dbg !2078
  store i64 %14, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 3), align 8, !dbg !2078
  call void @llvm.dbg.value(metadata i64* %page_version, metadata !1977, metadata !DIExpression(DW_OP_deref)), !dbg !2005
  call void @llvm.dbg.value(metadata i64* %page_size, metadata !1978, metadata !DIExpression(DW_OP_deref)), !dbg !2005
  call void @llvm.dbg.value(metadata i32* %page_id, metadata !1980, metadata !DIExpression(DW_OP_deref)), !dbg !2005
  call void @llvm.dbg.value(metadata i8* %drop_unread, metadata !1981, metadata !DIExpression(DW_OP_deref)), !dbg !2005
  %call21 = call fastcc i32 @storage_compact_check(i8* noundef %arg, %struct._logger* noundef nonnull %call, i32* noundef nonnull %page_id, i64* noundef nonnull %page_version, i64* noundef nonnull %page_size, i8* noundef nonnull %drop_unread) #20, !dbg !2079
  %tobool22.not = icmp eq i32 %call21, 0, !dbg !2079
  br i1 %tobool22.not, label %if.else139, label %if.end28, !dbg !2080

if.end28:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i64 0, metadata !1979, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 1, metadata !1976, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata %struct._logger* %call, metadata !1985, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata %struct._logger* %call, metadata !1985, metadata !DIExpression()), !dbg !2081
  %15 = load i16, i16* %eflags, align 4, !dbg !2082, !tbaa !2084
  %16 = and i16 %15, 2, !dbg !2082
  %tobool30.not = icmp eq i16 %16, 0, !dbg !2082
  br i1 %tobool30.not, label %if.end34.thread, label %if.then31, !dbg !2086

if.then31:                                        ; preds = %if.end28
  %gcov_ctr150 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 5), align 8, !dbg !2082
  %17 = add i64 %gcov_ctr150, 1, !dbg !2082
  store i64 %17, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 5), align 8, !dbg !2082
  %18 = load i32, i32* %page_id, align 4, !dbg !2082, !tbaa !803
  call void @llvm.dbg.value(metadata i32 %18, metadata !1980, metadata !DIExpression()), !dbg !2005
  %19 = load i64, i64* %page_version, align 8, !dbg !2082, !tbaa !2009
  call void @llvm.dbg.value(metadata i64 %19, metadata !1977, metadata !DIExpression()), !dbg !2005
  %call32 = call i32 (%struct._logger*, i32, i8*, ...) @logger_log(%struct._logger* noundef nonnull %call, i32 noundef 9, i8* noundef null, i32 noundef %18, i64 noundef %19) #17, !dbg !2082
  br label %if.end34.thread, !dbg !2082

if.end34.thread:                                  ; preds = %if.end28, %if.then31
  %gcov_ctr151 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 6), align 16, !dbg !2087
  %20 = add i64 %gcov_ctr151, 1, !dbg !2087
  store i64 %20, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 6), align 16, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %page_offset.0.ph, metadata !1979, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 %compacting.0.ph, metadata !1976, metadata !DIExpression()), !dbg !2005
  br label %if.then36, !dbg !2088

if.then36:                                        ; preds = %if.end18, %if.end34.thread
  %page_offset.1205 = phi i64 [ 0, %if.end34.thread ], [ %page_offset.0.ph, %if.end18 ]
  %compacting.1203 = phi i8 [ 1, %if.end34.thread ], [ %compacting.0.ph, %if.end18 ]
  %call38 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %lock) #17, !dbg !2089
  %21 = load i64, i64* %page_size, align 8, !dbg !2090, !tbaa !2009
  call void @llvm.dbg.value(metadata i64 %21, metadata !1978, metadata !DIExpression()), !dbg !2005
  %cmp39 = icmp ult i64 %page_offset.1205, %21, !dbg !2091
  br i1 %cmp39, label %land.lhs.true41, label %if.else, !dbg !2092

land.lhs.true41:                                  ; preds = %if.then36
  %gcov_ctr152 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 7), align 8, !dbg !2093
  %22 = add i64 %gcov_ctr152, 1, !dbg !2093
  store i64 %22, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 7), align 8, !dbg !2093
  %23 = load i8, i8* %done, align 8, !dbg !2093, !tbaa !2041, !range !1086
  %tobool43.not = icmp eq i8 %23, 0, !dbg !2093
  br i1 %tobool43.not, label %land.lhs.true44, label %if.else, !dbg !2094

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %gcov_ctr153 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 8), align 16, !dbg !2095
  %24 = add i64 %gcov_ctr153, 1, !dbg !2095
  store i64 %24, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 8), align 16, !dbg !2095
  %25 = load i8, i8* %submitted, align 1, !dbg !2095, !tbaa !2045, !range !1086
  %tobool46.not = icmp eq i8 %25, 0, !dbg !2095
  br i1 %tobool46.not, label %if.then47, label %if.else, !dbg !2096

if.then47:                                        ; preds = %land.lhs.true44
  %gcov_ctr154 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 9), align 8, !dbg !2097
  %26 = add i64 %gcov_ctr154, 1, !dbg !2097
  store i64 %26, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 9), align 8, !dbg !2097
  %27 = load i64, i64* %page_version, align 8, !dbg !2097, !tbaa !2009
  call void @llvm.dbg.value(metadata i64 %27, metadata !1977, metadata !DIExpression()), !dbg !2005
  %conv48 = trunc i64 %27 to i32, !dbg !2097
  store i32 %conv48, i32* %page_version50, align 4, !dbg !2099, !tbaa !2100
  %28 = load i32, i32* %page_id, align 4, !dbg !2101, !tbaa !803
  call void @llvm.dbg.value(metadata i32 %28, metadata !1980, metadata !DIExpression()), !dbg !2005
  %conv51 = trunc i32 %28 to i16, !dbg !2101
  store i16 %conv51, i16* %page_id53, align 8, !dbg !2102, !tbaa !2103
  %conv54 = trunc i64 %page_offset.1205 to i32, !dbg !2104
  store i32 %conv54, i32* %offset, align 4, !dbg !2105, !tbaa !2106
  store %struct._obj_io* null, %struct._obj_io** %next, align 8, !dbg !2107, !tbaa !2108
  store i8 1, i8* %submitted, align 1, !dbg !2109, !tbaa !2045
  store i8 0, i8* %miss60, align 2, !dbg !2110, !tbaa !2111
  %call59 = call i32 @extstore_submit(i8* noundef %arg, %struct._obj_io* noundef nonnull %io) #17, !dbg !2112
  br label %if.end136, !dbg !2113

if.else:                                          ; preds = %land.lhs.true44, %land.lhs.true41, %if.then36
  %29 = load i8, i8* %miss60, align 2, !dbg !2114, !tbaa !2111, !range !1086
  %tobool61.not = icmp eq i8 %29, 0, !dbg !2114
  br i1 %tobool61.not, label %if.else81, label %if.end69, !dbg !2115

if.end69:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct._logger* %call, metadata !1990, metadata !DIExpression()), !dbg !2116
  %30 = load i16, i16* %eflags, align 4, !dbg !2117, !tbaa !2084
  %31 = and i16 %30, 2, !dbg !2117
  %tobool73.not = icmp eq i16 %31, 0, !dbg !2117
  br i1 %tobool73.not, label %if.end76, label %if.then74, !dbg !2119

if.then74:                                        ; preds = %if.end69
  %gcov_ctr156 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 11), align 8, !dbg !2117
  %32 = add i64 %gcov_ctr156, 1, !dbg !2117
  store i64 %32, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 11), align 8, !dbg !2117
  %33 = load i32, i32* %page_id, align 4, !dbg !2117, !tbaa !803
  call void @llvm.dbg.value(metadata i32 %33, metadata !1980, metadata !DIExpression()), !dbg !2005
  %call75 = call i32 (%struct._logger*, i32, i8*, ...) @logger_log(%struct._logger* noundef nonnull %call, i32 noundef 10, i8* noundef null, i32 noundef %33) #17, !dbg !2117
  br label %if.end76, !dbg !2117

if.end76:                                         ; preds = %if.then74, %if.end69
  %gcov_ctr157 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 12), align 16, !dbg !2120
  %34 = add i64 %gcov_ctr157, 1, !dbg !2120
  store i64 %34, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 12), align 16, !dbg !2120
  store i8 0, i8* %done, align 8, !dbg !2121, !tbaa !2041
  store i8 0, i8* %submitted, align 1, !dbg !2122, !tbaa !2045
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2005
  br label %if.end136, !dbg !2123

if.else81:                                        ; preds = %if.else
  %35 = load i8, i8* %submitted, align 1, !dbg !2124, !tbaa !2045, !range !1086
  %tobool83.not = icmp eq i8 %35, 0, !dbg !2124
  br i1 %tobool83.not, label %if.else111, label %land.lhs.true85, !dbg !2125

land.lhs.true85:                                  ; preds = %if.else81
  %gcov_ctr158 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 13), align 8, !dbg !2126
  %36 = add i64 %gcov_ctr158, 1, !dbg !2126
  store i64 %36, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 13), align 8, !dbg !2126
  %37 = load i8, i8* %done, align 8, !dbg !2126, !tbaa !2041, !range !1086
  %tobool87.not = icmp eq i8 %37, 0, !dbg !2126
  br i1 %tobool87.not, label %if.else111, label %if.end96, !dbg !2127

if.end96:                                         ; preds = %land.lhs.true85
  call void @llvm.dbg.value(metadata %struct._logger* %call, metadata !1997, metadata !DIExpression()), !dbg !2128
  %38 = load i16, i16* %eflags, align 4, !dbg !2129, !tbaa !2084
  %39 = and i16 %38, 2, !dbg !2129
  %tobool100.not = icmp eq i16 %39, 0, !dbg !2129
  br i1 %tobool100.not, label %if.end96.if.end103_crit_edge, label %if.then101, !dbg !2131

if.end96.if.end103_crit_edge:                     ; preds = %if.end96
  %.pre = load i32, i32* %page_id, align 4, !dbg !2132, !tbaa !803
  br label %if.end103, !dbg !2131

if.then101:                                       ; preds = %if.end96
  %gcov_ctr160 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 15), align 8, !dbg !2129
  %40 = add i64 %gcov_ctr160, 1, !dbg !2129
  store i64 %40, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 15), align 8, !dbg !2129
  %41 = load i32, i32* %page_id, align 4, !dbg !2129, !tbaa !803
  call void @llvm.dbg.value(metadata i32 %41, metadata !1980, metadata !DIExpression()), !dbg !2005
  %call102 = call i32 (%struct._logger*, i32, i8*, ...) @logger_log(%struct._logger* noundef nonnull %call, i32 noundef 11, i8* noundef null, i32 noundef %41, i64 noundef %page_offset.1205) #17, !dbg !2129
  br label %if.end103, !dbg !2129

if.end103:                                        ; preds = %if.end96.if.end103_crit_edge, %if.then101
  %42 = phi i32 [ %.pre, %if.end96.if.end103_crit_edge ], [ %41, %if.then101 ], !dbg !2132
  %gcov_ctr161 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 16), align 16, !dbg !2133
  %43 = add i64 %gcov_ctr161, 1, !dbg !2133
  store i64 %43, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 16), align 16, !dbg !2133
  %44 = load i8, i8* %drop_unread, align 1, !dbg !2134, !tbaa !1819, !range !1086
  call void @llvm.dbg.value(metadata i8 %44, metadata !1981, metadata !DIExpression()), !dbg !2005
  %tobool106 = icmp ne i8 %44, 0, !dbg !2134
  call void @llvm.dbg.value(metadata i32 %42, metadata !1980, metadata !DIExpression()), !dbg !2005
  %45 = load i64, i64* %page_version, align 8, !dbg !2135, !tbaa !2009
  call void @llvm.dbg.value(metadata i64 %45, metadata !1977, metadata !DIExpression()), !dbg !2005
  %46 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 64), align 8, !dbg !2136, !tbaa !2027
  %conv107 = zext i32 %46 to i64, !dbg !2137
  call fastcc void @storage_compact_readback(i8* noundef %arg, %struct._logger* noundef nonnull %call, i1 noundef zeroext %tobool106, i8* noundef nonnull %call2, i32 noundef %42, i64 noundef %45, i64 noundef %conv107) #20, !dbg !2138
  %47 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 64), align 8, !dbg !2139, !tbaa !2027
  %conv108 = zext i32 %47 to i64, !dbg !2140
  %add = add i64 %page_offset.1205, %conv108, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %add, metadata !1979, metadata !DIExpression()), !dbg !2005
  store i8 0, i8* %done, align 8, !dbg !2142, !tbaa !2041
  store i8 0, i8* %submitted, align 1, !dbg !2143, !tbaa !2045
  br label %if.end136, !dbg !2144

if.else111:                                       ; preds = %land.lhs.true85, %if.else81
  call void @llvm.dbg.value(metadata i64 %21, metadata !1978, metadata !DIExpression()), !dbg !2005
  br i1 %cmp39, label %if.end133, label %if.then114, !dbg !2145

if.then114:                                       ; preds = %if.else111
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2005
  store i8 0, i8* %done, align 8, !dbg !2146, !tbaa !2041
  store i8 0, i8* %submitted, align 1, !dbg !2147, !tbaa !2045
  %48 = load i32, i32* %page_id, align 4, !dbg !2148, !tbaa !803
  call void @llvm.dbg.value(metadata i32 %48, metadata !1980, metadata !DIExpression()), !dbg !2005
  %49 = load i64, i64* %page_version, align 8, !dbg !2149, !tbaa !2009
  call void @llvm.dbg.value(metadata i64 %49, metadata !1977, metadata !DIExpression()), !dbg !2005
  call void @extstore_close_page(i8* noundef %arg, i32 noundef %48, i64 noundef %49) #17, !dbg !2150
  call void @llvm.dbg.value(metadata %struct._logger* %call, metadata !2001, metadata !DIExpression()), !dbg !2151
  %50 = load i16, i16* %eflags, align 4, !dbg !2152, !tbaa !2084
  %51 = and i16 %50, 2, !dbg !2152
  %tobool127.not = icmp eq i16 %51, 0, !dbg !2152
  br i1 %tobool127.not, label %if.end130, label %if.then128, !dbg !2154

if.then128:                                       ; preds = %if.then114
  %gcov_ctr163 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 18), align 16, !dbg !2152
  %52 = add i64 %gcov_ctr163, 1, !dbg !2152
  store i64 %52, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 18), align 16, !dbg !2152
  call void @llvm.dbg.value(metadata i32 %48, metadata !1980, metadata !DIExpression()), !dbg !2005
  %call129 = call i32 (%struct._logger*, i32, i8*, ...) @logger_log(%struct._logger* noundef nonnull %call, i32 noundef 13, i8* noundef null, i32 noundef %48) #17, !dbg !2152
  br label %if.end130, !dbg !2152

if.end130:                                        ; preds = %if.then128, %if.then114
  %gcov_ctr164 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 19), align 8, !dbg !2155
  %53 = add i64 %gcov_ctr164, 1, !dbg !2155
  store i64 %53, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 19), align 8, !dbg !2155
  br label %if.end133, !dbg !2155

if.end133:                                        ; preds = %if.end130, %if.else111
  %compacting.2 = phi i8 [ 0, %if.end130 ], [ %compacting.1203, %if.else111 ], !dbg !2005
  call void @llvm.dbg.value(metadata i8 %compacting.2, metadata !1976, metadata !DIExpression()), !dbg !2005
  %gcov_ctr165 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 20), align 16
  %54 = add i64 %gcov_ctr165, 1
  store i64 %54, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 20), align 16
  br label %if.end136

if.end136:                                        ; preds = %if.end76, %if.end133, %if.end103, %if.then47
  %compacting.3 = phi i8 [ 0, %if.end76 ], [ %compacting.1203, %if.end103 ], [ %compacting.2, %if.end133 ], [ %compacting.1203, %if.then47 ], !dbg !2005
  %page_offset.2 = phi i64 [ %page_offset.1205, %if.end76 ], [ %add, %if.end103 ], [ %page_offset.1205, %if.end133 ], [ %page_offset.1205, %if.then47 ], !dbg !2005
  call void @llvm.dbg.value(metadata i64 %page_offset.2, metadata !1979, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 %compacting.3, metadata !1976, metadata !DIExpression()), !dbg !2005
  %call138 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %lock) #17, !dbg !2156
  call void @llvm.dbg.value(metadata i32 10000, metadata !1975, metadata !DIExpression()), !dbg !2005
  br label %while.cond.outer, !dbg !2157, !llvm.loop !2158

if.else139:                                       ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i64 %page_offset.0.ph, metadata !1979, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 %compacting.0.ph, metadata !1976, metadata !DIExpression()), !dbg !2005
  %55 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 67), align 4, !dbg !2160, !tbaa !1800
  %cmp140 = icmp ult i32 %to_sleep.0, %55, !dbg !2163
  br i1 %cmp140, label %if.then142, label %if.end144, !dbg !2164

if.then142:                                       ; preds = %if.else139
  %gcov_ctr166 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 21), align 8, !dbg !2165
  %56 = add i64 %gcov_ctr166, 1, !dbg !2165
  store i64 %56, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 21), align 8, !dbg !2165
  %add143 = add i32 %55, %to_sleep.0, !dbg !2166
  call void @llvm.dbg.value(metadata i32 %add143, metadata !1975, metadata !DIExpression()), !dbg !2005
  br label %if.end144, !dbg !2167

if.end144:                                        ; preds = %if.then142, %if.else139
  %to_sleep.1 = phi i32 [ %add143, %if.then142 ], [ %to_sleep.0, %if.else139 ], !dbg !2005
  call void @llvm.dbg.value(metadata i32 %to_sleep.1, metadata !1975, metadata !DIExpression()), !dbg !2005
  %gcov_ctr167 = load i64, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 22), align 16
  %57 = add i64 %gcov_ctr167, 1
  store i64 %57, i64* getelementptr inbounds ([23 x i64], [23 x i64]* @__llvm_gcov_ctr.119, i64 0, i64 22), align 16
  br label %while.cond, !llvm.loop !2158
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.extstore_conf_file* @storage_conf_parse(i8* noundef %arg, i32 noundef %page_size) local_unnamed_addr #0 !dbg !2168 {
entry:
  %b = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %arg, metadata !2182, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 %page_size, metadata !2183, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* null, metadata !2184, metadata !DIExpression()), !dbg !2193
  %0 = bitcast i8** %b to i8*, !dbg !2194
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18, !dbg !2194
  call void @llvm.dbg.value(metadata i8* null, metadata !2185, metadata !DIExpression()), !dbg !2193
  store i8* null, i8** %b, align 8, !dbg !2195, !tbaa !1354
  call void @llvm.dbg.value(metadata i8** %b, metadata !2185, metadata !DIExpression(DW_OP_deref)), !dbg !2193
  %call = call i8* @strtok_r(i8* noundef %arg, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i8** noundef nonnull %b) #17, !dbg !2196
  call void @llvm.dbg.value(metadata i8* %call, metadata !2186, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8 0, metadata !2187, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 0, metadata !2188, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 0, metadata !2189, metadata !DIExpression()), !dbg !2193
  %cmp = icmp eq i8* %call, null, !dbg !2197
  br i1 %cmp, label %error, label %if.end, !dbg !2199

if.end:                                           ; preds = %entry
  %call1 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 48) #17, !dbg !2200
  %1 = bitcast i8* %call1 to %struct.extstore_conf_file*, !dbg !2200
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* %1, metadata !2184, metadata !DIExpression()), !dbg !2193
  %call2 = call noalias i8* @strdup(i8* noundef nonnull %call) #17, !dbg !2201
  %file = getelementptr inbounds i8, i8* %call1, i64 8, !dbg !2202
  %2 = bitcast i8* %file to i8**, !dbg !2202
  store i8* %call2, i8** %2, align 8, !dbg !2203, !tbaa !2204
  call void @llvm.dbg.value(metadata i8** %b, metadata !2185, metadata !DIExpression(DW_OP_deref)), !dbg !2193
  %call3 = call i8* @strtok_r(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i8** noundef nonnull %b) #17, !dbg !2206
  call void @llvm.dbg.value(metadata i8* %call3, metadata !2186, metadata !DIExpression()), !dbg !2193
  %cmp4 = icmp eq i8* %call3, null, !dbg !2207
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !2209

if.then5:                                         ; preds = %if.end
  %gcov_ctr85 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 1), align 8, !dbg !2210
  %3 = add i64 %gcov_ctr85, 1, !dbg !2210
  store i64 %3, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 1), align 8, !dbg !2210
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2210, !tbaa !1354
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.34, i64 0, i64 0)) #17, !dbg !2212
  br label %if.then73, !dbg !2213

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32** @__ctype_tolower_loc() #22, !dbg !2214
  %5 = load i32*, i32** %call8, align 8, !dbg !2214, !tbaa !1354
  %call9 = call i64 @strlen(i8* noundef nonnull %call3) #21, !dbg !2214
  %sub = add i64 %call9, -1, !dbg !2214
  %arrayidx = getelementptr inbounds i8, i8* %call3, i64 %sub, !dbg !2214
  %6 = load i8, i8* %arrayidx, align 1, !dbg !2214, !tbaa !760
  %idxprom = sext i8 %6 to i64, !dbg !2214
  %arrayidx10 = getelementptr inbounds i32, i32* %5, i64 %idxprom, !dbg !2214
  %7 = load i32, i32* %arrayidx10, align 4, !dbg !2214, !tbaa !803
  call void @llvm.dbg.value(metadata i32 %7, metadata !2190, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i32 %7, metadata !2187, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2193
  store i8 0, i8* %arrayidx, align 1, !dbg !2217, !tbaa !760
  %sext = shl i32 %7, 24, !dbg !2218
  %conv15 = ashr exact i32 %sext, 24, !dbg !2218
  switch i32 %conv15, label %sw.epilog [
    i32 109, label %sw.bb
    i32 103, label %sw.bb16
    i32 116, label %sw.bb17
    i32 112, label %sw.bb18
  ], !dbg !2219

sw.bb:                                            ; preds = %if.end7
  %gcov_ctr86 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 2), align 16, !dbg !2220
  %8 = add i64 %gcov_ctr86, 1, !dbg !2220
  store i64 %8, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 2), align 16, !dbg !2220
  call void @llvm.dbg.value(metadata i64 1048576, metadata !2188, metadata !DIExpression()), !dbg !2193
  br label %sw.epilog, !dbg !2222

sw.bb16:                                          ; preds = %if.end7
  %gcov_ctr87 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 3), align 8, !dbg !2223
  %9 = add i64 %gcov_ctr87, 1, !dbg !2223
  store i64 %9, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 3), align 8, !dbg !2223
  call void @llvm.dbg.value(metadata i64 1073741824, metadata !2188, metadata !DIExpression()), !dbg !2193
  br label %sw.epilog, !dbg !2224

sw.bb17:                                          ; preds = %if.end7
  %gcov_ctr88 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 4), align 16, !dbg !2225
  %10 = add i64 %gcov_ctr88, 1, !dbg !2225
  store i64 %10, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 4), align 16, !dbg !2225
  call void @llvm.dbg.value(metadata i64 1099511627776, metadata !2188, metadata !DIExpression()), !dbg !2193
  br label %sw.epilog, !dbg !2226

sw.bb18:                                          ; preds = %if.end7
  %gcov_ctr89 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 5), align 8, !dbg !2227
  %11 = add i64 %gcov_ctr89, 1, !dbg !2227
  store i64 %11, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 5), align 8, !dbg !2227
  call void @llvm.dbg.value(metadata i64 1125899906842624, metadata !2188, metadata !DIExpression()), !dbg !2193
  br label %sw.epilog, !dbg !2228

sw.epilog:                                        ; preds = %if.end7, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb
  %multiplier.0 = phi i64 [ 0, %if.end7 ], [ 1125899906842624, %sw.bb18 ], [ 1099511627776, %sw.bb17 ], [ 1073741824, %sw.bb16 ], [ 1048576, %sw.bb ], !dbg !2193
  call void @llvm.dbg.value(metadata i64 %multiplier.0, metadata !2188, metadata !DIExpression()), !dbg !2193
  %call20 = call i32 @atoi(i8* noundef %call3) #21, !dbg !2229
  call void @llvm.dbg.value(metadata i32 %call20, metadata !2189, metadata !DIExpression()), !dbg !2193
  %conv21 = sext i32 %call20 to i64, !dbg !2230
  %mul22 = mul i64 %multiplier.0, %conv21, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %mul22, metadata !2188, metadata !DIExpression()), !dbg !2193
  %conv23 = zext i32 %page_size to i64, !dbg !2232
  %div = udiv i64 %mul22, %conv23, !dbg !2233
  %conv24 = trunc i64 %div to i32, !dbg !2234
  %page_count = bitcast i8* %call1 to i32*, !dbg !2235
  store i32 %conv24, i32* %page_count, align 8, !dbg !2236, !tbaa !2237
  %mul26 = mul i32 %conv24, %page_size, !dbg !2238
  %conv27 = zext i32 %mul26 to i64, !dbg !2238
  %cmp28.not = icmp ult i64 %mul22, %conv27, !dbg !2238
  br i1 %cmp28.not, label %if.else, label %if.end31, !dbg !2241

if.else:                                          ; preds = %sw.epilog
  %gcov_ctr90 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 6), align 16, !dbg !2238
  %12 = add i64 %gcov_ctr90, 1, !dbg !2238
  store i64 %12, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 6), align 16, !dbg !2238
  call void @__assert_fail(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1070, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.storage_conf_parse, i64 0, i64 0)) #19, !dbg !2238
  unreachable, !dbg !2238

if.end31:                                         ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata i8** %b, metadata !2185, metadata !DIExpression(DW_OP_deref)), !dbg !2193
  %call32 = call i8* @strtok_r(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i8** noundef nonnull %b) #17, !dbg !2242
  call void @llvm.dbg.value(metadata i8* %call32, metadata !2186, metadata !DIExpression()), !dbg !2193
  %cmp33.not = icmp eq i8* %call32, null, !dbg !2243
  br i1 %cmp33.not, label %if.else64, label %if.then35, !dbg !2245

if.then35:                                        ; preds = %if.end31
  %call36 = call i32 @strcmp(i8* noundef nonnull %call32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0)) #21, !dbg !2246
  %cmp37 = icmp eq i32 %call36, 0, !dbg !2249
  br i1 %cmp37, label %if.then39, label %if.else40, !dbg !2250

if.then39:                                        ; preds = %if.then35
  %gcov_ctr91 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 7), align 8, !dbg !2251
  %13 = add i64 %gcov_ctr91, 1, !dbg !2251
  store i64 %13, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 7), align 8, !dbg !2251
  br label %if.then70, !dbg !2253

if.else40:                                        ; preds = %if.then35
  %call41 = call i32 @strcmp(i8* noundef nonnull %call32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)) #21, !dbg !2254
  %cmp42 = icmp eq i32 %call41, 0, !dbg !2256
  br i1 %cmp42, label %if.then44, label %if.else46, !dbg !2257

if.then44:                                        ; preds = %if.else40
  %gcov_ctr92 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 8), align 16, !dbg !2258
  %14 = add i64 %gcov_ctr92, 1, !dbg !2258
  store i64 %14, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 8), align 16, !dbg !2258
  br label %if.then70, !dbg !2260

if.else46:                                        ; preds = %if.else40
  %call47 = call i32 @strcmp(i8* noundef nonnull %call32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0)) #21, !dbg !2261
  %cmp48 = icmp eq i32 %call47, 0, !dbg !2263
  br i1 %cmp48, label %if.then50, label %if.else52, !dbg !2264

if.then50:                                        ; preds = %if.else46
  %gcov_ctr93 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 9), align 8, !dbg !2265
  %15 = add i64 %gcov_ctr93, 1, !dbg !2265
  store i64 %15, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 9), align 8, !dbg !2265
  br label %if.then70, !dbg !2267

if.else52:                                        ; preds = %if.else46
  %call53 = call i32 @strcmp(i8* noundef nonnull %call32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0)) #21, !dbg !2268
  %cmp54 = icmp eq i32 %call53, 0, !dbg !2270
  br i1 %cmp54, label %if.then56, label %if.else58, !dbg !2271

if.then56:                                        ; preds = %if.else52
  %free_bucket57 = getelementptr inbounds i8, i8* %call1, i64 36, !dbg !2272
  %16 = bitcast i8* %free_bucket57 to i32*, !dbg !2272
  store i32 0, i32* %16, align 4, !dbg !2274, !tbaa !2275
  %gcov_ctr95 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 11), align 8
  %17 = add i64 %gcov_ctr95, 1
  store i64 %17, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 11), align 8
  br label %if.end72

if.else58:                                        ; preds = %if.else52
  %gcov_ctr94 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 10), align 16, !dbg !2276
  %18 = add i64 %gcov_ctr94, 1, !dbg !2276
  store i64 %18, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 10), align 16, !dbg !2276
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2276, !tbaa !1354
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i64 0, i64 0), i8* noundef nonnull %call32) #17, !dbg !2278
  br label %if.then73, !dbg !2279

if.else64:                                        ; preds = %if.end31
  %gcov_ctr96 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 12), align 16, !dbg !2280
  %20 = add i64 %gcov_ctr96, 1, !dbg !2280
  store i64 %20, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 12), align 16, !dbg !2280
  %free_bucket65 = getelementptr inbounds i8, i8* %call1, i64 36, !dbg !2282
  %21 = bitcast i8* %free_bucket65 to i32*, !dbg !2282
  store i32 0, i32* %21, align 4, !dbg !2283, !tbaa !2275
  br label %if.end72

if.then70:                                        ; preds = %if.then39, %if.then50, %if.then44
  %.sink = phi i32 [ 1, %if.then39 ], [ 2, %if.then50 ], [ 3, %if.then44 ]
  %free_bucket = getelementptr inbounds i8, i8* %call1, i64 36, !dbg !2284
  %22 = bitcast i8* %free_bucket to i32*, !dbg !2284
  store i32 %.sink, i32* %22, align 4, !dbg !2284, !tbaa !2275
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2285, !tbaa !1354
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.42, i64 0, i64 0)) #17, !dbg !2288
  br label %if.then73, !dbg !2289

if.end72:                                         ; preds = %if.else64, %if.then56
  %gcov_ctr97 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 13), align 8, !dbg !2290
  %24 = add i64 %gcov_ctr97, 1, !dbg !2290
  store i64 %24, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 13), align 8, !dbg !2290
  br label %cleanup, !dbg !2291

error:                                            ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 0), align 16, !dbg !2292
  %25 = add i64 %gcov_ctr, 1, !dbg !2292
  store i64 %25, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 0), align 16, !dbg !2292
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* null, metadata !2184, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.label(metadata !2192), !dbg !2293
  br label %cleanup, !dbg !2294

if.then73:                                        ; preds = %if.then5, %if.then70, %if.else58
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* null, metadata !2184, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.label(metadata !2192), !dbg !2293
  %26 = load i8*, i8** %2, align 8, !dbg !2295, !tbaa !2204
  %tobool75.not = icmp eq i8* %26, null, !dbg !2299
  br i1 %tobool75.not, label %if.end78, label %if.then76, !dbg !2300

if.then76:                                        ; preds = %if.then73
  %gcov_ctr98 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 14), align 16, !dbg !2301
  %27 = add i64 %gcov_ctr98, 1, !dbg !2301
  store i64 %27, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 14), align 16, !dbg !2301
  call void @free(i8* noundef nonnull %26) #17, !dbg !2302
  br label %if.end78, !dbg !2302

if.end78:                                         ; preds = %if.then76, %if.then73
  %gcov_ctr99 = load i64, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 15), align 8, !dbg !2303
  %28 = add i64 %gcov_ctr99, 1, !dbg !2303
  store i64 %28, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @__llvm_gcov_ctr.120, i64 0, i64 15), align 8, !dbg !2303
  call void @free(i8* noundef nonnull %call1) #17, !dbg !2304
  br label %cleanup, !dbg !2305

cleanup:                                          ; preds = %error, %if.end78, %if.end72
  %retval.0 = phi %struct.extstore_conf_file* [ %1, %if.end72 ], [ null, %if.end78 ], [ null, %error ], !dbg !2193
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18, !dbg !2306
  ret %struct.extstore_conf_file* %retval.0, !dbg !2306
}

; Function Attrs: nounwind
declare !dbg !2307 dso_local i8* @strtok_r(i8* noundef, i8* noundef, i8** noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2311 dso_local noalias i8* @strdup(i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !2314 dso_local i64 @strlen(i8* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i32 @atoi(i8* noundef nonnull) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !2317 dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @storage_init_config(%struct.settings* nocapture noundef writeonly %s) local_unnamed_addr #0 !dbg !2320 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.122, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.122, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.settings* %s, metadata !2406, metadata !DIExpression()), !dbg !2423
  %call = tail call noalias i8* @calloc(i64 noundef 1, i64 noundef 40) #17, !dbg !2424
  call void @llvm.dbg.value(metadata i8* %call, metadata !2407, metadata !DIExpression()), !dbg !2423
  %ext_item_size = getelementptr inbounds %struct.settings, %struct.settings* %s, i64 0, i32 60, !dbg !2425
  %1 = bitcast i32* %ext_item_size to <4 x i32>*, !dbg !2426
  store <4 x i32> <i32 512, i32 -1, i32 0, i32 2000>, <4 x i32>* %1, align 8, !dbg !2426, !tbaa !803
  %ext_max_frag = getelementptr inbounds %struct.settings, %struct.settings* %s, i64 0, i32 68, !dbg !2427
  %ext_drop_unread = getelementptr inbounds %struct.settings, %struct.settings* %s, i64 0, i32 70, !dbg !2428
  store i8 0, i8* %ext_drop_unread, align 8, !dbg !2429, !tbaa !2430
  %ext_wbuf_size = getelementptr inbounds %struct.settings, %struct.settings* %s, i64 0, i32 64, !dbg !2431
  %2 = bitcast i32* %ext_wbuf_size to <4 x i32>*, !dbg !2432
  store <4 x i32> <i32 4194304, i32 0, i32 0, i32 1000000>, <4 x i32>* %2, align 8, !dbg !2432, !tbaa !803
  %3 = bitcast double* %ext_max_frag to <2 x double>*, !dbg !2433
  store <2 x double> <double 8.000000e-01, double 1.000000e-02>, <2 x double>* %3, align 8, !dbg !2433, !tbaa !2434
  %ext_page_size = getelementptr inbounds %struct.settings, %struct.settings* %s, i64 0, i32 59, !dbg !2435
  store i32 67108864, i32* %ext_page_size, align 4, !dbg !2436, !tbaa !2437
  %ext_io_threadcount = getelementptr inbounds %struct.settings, %struct.settings* %s, i64 0, i32 58, !dbg !2438
  store i32 1, i32* %ext_io_threadcount, align 8, !dbg !2439, !tbaa !2440
  %4 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 59), align 4, !dbg !2441, !tbaa !2437
  %ext_cf = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2442
  %page_size = bitcast i8* %ext_cf to i32*, !dbg !2443
  store i32 %4, i32* %page_size, align 8, !dbg !2444, !tbaa !2445
  %5 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 64), align 8, !dbg !2448, !tbaa !2027
  %wbuf_size = getelementptr inbounds i8, i8* %call, i64 24, !dbg !2449
  %6 = bitcast i8* %wbuf_size to i32*, !dbg !2449
  store i32 %5, i32* %6, align 8, !dbg !2450, !tbaa !2451
  %7 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 58), align 8, !dbg !2452, !tbaa !2440
  %io_threadcount = getelementptr inbounds i8, i8* %call, i64 32, !dbg !2453
  %8 = bitcast i8* %io_threadcount to i32*, !dbg !2453
  store i32 %7, i32* %8, align 8, !dbg !2454, !tbaa !2455
  %io_depth = getelementptr inbounds i8, i8* %call, i64 36, !dbg !2456
  %9 = bitcast i8* %io_depth to i32*, !dbg !2456
  store i32 1, i32* %9, align 4, !dbg !2457, !tbaa !2458
  %page_buckets = getelementptr inbounds i8, i8* %call, i64 16, !dbg !2459
  %10 = bitcast i8* %page_buckets to i32*, !dbg !2459
  store i32 4, i32* %10, align 8, !dbg !2460, !tbaa !2461
  %wbuf_count = getelementptr inbounds i8, i8* %call, i64 28, !dbg !2462
  %11 = bitcast i8* %wbuf_count to i32*, !dbg !2462
  store i32 4, i32* %11, align 4, !dbg !2463, !tbaa !2464
  ret i8* %call, !dbg !2465
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @storage_read_config(i8* noundef %conf, i8** noundef %subopt) local_unnamed_addr #0 !dbg !2466 {
entry:
  %subopts_value = alloca i8*, align 8
  %subopts_tokens = alloca [16 x i8*], align 16
  call void @llvm.dbg.value(metadata i8* %conf, metadata !2470, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8** %subopt, metadata !2471, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8* %conf, metadata !2472, metadata !DIExpression()), !dbg !2483
  %ext_cf1 = getelementptr inbounds i8, i8* %conf, i64 8, !dbg !2484
  call void @llvm.dbg.value(metadata i8* %ext_cf1, metadata !2473, metadata !DIExpression()), !dbg !2483
  %0 = bitcast i8** %subopts_value to i8*, !dbg !2485
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18, !dbg !2485
  %1 = bitcast [16 x i8*]* %subopts_tokens to i8*, !dbg !2486
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #18, !dbg !2486
  call void @llvm.dbg.declare(metadata [16 x i8*]* %subopts_tokens, metadata !2476, metadata !DIExpression()), !dbg !2487
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) %1, i8* noundef nonnull align 16 dereferenceable(128) bitcast ([16 x i8*]* @__const.storage_read_config.subopts_tokens to i8*), i64 128, i1 false), !dbg !2487
  %arraydecay = getelementptr inbounds [16 x i8*], [16 x i8*]* %subopts_tokens, i64 0, i64 0, !dbg !2488
  call void @llvm.dbg.value(metadata i8** %subopts_value, metadata !2475, metadata !DIExpression(DW_OP_deref)), !dbg !2483
  %call = call i32 @getsubopt(i8** noundef %subopt, i8** noundef nonnull %arraydecay, i8** noundef nonnull %subopts_value) #17, !dbg !2489
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb23
    i32 3, label %sw.bb32
    i32 5, label %sw.bb41
    i32 6, label %sw.bb50
    i32 7, label %sw.bb59
    i32 8, label %sw.bb68
    i32 9, label %sw.bb77
    i32 10, label %sw.bb86
    i32 11, label %sw.bb95
    i32 12, label %sw.bb104
    i32 14, label %sw.bb113
    i32 13, label %sw.bb122
    i32 4, label %sw.bb123
  ], !dbg !2490

sw.bb:                                            ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %conf, metadata !2472, metadata !DIExpression()), !dbg !2483
  %storage_file = bitcast i8* %conf to %struct.extstore_conf_file**, !dbg !2491
  %2 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %storage_file, align 8, !dbg !2491, !tbaa !2493
  %tobool.not = icmp eq %struct.extstore_conf_file* %2, null, !dbg !2494
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2495

if.then:                                          ; preds = %sw.bb
  %gcov_ctr = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 0), align 16, !dbg !2496
  %3 = add i64 %gcov_ctr, 1, !dbg !2496
  store i64 %3, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 0), align 16, !dbg !2496
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2496, !tbaa !1354
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.58, i64 0, i64 0)) #17, !dbg !2498
  br label %cleanup141, !dbg !2499

if.end:                                           ; preds = %sw.bb
  %5 = load i8*, i8** %subopts_value, align 8, !dbg !2500, !tbaa !1354
  call void @llvm.dbg.value(metadata i8* %5, metadata !2475, metadata !DIExpression()), !dbg !2483
  %cmp = icmp eq i8* %5, null, !dbg !2502
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !2503

if.then3:                                         ; preds = %if.end
  %gcov_ctr145 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 1), align 8, !dbg !2504
  %6 = add i64 %gcov_ctr145, 1, !dbg !2504
  store i64 %6, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 1), align 8, !dbg !2504
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2504, !tbaa !1354
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i64 0, i64 0)) #17, !dbg !2506
  br label %cleanup141, !dbg !2507

if.end5:                                          ; preds = %if.end
  %page_size = bitcast i8* %ext_cf1 to i32*, !dbg !2508
  %call6 = call zeroext i1 @safe_strtoul(i8* noundef nonnull %5, i32* noundef nonnull %page_size) #17, !dbg !2510
  br i1 %call6, label %if.end9, label %if.then7, !dbg !2511

if.then7:                                         ; preds = %if.end5
  %gcov_ctr146 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 2), align 16, !dbg !2512
  %8 = add i64 %gcov_ctr146, 1, !dbg !2512
  store i64 %8, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 2), align 16, !dbg !2512
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2512, !tbaa !1354
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i64 0, i64 0)) #17, !dbg !2514
  br label %cleanup141, !dbg !2515

if.end9:                                          ; preds = %if.end5
  %gcov_ctr147 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 3), align 8, !dbg !2516
  %10 = add i64 %gcov_ctr147, 1, !dbg !2516
  store i64 %10, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 3), align 8, !dbg !2516
  %11 = load i32, i32* %page_size, align 4, !dbg !2517, !tbaa !2518
  %mul = shl i32 %11, 20, !dbg !2517
  store i32 %mul, i32* %page_size, align 4, !dbg !2517, !tbaa !2518
  br label %cleanup141, !dbg !2519

sw.bb11:                                          ; preds = %entry
  %12 = load i8*, i8** %subopts_value, align 8, !dbg !2520, !tbaa !1354
  call void @llvm.dbg.value(metadata i8* %12, metadata !2475, metadata !DIExpression()), !dbg !2483
  %cmp12 = icmp eq i8* %12, null, !dbg !2522
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !2523

if.then13:                                        ; preds = %sw.bb11
  %gcov_ctr148 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 4), align 16, !dbg !2524
  %13 = add i64 %gcov_ctr148, 1, !dbg !2524
  store i64 %13, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 4), align 16, !dbg !2524
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2524, !tbaa !1354
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.61, i64 0, i64 0)) #17, !dbg !2526
  br label %cleanup141, !dbg !2527

if.end15:                                         ; preds = %sw.bb11
  %wbuf_size = getelementptr inbounds i8, i8* %conf, i64 24, !dbg !2528
  %15 = bitcast i8* %wbuf_size to i32*, !dbg !2528
  %call16 = call zeroext i1 @safe_strtoul(i8* noundef nonnull %12, i32* noundef nonnull %15) #17, !dbg !2530
  br i1 %call16, label %if.end19, label %if.then17, !dbg !2531

if.then17:                                        ; preds = %if.end15
  %gcov_ctr149 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 5), align 8, !dbg !2532
  %16 = add i64 %gcov_ctr149, 1, !dbg !2532
  store i64 %16, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 5), align 8, !dbg !2532
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2532, !tbaa !1354
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.62, i64 0, i64 0)) #17, !dbg !2534
  br label %cleanup141, !dbg !2535

if.end19:                                         ; preds = %if.end15
  %gcov_ctr150 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 6), align 16, !dbg !2536
  %18 = add i64 %gcov_ctr150, 1, !dbg !2536
  store i64 %18, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 6), align 16, !dbg !2536
  %19 = load i32, i32* %15, align 4, !dbg !2537, !tbaa !2538
  %mul21 = shl i32 %19, 20, !dbg !2537
  store i32 %mul21, i32* %15, align 4, !dbg !2537, !tbaa !2538
  store i32 %mul21, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 64), align 8, !dbg !2539, !tbaa !2027
  br label %cleanup141, !dbg !2540

sw.bb23:                                          ; preds = %entry
  %20 = load i8*, i8** %subopts_value, align 8, !dbg !2541, !tbaa !1354
  call void @llvm.dbg.value(metadata i8* %20, metadata !2475, metadata !DIExpression()), !dbg !2483
  %cmp24 = icmp eq i8* %20, null, !dbg !2543
  br i1 %cmp24, label %if.then25, label %if.end27, !dbg !2544

if.then25:                                        ; preds = %sw.bb23
  %gcov_ctr151 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 7), align 8, !dbg !2545
  %21 = add i64 %gcov_ctr151, 1, !dbg !2545
  store i64 %21, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 7), align 8, !dbg !2545
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2545, !tbaa !1354
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i64 0, i64 0)) #17, !dbg !2547
  br label %cleanup141, !dbg !2548

if.end27:                                         ; preds = %sw.bb23
  %io_threadcount = getelementptr inbounds i8, i8* %conf, i64 32, !dbg !2549
  %23 = bitcast i8* %io_threadcount to i32*, !dbg !2549
  %call28 = call zeroext i1 @safe_strtoul(i8* noundef nonnull %20, i32* noundef nonnull %23) #17, !dbg !2551
  br i1 %call28, label %if.end31, label %if.then29, !dbg !2552

if.then29:                                        ; preds = %if.end27
  %gcov_ctr152 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 8), align 16, !dbg !2553
  %24 = add i64 %gcov_ctr152, 1, !dbg !2553
  store i64 %24, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 8), align 16, !dbg !2553
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2553, !tbaa !1354
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.64, i64 0, i64 0)) #17, !dbg !2555
  br label %cleanup141, !dbg !2556

if.end31:                                         ; preds = %if.end27
  %gcov_ctr153 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 9), align 8, !dbg !2557
  %26 = add i64 %gcov_ctr153, 1, !dbg !2557
  store i64 %26, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 9), align 8, !dbg !2557
  br label %cleanup141, !dbg !2557

sw.bb32:                                          ; preds = %entry
  %27 = load i8*, i8** %subopts_value, align 8, !dbg !2558, !tbaa !1354
  call void @llvm.dbg.value(metadata i8* %27, metadata !2475, metadata !DIExpression()), !dbg !2483
  %cmp33 = icmp eq i8* %27, null, !dbg !2560
  br i1 %cmp33, label %if.then34, label %if.end36, !dbg !2561

if.then34:                                        ; preds = %sw.bb32
  %gcov_ctr154 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 10), align 16, !dbg !2562
  %28 = add i64 %gcov_ctr154, 1, !dbg !2562
  store i64 %28, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 10), align 16, !dbg !2562
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2562, !tbaa !1354
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.65, i64 0, i64 0)) #17, !dbg !2564
  br label %cleanup141, !dbg !2565

if.end36:                                         ; preds = %sw.bb32
  %io_depth = getelementptr inbounds i8, i8* %conf, i64 36, !dbg !2566
  %30 = bitcast i8* %io_depth to i32*, !dbg !2566
  %call37 = call zeroext i1 @safe_strtoul(i8* noundef nonnull %27, i32* noundef nonnull %30) #17, !dbg !2568
  br i1 %call37, label %if.end40, label %if.then38, !dbg !2569

if.then38:                                        ; preds = %if.end36
  %gcov_ctr155 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 11), align 8, !dbg !2570
  %31 = add i64 %gcov_ctr155, 1, !dbg !2570
  store i64 %31, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 11), align 8, !dbg !2570
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2570, !tbaa !1354
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.66, i64 0, i64 0)) #17, !dbg !2572
  br label %cleanup141, !dbg !2573

if.end40:                                         ; preds = %if.end36
  %gcov_ctr156 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 12), align 16, !dbg !2574
  %33 = add i64 %gcov_ctr156, 1, !dbg !2574
  store i64 %33, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 12), align 16, !dbg !2574
  br label %cleanup141, !dbg !2574

sw.bb41:                                          ; preds = %entry
  %34 = load i8*, i8** %subopts_value, align 8, !dbg !2575, !tbaa !1354
  call void @llvm.dbg.value(metadata i8* %34, metadata !2475, metadata !DIExpression()), !dbg !2483
  %cmp42 = icmp eq i8* %34, null, !dbg !2577
  br i1 %cmp42, label %if.then43, label %if.end45, !dbg !2578

if.then43:                                        ; preds = %sw.bb41
  %gcov_ctr157 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 13), align 8, !dbg !2579
  %35 = add i64 %gcov_ctr157, 1, !dbg !2579
  store i64 %35, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 13), align 8, !dbg !2579
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2579, !tbaa !1354
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.67, i64 0, i64 0)) #17, !dbg !2581
  br label %cleanup141, !dbg !2582

if.end45:                                         ; preds = %sw.bb41
  %call46 = call zeroext i1 @safe_strtoul(i8* noundef nonnull %34, i32* noundef getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 60)) #17, !dbg !2583
  br i1 %call46, label %if.end49, label %if.then47, !dbg !2585

if.then47:                                        ; preds = %if.end45
  %gcov_ctr158 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 14), align 16, !dbg !2586
  %37 = add i64 %gcov_ctr158, 1, !dbg !2586
  store i64 %37, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 14), align 16, !dbg !2586
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2586, !tbaa !1354
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.68, i64 0, i64 0)) #17, !dbg !2588
  br label %cleanup141, !dbg !2589

if.end49:                                         ; preds = %if.end45
  %gcov_ctr159 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 15), align 8, !dbg !2590
  %39 = add i64 %gcov_ctr159, 1, !dbg !2590
  store i64 %39, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 15), align 8, !dbg !2590
  br label %cleanup141, !dbg !2590

sw.bb50:                                          ; preds = %entry
  %40 = load i8*, i8** %subopts_value, align 8, !dbg !2591, !tbaa !1354
  call void @llvm.dbg.value(metadata i8* %40, metadata !2475, metadata !DIExpression()), !dbg !2483
  %cmp51 = icmp eq i8* %40, null, !dbg !2593
  br i1 %cmp51, label %if.then52, label %if.end54, !dbg !2594

if.then52:                                        ; preds = %sw.bb50
  %gcov_ctr160 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 16), align 16, !dbg !2595
  %41 = add i64 %gcov_ctr160, 1, !dbg !2595
  store i64 %41, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 16), align 16, !dbg !2595
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2595, !tbaa !1354
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.69, i64 0, i64 0)) #17, !dbg !2597
  br label %cleanup141, !dbg !2598

if.end54:                                         ; preds = %sw.bb50
  %call55 = call zeroext i1 @safe_strtoul(i8* noundef nonnull %40, i32* noundef getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 61)) #17, !dbg !2599
  br i1 %call55, label %if.end58, label %if.then56, !dbg !2601

if.then56:                                        ; preds = %if.end54
  %gcov_ctr161 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 17), align 8, !dbg !2602
  %43 = add i64 %gcov_ctr161, 1, !dbg !2602
  store i64 %43, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 17), align 8, !dbg !2602
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2602, !tbaa !1354
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.70, i64 0, i64 0)) #17, !dbg !2604
  br label %cleanup141, !dbg !2605

if.end58:                                         ; preds = %if.end54
  %gcov_ctr162 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 18), align 16, !dbg !2606
  %45 = add i64 %gcov_ctr162, 1, !dbg !2606
  store i64 %45, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 18), align 16, !dbg !2606
  br label %cleanup141, !dbg !2606

sw.bb59:                                          ; preds = %entry
  %46 = load i8*, i8** %subopts_value, align 8, !dbg !2607, !tbaa !1354
  call void @llvm.dbg.value(metadata i8* %46, metadata !2475, metadata !DIExpression()), !dbg !2483
  %cmp60 = icmp eq i8* %46, null, !dbg !2609
  br i1 %cmp60, label %if.then61, label %if.end63, !dbg !2610

if.then61:                                        ; preds = %sw.bb59
  %gcov_ctr163 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 19), align 8, !dbg !2611
  %47 = add i64 %gcov_ctr163, 1, !dbg !2611
  store i64 %47, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 19), align 8, !dbg !2611
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2611, !tbaa !1354
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i64 0, i64 0)) #17, !dbg !2613
  br label %cleanup141, !dbg !2614

if.end63:                                         ; preds = %sw.bb59
  %call64 = call zeroext i1 @safe_strtoul(i8* noundef nonnull %46, i32* noundef getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 62)) #17, !dbg !2615
  br i1 %call64, label %if.end67, label %if.then65, !dbg !2617

if.then65:                                        ; preds = %if.end63
  %gcov_ctr164 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 20), align 16, !dbg !2618
  %49 = add i64 %gcov_ctr164, 1, !dbg !2618
  store i64 %49, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 20), align 16, !dbg !2618
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2618, !tbaa !1354
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.72, i64 0, i64 0)) #17, !dbg !2620
  br label %cleanup141, !dbg !2621

if.end67:                                         ; preds = %if.end63
  %gcov_ctr165 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 21), align 8, !dbg !2622
  %51 = add i64 %gcov_ctr165, 1, !dbg !2622
  store i64 %51, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 21), align 8, !dbg !2622
  br label %cleanup141, !dbg !2622

sw.bb68:                                          ; preds = %entry
  %52 = load i8*, i8** %subopts_value, align 8, !dbg !2623, !tbaa !1354
  call void @llvm.dbg.value(metadata i8* %52, metadata !2475, metadata !DIExpression()), !dbg !2483
  %cmp69 = icmp eq i8* %52, null, !dbg !2625
  br i1 %cmp69, label %if.then70, label %if.end72, !dbg !2626

if.then70:                                        ; preds = %sw.bb68
  %gcov_ctr166 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 22), align 16, !dbg !2627
  %53 = add i64 %gcov_ctr166, 1, !dbg !2627
  store i64 %53, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 22), align 16, !dbg !2627
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2627, !tbaa !1354
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #17, !dbg !2629
  br label %cleanup141, !dbg !2630

if.end72:                                         ; preds = %sw.bb68
  %call73 = call zeroext i1 @safe_strtoul(i8* noundef nonnull %52, i32* noundef getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 63)) #17, !dbg !2631
  br i1 %call73, label %if.end76, label %if.then74, !dbg !2633

if.then74:                                        ; preds = %if.end72
  %gcov_ctr167 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 23), align 8, !dbg !2634
  %55 = add i64 %gcov_ctr167, 1, !dbg !2634
  store i64 %55, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 23), align 8, !dbg !2634
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2634, !tbaa !1354
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %56, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.74, i64 0, i64 0)) #17, !dbg !2636
  br label %cleanup141, !dbg !2637

if.end76:                                         ; preds = %if.end72
  %gcov_ctr168 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 24), align 16, !dbg !2638
  %57 = add i64 %gcov_ctr168, 1, !dbg !2638
  store i64 %57, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 24), align 16, !dbg !2638
  br label %cleanup141, !dbg !2638

sw.bb77:                                          ; preds = %entry
  %58 = load i8*, i8** %subopts_value, align 8, !dbg !2639, !tbaa !1354
  call void @llvm.dbg.value(metadata i8* %58, metadata !2475, metadata !DIExpression()), !dbg !2483
  %cmp78 = icmp eq i8* %58, null, !dbg !2641
  br i1 %cmp78, label %if.then79, label %if.end81, !dbg !2642

if.then79:                                        ; preds = %sw.bb77
  %gcov_ctr169 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 25), align 8, !dbg !2643
  %59 = add i64 %gcov_ctr169, 1, !dbg !2643
  store i64 %59, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 25), align 8, !dbg !2643
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2643, !tbaa !1354
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.75, i64 0, i64 0)) #17, !dbg !2645
  br label %cleanup141, !dbg !2646

if.end81:                                         ; preds = %sw.bb77
  %call82 = call zeroext i1 @safe_strtoul(i8* noundef nonnull %58, i32* noundef getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 65)) #17, !dbg !2647
  br i1 %call82, label %if.end85, label %if.then83, !dbg !2649

if.then83:                                        ; preds = %if.end81
  %gcov_ctr170 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 26), align 16, !dbg !2650
  %61 = add i64 %gcov_ctr170, 1, !dbg !2650
  store i64 %61, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 26), align 16, !dbg !2650
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2650, !tbaa !1354
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %62, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.76, i64 0, i64 0)) #17, !dbg !2652
  br label %cleanup141, !dbg !2653

if.end85:                                         ; preds = %if.end81
  %gcov_ctr171 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 27), align 8, !dbg !2654
  %63 = add i64 %gcov_ctr171, 1, !dbg !2654
  store i64 %63, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 27), align 8, !dbg !2654
  br label %cleanup141, !dbg !2654

sw.bb86:                                          ; preds = %entry
  %64 = load i8*, i8** %subopts_value, align 8, !dbg !2655, !tbaa !1354
  call void @llvm.dbg.value(metadata i8* %64, metadata !2475, metadata !DIExpression()), !dbg !2483
  %cmp87 = icmp eq i8* %64, null, !dbg !2657
  br i1 %cmp87, label %if.then88, label %if.end90, !dbg !2658

if.then88:                                        ; preds = %sw.bb86
  %gcov_ctr172 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 28), align 16, !dbg !2659
  %65 = add i64 %gcov_ctr172, 1, !dbg !2659
  store i64 %65, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 28), align 16, !dbg !2659
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2659, !tbaa !1354
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %66, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.77, i64 0, i64 0)) #17, !dbg !2661
  br label %cleanup141, !dbg !2662

if.end90:                                         ; preds = %sw.bb86
  %call91 = call zeroext i1 @safe_strtoul(i8* noundef nonnull %64, i32* noundef getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 66)) #17, !dbg !2663
  br i1 %call91, label %if.end94, label %if.then92, !dbg !2665

if.then92:                                        ; preds = %if.end90
  %gcov_ctr173 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 29), align 8, !dbg !2666
  %67 = add i64 %gcov_ctr173, 1, !dbg !2666
  store i64 %67, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 29), align 8, !dbg !2666
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2666, !tbaa !1354
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %68, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.78, i64 0, i64 0)) #17, !dbg !2668
  br label %cleanup141, !dbg !2669

if.end94:                                         ; preds = %if.end90
  %gcov_ctr174 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 30), align 16, !dbg !2670
  %69 = add i64 %gcov_ctr174, 1, !dbg !2670
  store i64 %69, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 30), align 16, !dbg !2670
  br label %cleanup141, !dbg !2670

sw.bb95:                                          ; preds = %entry
  %70 = load i8*, i8** %subopts_value, align 8, !dbg !2671, !tbaa !1354
  call void @llvm.dbg.value(metadata i8* %70, metadata !2475, metadata !DIExpression()), !dbg !2483
  %cmp96 = icmp eq i8* %70, null, !dbg !2673
  br i1 %cmp96, label %if.then97, label %if.end99, !dbg !2674

if.then97:                                        ; preds = %sw.bb95
  %gcov_ctr175 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 31), align 8, !dbg !2675
  %71 = add i64 %gcov_ctr175, 1, !dbg !2675
  store i64 %71, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 31), align 8, !dbg !2675
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2675, !tbaa !1354
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %72, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.79, i64 0, i64 0)) #17, !dbg !2677
  br label %cleanup141, !dbg !2678

if.end99:                                         ; preds = %sw.bb95
  %call100 = call zeroext i1 @safe_strtoul(i8* noundef nonnull %70, i32* noundef getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 67)) #17, !dbg !2679
  br i1 %call100, label %if.end103, label %if.then101, !dbg !2681

if.then101:                                       ; preds = %if.end99
  %gcov_ctr176 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 32), align 16, !dbg !2682
  %73 = add i64 %gcov_ctr176, 1, !dbg !2682
  store i64 %73, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 32), align 16, !dbg !2682
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2682, !tbaa !1354
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %74, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.80, i64 0, i64 0)) #17, !dbg !2684
  br label %cleanup141, !dbg !2685

if.end103:                                        ; preds = %if.end99
  %gcov_ctr177 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 33), align 8, !dbg !2686
  %75 = add i64 %gcov_ctr177, 1, !dbg !2686
  store i64 %75, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 33), align 8, !dbg !2686
  br label %cleanup141, !dbg !2686

sw.bb104:                                         ; preds = %entry
  %76 = load i8*, i8** %subopts_value, align 8, !dbg !2687, !tbaa !1354
  call void @llvm.dbg.value(metadata i8* %76, metadata !2475, metadata !DIExpression()), !dbg !2483
  %cmp105 = icmp eq i8* %76, null, !dbg !2689
  br i1 %cmp105, label %if.then106, label %if.end108, !dbg !2690

if.then106:                                       ; preds = %sw.bb104
  %gcov_ctr178 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 34), align 16, !dbg !2691
  %77 = add i64 %gcov_ctr178, 1, !dbg !2691
  store i64 %77, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 34), align 16, !dbg !2691
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2691, !tbaa !1354
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %78, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.81, i64 0, i64 0)) #17, !dbg !2693
  br label %cleanup141, !dbg !2694

if.end108:                                        ; preds = %sw.bb104
  %call109 = call zeroext i1 @safe_strtod(i8* noundef nonnull %76, double* noundef getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 68)) #17, !dbg !2695
  br i1 %call109, label %if.end112, label %if.then110, !dbg !2697

if.then110:                                       ; preds = %if.end108
  %gcov_ctr179 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 35), align 8, !dbg !2698
  %79 = add i64 %gcov_ctr179, 1, !dbg !2698
  store i64 %79, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 35), align 8, !dbg !2698
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2698, !tbaa !1354
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %80, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.82, i64 0, i64 0)) #17, !dbg !2700
  br label %cleanup141, !dbg !2701

if.end112:                                        ; preds = %if.end108
  %gcov_ctr180 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 36), align 16, !dbg !2702
  %81 = add i64 %gcov_ctr180, 1, !dbg !2702
  store i64 %81, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 36), align 16, !dbg !2702
  br label %cleanup141, !dbg !2702

sw.bb113:                                         ; preds = %entry
  %82 = load i8*, i8** %subopts_value, align 8, !dbg !2703, !tbaa !1354
  call void @llvm.dbg.value(metadata i8* %82, metadata !2475, metadata !DIExpression()), !dbg !2483
  %cmp114 = icmp eq i8* %82, null, !dbg !2705
  br i1 %cmp114, label %if.then115, label %if.end117, !dbg !2706

if.then115:                                       ; preds = %sw.bb113
  %gcov_ctr181 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 37), align 8, !dbg !2707
  %83 = add i64 %gcov_ctr181, 1, !dbg !2707
  store i64 %83, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 37), align 8, !dbg !2707
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2707, !tbaa !1354
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %84, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.83, i64 0, i64 0)) #17, !dbg !2709
  br label %cleanup141, !dbg !2710

if.end117:                                        ; preds = %sw.bb113
  %call118 = call zeroext i1 @safe_strtod(i8* noundef nonnull %82, double* noundef getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 69)) #17, !dbg !2711
  br i1 %call118, label %if.end121, label %if.then119, !dbg !2713

if.then119:                                       ; preds = %if.end117
  %gcov_ctr182 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 38), align 16, !dbg !2714
  %85 = add i64 %gcov_ctr182, 1, !dbg !2714
  store i64 %85, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 38), align 16, !dbg !2714
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2714, !tbaa !1354
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.84, i64 0, i64 0)) #17, !dbg !2716
  br label %cleanup141, !dbg !2717

if.end121:                                        ; preds = %if.end117
  %gcov_ctr183 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 39), align 8, !dbg !2718
  %87 = add i64 %gcov_ctr183, 1, !dbg !2718
  store i64 %87, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 39), align 8, !dbg !2718
  br label %cleanup141, !dbg !2718

sw.bb122:                                         ; preds = %entry
  %gcov_ctr184 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 40), align 16, !dbg !2719
  %88 = add i64 %gcov_ctr184, 1, !dbg !2719
  store i64 %88, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 40), align 16, !dbg !2719
  store i8 1, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 70), align 8, !dbg !2719, !tbaa !2430
  br label %cleanup141, !dbg !2720

sw.bb123:                                         ; preds = %entry
  %89 = load i8*, i8** %subopts_value, align 8, !dbg !2721, !tbaa !1354
  call void @llvm.dbg.value(metadata i8* %89, metadata !2475, metadata !DIExpression()), !dbg !2483
  %tobool124.not = icmp eq i8* %89, null, !dbg !2721
  br i1 %tobool124.not, label %if.else, label %if.then125, !dbg !2722

if.then125:                                       ; preds = %sw.bb123
  %page_size126 = bitcast i8* %ext_cf1 to i32*, !dbg !2723
  %90 = load i32, i32* %page_size126, align 4, !dbg !2723, !tbaa !2518
  %call127 = call %struct.extstore_conf_file* @storage_conf_parse(i8* noundef nonnull %89, i32 noundef %90) #20, !dbg !2724
  call void @llvm.dbg.value(metadata %struct.extstore_conf_file* %call127, metadata !2479, metadata !DIExpression()), !dbg !2725
  %cmp128 = icmp eq %struct.extstore_conf_file* %call127, null, !dbg !2726
  br i1 %cmp128, label %cleanup.thread, label %if.end131, !dbg !2728

cleanup.thread:                                   ; preds = %if.then125
  %gcov_ctr185 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 41), align 8, !dbg !2729
  %91 = add i64 %gcov_ctr185, 1, !dbg !2729
  store i64 %91, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 41), align 8, !dbg !2729
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2729, !tbaa !1354
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %92, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.85, i64 0, i64 0)) #17, !dbg !2731
  br label %cleanup141

if.end131:                                        ; preds = %if.then125
  %storage_file132 = bitcast i8* %conf to %struct.extstore_conf_file**, !dbg !2732
  %93 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %storage_file132, align 8, !dbg !2732, !tbaa !2493
  %cmp133.not = icmp eq %struct.extstore_conf_file* %93, null, !dbg !2734
  br i1 %cmp133.not, label %if.end139, label %if.then134, !dbg !2735

if.then134:                                       ; preds = %if.end131
  %gcov_ctr186 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 42), align 16, !dbg !2736
  %94 = add i64 %gcov_ctr186, 1, !dbg !2736
  store i64 %94, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 42), align 16, !dbg !2736
  %95 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %storage_file132, align 8, !dbg !2738, !tbaa !2493
  %next = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %call127, i64 0, i32 6, !dbg !2739
  store %struct.extstore_conf_file* %95, %struct.extstore_conf_file** %next, align 8, !dbg !2740, !tbaa !2741
  br label %if.end139, !dbg !2742

if.else:                                          ; preds = %sw.bb123
  %gcov_ctr188 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 44), align 16, !dbg !2743
  %96 = add i64 %gcov_ctr188, 1, !dbg !2743
  store i64 %96, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 44), align 16, !dbg !2743
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2743, !tbaa !1354
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %97, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.86, i64 0, i64 0)) #17, !dbg !2745
  br label %cleanup141, !dbg !2746

if.end139:                                        ; preds = %if.then134, %if.end131
  %gcov_ctr187 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 43), align 8, !dbg !2747
  %98 = add i64 %gcov_ctr187, 1, !dbg !2747
  store i64 %98, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 43), align 8, !dbg !2747
  store %struct.extstore_conf_file* %call127, %struct.extstore_conf_file** %storage_file132, align 8, !dbg !2748, !tbaa !2493
  %gcov_ctr189 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 45), align 8, !dbg !2749
  %99 = add i64 %gcov_ctr189, 1, !dbg !2749
  store i64 %99, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 45), align 8, !dbg !2749
  br label %cleanup141, !dbg !2749

sw.default:                                       ; preds = %entry
  %gcov_ctr190 = load i64, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 46), align 16, !dbg !2750
  %100 = add i64 %gcov_ctr190, 1, !dbg !2750
  store i64 %100, i64* getelementptr inbounds ([47 x i64], [47 x i64]* @__llvm_gcov_ctr.123, i64 0, i64 46), align 16, !dbg !2750
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2750, !tbaa !1354
  %102 = load i8*, i8** %subopts_value, align 8, !dbg !2751, !tbaa !1354
  call void @llvm.dbg.value(metadata i8* %102, metadata !2475, metadata !DIExpression()), !dbg !2483
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %101, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.87, i64 0, i64 0), i8* noundef %102) #17, !dbg !2752
  br label %cleanup141, !dbg !2753

cleanup141:                                       ; preds = %cleanup.thread, %if.end9, %if.end19, %if.end31, %if.end40, %if.end49, %if.end58, %if.end67, %if.end76, %if.end85, %if.end94, %if.end103, %if.end112, %if.end121, %sw.bb122, %if.end139, %sw.default, %if.else, %if.then119, %if.then115, %if.then110, %if.then106, %if.then101, %if.then97, %if.then92, %if.then88, %if.then83, %if.then79, %if.then74, %if.then70, %if.then65, %if.then61, %if.then56, %if.then52, %if.then47, %if.then43, %if.then38, %if.then34, %if.then29, %if.then25, %if.then17, %if.then13, %if.then7, %if.then3, %if.then
  %retval.1 = phi i32 [ 1, %sw.default ], [ 1, %if.else ], [ 1, %if.then115 ], [ 1, %if.then119 ], [ 1, %if.then106 ], [ 1, %if.then110 ], [ 1, %if.then97 ], [ 1, %if.then101 ], [ 1, %if.then88 ], [ 1, %if.then92 ], [ 1, %if.then79 ], [ 1, %if.then83 ], [ 1, %if.then70 ], [ 1, %if.then74 ], [ 1, %if.then61 ], [ 1, %if.then65 ], [ 1, %if.then52 ], [ 1, %if.then56 ], [ 1, %if.then43 ], [ 1, %if.then47 ], [ 1, %if.then34 ], [ 1, %if.then38 ], [ 1, %if.then25 ], [ 1, %if.then29 ], [ 1, %if.then13 ], [ 1, %if.then17 ], [ 1, %if.then ], [ 1, %if.then3 ], [ 1, %if.then7 ], [ 0, %if.end139 ], [ 0, %sw.bb122 ], [ 0, %if.end121 ], [ 0, %if.end112 ], [ 0, %if.end103 ], [ 0, %if.end94 ], [ 0, %if.end85 ], [ 0, %if.end76 ], [ 0, %if.end67 ], [ 0, %if.end58 ], [ 0, %if.end49 ], [ 0, %if.end40 ], [ 0, %if.end31 ], [ 0, %if.end19 ], [ 0, %if.end9 ], [ 1, %cleanup.thread ], !dbg !2483
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #18, !dbg !2754
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18, !dbg !2754
  ret i32 %retval.1, !dbg !2754
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind
declare !dbg !2755 dso_local i32 @getsubopt(i8** noundef, i8** noundef, i8** noundef) local_unnamed_addr #5

declare !dbg !2760 dso_local zeroext i1 @safe_strtoul(i8* noundef, i32* noundef) local_unnamed_addr #3

declare !dbg !2764 dso_local zeroext i1 @safe_strtod(i8* noundef, double* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @storage_check_config(i8* nocapture noundef readonly %conf) local_unnamed_addr #0 !dbg !2768 {
entry:
  call void @llvm.dbg.value(metadata i8* %conf, metadata !2770, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8* %conf, metadata !2771, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8* %conf, metadata !2772, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2773
  %storage_file = bitcast i8* %conf to %struct.extstore_conf_file**, !dbg !2774
  %0 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %storage_file, align 8, !dbg !2774, !tbaa !2493
  %tobool.not = icmp eq %struct.extstore_conf_file* %0, null, !dbg !2776
  br i1 %tobool.not, label %if.end8, label %if.then, !dbg !2777

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %conf, metadata !2772, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2773
  %1 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 22), align 4, !dbg !2778, !tbaa !2781
  %wbuf_size = getelementptr inbounds i8, i8* %conf, i64 24, !dbg !2782
  %2 = bitcast i8* %wbuf_size to i32*, !dbg !2782
  %3 = load i32, i32* %2, align 4, !dbg !2782, !tbaa !2538
  %cmp = icmp ugt i32 %1, %3, !dbg !2783
  br i1 %cmp, label %if.then2, label %if.end, !dbg !2784

if.then2:                                         ; preds = %if.then
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.124, i64 0, i64 0), align 16, !dbg !2785
  %4 = add i64 %gcov_ctr, 1, !dbg !2785
  store i64 %4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.124, i64 0, i64 0), align 16, !dbg !2785
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2785, !tbaa !1354
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.88, i64 0, i64 0), i32 noundef %1, i32 noundef %3) #17, !dbg !2787
  br label %cleanup, !dbg !2788

if.end:                                           ; preds = %if.then
  %6 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 3), align 8, !dbg !2789, !tbaa !2791
  %tobool4.not = icmp eq i32 %6, 0, !dbg !2792
  br i1 %tobool4.not, label %if.end7, label %if.then5, !dbg !2793

if.then5:                                         ; preds = %if.end
  %gcov_ctr11 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.124, i64 0, i64 2), align 16, !dbg !2794
  %7 = add i64 %gcov_ctr11, 1, !dbg !2794
  store i64 %7, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.124, i64 0, i64 2), align 16, !dbg !2794
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2794, !tbaa !1354
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.89, i64 0, i64 0)) #17, !dbg !2796
  br label %cleanup, !dbg !2797

if.end7:                                          ; preds = %if.end
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.124, i64 0, i64 1), align 8, !dbg !2798
  %9 = add i64 %gcov_ctr10, 1, !dbg !2798
  store i64 %9, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.124, i64 0, i64 1), align 8, !dbg !2798
  br label %cleanup, !dbg !2798

if.end8:                                          ; preds = %entry
  %gcov_ctr12 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.124, i64 0, i64 3), align 8, !dbg !2799
  %10 = add i64 %gcov_ctr12, 1, !dbg !2799
  store i64 %10, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.124, i64 0, i64 3), align 8, !dbg !2799
  br label %cleanup, !dbg !2799

cleanup:                                          ; preds = %if.end8, %if.end7, %if.then5, %if.then2
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 1, %if.then5 ], [ 0, %if.end7 ], [ 2, %if.end8 ], !dbg !2773
  ret i32 %retval.0, !dbg !2800
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @storage_init(i8* noundef %conf) local_unnamed_addr #0 !dbg !2801 {
entry:
  %eres = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %conf, metadata !2803, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8* %conf, metadata !2804, metadata !DIExpression()), !dbg !2808
  %ext_cf1 = getelementptr inbounds i8, i8* %conf, i64 8, !dbg !2809
  %0 = bitcast i8* %ext_cf1 to %struct.extstore_conf*, !dbg !2809
  call void @llvm.dbg.value(metadata %struct.extstore_conf* %0, metadata !2805, metadata !DIExpression()), !dbg !2808
  %1 = bitcast i32* %eres to i8*, !dbg !2810
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #18, !dbg !2810
  call void @llvm.dbg.value(metadata i8* null, metadata !2807, metadata !DIExpression()), !dbg !2808
  %2 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 65), align 4, !dbg !2811, !tbaa !2813
  %cmp = icmp eq i32 %2, 0, !dbg !2814
  br i1 %cmp, label %if.then, label %if.end, !dbg !2815

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %conf, metadata !2804, metadata !DIExpression()), !dbg !2808
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 0), align 16, !dbg !2816
  %3 = add i64 %gcov_ctr, 1, !dbg !2816
  store i64 %3, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 0), align 16, !dbg !2816
  %storage_file = bitcast i8* %conf to %struct.extstore_conf_file**, !dbg !2818
  %4 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %storage_file, align 8, !dbg !2818, !tbaa !2493
  %page_count = getelementptr inbounds %struct.extstore_conf_file, %struct.extstore_conf_file* %4, i64 0, i32 0, !dbg !2819
  %5 = load i32, i32* %page_count, align 8, !dbg !2819, !tbaa !2237
  %div = lshr i32 %5, 2, !dbg !2820
  store i32 %div, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 65), align 4, !dbg !2821, !tbaa !2813
  store i32 %div, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 66), align 8, !dbg !2822, !tbaa !2823
  br label %if.end, !dbg !2824

if.end:                                           ; preds = %entry, %if.then
  %storage_file5.pre-phi = bitcast i8* %conf to %struct.extstore_conf_file**, !dbg !2825
  tail call void @crc32c_init() #17, !dbg !2826
  store i32 0, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 71), align 4, !dbg !2827, !tbaa !1849
  %6 = load %struct.extstore_conf_file*, %struct.extstore_conf_file** %storage_file5.pre-phi, align 8, !dbg !2825, !tbaa !2493
  call void @llvm.dbg.value(metadata i32* %eres, metadata !2806, metadata !DIExpression(DW_OP_deref)), !dbg !2808
  %call = call i8* @extstore_init(%struct.extstore_conf_file* noundef %6, %struct.extstore_conf* noundef nonnull %0, i32* noundef nonnull %eres) #17, !dbg !2828
  call void @llvm.dbg.value(metadata i8* %call, metadata !2807, metadata !DIExpression()), !dbg !2808
  %cmp6 = icmp eq i8* %call, null, !dbg !2829
  br i1 %cmp6, label %if.then7, label %if.end13, !dbg !2831

if.then7:                                         ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2832, !tbaa !1354
  %8 = load i32, i32* %eres, align 4, !dbg !2834, !tbaa !760
  call void @llvm.dbg.value(metadata i32 %8, metadata !2806, metadata !DIExpression()), !dbg !2808
  %call8 = call i8* @extstore_err(i32 noundef %8) #17, !dbg !2835
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.90, i64 0, i64 0), i8* noundef %call8) #17, !dbg !2836
  %9 = load i32, i32* %eres, align 4, !dbg !2837, !tbaa !760
  call void @llvm.dbg.value(metadata i32 %9, metadata !2806, metadata !DIExpression()), !dbg !2808
  %cmp10 = icmp eq i32 %9, 7, !dbg !2839
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !2840

if.then11:                                        ; preds = %if.then7
  %gcov_ctr17 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 1), align 8, !dbg !2841
  %10 = add i64 %gcov_ctr17, 1, !dbg !2841
  store i64 %10, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 1), align 8, !dbg !2841
  call void @perror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i64 0, i64 0)) #17, !dbg !2841
  br label %if.end12, !dbg !2843

if.end12:                                         ; preds = %if.then11, %if.then7
  %gcov_ctr18 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 2), align 16, !dbg !2844
  %11 = add i64 %gcov_ctr18, 1, !dbg !2844
  store i64 %11, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 2), align 16, !dbg !2844
  br label %cleanup, !dbg !2844

if.end13:                                         ; preds = %if.end
  %gcov_ctr19 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 3), align 8, !dbg !2845
  %12 = add i64 %gcov_ctr19, 1, !dbg !2845
  store i64 %12, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.125, i64 0, i64 3), align 8, !dbg !2845
  br label %cleanup, !dbg !2846

cleanup:                                          ; preds = %if.end13, %if.end12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #18, !dbg !2847
  ret i8* %call, !dbg !2847
}

declare !dbg !2848 dso_local void @crc32c_init() local_unnamed_addr #3

declare !dbg !2850 dso_local i8* @extstore_init(%struct.extstore_conf_file* noundef, %struct.extstore_conf* noundef, i32* noundef) local_unnamed_addr #3

declare !dbg !2854 dso_local i8* @extstore_err(i32 noundef) local_unnamed_addr #3

declare !dbg !2857 dso_local void @perror(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @__bswap_32(i32 noundef %__bsx) unnamed_addr #12 !dbg !2860 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.126, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.126, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 %__bsx, metadata !2865, metadata !DIExpression()), !dbg !2866
  %or7 = tail call i32 @llvm.bswap.i32(i32 %__bsx), !dbg !2867
  ret i32 %or7, !dbg !2868
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @__bswap_16() unnamed_addr #6 !dbg !2869 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.127, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.127, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i16 1, metadata !2873, metadata !DIExpression()), !dbg !2874
  ret void, !dbg !2875
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !2876 dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #9

declare !dbg !2879 dso_local void @redispatch_conn(%struct.conn* noundef) local_unnamed_addr #3

declare !dbg !2882 dso_local void @slabs_free(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2885 dso_local void @item_unlink(%struct._stritem* noundef) local_unnamed_addr #3

declare !dbg !2886 dso_local i8* @item_trylock(i32 noundef) local_unnamed_addr #3

declare !dbg !2889 dso_local i32 @item_replace(%struct._stritem* noundef, %struct._stritem* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2892 dso_local void @item_trylock_unlock(i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

declare !dbg !2893 dso_local %struct._logger* @logger_create() local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare !dbg !2896 dso_local void @abort() local_unnamed_addr #4

declare !dbg !2897 dso_local i32 @global_page_pool_size(i8* noundef) local_unnamed_addr #3

declare !dbg !2901 dso_local i32 @slabs_available_chunks(i32 noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @storage_write(i8* noundef %storage, i32 noundef %clsid, i32 noundef %item_age) unnamed_addr #0 !dbg !2905 {
entry:
  %it_info = alloca %struct.lru_pull_tail_return, align 8
  %io = alloca %struct._obj_io, align 8
  call void @llvm.dbg.value(metadata i8* %storage, metadata !2910, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 %clsid, metadata !2911, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 %item_age, metadata !2912, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 0, metadata !2913, metadata !DIExpression()), !dbg !2941
  %0 = bitcast %struct.lru_pull_tail_return* %it_info to i8*, !dbg !2942
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18, !dbg !2942
  call void @llvm.dbg.declare(metadata %struct.lru_pull_tail_return* %it_info, metadata !2914, metadata !DIExpression()), !dbg !2943
  %it = getelementptr inbounds %struct.lru_pull_tail_return, %struct.lru_pull_tail_return* %it_info, i64 0, i32 0, !dbg !2944
  store %struct._stritem* null, %struct._stritem** %it, align 8, !dbg !2945, !tbaa !2946
  %call = call i32 @lru_pull_tail(i32 noundef %clsid, i32 noundef 128, i64 noundef 0, i8 noundef zeroext 4, i32 noundef 0, %struct.lru_pull_tail_return* noundef nonnull %it_info) #17, !dbg !2948
  %1 = load %struct._stritem*, %struct._stritem** %it, align 8, !dbg !2949, !tbaa !2946
  %cmp = icmp eq %struct._stritem* %1, null, !dbg !2951
  br i1 %cmp, label %if.then, label %if.end, !dbg !2952

if.then:                                          ; preds = %entry
  %gcov_ctr243 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 1), align 8, !dbg !2953
  %2 = add i64 %gcov_ctr243, 1, !dbg !2953
  store i64 %2, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 1), align 8, !dbg !2953
  br label %cleanup, !dbg !2955

if.end:                                           ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 0), align 16, !dbg !2956
  %3 = add i64 %gcov_ctr, 1, !dbg !2956
  store i64 %3, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 0), align 16, !dbg !2956
  %4 = bitcast %struct._obj_io* %io to i8*, !dbg !2956
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #18, !dbg !2956
  call void @llvm.dbg.declare(metadata %struct._obj_io* %io, metadata !2919, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata %struct._stritem* %1, metadata !2920, metadata !DIExpression()), !dbg !2941
  %nkey = getelementptr inbounds %struct._stritem, %struct._stritem* %1, i64 0, i32 9, !dbg !2958
  %5 = load i8, i8* %nkey, align 1, !dbg !2958, !tbaa !760
  %conv = zext i8 %5 to i64, !dbg !2958
  %add4 = add nuw nsw i64 %conv, 49, !dbg !2958
  %nbytes = getelementptr inbounds %struct._stritem, %struct._stritem* %1, i64 0, i32 5, !dbg !2958
  %6 = load i32, i32* %nbytes, align 8, !dbg !2958, !tbaa !803
  %conv5 = sext i32 %6 to i64, !dbg !2958
  %add6 = add nsw i64 %add4, %conv5, !dbg !2958
  %it_flags = getelementptr inbounds %struct._stritem, %struct._stritem* %1, i64 0, i32 7, !dbg !2958
  %7 = load i16, i16* %it_flags, align 2, !dbg !2958, !tbaa !763
  %conv7 = zext i16 %7 to i32, !dbg !2958
  %and = lshr i32 %conv7, 6, !dbg !2958
  %8 = and i32 %and, 4, !dbg !2958
  %9 = zext i32 %8 to i64, !dbg !2958
  %add8 = add nsw i64 %add6, %9, !dbg !2958
  %and11 = shl nuw nsw i32 %conv7, 2, !dbg !2958
  %10 = and i32 %and11, 8, !dbg !2958
  %11 = zext i32 %10 to i64, !dbg !2958
  %add14 = add nsw i64 %add8, %11, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %add14, metadata !2921, metadata !DIExpression()), !dbg !2941
  %and17 = and i32 %conv7, 128, !dbg !2959
  %cmp18 = icmp eq i32 %and17, 0, !dbg !2960
  br i1 %cmp18, label %land.lhs.true, label %if.end240, !dbg !2961

land.lhs.true:                                    ; preds = %if.end
  %gcov_ctr244 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 2), align 16, !dbg !2962
  %12 = add i64 %gcov_ctr244, 1, !dbg !2962
  store i64 %12, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 2), align 16, !dbg !2962
  %cmp20 = icmp eq i32 %item_age, 0, !dbg !2963
  br i1 %cmp20, label %if.then24, label %lor.lhs.false, !dbg !2964

lor.lhs.false:                                    ; preds = %land.lhs.true
  %gcov_ctr245 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 3), align 8, !dbg !2965
  %13 = add i64 %gcov_ctr245, 1, !dbg !2965
  store i64 %13, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 3), align 8, !dbg !2965
  %14 = load volatile i32, i32* @current_time, align 4, !dbg !2965, !tbaa !803
  %time = getelementptr inbounds %struct._stritem, %struct._stritem* %1, i64 0, i32 3, !dbg !2966
  %15 = load i32, i32* %time, align 8, !dbg !2966, !tbaa !803
  %sub = sub i32 %14, %15, !dbg !2967
  %cmp22 = icmp ugt i32 %sub, %item_age, !dbg !2968
  br i1 %cmp22, label %if.then24, label %if.end240, !dbg !2969

if.then24:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %16 = and i16 %7, 256, !dbg !2970
  %tobool28.not = icmp eq i16 %16, 0, !dbg !2970
  br i1 %tobool28.not, label %if.else, label %if.then29, !dbg !2973

if.then29:                                        ; preds = %if.then24
  %gcov_ctr246 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 4), align 16, !dbg !2974
  %17 = add i64 %gcov_ctr246, 1, !dbg !2974
  store i64 %17, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 4), align 16, !dbg !2974
  %data = getelementptr inbounds %struct._stritem, %struct._stritem* %1, i64 0, i32 10, !dbg !2974
  %18 = bitcast [0 x %union.anon]* %data to i8*, !dbg !2974
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %conv, !dbg !2974
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !2974
  %19 = load i16, i16* %it_flags, align 2, !dbg !2974, !tbaa !763
  %20 = shl i16 %19, 2, !dbg !2974
  %21 = and i16 %20, 8, !dbg !2974
  %22 = zext i16 %21 to i64, !dbg !2974
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr32, i64 %22, !dbg !2974
  %23 = bitcast i8* %add.ptr38 to i32*, !dbg !2974
  %24 = load i32, i32* %23, align 4, !dbg !2974, !tbaa !803
  call void @llvm.dbg.value(metadata i32 %24, metadata !2922, metadata !DIExpression()), !dbg !2941
  br label %if.end39, !dbg !2974

if.else:                                          ; preds = %if.then24
  %gcov_ctr247 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 5), align 8, !dbg !2976
  %25 = add i64 %gcov_ctr247, 1, !dbg !2976
  store i64 %25, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 5), align 8, !dbg !2976
  call void @llvm.dbg.value(metadata i32 0, metadata !2922, metadata !DIExpression()), !dbg !2941
  %.pre = load i16, i16* %it_flags, align 2, !dbg !2978, !tbaa !763
  %.pre347 = load i8, i8* %nkey, align 1, !dbg !2979, !tbaa !760
  %.pre348 = shl i16 %.pre, 2, !dbg !2978
  %.pre349 = and i16 %.pre348, 8, !dbg !2978
  %.pre351 = zext i16 %.pre349 to i64, !dbg !2978
  %.pre353 = zext i8 %.pre347 to i64, !dbg !2980
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then29
  %conv48.pre-phi = phi i64 [ %.pre353, %if.else ], [ %conv, %if.then29 ], !dbg !2980
  %.pre-phi352 = phi i64 [ %.pre351, %if.else ], [ %22, %if.then29 ], !dbg !2978
  %flags.0 = phi i32 [ 0, %if.else ], [ %24, %if.then29 ], !dbg !2981
  call void @llvm.dbg.value(metadata i32 %flags.0, metadata !2922, metadata !DIExpression()), !dbg !2941
  %data40 = getelementptr inbounds %struct._stritem, %struct._stritem* %1, i64 0, i32 10, !dbg !2978
  %26 = bitcast [0 x %union.anon]* %data40 to i8*, !dbg !2978
  %add.ptr46 = getelementptr inbounds i8, i8* %26, i64 %.pre-phi352, !dbg !2978
  %exptime = getelementptr inbounds %struct._stritem, %struct._stritem* %1, i64 0, i32 4, !dbg !2982
  %27 = load i32, i32* %exptime, align 4, !dbg !2982, !tbaa !803
  %call49 = call %struct._stritem* @do_item_alloc(i8* noundef nonnull %add.ptr46, i64 noundef %conv48.pre-phi, i32 noundef %flags.0, i32 noundef %27, i32 noundef 12) #17, !dbg !2983
  call void @llvm.dbg.value(metadata %struct._stritem* %call49, metadata !2923, metadata !DIExpression()), !dbg !2984
  %cmp50.not = icmp eq %struct._stritem* %call49, null, !dbg !2985
  br i1 %cmp50.not, label %if.end240, label %if.then52, !dbg !2986

if.then52:                                        ; preds = %if.end39
  %28 = load i16, i16* %it_flags, align 2, !dbg !2987, !tbaa !763
  %29 = lshr i16 %28, 4, !dbg !2988
  %30 = and i16 %29, 2, !dbg !2988
  %31 = zext i16 %30 to i32, !dbg !2988
  call void @llvm.dbg.value(metadata i32 %31, metadata !2926, metadata !DIExpression()), !dbg !2989
  %32 = load i32, i32* %exptime, align 4, !dbg !2990, !tbaa !803
  %33 = load volatile i32, i32* @current_time, align 4, !dbg !2992, !tbaa !803
  %sub59 = sub i32 %32, %33, !dbg !2993
  %34 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 62), align 8, !dbg !2994, !tbaa !2995
  %cmp60 = icmp ult i32 %sub59, %34, !dbg !2996
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !2997

if.then62:                                        ; preds = %if.then52
  %gcov_ctr248 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 6), align 16, !dbg !2998
  %35 = add i64 %gcov_ctr248, 1, !dbg !2998
  store i64 %35, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 6), align 16, !dbg !2998
  call void @llvm.dbg.value(metadata i32 3, metadata !2926, metadata !DIExpression()), !dbg !2989
  br label %if.end63, !dbg !3000

if.end63:                                         ; preds = %if.then62, %if.then52
  %bucket.0 = phi i32 [ 3, %if.then62 ], [ %31, %if.then52 ], !dbg !2989
  call void @llvm.dbg.value(metadata i32 %bucket.0, metadata !2926, metadata !DIExpression()), !dbg !2989
  %it_flags64 = getelementptr inbounds %struct._stritem, %struct._stritem* %call49, i64 0, i32 7, !dbg !3001
  %36 = load i16, i16* %it_flags64, align 2, !dbg !3002, !tbaa !763
  %37 = or i16 %36, 128, !dbg !3002
  store i16 %37, i16* %it_flags64, align 2, !dbg !3002, !tbaa !763
  %conv67 = trunc i64 %add14 to i32, !dbg !3003
  %len = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 6, !dbg !3004
  store i32 %conv67, i32* %len, align 8, !dbg !3005, !tbaa !1246
  %mode = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 9, !dbg !3006
  store i32 1, i32* %mode, align 4, !dbg !3007, !tbaa !1249
  %refcount = getelementptr inbounds %struct._stritem, %struct._stritem* %1, i64 0, i32 6, !dbg !3008
  %38 = load i16, i16* %refcount, align 4, !dbg !3008, !tbaa !763
  %cmp69 = icmp ugt i16 %38, 1, !dbg !3008
  br i1 %cmp69, label %if.end73, label %if.else72, !dbg !3011

if.else72:                                        ; preds = %if.end63
  %gcov_ctr249 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 7), align 8, !dbg !3008
  %39 = add i64 %gcov_ctr249, 1, !dbg !3008
  store i64 %39, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 7), align 8, !dbg !3008
  call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef 511, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.storage_write, i64 0, i64 0)) #19, !dbg !3008
  unreachable, !dbg !3008

if.end73:                                         ; preds = %if.end63
  %call74 = call i32 @extstore_write_request(i8* noundef %storage, i32 noundef %bucket.0, i32 noundef %bucket.0, %struct._obj_io* noundef nonnull %io) #17, !dbg !3012
  %cmp75 = icmp eq i32 %call74, 0, !dbg !3013
  br i1 %cmp75, label %if.then77, label %if.else216, !dbg !3014

if.then77:                                        ; preds = %if.end73
  %buf = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 2, !dbg !3015
  %40 = bitcast i8** %buf to %struct._stritem**, !dbg !3015
  %41 = load %struct._stritem*, %struct._stritem** %40, align 8, !dbg !3015, !tbaa !1210
  call void @llvm.dbg.value(metadata %struct._stritem* %41, metadata !2929, metadata !DIExpression()), !dbg !3016
  %hv = getelementptr inbounds %struct.lru_pull_tail_return, %struct.lru_pull_tail_return* %it_info, i64 0, i32 1, !dbg !3017
  %42 = load i32, i32* %hv, align 8, !dbg !3017, !tbaa !3018
  %time78 = getelementptr inbounds %struct._stritem, %struct._stritem* %41, i64 0, i32 3, !dbg !3019
  store i32 %42, i32* %time78, align 8, !dbg !3020, !tbaa !803
  %43 = load i16, i16* %it_flags, align 2, !dbg !3021, !tbaa !763
  %conv80 = zext i16 %43 to i32, !dbg !3022
  %and81 = and i32 %conv80, 32, !dbg !3023
  %tobool82.not = icmp eq i32 %and81, 0, !dbg !3023
  br i1 %tobool82.not, label %if.else150, label %if.then83, !dbg !3024

if.then83:                                        ; preds = %if.then77
  %44 = load i8, i8* %nkey, align 1, !dbg !3025, !tbaa !760
  %45 = zext i8 %44 to i64
  %add.ptr88 = getelementptr inbounds i8, i8* %26, i64 %45, !dbg !3025
  %add.ptr89 = getelementptr inbounds i8, i8* %add.ptr88, i64 1, !dbg !3025
  %and92 = lshr i32 %conv80, 6, !dbg !3025
  %46 = and i32 %and92, 4, !dbg !3025
  %47 = zext i32 %46 to i64, !dbg !3025
  %add.ptr95 = getelementptr inbounds i8, i8* %add.ptr89, i64 %47, !dbg !3025
  %and98 = shl nuw nsw i32 %conv80, 2, !dbg !3025
  %48 = and i32 %and98, 8, !dbg !3025
  %49 = zext i32 %48 to i64, !dbg !3025
  %add.ptr101 = getelementptr inbounds i8, i8* %add.ptr95, i64 %49, !dbg !3025
  %50 = bitcast i8* %add.ptr101 to %struct._strchunk*, !dbg !3026
  call void @llvm.dbg.value(metadata %struct._strchunk* %50, metadata !2932, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 %conv67, metadata !2935, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 0, metadata !2936, metadata !DIExpression()), !dbg !3027
  %conv104 = zext i8 %44 to i32, !dbg !3028
  %add115 = or i32 %46, %48, !dbg !3028
  %add121 = or i32 %add115, 49, !dbg !3028
  %sub124 = add nuw nsw i32 %add121, %conv104, !dbg !3029
  call void @llvm.dbg.value(metadata i32 %sub124, metadata !2937, metadata !DIExpression()), !dbg !3027
  %add.ptr127 = getelementptr inbounds %struct._stritem, %struct._stritem* %41, i64 0, i32 5, !dbg !3030
  %51 = bitcast i32* %add.ptr127 to i8*, !dbg !3030
  %52 = bitcast i32* %nbytes to i8*, !dbg !3031
  %conv129 = zext i32 %sub124 to i64, !dbg !3032
  %sub130 = add nsw i64 %conv129, -32, !dbg !3033
  %call131 = call i8* @memcpy(i8* noundef nonnull %51, i8* noundef nonnull %52, i64 noundef %sub130) #17, !dbg !3034
  call void @llvm.dbg.value(metadata i32 %sub124, metadata !2936, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 %conv67, metadata !2935, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata %struct._strchunk* %50, metadata !2932, metadata !DIExpression()), !dbg !3027
  br label %land.rhs, !dbg !3035

land.rhs:                                         ; preds = %if.then83, %if.end138
  %copied.0346 = phi i32 [ %sub124, %if.then83 ], [ %add149, %if.end138 ]
  %remain.0345 = phi i32 [ %conv67, %if.then83 ], [ %sub147, %if.end138 ]
  %sch.0344 = phi %struct._strchunk* [ %50, %if.then83 ], [ %60, %if.end138 ]
  call void @llvm.dbg.value(metadata i32 %copied.0346, metadata !2936, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 %remain.0345, metadata !2935, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata %struct._strchunk* %sch.0344, metadata !2932, metadata !DIExpression()), !dbg !3027
  %gcov_ctr250 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 8), align 16, !dbg !3036
  %53 = add i64 %gcov_ctr250, 1, !dbg !3036
  store i64 %53, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 8), align 16, !dbg !3036
  %tobool133.not = icmp eq i32 %remain.0345, 0, !dbg !3035
  br i1 %tobool133.not, label %while.end, label %while.body, !dbg !3037

while.body:                                       ; preds = %land.rhs
  %used = getelementptr inbounds %struct._strchunk, %struct._strchunk* %sch.0344, i64 0, i32 4, !dbg !3038
  %54 = load i32, i32* %used, align 4, !dbg !3038, !tbaa !803
  %cmp134.not = icmp slt i32 %remain.0345, %54, !dbg !3038
  br i1 %cmp134.not, label %if.else137, label %if.end138, !dbg !3042

if.else137:                                       ; preds = %while.body
  %gcov_ctr251 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 9), align 8, !dbg !3038
  %55 = add i64 %gcov_ctr251, 1, !dbg !3038
  store i64 %55, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 9), align 8, !dbg !3038
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef 532, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.storage_write, i64 0, i64 0)) #19, !dbg !3038
  unreachable, !dbg !3038

if.end138:                                        ; preds = %while.body
  %gcov_ctr252 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 10), align 16, !dbg !3043
  %56 = add i64 %gcov_ctr252, 1, !dbg !3043
  store i64 %56, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 10), align 16, !dbg !3043
  %57 = load i8*, i8** %buf, align 8, !dbg !3043, !tbaa !1210
  %idx.ext140 = sext i32 %copied.0346 to i64, !dbg !3044
  %add.ptr141 = getelementptr inbounds i8, i8* %57, i64 %idx.ext140, !dbg !3044
  %arraydecay = getelementptr inbounds %struct._strchunk, %struct._strchunk* %sch.0344, i64 0, i32 10, i64 0, !dbg !3045
  %58 = load i32, i32* %used, align 4, !dbg !3046, !tbaa !803
  %conv144 = sext i32 %58 to i64, !dbg !3047
  %call145 = call i8* @memcpy(i8* noundef %add.ptr141, i8* noundef nonnull %arraydecay, i64 noundef %conv144) #17, !dbg !3048
  %59 = load i32, i32* %used, align 4, !dbg !3049, !tbaa !803
  %sub147 = sub nsw i32 %remain.0345, %59, !dbg !3050
  call void @llvm.dbg.value(metadata i32 %sub147, metadata !2935, metadata !DIExpression()), !dbg !3027
  %add149 = add nsw i32 %59, %copied.0346, !dbg !3051
  call void @llvm.dbg.value(metadata i32 %add149, metadata !2936, metadata !DIExpression()), !dbg !3027
  %next = getelementptr inbounds %struct._strchunk, %struct._strchunk* %sch.0344, i64 0, i32 0, !dbg !3052
  %60 = load %struct._strchunk*, %struct._strchunk** %next, align 8, !dbg !3052, !tbaa !1354
  call void @llvm.dbg.value(metadata %struct._strchunk* %60, metadata !2932, metadata !DIExpression()), !dbg !3027
  %tobool132.not = icmp eq %struct._strchunk* %60, null, !dbg !3053
  br i1 %tobool132.not, label %while.end, label %land.rhs, !dbg !3035, !llvm.loop !3054

while.end:                                        ; preds = %if.end138, %land.rhs
  %gcov_ctr253 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 11), align 8, !dbg !3056
  %61 = add i64 %gcov_ctr253, 1, !dbg !3056
  store i64 %61, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 11), align 8, !dbg !3056
  br label %if.end158, !dbg !3057

if.else150:                                       ; preds = %if.then77
  %gcov_ctr254 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 12), align 16, !dbg !3058
  %62 = add i64 %gcov_ctr254, 1, !dbg !3058
  store i64 %62, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 12), align 16, !dbg !3058
  %add.ptr152 = getelementptr inbounds %struct._stritem, %struct._stritem* %41, i64 0, i32 5, !dbg !3060
  %63 = bitcast i32* %add.ptr152 to i8*, !dbg !3060
  %64 = bitcast i32* %nbytes to i8*, !dbg !3061
  %65 = load i32, i32* %len, align 8, !dbg !3062, !tbaa !1246
  %conv155 = zext i32 %65 to i64, !dbg !3063
  %sub156 = add nsw i64 %conv155, -32, !dbg !3064
  %call157 = call i8* @memcpy(i8* noundef nonnull %63, i8* noundef nonnull %64, i64 noundef %sub156) #17, !dbg !3065
  br label %if.end158

if.end158:                                        ; preds = %if.else150, %while.end
  %it_flags159 = getelementptr inbounds %struct._stritem, %struct._stritem* %41, i64 0, i32 7, !dbg !3066
  %66 = load i16, i16* %it_flags159, align 2, !dbg !3067, !tbaa !763
  %67 = and i16 %66, -2, !dbg !3067
  store i16 %67, i16* %it_flags159, align 2, !dbg !3067, !tbaa !763
  %68 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** @crc32c, align 8, !dbg !3068, !tbaa !1354
  %69 = load i8*, i8** %buf, align 8, !dbg !3069, !tbaa !1210
  %add.ptr164 = getelementptr inbounds i8, i8* %69, i64 32, !dbg !3070
  %sub165 = add nsw i64 %add14, -32, !dbg !3071
  %call166 = call i32 %68(i32 noundef 0, i8* noundef nonnull %add.ptr164, i64 noundef %sub165) #17, !dbg !3068
  %exptime167 = getelementptr inbounds %struct._stritem, %struct._stritem* %41, i64 0, i32 4, !dbg !3072
  store i32 %call166, i32* %exptime167, align 4, !dbg !3073, !tbaa !803
  call void @extstore_write(i8* noundef %storage, %struct._obj_io* noundef nonnull %io) #17, !dbg !3074
  %data168 = getelementptr inbounds %struct._stritem, %struct._stritem* %call49, i64 0, i32 10, !dbg !3075
  %70 = bitcast [0 x %union.anon]* %data168 to i8*, !dbg !3075
  %nkey169 = getelementptr inbounds %struct._stritem, %struct._stritem* %call49, i64 0, i32 9, !dbg !3075
  %71 = load i8, i8* %nkey169, align 1, !dbg !3075, !tbaa !760
  %72 = zext i8 %71 to i64
  %add.ptr172 = getelementptr inbounds i8, i8* %70, i64 %72, !dbg !3075
  %add.ptr173 = getelementptr inbounds i8, i8* %add.ptr172, i64 1, !dbg !3075
  %73 = load i16, i16* %it_flags64, align 2, !dbg !3075, !tbaa !763
  %conv175 = zext i16 %73 to i32, !dbg !3075
  %and176 = lshr i32 %conv175, 6, !dbg !3075
  %74 = and i32 %and176, 4, !dbg !3075
  %75 = zext i32 %74 to i64, !dbg !3075
  %add.ptr179 = getelementptr inbounds i8, i8* %add.ptr173, i64 %75, !dbg !3075
  %and182 = shl nuw nsw i32 %conv175, 2, !dbg !3075
  %76 = and i32 %and182, 8, !dbg !3075
  %77 = zext i32 %76 to i64, !dbg !3075
  %add.ptr185 = getelementptr inbounds i8, i8* %add.ptr179, i64 %77, !dbg !3075
  call void @llvm.dbg.value(metadata i8* %add.ptr185, metadata !2938, metadata !DIExpression()), !dbg !3016
  %page_version = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 5, !dbg !3076
  %78 = load i32, i32* %page_version, align 4, !dbg !3076, !tbaa !1233
  %page_version186 = bitcast i8* %add.ptr185 to i32*, !dbg !3077
  store i32 %78, i32* %page_version186, align 4, !dbg !3078, !tbaa !772
  %page_id = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 8, !dbg !3079
  %79 = load i16, i16* %page_id, align 8, !dbg !3079, !tbaa !1237
  %page_id187 = getelementptr inbounds i8, i8* %add.ptr185, i64 8, !dbg !3080
  %80 = bitcast i8* %page_id187 to i16*, !dbg !3080
  store i16 %79, i16* %80, align 4, !dbg !3081, !tbaa !767
  %offset = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 7, !dbg !3082
  %81 = load i32, i32* %offset, align 4, !dbg !3082, !tbaa !1242
  %offset188 = getelementptr inbounds i8, i8* %add.ptr185, i64 4, !dbg !3083
  %82 = bitcast i8* %offset188 to i32*, !dbg !3083
  store i32 %81, i32* %82, align 4, !dbg !3084, !tbaa !1239
  %83 = load i32, i32* %nbytes, align 8, !dbg !3085, !tbaa !803
  %nbytes190 = getelementptr inbounds %struct._stritem, %struct._stritem* %call49, i64 0, i32 5, !dbg !3086
  store i32 %83, i32* %nbytes190, align 8, !dbg !3087, !tbaa !803
  %84 = load i32, i32* %hv, align 8, !dbg !3088, !tbaa !3018
  %call192 = call i32 @item_replace(%struct._stritem* noundef nonnull %1, %struct._stritem* noundef nonnull %call49, i32 noundef %84) #17, !dbg !3089
  %85 = load i16, i16* %it_flags64, align 2, !dbg !3090, !tbaa !763
  %86 = and i16 %85, 2, !dbg !3090
  %tobool196.not = icmp eq i16 %86, 0, !dbg !3090
  br i1 %tobool196.not, label %if.end208, label %if.then197, !dbg !3093

if.then197:                                       ; preds = %if.end158
  %87 = load i16, i16* %it_flags, align 2, !dbg !3094, !tbaa !763
  %88 = and i16 %87, 2, !dbg !3094
  %tobool201.not = icmp eq i16 %88, 0, !dbg !3094
  br i1 %tobool201.not, label %cond.false, label %cond.true, !dbg !3094

cond.true:                                        ; preds = %if.then197
  %gcov_ctr255 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 13), align 8, !dbg !3094
  %89 = add i64 %gcov_ctr255, 1, !dbg !3094
  store i64 %89, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 13), align 8, !dbg !3094
  %cas = getelementptr inbounds [0 x %union.anon], [0 x %union.anon]* %data40, i64 0, i64 0, i32 0, !dbg !3094
  %90 = load i64, i64* %cas, align 8, !dbg !3094, !tbaa !760
  br label %cond.end, !dbg !3094

cond.false:                                       ; preds = %if.then197
  %gcov_ctr256 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 14), align 16, !dbg !3094
  %91 = add i64 %gcov_ctr256, 1, !dbg !3094
  store i64 %91, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 14), align 16, !dbg !3094
  br label %cond.end, !dbg !3094

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond204 = phi i64 [ %90, %cond.true ], [ 0, %cond.false ], !dbg !3094
  %cas207 = getelementptr inbounds [0 x %union.anon], [0 x %union.anon]* %data168, i64 0, i64 0, i32 0, !dbg !3094
  store i64 %cond204, i64* %cas207, align 8, !dbg !3094, !tbaa !760
  br label %if.end208, !dbg !3094

if.end208:                                        ; preds = %cond.end, %if.end158
  call void @do_item_remove(%struct._stritem* noundef nonnull %call49) #17, !dbg !3096
  call void @llvm.dbg.value(metadata i32 1, metadata !2913, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata %struct._logger* null, metadata !2939, metadata !DIExpression()), !dbg !3097
  %92 = load i32, i32* @logger_key, align 4, !dbg !3098, !tbaa !803
  %call209 = call i8* @pthread_getspecific(i32 noundef %92) #17, !dbg !3098
  call void @llvm.dbg.value(metadata i8* %call209, metadata !2939, metadata !DIExpression()), !dbg !3097
  %eflags = getelementptr inbounds i8, i8* %call209, i64 84, !dbg !3100
  %93 = bitcast i8* %eflags to i16*, !dbg !3100
  %94 = load i16, i16* %93, align 4, !dbg !3100, !tbaa !2084
  %95 = and i16 %94, 64, !dbg !3100
  %tobool212.not = icmp eq i16 %95, 0, !dbg !3100
  br i1 %tobool212.not, label %if.end240, label %if.then213, !dbg !3102

if.then213:                                       ; preds = %if.end208
  %96 = bitcast i8* %call209 to %struct._logger*, !dbg !3098
  call void @llvm.dbg.value(metadata %struct._logger* %96, metadata !2939, metadata !DIExpression()), !dbg !3097
  %gcov_ctr257 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 15), align 8, !dbg !3100
  %97 = add i64 %gcov_ctr257, 1, !dbg !3100
  store i64 %97, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 15), align 8, !dbg !3100
  %98 = bitcast %struct._stritem* %1 to i8*, !dbg !3100
  %call214 = call i32 (%struct._logger*, i32, i8*, ...) @logger_log(%struct._logger* noundef %96, i32 noundef 8, i8* noundef nonnull %98, i32 noundef %bucket.0) #17, !dbg !3100
  br label %if.end240, !dbg !3100

if.else216:                                       ; preds = %if.end73
  %gcov_ctr258 = load i64, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 16), align 16, !dbg !3103
  %99 = add i64 %gcov_ctr258, 1, !dbg !3103
  store i64 %99, i64* getelementptr inbounds ([17 x i64], [17 x i64]* @__llvm_gcov_ctr.128, i64 0, i64 16), align 16, !dbg !3103
  %100 = bitcast %struct._stritem* %call49 to i8*, !dbg !3103
  %nkey217 = getelementptr inbounds %struct._stritem, %struct._stritem* %call49, i64 0, i32 9, !dbg !3105
  %101 = load i8, i8* %nkey217, align 1, !dbg !3105, !tbaa !760
  %conv218 = zext i8 %101 to i64, !dbg !3105
  %add220 = add nuw nsw i64 %conv218, 49, !dbg !3105
  %nbytes221 = getelementptr inbounds %struct._stritem, %struct._stritem* %call49, i64 0, i32 5, !dbg !3105
  %102 = load i32, i32* %nbytes221, align 8, !dbg !3105, !tbaa !803
  %conv222 = sext i32 %102 to i64, !dbg !3105
  %add223 = add nsw i64 %add220, %conv222, !dbg !3105
  %103 = load i16, i16* %it_flags64, align 2, !dbg !3105, !tbaa !763
  %conv225 = zext i16 %103 to i32, !dbg !3105
  %and226 = lshr i32 %conv225, 6, !dbg !3105
  %104 = and i32 %and226, 4, !dbg !3105
  %105 = zext i32 %104 to i64, !dbg !3105
  %add229 = add nsw i64 %add223, %105, !dbg !3105
  %and232 = shl nuw nsw i32 %conv225, 2, !dbg !3105
  %106 = and i32 %and232, 8, !dbg !3105
  %107 = zext i32 %106 to i64, !dbg !3105
  %add235 = add nsw i64 %add229, %107, !dbg !3105
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %call49, i64 0, i32 8, !dbg !3106
  %108 = load i8, i8* %slabs_clsid, align 8, !dbg !3106, !tbaa !760
  %109 = and i8 %108, 63, !dbg !3106
  %and237 = zext i8 %109 to i32, !dbg !3106
  call void @slabs_free(i8* noundef nonnull %100, i64 noundef %add235, i32 noundef %and237) #17, !dbg !3107
  br label %if.end240

if.end240:                                        ; preds = %if.end39, %if.end208, %if.then213, %if.else216, %lor.lhs.false, %if.end
  %did_moves.2 = phi i32 [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %if.end39 ], [ 0, %if.else216 ], [ 1, %if.then213 ], [ 1, %if.end208 ], !dbg !2941
  call void @llvm.dbg.value(metadata i32 %did_moves.2, metadata !2913, metadata !DIExpression()), !dbg !2941
  call void @do_item_remove(%struct._stritem* noundef nonnull %1) #17, !dbg !3108
  %hv241 = getelementptr inbounds %struct.lru_pull_tail_return, %struct.lru_pull_tail_return* %it_info, i64 0, i32 1, !dbg !3109
  %110 = load i32, i32* %hv241, align 8, !dbg !3109, !tbaa !3018
  call void @item_unlock(i32 noundef %110) #17, !dbg !3110
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #18, !dbg !3111
  br label %cleanup

cleanup:                                          ; preds = %if.end240, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %did_moves.2, %if.end240 ], !dbg !2941
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18, !dbg !3111
  ret i32 %retval.0, !dbg !3111
}

declare !dbg !3112 dso_local i32 @usleep(i32 noundef) local_unnamed_addr #3

declare !dbg !3116 dso_local i32 @lru_pull_tail(i32 noundef, i32 noundef, i64 noundef, i8 noundef zeroext, i32 noundef, %struct.lru_pull_tail_return* noundef) local_unnamed_addr #3

declare !dbg !3123 dso_local %struct._stritem* @do_item_alloc(i8* noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !3126 dso_local i32 @extstore_write_request(i8* noundef, i32 noundef, i32 noundef, %struct._obj_io* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3129 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !3133 dso_local void @extstore_write(i8* noundef, %struct._obj_io* noundef) local_unnamed_addr #3

declare !dbg !3136 dso_local void @do_item_remove(%struct._stritem* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3137 dso_local i8* @pthread_getspecific(i32 noundef) local_unnamed_addr #5

declare !dbg !3141 dso_local i32 @logger_log(%struct._logger* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare !dbg !3145 dso_local void @item_unlock(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @_storage_compact_cb(i8* nocapture noundef readnone %e, %struct._obj_io* nocapture noundef readonly %io, i32 noundef %ret) #0 !dbg !3148 {
entry:
  call void @llvm.dbg.value(metadata i8* %e, metadata !3150, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata %struct._obj_io* %io, metadata !3151, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i32 %ret, metadata !3152, metadata !DIExpression()), !dbg !3154
  %0 = bitcast %struct._obj_io* %io to %struct.storage_compact_wrap**, !dbg !3155
  %1 = load %struct.storage_compact_wrap*, %struct.storage_compact_wrap** %0, align 8, !dbg !3155, !tbaa !1229
  call void @llvm.dbg.value(metadata %struct.storage_compact_wrap* %1, metadata !3153, metadata !DIExpression()), !dbg !3154
  %submitted = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %1, i64 0, i32 3, !dbg !3156
  %2 = load i8, i8* %submitted, align 1, !dbg !3156, !tbaa !2045, !range !1086
  %tobool.not = icmp eq i8 %2, 0, !dbg !3156
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !3159

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.129, i64 0, i64 0), align 16, !dbg !3159
  %3 = add i64 %gcov_ctr, 1, !dbg !3159
  store i64 %3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.129, i64 0, i64 0), align 16, !dbg !3159
  %lock = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %1, i64 0, i32 1, !dbg !3160
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %lock) #17, !dbg !3161
  %cmp2 = icmp slt i32 %ret, 1, !dbg !3162
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !3164

if.else:                                          ; preds = %entry
  %gcov_ctr8 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.129, i64 0, i64 1), align 8, !dbg !3156
  %4 = add i64 %gcov_ctr8, 1, !dbg !3156
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.129, i64 0, i64 1), align 8, !dbg !3156
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef 874, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__._storage_compact_cb, i64 0, i64 0)) #19, !dbg !3156
  unreachable, !dbg !3156

if.then4:                                         ; preds = %if.then
  %gcov_ctr9 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.129, i64 0, i64 2), align 16, !dbg !3165
  %5 = add i64 %gcov_ctr9, 1, !dbg !3165
  store i64 %5, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.129, i64 0, i64 2), align 16, !dbg !3165
  %miss = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %1, i64 0, i32 4, !dbg !3167
  store i8 1, i8* %miss, align 2, !dbg !3168, !tbaa !2111
  br label %if.end5, !dbg !3169

if.end5:                                          ; preds = %if.then4, %if.then
  %done = getelementptr inbounds %struct.storage_compact_wrap, %struct.storage_compact_wrap* %1, i64 0, i32 2, !dbg !3170
  store i8 1, i8* %done, align 8, !dbg !3171, !tbaa !2041
  %call7 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %lock) #17, !dbg !3172
  ret void, !dbg !3173
}

declare !dbg !3174 dso_local void @extstore_run_maint(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @storage_compact_check(i8* noundef %storage, %struct._logger* noundef %l, i32* nocapture noundef writeonly %page_id, i64* nocapture noundef writeonly %page_version, i64* nocapture noundef writeonly %page_size, i8* nocapture noundef writeonly %drop_unread) unnamed_addr #0 !dbg !3175 {
entry:
  %st = alloca %struct.extstore_stats, align 8
  call void @llvm.dbg.value(metadata i8* %storage, metadata !3180, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata %struct._logger* %l, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32* %page_id, metadata !3182, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* %page_version, metadata !3183, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* %page_size, metadata !3184, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8* %drop_unread, metadata !3185, metadata !DIExpression()), !dbg !3196
  %0 = bitcast %struct.extstore_stats* %st to i8*, !dbg !3197
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #18, !dbg !3197
  call void @llvm.dbg.declare(metadata %struct.extstore_stats* %st, metadata !3186, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 -1, metadata !3190, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 -1, metadata !3191, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 0, metadata !3192, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 0, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @extstore_get_stats(i8* noundef %storage, %struct.extstore_stats* noundef nonnull %st) #17, !dbg !3199
  %pages_used = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 6, !dbg !3200
  %1 = load i64, i64* %pages_used, align 8, !dbg !3200, !tbaa !971
  %cmp = icmp eq i64 %1, 0, !dbg !3202
  br i1 %cmp, label %if.then, label %if.end, !dbg !3203

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 0), align 16, !dbg !3204
  %2 = add i64 %gcov_ctr, 1, !dbg !3204
  store i64 %2, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 0), align 16, !dbg !3204
  br label %cleanup, !dbg !3204

if.end:                                           ; preds = %entry
  %pages_free = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 5, !dbg !3205
  %3 = load i64, i64* %pages_free, align 8, !dbg !3205, !tbaa !969
  %4 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 65), align 4, !dbg !3207, !tbaa !2813
  %conv = zext i32 %4 to i64, !dbg !3208
  %cmp1 = icmp ugt i64 %3, %conv, !dbg !3209
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !3210

if.then3:                                         ; preds = %if.end
  %gcov_ctr91 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 1), align 8, !dbg !3211
  %5 = add i64 %gcov_ctr91, 1, !dbg !3211
  store i64 %5, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 1), align 8, !dbg !3211
  br label %cleanup, !dbg !3211

if.end4:                                          ; preds = %if.end
  store i8 0, i8* %drop_unread, align 1, !dbg !3212, !tbaa !1819
  %conv6 = uitofp i64 %3 to double, !dbg !3213
  %page_count = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 1, !dbg !3214
  %6 = load i64, i64* %page_count, align 8, !dbg !3214, !tbaa !894
  %conv7 = uitofp i64 %6 to double, !dbg !3215
  %div = fdiv double %conv6, %conv7, !dbg !3216
  %sub = fsub double 1.000000e+00, %div, !dbg !3217
  call void @llvm.dbg.value(metadata double %sub, metadata !3188, metadata !DIExpression()), !dbg !3196
  %7 = load double, double* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 68), align 8, !dbg !3218, !tbaa !3219
  %mul = fmul double %7, %sub, !dbg !3220
  call void @llvm.dbg.value(metadata double %mul, metadata !3188, metadata !DIExpression()), !dbg !3196
  %page_size8 = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 4, !dbg !3221
  %8 = load i64, i64* %page_size8, align 8, !dbg !3221, !tbaa !991
  %conv9 = uitofp i64 %8 to double, !dbg !3222
  %mul10 = fmul double %mul, %conv9, !dbg !3223
  %conv11 = fptoui double %mul10 to i64, !dbg !3222
  call void @llvm.dbg.value(metadata i64 %conv11, metadata !3189, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata %struct._logger* %l, metadata !3194, metadata !DIExpression()), !dbg !3224
  %cmp12 = icmp eq %struct._logger* %l, null, !dbg !3225
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !3227

if.then14:                                        ; preds = %if.end4
  %gcov_ctr92 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 2), align 16, !dbg !3225
  %9 = add i64 %gcov_ctr92, 1, !dbg !3225
  store i64 %9, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 2), align 16, !dbg !3225
  %10 = load i32, i32* @logger_key, align 4, !dbg !3225, !tbaa !803
  %call = call i8* @pthread_getspecific(i32 noundef %10) #17, !dbg !3225
  %11 = bitcast i8* %call to %struct._logger*, !dbg !3225
  call void @llvm.dbg.value(metadata %struct._logger* %11, metadata !3194, metadata !DIExpression()), !dbg !3224
  br label %if.end15, !dbg !3225

if.end15:                                         ; preds = %if.then14, %if.end4
  %myl.0 = phi %struct._logger* [ %11, %if.then14 ], [ %l, %if.end4 ], !dbg !3224
  call void @llvm.dbg.value(metadata %struct._logger* %myl.0, metadata !3194, metadata !DIExpression()), !dbg !3224
  %eflags = getelementptr inbounds %struct._logger, %struct._logger* %myl.0, i64 0, i32 8, !dbg !3228
  %12 = load i16, i16* %eflags, align 4, !dbg !3228, !tbaa !2084
  %13 = and i16 %12, 2, !dbg !3228
  %tobool.not = icmp eq i16 %13, 0, !dbg !3228
  br i1 %tobool.not, label %if.end19, label %if.then17, !dbg !3227

if.then17:                                        ; preds = %if.end15
  %gcov_ctr93 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 3), align 8, !dbg !3228
  %14 = add i64 %gcov_ctr93, 1, !dbg !3228
  store i64 %14, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 3), align 8, !dbg !3228
  %call18 = call i32 (%struct._logger*, i32, i8*, ...) @logger_log(%struct._logger* noundef nonnull %myl.0, i32 noundef 14, i8* noundef null, double noundef %mul, i64 noundef %conv11) #17, !dbg !3228
  br label %if.end19, !dbg !3228

if.end19:                                         ; preds = %if.then17, %if.end15
  %15 = load i64, i64* %page_count, align 8, !dbg !3230, !tbaa !894
  %call21 = call noalias i8* @calloc(i64 noundef %15, i64 noundef 24) #17, !dbg !3231
  %page_data = getelementptr inbounds %struct.extstore_stats, %struct.extstore_stats* %st, i64 0, i32 17, !dbg !3232
  %16 = bitcast %struct.extstore_page_data** %page_data to i8**, !dbg !3233
  store i8* %call21, i8** %16, align 8, !dbg !3233, !tbaa !899
  call void @extstore_get_page_data(i8* noundef %storage, %struct.extstore_stats* noundef nonnull %st) #17, !dbg !3234
  call void @llvm.dbg.value(metadata i32 0, metadata !3187, metadata !DIExpression()), !dbg !3196
  %17 = load i64, i64* %page_count, align 8, !tbaa !894
  call void @llvm.dbg.value(metadata i32 0, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 0, metadata !3192, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 -1, metadata !3191, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 -1, metadata !3190, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 0, metadata !3187, metadata !DIExpression()), !dbg !3196
  %cmp24136.not = icmp eq i64 %17, 0, !dbg !3235
  br i1 %cmp24136.not, label %if.end19.for.end_crit_edge, label %for.body.lr.ph, !dbg !3238

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  %.pre = load i8*, i8** %16, align 8, !dbg !3239, !tbaa !899
  br label %for.end, !dbg !3238

for.body.lr.ph:                                   ; preds = %if.end19
  %18 = load %struct.extstore_page_data*, %struct.extstore_page_data** %page_data, align 8, !tbaa !899
  %19 = bitcast %struct.extstore_page_data* %18 to i8*, !dbg !3238
  br label %for.body, !dbg !3238

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %lowest_page.0148 = phi i32 [ 0, %for.body.lr.ph ], [ %lowest_page.2, %for.inc ]
  %low_page.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %low_page.3, %for.inc ]
  %lowest_version.0144 = phi i64 [ -1, %for.body.lr.ph ], [ %lowest_version.2, %for.inc ]
  %low_version.0142 = phi i64 [ -1, %for.body.lr.ph ], [ %low_version.3, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %lowest_page.0148, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %low_page.0146, metadata !3192, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %lowest_version.0144, metadata !3191, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %low_version.0142, metadata !3190, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3187, metadata !DIExpression()), !dbg !3196
  %version = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %18, i64 %indvars.iv, i32 0, !dbg !3240
  %20 = load i64, i64* %version, align 8, !dbg !3240, !tbaa !908
  %cmp27 = icmp eq i64 %20, 0, !dbg !3243
  br i1 %cmp27, label %for.inc, label %lor.lhs.false, !dbg !3244

lor.lhs.false:                                    ; preds = %for.body
  %gcov_ctr94 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 4), align 16, !dbg !3245
  %21 = add i64 %gcov_ctr94, 1, !dbg !3245
  store i64 %21, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 4), align 16, !dbg !3245
  %bucket = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %18, i64 %indvars.iv, i32 2, !dbg !3246
  %22 = load i32, i32* %bucket, align 8, !dbg !3246, !tbaa !913
  %cmp32 = icmp eq i32 %22, 3, !dbg !3247
  br i1 %cmp32, label %for.inc, label %if.end35, !dbg !3248

if.end35:                                         ; preds = %lor.lhs.false
  %23 = load i64, i64* %version, align 8, !dbg !3249, !tbaa !908
  %cmp40 = icmp ult i64 %23, %lowest_version.0144, !dbg !3251
  br i1 %cmp40, label %if.then42, label %if.end47, !dbg !3252

if.then42:                                        ; preds = %if.end35
  %gcov_ctr96 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 6), align 16, !dbg !3253
  %24 = add i64 %gcov_ctr96, 1, !dbg !3253
  store i64 %24, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 6), align 16, !dbg !3253
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3193, metadata !DIExpression()), !dbg !3196
  %25 = load i64, i64* %version, align 8, !dbg !3255, !tbaa !908
  call void @llvm.dbg.value(metadata i64 %25, metadata !3191, metadata !DIExpression()), !dbg !3196
  %26 = trunc i64 %indvars.iv to i32, !dbg !3256
  br label %if.end47, !dbg !3256

if.end47:                                         ; preds = %if.then42, %if.end35
  %27 = phi i64 [ %25, %if.then42 ], [ %23, %if.end35 ]
  %lowest_version.1 = phi i64 [ %25, %if.then42 ], [ %lowest_version.0144, %if.end35 ], !dbg !3196
  %lowest_page.1 = phi i32 [ %26, %if.then42 ], [ %lowest_page.0148, %if.end35 ], !dbg !3196
  call void @llvm.dbg.value(metadata i32 %lowest_page.1, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %lowest_version.1, metadata !3191, metadata !DIExpression()), !dbg !3196
  %bytes_used = getelementptr inbounds %struct.extstore_page_data, %struct.extstore_page_data* %18, i64 %indvars.iv, i32 1, !dbg !3257
  %28 = load i64, i64* %bytes_used, align 8, !dbg !3257, !tbaa !911
  %cmp51 = icmp ult i64 %28, %conv11, !dbg !3259
  br i1 %cmp51, label %if.then53, label %for.inc, !dbg !3260

if.then53:                                        ; preds = %if.end47
  %cmp58 = icmp ult i64 %27, %low_version.0142, !dbg !3261
  br i1 %cmp58, label %if.then60, label %if.end65, !dbg !3264

if.then60:                                        ; preds = %if.then53
  %gcov_ctr97 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 7), align 8, !dbg !3265
  %29 = add i64 %gcov_ctr97, 1, !dbg !3265
  store i64 %29, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 7), align 8, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3192, metadata !DIExpression()), !dbg !3196
  %30 = load i64, i64* %version, align 8, !dbg !3267, !tbaa !908
  call void @llvm.dbg.value(metadata i64 %30, metadata !3190, metadata !DIExpression()), !dbg !3196
  %31 = trunc i64 %indvars.iv to i32, !dbg !3268
  br label %if.end65, !dbg !3268

if.end65:                                         ; preds = %if.then60, %if.then53
  %low_version.1 = phi i64 [ %30, %if.then60 ], [ %low_version.0142, %if.then53 ], !dbg !3196
  %low_page.1 = phi i32 [ %31, %if.then60 ], [ %low_page.0146, %if.then53 ], !dbg !3196
  call void @llvm.dbg.value(metadata i32 %low_page.1, metadata !3192, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %low_version.1, metadata !3190, metadata !DIExpression()), !dbg !3196
  %gcov_ctr98 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 8), align 16, !dbg !3269
  %32 = add i64 %gcov_ctr98, 1, !dbg !3269
  store i64 %32, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 8), align 16, !dbg !3269
  br label %for.inc, !dbg !3269

for.inc:                                          ; preds = %if.end47, %if.end65, %for.body, %lor.lhs.false
  %.sink = phi i64* [ getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 5), %lor.lhs.false ], [ getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 5), %for.body ], [ getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 9), %if.end65 ], [ getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 9), %if.end47 ]
  %low_version.3 = phi i64 [ %low_version.0142, %lor.lhs.false ], [ %low_version.0142, %for.body ], [ %low_version.1, %if.end65 ], [ %low_version.0142, %if.end47 ], !dbg !3196
  %lowest_version.2 = phi i64 [ %lowest_version.0144, %lor.lhs.false ], [ %lowest_version.0144, %for.body ], [ %lowest_version.1, %if.end65 ], [ %lowest_version.1, %if.end47 ], !dbg !3196
  %low_page.3 = phi i32 [ %low_page.0146, %lor.lhs.false ], [ %low_page.0146, %for.body ], [ %low_page.1, %if.end65 ], [ %low_page.0146, %if.end47 ], !dbg !3196
  %lowest_page.2 = phi i32 [ %lowest_page.0148, %lor.lhs.false ], [ %lowest_page.0148, %for.body ], [ %lowest_page.1, %if.end65 ], [ %lowest_page.1, %if.end47 ], !dbg !3196
  %gcov_ctr99 = load i64, i64* %.sink, align 8, !dbg !3270
  %33 = add i64 %gcov_ctr99, 1, !dbg !3270
  store i64 %33, i64* %.sink, align 8, !dbg !3270
  call void @llvm.dbg.value(metadata i32 %lowest_page.2, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %low_page.3, metadata !3192, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %lowest_version.2, metadata !3191, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %low_version.3, metadata !3190, metadata !DIExpression()), !dbg !3196
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3187, metadata !DIExpression()), !dbg !3196
  %exitcond.not = icmp eq i64 %indvars.iv.next, %17, !dbg !3235
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !3238, !llvm.loop !3272

for.end:                                          ; preds = %for.inc, %if.end19.for.end_crit_edge
  %34 = phi i8* [ %.pre, %if.end19.for.end_crit_edge ], [ %19, %for.inc ], !dbg !3239
  %low_version.0.lcssa = phi i64 [ -1, %if.end19.for.end_crit_edge ], [ %low_version.3, %for.inc ], !dbg !3274
  %lowest_version.0.lcssa = phi i64 [ -1, %if.end19.for.end_crit_edge ], [ %lowest_version.2, %for.inc ], !dbg !3275
  %low_page.0.lcssa = phi i32 [ 0, %if.end19.for.end_crit_edge ], [ %low_page.3, %for.inc ], !dbg !3276
  %lowest_page.0.lcssa = phi i32 [ 0, %if.end19.for.end_crit_edge ], [ %lowest_page.2, %for.inc ], !dbg !3277
  %35 = load i64, i64* %page_size8, align 8, !dbg !3278, !tbaa !991
  store i64 %35, i64* %page_size, align 8, !dbg !3279, !tbaa !2009
  call void @free(i8* noundef %34) #17, !dbg !3280
  %cmp69.not = icmp eq i64 %low_version.0.lcssa, -1, !dbg !3281
  br i1 %cmp69.not, label %if.else, label %if.then71, !dbg !3283

if.then71:                                        ; preds = %for.end
  %gcov_ctr100 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 10), align 16, !dbg !3284
  %36 = add i64 %gcov_ctr100, 1, !dbg !3284
  store i64 %36, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 10), align 16, !dbg !3284
  store i32 %low_page.0.lcssa, i32* %page_id, align 4, !dbg !3286, !tbaa !803
  store i64 %low_version.0.lcssa, i64* %page_version, align 8, !dbg !3287, !tbaa !2009
  br label %cleanup, !dbg !3288

if.else:                                          ; preds = %for.end
  %cmp72.not = icmp eq i64 %lowest_version.0.lcssa, -1, !dbg !3289
  br i1 %cmp72.not, label %if.end83, label %land.lhs.true, !dbg !3291

land.lhs.true:                                    ; preds = %if.else
  %gcov_ctr101 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 11), align 8, !dbg !3292
  %37 = add i64 %gcov_ctr101, 1, !dbg !3292
  store i64 %37, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 11), align 8, !dbg !3292
  %38 = load i8, i8* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 70), align 8, !dbg !3292, !tbaa !2430, !range !1086
  %tobool74.not = icmp eq i8 %38, 0, !dbg !3292
  br i1 %tobool74.not, label %if.end83, label %land.lhs.true76, !dbg !3293

land.lhs.true76:                                  ; preds = %land.lhs.true
  %gcov_ctr102 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 12), align 16, !dbg !3294
  %39 = add i64 %gcov_ctr102, 1, !dbg !3294
  store i64 %39, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 12), align 16, !dbg !3294
  %40 = load i64, i64* %pages_free, align 8, !dbg !3294, !tbaa !969
  %41 = load i32, i32* getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 66), align 8, !dbg !3295, !tbaa !2823
  %conv78 = zext i32 %41 to i64, !dbg !3296
  %cmp79.not = icmp ugt i64 %40, %conv78, !dbg !3297
  br i1 %cmp79.not, label %if.end83, label %if.then81, !dbg !3298

if.then81:                                        ; preds = %land.lhs.true76
  %gcov_ctr103 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 13), align 8, !dbg !3299
  %42 = add i64 %gcov_ctr103, 1, !dbg !3299
  store i64 %42, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 13), align 8, !dbg !3299
  store i32 %lowest_page.0.lcssa, i32* %page_id, align 4, !dbg !3301, !tbaa !803
  store i64 %lowest_version.0.lcssa, i64* %page_version, align 8, !dbg !3302, !tbaa !2009
  store i8 1, i8* %drop_unread, align 1, !dbg !3303, !tbaa !1819
  br label %cleanup, !dbg !3304

if.end83:                                         ; preds = %if.else, %land.lhs.true, %land.lhs.true76
  %gcov_ctr104 = load i64, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 14), align 16, !dbg !3305
  %43 = add i64 %gcov_ctr104, 1, !dbg !3305
  store i64 %43, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @__llvm_gcov_ctr.130, i64 0, i64 14), align 16, !dbg !3305
  br label %cleanup, !dbg !3305

cleanup:                                          ; preds = %if.end83, %if.then81, %if.then71, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.then71 ], [ 1, %if.then81 ], [ 0, %if.end83 ], !dbg !3196
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #18, !dbg !3306
  ret i32 %retval.0, !dbg !3306
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @storage_compact_readback(i8* noundef %storage, %struct._logger* noundef %l, i1 noundef zeroext %drop_unread, i8* noundef %readback_buf, i32 noundef %page_id, i64 noundef %page_version, i64 noundef %read_size) unnamed_addr #0 !dbg !3307 {
entry:
  %io = alloca %struct._obj_io, align 8
  call void @llvm.dbg.value(metadata i8* %storage, metadata !3311, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata %struct._logger* %l, metadata !3312, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i1 %drop_unread, metadata !3313, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3338
  call void @llvm.dbg.value(metadata i8* %readback_buf, metadata !3314, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %page_id, metadata !3315, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %page_version, metadata !3316, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %read_size, metadata !3317, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 0, metadata !3318, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 0, metadata !3319, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 0, metadata !3320, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 0, metadata !3321, metadata !DIExpression()), !dbg !3338
  %cmp249.not = icmp eq i64 %read_size, 0, !dbg !3339
  br i1 %cmp249.not, label %while.end, label %while.body.lr.ph, !dbg !3340

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast %struct._obj_io* %io to i8*
  %len = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 6
  %mode = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 9
  %buf = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 2
  %page_version102 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 5
  %page_id104 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 8
  %offset106 = getelementptr inbounds %struct._obj_io, %struct._obj_io* %io, i64 0, i32 7
  br label %while.body, !dbg !3340

while.body:                                       ; preds = %while.body.lr.ph, %cleanup.cont
  %offset.0258 = phi i64 [ 0, %while.body.lr.ph ], [ %add118, %cleanup.cont ]
  %rescues.0255 = phi i32 [ 0, %while.body.lr.ph ], [ %rescues.3, %cleanup.cont ]
  %lost.0252 = phi i32 [ 0, %while.body.lr.ph ], [ %lost.3, %cleanup.cont ]
  %skipped.0250 = phi i32 [ 0, %while.body.lr.ph ], [ %skipped.3, %cleanup.cont ]
  call void @llvm.dbg.value(metadata i64 %offset.0258, metadata !3318, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %rescues.0255, metadata !3319, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %lost.0252, metadata !3320, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %skipped.0250, metadata !3321, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata %struct._stritem* null, metadata !3322, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata %struct.item_hdr* null, metadata !3324, metadata !DIExpression()), !dbg !3341
  %add.ptr = getelementptr inbounds i8, i8* %readback_buf, i64 %offset.0258, !dbg !3342
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3325, metadata !DIExpression()), !dbg !3341
  %1 = getelementptr inbounds i8, i8* %add.ptr, i64 41, !dbg !3343
  %2 = load i8, i8* %1, align 1, !dbg !3343, !tbaa !760
  %cmp1 = icmp eq i8 %2, 0, !dbg !3345
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3346

if.then:                                          ; preds = %while.body
  %gcov_ctr = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 0), align 16
  %3 = add i64 %gcov_ctr, 1
  store i64 %3, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 0), align 16
  br label %while.end, !dbg !3347

if.end:                                           ; preds = %while.body
  %conv4 = zext i8 %2 to i32, !dbg !3349
  %add5 = add nuw nsw i32 %conv4, 49, !dbg !3349
  %nbytes = getelementptr inbounds i8, i8* %add.ptr, i64 32, !dbg !3349
  %4 = bitcast i8* %nbytes to i32*, !dbg !3349
  %5 = load i32, i32* %4, align 8, !dbg !3349, !tbaa !803
  %add7 = add i32 %add5, %5, !dbg !3349
  %it_flags = getelementptr inbounds i8, i8* %add.ptr, i64 38, !dbg !3349
  %6 = bitcast i8* %it_flags to i16*, !dbg !3349
  %7 = load i16, i16* %6, align 2, !dbg !3349, !tbaa !763
  %conv8 = zext i16 %7 to i32, !dbg !3349
  %and = lshr i32 %conv8, 6, !dbg !3349
  %8 = and i32 %and, 4, !dbg !3349
  %add9 = add i32 %add7, %8, !dbg !3349
  %and12 = shl nuw nsw i32 %conv8, 2, !dbg !3349
  %9 = and i32 %and12, 8, !dbg !3349
  %add15 = add i32 %add9, %9, !dbg !3349
  call void @llvm.dbg.value(metadata i32 %add15, metadata !3326, metadata !DIExpression()), !dbg !3341
  %time = getelementptr inbounds i8, i8* %add.ptr, i64 24, !dbg !3350
  %10 = bitcast i8* %time to i32*, !dbg !3350
  %11 = load i32, i32* %10, align 8, !dbg !3350, !tbaa !803
  call void @llvm.dbg.value(metadata i32 %11, metadata !3327, metadata !DIExpression()), !dbg !3341
  call void @item_lock(i32 noundef %11) #17, !dbg !3351
  %data = getelementptr inbounds i8, i8* %add.ptr, i64 48, !dbg !3352
  %12 = load i16, i16* %6, align 2, !dbg !3352, !tbaa !763
  %13 = shl i16 %12, 2, !dbg !3352
  %14 = and i16 %13, 8, !dbg !3352
  %15 = zext i16 %14 to i64, !dbg !3352
  %add.ptr22 = getelementptr inbounds i8, i8* %data, i64 %15, !dbg !3352
  %16 = load i8, i8* %1, align 1, !dbg !3353, !tbaa !760
  %conv24 = zext i8 %16 to i64, !dbg !3354
  %call = call %struct._stritem* @assoc_find(i8* noundef nonnull %add.ptr22, i64 noundef %conv24, i32 noundef %11) #17, !dbg !3355
  call void @llvm.dbg.value(metadata %struct._stritem* %call, metadata !3322, metadata !DIExpression()), !dbg !3341
  %cmp25.not = icmp eq %struct._stritem* %call, null, !dbg !3356
  br i1 %cmp25.not, label %if.end116, label %if.then27, !dbg !3357

if.then27:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i8 0, metadata !3328, metadata !DIExpression()), !dbg !3358
  %refcount = getelementptr inbounds %struct._stritem, %struct._stritem* %call, i64 0, i32 6, !dbg !3359
  %17 = load i16, i16* %refcount, align 4, !dbg !3359, !tbaa !763
  %inc = add i16 %17, 1, !dbg !3359
  store i16 %inc, i16* %refcount, align 4, !dbg !3359, !tbaa !763
  %it_flags28 = getelementptr inbounds %struct._stritem, %struct._stritem* %call, i64 0, i32 7, !dbg !3360
  %18 = load i16, i16* %it_flags28, align 2, !dbg !3360, !tbaa !763
  %19 = and i16 %18, 128, !dbg !3362
  %tobool31.not = icmp eq i16 %19, 0, !dbg !3362
  br i1 %tobool31.not, label %if.end115, label %land.lhs.true, !dbg !3363

land.lhs.true:                                    ; preds = %if.then27
  %gcov_ctr144 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 1), align 8, !dbg !3364
  %20 = add i64 %gcov_ctr144, 1, !dbg !3364
  store i64 %20, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 1), align 8, !dbg !3364
  %call32 = call i32 @item_is_flushed(%struct._stritem* noundef nonnull %call) #17, !dbg !3365
  %tobool33.not = icmp eq i32 %call32, 0, !dbg !3365
  br i1 %tobool33.not, label %land.lhs.true34, label %if.end115, !dbg !3366

land.lhs.true34:                                  ; preds = %land.lhs.true
  %gcov_ctr145 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 2), align 16, !dbg !3367
  %21 = add i64 %gcov_ctr145, 1, !dbg !3367
  store i64 %21, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 2), align 16, !dbg !3367
  %exptime = getelementptr inbounds %struct._stritem, %struct._stritem* %call, i64 0, i32 4, !dbg !3368
  %22 = load i32, i32* %exptime, align 4, !dbg !3368, !tbaa !803
  %cmp35 = icmp eq i32 %22, 0, !dbg !3369
  br i1 %cmp35, label %if.then40, label %lor.lhs.false, !dbg !3370

lor.lhs.false:                                    ; preds = %land.lhs.true34
  %gcov_ctr146 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 3), align 8, !dbg !3371
  %23 = add i64 %gcov_ctr146, 1, !dbg !3371
  store i64 %23, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 3), align 8, !dbg !3371
  %24 = load i32, i32* %exptime, align 4, !dbg !3372, !tbaa !803
  %25 = load volatile i32, i32* @current_time, align 4, !dbg !3373, !tbaa !803
  %cmp38 = icmp ugt i32 %24, %25, !dbg !3374
  br i1 %cmp38, label %if.then40, label %if.end115, !dbg !3375

if.then40:                                        ; preds = %lor.lhs.false, %land.lhs.true34
  %data41 = getelementptr inbounds %struct._stritem, %struct._stritem* %call, i64 0, i32 10, !dbg !3376
  %26 = bitcast [0 x %union.anon]* %data41 to i8*, !dbg !3376
  %nkey42 = getelementptr inbounds %struct._stritem, %struct._stritem* %call, i64 0, i32 9, !dbg !3376
  %27 = load i8, i8* %nkey42, align 1, !dbg !3376, !tbaa !760
  %28 = zext i8 %27 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !3376
  %add.ptr45 = getelementptr inbounds i8, i8* %add.ptr44, i64 %28, !dbg !3376
  %29 = load i16, i16* %it_flags28, align 2, !dbg !3376, !tbaa !763
  %conv47 = zext i16 %29 to i32, !dbg !3376
  %and48 = lshr i32 %conv47, 6, !dbg !3376
  %30 = and i32 %and48, 4, !dbg !3376
  %31 = zext i32 %30 to i64, !dbg !3376
  %add.ptr51 = getelementptr inbounds i8, i8* %add.ptr45, i64 %31, !dbg !3376
  %and54 = shl nuw nsw i32 %conv47, 2, !dbg !3376
  %32 = and i32 %and54, 8, !dbg !3376
  %33 = zext i32 %32 to i64, !dbg !3376
  %add.ptr57 = getelementptr inbounds i8, i8* %add.ptr51, i64 %33, !dbg !3376
  call void @llvm.dbg.value(metadata i8* %add.ptr57, metadata !3324, metadata !DIExpression()), !dbg !3341
  %page_id58 = getelementptr inbounds i8, i8* %add.ptr57, i64 8, !dbg !3378
  %34 = bitcast i8* %page_id58 to i16*, !dbg !3378
  %35 = load i16, i16* %34, align 4, !dbg !3378, !tbaa !767
  %conv59 = zext i16 %35 to i32, !dbg !3380
  %cmp60 = icmp eq i32 %conv59, %page_id, !dbg !3381
  br i1 %cmp60, label %land.lhs.true62, label %if.end80.thread230, !dbg !3382

land.lhs.true62:                                  ; preds = %if.then40
  %gcov_ctr147 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 4), align 16, !dbg !3383
  %36 = add i64 %gcov_ctr147, 1, !dbg !3383
  store i64 %36, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 4), align 16, !dbg !3383
  %page_version63 = bitcast i8* %add.ptr57 to i32*, !dbg !3384
  %37 = load i32, i32* %page_version63, align 4, !dbg !3384, !tbaa !772
  %conv64 = zext i32 %37 to i64, !dbg !3383
  %cmp65 = icmp eq i64 %conv64, %page_version, !dbg !3385
  br i1 %cmp65, label %if.then67, label %if.end80.thread230, !dbg !3386

if.then67:                                        ; preds = %land.lhs.true62
  %call68 = call i32 @extstore_delete(i8* noundef %storage, i32 noundef %page_id, i64 noundef %page_version, i32 noundef 1, i32 noundef %add15) #17, !dbg !3387
  br i1 %drop_unread, label %land.lhs.true71, label %if.then82, !dbg !3389

land.lhs.true71:                                  ; preds = %if.then67
  %gcov_ctr148 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 5), align 8, !dbg !3391
  %38 = add i64 %gcov_ctr148, 1, !dbg !3391
  store i64 %38, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 5), align 8, !dbg !3391
  %slabs_clsid = getelementptr inbounds %struct._stritem, %struct._stritem* %call, i64 0, i32 8, !dbg !3391
  %39 = load i8, i8* %slabs_clsid, align 8, !dbg !3391, !tbaa !760
  %40 = and i8 %39, -64, !dbg !3391
  %cmp74 = icmp eq i8 %40, -128, !dbg !3392
  br i1 %cmp74, label %if.then76, label %if.then82, !dbg !3393

if.then76:                                        ; preds = %land.lhs.true71
  %gcov_ctr149 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 6), align 16, !dbg !3394
  %41 = add i64 %gcov_ctr149, 1, !dbg !3394
  store i64 %41, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 6), align 16, !dbg !3394
  call void @llvm.dbg.value(metadata i8 0, metadata !3328, metadata !DIExpression()), !dbg !3358
  %inc77 = add i32 %skipped.0250, 1, !dbg !3396
  call void @llvm.dbg.value(metadata i32 %inc77, metadata !3321, metadata !DIExpression()), !dbg !3338
  br label %if.end80.thread230, !dbg !3397

if.end80.thread230:                               ; preds = %if.then76, %land.lhs.true62, %if.then40
  %skipped.1.ph = phi i32 [ %skipped.0250, %if.then40 ], [ %skipped.0250, %land.lhs.true62 ], [ %inc77, %if.then76 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !3328, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 undef, metadata !3321, metadata !DIExpression()), !dbg !3338
  %gcov_ctr151233 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 8), align 16, !dbg !3398
  %42 = add i64 %gcov_ctr151233, 1, !dbg !3398
  store i64 %42, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 8), align 16, !dbg !3398
  call void @llvm.dbg.value(metadata i8* %add.ptr57, metadata !3324, metadata !DIExpression()), !dbg !3341
  br label %if.end115, !dbg !3399

if.then82:                                        ; preds = %land.lhs.true71, %if.then67
  call void @llvm.dbg.value(metadata i8 undef, metadata !3328, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 %skipped.0250, metadata !3321, metadata !DIExpression()), !dbg !3338
  %43 = load <2 x i64>, <2 x i64>* bitcast (i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 7) to <2 x i64>*), align 8, !dbg !3400
  %44 = add <2 x i64> %43, <i64 1, i64 1>, !dbg !3400
  store <2 x i64> %44, <2 x i64>* bitcast (i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 7) to <2 x i64>*), align 8, !dbg !3400
  call void @llvm.dbg.value(metadata i8* %add.ptr57, metadata !3324, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8 0, metadata !3331, metadata !DIExpression()), !dbg !3402
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #18, !dbg !3403
  call void @llvm.dbg.declare(metadata %struct._obj_io* %io, metadata !3335, metadata !DIExpression()), !dbg !3404
  store i32 %add15, i32* %len, align 8, !dbg !3405, !tbaa !1246
  store i32 1, i32* %mode, align 4, !dbg !3406, !tbaa !1249
  call void @llvm.dbg.value(metadata i32 10, metadata !3334, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i32 10, metadata !3334, metadata !DIExpression()), !dbg !3402
  %call85 = call i32 @extstore_write_request(i8* noundef %storage, i32 noundef 1, i32 noundef 1, %struct._obj_io* noundef nonnull %io) #17, !dbg !3407
  %cmp86 = icmp eq i32 %call85, 0, !dbg !3412
  br i1 %cmp86, label %if.then96, label %if.else92, !dbg !3413

if.else92:                                        ; preds = %if.then82
  %gcov_ctr152 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %45 = add i64 %gcov_ctr152, 1, !dbg !3414
  store i64 %45, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %call93 = call i32 @usleep(i32 noundef 1000) #17, !dbg !3414
  call void @llvm.dbg.value(metadata i32 9, metadata !3334, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i32 9, metadata !3334, metadata !DIExpression()), !dbg !3402
  %call85.1 = call i32 @extstore_write_request(i8* noundef %storage, i32 noundef 1, i32 noundef 1, %struct._obj_io* noundef nonnull %io) #17, !dbg !3407
  %cmp86.1 = icmp eq i32 %call85.1, 0, !dbg !3412
  br i1 %cmp86.1, label %if.then96, label %if.else92.1, !dbg !3413

if.else92.1:                                      ; preds = %if.else92
  %gcov_ctr152.1 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %46 = add i64 %gcov_ctr152.1, 1, !dbg !3414
  store i64 %46, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %call93.1 = call i32 @usleep(i32 noundef 1000) #17, !dbg !3414
  call void @llvm.dbg.value(metadata i32 8, metadata !3334, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i32 8, metadata !3334, metadata !DIExpression()), !dbg !3402
  %call85.2 = call i32 @extstore_write_request(i8* noundef %storage, i32 noundef 1, i32 noundef 1, %struct._obj_io* noundef nonnull %io) #17, !dbg !3407
  %cmp86.2 = icmp eq i32 %call85.2, 0, !dbg !3412
  br i1 %cmp86.2, label %if.then96, label %if.else92.2, !dbg !3413

if.else92.2:                                      ; preds = %if.else92.1
  %gcov_ctr152.2 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %47 = add i64 %gcov_ctr152.2, 1, !dbg !3414
  store i64 %47, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %call93.2 = call i32 @usleep(i32 noundef 1000) #17, !dbg !3414
  call void @llvm.dbg.value(metadata i32 7, metadata !3334, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i32 7, metadata !3334, metadata !DIExpression()), !dbg !3402
  %call85.3 = call i32 @extstore_write_request(i8* noundef %storage, i32 noundef 1, i32 noundef 1, %struct._obj_io* noundef nonnull %io) #17, !dbg !3407
  %cmp86.3 = icmp eq i32 %call85.3, 0, !dbg !3412
  br i1 %cmp86.3, label %if.then96, label %if.else92.3, !dbg !3413

if.else92.3:                                      ; preds = %if.else92.2
  %gcov_ctr152.3 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %48 = add i64 %gcov_ctr152.3, 1, !dbg !3414
  store i64 %48, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %call93.3 = call i32 @usleep(i32 noundef 1000) #17, !dbg !3414
  call void @llvm.dbg.value(metadata i32 6, metadata !3334, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i32 6, metadata !3334, metadata !DIExpression()), !dbg !3402
  %call85.4 = call i32 @extstore_write_request(i8* noundef %storage, i32 noundef 1, i32 noundef 1, %struct._obj_io* noundef nonnull %io) #17, !dbg !3407
  %cmp86.4 = icmp eq i32 %call85.4, 0, !dbg !3412
  br i1 %cmp86.4, label %if.then96, label %if.else92.4, !dbg !3413

if.else92.4:                                      ; preds = %if.else92.3
  %gcov_ctr152.4 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %49 = add i64 %gcov_ctr152.4, 1, !dbg !3414
  store i64 %49, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %call93.4 = call i32 @usleep(i32 noundef 1000) #17, !dbg !3414
  call void @llvm.dbg.value(metadata i32 5, metadata !3334, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i32 5, metadata !3334, metadata !DIExpression()), !dbg !3402
  %call85.5 = call i32 @extstore_write_request(i8* noundef %storage, i32 noundef 1, i32 noundef 1, %struct._obj_io* noundef nonnull %io) #17, !dbg !3407
  %cmp86.5 = icmp eq i32 %call85.5, 0, !dbg !3412
  br i1 %cmp86.5, label %if.then96, label %if.else92.5, !dbg !3413

if.else92.5:                                      ; preds = %if.else92.4
  %gcov_ctr152.5 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %50 = add i64 %gcov_ctr152.5, 1, !dbg !3414
  store i64 %50, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %call93.5 = call i32 @usleep(i32 noundef 1000) #17, !dbg !3414
  call void @llvm.dbg.value(metadata i32 4, metadata !3334, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i32 4, metadata !3334, metadata !DIExpression()), !dbg !3402
  %call85.6 = call i32 @extstore_write_request(i8* noundef %storage, i32 noundef 1, i32 noundef 1, %struct._obj_io* noundef nonnull %io) #17, !dbg !3407
  %cmp86.6 = icmp eq i32 %call85.6, 0, !dbg !3412
  br i1 %cmp86.6, label %if.then96, label %if.else92.6, !dbg !3413

if.else92.6:                                      ; preds = %if.else92.5
  %gcov_ctr152.6 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %51 = add i64 %gcov_ctr152.6, 1, !dbg !3414
  store i64 %51, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %call93.6 = call i32 @usleep(i32 noundef 1000) #17, !dbg !3414
  call void @llvm.dbg.value(metadata i32 3, metadata !3334, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i32 3, metadata !3334, metadata !DIExpression()), !dbg !3402
  %call85.7 = call i32 @extstore_write_request(i8* noundef %storage, i32 noundef 1, i32 noundef 1, %struct._obj_io* noundef nonnull %io) #17, !dbg !3407
  %cmp86.7 = icmp eq i32 %call85.7, 0, !dbg !3412
  br i1 %cmp86.7, label %if.then96, label %if.else92.7, !dbg !3413

if.else92.7:                                      ; preds = %if.else92.6
  %gcov_ctr152.7 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %52 = add i64 %gcov_ctr152.7, 1, !dbg !3414
  store i64 %52, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %call93.7 = call i32 @usleep(i32 noundef 1000) #17, !dbg !3414
  call void @llvm.dbg.value(metadata i32 2, metadata !3334, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i32 2, metadata !3334, metadata !DIExpression()), !dbg !3402
  %call85.8 = call i32 @extstore_write_request(i8* noundef %storage, i32 noundef 1, i32 noundef 1, %struct._obj_io* noundef nonnull %io) #17, !dbg !3407
  %cmp86.8 = icmp eq i32 %call85.8, 0, !dbg !3412
  br i1 %cmp86.8, label %if.then96, label %if.else92.8, !dbg !3413

if.else92.8:                                      ; preds = %if.else92.7
  %gcov_ctr152.8 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %53 = add i64 %gcov_ctr152.8, 1, !dbg !3414
  store i64 %53, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %call93.8 = call i32 @usleep(i32 noundef 1000) #17, !dbg !3414
  call void @llvm.dbg.value(metadata i32 1, metadata !3334, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i32 1, metadata !3334, metadata !DIExpression()), !dbg !3402
  %call85.9 = call i32 @extstore_write_request(i8* noundef %storage, i32 noundef 1, i32 noundef 1, %struct._obj_io* noundef nonnull %io) #17, !dbg !3407
  %cmp86.9 = icmp eq i32 %call85.9, 0, !dbg !3412
  br i1 %cmp86.9, label %if.then96, label %if.else92.9, !dbg !3413

if.else92.9:                                      ; preds = %if.else92.8
  %gcov_ctr152.9 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %54 = add i64 %gcov_ctr152.9, 1, !dbg !3414
  store i64 %54, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 9), align 8, !dbg !3414
  %call93.9 = call i32 @usleep(i32 noundef 1000) #17, !dbg !3414
  call void @llvm.dbg.value(metadata i32 0, metadata !3334, metadata !DIExpression()), !dbg !3402
  %gcov_ctr156 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 13), align 8, !dbg !3416
  %55 = add i64 %gcov_ctr156, 1, !dbg !3416
  store i64 %55, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 13), align 8, !dbg !3416
  %inc113 = add i32 %lost.0252, 1, !dbg !3416
  call void @llvm.dbg.value(metadata i32 %inc113, metadata !3320, metadata !DIExpression()), !dbg !3338
  br label %if.end114

if.then96:                                        ; preds = %if.else92.8, %if.else92.7, %if.else92.6, %if.else92.5, %if.else92.4, %if.else92.3, %if.else92.2, %if.else92.1, %if.else92, %if.then82
  %gcov_ctr153 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 10), align 16, !dbg !3419
  %56 = add i64 %gcov_ctr153, 1, !dbg !3419
  store i64 %56, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 10), align 16, !dbg !3419
  %57 = load i8*, i8** %buf, align 8, !dbg !3419, !tbaa !1210
  %58 = load i32, i32* %len, align 8, !dbg !3421, !tbaa !1246
  %conv90 = zext i32 %58 to i64, !dbg !3422
  %call91 = call i8* @memcpy(i8* noundef %57, i8* noundef nonnull %add.ptr, i64 noundef %conv90) #17, !dbg !3423
  call void @extstore_write(i8* noundef %storage, %struct._obj_io* noundef nonnull %io) #17, !dbg !3424
  call void @llvm.dbg.value(metadata i8 undef, metadata !3331, metadata !DIExpression()), !dbg !3402
  %refcount97 = getelementptr inbounds i8, i8* %add.ptr, i64 36, !dbg !3425
  %59 = bitcast i8* %refcount97 to i16*, !dbg !3425
  %60 = load i16, i16* %59, align 4, !dbg !3425, !tbaa !763
  %cmp99 = icmp eq i16 %60, 2, !dbg !3428
  br i1 %cmp99, label %if.then101, label %if.else109, !dbg !3429

if.then101:                                       ; preds = %if.then96
  %gcov_ctr154 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 11), align 8, !dbg !3430
  %61 = add i64 %gcov_ctr154, 1, !dbg !3430
  store i64 %61, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 11), align 8, !dbg !3430
  %62 = load i32, i32* %page_version102, align 4, !dbg !3430, !tbaa !1233
  store i32 %62, i32* %page_version63, align 4, !dbg !3432, !tbaa !772
  %63 = load i16, i16* %page_id104, align 8, !dbg !3433, !tbaa !1237
  store i16 %63, i16* %34, align 4, !dbg !3434, !tbaa !767
  %64 = load i32, i32* %offset106, align 4, !dbg !3435, !tbaa !1242
  %offset107 = getelementptr inbounds i8, i8* %add.ptr57, i64 4, !dbg !3436
  %65 = bitcast i8* %offset107 to i32*, !dbg !3436
  store i32 %64, i32* %65, align 4, !dbg !3437, !tbaa !1239
  %inc108 = add i32 %rescues.0255, 1, !dbg !3438
  call void @llvm.dbg.value(metadata i32 %inc108, metadata !3319, metadata !DIExpression()), !dbg !3338
  br label %if.end114, !dbg !3439

if.else109:                                       ; preds = %if.then96
  %gcov_ctr155 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 12), align 16, !dbg !3440
  %66 = add i64 %gcov_ctr155, 1, !dbg !3440
  store i64 %66, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 12), align 16, !dbg !3440
  %inc110 = add i32 %lost.0252, 1, !dbg !3440
  call void @llvm.dbg.value(metadata i32 %inc110, metadata !3320, metadata !DIExpression()), !dbg !3338
  br label %if.end114

if.end114:                                        ; preds = %if.then101, %if.else109, %if.else92.9
  %lost.1 = phi i32 [ %lost.0252, %if.then101 ], [ %inc110, %if.else109 ], [ %inc113, %if.else92.9 ], !dbg !3338
  %rescues.1 = phi i32 [ %inc108, %if.then101 ], [ %rescues.0255, %if.else109 ], [ %rescues.0255, %if.else92.9 ], !dbg !3338
  call void @llvm.dbg.value(metadata i32 %rescues.1, metadata !3319, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %lost.1, metadata !3320, metadata !DIExpression()), !dbg !3338
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #18, !dbg !3442
  br label %if.end115, !dbg !3443

if.end115:                                        ; preds = %if.then27, %lor.lhs.false, %land.lhs.true, %if.end80.thread230, %if.end114
  %skipped.2228 = phi i32 [ %skipped.0250, %if.end114 ], [ %skipped.1.ph, %if.end80.thread230 ], [ %skipped.0250, %land.lhs.true ], [ %skipped.0250, %lor.lhs.false ], [ %skipped.0250, %if.then27 ]
  %lost.2 = phi i32 [ %lost.1, %if.end114 ], [ %lost.0252, %if.end80.thread230 ], [ %lost.0252, %land.lhs.true ], [ %lost.0252, %lor.lhs.false ], [ %lost.0252, %if.then27 ], !dbg !3444
  %rescues.2 = phi i32 [ %rescues.1, %if.end114 ], [ %rescues.0255, %if.end80.thread230 ], [ %rescues.0255, %land.lhs.true ], [ %rescues.0255, %lor.lhs.false ], [ %rescues.0255, %if.then27 ], !dbg !3338
  call void @llvm.dbg.value(metadata i32 %rescues.2, metadata !3319, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %lost.2, metadata !3320, metadata !DIExpression()), !dbg !3338
  %gcov_ctr157 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 14), align 16, !dbg !3445
  %67 = add i64 %gcov_ctr157, 1, !dbg !3445
  store i64 %67, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 14), align 16, !dbg !3445
  call void @do_item_remove(%struct._stritem* noundef nonnull %call) #17, !dbg !3446
  br label %if.end116, !dbg !3447

if.end116:                                        ; preds = %if.end115, %if.end
  %skipped.3 = phi i32 [ %skipped.2228, %if.end115 ], [ %skipped.0250, %if.end ], !dbg !3448
  %lost.3 = phi i32 [ %lost.2, %if.end115 ], [ %lost.0252, %if.end ], !dbg !3444
  %rescues.3 = phi i32 [ %rescues.2, %if.end115 ], [ %rescues.0255, %if.end ], !dbg !3338
  call void @llvm.dbg.value(metadata i32 %rescues.3, metadata !3319, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %lost.3, metadata !3320, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %skipped.3, metadata !3321, metadata !DIExpression()), !dbg !3338
  call void @item_unlock(i32 noundef %11) #17, !dbg !3449
  %conv117 = zext i32 %add15 to i64, !dbg !3450
  %add118 = add i64 %offset.0258, %conv117, !dbg !3451
  call void @llvm.dbg.value(metadata i64 %add118, metadata !3318, metadata !DIExpression()), !dbg !3338
  %sub = sub i64 %read_size, %add118, !dbg !3452
  %cmp119 = icmp ult i64 %sub, 48, !dbg !3454
  br i1 %cmp119, label %if.then121, label %cleanup.cont, !dbg !3455

if.then121:                                       ; preds = %if.end116
  %gcov_ctr158 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 15), align 8
  %68 = add i64 %gcov_ctr158, 1
  store i64 %68, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 15), align 8
  br label %while.end, !dbg !3456

cleanup.cont:                                     ; preds = %if.end116
  %gcov_ctr159 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 16), align 16, !dbg !3457
  %69 = add i64 %gcov_ctr159, 1, !dbg !3457
  store i64 %69, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 16), align 16, !dbg !3457
  call void @llvm.dbg.value(metadata i64 %add118, metadata !3318, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %rescues.3, metadata !3319, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %lost.3, metadata !3320, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %skipped.3, metadata !3321, metadata !DIExpression()), !dbg !3338
  %gcov_ctr161 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 18), align 16, !dbg !3340
  %70 = add i64 %gcov_ctr161, 1, !dbg !3340
  store i64 %70, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 18), align 16, !dbg !3340
  %cmp = icmp ult i64 %add118, %read_size, !dbg !3339
  br i1 %cmp, label %while.body, label %while.end, !dbg !3340, !llvm.loop !3458

while.end:                                        ; preds = %cleanup.cont, %entry, %if.then121, %if.then
  %skipped.5 = phi i32 [ %skipped.3, %if.then121 ], [ %skipped.0250, %if.then ], [ 0, %entry ], [ %skipped.3, %cleanup.cont ], !dbg !3448
  %lost.5 = phi i32 [ %lost.3, %if.then121 ], [ %lost.0252, %if.then ], [ 0, %entry ], [ %lost.3, %cleanup.cont ], !dbg !3444
  %rescues.5 = phi i32 [ %rescues.3, %if.then121 ], [ %rescues.0255, %if.then ], [ 0, %entry ], [ %rescues.3, %cleanup.cont ], !dbg !3459
  %offset.2 = phi i64 [ %add118, %if.then121 ], [ %offset.0258, %if.then ], [ 0, %entry ], [ %add118, %cleanup.cont ], !dbg !3460
  call void @llvm.dbg.value(metadata i64 %offset.2, metadata !3318, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %rescues.5, metadata !3319, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %lost.5, metadata !3320, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %skipped.5, metadata !3321, metadata !DIExpression()), !dbg !3338
  call void @STATS_LOCK() #17, !dbg !3461
  %conv127 = zext i32 %lost.5 to i64, !dbg !3462
  %71 = load i64, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 19), align 8, !dbg !3463, !tbaa !952
  %add128 = add i64 %71, %conv127, !dbg !3463
  store i64 %add128, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 19), align 8, !dbg !3463, !tbaa !952
  %conv129 = zext i32 %rescues.5 to i64, !dbg !3464
  %72 = load i64, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 20), align 8, !dbg !3465, !tbaa !955
  %add130 = add i64 %72, %conv129, !dbg !3465
  store i64 %add130, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 20), align 8, !dbg !3465, !tbaa !955
  %conv131 = zext i32 %skipped.5 to i64, !dbg !3466
  %73 = load i64, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 21), align 8, !dbg !3467, !tbaa !957
  %add132 = add i64 %73, %conv131, !dbg !3467
  store i64 %add132, i64* getelementptr inbounds (%struct.stats, %struct.stats* @stats, i64 0, i32 21), align 8, !dbg !3467, !tbaa !957
  call void @STATS_UNLOCK() #17, !dbg !3468
  call void @llvm.dbg.value(metadata %struct._logger* %l, metadata !3336, metadata !DIExpression()), !dbg !3469
  %cmp133 = icmp eq %struct._logger* %l, null, !dbg !3470
  br i1 %cmp133, label %if.then135, label %if.end137, !dbg !3472

if.then135:                                       ; preds = %while.end
  %gcov_ctr162 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 19), align 8, !dbg !3470
  %74 = add i64 %gcov_ctr162, 1, !dbg !3470
  store i64 %74, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 19), align 8, !dbg !3470
  %75 = load i32, i32* @logger_key, align 4, !dbg !3470, !tbaa !803
  %call136 = call i8* @pthread_getspecific(i32 noundef %75) #17, !dbg !3470
  %76 = bitcast i8* %call136 to %struct._logger*, !dbg !3470
  call void @llvm.dbg.value(metadata %struct._logger* %76, metadata !3336, metadata !DIExpression()), !dbg !3469
  br label %if.end137, !dbg !3470

if.end137:                                        ; preds = %if.then135, %while.end
  %myl.0 = phi %struct._logger* [ %76, %if.then135 ], [ %l, %while.end ], !dbg !3469
  call void @llvm.dbg.value(metadata %struct._logger* %myl.0, metadata !3336, metadata !DIExpression()), !dbg !3469
  %eflags = getelementptr inbounds %struct._logger, %struct._logger* %myl.0, i64 0, i32 8, !dbg !3473
  %77 = load i16, i16* %eflags, align 4, !dbg !3473, !tbaa !2084
  %78 = and i16 %77, 2, !dbg !3473
  %tobool140.not = icmp eq i16 %78, 0, !dbg !3473
  br i1 %tobool140.not, label %if.end143, label %if.then141, !dbg !3472

if.then141:                                       ; preds = %if.end137
  %gcov_ctr163 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 20), align 16, !dbg !3473
  %79 = add i64 %gcov_ctr163, 1, !dbg !3473
  store i64 %79, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 20), align 16, !dbg !3473
  %call142 = call i32 (%struct._logger*, i32, i8*, ...) @logger_log(%struct._logger* noundef nonnull %myl.0, i32 noundef 12, i8* noundef null, i32 noundef %page_id, i64 noundef %offset.2, i32 noundef %rescues.5, i32 noundef %lost.5, i32 noundef %skipped.5) #17, !dbg !3473
  br label %if.end143, !dbg !3473

if.end143:                                        ; preds = %if.then141, %if.end137
  %gcov_ctr164 = load i64, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 21), align 8, !dbg !3475
  %80 = add i64 %gcov_ctr164, 1, !dbg !3475
  store i64 %80, i64* getelementptr inbounds ([22 x i64], [22 x i64]* @__llvm_gcov_ctr.131, i64 0, i64 21), align 8, !dbg !3475
  ret void, !dbg !3476
}

declare !dbg !3477 dso_local void @extstore_close_page(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !3480 dso_local void @item_lock(i32 noundef) local_unnamed_addr #3

declare !dbg !3481 dso_local %struct._stritem* @assoc_find(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !3485 dso_local i32 @item_is_flushed(%struct._stritem* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #14 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @0, i64 0, i64 0), i32 875575338, i32 725942664) #18
  br label %counter.loop.header

counter.loop.header:                              ; preds = %entry, %counter.loop.header
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %counter.loop.header ]
  %0 = getelementptr inbounds [30 x %emit_function_args_ty], [30 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 0
  %ident = load i32, i32* %0, align 4
  %1 = getelementptr inbounds [30 x %emit_function_args_ty], [30 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 1
  %func_checkssum = load i32, i32* %1, align 4
  %2 = getelementptr inbounds [30 x %emit_function_args_ty], [30 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 2
  %cfg_checksum = load i32, i32* %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #18
  %3 = getelementptr inbounds [30 x %emit_arcs_args_ty], [30 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 0
  %num_counters = load i32, i32* %3, align 16
  %4 = getelementptr inbounds [30 x %emit_arcs_args_ty], [30 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 1
  %counters = load i64*, i64** %4, align 8
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, i64* %counters) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
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
define internal void @__llvm_gcov_reset() unnamed_addr #15 {
entry:
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.103 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.104 to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.105 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(136) bitcast ([17 x i64]* @__llvm_gcov_ctr.106 to i8*), i8 0, i64 136, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(120) bitcast ([15 x i64]* @__llvm_gcov_ctr.107 to i8*), i8 0, i64 120, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.108, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.109, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.110 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(112) bitcast ([14 x i64]* @__llvm_gcov_ctr.111 to i8*), i8 0, i64 112, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.112, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.113, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.114 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(136) bitcast ([17 x i64]* @__llvm_gcov_ctr.115 to i8*), i8 0, i64 136, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.116, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.117, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.118 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(184) bitcast ([23 x i64]* @__llvm_gcov_ctr.119 to i8*), i8 0, i64 184, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) bitcast ([16 x i64]* @__llvm_gcov_ctr.120 to i8*), i8 0, i64 128, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.121, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.122, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(376) bitcast ([47 x i64]* @__llvm_gcov_ctr.123 to i8*), i8 0, i64 376, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.124 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.125 to i8*), i8 0, i64 32, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.126, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.127, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(136) bitcast ([17 x i64]* @__llvm_gcov_ctr.128 to i8*), i8 0, i64 136, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.129 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(120) bitcast ([15 x i64]* @__llvm_gcov_ctr.130 to i8*), i8 0, i64 120, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(176) bitcast ([22 x i64]* @__llvm_gcov_ctr.131 to i8*), i8 0, i64 176, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #14 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #18
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #16

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #16

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #12 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #14 = { noinline nounwind uwtable }
attributes #15 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #16 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nounwind }
attributes #19 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #20 = { nobuiltin "no-builtins" }
attributes #21 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #22 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!745, !746, !747, !748}
!llvm.gcov = !{!749}
!llvm.ident = !{!750}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "storage_write_plock", scope: !2, file: !3, line: 573, type: !274, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !105, globals: !738, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "storage.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d25089c386cf55f0501f54ce39c4d297")
!4 = !{!5, !23, !37, !55, !60, !65, !71, !76, !86, !100}
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
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "obj_io_mode", file: !72, line: 65, baseType: !7, size: 32, elements: !73)
!72 = !DIFile(filename: "./extstore.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "89218fefe8c4dc299a86fedbd8729747")
!73 = !{!74, !75}
!74 = !DIEnumerator(name: "OBJ_IO_READ", value: 0)
!75 = !DIEnumerator(name: "OBJ_IO_WRITE", value: 1)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "extstore_res", file: !72, line: 92, baseType: !7, size: 32, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85}
!78 = !DIEnumerator(name: "EXTSTORE_INIT_BAD_WBUF_SIZE", value: 1)
!79 = !DIEnumerator(name: "EXTSTORE_INIT_NEED_MORE_WBUF", value: 2)
!80 = !DIEnumerator(name: "EXTSTORE_INIT_NEED_MORE_BUCKETS", value: 3)
!81 = !DIEnumerator(name: "EXTSTORE_INIT_PAGE_WBUF_ALIGNMENT", value: 4)
!82 = !DIEnumerator(name: "EXTSTORE_INIT_TOO_MANY_PAGES", value: 5)
!83 = !DIEnumerator(name: "EXTSTORE_INIT_OOM", value: 6)
!84 = !DIEnumerator(name: "EXTSTORE_INIT_OPEN_FAIL", value: 7)
!85 = !DIEnumerator(name: "EXTSTORE_INIT_THREAD_FAIL", value: 8)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !87, line: 62, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "./protocol_binary.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "7a322a65fa8661e9a597acbeeeb23107")
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!89 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_SUCCESS", value: 0)
!90 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_KEY_ENOENT", value: 1)
!91 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS", value: 2)
!92 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_E2BIG", value: 3)
!93 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_EINVAL", value: 4)
!94 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_NOT_STORED", value: 5)
!95 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_DELTA_BADVAL", value: 6)
!96 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_AUTH_ERROR", value: 32)
!97 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_AUTH_CONTINUE", value: 33)
!98 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND", value: 129)
!99 = !DIEnumerator(name: "PROTOCOL_BINARY_RESPONSE_ENOMEM", value: 130)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "logger_ret_type", file: !38, line: 44, baseType: !7, size: 32, elements: !101)
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "LOGGER_RET_OK", value: 0)
!103 = !DIEnumerator(name: "LOGGER_RET_NOSPACE", value: 1)
!104 = !DIEnumerator(name: "LOGGER_RET_ERR", value: 2)
!105 = !{!106, !114, !116, !117, !118, !123, !171, !676, !141, !435, !119, !711, !144, !145, !156, !493, !728, !736, !737}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "item_hdr", file: !6, line: 659, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 655, size: 96, elements: !109)
!109 = !{!110, !111, !112}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "page_version", scope: !108, file: !6, line: 656, baseType: !7, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !108, file: !6, line: 657, baseType: !7, size: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "page_id", scope: !108, file: !6, line: 658, baseType: !113, size: 16, offset: 64)
!113 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!117 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !120, line: 26, baseType: !121)
!120 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !122, line: 42, baseType: !7)
!122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "item_chunk", file: !6, line: 635, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_strchunk", file: !6, line: 623, size: 384, elements: !126)
!126 = !{!127, !129, !130, !162, !163, !164, !165, !166, !167, !168, !169}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !6, line: 624, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !6, line: 625, baseType: !128, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !125, file: !6, line: 626, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stritem", file: !6, line: 575, size: 384, elements: !133)
!133 = !{!134, !135, !136, !137, !139, !140, !142, !143, !146, !150, !151}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !6, line: 577, baseType: !131, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !6, line: 578, baseType: !131, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "h_next", scope: !132, file: !6, line: 580, baseType: !131, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !132, file: !6, line: 581, baseType: !138, size: 32, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_time_t", file: !38, line: 14, baseType: !7)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "exptime", scope: !132, file: !6, line: 582, baseType: !138, size: 32, offset: 224)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !132, file: !6, line: 583, baseType: !141, size: 32, offset: 256)
!141 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !132, file: !6, line: 584, baseType: !113, size: 16, offset: 288)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !132, file: !6, line: 585, baseType: !144, size: 16, offset: 304)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !120, line: 25, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !122, line: 40, baseType: !113)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_clsid", scope: !132, file: !6, line: 586, baseType: !147, size: 8, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !120, line: 24, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !122, line: 38, baseType: !149)
!149 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nkey", scope: !132, file: !6, line: 587, baseType: !147, size: 8, offset: 328)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !132, file: !6, line: 593, baseType: !152, offset: 384)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, elements: !160)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !132, file: !6, line: 590, size: 64, elements: !154)
!154 = !{!155, !159}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !153, file: !6, line: 591, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !120, line: 27, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !122, line: 45, baseType: !158)
!158 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !153, file: !6, line: 592, baseType: !115, size: 8)
!160 = !{!161}
!161 = !DISubrange(count: -1)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !125, file: !6, line: 627, baseType: !141, size: 32, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !125, file: !6, line: 628, baseType: !141, size: 32, offset: 224)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !125, file: !6, line: 629, baseType: !141, size: 32, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !125, file: !6, line: 630, baseType: !113, size: 16, offset: 288)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "it_flags", scope: !125, file: !6, line: 631, baseType: !144, size: 16, offset: 304)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_clsid", scope: !125, file: !6, line: 632, baseType: !147, size: 8, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "orig_clsid", scope: !125, file: !6, line: 633, baseType: !147, size: 8, offset: 328)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !125, file: !6, line: 634, baseType: !170, offset: 336)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, elements: !160)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_pending_t", file: !6, line: 668, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_io_pending_t", file: !6, line: 783, size: 1216, elements: !174)
!174 = !{!175, !176, !566, !671, !672}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "io_queue_type", scope: !173, file: !6, line: 784, baseType: !141, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !173, file: !6, line: 785, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "LIBEVENT_THREAD", file: !6, line: 737, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 704, size: 54464, elements: !180)
!180 = !{!181, !184, !188, !269, !270, !352, !381, !384, !412, !490, !491, !492, !564, !565}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !179, file: !6, line: 705, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !183, line: 27, baseType: !158)
!183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!184 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !179, file: !6, line: 706, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !187, line: 122, flags: DIFlagFwdDecl)
!187 = !DIFile(filename: "/usr/include/event2/event_struct.h", directory: "", checksumkind: CSK_MD5, checksum: "005d89b34bed2ed9e30b0cc3160619c1")
!188 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !179, file: !6, line: 707, baseType: !189, size: 1024, offset: 128)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !187, line: 123, size: 1024, elements: !190)
!190 = !{!191, !223, !233, !234, !235, !266, !267, !268}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ev_evcallback", scope: !189, file: !187, line: 124, baseType: !192, size: 320)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_callback", file: !187, line: 107, size: 320, elements: !193)
!193 = !{!194, !201, !203, !204, !205, !222}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_active_next", scope: !192, file: !187, line: 108, baseType: !195, size: 128)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !192, file: !187, line: 108, size: 128, elements: !196)
!196 = !{!197, !199}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !195, file: !187, line: 108, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !195, file: !187, line: 108, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_flags", scope: !192, file: !187, line: 109, baseType: !202, size: 16, offset: 128)
!202 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_pri", scope: !192, file: !187, line: 110, baseType: !147, size: 8, offset: 144)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_closure", scope: !192, file: !187, line: 111, baseType: !147, size: 8, offset: 152)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cb_union", scope: !192, file: !187, line: 118, baseType: !206, size: 64, offset: 192)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !192, file: !187, line: 113, size: 64, elements: !207)
!207 = !{!208, !212, !216, !221}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_callback", scope: !206, file: !187, line: 114, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !141, !202, !116}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_selfcb", scope: !206, file: !187, line: 115, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !198, !116}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_evfinalize", scope: !206, file: !187, line: 116, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !220, !116}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_cbfinalize", scope: !206, file: !187, line: 117, baseType: !213, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "evcb_arg", scope: !192, file: !187, line: 119, baseType: !116, size: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout_pos", scope: !189, file: !187, line: 130, baseType: !224, size: 128, offset: 320)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !189, file: !187, line: 127, size: 128, elements: !225)
!225 = !{!226, !232}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ev_next_with_common_timeout", scope: !224, file: !187, line: 128, baseType: !227, size: 128)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !224, file: !187, line: 128, size: 128, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !227, file: !187, line: 128, baseType: !220, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !227, file: !187, line: 128, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "min_heap_idx", scope: !224, file: !187, line: 129, baseType: !141, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "ev_fd", scope: !189, file: !187, line: 131, baseType: !141, size: 32, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "ev_base", scope: !189, file: !187, line: 133, baseType: !185, size: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ev_", scope: !189, file: !187, line: 149, baseType: !236, size: 256, offset: 576)
!236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !189, file: !187, line: 135, size: 256, elements: !237)
!237 = !{!238, !255}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io", scope: !236, file: !187, line: 140, baseType: !239, size: 256)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !236, file: !187, line: 137, size: 256, elements: !240)
!240 = !{!241, !246}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ev_io_next", scope: !239, file: !187, line: 138, baseType: !242, size: 128)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !239, file: !187, line: 138, size: 128, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !242, file: !187, line: 138, baseType: !220, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !242, file: !187, line: 138, baseType: !231, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !239, file: !187, line: 139, baseType: !247, size: 128, offset: 128)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !248, line: 8, size: 128, elements: !249)
!248 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!249 = !{!250, !253}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !247, file: !248, line: 10, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !122, line: 160, baseType: !252)
!252 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !247, file: !248, line: 11, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !122, line: 162, baseType: !252)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal", scope: !236, file: !187, line: 148, baseType: !256, size: 256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !236, file: !187, line: 143, size: 256, elements: !257)
!257 = !{!258, !263, !264}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ev_signal_next", scope: !256, file: !187, line: 144, baseType: !259, size: 128)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !256, file: !187, line: 144, size: 128, elements: !260)
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !259, file: !187, line: 144, baseType: !220, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !259, file: !187, line: 144, baseType: !231, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ev_ncalls", scope: !256, file: !187, line: 145, baseType: !202, size: 16, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ev_pncalls", scope: !256, file: !187, line: 147, baseType: !265, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "ev_events", scope: !189, file: !187, line: 151, baseType: !202, size: 16, offset: 832)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ev_res", scope: !189, file: !187, line: 152, baseType: !202, size: 16, offset: 848)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "ev_timeout", scope: !189, file: !187, line: 153, baseType: !247, size: 128, offset: 896)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event_fd", scope: !179, file: !6, line: 709, baseType: !141, size: 32, offset: 1152)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !179, file: !6, line: 714, baseType: !271, size: 51584, offset: 1216)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_stats", file: !6, line: 356, size: 51584, elements: !272)
!272 = !{!273, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !345, !349, !350, !351}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !271, file: !6, line: 357, baseType: !274, size: 320)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !183, line: 72, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !183, line: 67, size: 320, elements: !276)
!276 = !{!277, !296, !300}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !275, file: !183, line: 69, baseType: !278, size: 320)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !279, line: 22, size: 320, elements: !280)
!279 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !278, file: !279, line: 24, baseType: !141, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !278, file: !279, line: 25, baseType: !7, size: 32, offset: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !278, file: !279, line: 26, baseType: !141, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !278, file: !279, line: 28, baseType: !7, size: 32, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !278, file: !279, line: 32, baseType: !141, size: 32, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !278, file: !279, line: 34, baseType: !202, size: 16, offset: 160)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !278, file: !279, line: 35, baseType: !202, size: 16, offset: 176)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !278, file: !279, line: 36, baseType: !289, size: 128, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !290, line: 53, baseType: !291)
!290 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !290, line: 49, size: 128, elements: !292)
!292 = !{!293, !295}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !291, file: !290, line: 51, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !291, file: !290, line: 52, baseType: !294, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !275, file: !183, line: 70, baseType: !297, size: 320)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 320, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 40)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !275, file: !183, line: 71, baseType: !252, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "get_cmds", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "get_misses", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "get_expired", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get_flushed", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "touch_cmds", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 576)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "touch_misses", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 640)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "delete_misses", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 704)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "incr_misses", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 768)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "decr_misses", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 832)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "cas_misses", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 896)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "meta_cmds", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 960)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_read", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 1024)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 1088)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flush_cmds", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 1152)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "conn_yields", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 1216)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "auth_cmds", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 1280)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "auth_errors", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 1344)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "idle_kicks", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 1408)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_oom", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 1472)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_count", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 1536)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "response_obj_bytes", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 1600)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_oom", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 1664)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "store_too_large", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 1728)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "store_no_memory", scope: !271, file: !6, line: 359, baseType: !156, size: 64, offset: 1792)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "get_extstore", scope: !271, file: !6, line: 361, baseType: !156, size: 64, offset: 1856)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "get_aborted_extstore", scope: !271, file: !6, line: 361, baseType: !156, size: 64, offset: 1920)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "get_oom_extstore", scope: !271, file: !6, line: 361, baseType: !156, size: 64, offset: 1984)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "recache_from_extstore", scope: !271, file: !6, line: 361, baseType: !156, size: 64, offset: 2048)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "miss_from_extstore", scope: !271, file: !6, line: 361, baseType: !156, size: 64, offset: 2112)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "badcrc_from_extstore", scope: !271, file: !6, line: 361, baseType: !156, size: 64, offset: 2176)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "slab_stats", scope: !271, file: !6, line: 367, baseType: !332, size: 32768, offset: 2240)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 32768, elements: !343)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slab_stats", file: !6, line: 303, size: 512, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "set_cmds", scope: !333, file: !6, line: 305, baseType: !156, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "get_hits", scope: !333, file: !6, line: 305, baseType: !156, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "touch_hits", scope: !333, file: !6, line: 305, baseType: !156, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "delete_hits", scope: !333, file: !6, line: 305, baseType: !156, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "cas_hits", scope: !333, file: !6, line: 305, baseType: !156, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "cas_badval", scope: !333, file: !6, line: 305, baseType: !156, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "incr_hits", scope: !333, file: !6, line: 305, baseType: !156, size: 64, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "decr_hits", scope: !333, file: !6, line: 305, baseType: !156, size: 64, offset: 448)
!343 = !{!344}
!344 = !DISubrange(count: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "lru_hits", scope: !271, file: !6, line: 368, baseType: !346, size: 16384, offset: 35008)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 16384, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_count", scope: !271, file: !6, line: 369, baseType: !156, size: 64, offset: 51392)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_bytes", scope: !271, file: !6, line: 370, baseType: !156, size: 64, offset: 51456)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_bytes_free", scope: !271, file: !6, line: 371, baseType: !156, size: 64, offset: 51520)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues", scope: !179, file: !6, line: 715, baseType: !353, size: 1152, offset: 52800)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 1152, elements: !379)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_cb_t", file: !6, line: 701, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_queue_cb_s", file: !6, line: 694, size: 384, elements: !356)
!356 = !{!357, !358, !371, !372, !377, !378}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !355, file: !6, line: 695, baseType: !116, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "submit_cb", scope: !355, file: !6, line: 696, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_stack_cb", file: !6, line: 670, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_t", file: !6, line: 669, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_queue_s", file: !6, line: 687, size: 192, elements: !366)
!366 = !{!367, !368, !369, !370}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !365, file: !6, line: 688, baseType: !116, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "stack_ctx", scope: !365, file: !6, line: 689, baseType: !116, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !365, file: !6, line: 690, baseType: !141, size: 32, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !365, file: !6, line: 691, baseType: !141, size: 32, offset: 160)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "complete_cb", scope: !355, file: !6, line: 697, baseType: !359, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "return_cb", scope: !355, file: !6, line: 698, baseType: !373, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_queue_cb", file: !6, line: 671, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !171}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_cb", scope: !355, file: !6, line: 699, baseType: !373, size: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !355, file: !6, line: 700, baseType: !141, size: 32, offset: 320)
!379 = !{!380}
!380 = !DISubrange(count: 3)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ev_queue", scope: !179, file: !6, line: 716, baseType: !382, size: 64, offset: 53952)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "conn_queue", file: !6, line: 716, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_cache", scope: !179, file: !6, line: 717, baseType: !385, size: 64, offset: 54016)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_t", file: !387, line: 39, baseType: !388)
!387 = !DIFile(filename: "./cache.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d97639c8540587a19d8550d7d7156448")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 22, size: 704, elements: !389)
!389 = !{!390, !391, !392, !405, !408, !409, !410, !411}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !388, file: !387, line: 24, baseType: !274, size: 320)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !388, file: !387, line: 26, baseType: !114, size: 64, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !388, file: !387, line: 28, baseType: !393, size: 128, offset: 384)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_head", file: !387, line: 28, size: 128, elements: !394)
!394 = !{!395, !403}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !393, file: !387, line: 28, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_free_s", file: !387, line: 12, size: 64, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "c_next", scope: !397, file: !387, line: 13, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !397, file: !387, line: 13, size: 64, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !400, file: !387, line: 13, baseType: !396, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !393, file: !387, line: 28, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !388, file: !387, line: 30, baseType: !406, size: 64, offset: 512)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !407, line: 46, baseType: !158)
!407 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!408 = !DIDerivedType(tag: DW_TAG_member, name: "freetotal", scope: !388, file: !387, line: 32, baseType: !141, size: 32, offset: 576)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !388, file: !387, line: 34, baseType: !141, size: 32, offset: 608)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "freecurr", scope: !388, file: !387, line: 36, baseType: !141, size: 32, offset: 640)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !388, file: !387, line: 38, baseType: !141, size: 32, offset: 672)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "open_bundle", scope: !179, file: !6, line: 718, baseType: !413, size: 64, offset: 54080)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "mc_resp_bundle", file: !6, line: 703, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mc_resp_bundle", file: !6, line: 773, size: 192, elements: !416)
!416 = !{!417, !418, !419, !421, !422}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !415, file: !6, line: 774, baseType: !147, size: 8)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next_check", scope: !415, file: !6, line: 775, baseType: !147, size: 8, offset: 8)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !6, line: 776, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !415, file: !6, line: 777, baseType: !420, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !415, file: !6, line: 778, baseType: !423, offset: 192)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, elements: !160)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "mc_resp", file: !6, line: 770, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mc_resp", file: !6, line: 743, size: 9472, elements: !426)
!426 = !{!427, !428, !430, !431, !432, !433, !434, !437, !446, !447, !448, !449, !451, !452, !453, !454, !455, !482, !486}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !425, file: !6, line: 744, baseType: !413, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !6, line: 745, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "wbytes", scope: !425, file: !6, line: 746, baseType: !141, size: 32, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tosend", scope: !425, file: !6, line: 747, baseType: !141, size: 32, offset: 160)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "write_and_free", scope: !425, file: !6, line: 748, baseType: !116, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "io_pending", scope: !425, file: !6, line: 749, baseType: !171, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !425, file: !6, line: 751, baseType: !435, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "item", file: !6, line: 598, baseType: !132)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !425, file: !6, line: 752, baseType: !438, size: 512, offset: 384)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 512, elements: !444)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !440, line: 26, size: 128, elements: !441)
!440 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "6a734cae8feaa37c12e11190a6573675")
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !439, file: !440, line: 28, baseType: !116, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !439, file: !440, line: 29, baseType: !406, size: 64, offset: 64)
!444 = !{!445}
!445 = !DISubrange(count: 4)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_total", scope: !425, file: !6, line: 753, baseType: !141, size: 32, offset: 896)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "iovcnt", scope: !425, file: !6, line: 754, baseType: !147, size: 8, offset: 928)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_data_iov", scope: !425, file: !6, line: 755, baseType: !147, size: 8, offset: 936)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !425, file: !6, line: 760, baseType: !450, size: 8, offset: 944)
!450 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !425, file: !6, line: 761, baseType: !450, size: 8, offset: 952)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !425, file: !6, line: 763, baseType: !144, size: 16, offset: 960)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "udp_sequence", scope: !425, file: !6, line: 764, baseType: !144, size: 16, offset: 976)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "udp_total", scope: !425, file: !6, line: 765, baseType: !144, size: 16, offset: 992)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr", scope: !425, file: !6, line: 766, baseType: !456, size: 224, offset: 1024)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !457, line: 253, size: 224, elements: !458)
!457 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "6a5254a491bcdb8c3253de75bf3571c1")
!458 = !{!459, !462, !464, !465, !481}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !456, file: !457, line: 255, baseType: !460, size: 16)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !461, line: 28, baseType: !113)
!461 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "b70cbaf07ffb7e8bf11ee98d9a21e2fc")
!462 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !456, file: !457, line: 256, baseType: !463, size: 16, offset: 16)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !457, line: 119, baseType: !144)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !456, file: !457, line: 257, baseType: !119, size: 32, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !456, file: !457, line: 258, baseType: !466, size: 128, offset: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !457, line: 212, size: 128, elements: !467)
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !466, file: !457, line: 219, baseType: !469, size: 128)
!469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !457, line: 214, size: 128, elements: !470)
!470 = !{!471, !475, !479}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !469, file: !457, line: 216, baseType: !472, size: 128)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 128, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 16)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !469, file: !457, line: 217, baseType: !476, size: 128)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 128, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 8)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !469, file: !457, line: 218, baseType: !480, size: 128)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 128, elements: !444)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !456, file: !457, line: 259, baseType: !119, size: 32, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr_size", scope: !425, file: !6, line: 767, baseType: !483, size: 32, offset: 1248)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !484, line: 33, baseType: !485)
!484 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "b1d3343a573cbf39b225111209e02966")
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !122, line: 209, baseType: !7)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !425, file: !6, line: 769, baseType: !487, size: 8192, offset: 1280)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 8192, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 1024)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "io_cache", scope: !179, file: !6, line: 719, baseType: !385, size: 64, offset: 54144)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !179, file: !6, line: 721, baseType: !116, size: 64, offset: 54208)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !179, file: !6, line: 723, baseType: !493, size: 64, offset: 54272)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger", file: !38, line: 171, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_logger", file: !38, line: 159, size: 832, elements: !496)
!496 = !{!497, !499, !500, !501, !502, !503, !504, !505, !506, !507, !520}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !495, file: !38, line: 160, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !495, file: !38, line: 161, baseType: !498, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !495, file: !38, line: 162, baseType: !274, size: 320, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !495, file: !38, line: 163, baseType: !156, size: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dropped", scope: !495, file: !38, line: 164, baseType: !156, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !495, file: !38, line: 165, baseType: !156, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "fetcher_ratio", scope: !495, file: !38, line: 166, baseType: !144, size: 16, offset: 640)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mutation_ratio", scope: !495, file: !38, line: 167, baseType: !144, size: 16, offset: 656)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !495, file: !38, line: 168, baseType: !144, size: 16, offset: 672)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !495, file: !38, line: 169, baseType: !508, size: 64, offset: 704)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "bipbuf_t", file: !510, line: 18, baseType: !511)
!510 = !DIFile(filename: "./bipbuffer.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "99606bcb8393045e6bc9eef40115066f")
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !510, line: 4, size: 192, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !511, file: !510, line: 6, baseType: !158, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "a_start", scope: !511, file: !510, line: 9, baseType: !7, size: 32, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "a_end", scope: !511, file: !510, line: 9, baseType: !7, size: 32, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "b_end", scope: !511, file: !510, line: 12, baseType: !7, size: 32, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "b_inuse", scope: !511, file: !510, line: 15, baseType: !141, size: 32, offset: 160)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !511, file: !510, line: 17, baseType: !519, offset: 192)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, elements: !160)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "entry_map", scope: !495, file: !38, line: 170, baseType: !521, size: 64, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_details", file: !38, line: 57, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_entry_details", file: !38, line: 62, size: 256, elements: !525)
!525 = !{!526, !527, !528, !558, !563}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "reqlen", scope: !524, file: !38, line: 63, baseType: !141, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !524, file: !38, line: 64, baseType: !144, size: 16, offset: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "log_cb", scope: !524, file: !38, line: 65, baseType: !529, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_log_cb", file: !38, line: 59, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !533, !521, !548, !550}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "logentry", file: !38, line: 56, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_logentry", file: !38, line: 135, size: 320, elements: !536)
!536 = !{!537, !538, !539, !540, !541, !542, !543}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !535, file: !38, line: 136, baseType: !37, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !535, file: !38, line: 137, baseType: !147, size: 8, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !535, file: !38, line: 138, baseType: !144, size: 16, offset: 48)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !535, file: !38, line: 139, baseType: !156, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !535, file: !38, line: 140, baseType: !247, size: 128, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !535, file: !38, line: 141, baseType: !141, size: 32, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !535, file: !38, line: 144, baseType: !544, offset: 288)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, elements: !160)
!545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !38, line: 142, size: 8, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !545, file: !38, line: 143, baseType: !115, size: 8)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !552)
!552 = !{!553, !555, !556, !557}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !551, file: !554, line: 55, baseType: !7, size: 32)
!554 = !DIFile(filename: "storage.c", directory: "/home/xuheng/blackbox/llvm-test/memcached")
!555 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !551, file: !554, line: 55, baseType: !7, size: 32, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !551, file: !554, line: 55, baseType: !116, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !551, file: !554, line: 55, baseType: !116, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "parse_cb", scope: !524, file: !38, line: 66, baseType: !559, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry_parse_cb", file: !38, line: 60, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!141, !533, !114}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !524, file: !38, line: 67, baseType: !114, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "lru_bump_buf", scope: !179, file: !6, line: 724, baseType: !116, size: 64, offset: 54336)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !179, file: !6, line: 728, baseType: !141, size: 32, offset: 54400)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !173, file: !6, line: 786, baseType: !567, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn", file: !6, line: 781, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn", file: !6, line: 794, size: 3968, elements: !570)
!570 = !{!571, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !595, !596, !597, !598, !599, !600, !601, !603, !604, !605, !606, !607, !608, !609, !610, !611, !617, !637, !638, !639, !640, !641, !642, !643, !644, !648, !655, !670}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_conn", scope: !569, file: !6, line: 795, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "sasl_conn_t", file: !574, line: 16, baseType: !116)
!574 = !DIFile(filename: "./sasl_defs.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "3a8678a43d09d8e311388b26eedc7a3e")
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sfd", scope: !569, file: !6, line: 796, baseType: !141, size: 32, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_started", scope: !569, file: !6, line: 797, baseType: !450, size: 8, offset: 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !569, file: !6, line: 798, baseType: !450, size: 8, offset: 104)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "set_stale", scope: !569, file: !6, line: 799, baseType: !450, size: 8, offset: 112)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mset_res", scope: !569, file: !6, line: 800, baseType: !450, size: 8, offset: 120)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "close_after_write", scope: !569, file: !6, line: 801, baseType: !450, size: 8, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_malloced", scope: !569, file: !6, line: 802, baseType: !450, size: 8, offset: 136)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "item_malloced", scope: !569, file: !6, line: 803, baseType: !450, size: 8, offset: 144)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !569, file: !6, line: 809, baseType: !5, size: 32, offset: 160)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "substate", scope: !569, file: !6, line: 810, baseType: !23, size: 32, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd_time", scope: !569, file: !6, line: 811, baseType: !138, size: 32, offset: 224)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !569, file: !6, line: 812, baseType: !189, size: 1024, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ev_flags", scope: !569, file: !6, line: 813, baseType: !202, size: 16, offset: 1280)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !569, file: !6, line: 814, baseType: !202, size: 16, offset: 1296)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !569, file: !6, line: 816, baseType: !114, size: 64, offset: 1344)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rcurr", scope: !569, file: !6, line: 817, baseType: !114, size: 64, offset: 1408)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rsize", scope: !569, file: !6, line: 818, baseType: !141, size: 32, offset: 1472)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rbytes", scope: !569, file: !6, line: 819, baseType: !141, size: 32, offset: 1504)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !569, file: !6, line: 821, baseType: !594, size: 64, offset: 1536)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "resp_head", scope: !569, file: !6, line: 822, baseType: !594, size: 64, offset: 1600)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ritem", scope: !569, file: !6, line: 823, baseType: !114, size: 64, offset: 1664)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rlbytes", scope: !569, file: !6, line: 824, baseType: !141, size: 32, offset: 1728)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !569, file: !6, line: 832, baseType: !116, size: 64, offset: 1792)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !569, file: !6, line: 835, baseType: !141, size: 32, offset: 1856)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues_submitted", scope: !569, file: !6, line: 837, baseType: !141, size: 32, offset: 1888)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "io_queues", scope: !569, file: !6, line: 838, baseType: !602, size: 576, offset: 1920)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 576, elements: !379)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "recache_counter", scope: !569, file: !6, line: 843, baseType: !7, size: 32, offset: 2496)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !569, file: !6, line: 845, baseType: !55, size: 32, offset: 2528)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "transport", scope: !569, file: !6, line: 846, baseType: !60, size: 32, offset: 2560)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "close_reason", scope: !569, file: !6, line: 847, baseType: !65, size: 32, offset: 2592)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !569, file: !6, line: 850, baseType: !141, size: 32, offset: 2624)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr", scope: !569, file: !6, line: 851, baseType: !456, size: 224, offset: 2656)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "request_addr_size", scope: !569, file: !6, line: 852, baseType: !483, size: 32, offset: 2880)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "noreply", scope: !569, file: !6, line: 854, baseType: !450, size: 8, offset: 2912)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !569, file: !6, line: 860, baseType: !612, size: 192, offset: 2944)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !569, file: !6, line: 856, size: 192, elements: !613)
!613 = !{!614, !615, !616}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !612, file: !6, line: 857, baseType: !114, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !612, file: !6, line: 858, baseType: !406, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !612, file: !6, line: 859, baseType: !406, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "binary_header", scope: !569, file: !6, line: 864, baseType: !618, size: 192, offset: 3136)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_request_header", file: !87, line: 164, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !87, line: 151, size: 192, elements: !620)
!620 = !{!621, !633}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !619, file: !87, line: 162, baseType: !622, size: 192)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !619, file: !87, line: 152, size: 192, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !630, !631, !632}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !622, file: !87, line: 153, baseType: !147, size: 8)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !622, file: !87, line: 154, baseType: !147, size: 8, offset: 8)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !622, file: !87, line: 155, baseType: !144, size: 16, offset: 16)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "extlen", scope: !622, file: !87, line: 156, baseType: !147, size: 8, offset: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !622, file: !87, line: 157, baseType: !147, size: 8, offset: 40)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !622, file: !87, line: 158, baseType: !144, size: 16, offset: 48)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bodylen", scope: !622, file: !87, line: 159, baseType: !119, size: 32, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !622, file: !87, line: 160, baseType: !119, size: 32, offset: 96)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !622, file: !87, line: 161, baseType: !156, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !619, file: !87, line: 163, baseType: !634, size: 192)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 192, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 24)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !569, file: !6, line: 865, baseType: !156, size: 64, offset: 3328)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !569, file: !6, line: 866, baseType: !156, size: 64, offset: 3392)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !569, file: !6, line: 867, baseType: !202, size: 16, offset: 3456)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !569, file: !6, line: 868, baseType: !141, size: 32, offset: 3488)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !569, file: !6, line: 869, baseType: !141, size: 32, offset: 3520)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !569, file: !6, line: 870, baseType: !567, size: 64, offset: 3584)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !569, file: !6, line: 871, baseType: !177, size: 64, offset: 3648)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "try_read_command", scope: !569, file: !6, line: 872, baseType: !645, size: 64, offset: 3712)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!141, !567}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !569, file: !6, line: 873, baseType: !649, size: 64, offset: 3776)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!652, !567, !116, !406}
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !653, line: 108, baseType: !654)
!653 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !122, line: 193, baseType: !252)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sendmsg", scope: !569, file: !6, line: 874, baseType: !656, size: 64, offset: 3840)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!652, !567, !659, !141}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !484, line: 257, size: 448, elements: !661)
!661 = !{!662, !663, !664, !666, !667, !668, !669}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !660, file: !484, line: 259, baseType: !116, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !660, file: !484, line: 260, baseType: !483, size: 32, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !660, file: !484, line: 262, baseType: !665, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !660, file: !484, line: 263, baseType: !406, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !660, file: !484, line: 265, baseType: !116, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !660, file: !484, line: 266, baseType: !406, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !660, file: !484, line: 271, baseType: !141, size: 32, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !569, file: !6, line: 875, baseType: !649, size: 64, offset: 3904)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !173, file: !6, line: 787, baseType: !594, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !173, file: !6, line: 788, baseType: !673, size: 960, offset: 256)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 960, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 120)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_pending_storage_t", file: !3, line: 37, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_io_pending_storage_t", file: !3, line: 25, size: 896, elements: !679)
!679 = !{!680, !681, !682, !683, !684, !685, !706, !707, !708, !709, !710}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "io_queue_type", scope: !678, file: !3, line: 26, baseType: !141, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !678, file: !3, line: 27, baseType: !177, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !678, file: !3, line: 28, baseType: !567, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !678, file: !3, line: 29, baseType: !594, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_it", scope: !678, file: !3, line: 30, baseType: !435, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "io_ctx", scope: !678, file: !3, line: 31, baseType: !686, size: 512, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "obj_io", file: !72, line: 70, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obj_io", file: !72, line: 77, size: 512, elements: !688)
!688 = !{!689, !690, !692, !693, !694, !695, !696, !697, !698, !699, !700}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !687, file: !72, line: 78, baseType: !116, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !687, file: !72, line: 79, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !687, file: !72, line: 80, baseType: !114, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !687, file: !72, line: 81, baseType: !665, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "iovcnt", scope: !687, file: !72, line: 82, baseType: !7, size: 32, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "page_version", scope: !687, file: !72, line: 83, baseType: !7, size: 32, offset: 288)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !687, file: !72, line: 84, baseType: !7, size: 32, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !687, file: !72, line: 85, baseType: !7, size: 32, offset: 352)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "page_id", scope: !687, file: !72, line: 86, baseType: !113, size: 16, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !687, file: !72, line: 87, baseType: !71, size: 32, offset: 416)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !687, file: !72, line: 89, baseType: !701, size: 64, offset: 448)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "obj_io_cb", file: !72, line: 71, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !116, !705, !141}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "iovec_data", scope: !678, file: !3, line: 32, baseType: !7, size: 32, offset: 832)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "noreply", scope: !678, file: !3, line: 33, baseType: !450, size: 8, offset: 864)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "miss", scope: !678, file: !3, line: 34, baseType: !450, size: 8, offset: 872)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "badcrc", scope: !678, file: !3, line: 35, baseType: !450, size: 8, offset: 880)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !678, file: !3, line: 36, baseType: !450, size: 8, offset: 888)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_binary_response_header", file: !87, line: 183, baseType: !713)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !87, line: 170, size: 192, elements: !714)
!714 = !{!715, !727}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !713, file: !87, line: 181, baseType: !716, size: 192)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !713, file: !87, line: 171, size: 192, elements: !717)
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725, !726}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !716, file: !87, line: 172, baseType: !147, size: 8)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !716, file: !87, line: 173, baseType: !147, size: 8, offset: 8)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !716, file: !87, line: 174, baseType: !144, size: 16, offset: 16)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "extlen", scope: !716, file: !87, line: 175, baseType: !147, size: 8, offset: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !716, file: !87, line: 176, baseType: !147, size: 8, offset: 40)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !716, file: !87, line: 177, baseType: !144, size: 16, offset: 48)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "bodylen", scope: !716, file: !87, line: 178, baseType: !119, size: 32, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !716, file: !87, line: 179, baseType: !119, size: 32, offset: 96)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "cas", scope: !716, file: !87, line: 180, baseType: !156, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !713, file: !87, line: 182, baseType: !634, size: 192)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storage_compact_wrap", file: !3, line: 770, size: 896, elements: !730)
!730 = !{!731, !732, !733, !734, !735}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !729, file: !3, line: 771, baseType: !686, size: 512)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !729, file: !3, line: 772, baseType: !274, size: 320, offset: 512)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !729, file: !3, line: 773, baseType: !450, size: 8, offset: 832)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "submitted", scope: !729, file: !3, line: 774, baseType: !450, size: 8, offset: 840)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "miss", scope: !729, file: !3, line: 775, baseType: !450, size: 8, offset: 848)
!736 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!738 = !{!739, !0, !741, !743}
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(name: "storage_write_tid", scope: !2, file: !3, line: 572, type: !182, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(name: "storage_compact_tid", scope: !2, file: !3, line: 766, type: !182, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(name: "storage_compact_plock", scope: !2, file: !3, line: 767, type: !274, isLocal: true, isDefinition: true)
!745 = !{i32 7, !"Dwarf Version", i32 5}
!746 = !{i32 2, !"Debug Info Version", i32 3}
!747 = !{i32 1, !"wchar_size", i32 4}
!748 = !{i32 7, !"uwtable", i32 1}
!749 = !{!"/home/xuheng/blackbox/llvm-test/memcached/storage.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/storage.gcda", !2}
!750 = !{!"clang version 14.0.0"}
!751 = distinct !DISubprogram(name: "storage_validate_item", scope: !3, file: !3, line: 40, type: !752, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !754)
!752 = !DISubroutineType(types: !753)
!753 = !{!450, !116, !435}
!754 = !{!755, !756, !757}
!755 = !DILocalVariable(name: "e", arg: 1, scope: !751, file: !3, line: 40, type: !116)
!756 = !DILocalVariable(name: "it", arg: 2, scope: !751, file: !3, line: 40, type: !435)
!757 = !DILocalVariable(name: "hdr", scope: !751, file: !3, line: 41, type: !106)
!758 = !DILocation(line: 0, scope: !751)
!759 = !DILocation(line: 41, column: 33, scope: !751)
!760 = !{!761, !761, i64 0}
!761 = !{!"omnipotent char", !762, i64 0}
!762 = !{!"Simple C/C++ TBAA"}
!763 = !{!764, !764, i64 0}
!764 = !{!"short", !761, i64 0}
!765 = !DILocation(line: 42, column: 32, scope: !766)
!766 = distinct !DILexicalBlock(scope: !751, file: !3, line: 42, column: 9)
!767 = !{!768, !764, i64 8}
!768 = !{!"", !769, i64 0, !769, i64 4, !764, i64 8}
!769 = !{!"int", !761, i64 0}
!770 = !DILocation(line: 42, column: 27, scope: !766)
!771 = !DILocation(line: 42, column: 46, scope: !766)
!772 = !{!768, !769, i64 0}
!773 = !DILocation(line: 42, column: 41, scope: !766)
!774 = !DILocation(line: 42, column: 9, scope: !766)
!775 = !DILocation(line: 42, column: 60, scope: !766)
!776 = !DILocation(line: 0, scope: !766)
!777 = !DILocation(line: 47, column: 1, scope: !751)
!778 = !DISubprogram(name: "extstore_check", scope: !72, file: !72, line: 112, type: !779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!779 = !DISubroutineType(types: !780)
!780 = !{!141, !116, !7, !156}
!781 = !{}
!782 = distinct !DISubprogram(name: "storage_delete", scope: !3, file: !3, line: 49, type: !783, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !785)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !116, !435}
!785 = !{!786, !787, !788}
!786 = !DILocalVariable(name: "e", arg: 1, scope: !782, file: !3, line: 49, type: !116)
!787 = !DILocalVariable(name: "it", arg: 2, scope: !782, file: !3, line: 49, type: !435)
!788 = !DILocalVariable(name: "hdr", scope: !789, file: !3, line: 51, type: !106)
!789 = distinct !DILexicalBlock(scope: !790, file: !3, line: 50, column: 34)
!790 = distinct !DILexicalBlock(scope: !782, file: !3, line: 50, column: 9)
!791 = !DILocation(line: 0, scope: !782)
!792 = !DILocation(line: 50, column: 13, scope: !790)
!793 = !DILocation(line: 50, column: 22, scope: !790)
!794 = !DILocation(line: 50, column: 9, scope: !782)
!795 = !DILocation(line: 51, column: 9, scope: !789)
!796 = !DILocation(line: 51, column: 37, scope: !789)
!797 = !DILocation(line: 0, scope: !789)
!798 = !DILocation(line: 52, column: 33, scope: !789)
!799 = !DILocation(line: 52, column: 28, scope: !789)
!800 = !DILocation(line: 52, column: 47, scope: !789)
!801 = !DILocation(line: 52, column: 42, scope: !789)
!802 = !DILocation(line: 53, column: 20, scope: !789)
!803 = !{!769, !769, i64 0}
!804 = !DILocation(line: 52, column: 9, scope: !789)
!805 = !DILocation(line: 54, column: 5, scope: !789)
!806 = !DILocation(line: 55, column: 1, scope: !782)
!807 = !DISubprogram(name: "extstore_delete", scope: !72, file: !72, line: 113, type: !808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!808 = !DISubroutineType(types: !809)
!809 = !{!141, !116, !7, !156, !7, !7}
!810 = distinct !DISubprogram(name: "process_extstore_stats", scope: !3, file: !3, line: 63, type: !811, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !821)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !813, !567}
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "ADD_STAT", file: !6, line: 189, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !817, !819, !817, !820, !548}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!821 = !{!822, !823, !824, !825, !829, !830, !831, !832, !860}
!822 = !DILocalVariable(name: "add_stats", arg: 1, scope: !810, file: !3, line: 63, type: !813)
!823 = !DILocalVariable(name: "c", arg: 2, scope: !810, file: !3, line: 63, type: !567)
!824 = !DILocalVariable(name: "i", scope: !810, file: !3, line: 64, type: !141)
!825 = !DILocalVariable(name: "key_str", scope: !810, file: !3, line: 65, type: !826)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 1024, elements: !827)
!827 = !{!828}
!828 = !DISubrange(count: 128)
!829 = !DILocalVariable(name: "val_str", scope: !810, file: !3, line: 66, type: !826)
!830 = !DILocalVariable(name: "klen", scope: !810, file: !3, line: 67, type: !141)
!831 = !DILocalVariable(name: "vlen", scope: !810, file: !3, line: 67, type: !141)
!832 = !DILocalVariable(name: "st", scope: !810, file: !3, line: 68, type: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extstore_stats", file: !72, line: 20, size: 1152, elements: !834)
!834 = !{!835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "page_allocs", scope: !833, file: !72, line: 21, baseType: !156, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "page_count", scope: !833, file: !72, line: 22, baseType: !156, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "page_evictions", scope: !833, file: !72, line: 23, baseType: !156, size: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "page_reclaims", scope: !833, file: !72, line: 24, baseType: !156, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "page_size", scope: !833, file: !72, line: 25, baseType: !156, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "pages_free", scope: !833, file: !72, line: 26, baseType: !156, size: 64, offset: 320)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pages_used", scope: !833, file: !72, line: 27, baseType: !156, size: 64, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "objects_evicted", scope: !833, file: !72, line: 28, baseType: !156, size: 64, offset: 448)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "objects_read", scope: !833, file: !72, line: 29, baseType: !156, size: 64, offset: 512)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "objects_written", scope: !833, file: !72, line: 30, baseType: !156, size: 64, offset: 576)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "objects_used", scope: !833, file: !72, line: 31, baseType: !156, size: 64, offset: 640)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_evicted", scope: !833, file: !72, line: 32, baseType: !156, size: 64, offset: 704)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !833, file: !72, line: 33, baseType: !156, size: 64, offset: 768)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_read", scope: !833, file: !72, line: 34, baseType: !156, size: 64, offset: 832)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_used", scope: !833, file: !72, line: 35, baseType: !156, size: 64, offset: 896)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_fragmented", scope: !833, file: !72, line: 36, baseType: !156, size: 64, offset: 960)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "io_queue", scope: !833, file: !72, line: 37, baseType: !156, size: 64, offset: 1024)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "page_data", scope: !833, file: !72, line: 38, baseType: !853, size: 64, offset: 1088)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extstore_page_data", file: !72, line: 7, size: 192, elements: !855)
!855 = !{!856, !857, !858, !859}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !854, file: !72, line: 8, baseType: !156, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_used", scope: !854, file: !72, line: 9, baseType: !156, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "bucket", scope: !854, file: !72, line: 10, baseType: !7, size: 32, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "free_bucket", scope: !854, file: !72, line: 11, baseType: !7, size: 32, offset: 160)
!860 = !DILocalVariable(name: "storage", scope: !810, file: !3, line: 72, type: !116)
!861 = !DILocation(line: 0, scope: !810)
!862 = !DILocation(line: 65, column: 5, scope: !810)
!863 = !DILocation(line: 65, column: 10, scope: !810)
!864 = !DILocation(line: 66, column: 5, scope: !810)
!865 = !DILocation(line: 66, column: 10, scope: !810)
!866 = !DILocation(line: 68, column: 5, scope: !810)
!867 = !DILocation(line: 68, column: 27, scope: !810)
!868 = !DILocation(line: 70, column: 5, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 70, column: 5)
!870 = distinct !DILexicalBlock(scope: !810, file: !3, line: 70, column: 5)
!871 = !DILocation(line: 70, column: 5, scope: !870)
!872 = !DILocation(line: 72, column: 24, scope: !810)
!873 = !{!874, !875, i64 456}
!874 = !{!"conn", !875, i64 0, !769, i64 8, !876, i64 12, !876, i64 13, !876, i64 14, !876, i64 15, !876, i64 16, !876, i64 17, !876, i64 18, !761, i64 20, !761, i64 24, !769, i64 28, !877, i64 32, !764, i64 160, !764, i64 162, !875, i64 168, !875, i64 176, !769, i64 184, !769, i64 188, !875, i64 192, !875, i64 200, !875, i64 208, !769, i64 216, !875, i64 224, !769, i64 232, !769, i64 236, !761, i64 240, !769, i64 312, !761, i64 316, !761, i64 320, !761, i64 324, !769, i64 328, !882, i64 332, !769, i64 360, !876, i64 364, !884, i64 368, !761, i64 392, !881, i64 416, !881, i64 424, !764, i64 432, !769, i64 436, !769, i64 440, !875, i64 448, !875, i64 456, !875, i64 464, !875, i64 472, !875, i64 480, !875, i64 488}
!875 = !{!"any pointer", !761, i64 0}
!876 = !{!"_Bool", !761, i64 0}
!877 = !{!"event", !878, i64 0, !761, i64 40, !769, i64 56, !875, i64 64, !761, i64 72, !764, i64 104, !764, i64 106, !880, i64 112}
!878 = !{!"event_callback", !879, i64 0, !764, i64 16, !761, i64 18, !761, i64 19, !761, i64 24, !875, i64 32}
!879 = !{!"", !875, i64 0, !875, i64 8}
!880 = !{!"timeval", !881, i64 0, !881, i64 8}
!881 = !{!"long", !761, i64 0}
!882 = !{!"sockaddr_in6", !764, i64 0, !764, i64 2, !769, i64 4, !883, i64 8, !769, i64 24}
!883 = !{!"in6_addr", !761, i64 0}
!884 = !{!"", !875, i64 0, !881, i64 8, !881, i64 16}
!885 = !DILocation(line: 72, column: 32, scope: !810)
!886 = !{!887, !875, i64 6776}
!887 = !{!"", !881, i64 0, !875, i64 8, !877, i64 16, !769, i64 144, !888, i64 152, !761, i64 6600, !875, i64 6744, !875, i64 6752, !875, i64 6760, !875, i64 6768, !875, i64 6776, !875, i64 6784, !875, i64 6792, !769, i64 6800}
!888 = !{!"thread_stats", !761, i64 0, !881, i64 40, !881, i64 48, !881, i64 56, !881, i64 64, !881, i64 72, !881, i64 80, !881, i64 88, !881, i64 96, !881, i64 104, !881, i64 112, !881, i64 120, !881, i64 128, !881, i64 136, !881, i64 144, !881, i64 152, !881, i64 160, !881, i64 168, !881, i64 176, !881, i64 184, !881, i64 192, !881, i64 200, !881, i64 208, !881, i64 216, !881, i64 224, !881, i64 232, !881, i64 240, !881, i64 248, !881, i64 256, !881, i64 264, !881, i64 272, !761, i64 280, !761, i64 4376, !881, i64 6424, !881, i64 6432, !881, i64 6440}
!889 = !DILocation(line: 73, column: 17, scope: !890)
!890 = distinct !DILexicalBlock(scope: !810, file: !3, line: 73, column: 9)
!891 = !DILocation(line: 73, column: 9, scope: !810)
!892 = !DILocation(line: 76, column: 5, scope: !810)
!893 = !DILocation(line: 77, column: 30, scope: !810)
!894 = !{!895, !881, i64 8}
!895 = !{!"extstore_stats", !881, i64 0, !881, i64 8, !881, i64 16, !881, i64 24, !881, i64 32, !881, i64 40, !881, i64 48, !881, i64 56, !881, i64 64, !881, i64 72, !881, i64 80, !881, i64 88, !881, i64 96, !881, i64 104, !881, i64 112, !881, i64 120, !881, i64 128, !875, i64 136}
!896 = !DILocation(line: 77, column: 20, scope: !810)
!897 = !DILocation(line: 77, column: 8, scope: !810)
!898 = !DILocation(line: 77, column: 18, scope: !810)
!899 = !{!895, !875, i64 136}
!900 = !DILocation(line: 78, column: 5, scope: !810)
!901 = !DILocation(line: 80, column: 24, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 80, column: 5)
!903 = distinct !DILexicalBlock(scope: !810, file: !3, line: 80, column: 5)
!904 = !DILocation(line: 80, column: 19, scope: !902)
!905 = !DILocation(line: 80, column: 5, scope: !903)
!906 = !DILocation(line: 81, column: 9, scope: !907)
!907 = distinct !DILexicalBlock(scope: !902, file: !3, line: 80, column: 41)
!908 = !{!909, !881, i64 0}
!909 = !{!"extstore_page_data", !881, i64 0, !881, i64 8, !769, i64 16, !769, i64 20}
!910 = !DILocation(line: 83, column: 9, scope: !907)
!911 = !{!909, !881, i64 8}
!912 = !DILocation(line: 85, column: 9, scope: !907)
!913 = !{!909, !769, i64 16}
!914 = !DILocation(line: 87, column: 9, scope: !907)
!915 = !{!909, !769, i64 20}
!916 = !DILocation(line: 80, column: 37, scope: !902)
!917 = distinct !{!917, !905, !918, !919}
!918 = !DILocation(line: 89, column: 5, scope: !903)
!919 = !{!"llvm.loop.mustprogress"}
!920 = !DILocation(line: 90, column: 1, scope: !810)
!921 = !DISubprogram(name: "extstore_get_stats", scope: !72, file: !72, line: 114, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !116, !924}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!925 = !DISubprogram(name: "calloc", scope: !926, file: !926, line: 542, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!926 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!927 = !DISubroutineType(types: !928)
!928 = !{!116, !406, !406}
!929 = !DISubprogram(name: "extstore_get_page_data", scope: !72, file: !72, line: 118, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!930 = !DISubprogram(name: "snprintf", scope: !931, file: !931, line: 354, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!931 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!932 = !DISubroutineType(types: !933)
!933 = !{!141, !934, !406, !935, null}
!934 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !114)
!935 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !817)
!936 = distinct !DISubprogram(name: "storage_stats", scope: !3, file: !3, line: 93, type: !811, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !937)
!937 = !{!938, !939, !940}
!938 = !DILocalVariable(name: "add_stats", arg: 1, scope: !936, file: !3, line: 93, type: !813)
!939 = !DILocalVariable(name: "c", arg: 2, scope: !936, file: !3, line: 93, type: !567)
!940 = !DILocalVariable(name: "st", scope: !936, file: !3, line: 94, type: !833)
!941 = !DILocation(line: 0, scope: !936)
!942 = !DILocation(line: 94, column: 5, scope: !936)
!943 = !DILocation(line: 94, column: 27, scope: !936)
!944 = !DILocation(line: 95, column: 12, scope: !945)
!945 = distinct !DILexicalBlock(scope: !936, file: !3, line: 95, column: 9)
!946 = !DILocation(line: 95, column: 20, scope: !945)
!947 = !DILocation(line: 95, column: 9, scope: !945)
!948 = !DILocation(line: 95, column: 9, scope: !936)
!949 = !DILocation(line: 96, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !945, file: !3, line: 95, column: 29)
!951 = !DILocation(line: 97, column: 9, scope: !950)
!952 = !{!953, !881, i64 152}
!953 = !{!"stats", !881, i64 0, !881, i64 8, !881, i64 16, !881, i64 24, !881, i64 32, !881, i64 40, !881, i64 48, !881, i64 56, !881, i64 64, !881, i64 72, !881, i64 80, !881, i64 88, !881, i64 96, !881, i64 104, !881, i64 112, !881, i64 120, !881, i64 128, !881, i64 136, !881, i64 144, !881, i64 152, !881, i64 160, !881, i64 168, !880, i64 176, !881, i64 192, !881, i64 200}
!954 = !DILocation(line: 98, column: 9, scope: !950)
!955 = !{!953, !881, i64 160}
!956 = !DILocation(line: 99, column: 9, scope: !950)
!957 = !{!953, !881, i64 168}
!958 = !DILocation(line: 100, column: 9, scope: !950)
!959 = !DILocation(line: 101, column: 31, scope: !950)
!960 = !DILocation(line: 101, column: 39, scope: !950)
!961 = !DILocation(line: 101, column: 9, scope: !950)
!962 = !DILocation(line: 102, column: 9, scope: !950)
!963 = !{!895, !881, i64 0}
!964 = !DILocation(line: 103, column: 9, scope: !950)
!965 = !{!895, !881, i64 16}
!966 = !DILocation(line: 104, column: 9, scope: !950)
!967 = !{!895, !881, i64 24}
!968 = !DILocation(line: 105, column: 9, scope: !950)
!969 = !{!895, !881, i64 40}
!970 = !DILocation(line: 106, column: 9, scope: !950)
!971 = !{!895, !881, i64 48}
!972 = !DILocation(line: 107, column: 9, scope: !950)
!973 = !{!895, !881, i64 56}
!974 = !DILocation(line: 108, column: 9, scope: !950)
!975 = !{!895, !881, i64 64}
!976 = !DILocation(line: 109, column: 9, scope: !950)
!977 = !{!895, !881, i64 72}
!978 = !DILocation(line: 110, column: 9, scope: !950)
!979 = !{!895, !881, i64 80}
!980 = !DILocation(line: 111, column: 9, scope: !950)
!981 = !{!895, !881, i64 88}
!982 = !DILocation(line: 112, column: 9, scope: !950)
!983 = !{!895, !881, i64 96}
!984 = !DILocation(line: 113, column: 9, scope: !950)
!985 = !{!895, !881, i64 104}
!986 = !DILocation(line: 114, column: 9, scope: !950)
!987 = !{!895, !881, i64 112}
!988 = !DILocation(line: 115, column: 9, scope: !950)
!989 = !{!895, !881, i64 120}
!990 = !DILocation(line: 116, column: 9, scope: !950)
!991 = !{!895, !881, i64 32}
!992 = !DILocation(line: 117, column: 9, scope: !950)
!993 = !{!895, !881, i64 128}
!994 = !DILocation(line: 118, column: 5, scope: !950)
!995 = !DILocation(line: 120, column: 1, scope: !936)
!996 = !DISubprogram(name: "STATS_LOCK", scope: !6, file: !6, line: 991, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!997 = !DISubroutineType(types: !998)
!998 = !{null}
!999 = !DISubprogram(name: "append_stat", scope: !6, file: !6, line: 1001, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !817, !813, !567, !817, null}
!1002 = !DISubprogram(name: "STATS_UNLOCK", scope: !6, file: !6, line: 992, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1003 = distinct !DISubprogram(name: "storage_get_item", scope: !3, file: !3, line: 239, type: !1004, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1006)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!141, !567, !435, !594}
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1019, !1020, !1021, !1024, !1025, !1026}
!1007 = !DILocalVariable(name: "c", arg: 1, scope: !1003, file: !3, line: 239, type: !567)
!1008 = !DILocalVariable(name: "it", arg: 2, scope: !1003, file: !3, line: 239, type: !435)
!1009 = !DILocalVariable(name: "resp", arg: 3, scope: !1003, file: !3, line: 239, type: !594)
!1010 = !DILocalVariable(name: "hdr", scope: !1003, file: !3, line: 244, type: !106)
!1011 = !DILocalVariable(name: "q", scope: !1003, file: !3, line: 246, type: !363)
!1012 = !DILocalVariable(name: "ntotal", scope: !1003, file: !3, line: 247, type: !406)
!1013 = !DILocalVariable(name: "clsid", scope: !1003, file: !3, line: 248, type: !7)
!1014 = !DILocalVariable(name: "new_it", scope: !1003, file: !3, line: 249, type: !435)
!1015 = !DILocalVariable(name: "chunked", scope: !1003, file: !3, line: 250, type: !450)
!1016 = !DILocalVariable(name: "flags", scope: !1017, file: !3, line: 253, type: !119)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 251, column: 48)
!1018 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 251, column: 9)
!1019 = !DILocalVariable(name: "p", scope: !1003, file: !3, line: 266, type: !676)
!1020 = !DILocalVariable(name: "eio", scope: !1003, file: !3, line: 278, type: !705)
!1021 = !DILocalVariable(name: "ciovcnt", scope: !1022, file: !3, line: 282, type: !7)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 281, column: 18)
!1023 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 281, column: 9)
!1024 = !DILocalVariable(name: "remain", scope: !1022, file: !3, line: 283, type: !406)
!1025 = !DILocalVariable(name: "chunk", scope: !1022, file: !3, line: 284, type: !123)
!1026 = !DILocalVariable(name: "iovtotal", scope: !1003, file: !3, line: 324, type: !141)
!1027 = !DILocation(line: 0, scope: !1003)
!1028 = !DILocation(line: 244, column: 33, scope: !1003)
!1029 = !DILocation(line: 246, column: 21, scope: !1003)
!1030 = !DILocation(line: 247, column: 21, scope: !1003)
!1031 = !DILocation(line: 248, column: 26, scope: !1003)
!1032 = !DILocation(line: 251, column: 27, scope: !1018)
!1033 = !{!1034, !769, i64 128}
!1034 = !{!"settings", !881, i64 0, !769, i64 8, !769, i64 12, !769, i64 16, !875, i64 24, !769, i64 32, !769, i64 36, !881, i64 40, !769, i64 48, !875, i64 56, !875, i64 64, !769, i64 72, !1035, i64 80, !769, i64 88, !769, i64 92, !769, i64 96, !761, i64 100, !769, i64 104, !769, i64 108, !876, i64 112, !761, i64 116, !769, i64 120, !769, i64 124, !769, i64 128, !769, i64 132, !769, i64 136, !876, i64 140, !876, i64 141, !876, i64 142, !876, i64 143, !876, i64 144, !876, i64 145, !769, i64 148, !1035, i64 152, !769, i64 160, !769, i64 164, !876, i64 168, !769, i64 172, !876, i64 176, !876, i64 177, !875, i64 184, !769, i64 192, !769, i64 196, !769, i64 200, !769, i64 204, !1035, i64 208, !1035, i64 216, !769, i64 224, !876, i64 228, !769, i64 232, !769, i64 236, !769, i64 240, !769, i64 244, !769, i64 248, !876, i64 252, !876, i64 253, !876, i64 254, !876, i64 255, !769, i64 256, !769, i64 260, !769, i64 264, !769, i64 268, !769, i64 272, !769, i64 276, !769, i64 280, !769, i64 284, !769, i64 288, !769, i64 292, !1035, i64 296, !1035, i64 304, !876, i64 312, !769, i64 316, !769, i64 320, !875, i64 328, !769, i64 336}
!1035 = !{!"double", !761, i64 0}
!1036 = !DILocation(line: 251, column: 18, scope: !1018)
!1037 = !DILocation(line: 251, column: 16, scope: !1018)
!1038 = !DILocation(line: 251, column: 9, scope: !1003)
!1039 = !DILocation(line: 254, column: 9, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 254, column: 9)
!1041 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 254, column: 9)
!1042 = !DILocation(line: 254, column: 9, scope: !1041)
!1043 = !DILocation(line: 254, column: 9, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 254, column: 9)
!1045 = !DILocation(line: 0, scope: !1017)
!1046 = !DILocation(line: 254, column: 9, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 254, column: 9)
!1048 = !DILocation(line: 255, column: 47, scope: !1017)
!1049 = !DILocation(line: 255, column: 29, scope: !1017)
!1050 = !DILocation(line: 255, column: 43, scope: !1017)
!1051 = !DILocation(line: 0, scope: !1040)
!1052 = !DILocation(line: 255, column: 64, scope: !1017)
!1053 = !DILocation(line: 255, column: 77, scope: !1017)
!1054 = !DILocation(line: 255, column: 18, scope: !1017)
!1055 = !DILocation(line: 256, column: 9, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 256, column: 9)
!1057 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 256, column: 9)
!1058 = !DILocation(line: 256, column: 9, scope: !1057)
!1059 = !DILocation(line: 259, column: 18, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 258, column: 12)
!1061 = !DILocation(line: 261, column: 16, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 261, column: 9)
!1063 = !DILocation(line: 261, column: 9, scope: !1003)
!1064 = !DILocation(line: 262, column: 9, scope: !1062)
!1065 = !DILocation(line: 264, column: 27, scope: !1003)
!1066 = !DILocation(line: 264, column: 13, scope: !1003)
!1067 = !DILocation(line: 264, column: 25, scope: !1003)
!1068 = !DILocation(line: 266, column: 49, scope: !1003)
!1069 = !DILocation(line: 266, column: 57, scope: !1003)
!1070 = !{!887, !875, i64 6768}
!1071 = !DILocation(line: 266, column: 31, scope: !1003)
!1072 = !DILocation(line: 269, column: 5, scope: !1003)
!1073 = !DILocation(line: 270, column: 8, scope: !1003)
!1074 = !DILocation(line: 270, column: 15, scope: !1003)
!1075 = !{!1076, !876, i64 111}
!1076 = !{!"_io_pending_storage_t", !769, i64 0, !875, i64 8, !875, i64 16, !875, i64 24, !875, i64 32, !1077, i64 40, !769, i64 104, !876, i64 108, !876, i64 109, !876, i64 110, !876, i64 111}
!1077 = !{!"_obj_io", !875, i64 0, !875, i64 8, !875, i64 16, !875, i64 24, !769, i64 32, !769, i64 36, !769, i64 40, !769, i64 44, !764, i64 48, !761, i64 52, !875, i64 56}
!1078 = !DILocation(line: 271, column: 8, scope: !1003)
!1079 = !DILocation(line: 271, column: 13, scope: !1003)
!1080 = !{!1076, !876, i64 109}
!1081 = !DILocation(line: 272, column: 8, scope: !1003)
!1082 = !DILocation(line: 272, column: 15, scope: !1003)
!1083 = !{!1076, !876, i64 110}
!1084 = !DILocation(line: 273, column: 21, scope: !1003)
!1085 = !{!874, !876, i64 364}
!1086 = !{i8 0, i8 2}
!1087 = !DILocation(line: 273, column: 8, scope: !1003)
!1088 = !DILocation(line: 273, column: 16, scope: !1003)
!1089 = !{!1076, !876, i64 108}
!1090 = !DILocation(line: 275, column: 8, scope: !1003)
!1091 = !DILocation(line: 275, column: 15, scope: !1003)
!1092 = !{!1076, !875, i64 32}
!1093 = !DILocation(line: 276, column: 8, scope: !1003)
!1094 = !DILocation(line: 276, column: 13, scope: !1003)
!1095 = !{!1076, !875, i64 24}
!1096 = !DILocation(line: 277, column: 8, scope: !1003)
!1097 = !DILocation(line: 277, column: 22, scope: !1003)
!1098 = !{!1076, !769, i64 0}
!1099 = !DILocation(line: 278, column: 23, scope: !1003)
!1100 = !DILocation(line: 281, column: 9, scope: !1003)
!1101 = !DILocation(line: 0, scope: !1022)
!1102 = !DILocation(line: 283, column: 33, scope: !1022)
!1103 = !DILocation(line: 284, column: 44, scope: !1022)
!1104 = !DILocation(line: 289, column: 20, scope: !1022)
!1105 = !DILocation(line: 289, column: 14, scope: !1022)
!1106 = !DILocation(line: 289, column: 18, scope: !1022)
!1107 = !{!1077, !875, i64 24}
!1108 = !DILocation(line: 290, column: 22, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 290, column: 13)
!1110 = !DILocation(line: 290, column: 13, scope: !1022)
!1111 = !DILocation(line: 291, column: 25, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 290, column: 31)
!1113 = !DILocation(line: 291, column: 13, scope: !1112)
!1114 = !DILocation(line: 292, column: 30, scope: !1112)
!1115 = !DILocation(line: 292, column: 38, scope: !1112)
!1116 = !DILocation(line: 292, column: 13, scope: !1112)
!1117 = !DILocation(line: 293, column: 13, scope: !1112)
!1118 = !DILocation(line: 297, column: 30, scope: !1022)
!1119 = !{!1120, !875, i64 0}
!1120 = !{!"iovec", !875, i64 0, !881, i64 8}
!1121 = !DILocation(line: 298, column: 31, scope: !1022)
!1122 = !DILocation(line: 298, column: 51, scope: !1022)
!1123 = !DILocation(line: 298, column: 21, scope: !1022)
!1124 = !DILocation(line: 298, column: 29, scope: !1022)
!1125 = !{!1120, !881, i64 8}
!1126 = !DILocation(line: 301, column: 23, scope: !1022)
!1127 = !DILocation(line: 301, column: 9, scope: !1022)
!1128 = !DILocation(line: 283, column: 25, scope: !1022)
!1129 = !DILocation(line: 284, column: 29, scope: !1022)
!1130 = !DILocation(line: 302, column: 21, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 301, column: 28)
!1132 = !DILocation(line: 304, column: 23, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 304, column: 17)
!1134 = !DILocation(line: 304, column: 31, scope: !1133)
!1135 = !DILocation(line: 304, column: 34, scope: !1133)
!1136 = !DILocation(line: 304, column: 42, scope: !1133)
!1137 = !DILocation(line: 304, column: 17, scope: !1131)
!1138 = !DILocation(line: 305, column: 29, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 304, column: 55)
!1140 = !DILocation(line: 305, column: 17, scope: !1139)
!1141 = !DILocation(line: 306, column: 27, scope: !1139)
!1142 = !DILocation(line: 306, column: 17, scope: !1139)
!1143 = !DILocation(line: 308, column: 26, scope: !1139)
!1144 = !DILocation(line: 309, column: 34, scope: !1139)
!1145 = !DILocation(line: 309, column: 42, scope: !1139)
!1146 = !DILocation(line: 309, column: 17, scope: !1139)
!1147 = !DILocation(line: 310, column: 17, scope: !1139)
!1148 = !DILocation(line: 312, column: 42, scope: !1131)
!1149 = !DILocation(line: 312, column: 18, scope: !1131)
!1150 = !DILocation(line: 312, column: 31, scope: !1131)
!1151 = !DILocation(line: 312, column: 40, scope: !1131)
!1152 = !DILocation(line: 313, column: 58, scope: !1131)
!1153 = !DILocation(line: 313, column: 51, scope: !1131)
!1154 = !DILocation(line: 313, column: 49, scope: !1131)
!1155 = !DILocation(line: 313, column: 41, scope: !1131)
!1156 = !DILocation(line: 313, column: 75, scope: !1131)
!1157 = !DILocation(line: 313, column: 82, scope: !1131)
!1158 = !DILocation(line: 313, column: 18, scope: !1131)
!1159 = !DILocation(line: 314, column: 37, scope: !1131)
!1160 = !DILocation(line: 313, column: 31, scope: !1131)
!1161 = !DILocation(line: 313, column: 39, scope: !1131)
!1162 = !DILocation(line: 314, column: 35, scope: !1131)
!1163 = !DILocation(line: 314, column: 27, scope: !1131)
!1164 = !DILocation(line: 314, column: 52, scope: !1131)
!1165 = !DILocation(line: 315, column: 30, scope: !1131)
!1166 = !DILocation(line: 315, column: 23, scope: !1131)
!1167 = !DILocation(line: 314, column: 61, scope: !1131)
!1168 = !DILocation(line: 314, column: 68, scope: !1131)
!1169 = !DILocation(line: 314, column: 20, scope: !1131)
!1170 = !DILocation(line: 314, column: 25, scope: !1131)
!1171 = !DILocation(line: 315, column: 20, scope: !1131)
!1172 = !DILocation(line: 316, column: 20, scope: !1131)
!1173 = distinct !{!1173, !1127, !1174, !919}
!1174 = !DILocation(line: 317, column: 9, scope: !1022)
!1175 = !DILocation(line: 319, column: 23, scope: !1022)
!1176 = !DILocation(line: 319, column: 14, scope: !1022)
!1177 = !DILocation(line: 319, column: 21, scope: !1022)
!1178 = !{!1077, !769, i64 32}
!1179 = !DILocation(line: 320, column: 5, scope: !1022)
!1180 = !DILocation(line: 323, column: 27, scope: !1003)
!1181 = !{!1182, !761, i64 116}
!1182 = !{!"_mc_resp", !875, i64 0, !875, i64 8, !769, i64 16, !769, i64 20, !875, i64 24, !875, i64 32, !875, i64 40, !761, i64 48, !769, i64 112, !761, i64 116, !761, i64 117, !876, i64 118, !876, i64 119, !764, i64 120, !764, i64 122, !764, i64 124, !882, i64 128, !769, i64 156, !761, i64 160}
!1183 = !DILocation(line: 323, column: 21, scope: !1003)
!1184 = !DILocation(line: 323, column: 8, scope: !1003)
!1185 = !DILocation(line: 323, column: 19, scope: !1003)
!1186 = !{!1076, !769, i64 104}
!1187 = !DILocation(line: 324, column: 24, scope: !1003)
!1188 = !{!874, !761, i64 316}
!1189 = !DILocation(line: 324, column: 33, scope: !1003)
!1190 = !DILocation(line: 324, column: 20, scope: !1003)
!1191 = !DILocation(line: 324, column: 55, scope: !1003)
!1192 = !DILocation(line: 324, column: 62, scope: !1003)
!1193 = !DILocation(line: 324, column: 68, scope: !1003)
!1194 = !DILocation(line: 324, column: 72, scope: !1003)
!1195 = !DILocation(line: 325, column: 9, scope: !1003)
!1196 = !DILocation(line: 326, column: 30, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 325, column: 18)
!1198 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 325, column: 9)
!1199 = !DILocation(line: 326, column: 36, scope: !1197)
!1200 = !DILocation(line: 326, column: 9, scope: !1197)
!1201 = !DILocation(line: 327, column: 5, scope: !1197)
!1202 = !DILocation(line: 328, column: 22, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 327, column: 12)
!1204 = !DILocation(line: 328, column: 9, scope: !1203)
!1205 = !DILocation(line: 332, column: 11, scope: !1003)
!1206 = !DILocation(line: 332, column: 22, scope: !1003)
!1207 = !{!1182, !875, i64 32}
!1208 = !DILocation(line: 334, column: 10, scope: !1003)
!1209 = !DILocation(line: 334, column: 14, scope: !1003)
!1210 = !{!1077, !875, i64 16}
!1211 = !DILocation(line: 335, column: 8, scope: !1003)
!1212 = !DILocation(line: 335, column: 10, scope: !1003)
!1213 = !{!1076, !875, i64 16}
!1214 = !DILocation(line: 338, column: 20, scope: !1003)
!1215 = !{!1216, !875, i64 8}
!1216 = !{!"io_queue_s", !875, i64 0, !875, i64 8, !769, i64 16, !769, i64 20}
!1217 = !DILocation(line: 338, column: 10, scope: !1003)
!1218 = !DILocation(line: 338, column: 15, scope: !1003)
!1219 = !{!1077, !875, i64 8}
!1220 = !DILocation(line: 339, column: 18, scope: !1003)
!1221 = !DILocation(line: 342, column: 5, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 342, column: 5)
!1223 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 342, column: 5)
!1224 = !{!1216, !769, i64 16}
!1225 = !DILocation(line: 342, column: 5, scope: !1223)
!1226 = !DILocation(line: 343, column: 13, scope: !1003)
!1227 = !DILocation(line: 345, column: 10, scope: !1003)
!1228 = !DILocation(line: 345, column: 15, scope: !1003)
!1229 = !{!1077, !875, i64 0}
!1230 = !DILocation(line: 353, column: 30, scope: !1003)
!1231 = !DILocation(line: 353, column: 10, scope: !1003)
!1232 = !DILocation(line: 353, column: 23, scope: !1003)
!1233 = !{!1077, !769, i64 36}
!1234 = !DILocation(line: 354, column: 25, scope: !1003)
!1235 = !DILocation(line: 354, column: 10, scope: !1003)
!1236 = !DILocation(line: 354, column: 18, scope: !1003)
!1237 = !{!1077, !764, i64 48}
!1238 = !DILocation(line: 355, column: 24, scope: !1003)
!1239 = !{!768, !769, i64 4}
!1240 = !DILocation(line: 355, column: 10, scope: !1003)
!1241 = !DILocation(line: 355, column: 17, scope: !1003)
!1242 = !{!1077, !769, i64 44}
!1243 = !DILocation(line: 357, column: 16, scope: !1003)
!1244 = !DILocation(line: 357, column: 10, scope: !1003)
!1245 = !DILocation(line: 357, column: 14, scope: !1003)
!1246 = !{!1077, !769, i64 40}
!1247 = !DILocation(line: 358, column: 10, scope: !1003)
!1248 = !DILocation(line: 358, column: 15, scope: !1003)
!1249 = !{!1077, !761, i64 52}
!1250 = !DILocation(line: 359, column: 10, scope: !1003)
!1251 = !DILocation(line: 359, column: 13, scope: !1003)
!1252 = !{!1077, !875, i64 56}
!1253 = !DILocation(line: 364, column: 28, scope: !1003)
!1254 = !DILocation(line: 364, column: 42, scope: !1003)
!1255 = !DILocation(line: 364, column: 5, scope: !1003)
!1256 = !DILocation(line: 365, column: 8, scope: !1003)
!1257 = !DILocation(line: 365, column: 22, scope: !1003)
!1258 = !DILocation(line: 365, column: 34, scope: !1003)
!1259 = !{!887, !881, i64 384}
!1260 = !DILocation(line: 366, column: 44, scope: !1003)
!1261 = !DILocation(line: 366, column: 5, scope: !1003)
!1262 = !DILocation(line: 369, column: 1, scope: !1003)
!1263 = !DISubprogram(name: "conn_io_queue_get", scope: !6, file: !6, line: 925, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!363, !567, !141}
!1266 = !DISubprogram(name: "slabs_clsid", scope: !1267, file: !1267, line: 21, type: !1268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1267 = !DIFile(filename: "./slabs.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "28867aba1f41c79140864d76faedcb32")
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!7, !1270}
!1270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!1271 = !DISubprogram(name: "item_alloc", scope: !6, file: !6, line: 971, type: !1272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!435, !114, !406, !141, !138, !141}
!1274 = !DISubprogram(name: "do_item_alloc_pull", scope: !1275, file: !1275, line: 16, type: !1276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1275 = !DIFile(filename: "./items.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "24f8c54717bd547418db2338c9044014")
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!435, !1270, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1279 = !DISubprogram(name: "do_cache_alloc", scope: !387, file: !387, line: 79, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!116, !385}
!1282 = !DISubprogram(name: "memset", scope: !1283, file: !1283, line: 61, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1283 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!116, !116, !141, !406}
!1286 = !DISubprogram(name: "malloc", scope: !926, file: !926, line: 539, type: !1287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!116, !406}
!1289 = !DISubprogram(name: "item_remove", scope: !6, file: !6, line: 978, type: !1290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !435}
!1292 = !DISubprogram(name: "do_cache_free", scope: !387, file: !387, line: 90, type: !1293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{null, !385, !116}
!1295 = !DISubprogram(name: "do_item_alloc_chunk", scope: !1275, file: !1275, line: 15, type: !1296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!123, !123, !1270}
!1298 = !DISubprogram(name: "free", scope: !926, file: !926, line: 565, type: !1299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{null, !116}
!1301 = !DISubprogram(name: "resp_add_chunked_iov", scope: !6, file: !6, line: 1020, type: !1302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !594, !548, !141}
!1304 = !DISubprogram(name: "resp_add_iov", scope: !6, file: !6, line: 1019, type: !1302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1305 = distinct !DISubprogram(name: "_storage_get_item_cb", scope: !3, file: !3, line: 128, type: !703, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1318, !1319, !1320, !1327, !1328, !1329, !1331}
!1307 = !DILocalVariable(name: "e", arg: 1, scope: !1305, file: !3, line: 128, type: !116)
!1308 = !DILocalVariable(name: "io", arg: 2, scope: !1305, file: !3, line: 128, type: !705)
!1309 = !DILocalVariable(name: "ret", arg: 3, scope: !1305, file: !3, line: 128, type: !141)
!1310 = !DILocalVariable(name: "p", scope: !1305, file: !3, line: 130, type: !676)
!1311 = !DILocalVariable(name: "resp", scope: !1305, file: !3, line: 131, type: !594)
!1312 = !DILocalVariable(name: "c", scope: !1305, file: !3, line: 132, type: !567)
!1313 = !DILocalVariable(name: "read_it", scope: !1305, file: !3, line: 134, type: !435)
!1314 = !DILocalVariable(name: "miss", scope: !1305, file: !3, line: 135, type: !450)
!1315 = !DILocalVariable(name: "crc2", scope: !1316, file: !3, line: 141, type: !119)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 140, column: 12)
!1317 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 138, column: 9)
!1318 = !DILocalVariable(name: "crc", scope: !1316, file: !3, line: 142, type: !119)
!1319 = !DILocalVariable(name: "x", scope: !1316, file: !3, line: 143, type: !141)
!1320 = !DILocalVariable(name: "header", scope: !1321, file: !3, line: 174, type: !711)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 173, column: 45)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 173, column: 17)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 167, column: 16)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 164, column: 13)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 163, column: 15)
!1326 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 163, column: 9)
!1327 = !DILocalVariable(name: "body_len", scope: !1321, file: !3, line: 178, type: !119)
!1328 = !DILocalVariable(name: "hdr_len", scope: !1321, file: !3, line: 179, type: !147)
!1329 = !DILocalVariable(name: "i", scope: !1330, file: !3, line: 192, type: !141)
!1330 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 191, column: 20)
!1331 = !DILocalVariable(name: "q", scope: !1305, file: !3, line: 232, type: !363)
!1332 = !DILocation(line: 0, scope: !1305)
!1333 = !DILocation(line: 130, column: 59, scope: !1305)
!1334 = !DILocation(line: 131, column: 24, scope: !1305)
!1335 = !DILocation(line: 132, column: 18, scope: !1305)
!1336 = !DILocation(line: 133, column: 5, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 133, column: 5)
!1338 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 133, column: 5)
!1339 = !DILocation(line: 133, column: 5, scope: !1338)
!1340 = !DILocation(line: 134, column: 33, scope: !1305)
!1341 = !DILocation(line: 138, column: 13, scope: !1317)
!1342 = !DILocation(line: 138, column: 9, scope: !1305)
!1343 = !DILocation(line: 139, column: 14, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 138, column: 18)
!1345 = !DILocation(line: 163, column: 9, scope: !1305)
!1346 = !DILocation(line: 142, column: 44, scope: !1316)
!1347 = !DILocation(line: 0, scope: !1316)
!1348 = !DILocation(line: 145, column: 17, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 145, column: 13)
!1350 = !DILocation(line: 145, column: 21, scope: !1349)
!1351 = !DILocation(line: 145, column: 13, scope: !1316)
!1352 = !DILocation(line: 147, column: 20, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 145, column: 30)
!1354 = !{!875, !875, i64 0}
!1355 = !DILocation(line: 147, column: 49, scope: !1353)
!1356 = !DILocation(line: 147, column: 57, scope: !1353)
!1357 = !DILocation(line: 147, column: 83, scope: !1353)
!1358 = !DILocation(line: 147, column: 90, scope: !1353)
!1359 = !DILocation(line: 149, column: 17, scope: !1353)
!1360 = !DILocation(line: 149, column: 24, scope: !1353)
!1361 = !DILocation(line: 149, column: 32, scope: !1353)
!1362 = !DILocation(line: 150, column: 33, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 150, column: 13)
!1364 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 150, column: 13)
!1365 = !DILocation(line: 150, column: 27, scope: !1363)
!1366 = !DILocation(line: 150, column: 13, scope: !1364)
!1367 = !DILocation(line: 151, column: 24, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 150, column: 46)
!1369 = !DILocation(line: 151, column: 56, scope: !1368)
!1370 = !DILocation(line: 151, column: 77, scope: !1368)
!1371 = !DILocation(line: 150, column: 42, scope: !1363)
!1372 = distinct !{!1372, !1366, !1373, !919}
!1373 = !DILocation(line: 152, column: 13, scope: !1364)
!1374 = !DILocation(line: 151, column: 49, scope: !1368)
!1375 = !DILocation(line: 0, scope: !1353)
!1376 = !DILocation(line: 153, column: 9, scope: !1353)
!1377 = !DILocation(line: 154, column: 20, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 153, column: 16)
!1379 = !DILocation(line: 154, column: 45, scope: !1378)
!1380 = !DILocation(line: 154, column: 64, scope: !1378)
!1381 = !DILocation(line: 154, column: 60, scope: !1378)
!1382 = !DILocation(line: 154, column: 67, scope: !1378)
!1383 = !DILocation(line: 0, scope: !1349)
!1384 = !DILocation(line: 157, column: 17, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 157, column: 13)
!1386 = !DILocation(line: 157, column: 13, scope: !1316)
!1387 = !DILocation(line: 158, column: 18, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 157, column: 26)
!1389 = !DILocation(line: 159, column: 16, scope: !1388)
!1390 = !DILocation(line: 159, column: 23, scope: !1388)
!1391 = !DILocation(line: 164, column: 16, scope: !1324)
!1392 = !DILocation(line: 164, column: 13, scope: !1325)
!1393 = !DILocation(line: 166, column: 13, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 164, column: 25)
!1395 = !DILocation(line: 166, column: 19, scope: !1394)
!1396 = !DILocation(line: 166, column: 24, scope: !1394)
!1397 = !{!1182, !876, i64 118}
!1398 = !DILocation(line: 167, column: 9, scope: !1394)
!1399 = !DILocation(line: 173, column: 20, scope: !1322)
!1400 = !DILocation(line: 173, column: 29, scope: !1322)
!1401 = !DILocation(line: 173, column: 17, scope: !1323)
!1402 = !DILocation(line: 174, column: 17, scope: !1321)
!1403 = !DILocation(line: 0, scope: !1321)
!1404 = !DILocation(line: 178, column: 37, scope: !1321)
!1405 = !DILocation(line: 179, column: 52, scope: !1321)
!1406 = !DILocation(line: 180, column: 42, scope: !1321)
!1407 = !DILocation(line: 180, column: 29, scope: !1321)
!1408 = !DILocation(line: 180, column: 54, scope: !1321)
!1409 = !DILocation(line: 180, column: 64, scope: !1321)
!1410 = !DILocation(line: 180, column: 62, scope: !1321)
!1411 = !DILocation(line: 180, column: 26, scope: !1321)
!1412 = !DILocation(line: 181, column: 23, scope: !1321)
!1413 = !DILocation(line: 181, column: 30, scope: !1321)
!1414 = !{!1182, !769, i64 20}
!1415 = !DILocation(line: 182, column: 41, scope: !1321)
!1416 = !DILocation(line: 183, column: 53, scope: !1321)
!1417 = !DILocation(line: 183, column: 34, scope: !1321)
!1418 = !DILocation(line: 183, column: 41, scope: !1321)
!1419 = !DILocation(line: 184, column: 44, scope: !1321)
!1420 = !DILocation(line: 184, column: 42, scope: !1321)
!1421 = !DILocation(line: 187, column: 30, scope: !1321)
!1422 = !DILocation(line: 187, column: 17, scope: !1321)
!1423 = !DILocation(line: 187, column: 42, scope: !1321)
!1424 = !DILocation(line: 187, column: 50, scope: !1321)
!1425 = !DILocation(line: 189, column: 40, scope: !1321)
!1426 = !DILocation(line: 189, column: 17, scope: !1321)
!1427 = !DILocation(line: 189, column: 44, scope: !1321)
!1428 = !DILocation(line: 189, column: 52, scope: !1321)
!1429 = !DILocation(line: 190, column: 23, scope: !1321)
!1430 = !DILocation(line: 190, column: 40, scope: !1321)
!1431 = !{!1182, !761, i64 117}
!1432 = !DILocation(line: 191, column: 13, scope: !1321)
!1433 = !DILocation(line: 195, column: 34, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 195, column: 21)
!1435 = !DILocation(line: 195, column: 42, scope: !1434)
!1436 = !DILocation(line: 196, column: 25, scope: !1434)
!1437 = !DILocation(line: 196, column: 35, scope: !1434)
!1438 = !DILocation(line: 196, column: 48, scope: !1434)
!1439 = !DILocation(line: 196, column: 28, scope: !1434)
!1440 = !DILocation(line: 196, column: 68, scope: !1434)
!1441 = !DILocation(line: 195, column: 21, scope: !1330)
!1442 = !DILocation(line: 199, column: 21, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 196, column: 74)
!1444 = !DILocation(line: 199, column: 27, scope: !1443)
!1445 = !DILocation(line: 199, column: 34, scope: !1443)
!1446 = !DILocation(line: 200, column: 42, scope: !1443)
!1447 = !DILocation(line: 201, column: 43, scope: !1443)
!1448 = !DILocation(line: 202, column: 27, scope: !1443)
!1449 = !DILocation(line: 202, column: 34, scope: !1443)
!1450 = !DILocation(line: 203, column: 17, scope: !1443)
!1451 = !DILocation(line: 0, scope: !1330)
!1452 = !DILocation(line: 206, column: 41, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 206, column: 21)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 206, column: 21)
!1455 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 203, column: 24)
!1456 = !DILocation(line: 206, column: 21, scope: !1454)
!1457 = !DILocation(line: 207, column: 54, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 206, column: 58)
!1459 = !DILocation(line: 207, column: 38, scope: !1458)
!1460 = !DILocation(line: 208, column: 46, scope: !1458)
!1461 = !DILocation(line: 209, column: 38, scope: !1458)
!1462 = !DILocation(line: 209, column: 47, scope: !1458)
!1463 = !DILocation(line: 206, column: 54, scope: !1453)
!1464 = !DILocation(line: 206, column: 35, scope: !1453)
!1465 = distinct !{!1465, !1456, !1466, !919}
!1466 = !DILocation(line: 210, column: 21, scope: !1454)
!1467 = !DILocation(line: 212, column: 23, scope: !1330)
!1468 = !DILocation(line: 212, column: 37, scope: !1330)
!1469 = !{!1182, !769, i64 112}
!1470 = !DILocation(line: 213, column: 23, scope: !1330)
!1471 = !DILocation(line: 213, column: 40, scope: !1330)
!1472 = !DILocation(line: 218, column: 9, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 218, column: 9)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 218, column: 9)
!1475 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 217, column: 12)
!1476 = !DILocation(line: 218, column: 9, scope: !1474)
!1477 = !DILocation(line: 221, column: 23, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 221, column: 13)
!1479 = !DILocation(line: 221, column: 32, scope: !1478)
!1480 = !DILocation(line: 221, column: 48, scope: !1478)
!1481 = !DILocation(line: 221, column: 13, scope: !1475)
!1482 = !DILocation(line: 222, column: 49, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 221, column: 54)
!1484 = !DILocation(line: 222, column: 26, scope: !1483)
!1485 = !DILocation(line: 222, column: 13, scope: !1483)
!1486 = !DILocation(line: 222, column: 38, scope: !1483)
!1487 = !DILocation(line: 222, column: 47, scope: !1483)
!1488 = !DILocation(line: 223, column: 9, scope: !1483)
!1489 = !DILocation(line: 0, scope: !1326)
!1490 = !DILocation(line: 227, column: 15, scope: !1305)
!1491 = !DILocation(line: 232, column: 42, scope: !1305)
!1492 = !DILocation(line: 232, column: 48, scope: !1305)
!1493 = !DILocation(line: 232, column: 21, scope: !1305)
!1494 = !DILocation(line: 233, column: 8, scope: !1305)
!1495 = !DILocation(line: 233, column: 13, scope: !1305)
!1496 = !DILocation(line: 234, column: 18, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 234, column: 9)
!1498 = !DILocation(line: 234, column: 9, scope: !1305)
!1499 = !DILocation(line: 235, column: 25, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 234, column: 24)
!1501 = !DILocation(line: 235, column: 9, scope: !1500)
!1502 = !DILocation(line: 236, column: 5, scope: !1500)
!1503 = !DILocation(line: 237, column: 1, scope: !1305)
!1504 = !DISubprogram(name: "pthread_mutex_lock", scope: !1505, file: !1505, line: 738, type: !1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1505 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!141, !1508}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!1509 = !DISubprogram(name: "pthread_mutex_unlock", scope: !1505, file: !1505, line: 756, type: !1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1510 = distinct !DISubprogram(name: "storage_submit_cb", scope: !3, file: !3, line: 371, type: !361, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1511)
!1511 = !{!1512}
!1512 = !DILocalVariable(name: "q", arg: 1, scope: !1510, file: !3, line: 371, type: !363)
!1513 = !DILocation(line: 0, scope: !1510)
!1514 = !DILocation(line: 373, column: 24, scope: !1510)
!1515 = !{!1216, !875, i64 0}
!1516 = !DILocation(line: 373, column: 32, scope: !1510)
!1517 = !DILocation(line: 373, column: 5, scope: !1510)
!1518 = !DILocation(line: 374, column: 1, scope: !1510)
!1519 = !DISubprogram(name: "extstore_submit", scope: !72, file: !72, line: 107, type: !1520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!141, !116, !705}
!1522 = distinct !DISubprogram(name: "storage_complete_cb", scope: !3, file: !3, line: 453, type: !361, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1523)
!1523 = !{!1524}
!1524 = !DILocalVariable(name: "q", arg: 1, scope: !1522, file: !3, line: 453, type: !363)
!1525 = !DILocation(line: 0, scope: !1522)
!1526 = !DILocation(line: 455, column: 8, scope: !1522)
!1527 = !DILocation(line: 455, column: 18, scope: !1522)
!1528 = !DILocation(line: 456, column: 5, scope: !1522)
!1529 = distinct !DISubprogram(name: "storage_finalize_cb", scope: !3, file: !3, line: 460, type: !375, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1530)
!1530 = !{!1531, !1532, !1533}
!1531 = !DILocalVariable(name: "pending", arg: 1, scope: !1529, file: !3, line: 460, type: !171)
!1532 = !DILocalVariable(name: "p", scope: !1529, file: !3, line: 462, type: !676)
!1533 = !DILocalVariable(name: "io", scope: !1529, file: !3, line: 463, type: !705)
!1534 = !DILocation(line: 0, scope: !1529)
!1535 = !DILocation(line: 461, column: 5, scope: !1529)
!1536 = !DILocation(line: 465, column: 13, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 465, column: 9)
!1538 = !DILocation(line: 465, column: 9, scope: !1537)
!1539 = !DILocation(line: 465, column: 9, scope: !1529)
!1540 = !DILocation(line: 466, column: 14, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 465, column: 18)
!1542 = !DILocation(line: 466, column: 9, scope: !1541)
!1543 = !DILocation(line: 467, column: 17, scope: !1541)
!1544 = !DILocation(line: 468, column: 5, scope: !1541)
!1545 = !DILocation(line: 470, column: 1, scope: !1529)
!1546 = distinct !DISubprogram(name: "recache_or_free", scope: !3, file: !3, line: 376, type: !375, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1547)
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553, !1554, !1557, !1558, !1561, !1564, !1565, !1568}
!1548 = !DILocalVariable(name: "pending", arg: 1, scope: !1546, file: !3, line: 376, type: !171)
!1549 = !DILocalVariable(name: "p", scope: !1546, file: !3, line: 378, type: !676)
!1550 = !DILocalVariable(name: "c", scope: !1546, file: !3, line: 380, type: !567)
!1551 = !DILocalVariable(name: "io", scope: !1546, file: !3, line: 381, type: !705)
!1552 = !DILocalVariable(name: "it", scope: !1546, file: !3, line: 383, type: !435)
!1553 = !DILocalVariable(name: "do_free", scope: !1546, file: !3, line: 385, type: !450)
!1554 = !DILocalVariable(name: "ntotal", scope: !1555, file: !3, line: 390, type: !406)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 386, column: 20)
!1556 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 386, column: 9)
!1557 = !DILocalVariable(name: "q", scope: !1555, file: !3, line: 393, type: !363)
!1558 = !DILocalVariable(name: "ntotal", scope: !1559, file: !3, line: 402, type: !406)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 399, column: 25)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 399, column: 16)
!1561 = !DILocalVariable(name: "hv", scope: !1562, file: !3, line: 412, type: !119)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 410, column: 43)
!1563 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 410, column: 16)
!1564 = !DILocalVariable(name: "hold_lock", scope: !1562, file: !3, line: 414, type: !116)
!1565 = !DILocalVariable(name: "h_it", scope: !1566, file: !3, line: 416, type: !435)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 415, column: 32)
!1567 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 415, column: 13)
!1568 = !DILocalVariable(name: "flags", scope: !1566, file: !3, line: 417, type: !147)
!1569 = !DILocation(line: 0, scope: !1546)
!1570 = !DILocation(line: 380, column: 18, scope: !1546)
!1571 = !DILocation(line: 383, column: 28, scope: !1546)
!1572 = !DILocation(line: 383, column: 16, scope: !1546)
!1573 = !DILocation(line: 384, column: 5, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 384, column: 5)
!1575 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 384, column: 5)
!1576 = !DILocation(line: 384, column: 5, scope: !1575)
!1577 = !DILocation(line: 386, column: 12, scope: !1556)
!1578 = !DILocation(line: 386, column: 9, scope: !1546)
!1579 = !DILocation(line: 390, column: 25, scope: !1555)
!1580 = !DILocation(line: 0, scope: !1555)
!1581 = !DILocation(line: 391, column: 32, scope: !1555)
!1582 = !DILocation(line: 391, column: 9, scope: !1555)
!1583 = !DILocation(line: 393, column: 49, scope: !1555)
!1584 = !DILocation(line: 393, column: 25, scope: !1555)
!1585 = !DILocation(line: 394, column: 12, scope: !1555)
!1586 = !DILocation(line: 394, column: 17, scope: !1555)
!1587 = !DILocation(line: 395, column: 9, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 395, column: 9)
!1589 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 395, column: 9)
!1590 = !DILocation(line: 395, column: 9, scope: !1589)
!1591 = !DILocation(line: 396, column: 29, scope: !1555)
!1592 = !DILocation(line: 396, column: 32, scope: !1555)
!1593 = !DILocation(line: 396, column: 46, scope: !1555)
!1594 = !DILocation(line: 396, column: 9, scope: !1555)
!1595 = !DILocation(line: 397, column: 12, scope: !1555)
!1596 = !DILocation(line: 397, column: 26, scope: !1555)
!1597 = !DILocation(line: 397, column: 46, scope: !1555)
!1598 = !{!887, !881, i64 392}
!1599 = !DILocation(line: 398, column: 48, scope: !1555)
!1600 = !DILocation(line: 398, column: 9, scope: !1555)
!1601 = !DILocation(line: 438, column: 9, scope: !1546)
!1602 = !DILocation(line: 399, column: 19, scope: !1560)
!1603 = !DILocation(line: 399, column: 16, scope: !1556)
!1604 = !DILocation(line: 402, column: 25, scope: !1559)
!1605 = !DILocation(line: 0, scope: !1559)
!1606 = !DILocation(line: 403, column: 9, scope: !1559)
!1607 = !DILocation(line: 404, column: 32, scope: !1559)
!1608 = !DILocation(line: 404, column: 9, scope: !1559)
!1609 = !DILocation(line: 405, column: 32, scope: !1559)
!1610 = !DILocation(line: 405, column: 46, scope: !1559)
!1611 = !DILocation(line: 405, column: 9, scope: !1559)
!1612 = !DILocation(line: 406, column: 12, scope: !1559)
!1613 = !DILocation(line: 406, column: 26, scope: !1559)
!1614 = !DILocation(line: 406, column: 44, scope: !1559)
!1615 = !{!887, !881, i64 416}
!1616 = !DILocation(line: 407, column: 16, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 407, column: 13)
!1618 = !DILocation(line: 407, column: 13, scope: !1559)
!1619 = !DILocation(line: 408, column: 13, scope: !1617)
!1620 = !DILocation(line: 408, column: 30, scope: !1617)
!1621 = !DILocation(line: 408, column: 50, scope: !1617)
!1622 = !{!887, !881, i64 424}
!1623 = !DILocation(line: 409, column: 31, scope: !1559)
!1624 = !DILocation(line: 409, column: 48, scope: !1559)
!1625 = !DILocation(line: 409, column: 9, scope: !1559)
!1626 = !DILocation(line: 410, column: 25, scope: !1563)
!1627 = !{!1034, !769, i64 276}
!1628 = !DILocation(line: 410, column: 16, scope: !1563)
!1629 = !DILocation(line: 410, column: 16, scope: !1560)
!1630 = !DILocation(line: 412, column: 37, scope: !1562)
!1631 = !DILocation(line: 0, scope: !1562)
!1632 = !DILocation(line: 414, column: 27, scope: !1562)
!1633 = !DILocation(line: 415, column: 23, scope: !1567)
!1634 = !DILocation(line: 415, column: 13, scope: !1562)
!1635 = !DILocation(line: 437, column: 5, scope: !1563)
!1636 = !DILocation(line: 416, column: 29, scope: !1566)
!1637 = !DILocation(line: 0, scope: !1566)
!1638 = !DILocation(line: 419, column: 25, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 419, column: 17)
!1640 = !DILocation(line: 419, column: 34, scope: !1639)
!1641 = !DILocation(line: 419, column: 43, scope: !1639)
!1642 = !DILocation(line: 419, column: 53, scope: !1639)
!1643 = !DILocation(line: 420, column: 21, scope: !1639)
!1644 = !DILocation(line: 420, column: 27, scope: !1639)
!1645 = !DILocation(line: 420, column: 34, scope: !1639)
!1646 = !DILocation(line: 420, column: 47, scope: !1639)
!1647 = !DILocation(line: 420, column: 32, scope: !1639)
!1648 = !DILocation(line: 420, column: 70, scope: !1639)
!1649 = !DILocation(line: 421, column: 21, scope: !1639)
!1650 = !DILocation(line: 421, column: 24, scope: !1639)
!1651 = !DILocation(line: 421, column: 39, scope: !1639)
!1652 = !{!874, !769, i64 312}
!1653 = !DILocation(line: 421, column: 53, scope: !1639)
!1654 = !DILocation(line: 421, column: 42, scope: !1639)
!1655 = !DILocation(line: 421, column: 70, scope: !1639)
!1656 = !DILocation(line: 419, column: 17, scope: !1566)
!1657 = !DILocation(line: 424, column: 37, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 421, column: 76)
!1659 = !DILocation(line: 424, column: 21, scope: !1658)
!1660 = !DILocation(line: 424, column: 29, scope: !1658)
!1661 = !DILocation(line: 425, column: 21, scope: !1658)
!1662 = !DILocation(line: 425, column: 30, scope: !1658)
!1663 = !DILocation(line: 426, column: 21, scope: !1658)
!1664 = !DILocation(line: 426, column: 30, scope: !1658)
!1665 = !DILocation(line: 427, column: 21, scope: !1658)
!1666 = !DILocation(line: 427, column: 28, scope: !1658)
!1667 = !DILocation(line: 428, column: 17, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 428, column: 17)
!1669 = !DILocation(line: 429, column: 30, scope: !1658)
!1670 = !DILocation(line: 429, column: 17, scope: !1658)
!1671 = !DILocation(line: 430, column: 40, scope: !1658)
!1672 = !DILocation(line: 430, column: 54, scope: !1658)
!1673 = !DILocation(line: 430, column: 17, scope: !1658)
!1674 = !DILocation(line: 431, column: 20, scope: !1658)
!1675 = !DILocation(line: 431, column: 34, scope: !1658)
!1676 = !DILocation(line: 431, column: 55, scope: !1658)
!1677 = !{!887, !881, i64 408}
!1678 = !DILocation(line: 432, column: 56, scope: !1658)
!1679 = !DILocation(line: 432, column: 17, scope: !1658)
!1680 = !DILocation(line: 434, column: 9, scope: !1567)
!1681 = !DILocation(line: 436, column: 13, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 435, column: 13)
!1683 = !DILocation(line: 439, column: 20, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 438, column: 9)
!1685 = !DILocation(line: 439, column: 24, scope: !1684)
!1686 = !DILocation(line: 439, column: 41, scope: !1684)
!1687 = !DILocation(line: 439, column: 9, scope: !1684)
!1688 = !DILocation(line: 441, column: 19, scope: !1546)
!1689 = !{!1076, !875, i64 56}
!1690 = !DILocation(line: 442, column: 15, scope: !1546)
!1691 = !DILocation(line: 442, column: 20, scope: !1546)
!1692 = !{!1076, !875, i64 48}
!1693 = !DILocation(line: 443, column: 15, scope: !1546)
!1694 = !DILocation(line: 446, column: 20, scope: !1546)
!1695 = !DILocation(line: 446, column: 5, scope: !1546)
!1696 = !DILocation(line: 447, column: 1, scope: !1546)
!1697 = distinct !DISubprogram(name: "storage_write_pause", scope: !3, file: !3, line: 671, type: !997, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !781)
!1698 = !DILocation(line: 672, column: 5, scope: !1697)
!1699 = !DILocation(line: 673, column: 1, scope: !1697)
!1700 = distinct !DISubprogram(name: "storage_write_resume", scope: !3, file: !3, line: 675, type: !997, scopeLine: 675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !781)
!1701 = !DILocation(line: 676, column: 5, scope: !1700)
!1702 = !DILocation(line: 677, column: 1, scope: !1700)
!1703 = distinct !DISubprogram(name: "start_storage_write_thread", scope: !3, file: !3, line: 679, type: !1704, scopeLine: 679, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1706)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!141, !116}
!1706 = !{!1707, !1708}
!1707 = !DILocalVariable(name: "arg", arg: 1, scope: !1703, file: !3, line: 679, type: !116)
!1708 = !DILocalVariable(name: "ret", scope: !1703, file: !3, line: 680, type: !141)
!1709 = !DILocation(line: 0, scope: !1703)
!1710 = !DILocation(line: 682, column: 5, scope: !1703)
!1711 = !DILocation(line: 683, column: 16, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 683, column: 9)
!1713 = !DILocation(line: 684, column: 37, scope: !1712)
!1714 = !DILocation(line: 683, column: 9, scope: !1703)
!1715 = !DILocation(line: 685, column: 17, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 684, column: 43)
!1717 = !DILocation(line: 686, column: 13, scope: !1716)
!1718 = !DILocation(line: 685, column: 9, scope: !1716)
!1719 = !DILocation(line: 687, column: 9, scope: !1716)
!1720 = !DILocation(line: 690, column: 5, scope: !1703)
!1721 = !DILocation(line: 691, column: 1, scope: !1703)
!1722 = !DISubprogram(name: "pthread_mutex_init", scope: !1505, file: !1505, line: 725, type: !1723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!141, !1508, !1725}
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1727)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !183, line: 36, baseType: !1728)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !183, line: 32, size: 32, elements: !1729)
!1729 = !{!1730, !1732}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1728, file: !183, line: 34, baseType: !1731, size: 32)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 32, elements: !444)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1728, file: !183, line: 35, baseType: !141, size: 32)
!1733 = !DISubprogram(name: "pthread_create", scope: !1505, file: !1505, line: 198, type: !1734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!141, !1736, !1738, !1749, !1752}
!1736 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1737)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1739)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1741)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !183, line: 62, baseType: !1742)
!1742 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !183, line: 56, size: 448, elements: !1743)
!1743 = !{!1744, !1748}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1742, file: !183, line: 58, baseType: !1745, size: 448)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 448, elements: !1746)
!1746 = !{!1747}
!1747 = !DISubrange(count: 56)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1742, file: !183, line: 59, baseType: !252, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!116, !116}
!1752 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !116)
!1753 = distinct !DISubprogram(name: "storage_write_thread", scope: !3, file: !3, line: 577, type: !1750, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1754)
!1754 = !{!1755, !1756, !1757, !1759, !1760, !1763, !1764, !1766, !1767, !1768, !1770, !1773, !1774, !1775, !1776, !1777}
!1755 = !DILocalVariable(name: "arg", arg: 1, scope: !1753, file: !3, line: 577, type: !116)
!1756 = !DILocalVariable(name: "storage", scope: !1753, file: !3, line: 578, type: !116)
!1757 = !DILocalVariable(name: "backoff", scope: !1753, file: !3, line: 581, type: !1758)
!1758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !343)
!1759 = !DILocalVariable(name: "counter", scope: !1753, file: !3, line: 582, type: !7)
!1760 = !DILocalVariable(name: "to_sleep", scope: !1753, file: !3, line: 583, type: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "useconds_t", file: !653, line: 134, baseType: !1762)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__useconds_t", file: !122, line: 161, baseType: !7)
!1763 = !DILocalVariable(name: "l", scope: !1753, file: !3, line: 584, type: !493)
!1764 = !DILocalVariable(name: "min_class", scope: !1765, file: !3, line: 594, type: !141)
!1765 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 592, column: 15)
!1766 = !DILocalVariable(name: "global_pages", scope: !1765, file: !3, line: 595, type: !7)
!1767 = !DILocalVariable(name: "do_sleep", scope: !1765, file: !3, line: 596, type: !450)
!1768 = !DILocalVariable(name: "x", scope: !1769, file: !3, line: 601, type: !141)
!1769 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 601, column: 9)
!1770 = !DILocalVariable(name: "did_move", scope: !1771, file: !3, line: 602, type: !450)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 601, column: 62)
!1772 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 601, column: 9)
!1773 = !DILocalVariable(name: "mem_limit_reached", scope: !1771, file: !3, line: 603, type: !450)
!1774 = !DILocalVariable(name: "chunks_free", scope: !1771, file: !3, line: 604, type: !7)
!1775 = !DILocalVariable(name: "item_age", scope: !1771, file: !3, line: 605, type: !141)
!1776 = !DILocalVariable(name: "chunks_perpage", scope: !1771, file: !3, line: 614, type: !7)
!1777 = !DILocalVariable(name: "target", scope: !1771, file: !3, line: 617, type: !7)
!1778 = !DILocation(line: 0, scope: !1753)
!1779 = !DILocation(line: 581, column: 5, scope: !1753)
!1780 = !DILocation(line: 581, column: 18, scope: !1753)
!1781 = !DILocation(line: 584, column: 17, scope: !1753)
!1782 = !DILocation(line: 585, column: 11, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 585, column: 9)
!1784 = !DILocation(line: 585, column: 9, scope: !1753)
!1785 = !DILocation(line: 586, column: 17, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 585, column: 20)
!1787 = !DILocation(line: 586, column: 9, scope: !1786)
!1788 = !DILocation(line: 587, column: 9, scope: !1786)
!1789 = !DILocation(line: 590, column: 5, scope: !1753)
!1790 = !DILocation(line: 592, column: 5, scope: !1753)
!1791 = !DILocation(line: 594, column: 46, scope: !1765)
!1792 = !{!1034, !769, i64 264}
!1793 = !DILocation(line: 594, column: 37, scope: !1765)
!1794 = !DILocation(line: 594, column: 25, scope: !1765)
!1795 = !DILocation(line: 0, scope: !1765)
!1796 = !DILocation(line: 595, column: 37, scope: !1765)
!1797 = !DILocation(line: 597, column: 16, scope: !1765)
!1798 = !DILocation(line: 598, column: 33, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 598, column: 13)
!1800 = !{!1034, !769, i64 292}
!1801 = !DILocation(line: 598, column: 22, scope: !1799)
!1802 = !DILocation(line: 598, column: 13, scope: !1765)
!1803 = !DILocation(line: 599, column: 33, scope: !1799)
!1804 = !DILocation(line: 599, column: 13, scope: !1799)
!1805 = !DILocation(line: 0, scope: !1769)
!1806 = !DILocation(line: 601, column: 9, scope: !1769)
!1807 = !DILocation(line: 645, column: 9, scope: !1765)
!1808 = !DILocation(line: 647, column: 20, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 646, column: 23)
!1810 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 646, column: 13)
!1811 = !DILocation(line: 647, column: 13, scope: !1809)
!1812 = !DILocation(line: 648, column: 21, scope: !1809)
!1813 = !DILocation(line: 650, column: 9, scope: !1765)
!1814 = distinct !{!1814, !1790, !1815}
!1815 = !DILocation(line: 651, column: 5, scope: !1753)
!1816 = !DILocation(line: 0, scope: !1771)
!1817 = !DILocation(line: 603, column: 13, scope: !1771)
!1818 = !DILocation(line: 603, column: 18, scope: !1771)
!1819 = !{!876, !876, i64 0}
!1820 = !DILocation(line: 606, column: 27, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 606, column: 17)
!1822 = !DILocation(line: 606, column: 31, scope: !1821)
!1823 = !DILocation(line: 606, column: 43, scope: !1821)
!1824 = !DILocation(line: 606, column: 35, scope: !1821)
!1825 = !DILocation(line: 606, column: 46, scope: !1821)
!1826 = !DILocation(line: 606, column: 50, scope: !1821)
!1827 = !DILocation(line: 606, column: 58, scope: !1821)
!1828 = !DILocation(line: 606, column: 71, scope: !1821)
!1829 = !DILocation(line: 606, column: 17, scope: !1771)
!1830 = !DILocation(line: 608, column: 30, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 608, column: 21)
!1832 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 606, column: 79)
!1833 = !DILocation(line: 608, column: 21, scope: !1832)
!1834 = !DILocation(line: 609, column: 29, scope: !1831)
!1835 = !DILocation(line: 609, column: 21, scope: !1831)
!1836 = !DILocation(line: 609, column: 32, scope: !1831)
!1837 = !DILocation(line: 614, column: 13, scope: !1771)
!1838 = !DILocation(line: 614, column: 26, scope: !1771)
!1839 = !DILocation(line: 615, column: 27, scope: !1771)
!1840 = !DILocation(line: 617, column: 35, scope: !1771)
!1841 = !DILocation(line: 617, column: 50, scope: !1771)
!1842 = !DILocation(line: 620, column: 13, scope: !1771)
!1843 = !DILocation(line: 622, column: 33, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 622, column: 21)
!1845 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 620, column: 23)
!1846 = !DILocation(line: 622, column: 42, scope: !1844)
!1847 = !DILocation(line: 622, column: 45, scope: !1844)
!1848 = !DILocation(line: 622, column: 70, scope: !1844)
!1849 = !{!1034, !769, i64 316}
!1850 = !DILocation(line: 622, column: 58, scope: !1844)
!1851 = !DILocation(line: 622, column: 21, scope: !1845)
!1852 = !DILocation(line: 623, column: 30, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 622, column: 91)
!1854 = !DILocation(line: 624, column: 17, scope: !1853)
!1855 = !DILocation(line: 625, column: 41, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 624, column: 24)
!1857 = !{!1034, !769, i64 268}
!1858 = !DILocation(line: 0, scope: !1844)
!1859 = !DILocation(line: 627, column: 21, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 627, column: 21)
!1861 = !DILocation(line: 627, column: 21, scope: !1845)
!1862 = !DILocation(line: 628, column: 32, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 627, column: 58)
!1864 = !DILocation(line: 630, column: 25, scope: !1863)
!1865 = distinct !{!1865, !1842, !1866}
!1866 = !DILocation(line: 635, column: 13, scope: !1771)
!1867 = !DILocation(line: 631, column: 34, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 630, column: 25)
!1869 = !DILocation(line: 631, column: 25, scope: !1868)
!1870 = !DILocation(line: 637, column: 17, scope: !1771)
!1871 = !DILocation(line: 638, column: 25, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 637, column: 28)
!1873 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 637, column: 17)
!1874 = !DILocation(line: 638, column: 27, scope: !1872)
!1875 = !DILocation(line: 639, column: 13, scope: !1872)
!1876 = !DILocation(line: 639, column: 24, scope: !1873)
!1877 = !DILocation(line: 640, column: 25, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 639, column: 36)
!1879 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 639, column: 24)
!1880 = !DILocation(line: 640, column: 28, scope: !1878)
!1881 = !DILocation(line: 641, column: 13, scope: !1878)
!1882 = !DILocation(line: 642, column: 9, scope: !1772)
!1883 = !DILocation(line: 642, column: 9, scope: !1771)
!1884 = !DILocation(line: 601, column: 58, scope: !1772)
!1885 = !DILocation(line: 601, column: 27, scope: !1772)
!1886 = distinct !{!1886, !1806, !1887, !919}
!1887 = !DILocation(line: 642, column: 9, scope: !1769)
!1888 = !DISubprogram(name: "fprintf", scope: !931, file: !931, line: 326, type: !1889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!141, !1891, !935, null}
!1891 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1892)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1894, line: 7, baseType: !1895)
!1894 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1896, line: 49, size: 1728, elements: !1897)
!1896 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1913, !1915, !1916, !1917, !1919, !1920, !1922, !1926, !1929, !1931, !1934, !1937, !1938, !1939, !1940, !1941}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1895, file: !1896, line: 51, baseType: !141, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1895, file: !1896, line: 54, baseType: !114, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1895, file: !1896, line: 55, baseType: !114, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1895, file: !1896, line: 56, baseType: !114, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1895, file: !1896, line: 57, baseType: !114, size: 64, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1895, file: !1896, line: 58, baseType: !114, size: 64, offset: 320)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1895, file: !1896, line: 59, baseType: !114, size: 64, offset: 384)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1895, file: !1896, line: 60, baseType: !114, size: 64, offset: 448)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1895, file: !1896, line: 61, baseType: !114, size: 64, offset: 512)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1895, file: !1896, line: 64, baseType: !114, size: 64, offset: 576)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1895, file: !1896, line: 65, baseType: !114, size: 64, offset: 640)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1895, file: !1896, line: 66, baseType: !114, size: 64, offset: 704)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1895, file: !1896, line: 68, baseType: !1911, size: 64, offset: 768)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1896, line: 36, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1895, file: !1896, line: 70, baseType: !1914, size: 64, offset: 832)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1895, file: !1896, line: 72, baseType: !141, size: 32, offset: 896)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1895, file: !1896, line: 73, baseType: !141, size: 32, offset: 928)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1895, file: !1896, line: 74, baseType: !1918, size: 64, offset: 960)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !122, line: 152, baseType: !252)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1895, file: !1896, line: 77, baseType: !113, size: 16, offset: 1024)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1895, file: !1896, line: 78, baseType: !1921, size: 8, offset: 1040)
!1921 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1895, file: !1896, line: 79, baseType: !1923, size: 8, offset: 1048)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 8, elements: !1924)
!1924 = !{!1925}
!1925 = !DISubrange(count: 1)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1895, file: !1896, line: 81, baseType: !1927, size: 64, offset: 1088)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1896, line: 43, baseType: null)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1895, file: !1896, line: 89, baseType: !1930, size: 64, offset: 1152)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !122, line: 153, baseType: !252)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1895, file: !1896, line: 91, baseType: !1932, size: 64, offset: 1216)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1896, line: 37, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1895, file: !1896, line: 92, baseType: !1935, size: 64, offset: 1280)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1896, line: 38, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1895, file: !1896, line: 93, baseType: !1914, size: 64, offset: 1344)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1895, file: !1896, line: 94, baseType: !116, size: 64, offset: 1408)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1895, file: !1896, line: 95, baseType: !406, size: 64, offset: 1472)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1895, file: !1896, line: 96, baseType: !141, size: 32, offset: 1536)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1895, file: !1896, line: 98, baseType: !1942, size: 160, offset: 1568)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 160, elements: !1943)
!1943 = !{!1944}
!1944 = !DISubrange(count: 20)
!1945 = !DISubprogram(name: "strerror", scope: !1283, file: !1283, line: 397, type: !1946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!114, !141}
!1948 = distinct !DISubprogram(name: "storage_compact_pause", scope: !3, file: !3, line: 1004, type: !997, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !781)
!1949 = !DILocation(line: 1005, column: 5, scope: !1948)
!1950 = !DILocation(line: 1006, column: 1, scope: !1948)
!1951 = distinct !DISubprogram(name: "storage_compact_resume", scope: !3, file: !3, line: 1008, type: !997, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !781)
!1952 = !DILocation(line: 1009, column: 5, scope: !1951)
!1953 = !DILocation(line: 1010, column: 1, scope: !1951)
!1954 = distinct !DISubprogram(name: "start_storage_compact_thread", scope: !3, file: !3, line: 1012, type: !1704, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1955 = !{!1956, !1957}
!1956 = !DILocalVariable(name: "arg", arg: 1, scope: !1954, file: !3, line: 1012, type: !116)
!1957 = !DILocalVariable(name: "ret", scope: !1954, file: !3, line: 1013, type: !141)
!1958 = !DILocation(line: 0, scope: !1954)
!1959 = !DILocation(line: 1015, column: 5, scope: !1954)
!1960 = !DILocation(line: 1016, column: 16, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 1016, column: 9)
!1962 = !DILocation(line: 1017, column: 39, scope: !1961)
!1963 = !DILocation(line: 1016, column: 9, scope: !1954)
!1964 = !DILocation(line: 1018, column: 17, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 1017, column: 45)
!1966 = !DILocation(line: 1019, column: 13, scope: !1965)
!1967 = !DILocation(line: 1018, column: 9, scope: !1965)
!1968 = !DILocation(line: 1020, column: 9, scope: !1965)
!1969 = !DILocation(line: 1023, column: 5, scope: !1954)
!1970 = !DILocation(line: 1024, column: 1, scope: !1954)
!1971 = distinct !DISubprogram(name: "storage_compact_thread", scope: !3, file: !3, line: 889, type: !1750, scopeLine: 889, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1972)
!1972 = !{!1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1990, !1997, !2001}
!1973 = !DILocalVariable(name: "arg", arg: 1, scope: !1971, file: !3, line: 889, type: !116)
!1974 = !DILocalVariable(name: "storage", scope: !1971, file: !3, line: 890, type: !116)
!1975 = !DILocalVariable(name: "to_sleep", scope: !1971, file: !3, line: 891, type: !1761)
!1976 = !DILocalVariable(name: "compacting", scope: !1971, file: !3, line: 892, type: !450)
!1977 = !DILocalVariable(name: "page_version", scope: !1971, file: !3, line: 893, type: !156)
!1978 = !DILocalVariable(name: "page_size", scope: !1971, file: !3, line: 894, type: !156)
!1979 = !DILocalVariable(name: "page_offset", scope: !1971, file: !3, line: 895, type: !156)
!1980 = !DILocalVariable(name: "page_id", scope: !1971, file: !3, line: 896, type: !119)
!1981 = !DILocalVariable(name: "drop_unread", scope: !1971, file: !3, line: 897, type: !450)
!1982 = !DILocalVariable(name: "readback_buf", scope: !1971, file: !3, line: 898, type: !114)
!1983 = !DILocalVariable(name: "wrap", scope: !1971, file: !3, line: 899, type: !729)
!1984 = !DILocalVariable(name: "l", scope: !1971, file: !3, line: 901, type: !493)
!1985 = !DILocalVariable(name: "myl", scope: !1986, file: !3, line: 937, type: !493)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 937, column: 13)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 934, column: 73)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 933, column: 13)
!1989 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 925, column: 15)
!1990 = !DILocalVariable(name: "myl", scope: !1991, file: !3, line: 954, type: !493)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 954, column: 17)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 953, column: 35)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 953, column: 24)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 943, column: 17)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 941, column: 25)
!1996 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 941, column: 13)
!1997 = !DILocalVariable(name: "myl", scope: !1998, file: !3, line: 960, type: !493)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 960, column: 17)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 959, column: 53)
!2000 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 959, column: 24)
!2001 = !DILocalVariable(name: "myl", scope: !2002, file: !3, line: 972, type: !493)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 972, column: 17)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 967, column: 50)
!2004 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 967, column: 24)
!2005 = !DILocation(line: 0, scope: !1971)
!2006 = !DILocation(line: 891, column: 36, scope: !1971)
!2007 = !DILocation(line: 893, column: 5, scope: !1971)
!2008 = !DILocation(line: 893, column: 14, scope: !1971)
!2009 = !{!881, !881, i64 0}
!2010 = !DILocation(line: 894, column: 5, scope: !1971)
!2011 = !DILocation(line: 894, column: 14, scope: !1971)
!2012 = !DILocation(line: 896, column: 5, scope: !1971)
!2013 = !DILocation(line: 896, column: 14, scope: !1971)
!2014 = !DILocation(line: 897, column: 5, scope: !1971)
!2015 = !DILocation(line: 897, column: 10, scope: !1971)
!2016 = !DILocation(line: 899, column: 5, scope: !1971)
!2017 = !DILocation(line: 899, column: 33, scope: !1971)
!2018 = !DILocation(line: 901, column: 17, scope: !1971)
!2019 = !DILocation(line: 902, column: 11, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 902, column: 9)
!2021 = !DILocation(line: 902, column: 9, scope: !1971)
!2022 = !DILocation(line: 903, column: 17, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 902, column: 20)
!2024 = !DILocation(line: 903, column: 9, scope: !2023)
!2025 = !DILocation(line: 904, column: 9, scope: !2023)
!2026 = !DILocation(line: 907, column: 36, scope: !1971)
!2027 = !{!1034, !769, i64 280}
!2028 = !DILocation(line: 907, column: 27, scope: !1971)
!2029 = !DILocation(line: 907, column: 20, scope: !1971)
!2030 = !DILocation(line: 908, column: 22, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 908, column: 9)
!2032 = !DILocation(line: 908, column: 9, scope: !1971)
!2033 = !DILocation(line: 909, column: 17, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 908, column: 31)
!2035 = !DILocation(line: 909, column: 9, scope: !2034)
!2036 = !DILocation(line: 910, column: 9, scope: !2034)
!2037 = !DILocation(line: 913, column: 30, scope: !1971)
!2038 = !DILocation(line: 913, column: 5, scope: !1971)
!2039 = !DILocation(line: 914, column: 10, scope: !1971)
!2040 = !DILocation(line: 914, column: 15, scope: !1971)
!2041 = !{!2042, !876, i64 104}
!2042 = !{!"storage_compact_wrap", !1077, i64 0, !761, i64 64, !876, i64 104, !876, i64 105, !876, i64 106}
!2043 = !DILocation(line: 915, column: 10, scope: !1971)
!2044 = !DILocation(line: 915, column: 20, scope: !1971)
!2045 = !{!2042, !876, i64 105}
!2046 = !DILocation(line: 916, column: 10, scope: !1971)
!2047 = !DILocation(line: 916, column: 18, scope: !1971)
!2048 = !{!2042, !875, i64 0}
!2049 = !DILocation(line: 917, column: 13, scope: !1971)
!2050 = !DILocation(line: 917, column: 17, scope: !1971)
!2051 = !{!2042, !875, i64 24}
!2052 = !DILocation(line: 918, column: 13, scope: !1971)
!2053 = !DILocation(line: 918, column: 17, scope: !1971)
!2054 = !{!2042, !875, i64 16}
!2055 = !DILocation(line: 920, column: 28, scope: !1971)
!2056 = !DILocation(line: 920, column: 13, scope: !1971)
!2057 = !DILocation(line: 920, column: 17, scope: !1971)
!2058 = !{!2042, !769, i64 40}
!2059 = !DILocation(line: 921, column: 13, scope: !1971)
!2060 = !DILocation(line: 921, column: 18, scope: !1971)
!2061 = !{!2042, !761, i64 52}
!2062 = !DILocation(line: 922, column: 13, scope: !1971)
!2063 = !DILocation(line: 922, column: 16, scope: !1971)
!2064 = !{!2042, !875, i64 56}
!2065 = !DILocation(line: 923, column: 5, scope: !1971)
!2066 = !DILocation(line: 925, column: 5, scope: !1971)
!2067 = !DILocation(line: 926, column: 9, scope: !1989)
!2068 = !DILocation(line: 927, column: 13, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 927, column: 13)
!2070 = !DILocation(line: 927, column: 13, scope: !1989)
!2071 = !DILocation(line: 928, column: 32, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 927, column: 23)
!2073 = !DILocation(line: 928, column: 13, scope: !2072)
!2074 = !DILocation(line: 929, column: 13, scope: !2072)
!2075 = !DILocation(line: 930, column: 9, scope: !2072)
!2076 = !DILocation(line: 931, column: 9, scope: !1989)
!2077 = !DILocation(line: 933, column: 25, scope: !1988)
!2078 = !DILocation(line: 933, column: 50, scope: !1988)
!2079 = !DILocation(line: 933, column: 28, scope: !1988)
!2080 = !DILocation(line: 933, column: 13, scope: !1989)
!2081 = !DILocation(line: 0, scope: !1986)
!2082 = !DILocation(line: 937, column: 13, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 937, column: 13)
!2084 = !{!2085, !764, i64 84}
!2085 = !{!"_logger", !875, i64 0, !875, i64 8, !761, i64 16, !881, i64 56, !881, i64 64, !881, i64 72, !764, i64 80, !764, i64 82, !764, i64 84, !875, i64 88, !875, i64 96}
!2086 = !DILocation(line: 937, column: 13, scope: !1986)
!2087 = !DILocation(line: 939, column: 9, scope: !1987)
!2088 = !DILocation(line: 941, column: 13, scope: !1989)
!2089 = !DILocation(line: 942, column: 13, scope: !1995)
!2090 = !DILocation(line: 943, column: 31, scope: !1994)
!2091 = !DILocation(line: 943, column: 29, scope: !1994)
!2092 = !DILocation(line: 943, column: 41, scope: !1994)
!2093 = !DILocation(line: 943, column: 50, scope: !1994)
!2094 = !DILocation(line: 943, column: 55, scope: !1994)
!2095 = !DILocation(line: 943, column: 64, scope: !1994)
!2096 = !DILocation(line: 943, column: 17, scope: !1995)
!2097 = !DILocation(line: 944, column: 40, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 943, column: 75)
!2099 = !DILocation(line: 944, column: 38, scope: !2098)
!2100 = !{!2042, !769, i64 36}
!2101 = !DILocation(line: 945, column: 35, scope: !2098)
!2102 = !DILocation(line: 945, column: 33, scope: !2098)
!2103 = !{!2042, !764, i64 48}
!2104 = !DILocation(line: 946, column: 34, scope: !2098)
!2105 = !DILocation(line: 946, column: 32, scope: !2098)
!2106 = !{!2042, !769, i64 44}
!2107 = !DILocation(line: 948, column: 30, scope: !2098)
!2108 = !{!2042, !875, i64 8}
!2109 = !DILocation(line: 949, column: 32, scope: !2098)
!2110 = !DILocation(line: 950, column: 27, scope: !2098)
!2111 = !{!2042, !876, i64 106}
!2112 = !DILocation(line: 952, column: 17, scope: !2098)
!2113 = !DILocation(line: 953, column: 13, scope: !2098)
!2114 = !DILocation(line: 953, column: 29, scope: !1993)
!2115 = !DILocation(line: 953, column: 24, scope: !1994)
!2116 = !DILocation(line: 0, scope: !1991)
!2117 = !DILocation(line: 954, column: 17, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 954, column: 17)
!2119 = !DILocation(line: 954, column: 17, scope: !1991)
!2120 = !DILocation(line: 956, column: 22, scope: !1992)
!2121 = !DILocation(line: 956, column: 27, scope: !1992)
!2122 = !DILocation(line: 957, column: 32, scope: !1992)
!2123 = !DILocation(line: 959, column: 13, scope: !1992)
!2124 = !DILocation(line: 959, column: 29, scope: !2000)
!2125 = !DILocation(line: 959, column: 39, scope: !2000)
!2126 = !DILocation(line: 959, column: 47, scope: !2000)
!2127 = !DILocation(line: 959, column: 24, scope: !1993)
!2128 = !DILocation(line: 0, scope: !1998)
!2129 = !DILocation(line: 960, column: 17, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 960, column: 17)
!2131 = !DILocation(line: 960, column: 17, scope: !1998)
!2132 = !DILocation(line: 963, column: 39, scope: !1999)
!2133 = !DILocation(line: 962, column: 42, scope: !1999)
!2134 = !DILocation(line: 962, column: 54, scope: !1999)
!2135 = !DILocation(line: 963, column: 48, scope: !1999)
!2136 = !DILocation(line: 963, column: 71, scope: !1999)
!2137 = !DILocation(line: 963, column: 62, scope: !1999)
!2138 = !DILocation(line: 962, column: 17, scope: !1999)
!2139 = !DILocation(line: 964, column: 41, scope: !1999)
!2140 = !DILocation(line: 964, column: 32, scope: !1999)
!2141 = !DILocation(line: 964, column: 29, scope: !1999)
!2142 = !DILocation(line: 965, column: 27, scope: !1999)
!2143 = !DILocation(line: 966, column: 32, scope: !1999)
!2144 = !DILocation(line: 967, column: 13, scope: !1999)
!2145 = !DILocation(line: 967, column: 24, scope: !2000)
!2146 = !DILocation(line: 969, column: 27, scope: !2003)
!2147 = !DILocation(line: 970, column: 32, scope: !2003)
!2148 = !DILocation(line: 971, column: 46, scope: !2003)
!2149 = !DILocation(line: 971, column: 55, scope: !2003)
!2150 = !DILocation(line: 971, column: 17, scope: !2003)
!2151 = !DILocation(line: 0, scope: !2002)
!2152 = !DILocation(line: 972, column: 17, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 972, column: 17)
!2154 = !DILocation(line: 972, column: 17, scope: !2002)
!2155 = !DILocation(line: 974, column: 13, scope: !2003)
!2156 = !DILocation(line: 975, column: 13, scope: !1995)
!2157 = !DILocation(line: 979, column: 9, scope: !1995)
!2158 = distinct !{!2158, !2066, !2159}
!2159 = !DILocation(line: 983, column: 5, scope: !1971)
!2160 = !DILocation(line: 980, column: 37, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 980, column: 17)
!2162 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 979, column: 16)
!2163 = !DILocation(line: 980, column: 26, scope: !2161)
!2164 = !DILocation(line: 980, column: 17, scope: !2162)
!2165 = !DILocation(line: 981, column: 38, scope: !2161)
!2166 = !DILocation(line: 981, column: 26, scope: !2161)
!2167 = !DILocation(line: 981, column: 17, scope: !2161)
!2168 = distinct !DISubprogram(name: "storage_conf_parse", scope: !3, file: !3, line: 1029, type: !2169, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2181)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!2171, !114, !7}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extstore_conf_file", file: !72, line: 55, size: 384, elements: !2173)
!2173 = !{!2174, !2175, !2176, !2177, !2178, !2179, !2180}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "page_count", scope: !2172, file: !72, line: 56, baseType: !7, size: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2172, file: !72, line: 57, baseType: !114, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2172, file: !72, line: 58, baseType: !141, size: 32, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2172, file: !72, line: 59, baseType: !156, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "bucket", scope: !2172, file: !72, line: 60, baseType: !7, size: 32, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "free_bucket", scope: !2172, file: !72, line: 61, baseType: !7, size: 32, offset: 288)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2172, file: !72, line: 62, baseType: !2171, size: 64, offset: 320)
!2181 = !{!2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2192}
!2182 = !DILocalVariable(name: "arg", arg: 1, scope: !2168, file: !3, line: 1029, type: !114)
!2183 = !DILocalVariable(name: "page_size", arg: 2, scope: !2168, file: !3, line: 1029, type: !7)
!2184 = !DILocalVariable(name: "cf", scope: !2168, file: !3, line: 1030, type: !2171)
!2185 = !DILocalVariable(name: "b", scope: !2168, file: !3, line: 1031, type: !114)
!2186 = !DILocalVariable(name: "p", scope: !2168, file: !3, line: 1032, type: !114)
!2187 = !DILocalVariable(name: "unit", scope: !2168, file: !3, line: 1033, type: !115)
!2188 = !DILocalVariable(name: "multiplier", scope: !2168, file: !3, line: 1034, type: !156)
!2189 = !DILocalVariable(name: "base_size", scope: !2168, file: !3, line: 1035, type: !141)
!2190 = !DILocalVariable(name: "__res", scope: !2191, file: !3, line: 1047, type: !141)
!2191 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 1047, column: 12)
!2192 = !DILabel(scope: !2168, name: "error", file: !3, line: 1101)
!2193 = !DILocation(line: 0, scope: !2168)
!2194 = !DILocation(line: 1031, column: 5, scope: !2168)
!2195 = !DILocation(line: 1031, column: 11, scope: !2168)
!2196 = !DILocation(line: 1032, column: 15, scope: !2168)
!2197 = !DILocation(line: 1036, column: 11, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 1036, column: 9)
!2199 = !DILocation(line: 1036, column: 9, scope: !2168)
!2200 = !DILocation(line: 1039, column: 10, scope: !2168)
!2201 = !DILocation(line: 1040, column: 16, scope: !2168)
!2202 = !DILocation(line: 1040, column: 9, scope: !2168)
!2203 = !DILocation(line: 1040, column: 14, scope: !2168)
!2204 = !{!2205, !875, i64 8}
!2205 = !{!"extstore_conf_file", !769, i64 0, !875, i64 8, !769, i64 16, !881, i64 24, !769, i64 32, !769, i64 36, !875, i64 40}
!2206 = !DILocation(line: 1042, column: 9, scope: !2168)
!2207 = !DILocation(line: 1043, column: 11, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 1043, column: 9)
!2209 = !DILocation(line: 1043, column: 9, scope: !2168)
!2210 = !DILocation(line: 1044, column: 17, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2208, file: !3, line: 1043, column: 20)
!2212 = !DILocation(line: 1044, column: 9, scope: !2211)
!2213 = !DILocation(line: 1045, column: 9, scope: !2211)
!2214 = !DILocation(line: 1047, column: 12, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 1047, column: 12)
!2216 = !DILocation(line: 0, scope: !2191)
!2217 = !DILocation(line: 1048, column: 20, scope: !2168)
!2218 = !DILocation(line: 1050, column: 13, scope: !2168)
!2219 = !DILocation(line: 1050, column: 5, scope: !2168)
!2220 = !DILocation(line: 1052, column: 24, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 1050, column: 19)
!2222 = !DILocation(line: 1053, column: 13, scope: !2221)
!2223 = !DILocation(line: 1055, column: 24, scope: !2221)
!2224 = !DILocation(line: 1056, column: 13, scope: !2221)
!2225 = !DILocation(line: 1058, column: 24, scope: !2221)
!2226 = !DILocation(line: 1060, column: 13, scope: !2221)
!2227 = !DILocation(line: 1062, column: 24, scope: !2221)
!2228 = !DILocation(line: 1064, column: 13, scope: !2221)
!2229 = !DILocation(line: 1066, column: 17, scope: !2168)
!2230 = !DILocation(line: 1067, column: 19, scope: !2168)
!2231 = !DILocation(line: 1067, column: 16, scope: !2168)
!2232 = !DILocation(line: 1069, column: 35, scope: !2168)
!2233 = !DILocation(line: 1069, column: 33, scope: !2168)
!2234 = !DILocation(line: 1069, column: 22, scope: !2168)
!2235 = !DILocation(line: 1069, column: 9, scope: !2168)
!2236 = !DILocation(line: 1069, column: 20, scope: !2168)
!2237 = !{!2205, !769, i64 0}
!2238 = !DILocation(line: 1070, column: 5, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 1070, column: 5)
!2240 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 1070, column: 5)
!2241 = !DILocation(line: 1070, column: 5, scope: !2240)
!2242 = !DILocation(line: 1073, column: 9, scope: !2168)
!2243 = !DILocation(line: 1076, column: 11, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 1076, column: 9)
!2245 = !DILocation(line: 1076, column: 9, scope: !2168)
!2246 = !DILocation(line: 1077, column: 13, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 1077, column: 13)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 1076, column: 20)
!2249 = !DILocation(line: 1077, column: 34, scope: !2247)
!2250 = !DILocation(line: 1077, column: 13, scope: !2248)
!2251 = !DILocation(line: 1078, column: 13, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 1077, column: 40)
!2253 = !DILocation(line: 1079, column: 9, scope: !2252)
!2254 = !DILocation(line: 1079, column: 20, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 1079, column: 20)
!2256 = !DILocation(line: 1079, column: 40, scope: !2255)
!2257 = !DILocation(line: 1079, column: 20, scope: !2247)
!2258 = !DILocation(line: 1080, column: 13, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 1079, column: 46)
!2260 = !DILocation(line: 1081, column: 9, scope: !2259)
!2261 = !DILocation(line: 1081, column: 20, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 1081, column: 20)
!2263 = !DILocation(line: 1081, column: 41, scope: !2262)
!2264 = !DILocation(line: 1081, column: 20, scope: !2255)
!2265 = !DILocation(line: 1082, column: 13, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 1081, column: 47)
!2267 = !DILocation(line: 1083, column: 9, scope: !2266)
!2268 = !DILocation(line: 1083, column: 20, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 1083, column: 20)
!2270 = !DILocation(line: 1083, column: 41, scope: !2269)
!2271 = !DILocation(line: 1083, column: 20, scope: !2262)
!2272 = !DILocation(line: 1084, column: 17, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 1083, column: 47)
!2274 = !DILocation(line: 1084, column: 29, scope: !2273)
!2275 = !{!2205, !769, i64 36}
!2276 = !DILocation(line: 1086, column: 21, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 1085, column: 16)
!2278 = !DILocation(line: 1086, column: 13, scope: !2277)
!2279 = !DILocation(line: 1087, column: 13, scope: !2277)
!2280 = !DILocation(line: 1091, column: 9, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 1089, column: 12)
!2282 = !DILocation(line: 1091, column: 13, scope: !2281)
!2283 = !DILocation(line: 1091, column: 25, scope: !2281)
!2284 = !DILocation(line: 0, scope: !2247)
!2285 = !DILocation(line: 1096, column: 17, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 1095, column: 49)
!2287 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 1095, column: 9)
!2288 = !DILocation(line: 1096, column: 9, scope: !2286)
!2289 = !DILocation(line: 1097, column: 9, scope: !2286)
!2290 = !DILocation(line: 1100, column: 12, scope: !2168)
!2291 = !DILocation(line: 1100, column: 5, scope: !2168)
!2292 = !DILocation(line: 1037, column: 9, scope: !2198)
!2293 = !DILocation(line: 1101, column: 1, scope: !2168)
!2294 = !DILocation(line: 1102, column: 9, scope: !2168)
!2295 = !DILocation(line: 1103, column: 17, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 1103, column: 13)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 1102, column: 13)
!2298 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 1102, column: 9)
!2299 = !DILocation(line: 1103, column: 13, scope: !2296)
!2300 = !DILocation(line: 1103, column: 13, scope: !2297)
!2301 = !DILocation(line: 1104, column: 18, scope: !2296)
!2302 = !DILocation(line: 1104, column: 13, scope: !2296)
!2303 = !DILocation(line: 1105, column: 14, scope: !2297)
!2304 = !DILocation(line: 1105, column: 9, scope: !2297)
!2305 = !DILocation(line: 1106, column: 5, scope: !2297)
!2306 = !DILocation(line: 1108, column: 1, scope: !2168)
!2307 = !DISubprogram(name: "strtok_r", scope: !1283, file: !1283, line: 346, type: !2308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!114, !934, !935, !2310}
!2310 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !737)
!2311 = !DISubprogram(name: "strdup", scope: !1283, file: !1283, line: 167, type: !2312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!114, !817}
!2314 = !DISubprogram(name: "strlen", scope: !1283, file: !1283, line: 385, type: !2315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!406, !817}
!2317 = !DISubprogram(name: "strcmp", scope: !1283, file: !1283, line: 137, type: !2318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!141, !817, !817}
!2320 = distinct !DISubprogram(name: "storage_init_config", scope: !3, file: !3, line: 1115, type: !2321, scopeLine: 1115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2405)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!116, !2323}
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "settings", file: !6, line: 436, size: 2752, elements: !2325)
!2325 = !{!2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "maxbytes", scope: !2324, file: !6, line: 437, baseType: !406, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "maxconns", scope: !2324, file: !6, line: 438, baseType: !141, size: 32, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2324, file: !6, line: 439, baseType: !141, size: 32, offset: 96)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "udpport", scope: !2324, file: !6, line: 440, baseType: !141, size: 32, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !2324, file: !6, line: 441, baseType: !114, size: 64, offset: 192)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !2324, file: !6, line: 442, baseType: !141, size: 32, offset: 256)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "oldest_live", scope: !2324, file: !6, line: 443, baseType: !138, size: 32, offset: 288)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "oldest_cas", scope: !2324, file: !6, line: 444, baseType: !156, size: 64, offset: 320)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "evict_to_free", scope: !2324, file: !6, line: 445, baseType: !141, size: 32, offset: 384)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "socketpath", scope: !2324, file: !6, line: 446, baseType: !114, size: 64, offset: 448)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "auth_file", scope: !2324, file: !6, line: 447, baseType: !114, size: 64, offset: 512)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2324, file: !6, line: 448, baseType: !141, size: 32, offset: 576)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "factor", scope: !2324, file: !6, line: 449, baseType: !736, size: 64, offset: 640)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !2324, file: !6, line: 450, baseType: !141, size: 32, offset: 704)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "num_threads", scope: !2324, file: !6, line: 451, baseType: !141, size: 32, offset: 736)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "num_threads_per_udp", scope: !2324, file: !6, line: 452, baseType: !141, size: 32, offset: 768)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_delimiter", scope: !2324, file: !6, line: 453, baseType: !115, size: 8, offset: 800)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "detail_enabled", scope: !2324, file: !6, line: 454, baseType: !141, size: 32, offset: 832)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "reqs_per_event", scope: !2324, file: !6, line: 455, baseType: !141, size: 32, offset: 864)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "use_cas", scope: !2324, file: !6, line: 457, baseType: !450, size: 8, offset: 896)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "binding_protocol", scope: !2324, file: !6, line: 458, baseType: !55, size: 32, offset: 928)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !2324, file: !6, line: 459, baseType: !141, size: 32, offset: 960)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "item_size_max", scope: !2324, file: !6, line: 460, baseType: !141, size: 32, offset: 992)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "slab_chunk_size_max", scope: !2324, file: !6, line: 461, baseType: !141, size: 32, offset: 1024)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "slab_page_size", scope: !2324, file: !6, line: 462, baseType: !141, size: 32, offset: 1056)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "sig_hup", scope: !2324, file: !6, line: 463, baseType: !2352, size: 32, offset: 1088)
!2352 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2353)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "sig_atomic_t", file: !2354, line: 8, baseType: !2355)
!2354 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sig_atomic_t.h", directory: "", checksumkind: CSK_MD5, checksum: "d9236f7e3e7f10f53aa9d4cd97f503cf")
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sig_atomic_t", file: !122, line: 214, baseType: !141)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sasl", scope: !2324, file: !6, line: 464, baseType: !450, size: 8, offset: 1120)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "maxconns_fast", scope: !2324, file: !6, line: 465, baseType: !450, size: 8, offset: 1128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "lru_crawler", scope: !2324, file: !6, line: 466, baseType: !450, size: 8, offset: 1136)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "lru_maintainer_thread", scope: !2324, file: !6, line: 467, baseType: !450, size: 8, offset: 1144)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "lru_segmented", scope: !2324, file: !6, line: 468, baseType: !450, size: 8, offset: 1152)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "slab_reassign", scope: !2324, file: !6, line: 469, baseType: !450, size: 8, offset: 1160)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "slab_automove", scope: !2324, file: !6, line: 470, baseType: !141, size: 32, offset: 1184)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "slab_automove_ratio", scope: !2324, file: !6, line: 471, baseType: !736, size: 64, offset: 1216)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "slab_automove_window", scope: !2324, file: !6, line: 472, baseType: !7, size: 32, offset: 1280)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "hashpower_init", scope: !2324, file: !6, line: 473, baseType: !141, size: 32, offset: 1312)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_command", scope: !2324, file: !6, line: 474, baseType: !450, size: 8, offset: 1344)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "tail_repair_time", scope: !2324, file: !6, line: 475, baseType: !141, size: 32, offset: 1376)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "flush_enabled", scope: !2324, file: !6, line: 476, baseType: !450, size: 8, offset: 1408)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dump_enabled", scope: !2324, file: !6, line: 477, baseType: !450, size: 8, offset: 1416)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algorithm", scope: !2324, file: !6, line: 478, baseType: !114, size: 64, offset: 1472)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "lru_crawler_sleep", scope: !2324, file: !6, line: 479, baseType: !141, size: 32, offset: 1536)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "lru_crawler_tocrawl", scope: !2324, file: !6, line: 480, baseType: !119, size: 32, offset: 1568)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "hot_lru_pct", scope: !2324, file: !6, line: 481, baseType: !141, size: 32, offset: 1600)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "warm_lru_pct", scope: !2324, file: !6, line: 482, baseType: !141, size: 32, offset: 1632)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "hot_max_factor", scope: !2324, file: !6, line: 483, baseType: !736, size: 64, offset: 1664)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "warm_max_factor", scope: !2324, file: !6, line: 484, baseType: !736, size: 64, offset: 1728)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "crawls_persleep", scope: !2324, file: !6, line: 485, baseType: !141, size: 32, offset: 1792)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "temp_lru", scope: !2324, file: !6, line: 486, baseType: !450, size: 8, offset: 1824)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "temporary_ttl", scope: !2324, file: !6, line: 487, baseType: !119, size: 32, offset: 1856)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "idle_timeout", scope: !2324, file: !6, line: 488, baseType: !141, size: 32, offset: 1888)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "logger_watcher_buf_size", scope: !2324, file: !6, line: 489, baseType: !7, size: 32, offset: 1920)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "logger_buf_size", scope: !2324, file: !6, line: 490, baseType: !7, size: 32, offset: 1952)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_mem_limit", scope: !2324, file: !6, line: 491, baseType: !7, size: 32, offset: 1984)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "drop_privileges", scope: !2324, file: !6, line: 492, baseType: !450, size: 8, offset: 2016)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "watch_enabled", scope: !2324, file: !6, line: 493, baseType: !450, size: 8, offset: 2024)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "relaxed_privileges", scope: !2324, file: !6, line: 494, baseType: !450, size: 8, offset: 2032)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "meta_response_old", scope: !2324, file: !6, line: 495, baseType: !450, size: 8, offset: 2040)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "ext_io_threadcount", scope: !2324, file: !6, line: 497, baseType: !7, size: 32, offset: 2048)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ext_page_size", scope: !2324, file: !6, line: 498, baseType: !7, size: 32, offset: 2080)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ext_item_size", scope: !2324, file: !6, line: 499, baseType: !7, size: 32, offset: 2112)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ext_item_age", scope: !2324, file: !6, line: 500, baseType: !7, size: 32, offset: 2144)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "ext_low_ttl", scope: !2324, file: !6, line: 501, baseType: !7, size: 32, offset: 2176)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "ext_recache_rate", scope: !2324, file: !6, line: 502, baseType: !7, size: 32, offset: 2208)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ext_wbuf_size", scope: !2324, file: !6, line: 503, baseType: !7, size: 32, offset: 2240)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ext_compact_under", scope: !2324, file: !6, line: 504, baseType: !7, size: 32, offset: 2272)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ext_drop_under", scope: !2324, file: !6, line: 505, baseType: !7, size: 32, offset: 2304)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ext_max_sleep", scope: !2324, file: !6, line: 506, baseType: !7, size: 32, offset: 2336)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ext_max_frag", scope: !2324, file: !6, line: 507, baseType: !736, size: 64, offset: 2368)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "slab_automove_freeratio", scope: !2324, file: !6, line: 508, baseType: !736, size: 64, offset: 2432)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "ext_drop_unread", scope: !2324, file: !6, line: 509, baseType: !450, size: 8, offset: 2496)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "ext_global_pool_min", scope: !2324, file: !6, line: 511, baseType: !7, size: 32, offset: 2528)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "num_napi_ids", scope: !2324, file: !6, line: 528, baseType: !141, size: 32, offset: 2560)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "memory_file", scope: !2324, file: !6, line: 529, baseType: !114, size: 64, offset: 2624)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "sock_cookie_id", scope: !2324, file: !6, line: 537, baseType: !119, size: 32, offset: 2688)
!2405 = !{!2406, !2407}
!2406 = !DILocalVariable(name: "s", arg: 1, scope: !2320, file: !3, line: 1115, type: !2323)
!2407 = !DILocalVariable(name: "cf", scope: !2320, file: !3, line: 1116, type: !2408)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storage_settings", file: !3, line: 1110, size: 320, elements: !2410)
!2410 = !{!2411, !2412}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "storage_file", scope: !2409, file: !3, line: 1111, baseType: !2171, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cf", scope: !2409, file: !3, line: 1112, baseType: !2413, size: 256, offset: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extstore_conf", file: !72, line: 44, size: 256, elements: !2414)
!2414 = !{!2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "page_size", scope: !2413, file: !72, line: 45, baseType: !7, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "page_count", scope: !2413, file: !72, line: 46, baseType: !7, size: 32, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "page_buckets", scope: !2413, file: !72, line: 47, baseType: !7, size: 32, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "free_page_buckets", scope: !2413, file: !72, line: 48, baseType: !7, size: 32, offset: 96)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf_size", scope: !2413, file: !72, line: 49, baseType: !7, size: 32, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf_count", scope: !2413, file: !72, line: 50, baseType: !7, size: 32, offset: 160)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "io_threadcount", scope: !2413, file: !72, line: 51, baseType: !7, size: 32, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "io_depth", scope: !2413, file: !72, line: 52, baseType: !7, size: 32, offset: 224)
!2423 = !DILocation(line: 0, scope: !2320)
!2424 = !DILocation(line: 1116, column: 35, scope: !2320)
!2425 = !DILocation(line: 1118, column: 8, scope: !2320)
!2426 = !DILocation(line: 1118, column: 22, scope: !2320)
!2427 = !DILocation(line: 1122, column: 8, scope: !2320)
!2428 = !DILocation(line: 1123, column: 8, scope: !2320)
!2429 = !DILocation(line: 1123, column: 24, scope: !2320)
!2430 = !{!1034, !876, i64 312}
!2431 = !DILocation(line: 1124, column: 8, scope: !2320)
!2432 = !DILocation(line: 1124, column: 22, scope: !2320)
!2433 = !DILocation(line: 1122, column: 21, scope: !2320)
!2434 = !{!1035, !1035, i64 0}
!2435 = !DILocation(line: 1129, column: 8, scope: !2320)
!2436 = !DILocation(line: 1129, column: 22, scope: !2320)
!2437 = !{!1034, !769, i64 260}
!2438 = !DILocation(line: 1130, column: 8, scope: !2320)
!2439 = !DILocation(line: 1130, column: 27, scope: !2320)
!2440 = !{!1034, !769, i64 256}
!2441 = !DILocation(line: 1131, column: 37, scope: !2320)
!2442 = !DILocation(line: 1131, column: 9, scope: !2320)
!2443 = !DILocation(line: 1131, column: 16, scope: !2320)
!2444 = !DILocation(line: 1131, column: 26, scope: !2320)
!2445 = !{!2446, !769, i64 8}
!2446 = !{!"storage_settings", !875, i64 0, !2447, i64 8}
!2447 = !{!"extstore_conf", !769, i64 0, !769, i64 4, !769, i64 8, !769, i64 12, !769, i64 16, !769, i64 20, !769, i64 24, !769, i64 28}
!2448 = !DILocation(line: 1132, column: 37, scope: !2320)
!2449 = !DILocation(line: 1132, column: 16, scope: !2320)
!2450 = !DILocation(line: 1132, column: 26, scope: !2320)
!2451 = !{!2446, !769, i64 24}
!2452 = !DILocation(line: 1133, column: 42, scope: !2320)
!2453 = !DILocation(line: 1133, column: 16, scope: !2320)
!2454 = !DILocation(line: 1133, column: 31, scope: !2320)
!2455 = !{!2446, !769, i64 32}
!2456 = !DILocation(line: 1134, column: 16, scope: !2320)
!2457 = !DILocation(line: 1134, column: 25, scope: !2320)
!2458 = !{!2446, !769, i64 36}
!2459 = !DILocation(line: 1135, column: 16, scope: !2320)
!2460 = !DILocation(line: 1135, column: 29, scope: !2320)
!2461 = !{!2446, !769, i64 16}
!2462 = !DILocation(line: 1136, column: 16, scope: !2320)
!2463 = !DILocation(line: 1136, column: 27, scope: !2320)
!2464 = !{!2446, !769, i64 28}
!2465 = !DILocation(line: 1138, column: 5, scope: !2320)
!2466 = distinct !DISubprogram(name: "storage_read_config", scope: !3, file: !3, line: 1142, type: !2467, scopeLine: 1142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!141, !116, !737}
!2469 = !{!2470, !2471, !2472, !2473, !2475, !2476, !2479}
!2470 = !DILocalVariable(name: "conf", arg: 1, scope: !2466, file: !3, line: 1142, type: !116)
!2471 = !DILocalVariable(name: "subopt", arg: 2, scope: !2466, file: !3, line: 1142, type: !737)
!2472 = !DILocalVariable(name: "cf", scope: !2466, file: !3, line: 1143, type: !2408)
!2473 = !DILocalVariable(name: "ext_cf", scope: !2466, file: !3, line: 1144, type: !2474)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2475 = !DILocalVariable(name: "subopts_value", scope: !2466, file: !3, line: 1145, type: !114)
!2476 = !DILocalVariable(name: "subopts_tokens", scope: !2466, file: !3, line: 1165, type: !2477)
!2477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2478, size: 1024, elements: !473)
!2478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!2479 = !DILocalVariable(name: "tmp", scope: !2480, file: !3, line: 1327, type: !2171)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 1326, column: 32)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1326, column: 17)
!2482 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 1184, column: 64)
!2483 = !DILocation(line: 0, scope: !2466)
!2484 = !DILocation(line: 1144, column: 41, scope: !2466)
!2485 = !DILocation(line: 1145, column: 5, scope: !2466)
!2486 = !DILocation(line: 1165, column: 5, scope: !2466)
!2487 = !DILocation(line: 1165, column: 17, scope: !2466)
!2488 = !DILocation(line: 1184, column: 31, scope: !2466)
!2489 = !DILocation(line: 1184, column: 13, scope: !2466)
!2490 = !DILocation(line: 1184, column: 5, scope: !2466)
!2491 = !DILocation(line: 1186, column: 21, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1186, column: 17)
!2493 = !{!2446, !875, i64 0}
!2494 = !DILocation(line: 1186, column: 17, scope: !2492)
!2495 = !DILocation(line: 1186, column: 17, scope: !2482)
!2496 = !DILocation(line: 1187, column: 25, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 1186, column: 35)
!2498 = !DILocation(line: 1187, column: 17, scope: !2497)
!2499 = !DILocation(line: 1188, column: 17, scope: !2497)
!2500 = !DILocation(line: 1190, column: 17, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1190, column: 17)
!2502 = !DILocation(line: 1190, column: 31, scope: !2501)
!2503 = !DILocation(line: 1190, column: 17, scope: !2482)
!2504 = !DILocation(line: 1191, column: 25, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 1190, column: 40)
!2506 = !DILocation(line: 1191, column: 17, scope: !2505)
!2507 = !DILocation(line: 1192, column: 17, scope: !2505)
!2508 = !DILocation(line: 1194, column: 55, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1194, column: 17)
!2510 = !DILocation(line: 1194, column: 18, scope: !2509)
!2511 = !DILocation(line: 1194, column: 17, scope: !2482)
!2512 = !DILocation(line: 1195, column: 25, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 1194, column: 67)
!2514 = !DILocation(line: 1195, column: 17, scope: !2513)
!2515 = !DILocation(line: 1196, column: 17, scope: !2513)
!2516 = !DILocation(line: 1198, column: 13, scope: !2482)
!2517 = !DILocation(line: 1198, column: 31, scope: !2482)
!2518 = !{!2447, !769, i64 0}
!2519 = !DILocation(line: 1199, column: 13, scope: !2482)
!2520 = !DILocation(line: 1201, column: 17, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1201, column: 17)
!2522 = !DILocation(line: 1201, column: 31, scope: !2521)
!2523 = !DILocation(line: 1201, column: 17, scope: !2482)
!2524 = !DILocation(line: 1202, column: 25, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 1201, column: 40)
!2526 = !DILocation(line: 1202, column: 17, scope: !2525)
!2527 = !DILocation(line: 1203, column: 17, scope: !2525)
!2528 = !DILocation(line: 1205, column: 55, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1205, column: 17)
!2530 = !DILocation(line: 1205, column: 18, scope: !2529)
!2531 = !DILocation(line: 1205, column: 17, scope: !2482)
!2532 = !DILocation(line: 1206, column: 25, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 1205, column: 67)
!2534 = !DILocation(line: 1206, column: 17, scope: !2533)
!2535 = !DILocation(line: 1207, column: 17, scope: !2533)
!2536 = !DILocation(line: 1209, column: 13, scope: !2482)
!2537 = !DILocation(line: 1209, column: 31, scope: !2482)
!2538 = !{!2447, !769, i64 16}
!2539 = !DILocation(line: 1210, column: 36, scope: !2482)
!2540 = !DILocation(line: 1211, column: 13, scope: !2482)
!2541 = !DILocation(line: 1213, column: 17, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1213, column: 17)
!2543 = !DILocation(line: 1213, column: 31, scope: !2542)
!2544 = !DILocation(line: 1213, column: 17, scope: !2482)
!2545 = !DILocation(line: 1214, column: 25, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1213, column: 40)
!2547 = !DILocation(line: 1214, column: 17, scope: !2546)
!2548 = !DILocation(line: 1215, column: 17, scope: !2546)
!2549 = !DILocation(line: 1217, column: 55, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1217, column: 17)
!2551 = !DILocation(line: 1217, column: 18, scope: !2550)
!2552 = !DILocation(line: 1217, column: 17, scope: !2482)
!2553 = !DILocation(line: 1218, column: 25, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 1217, column: 72)
!2555 = !DILocation(line: 1218, column: 17, scope: !2554)
!2556 = !DILocation(line: 1219, column: 17, scope: !2554)
!2557 = !DILocation(line: 1221, column: 13, scope: !2482)
!2558 = !DILocation(line: 1223, column: 17, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1223, column: 17)
!2560 = !DILocation(line: 1223, column: 31, scope: !2559)
!2561 = !DILocation(line: 1223, column: 17, scope: !2482)
!2562 = !DILocation(line: 1224, column: 25, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1223, column: 40)
!2564 = !DILocation(line: 1224, column: 17, scope: !2563)
!2565 = !DILocation(line: 1225, column: 17, scope: !2563)
!2566 = !DILocation(line: 1227, column: 55, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1227, column: 17)
!2568 = !DILocation(line: 1227, column: 18, scope: !2567)
!2569 = !DILocation(line: 1227, column: 17, scope: !2482)
!2570 = !DILocation(line: 1228, column: 25, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 1227, column: 66)
!2572 = !DILocation(line: 1228, column: 17, scope: !2571)
!2573 = !DILocation(line: 1229, column: 17, scope: !2571)
!2574 = !DILocation(line: 1231, column: 13, scope: !2482)
!2575 = !DILocation(line: 1233, column: 17, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1233, column: 17)
!2577 = !DILocation(line: 1233, column: 31, scope: !2576)
!2578 = !DILocation(line: 1233, column: 17, scope: !2482)
!2579 = !DILocation(line: 1234, column: 25, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 1233, column: 40)
!2581 = !DILocation(line: 1234, column: 17, scope: !2580)
!2582 = !DILocation(line: 1235, column: 17, scope: !2580)
!2583 = !DILocation(line: 1237, column: 18, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1237, column: 17)
!2585 = !DILocation(line: 1237, column: 17, scope: !2482)
!2586 = !DILocation(line: 1238, column: 25, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 1237, column: 72)
!2588 = !DILocation(line: 1238, column: 17, scope: !2587)
!2589 = !DILocation(line: 1239, column: 17, scope: !2587)
!2590 = !DILocation(line: 1241, column: 13, scope: !2482)
!2591 = !DILocation(line: 1243, column: 17, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1243, column: 17)
!2593 = !DILocation(line: 1243, column: 31, scope: !2592)
!2594 = !DILocation(line: 1243, column: 17, scope: !2482)
!2595 = !DILocation(line: 1244, column: 25, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 1243, column: 40)
!2597 = !DILocation(line: 1244, column: 17, scope: !2596)
!2598 = !DILocation(line: 1245, column: 17, scope: !2596)
!2599 = !DILocation(line: 1247, column: 18, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1247, column: 17)
!2601 = !DILocation(line: 1247, column: 17, scope: !2482)
!2602 = !DILocation(line: 1248, column: 25, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 1247, column: 71)
!2604 = !DILocation(line: 1248, column: 17, scope: !2603)
!2605 = !DILocation(line: 1249, column: 17, scope: !2603)
!2606 = !DILocation(line: 1251, column: 13, scope: !2482)
!2607 = !DILocation(line: 1253, column: 17, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1253, column: 17)
!2609 = !DILocation(line: 1253, column: 31, scope: !2608)
!2610 = !DILocation(line: 1253, column: 17, scope: !2482)
!2611 = !DILocation(line: 1254, column: 25, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 1253, column: 40)
!2613 = !DILocation(line: 1254, column: 17, scope: !2612)
!2614 = !DILocation(line: 1255, column: 17, scope: !2612)
!2615 = !DILocation(line: 1257, column: 18, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1257, column: 17)
!2617 = !DILocation(line: 1257, column: 17, scope: !2482)
!2618 = !DILocation(line: 1258, column: 25, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 1257, column: 70)
!2620 = !DILocation(line: 1258, column: 17, scope: !2619)
!2621 = !DILocation(line: 1259, column: 17, scope: !2619)
!2622 = !DILocation(line: 1261, column: 13, scope: !2482)
!2623 = !DILocation(line: 1263, column: 17, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1263, column: 17)
!2625 = !DILocation(line: 1263, column: 31, scope: !2624)
!2626 = !DILocation(line: 1263, column: 17, scope: !2482)
!2627 = !DILocation(line: 1264, column: 25, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 1263, column: 40)
!2629 = !DILocation(line: 1264, column: 17, scope: !2628)
!2630 = !DILocation(line: 1265, column: 17, scope: !2628)
!2631 = !DILocation(line: 1267, column: 18, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1267, column: 17)
!2633 = !DILocation(line: 1267, column: 17, scope: !2482)
!2634 = !DILocation(line: 1268, column: 25, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 1267, column: 75)
!2636 = !DILocation(line: 1268, column: 17, scope: !2635)
!2637 = !DILocation(line: 1269, column: 17, scope: !2635)
!2638 = !DILocation(line: 1271, column: 13, scope: !2482)
!2639 = !DILocation(line: 1273, column: 17, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1273, column: 17)
!2641 = !DILocation(line: 1273, column: 31, scope: !2640)
!2642 = !DILocation(line: 1273, column: 17, scope: !2482)
!2643 = !DILocation(line: 1274, column: 25, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 1273, column: 40)
!2645 = !DILocation(line: 1274, column: 17, scope: !2644)
!2646 = !DILocation(line: 1275, column: 17, scope: !2644)
!2647 = !DILocation(line: 1277, column: 18, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1277, column: 17)
!2649 = !DILocation(line: 1277, column: 17, scope: !2482)
!2650 = !DILocation(line: 1278, column: 25, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 1277, column: 76)
!2652 = !DILocation(line: 1278, column: 17, scope: !2651)
!2653 = !DILocation(line: 1279, column: 17, scope: !2651)
!2654 = !DILocation(line: 1281, column: 13, scope: !2482)
!2655 = !DILocation(line: 1283, column: 17, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1283, column: 17)
!2657 = !DILocation(line: 1283, column: 31, scope: !2656)
!2658 = !DILocation(line: 1283, column: 17, scope: !2482)
!2659 = !DILocation(line: 1284, column: 25, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 1283, column: 40)
!2661 = !DILocation(line: 1284, column: 17, scope: !2660)
!2662 = !DILocation(line: 1285, column: 17, scope: !2660)
!2663 = !DILocation(line: 1287, column: 18, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1287, column: 17)
!2665 = !DILocation(line: 1287, column: 17, scope: !2482)
!2666 = !DILocation(line: 1288, column: 25, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 1287, column: 73)
!2668 = !DILocation(line: 1288, column: 17, scope: !2667)
!2669 = !DILocation(line: 1289, column: 17, scope: !2667)
!2670 = !DILocation(line: 1291, column: 13, scope: !2482)
!2671 = !DILocation(line: 1293, column: 17, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1293, column: 17)
!2673 = !DILocation(line: 1293, column: 31, scope: !2672)
!2674 = !DILocation(line: 1293, column: 17, scope: !2482)
!2675 = !DILocation(line: 1294, column: 25, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 1293, column: 40)
!2677 = !DILocation(line: 1294, column: 17, scope: !2676)
!2678 = !DILocation(line: 1295, column: 17, scope: !2676)
!2679 = !DILocation(line: 1297, column: 18, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1297, column: 17)
!2681 = !DILocation(line: 1297, column: 17, scope: !2482)
!2682 = !DILocation(line: 1298, column: 25, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 1297, column: 72)
!2684 = !DILocation(line: 1298, column: 17, scope: !2683)
!2685 = !DILocation(line: 1299, column: 17, scope: !2683)
!2686 = !DILocation(line: 1301, column: 13, scope: !2482)
!2687 = !DILocation(line: 1303, column: 17, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1303, column: 17)
!2689 = !DILocation(line: 1303, column: 31, scope: !2688)
!2690 = !DILocation(line: 1303, column: 17, scope: !2482)
!2691 = !DILocation(line: 1304, column: 25, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 1303, column: 40)
!2693 = !DILocation(line: 1304, column: 17, scope: !2692)
!2694 = !DILocation(line: 1305, column: 17, scope: !2692)
!2695 = !DILocation(line: 1307, column: 18, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1307, column: 17)
!2697 = !DILocation(line: 1307, column: 17, scope: !2482)
!2698 = !DILocation(line: 1308, column: 25, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 1307, column: 70)
!2700 = !DILocation(line: 1308, column: 17, scope: !2699)
!2701 = !DILocation(line: 1309, column: 17, scope: !2699)
!2702 = !DILocation(line: 1311, column: 13, scope: !2482)
!2703 = !DILocation(line: 1313, column: 17, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1313, column: 17)
!2705 = !DILocation(line: 1313, column: 31, scope: !2704)
!2706 = !DILocation(line: 1313, column: 17, scope: !2482)
!2707 = !DILocation(line: 1314, column: 25, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 1313, column: 40)
!2709 = !DILocation(line: 1314, column: 17, scope: !2708)
!2710 = !DILocation(line: 1315, column: 17, scope: !2708)
!2711 = !DILocation(line: 1317, column: 18, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1317, column: 17)
!2713 = !DILocation(line: 1317, column: 17, scope: !2482)
!2714 = !DILocation(line: 1318, column: 25, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 1317, column: 81)
!2716 = !DILocation(line: 1318, column: 17, scope: !2715)
!2717 = !DILocation(line: 1319, column: 17, scope: !2715)
!2718 = !DILocation(line: 1321, column: 13, scope: !2482)
!2719 = !DILocation(line: 1323, column: 38, scope: !2482)
!2720 = !DILocation(line: 1324, column: 13, scope: !2482)
!2721 = !DILocation(line: 1326, column: 17, scope: !2481)
!2722 = !DILocation(line: 1326, column: 17, scope: !2482)
!2723 = !DILocation(line: 1327, column: 92, scope: !2480)
!2724 = !DILocation(line: 1327, column: 50, scope: !2480)
!2725 = !DILocation(line: 0, scope: !2480)
!2726 = !DILocation(line: 1328, column: 25, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1328, column: 21)
!2728 = !DILocation(line: 1328, column: 21, scope: !2480)
!2729 = !DILocation(line: 1329, column: 29, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 1328, column: 34)
!2731 = !DILocation(line: 1329, column: 21, scope: !2730)
!2732 = !DILocation(line: 1332, column: 25, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1332, column: 21)
!2734 = !DILocation(line: 1332, column: 38, scope: !2733)
!2735 = !DILocation(line: 1332, column: 21, scope: !2480)
!2736 = !DILocation(line: 1333, column: 33, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 1332, column: 47)
!2738 = !DILocation(line: 1333, column: 37, scope: !2737)
!2739 = !DILocation(line: 1333, column: 26, scope: !2737)
!2740 = !DILocation(line: 1333, column: 31, scope: !2737)
!2741 = !{!2205, !875, i64 40}
!2742 = !DILocation(line: 1334, column: 17, scope: !2737)
!2743 = !DILocation(line: 1337, column: 25, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 1336, column: 20)
!2745 = !DILocation(line: 1337, column: 17, scope: !2744)
!2746 = !DILocation(line: 1338, column: 17, scope: !2744)
!2747 = !DILocation(line: 1335, column: 36, scope: !2480)
!2748 = !DILocation(line: 1335, column: 34, scope: !2480)
!2749 = !DILocation(line: 1340, column: 13, scope: !2482)
!2750 = !DILocation(line: 1342, column: 21, scope: !2482)
!2751 = !DILocation(line: 1342, column: 59, scope: !2482)
!2752 = !DILocation(line: 1342, column: 13, scope: !2482)
!2753 = !DILocation(line: 1343, column: 13, scope: !2482)
!2754 = !DILocation(line: 1347, column: 1, scope: !2466)
!2755 = !DISubprogram(name: "getsubopt", scope: !926, file: !926, line: 957, type: !2756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!141, !2310, !2758, !2310}
!2758 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2759)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2760 = !DISubprogram(name: "safe_strtoul", scope: !2761, file: !2761, line: 19, type: !2762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2761 = !DIFile(filename: "./util.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d1ef68c688867746f50aae7567be079a")
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!450, !817, !118}
!2764 = !DISubprogram(name: "safe_strtod", scope: !2761, file: !2761, line: 21, type: !2765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!450, !817, !2767}
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!2768 = distinct !DISubprogram(name: "storage_check_config", scope: !3, file: !3, line: 1349, type: !1704, scopeLine: 1349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2769)
!2769 = !{!2770, !2771, !2772}
!2770 = !DILocalVariable(name: "conf", arg: 1, scope: !2768, file: !3, line: 1349, type: !116)
!2771 = !DILocalVariable(name: "cf", scope: !2768, file: !3, line: 1350, type: !2408)
!2772 = !DILocalVariable(name: "ext_cf", scope: !2768, file: !3, line: 1351, type: !2474)
!2773 = !DILocation(line: 0, scope: !2768)
!2774 = !DILocation(line: 1353, column: 13, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 1353, column: 9)
!2776 = !DILocation(line: 1353, column: 9, scope: !2775)
!2777 = !DILocation(line: 1353, column: 9, scope: !2768)
!2778 = !DILocation(line: 1354, column: 22, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 1354, column: 13)
!2780 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 1353, column: 27)
!2781 = !{!1034, !769, i64 124}
!2782 = !DILocation(line: 1354, column: 46, scope: !2779)
!2783 = !DILocation(line: 1354, column: 36, scope: !2779)
!2784 = !DILocation(line: 1354, column: 13, scope: !2780)
!2785 = !DILocation(line: 1355, column: 21, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 1354, column: 57)
!2787 = !DILocation(line: 1355, column: 13, scope: !2786)
!2788 = !DILocation(line: 1357, column: 13, scope: !2786)
!2789 = !DILocation(line: 1360, column: 22, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 1360, column: 13)
!2791 = !{!1034, !769, i64 16}
!2792 = !DILocation(line: 1360, column: 13, scope: !2790)
!2793 = !DILocation(line: 1360, column: 13, scope: !2780)
!2794 = !DILocation(line: 1361, column: 21, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 1360, column: 31)
!2796 = !DILocation(line: 1361, column: 13, scope: !2795)
!2797 = !DILocation(line: 1362, column: 13, scope: !2795)
!2798 = !DILocation(line: 1365, column: 9, scope: !2780)
!2799 = !DILocation(line: 1368, column: 5, scope: !2768)
!2800 = !DILocation(line: 1369, column: 1, scope: !2768)
!2801 = distinct !DISubprogram(name: "storage_init", scope: !3, file: !3, line: 1371, type: !1750, scopeLine: 1371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2802)
!2802 = !{!2803, !2804, !2805, !2806, !2807}
!2803 = !DILocalVariable(name: "conf", arg: 1, scope: !2801, file: !3, line: 1371, type: !116)
!2804 = !DILocalVariable(name: "cf", scope: !2801, file: !3, line: 1372, type: !2408)
!2805 = !DILocalVariable(name: "ext_cf", scope: !2801, file: !3, line: 1373, type: !2474)
!2806 = !DILocalVariable(name: "eres", scope: !2801, file: !3, line: 1375, type: !76)
!2807 = !DILocalVariable(name: "storage", scope: !2801, file: !3, line: 1376, type: !116)
!2808 = !DILocation(line: 0, scope: !2801)
!2809 = !DILocation(line: 1373, column: 41, scope: !2801)
!2810 = !DILocation(line: 1375, column: 5, scope: !2801)
!2811 = !DILocation(line: 1377, column: 18, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 1377, column: 9)
!2813 = !{!1034, !769, i64 284}
!2814 = !DILocation(line: 1377, column: 36, scope: !2812)
!2815 = !DILocation(line: 1377, column: 9, scope: !2801)
!2816 = !DILocation(line: 1379, column: 38, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 1377, column: 42)
!2818 = !DILocation(line: 1379, column: 42, scope: !2817)
!2819 = !DILocation(line: 1379, column: 56, scope: !2817)
!2820 = !DILocation(line: 1379, column: 67, scope: !2817)
!2821 = !DILocation(line: 1379, column: 36, scope: !2817)
!2822 = !DILocation(line: 1381, column: 33, scope: !2817)
!2823 = !{!1034, !769, i64 288}
!2824 = !DILocation(line: 1382, column: 5, scope: !2817)
!2825 = !DILocation(line: 1386, column: 33, scope: !2801)
!2826 = !DILocation(line: 1383, column: 5, scope: !2801)
!2827 = !DILocation(line: 1385, column: 34, scope: !2801)
!2828 = !DILocation(line: 1386, column: 15, scope: !2801)
!2829 = !DILocation(line: 1387, column: 17, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 1387, column: 9)
!2831 = !DILocation(line: 1387, column: 9, scope: !2801)
!2832 = !DILocation(line: 1388, column: 17, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 1387, column: 26)
!2834 = !DILocation(line: 1389, column: 30, scope: !2833)
!2835 = !DILocation(line: 1389, column: 17, scope: !2833)
!2836 = !DILocation(line: 1388, column: 9, scope: !2833)
!2837 = !DILocation(line: 1390, column: 13, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 1390, column: 13)
!2839 = !DILocation(line: 1390, column: 18, scope: !2838)
!2840 = !DILocation(line: 1390, column: 13, scope: !2833)
!2841 = !DILocation(line: 1391, column: 13, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 1390, column: 46)
!2843 = !DILocation(line: 1392, column: 9, scope: !2842)
!2844 = !DILocation(line: 1393, column: 9, scope: !2833)
!2845 = !DILocation(line: 1396, column: 12, scope: !2801)
!2846 = !DILocation(line: 1396, column: 5, scope: !2801)
!2847 = !DILocation(line: 1397, column: 1, scope: !2801)
!2848 = !DISubprogram(name: "crc32c_init", scope: !2849, file: !2849, line: 18, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2849 = !DIFile(filename: "./crc32c.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "8a48ba9fe4cc0dc3de03e345ef4b0904")
!2850 = !DISubprogram(name: "extstore_init", scope: !72, file: !72, line: 104, type: !2851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!116, !2171, !2474, !2853}
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!2854 = !DISubprogram(name: "extstore_err", scope: !72, file: !72, line: 103, type: !2855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!817, !76}
!2857 = !DISubprogram(name: "perror", scope: !931, file: !931, line: 775, type: !2858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{null, !817}
!2860 = distinct !DISubprogram(name: "__bswap_32", scope: !2861, file: !2861, line: 49, type: !2862, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2864)
!2861 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "552c402ec2d372531713984b317e0c35")
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!121, !121}
!2864 = !{!2865}
!2865 = !DILocalVariable(name: "__bsx", arg: 1, scope: !2860, file: !2861, line: 49, type: !121)
!2866 = !DILocation(line: 0, scope: !2860)
!2867 = !DILocation(line: 54, column: 10, scope: !2860)
!2868 = !DILocation(line: 54, column: 3, scope: !2860)
!2869 = distinct !DISubprogram(name: "__bswap_16", scope: !2861, file: !2861, line: 34, type: !2870, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2872)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!145, !145}
!2872 = !{!2873}
!2873 = !DILocalVariable(name: "__bsx", arg: 1, scope: !2869, file: !2861, line: 34, type: !145)
!2874 = !DILocation(line: 0, scope: !2869)
!2875 = !DILocation(line: 39, column: 3, scope: !2869)
!2876 = !DISubprogram(name: "memcmp", scope: !1283, file: !1283, line: 64, type: !2877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!141, !548, !548, !406}
!2879 = !DISubprogram(name: "redispatch_conn", scope: !6, file: !6, line: 953, type: !2880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{null, !567}
!2882 = !DISubprogram(name: "slabs_free", scope: !1267, file: !1267, line: 29, type: !2883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{null, !116, !406, !7}
!2885 = !DISubprogram(name: "item_unlink", scope: !6, file: !6, line: 980, type: !1290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2886 = !DISubprogram(name: "item_trylock", scope: !6, file: !6, line: 983, type: !2887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!116, !119}
!2889 = !DISubprogram(name: "item_replace", scope: !6, file: !6, line: 979, type: !2890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!141, !435, !435, !820}
!2892 = !DISubprogram(name: "item_trylock_unlock", scope: !6, file: !6, line: 984, type: !1299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2893 = !DISubprogram(name: "logger_create", scope: !38, file: !38, line: 205, type: !2894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!493}
!2896 = !DISubprogram(name: "abort", scope: !926, file: !926, line: 591, type: !997, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2897 = !DISubprogram(name: "global_page_pool_size", scope: !1267, file: !1267, line: 41, type: !2898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!7, !2900}
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!2901 = !DISubprogram(name: "slabs_available_chunks", scope: !1267, file: !1267, line: 47, type: !2902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!7, !7, !2900, !2904}
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2905 = distinct !DISubprogram(name: "storage_write", scope: !3, file: !3, line: 476, type: !2906, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2909)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!141, !116, !2908, !2908}
!2908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!2909 = !{!2910, !2911, !2912, !2913, !2914, !2919, !2920, !2921, !2922, !2923, !2926, !2929, !2932, !2935, !2936, !2937, !2938, !2939}
!2910 = !DILocalVariable(name: "storage", arg: 1, scope: !2905, file: !3, line: 476, type: !116)
!2911 = !DILocalVariable(name: "clsid", arg: 2, scope: !2905, file: !3, line: 476, type: !2908)
!2912 = !DILocalVariable(name: "item_age", arg: 3, scope: !2905, file: !3, line: 476, type: !2908)
!2913 = !DILocalVariable(name: "did_moves", scope: !2905, file: !3, line: 477, type: !141)
!2914 = !DILocalVariable(name: "it_info", scope: !2905, file: !3, line: 478, type: !2915)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lru_pull_tail_return", file: !1275, line: 42, size: 128, elements: !2916)
!2916 = !{!2917, !2918}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2915, file: !1275, line: 43, baseType: !435, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "hv", scope: !2915, file: !1275, line: 44, baseType: !119, size: 32, offset: 64)
!2919 = !DILocalVariable(name: "io", scope: !2905, file: !3, line: 487, type: !686)
!2920 = !DILocalVariable(name: "it", scope: !2905, file: !3, line: 488, type: !435)
!2921 = !DILocalVariable(name: "orig_ntotal", scope: !2905, file: !3, line: 490, type: !406)
!2922 = !DILocalVariable(name: "flags", scope: !2905, file: !3, line: 491, type: !119)
!2923 = !DILocalVariable(name: "hdr_it", scope: !2924, file: !3, line: 495, type: !435)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 493, column: 68)
!2925 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 492, column: 9)
!2926 = !DILocalVariable(name: "bucket", scope: !2927, file: !3, line: 500, type: !141)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 499, column: 29)
!2928 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 499, column: 13)
!2929 = !DILocalVariable(name: "buf_it", scope: !2930, file: !3, line: 517, type: !435)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 514, column: 76)
!2931 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 514, column: 17)
!2932 = !DILocalVariable(name: "sch", scope: !2933, file: !3, line: 523, type: !123)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 521, column: 50)
!2934 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 521, column: 21)
!2935 = !DILocalVariable(name: "remain", scope: !2933, file: !3, line: 524, type: !141)
!2936 = !DILocalVariable(name: "copied", scope: !2933, file: !3, line: 525, type: !141)
!2937 = !DILocalVariable(name: "hdrtotal", scope: !2933, file: !3, line: 527, type: !141)
!2938 = !DILocalVariable(name: "hdr", scope: !2930, file: !3, line: 546, type: !106)
!2939 = !DILocalVariable(name: "myl", scope: !2940, file: !3, line: 560, type: !493)
!2940 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 560, column: 17)
!2941 = !DILocation(line: 0, scope: !2905)
!2942 = !DILocation(line: 478, column: 5, scope: !2905)
!2943 = !DILocation(line: 478, column: 33, scope: !2905)
!2944 = !DILocation(line: 480, column: 13, scope: !2905)
!2945 = !DILocation(line: 480, column: 16, scope: !2905)
!2946 = !{!2947, !875, i64 0}
!2947 = !{!"lru_pull_tail_return", !875, i64 0, !769, i64 8}
!2948 = !DILocation(line: 481, column: 5, scope: !2905)
!2949 = !DILocation(line: 483, column: 17, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 483, column: 9)
!2951 = !DILocation(line: 483, column: 20, scope: !2950)
!2952 = !DILocation(line: 483, column: 9, scope: !2905)
!2953 = !DILocation(line: 484, column: 16, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 483, column: 29)
!2955 = !DILocation(line: 484, column: 9, scope: !2954)
!2956 = !DILocation(line: 487, column: 5, scope: !2905)
!2957 = !DILocation(line: 487, column: 12, scope: !2905)
!2958 = !DILocation(line: 490, column: 26, scope: !2905)
!2959 = !DILocation(line: 492, column: 23, scope: !2925)
!2960 = !DILocation(line: 492, column: 35, scope: !2925)
!2961 = !DILocation(line: 492, column: 40, scope: !2925)
!2962 = !DILocation(line: 493, column: 14, scope: !2925)
!2963 = !DILocation(line: 493, column: 23, scope: !2925)
!2964 = !DILocation(line: 493, column: 28, scope: !2925)
!2965 = !DILocation(line: 493, column: 31, scope: !2925)
!2966 = !DILocation(line: 493, column: 50, scope: !2925)
!2967 = !DILocation(line: 493, column: 44, scope: !2925)
!2968 = !DILocation(line: 493, column: 55, scope: !2925)
!2969 = !DILocation(line: 492, column: 9, scope: !2905)
!2970 = !DILocation(line: 494, column: 9, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 494, column: 9)
!2972 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 494, column: 9)
!2973 = !DILocation(line: 494, column: 9, scope: !2972)
!2974 = !DILocation(line: 494, column: 9, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 494, column: 9)
!2976 = !DILocation(line: 494, column: 9, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 494, column: 9)
!2978 = !DILocation(line: 495, column: 38, scope: !2924)
!2979 = !DILocation(line: 495, column: 56, scope: !2924)
!2980 = !DILocation(line: 495, column: 52, scope: !2924)
!2981 = !DILocation(line: 0, scope: !2971)
!2982 = !DILocation(line: 495, column: 73, scope: !2924)
!2983 = !DILocation(line: 495, column: 24, scope: !2924)
!2984 = !DILocation(line: 0, scope: !2924)
!2985 = !DILocation(line: 499, column: 20, scope: !2928)
!2986 = !DILocation(line: 499, column: 13, scope: !2924)
!2987 = !DILocation(line: 500, column: 31, scope: !2927)
!2988 = !DILocation(line: 500, column: 26, scope: !2927)
!2989 = !DILocation(line: 0, scope: !2927)
!2990 = !DILocation(line: 503, column: 21, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 503, column: 17)
!2992 = !DILocation(line: 503, column: 31, scope: !2991)
!2993 = !DILocation(line: 503, column: 29, scope: !2991)
!2994 = !DILocation(line: 503, column: 55, scope: !2991)
!2995 = !{!1034, !769, i64 272}
!2996 = !DILocation(line: 503, column: 44, scope: !2991)
!2997 = !DILocation(line: 503, column: 17, scope: !2927)
!2998 = !DILocation(line: 504, column: 24, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 503, column: 68)
!3000 = !DILocation(line: 505, column: 13, scope: !2999)
!3001 = !DILocation(line: 506, column: 21, scope: !2927)
!3002 = !DILocation(line: 506, column: 30, scope: !2927)
!3003 = !DILocation(line: 507, column: 22, scope: !2927)
!3004 = !DILocation(line: 507, column: 16, scope: !2927)
!3005 = !DILocation(line: 507, column: 20, scope: !2927)
!3006 = !DILocation(line: 508, column: 16, scope: !2927)
!3007 = !DILocation(line: 508, column: 21, scope: !2927)
!3008 = !DILocation(line: 511, column: 13, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 511, column: 13)
!3010 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 511, column: 13)
!3011 = !DILocation(line: 511, column: 13, scope: !3010)
!3012 = !DILocation(line: 514, column: 17, scope: !2931)
!3013 = !DILocation(line: 514, column: 70, scope: !2931)
!3014 = !DILocation(line: 514, column: 17, scope: !2927)
!3015 = !DILocation(line: 517, column: 44, scope: !2930)
!3016 = !DILocation(line: 0, scope: !2930)
!3017 = !DILocation(line: 518, column: 40, scope: !2930)
!3018 = !{!2947, !769, i64 8}
!3019 = !DILocation(line: 518, column: 25, scope: !2930)
!3020 = !DILocation(line: 518, column: 30, scope: !2930)
!3021 = !DILocation(line: 521, column: 25, scope: !2934)
!3022 = !DILocation(line: 521, column: 21, scope: !2934)
!3023 = !DILocation(line: 521, column: 34, scope: !2934)
!3024 = !DILocation(line: 521, column: 21, scope: !2930)
!3025 = !DILocation(line: 523, column: 54, scope: !2933)
!3026 = !DILocation(line: 523, column: 39, scope: !2933)
!3027 = !DILocation(line: 0, scope: !2933)
!3028 = !DILocation(line: 527, column: 36, scope: !2933)
!3029 = !DILocation(line: 527, column: 52, scope: !2933)
!3030 = !DILocation(line: 528, column: 42, scope: !2933)
!3031 = !DILocation(line: 528, column: 67, scope: !2933)
!3032 = !DILocation(line: 528, column: 82, scope: !2933)
!3033 = !DILocation(line: 528, column: 91, scope: !2933)
!3034 = !DILocation(line: 528, column: 21, scope: !2933)
!3035 = !DILocation(line: 531, column: 32, scope: !2933)
!3036 = !DILocation(line: 531, column: 35, scope: !2933)
!3037 = !DILocation(line: 531, column: 21, scope: !2933)
!3038 = !DILocation(line: 532, column: 25, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 532, column: 25)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 532, column: 25)
!3041 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 531, column: 43)
!3042 = !DILocation(line: 532, column: 25, scope: !3040)
!3043 = !DILocation(line: 533, column: 43, scope: !3041)
!3044 = !DILocation(line: 533, column: 46, scope: !3041)
!3045 = !DILocation(line: 533, column: 55, scope: !3041)
!3046 = !DILocation(line: 533, column: 71, scope: !3041)
!3047 = !DILocation(line: 533, column: 66, scope: !3041)
!3048 = !DILocation(line: 533, column: 25, scope: !3041)
!3049 = !DILocation(line: 535, column: 40, scope: !3041)
!3050 = !DILocation(line: 535, column: 32, scope: !3041)
!3051 = !DILocation(line: 536, column: 32, scope: !3041)
!3052 = !DILocation(line: 537, column: 36, scope: !3041)
!3053 = !DILocation(line: 531, column: 28, scope: !2933)
!3054 = distinct !{!3054, !3037, !3055, !919}
!3055 = !DILocation(line: 538, column: 21, scope: !2933)
!3056 = !DILocation(line: 539, column: 17, scope: !2934)
!3057 = !DILocation(line: 539, column: 17, scope: !2933)
!3058 = !DILocation(line: 540, column: 39, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 539, column: 24)
!3060 = !DILocation(line: 540, column: 42, scope: !3059)
!3061 = !DILocation(line: 540, column: 67, scope: !3059)
!3062 = !DILocation(line: 540, column: 85, scope: !3059)
!3063 = !DILocation(line: 540, column: 82, scope: !3059)
!3064 = !DILocation(line: 540, column: 88, scope: !3059)
!3065 = !DILocation(line: 540, column: 21, scope: !3059)
!3066 = !DILocation(line: 543, column: 25, scope: !2930)
!3067 = !DILocation(line: 543, column: 34, scope: !2930)
!3068 = !DILocation(line: 544, column: 35, scope: !2930)
!3069 = !DILocation(line: 544, column: 55, scope: !2930)
!3070 = !DILocation(line: 544, column: 58, scope: !2930)
!3071 = !DILocation(line: 544, column: 84, scope: !2930)
!3072 = !DILocation(line: 544, column: 25, scope: !2930)
!3073 = !DILocation(line: 544, column: 33, scope: !2930)
!3074 = !DILocation(line: 545, column: 17, scope: !2930)
!3075 = !DILocation(line: 546, column: 46, scope: !2930)
!3076 = !DILocation(line: 547, column: 40, scope: !2930)
!3077 = !DILocation(line: 547, column: 22, scope: !2930)
!3078 = !DILocation(line: 547, column: 35, scope: !2930)
!3079 = !DILocation(line: 548, column: 35, scope: !2930)
!3080 = !DILocation(line: 548, column: 22, scope: !2930)
!3081 = !DILocation(line: 548, column: 30, scope: !2930)
!3082 = !DILocation(line: 549, column: 35, scope: !2930)
!3083 = !DILocation(line: 549, column: 22, scope: !2930)
!3084 = !DILocation(line: 549, column: 30, scope: !2930)
!3085 = !DILocation(line: 551, column: 38, scope: !2930)
!3086 = !DILocation(line: 551, column: 25, scope: !2930)
!3087 = !DILocation(line: 551, column: 32, scope: !2930)
!3088 = !DILocation(line: 556, column: 50, scope: !2930)
!3089 = !DILocation(line: 556, column: 17, scope: !2930)
!3090 = !DILocation(line: 557, column: 17, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 557, column: 17)
!3092 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 557, column: 17)
!3093 = !DILocation(line: 557, column: 17, scope: !3092)
!3094 = !DILocation(line: 557, column: 17, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 557, column: 17)
!3096 = !DILocation(line: 558, column: 17, scope: !2930)
!3097 = !DILocation(line: 0, scope: !2940)
!3098 = !DILocation(line: 560, column: 17, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 560, column: 17)
!3100 = !DILocation(line: 560, column: 17, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 560, column: 17)
!3102 = !DILocation(line: 560, column: 17, scope: !2940)
!3103 = !DILocation(line: 563, column: 28, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 561, column: 20)
!3105 = !DILocation(line: 563, column: 36, scope: !3104)
!3106 = !DILocation(line: 563, column: 57, scope: !3104)
!3107 = !DILocation(line: 563, column: 17, scope: !3104)
!3108 = !DILocation(line: 567, column: 5, scope: !2905)
!3109 = !DILocation(line: 568, column: 25, scope: !2905)
!3110 = !DILocation(line: 568, column: 5, scope: !2905)
!3111 = !DILocation(line: 570, column: 1, scope: !2905)
!3112 = !DISubprogram(name: "usleep", scope: !3113, file: !3113, line: 460, type: !3114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!3113 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!141, !1762}
!3116 = !DISubprogram(name: "lru_pull_tail", scope: !1275, file: !1275, line: 47, type: !3117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!141, !2908, !2908, !3119, !3120, !3121, !3122}
!3119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!3120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!3121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!3123 = !DISubprogram(name: "do_item_alloc", scope: !1275, file: !1275, line: 14, type: !3124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!435, !114, !1270, !1278, !3121, !2908}
!3126 = !DISubprogram(name: "extstore_write_request", scope: !72, file: !72, line: 105, type: !3127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!141, !116, !7, !7, !705}
!3129 = !DISubprogram(name: "memcpy", scope: !1283, file: !1283, line: 43, type: !3130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!116, !1752, !3132, !406}
!3132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !548)
!3133 = !DISubprogram(name: "extstore_write", scope: !72, file: !72, line: 106, type: !3134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{null, !116, !705}
!3136 = !DISubprogram(name: "do_item_remove", scope: !1275, file: !1275, line: 23, type: !1290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!3137 = !DISubprogram(name: "pthread_getspecific", scope: !1505, file: !1505, line: 1131, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!116, !3140}
!3140 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !183, line: 49, baseType: !7)
!3141 = !DISubprogram(name: "logger_log", scope: !38, file: !38, line: 216, type: !3142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!100, !493, !3144, !548, null}
!3144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!3145 = !DISubprogram(name: "item_unlock", scope: !6, file: !6, line: 985, type: !3146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{null, !119}
!3148 = distinct !DISubprogram(name: "_storage_compact_cb", scope: !3, file: !3, line: 872, type: !703, scopeLine: 872, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3149)
!3149 = !{!3150, !3151, !3152, !3153}
!3150 = !DILocalVariable(name: "e", arg: 1, scope: !3148, file: !3, line: 872, type: !116)
!3151 = !DILocalVariable(name: "io", arg: 2, scope: !3148, file: !3, line: 872, type: !705)
!3152 = !DILocalVariable(name: "ret", arg: 3, scope: !3148, file: !3, line: 872, type: !141)
!3153 = !DILocalVariable(name: "wrap", scope: !3148, file: !3, line: 873, type: !728)
!3154 = !DILocation(line: 0, scope: !3148)
!3155 = !DILocation(line: 873, column: 76, scope: !3148)
!3156 = !DILocation(line: 874, column: 5, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 874, column: 5)
!3158 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 874, column: 5)
!3159 = !DILocation(line: 874, column: 5, scope: !3158)
!3160 = !DILocation(line: 876, column: 31, scope: !3148)
!3161 = !DILocation(line: 876, column: 5, scope: !3148)
!3162 = !DILocation(line: 878, column: 13, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 878, column: 9)
!3164 = !DILocation(line: 878, column: 9, scope: !3148)
!3165 = !DILocation(line: 879, column: 9, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 878, column: 18)
!3167 = !DILocation(line: 879, column: 15, scope: !3166)
!3168 = !DILocation(line: 879, column: 20, scope: !3166)
!3169 = !DILocation(line: 880, column: 5, scope: !3166)
!3170 = !DILocation(line: 881, column: 11, scope: !3148)
!3171 = !DILocation(line: 881, column: 16, scope: !3148)
!3172 = !DILocation(line: 883, column: 5, scope: !3148)
!3173 = !DILocation(line: 884, column: 1, scope: !3148)
!3174 = !DISubprogram(name: "extstore_run_maint", scope: !72, file: !72, line: 119, type: !1299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!3175 = distinct !DISubprogram(name: "storage_compact_check", scope: !3, file: !3, line: 699, type: !3176, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3179)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!141, !116, !493, !118, !3178, !3178, !2900}
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!3179 = !{!3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194}
!3180 = !DILocalVariable(name: "storage", arg: 1, scope: !3175, file: !3, line: 699, type: !116)
!3181 = !DILocalVariable(name: "l", arg: 2, scope: !3175, file: !3, line: 699, type: !493)
!3182 = !DILocalVariable(name: "page_id", arg: 3, scope: !3175, file: !3, line: 700, type: !118)
!3183 = !DILocalVariable(name: "page_version", arg: 4, scope: !3175, file: !3, line: 700, type: !3178)
!3184 = !DILocalVariable(name: "page_size", arg: 5, scope: !3175, file: !3, line: 701, type: !3178)
!3185 = !DILocalVariable(name: "drop_unread", arg: 6, scope: !3175, file: !3, line: 701, type: !2900)
!3186 = !DILocalVariable(name: "st", scope: !3175, file: !3, line: 702, type: !833)
!3187 = !DILocalVariable(name: "x", scope: !3175, file: !3, line: 703, type: !141)
!3188 = !DILocalVariable(name: "rate", scope: !3175, file: !3, line: 704, type: !736)
!3189 = !DILocalVariable(name: "frag_limit", scope: !3175, file: !3, line: 705, type: !156)
!3190 = !DILocalVariable(name: "low_version", scope: !3175, file: !3, line: 706, type: !156)
!3191 = !DILocalVariable(name: "lowest_version", scope: !3175, file: !3, line: 707, type: !156)
!3192 = !DILocalVariable(name: "low_page", scope: !3175, file: !3, line: 708, type: !7)
!3193 = !DILocalVariable(name: "lowest_page", scope: !3175, file: !3, line: 709, type: !7)
!3194 = !DILocalVariable(name: "myl", scope: !3195, file: !3, line: 724, type: !493)
!3195 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 724, column: 5)
!3196 = !DILocation(line: 0, scope: !3175)
!3197 = !DILocation(line: 702, column: 5, scope: !3175)
!3198 = !DILocation(line: 702, column: 27, scope: !3175)
!3199 = !DILocation(line: 710, column: 5, scope: !3175)
!3200 = !DILocation(line: 711, column: 12, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 711, column: 9)
!3202 = !DILocation(line: 711, column: 23, scope: !3201)
!3203 = !DILocation(line: 711, column: 9, scope: !3175)
!3204 = !DILocation(line: 712, column: 9, scope: !3201)
!3205 = !DILocation(line: 715, column: 12, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 715, column: 9)
!3207 = !DILocation(line: 715, column: 34, scope: !3206)
!3208 = !DILocation(line: 715, column: 25, scope: !3206)
!3209 = !DILocation(line: 715, column: 23, scope: !3206)
!3210 = !DILocation(line: 715, column: 9, scope: !3175)
!3211 = !DILocation(line: 716, column: 9, scope: !3206)
!3212 = !DILocation(line: 717, column: 18, scope: !3175)
!3213 = !DILocation(line: 721, column: 19, scope: !3175)
!3214 = !DILocation(line: 721, column: 46, scope: !3175)
!3215 = !DILocation(line: 721, column: 43, scope: !3175)
!3216 = !DILocation(line: 721, column: 41, scope: !3175)
!3217 = !DILocation(line: 721, column: 16, scope: !3175)
!3218 = !DILocation(line: 722, column: 22, scope: !3175)
!3219 = !{!1034, !1035, i64 296}
!3220 = !DILocation(line: 722, column: 10, scope: !3175)
!3221 = !DILocation(line: 723, column: 21, scope: !3175)
!3222 = !DILocation(line: 723, column: 18, scope: !3175)
!3223 = !DILocation(line: 723, column: 31, scope: !3175)
!3224 = !DILocation(line: 0, scope: !3195)
!3225 = !DILocation(line: 724, column: 5, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 724, column: 5)
!3227 = !DILocation(line: 724, column: 5, scope: !3195)
!3228 = !DILocation(line: 724, column: 5, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 724, column: 5)
!3230 = !DILocation(line: 726, column: 30, scope: !3175)
!3231 = !DILocation(line: 726, column: 20, scope: !3175)
!3232 = !DILocation(line: 726, column: 8, scope: !3175)
!3233 = !DILocation(line: 726, column: 18, scope: !3175)
!3234 = !DILocation(line: 727, column: 5, scope: !3175)
!3235 = !DILocation(line: 730, column: 19, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 730, column: 5)
!3237 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 730, column: 5)
!3238 = !DILocation(line: 730, column: 5, scope: !3237)
!3239 = !DILocation(line: 746, column: 13, scope: !3175)
!3240 = !DILocation(line: 731, column: 29, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 731, column: 13)
!3242 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 730, column: 41)
!3243 = !DILocation(line: 731, column: 37, scope: !3241)
!3244 = !DILocation(line: 731, column: 42, scope: !3241)
!3245 = !DILocation(line: 732, column: 16, scope: !3241)
!3246 = !DILocation(line: 732, column: 29, scope: !3241)
!3247 = !DILocation(line: 732, column: 36, scope: !3241)
!3248 = !DILocation(line: 731, column: 13, scope: !3242)
!3249 = !DILocation(line: 734, column: 29, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 734, column: 13)
!3251 = !DILocation(line: 734, column: 37, scope: !3250)
!3252 = !DILocation(line: 734, column: 13, scope: !3242)
!3253 = !DILocation(line: 735, column: 27, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 734, column: 55)
!3255 = !DILocation(line: 736, column: 46, scope: !3254)
!3256 = !DILocation(line: 737, column: 9, scope: !3254)
!3257 = !DILocation(line: 738, column: 29, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 738, column: 13)
!3259 = !DILocation(line: 738, column: 40, scope: !3258)
!3260 = !DILocation(line: 738, column: 13, scope: !3242)
!3261 = !DILocation(line: 739, column: 41, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 739, column: 17)
!3263 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 738, column: 54)
!3264 = !DILocation(line: 739, column: 17, scope: !3263)
!3265 = !DILocation(line: 740, column: 28, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3262, file: !3, line: 739, column: 56)
!3267 = !DILocation(line: 741, column: 47, scope: !3266)
!3268 = !DILocation(line: 742, column: 13, scope: !3266)
!3269 = !DILocation(line: 743, column: 9, scope: !3263)
!3270 = !DILocation(line: 0, scope: !3242)
!3271 = !DILocation(line: 730, column: 37, scope: !3236)
!3272 = distinct !{!3272, !3238, !3273, !919}
!3273 = !DILocation(line: 744, column: 5, scope: !3237)
!3274 = !DILocation(line: 706, column: 14, scope: !3175)
!3275 = !DILocation(line: 707, column: 14, scope: !3175)
!3276 = !DILocation(line: 708, column: 18, scope: !3175)
!3277 = !DILocation(line: 709, column: 18, scope: !3175)
!3278 = !DILocation(line: 745, column: 21, scope: !3175)
!3279 = !DILocation(line: 745, column: 16, scope: !3175)
!3280 = !DILocation(line: 746, column: 5, scope: !3175)
!3281 = !DILocation(line: 749, column: 21, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 749, column: 9)
!3283 = !DILocation(line: 749, column: 9, scope: !3175)
!3284 = !DILocation(line: 750, column: 20, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 749, column: 36)
!3286 = !DILocation(line: 750, column: 18, scope: !3285)
!3287 = !DILocation(line: 751, column: 23, scope: !3285)
!3288 = !DILocation(line: 752, column: 9, scope: !3285)
!3289 = !DILocation(line: 753, column: 31, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 753, column: 16)
!3291 = !DILocation(line: 753, column: 45, scope: !3290)
!3292 = !DILocation(line: 753, column: 57, scope: !3290)
!3293 = !DILocation(line: 754, column: 13, scope: !3290)
!3294 = !DILocation(line: 754, column: 19, scope: !3290)
!3295 = !DILocation(line: 754, column: 42, scope: !3290)
!3296 = !DILocation(line: 754, column: 33, scope: !3290)
!3297 = !DILocation(line: 754, column: 30, scope: !3290)
!3298 = !DILocation(line: 753, column: 16, scope: !3282)
!3299 = !DILocation(line: 757, column: 20, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 754, column: 58)
!3301 = !DILocation(line: 757, column: 18, scope: !3300)
!3302 = !DILocation(line: 758, column: 23, scope: !3300)
!3303 = !DILocation(line: 759, column: 22, scope: !3300)
!3304 = !DILocation(line: 760, column: 9, scope: !3300)
!3305 = !DILocation(line: 763, column: 5, scope: !3175)
!3306 = !DILocation(line: 764, column: 1, scope: !3175)
!3307 = distinct !DISubprogram(name: "storage_compact_readback", scope: !3, file: !3, line: 778, type: !3308, scopeLine: 780, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{null, !116, !493, !450, !114, !119, !156, !156}
!3310 = !{!3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3324, !3325, !3326, !3327, !3328, !3331, !3334, !3335, !3336}
!3311 = !DILocalVariable(name: "storage", arg: 1, scope: !3307, file: !3, line: 778, type: !116)
!3312 = !DILocalVariable(name: "l", arg: 2, scope: !3307, file: !3, line: 778, type: !493)
!3313 = !DILocalVariable(name: "drop_unread", arg: 3, scope: !3307, file: !3, line: 779, type: !450)
!3314 = !DILocalVariable(name: "readback_buf", arg: 4, scope: !3307, file: !3, line: 779, type: !114)
!3315 = !DILocalVariable(name: "page_id", arg: 5, scope: !3307, file: !3, line: 780, type: !119)
!3316 = !DILocalVariable(name: "page_version", arg: 6, scope: !3307, file: !3, line: 780, type: !156)
!3317 = !DILocalVariable(name: "read_size", arg: 7, scope: !3307, file: !3, line: 780, type: !156)
!3318 = !DILocalVariable(name: "offset", scope: !3307, file: !3, line: 781, type: !156)
!3319 = !DILocalVariable(name: "rescues", scope: !3307, file: !3, line: 782, type: !7)
!3320 = !DILocalVariable(name: "lost", scope: !3307, file: !3, line: 783, type: !7)
!3321 = !DILocalVariable(name: "skipped", scope: !3307, file: !3, line: 784, type: !7)
!3322 = !DILocalVariable(name: "hdr_it", scope: !3323, file: !3, line: 787, type: !435)
!3323 = distinct !DILexicalBlock(scope: !3307, file: !3, line: 786, column: 32)
!3324 = !DILocalVariable(name: "hdr", scope: !3323, file: !3, line: 788, type: !106)
!3325 = !DILocalVariable(name: "it", scope: !3323, file: !3, line: 789, type: !435)
!3326 = !DILocalVariable(name: "ntotal", scope: !3323, file: !3, line: 790, type: !7)
!3327 = !DILocalVariable(name: "hv", scope: !3323, file: !3, line: 797, type: !119)
!3328 = !DILocalVariable(name: "do_write", scope: !3329, file: !3, line: 802, type: !450)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 801, column: 29)
!3330 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 801, column: 13)
!3331 = !DILocalVariable(name: "do_update", scope: !3332, file: !3, line: 823, type: !450)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 822, column: 27)
!3333 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 822, column: 17)
!3334 = !DILocalVariable(name: "tries", scope: !3332, file: !3, line: 824, type: !141)
!3335 = !DILocalVariable(name: "io", scope: !3332, file: !3, line: 825, type: !686)
!3336 = !DILocalVariable(name: "myl", scope: !3337, file: !3, line: 868, type: !493)
!3337 = distinct !DILexicalBlock(scope: !3307, file: !3, line: 868, column: 5)
!3338 = !DILocation(line: 0, scope: !3307)
!3339 = !DILocation(line: 786, column: 19, scope: !3307)
!3340 = !DILocation(line: 786, column: 5, scope: !3307)
!3341 = !DILocation(line: 0, scope: !3323)
!3342 = !DILocation(line: 789, column: 41, scope: !3323)
!3343 = !DILocation(line: 792, column: 17, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 792, column: 13)
!3345 = !DILocation(line: 792, column: 22, scope: !3344)
!3346 = !DILocation(line: 792, column: 13, scope: !3323)
!3347 = !DILocation(line: 793, column: 13, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 792, column: 28)
!3349 = !DILocation(line: 796, column: 18, scope: !3323)
!3350 = !DILocation(line: 797, column: 37, scope: !3323)
!3351 = !DILocation(line: 798, column: 9, scope: !3323)
!3352 = !DILocation(line: 800, column: 29, scope: !3323)
!3353 = !DILocation(line: 800, column: 47, scope: !3323)
!3354 = !DILocation(line: 800, column: 43, scope: !3323)
!3355 = !DILocation(line: 800, column: 18, scope: !3323)
!3356 = !DILocation(line: 801, column: 20, scope: !3330)
!3357 = !DILocation(line: 801, column: 13, scope: !3323)
!3358 = !DILocation(line: 0, scope: !3329)
!3359 = !DILocation(line: 803, column: 13, scope: !3329)
!3360 = !DILocation(line: 806, column: 26, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 806, column: 17)
!3362 = !DILocation(line: 806, column: 35, scope: !3361)
!3363 = !DILocation(line: 806, column: 47, scope: !3361)
!3364 = !DILocation(line: 806, column: 67, scope: !3361)
!3365 = !DILocation(line: 806, column: 51, scope: !3361)
!3366 = !DILocation(line: 806, column: 75, scope: !3361)
!3367 = !DILocation(line: 807, column: 21, scope: !3361)
!3368 = !DILocation(line: 807, column: 29, scope: !3361)
!3369 = !DILocation(line: 807, column: 37, scope: !3361)
!3370 = !DILocation(line: 807, column: 42, scope: !3361)
!3371 = !DILocation(line: 807, column: 45, scope: !3361)
!3372 = !DILocation(line: 807, column: 53, scope: !3361)
!3373 = !DILocation(line: 807, column: 63, scope: !3361)
!3374 = !DILocation(line: 807, column: 61, scope: !3361)
!3375 = !DILocation(line: 806, column: 17, scope: !3329)
!3376 = !DILocation(line: 808, column: 35, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 807, column: 78)
!3378 = !DILocation(line: 809, column: 26, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 809, column: 21)
!3380 = !DILocation(line: 809, column: 21, scope: !3379)
!3381 = !DILocation(line: 809, column: 34, scope: !3379)
!3382 = !DILocation(line: 809, column: 45, scope: !3379)
!3383 = !DILocation(line: 809, column: 48, scope: !3379)
!3384 = !DILocation(line: 809, column: 53, scope: !3379)
!3385 = !DILocation(line: 809, column: 66, scope: !3379)
!3386 = !DILocation(line: 809, column: 21, scope: !3377)
!3387 = !DILocation(line: 811, column: 21, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 809, column: 83)
!3389 = !DILocation(line: 813, column: 37, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 813, column: 25)
!3391 = !DILocation(line: 813, column: 40, scope: !3390)
!3392 = !DILocation(line: 813, column: 69, scope: !3390)
!3393 = !DILocation(line: 813, column: 25, scope: !3388)
!3394 = !DILocation(line: 814, column: 34, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 813, column: 82)
!3396 = !DILocation(line: 815, column: 32, scope: !3395)
!3397 = !DILocation(line: 816, column: 21, scope: !3395)
!3398 = !DILocation(line: 820, column: 13, scope: !3377)
!3399 = !DILocation(line: 822, column: 17, scope: !3329)
!3400 = !DILocation(line: 817, column: 34, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 816, column: 28)
!3402 = !DILocation(line: 0, scope: !3332)
!3403 = !DILocation(line: 825, column: 17, scope: !3332)
!3404 = !DILocation(line: 825, column: 24, scope: !3332)
!3405 = !DILocation(line: 826, column: 24, scope: !3332)
!3406 = !DILocation(line: 827, column: 25, scope: !3332)
!3407 = !DILocation(line: 829, column: 25, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 829, column: 25)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 828, column: 54)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !3, line: 828, column: 17)
!3411 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 828, column: 17)
!3412 = !DILocation(line: 829, column: 104, scope: !3408)
!3413 = !DILocation(line: 829, column: 25, scope: !3409)
!3414 = !DILocation(line: 835, column: 25, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3408, file: !3, line: 834, column: 28)
!3416 = !DILocation(line: 850, column: 25, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 849, column: 24)
!3418 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 839, column: 21)
!3419 = !DILocation(line: 830, column: 35, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3408, file: !3, line: 829, column: 110)
!3421 = !DILocation(line: 830, column: 47, scope: !3420)
!3422 = !DILocation(line: 830, column: 44, scope: !3420)
!3423 = !DILocation(line: 830, column: 25, scope: !3420)
!3424 = !DILocation(line: 831, column: 25, scope: !3420)
!3425 = !DILocation(line: 840, column: 29, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 840, column: 25)
!3427 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 839, column: 32)
!3428 = !DILocation(line: 840, column: 38, scope: !3426)
!3429 = !DILocation(line: 840, column: 25, scope: !3427)
!3430 = !DILocation(line: 841, column: 48, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 840, column: 44)
!3432 = !DILocation(line: 841, column: 43, scope: !3431)
!3433 = !DILocation(line: 842, column: 43, scope: !3431)
!3434 = !DILocation(line: 842, column: 38, scope: !3431)
!3435 = !DILocation(line: 843, column: 42, scope: !3431)
!3436 = !DILocation(line: 843, column: 30, scope: !3431)
!3437 = !DILocation(line: 843, column: 37, scope: !3431)
!3438 = !DILocation(line: 844, column: 32, scope: !3431)
!3439 = !DILocation(line: 845, column: 21, scope: !3431)
!3440 = !DILocation(line: 846, column: 29, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 845, column: 28)
!3442 = !DILocation(line: 852, column: 13, scope: !3333)
!3443 = !DILocation(line: 852, column: 13, scope: !3332)
!3444 = !DILocation(line: 783, column: 18, scope: !3307)
!3445 = !DILocation(line: 854, column: 28, scope: !3329)
!3446 = !DILocation(line: 854, column: 13, scope: !3329)
!3447 = !DILocation(line: 855, column: 9, scope: !3329)
!3448 = !DILocation(line: 784, column: 18, scope: !3307)
!3449 = !DILocation(line: 857, column: 9, scope: !3323)
!3450 = !DILocation(line: 858, column: 19, scope: !3323)
!3451 = !DILocation(line: 858, column: 16, scope: !3323)
!3452 = !DILocation(line: 859, column: 23, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 859, column: 13)
!3454 = !DILocation(line: 859, column: 32, scope: !3453)
!3455 = !DILocation(line: 859, column: 13, scope: !3323)
!3456 = !DILocation(line: 860, column: 13, scope: !3453)
!3457 = !DILocation(line: 861, column: 5, scope: !3307)
!3458 = distinct !{!3458, !3340, !3457, !919}
!3459 = !DILocation(line: 782, column: 18, scope: !3307)
!3460 = !DILocation(line: 781, column: 14, scope: !3307)
!3461 = !DILocation(line: 863, column: 5, scope: !3307)
!3462 = !DILocation(line: 864, column: 36, scope: !3307)
!3463 = !DILocation(line: 864, column: 33, scope: !3307)
!3464 = !DILocation(line: 865, column: 39, scope: !3307)
!3465 = !DILocation(line: 865, column: 36, scope: !3307)
!3466 = !DILocation(line: 866, column: 39, scope: !3307)
!3467 = !DILocation(line: 866, column: 36, scope: !3307)
!3468 = !DILocation(line: 867, column: 5, scope: !3307)
!3469 = !DILocation(line: 0, scope: !3337)
!3470 = !DILocation(line: 868, column: 5, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 868, column: 5)
!3472 = !DILocation(line: 868, column: 5, scope: !3337)
!3473 = !DILocation(line: 868, column: 5, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 868, column: 5)
!3475 = !DILocation(line: 868, column: 5, scope: !3307)
!3476 = !DILocation(line: 870, column: 1, scope: !3307)
!3477 = !DISubprogram(name: "extstore_close_page", scope: !72, file: !72, line: 120, type: !3478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{null, !116, !7, !156}
!3480 = !DISubprogram(name: "item_lock", scope: !6, file: !6, line: 982, type: !3146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!3481 = !DISubprogram(name: "assoc_find", scope: !3482, file: !3482, line: 3, type: !3483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!3482 = !DIFile(filename: "./assoc.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d97284e3db472a02a2024ce98e65eb75")
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!435, !817, !1270, !820}
!3485 = !DISubprogram(name: "item_is_flushed", scope: !1275, file: !1275, line: 29, type: !3486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !781)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!141, !435}
